package persistencia;

import static org.junit.jupiter.api.Assertions.*;

import com.poliweb.modelo.Cafeteria;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.List;

public class CafeteriaJPAControllerTest {
    private CafeteriaJPAController controller;

    @BeforeEach
    public void setUp() {
        controller = CafeteriaJPAController.getInstance();
    }

    @AfterEach
    public void tearDown() {
        controller.close();
    }

    @Test
    public void testGetInstanceReturnsSameInstance() {
        CafeteriaJPAController instance1 = CafeteriaJPAController.getInstance();
        CafeteriaJPAController instance2 = CafeteriaJPAController.getInstance();

        assertNotNull(instance1, "La primera instancia no debería ser nula.");
        assertNotNull(instance2, "La segunda instancia no debería ser nula.");

        assertSame(instance1, instance2, "Ambas instancias deberían ser la misma instancia del patrón Singleton.");
    }

    @Test
    public void testGetEntityManagerReturnsNotNull() {
        CafeteriaJPAController localController = CafeteriaJPAController.getInstance(); // Renombrado para evitar conflictos
        EntityManager entityManager = localController.getEntityManager();

        assertNotNull(entityManager, "El EntityManager no debería ser nulo.");
    }

    @Test
    public void testObtenerMenuDelDia() {
        CafeteriaJPAController localController = CafeteriaJPAController.getInstance(); // Renombrado para evitar conflictos

        List<Cafeteria> menuDelDia = localController.obtenerMenuDelDia();

        assertFalse(menuDelDia.isEmpty(), "El menú del día no debería estar vacío.");

        LocalDate currentDate = LocalDate.now();
        boolean foundMatchingMenu = menuDelDia.stream()
                .anyMatch(c -> c.getFecha() != null && c.getFecha().equals(currentDate.toString())); // Converting LocalDate to String

        assertTrue(foundMatchingMenu, "Debe haber al menos un elemento en el menú que coincida con la fecha actual.");

        for (Cafeteria cafeteria : menuDelDia) {
            assertEquals(currentDate.toString(), cafeteria.getFecha(), "La fecha del menú debe coincidir con la fecha actual.");
        }
    }
}
