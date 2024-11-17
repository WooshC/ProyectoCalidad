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
import java.util.Calendar;
import java.util.TimeZone;

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
        try {
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT-5")); // Establece explícitamente la zona horaria de Ecuador
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);  // 1 = Domingo, 2 = Lunes, ..., 7 = Sábado
            System.out.println("Día de la semana (1 = domingo, 2 = lunes, ..., 7 = sábado): " + dayOfWeek);
            // Obtener los elementos del menú del día
            List<Cafeteria> menuItems = obtenerMenuDelDia();

            // Cambiar la condición para que sea de lunes a sábado
            boolean isWeekday = dayOfWeek >= Calendar.MONDAY && dayOfWeek <= Calendar.SATURDAY;

            // Si es un día de semana (lunes a sábado)
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
