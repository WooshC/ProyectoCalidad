package com.poliweb;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.io.Serializable;

/**
 *
 * @author USUARIO
 */
@Entity
@Table(name = "polibus") // Indica que esta entidad corresponde a la tabla 'polibus'
public class Ruta implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Genera un ID autoincremental
    private Long idRuta; // ID único para la ruta
    private String nombreRuta;
    private String paradas;
    private String horario;

    public Ruta() {
        // Constructor por defecto requerido por JPA
    }

    public Ruta(String nombreRuta, String paradas, String horario) {
        this.nombreRuta = nombreRuta;
        this.paradas = paradas;
        this.horario = horario;
    }

    public Long getIdRuta() {
        return idRuta;
    }

    public String getNombreRuta() {
        return nombreRuta;
    }

    public String getParadas() {
        return paradas;
    }

    public String getHorario() {
        return horario;
    }
}
