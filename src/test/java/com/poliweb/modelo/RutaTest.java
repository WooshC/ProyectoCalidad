package com.poliweb.modelo;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class RutaTest {

    private Ruta ruta;

    @BeforeEach
    void setUp() {
        ruta = new Ruta(
                3L,
                "Comite del pueblo",
                "Andalucia, Av Patria, Av. América, Av. 10 de Agosto, Av. de la Prensa, Av. Jorge Garces",
                "6:50 AM - 8:00 PM",
                "Sistemas",
                "https://www.google.com/maps/embed?pb=!1m48!1m12!1m3!1d13420.061075699981!2d-78.47960749033683!3d-0.13013751287221495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m33!3e0!4m3!3m2!1d-0.2101747!2d-78.4894326!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3c1c943d25%3A0x154758c2c292a61a!2sAv.%20Am%C3%A9rica%2C%20170129%20Quito!3m2!1d-0.1880686!2d-78.49595769999999!4m5!1s0x91d59aa32f6932a5%3A0x9567df6f01c21342!2sAv.%2010%20de%20Agosto%2C%20170521%20Quito!3m2!1d-0.18847709999999998!2d-78.4921147!4m5!1s0x91d58542dff375cb%3A0x42bb616769bbd81b!2sAv.%20de%20la%20Prensa%2C%20170104%20Quito!3m2!1d-0.1351972!2d-78.49370859999999!4m3!3m2!1d-0.12048729999999999!2d-78.4654303!5e0!3m2!1ses-419!2sec!4v1731768693458!5m2!1ses-419!2sec"
        );
    }

    @Test
    void testGetters() {
        assertEquals(3L, ruta.getIdBus());
        assertEquals("Comite del pueblo", ruta.getNombreRuta());
        assertEquals("Andalucia, Av Patria, Av. América, Av. 10 de Agosto, Av. de la Prensa, Av. Jorge Garces", ruta.getParadas());
        assertEquals("6:50 AM - 8:00 PM", ruta.getHorario());
        assertEquals("Sistemas", ruta.getUbicacion());
        assertEquals("https://www.google.com/maps/embed?pb=!1m48!1m12!1m3!1d13420.061075699981!2d-78.47960749033683!3d-0.13013751287221495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m33!3e0!4m3!3m2!1d-0.2101747!2d-78.4894326!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3c1c943d25%3A0x154758c2c292a61a!2sAv.%20Am%C3%A9rica%2C%20170129%20Quito!3m2!1d-0.1880686!2d-78.49595769999999!4m5!1s0x91d59aa32f6932a5%3A0x9567df6f01c21342!2sAv.%2010%20de%20Agosto%2C%20170521%20Quito!3m2!1d-0.18847709999999998!2d-78.4921147!4m5!1s0x91d58542dff375cb%3A0x42bb616769bbd81b!2sAv.%20de%20la%20Prensa%2C%20170104%20Quito!3m2!1d-0.1351972!2d-78.49370859999999!4m3!3m2!1d-0.12048729999999999!2d-78.4654303!5e0!3m2!1ses-419!2sec!4v1731768693458!5m2!1ses-419!2sec", ruta.getMapaUrl());
    }

    @Test
    void testSetters() {
        ruta.setIdBus(4L);
        ruta.setNombreRuta("Ruta Nueva");
        ruta.setParadas("Nueva Parada 1, Nueva Parada 2");
        ruta.setHorario("07:00 AM - 09:00 PM");
        ruta.setUbicacion("Zona Norte");
        ruta.setMapaUrl("https://www.example.com/map");

        assertEquals(4L, ruta.getIdBus());
        assertEquals("Ruta Nueva", ruta.getNombreRuta());
        assertEquals("Nueva Parada 1, Nueva Parada 2", ruta.getParadas());
        assertEquals("07:00 AM - 09:00 PM", ruta.getHorario());
        assertEquals("Zona Norte", ruta.getUbicacion());
        assertEquals("https://www.example.com/map", ruta.getMapaUrl());
    }

    @Test
    void testConstructor() {
        Ruta nuevaRuta = new Ruta();
        assertNotNull(nuevaRuta);
    }

    @Test
    void testToString() {
        String expected = "Nombre de la Ruta: Comite del pueblo, Paradas: Andalucia, Av Patria, Av. América, Av. 10 de Agosto, Av. de la Prensa, Av. Jorge Garces, Horario: 6:50 AM - 8:00 PM, Ubicación: Sistemas, Mapa URL: https://www.google.com/maps/embed?pb=!1m48!1m12!1m3!1d13420.061075699981!2d-78.47960749033683!3d-0.13013751287221495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m33!3e0!4m3!3m2!1d-0.2101747!2d-78.4894326!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3c1c943d25%3A0x154758c2c292a61a!2sAv.%20Am%C3%A9rica%2C%20170129%20Quito!3m2!1d-0.1880686!2d-78.49595769999999!4m5!1s0x91d59aa32f6932a5%3A0x9567df6f01c21342!2sAv.%2010%20de%20Agosto%2C%20170521%20Quito!3m2!1d-0.18847709999999998!2d-78.4921147!4m5!1s0x91d58542dff375cb%3A0x42bb616769bbd81b!2sAv.%20de%20la%20Prensa%2C%20170104%20Quito!3m2!1d-0.1351972!2d-78.49370859999999!4m3!3m2!1d-0.12048729999999999!2d-78.4654303!5e0!3m2!1ses-419!2sec!4v1731768693458!5m2!1ses-419!2sec";
        assertEquals(expected, ruta.toString());
    }
}
