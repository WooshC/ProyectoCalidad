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

@WebServlet("/cafeteria")
public class CafeteriaController extends HttpServlet {

    private final CafeteriaJPAController cafeteriaController;
    private static final String CAFETERIA_JSP = "cafeteria.jsp";
    private static final String CERRADO_CAFETERIA_JSP = "cerrado.jsp";
    public CafeteriaController() {
        this(new CafeteriaJPAController());
    }

    public CafeteriaController(CafeteriaJPAController cafeteriaJPAController) {
        this.cafeteriaController = cafeteriaJPAController;
    }

    private List<Cafeteria> obtenerMenuDelDia() throws Exception {
        return cafeteriaController.obtenerMenuDelDia();
    }


    // Método en el controlador para obtener los elementos agrupados por categoría
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try{
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        Calendar calendar = Calendar.getInstance(); // Obtenemos la fecha actual
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.FRIDAY);
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
        List<Cafeteria> menuItems =obtenerMenuDelDia();
        boolean isWeekday = dayOfWeek >= Calendar.MONDAY && dayOfWeek <= Calendar.FRIDAY;
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
