package com.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HolaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreParaGuardar = request.getParameter("nombre");
        
        // Obtener la lista de nombres del contexto del servlet
        List<String> nombres = (List<String>) getServletContext().getAttribute("nombres");
        if (nombres == null) {
            nombres = new ArrayList<>();
        }
        
        // Si se ha proporcionado un nombre, añadirlo a la lista
        if (nombreParaGuardar != null && !nombreParaGuardar.isEmpty()) {
            nombres.add(nombreParaGuardar);
        }
    
        // Guardar la lista actualizada en el contexto del servlet
        getServletContext().setAttribute("nombres", nombres);
        
        // Pasar la lista de nombres a la JSP
        request.setAttribute("nombres", nombres);
        
        // Redirigir a la página JSP
        request.getRequestDispatcher("/nombre.jsp").forward(request, response);
    }
}
