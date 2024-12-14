package com.poliweb.controladores;

import com.poliweb.modelo.Cafeteria;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.CafeteriaJPAController;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.TimeZone;

@WebServlet("/cafeteria")
public class CafeteriaController extends HttpServlet {

    protected  CafeteriaJPAController cafeteriaJPAController;
    private static final String CAFETERIA_JSP = "cafeteria.jsp";
    private static final String CERRADO_CAFETERIA_JSP = "cerrado.jsp";

    public CafeteriaController() {
        this.cafeteriaJPAController = CafeteriaJPAController.getInstance(); // Singleton instance
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT-5"));
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);

            List<Cafeteria> menuItems = cafeteriaJPAController.obtenerMenuDelDia();
            boolean isWeekday = dayOfWeek >= Calendar.MONDAY && dayOfWeek <= Calendar.SATURDAY;

            if (isWeekday) {
                Map<String, List<Cafeteria>> menuGroupedByCategory = menuItems.stream()
                        .collect(Collectors.groupingBy(Cafeteria::getCategoria));

                request.setAttribute("menuGroupedByCategory", menuGroupedByCategory);
                request.getRequestDispatcher(CAFETERIA_JSP).forward(request, response);
            } else {
                request.getRequestDispatcher(CERRADO_CAFETERIA_JSP).forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace(); // Captura errores
        }
    }
}
