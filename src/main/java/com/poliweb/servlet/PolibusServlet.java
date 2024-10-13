package com.poliweb.servlet;

import com.poliweb.Ruta;
import persistencia.ControladoraPersistencia;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List; // Importación necesaria
import java.util.ArrayList; // Importación necesaria

@WebServlet("/PolibusServlet")
public class PolibusServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ControladoraPersistencia controladora = new ControladoraPersistencia();

    // Método que maneja las solicitudes GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener todas las rutas desde la base de datos
        List<Ruta> rutas = new ArrayList<>(); // Inicializa correctamente la lista

        try {
            rutas = controladora.leerRuta(); // "" para traer todas las rutas
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return; // Salir en caso de error
        }
        
        // Guardar las rutas en el request
        request.setAttribute("rutas", rutas);

        // Redirigir al JSP polibus.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("polibus.jsp");
        dispatcher.forward(request, response);
    }

    // Método que maneja las solicitudes POST (puedes dejarlo vacío por ahora)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Este método puede dejarse vacío por ahora si no se implementará la búsqueda
    }
}
