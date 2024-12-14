package persistencia;

import com.poliweb.modelo.Ruta;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RutaJpaController implements Serializable {

    private static volatile RutaJpaController instance;
    private EntityManagerFactory emf;
    private static final Logger logger = Logger.getLogger(RutaJpaController.class.getName());

    static {
        setupLogger();
    }

    // Constructor
    private RutaJpaController() {
        emf = Persistence.createEntityManagerFactory("EjemploJavaWebPU");
    }

    public static RutaJpaController getInstance() {
        if (instance == null) {
            synchronized (RutaJpaController.class) {
                if (instance == null) {
                    instance = new RutaJpaController(); // Instancia thread-safe
                }
            }
        }
        return instance;
    }

    private static void setupLogger() {
        ConsoleHandler consoleHandler = new ConsoleHandler();
        consoleHandler.setLevel(Level.ALL);
        logger.addHandler(consoleHandler);
        logger.setLevel(Level.ALL);
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Ruta> obtenerTodasLasRutas() {
        EntityManager em = getEntityManager();
        List<Ruta> rutas = new ArrayList<>();

        try {
            Query query = em.createQuery("SELECT r FROM Ruta r");
            rutas = query.getResultList();

            for (Ruta ruta : rutas) {
                decodeRutaFields(ruta);
            }

        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error obteniendo todas las rutas", e);
        } finally {
            em.close();
        }

        return rutas;
    }

    private void decodeRutaFields(Ruta ruta) {
        decodeField(ruta::getNombreRuta, ruta::setNombreRuta);
        decodeField(ruta::getParadas, ruta::setParadas);
        decodeField(ruta::getHorario, ruta::setHorario);
        decodeField(ruta::getUbicacion, ruta::setUbicacion);
        decodeField(ruta::getMapaUrl, ruta::setMapaUrl);
    }

    // Helper method to decode a field
    private void decodeField(Supplier<String> getter, Consumer<String> setter) {
        String value = getter.get();
        if (value != null) {
            setter.accept(new String(value.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8));
        }
    }
}
