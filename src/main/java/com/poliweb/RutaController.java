/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.poliweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import persistencia.RutaJpaController;

@WebServlet("/rutas")
public class RutaController extends HttpServlet {

    private RutaJpaController rutaJpaController = new RutaJpaController();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ruta> rutas;

        try {
            // Obtener el parámetro de búsqueda
            String query = request.getParameter("query");

            // Obtener rutas según el parámetro de búsqueda
            if (query != null && !query.isEmpty()) {
                rutas = rutaJpaController.leerRuta(); // Usar el método de búsqueda
            } else {
                rutas = rutaJpaController.findRutaEntities(); // Obtener todas las rutas
            }

            // Guardar las rutas en el request
            request.setAttribute("rutas", rutas);

            // Redirigir al JSP polibus.jsp
            request.getRequestDispatcher("polibus.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace(); // Registrar la excepción
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // Enviar error 500
        }
    }
}

