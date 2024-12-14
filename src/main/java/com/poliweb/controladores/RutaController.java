package com.poliweb.controladores;

import com.poliweb.modelo.Ruta;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.RutaJpaController;
import persistencia.exceptions.RutaNotFoundException;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

@WebServlet("/buses")
public class RutaController extends HttpServlet {

    private RutaJpaController controladoraPersistencia;
    private static final String RUTA_JSP = "polibus.jsp";
    private static final String ERROR_CONSULTA = "Error en la consulta: ";

    public RutaController() {
        this.controladoraPersistencia = RutaJpaController.getInstance(); // Singleton instance
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Ruta> rutas = obtenerRutas();
            pasarAtributosYDespachar(request, response, rutas);
        } catch (Exception e) {
            manejarError(response, e);
        }
    }

    private void manejarError(HttpServletResponse response, Exception e) throws IOException {
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, ERROR_CONSULTA);
        guardarErrorEnArchivo(ERROR_CONSULTA + e.getMessage());
    }

    private void guardarErrorEnArchivo(String errorMessage) {
        String rutaArchivo = "errores.txt";
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(rutaArchivo, true))) {
            writer.write(errorMessage);
            writer.newLine();
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    private List<Ruta> obtenerRutas() throws RutaNotFoundException {
        try {
            return controladoraPersistencia.obtenerTodasLasRutas();
        } catch (Exception e) {
            throw new RutaNotFoundException("No se pudieron obtener las rutas.", e);
        }
    }

    private void pasarAtributosYDespachar(HttpServletRequest request, HttpServletResponse response, List<Ruta> rutas)
            throws ServletException, IOException {
        request.setAttribute("rutas", rutas);
        request.getRequestDispatcher(RUTA_JSP).forward(request, response);
    }
}
