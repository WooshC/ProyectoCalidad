package com.poliweb.controladores;

import com.poliweb.modelo.Cafeteria;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.CafeteriaJPAController;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet("/cafeteria")
public class CafeteriaController extends HttpServlet {

    private CafeteriaJPAController cafeteriaJPAController;

    @Override
    public void init() throws ServletException {
        super.init();
        cafeteriaJPAController = CafeteriaJPAController.getInstance(); // Inicializa el controlador JPA
    }

    // Método en el controlador para obtener los elementos agrupados por categoría
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Cafeteria> menuItems = cafeteriaJPAController.obtenerMenuDelDia();

        // Agrupar los elementos por categoría
        Map<String, List<Cafeteria>> menuGroupedByCategory = menuItems.stream()
                .collect(Collectors.groupingBy(Cafeteria::getCategoria));

        // Pasar la lista de platos agrupados por categoría al JSP
        request.setAttribute("menuGroupedByCategory", menuGroupedByCategory);
        request.getRequestDispatcher("cafeteria.jsp").forward(request, response);
    }

}
