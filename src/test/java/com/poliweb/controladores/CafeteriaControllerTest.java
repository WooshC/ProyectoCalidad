package com.poliweb.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import persistencia.CafeteriaJPAController;

import java.io.IOException;
import java.util.*;

import static org.mockito.Mockito.*;

public class CafeteriaControllerTest {

    private static final TimeZone TIME_ZONE_GMT_5 = TimeZone.getTimeZone("GMT-5");

    private CafeteriaController cafeteriaController;
    private CafeteriaJPAController cafeteriaJPAController;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    public void setUp() {
        cafeteriaJPAController = mock(CafeteriaJPAController.class);
        cafeteriaController = new CafeteriaController();
        cafeteriaController.cafeteriaJPAController = cafeteriaJPAController;

        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        requestDispatcher = mock(RequestDispatcher.class);
    }

    @Test
    public void doGetOnWeekdayTest() throws ServletException, IOException {
        Calendar calendar = Calendar.getInstance(TIME_ZONE_GMT_5);
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.WEDNESDAY);

        when(request.getRequestDispatcher("cafeteria.jsp")).thenReturn(requestDispatcher);
        when(cafeteriaJPAController.obtenerMenuDelDia()).thenReturn(Collections.emptyList());

        cafeteriaController.doGet(request, response);

        verify(requestDispatcher).forward(request, response);
        verify(request).getRequestDispatcher("cerrado.jsp").notify();
        verifyNoInteractions(response);
    }

    @Test
    public void testDoGetOnWeekend() throws ServletException, IOException {
        Calendar calendar = Calendar.getInstance(TIME_ZONE_GMT_5);
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);

        when(request.getRequestDispatcher("cerrado.jsp")).thenReturn(requestDispatcher);

        cafeteriaController.doGet(request, response);

        verify(requestDispatcher).forward(request, response);
        verifyNoInteractions(response);
    }

    @Test
    public void testDoGet_ExceptionHandling() throws ServletException, IOException {
        Calendar calendar = Calendar.getInstance(TIME_ZONE_GMT_5);
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.WEDNESDAY);

        when(cafeteriaJPAController.obtenerMenuDelDia()).thenThrow(new RuntimeException("Test exception"));

        cafeteriaController.doGet(request, response);

        verify(requestDispatcher, never()).forward(request, response);
        verifyNoInteractions(response);
    }
}
