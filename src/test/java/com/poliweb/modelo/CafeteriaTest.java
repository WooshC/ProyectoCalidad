package com.poliweb.modelo;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.Date;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class CafeteriaTest {

    private Cafeteria cafeteria;

    @BeforeEach
    void setUp() {
        cafeteria = new Cafeteria(1L, new Date(), "Comida", "Hamburguesa", "Deliciosa hamburguesa casera", 5.50);
    }

    @Test
    void testGetters() {
        assertEquals(1L, cafeteria.getId());
        assertNotNull(cafeteria.getFecha());
        assertEquals("Comida", cafeteria.getCategoria());
        assertEquals("Hamburguesa", cafeteria.getNombrePlato());
        assertEquals("Deliciosa hamburguesa casera", cafeteria.getDescripcion());
        assertEquals(5.50, cafeteria.getPrecio());
    }

    @Test
    void testSetters() {
        cafeteria.setId(2L);
        cafeteria.setFecha(new Date());
        cafeteria.setCategoria("Bebida");
        cafeteria.setNombrePlato("Limonada");
        cafeteria.setDescripcion("Refrescante limonada natural");
        cafeteria.setPrecio(2.75);

        assertEquals(2L, cafeteria.getId());
        assertEquals("Bebida", cafeteria.getCategoria());
        assertEquals("Limonada", cafeteria.getNombrePlato());
        assertEquals("Refrescante limonada natural", cafeteria.getDescripcion());
        assertEquals(2.75, cafeteria.getPrecio());
    }

    @Test
    void testGetPrecioFormateado() {
        cafeteria.setPrecio(5.5);
        assertEquals("5.50", cafeteria.getPrecioFormateado());

        cafeteria.setPrecio(3.7);
        assertEquals("3.70", cafeteria.getPrecioFormateado());

        cafeteria.setPrecio(10.0);
        assertEquals("10.00", cafeteria.getPrecioFormateado());
    }

    @Test
    void testConstructor() {
        Cafeteria newCafeteria = new Cafeteria();
        assertNotNull(newCafeteria);
    }
}
