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

    private final RutaJpaController controladoraPersistencia;
    private static final String RUTA_JSP = "polibus.jsp";
    private static final String ERROR_CONSULTA = "Error en la consulta: ";

    // Constructor
    public RutaController() {
        this(new RutaJpaController());
    }

    public RutaController(RutaJpaController controladoraPersistencia) {
        this.controladoraPersistencia = controladoraPersistencia;
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
        // Enviar el error de respuesta
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, ERROR_CONSULTA);
        // Guardar el error en un archivo
        guardarErrorEnArchivo(ERROR_CONSULTA + e.getMessage());
    }

    private void guardarErrorEnArchivo(String errorMessage) {
        String rutaArchivo = "errores.txt"; // Cambia esto a la ruta deseada

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(rutaArchivo, true))) {
            writer.write(errorMessage);
            writer.newLine(); // Agregar una nueva línea después del mensaje
        } catch (IOException ioException) {
            ioException.printStackTrace(); // O maneja el error según sea necesario
        }
    }



    private List<Ruta> obtenerRutas() throws RutaNotFoundException {
        try {
            return controladoraPersistencia.obtenerTodasLasRutas();
        } catch (Exception e) {
            // Lanzar la excepción personalizada con un mensaje apropiado
            throw new RutaNotFoundException("No se pudieron obtener las rutas.", e);
        }
    }

    private void pasarAtributosYDespachar(HttpServletRequest request, HttpServletResponse response, List<Ruta> rutas) throws ServletException, IOException {
        request.setAttribute("rutas", rutas);
        request.getRequestDispatcher(RUTA_JSP).forward(request, response);
    }

}

