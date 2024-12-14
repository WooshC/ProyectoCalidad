package com.poliweb.controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;
import static org.junit.jupiter.api.Assertions.fail;
import static org.mockito.Mockito.*;

public class InicioControllerTest {

    private InicioController inicioController;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    public void setUp() {
        inicioController = new InicioController();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        requestDispatcher = mock(RequestDispatcher.class);
    }

    @Test
    public void testDoGetSuccess() throws ServletException, IOException {
        when(request.getRequestDispatcher("/bienvenida.jsp")).thenReturn(requestDispatcher);

        inicioController.doGet(request, response);

        verify(request).getRequestDispatcher("/bienvenida.jsp");
        verify(requestDispatcher).forward(request, response);
        verifyNoInteractions(response);
    }
}
