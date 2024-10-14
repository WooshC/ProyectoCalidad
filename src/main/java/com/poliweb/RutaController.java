package com.poliweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import persistencia.ControladoraPersistencia;

@WebServlet("/buses")
public class RutaController extends HttpServlet {
    private ControladoraPersistencia controladoraPersistencia = new ControladoraPersistencia();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Recuperar las rutas desde la base de datos
            List<Ruta> rutas = controladoraPersistencia.obtenerTodasLasRutas();
            
            // Imprimir en consola para verificar si las rutas se están pasando correctamente
            if (rutas != null) {
                System.out.println("Número de pendejos: " + rutas.size());
                for (Ruta ruta : rutas) {
                    System.out.println("Ruta: " + ruta.getNombreRuta() + ", Paradas: " + ruta.getParadas() + ", Horario: " + ruta.getHorario());
                }
            } else {
                System.out.println("No se han recuperado rutas.");
            }

            // Pasar las rutas al JSP
            request.setAttribute("rutas", rutas);
            request.getRequestDispatcher("polibus.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la consulta: " + e.getMessage());
        }
    }
}

