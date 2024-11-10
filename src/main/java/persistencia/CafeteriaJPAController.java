package persistencia;

import com.poliweb.modelo.Cafeteria;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CafeteriaJPAController implements Serializable {

    private static CafeteriaJPAController instance;
    private EntityManagerFactory emf;
    private EntityManager em;

    // Constructor
    public CafeteriaJPAController() {
        emf = Persistence.createEntityManagerFactory("EjemploJavaWebPU");
        em = emf.createEntityManager(); // Mantener la conexión abierta
    }

    public static CafeteriaJPAController getInstance() {
        if (instance == null) {
            instance = new CafeteriaJPAController();
        }
        return instance;
    }

    public void agregarCafeteria(Cafeteria cafeteria) {
        try {
            em.getTransaction().begin();
            em.persist(cafeteria);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    // Obtener todos los elementos del menú
    public List<Cafeteria> obtenerMenu() {
        try {
            Query query = em.createQuery("SELECT c FROM Cafeteria c");
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public List<Cafeteria> obtenerMenuDelDia() {
        try {
            // Crear la consulta para obtener los elementos del menú del día actual
            Query query = em.createQuery("SELECT c FROM Cafeteria c WHERE c.fecha = CURRENT_DATE");
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
}
