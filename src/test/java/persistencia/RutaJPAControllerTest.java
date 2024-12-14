package persistencia;

import com.poliweb.modelo.Ruta;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class RutaJPAControllerTest {

    private RutaJpaController controller;

    @BeforeEach
    public void setUp() {
        controller = RutaJpaController.getInstance();
    }

    @Test
    public void testGetInstance() {
        RutaJpaController instance1 = RutaJpaController.getInstance();
        RutaJpaController instance2 = RutaJpaController.getInstance();

        assertNotNull(instance1, "La primera instancia no debería ser nula.");
        assertNotNull(instance2, "La segunda instancia no debería ser nula.");
        assertSame(instance1, instance2, "Ambas instancias deberían ser la misma (comportamiento Singleton).");
    }

    @Test
    public void testGetEntityManager() {
        assertNotNull(controller.getEntityManager(), "El EntityManager no debería ser nulo.");
    }

    @Test
    public void testObtenerTodasLasRutas() {
        List<Ruta> expectedRutas = Arrays.asList(
                new Ruta(1L, "Ruta 1", "Parada 1, Parada 2", "08:00-12:00", "Ubicación 1", "http://mapa1.com"),
                new Ruta(2L, "Ruta 2", "Parada 3, Parada 4", "12:00-16:00", "Ubicación 2", "http://mapa2.com")
        );

        EntityManager emLocal = Persistence.createEntityManagerFactory("EjemploJavaWebPU").createEntityManager();
        when(emLocal.createQuery("SELECT r FROM Ruta r", Ruta.class).getResultList()).thenReturn(expectedRutas);

        List<Ruta> result = controller.obtenerTodasLasRutas();

        assertNotNull(result, "La lista de resultados no debería ser nula.");
        assertEquals(expectedRutas.size(), result.size(), "El tamaño de la lista de resultados debería coincidir con el esperado.");
        assertEquals(expectedRutas, result, "La lista de resultados debería contener las rutas esperadas.");

        verify(emLocal).createQuery("SELECT r FROM Ruta r", Ruta.class);
        emLocal.close();
    }
}
