package persistencia;

import com.poliweb.modelo.Ruta;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RutaJpaController implements Serializable {

    private static RutaJpaController instance;
    private EntityManagerFactory emf;
    private static final Logger logger = Logger.getLogger(RutaJpaController.class.getName());

    static {
        Logger logger = Logger.getLogger(RutaJpaController.class.getName());
        ConsoleHandler consoleHandler = new ConsoleHandler();
        consoleHandler.setLevel(Level.ALL);
        logger.addHandler(consoleHandler);
        logger.setLevel(Level.ALL);
    }

    public RutaJpaController() {
        emf = Persistence.createEntityManagerFactory("EjemploJavaWebPU");
    }

    public static RutaJpaController getInstance() {
        if (instance == null) {
            instance = new RutaJpaController();
        }
        return instance;
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Ruta> obtenerTodasLasRutas() {
        EntityManager em = getEntityManager();
        try {
            Query query = em.createQuery("SELECT r FROM Ruta r");
            List<Ruta> rutas = query.getResultList();

            if (rutas.isEmpty()) {
                return new ArrayList<>(); // Retorna un ArrayList vacío en caso de un error
            }
            logger.info(String.format("Número de rutas recuperadas: %d", rutas.size()));

            for (Ruta ruta : rutas) {
                logger.info(String.format("Ruta: %s, Paradas: %s, Horario: %s",
                        ruta.getNombreRuta(), ruta.getParadas(), ruta.getHorario()));
            }

            return rutas;
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error obteniendo todas las rutas", e);
            return new ArrayList<>(); // Retorna un ArrayList vacío en caso de un error
        } finally {
            em.close();
        }
    }
}