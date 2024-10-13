package com.poliweb;

import java.util.List;
import persistencia.ControladoraPersistencia;

/**
 *
 * @author USUARIO
 */
public class Controladora {
    private ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearRuta(Ruta ruta) {
        controlPersis.crearRuta(ruta);
    }
    
    public List<Ruta> leerRuta() {
        return controlPersis.leerRuta(); // Asegúrate de que este método en ControladoraPersistencia esté correctamente implementado
    }
}
