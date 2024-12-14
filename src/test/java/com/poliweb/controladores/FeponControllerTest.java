package com.poliweb.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.mockito.Mockito.*;

public class FeponControllerTest {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private FeponController feponController;
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    public void setUp() {
        feponController = new FeponController();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        requestDispatcher = mock(RequestDispatcher.class);
    }

    @Test
    public void testDoGetSuccessful() throws ServletException, IOException {
        when(request.getRequestDispatcher("/fepon.jsp")).thenReturn(requestDispatcher);

        feponController.doGet(request, response);

        verify(request).getRequestDispatcher("/fepon.jsp");
        verify(requestDispatcher).forward(request, response);
    }
}
