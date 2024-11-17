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


    public List<Cafeteria> obtenerMenuDelDia() {
        try {
            System.out.println("Iniciando la consulta para obtener el menú del día...");

            // Crear la consulta para obtener los elementos del menú del día actual
            Query query = em.createQuery("SELECT c FROM Cafeteria c WHERE c.fecha = CURRENT_DATE");
            List<Cafeteria> menuDelDia = query.getResultList();

            System.out.println("Consulta ejecutada correctamente. Elementos obtenidos: " + menuDelDia.size());

            // Limpiar posibles problemas de codificación en los atributos del menú del día
            for (Cafeteria cafeteria : menuDelDia) {
                if (cafeteria.getCategoria() != null) {
                    cafeteria.setCategoria(new String(cafeteria.getCategoria().getBytes("Windows-1252"), "UTF-8"));
                }
                if (cafeteria.getNombrePlato() != null) {
                    cafeteria.setNombrePlato(new String(cafeteria.getNombrePlato().getBytes("Windows-1252"), "UTF-8"));
                }
                if (cafeteria.getDescripcion() != null) {
                    cafeteria.setDescripcion(new String(cafeteria.getDescripcion().getBytes("Windows-1252"), "UTF-8"));
                }
            }

            // Mostrar los detalles del menú del día
            System.out.println("Detalles del menú del día:");
            for (Cafeteria cafeteria : menuDelDia) {
                System.out.println("Categoría: " + cafeteria.getCategoria());
                System.out.println("Nombre del Plato: " + cafeteria.getNombrePlato());
                System.out.println("Descripción: " + cafeteria.getDescripcion());
                System.out.println("----");
            }

            return menuDelDia;
        } catch (Exception e) {
            System.err.println("Error al obtener el menú del día: " + e.getMessage());
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

}
