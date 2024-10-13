package persistencia;
import com.poliweb.Ruta;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ControladoraPersistencia {
    RutaJpaController rutaJpa = new RutaJpaController();
    
    // Método para crear una nueva ruta
    public void crearRuta(Ruta ruta) {
        rutaJpa.create(ruta);
    }
    
    // Método para leer rutas por parada (busqueda parcial)
    public List<Ruta> leerRuta() {
        // Utiliza el método del controlador JPA para buscar las rutas por parada
        return rutaJpa.leerRuta();
    }
}
