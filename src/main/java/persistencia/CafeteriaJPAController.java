package persistencia;

import com.poliweb.modelo.Cafeteria;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import persistencia.exceptions.MenuDelDiaException;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class CafeteriaJPAController implements Serializable {

    private static volatile CafeteriaJPAController instance;
    private EntityManagerFactory emf;
    private EntityManager em;

    // Constructor
    private CafeteriaJPAController() {
        emf = Persistence.createEntityManagerFactory("EjemploJavaWebPU");
        em = emf.createEntityManager();
    }
    // Método estático para obtener la instancia
    public static CafeteriaJPAController getInstance() {
        if (instance == null) {
            synchronized (CafeteriaJPAController.class) {
                if (instance == null) {
                    instance = new CafeteriaJPAController();
                }
            }
        }
        return instance;
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Cafeteria> obtenerMenuDelDia(){
        EntityManager emLocal = getEntityManager();
        try {
            Query query = emLocal.createQuery("SELECT c FROM Cafeteria c WHERE c.fecha = CURRENT_DATE");
            List<Cafeteria> menuDelDia = query.getResultList();

            for (Cafeteria cafeteria : menuDelDia) {
                decodeFields(cafeteria);
            }
            return menuDelDia;
        } catch (Exception e) {
            throw new MenuDelDiaException();
        } finally {
            emLocal.close();
        }
    }

    private void decodeFields(Cafeteria cafeteria) {
        decodeField(cafeteria.getCategoria());
        decodeField(cafeteria.getNombrePlato());
        decodeField(cafeteria.getDescripcion());
    }

    private void decodeField(String field) {
        if (field != null) {
            new String(field.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        }
    }

    public void close() {
        if (em != null && em.isOpen()) {
            em.close();
        }
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
}
