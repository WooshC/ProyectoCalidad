package com.poliweb.modelo;

import jakarta.persistence.*;

import java.text.DecimalFormat;
import java.util.Date;

@Entity
@Table(name = "cafeteria") // Indica que esta entidad corresponde a la tabla 'cafeteria'
public class Cafeteria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private Date fecha;

    @Column(nullable = false)
    private String categoria;

    @Column(nullable = false)
    private String nombrePlato;

    @Column(nullable = false)
    private String descripcion;

    @Column(nullable = false)
    private Double precio;

    public Cafeteria(Long id, Date fecha, String categoria, String nombrePlato, String descripcion, Double precio) {
        this.id = id;
        this.fecha = fecha;
        this.categoria = categoria;
        this.nombrePlato = nombrePlato;
        this.descripcion = descripcion;
        this.precio = precio;
    }

    public Cafeteria() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombrePlato() {
        return nombrePlato;
    }

    public void setNombrePlato(String nombrePlato) {
        this.nombrePlato = nombrePlato;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getPrecioFormateado() {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        return decimalFormat.format(precio);
    }


}
