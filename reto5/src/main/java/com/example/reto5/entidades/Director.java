/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reto5.entidades;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


/**
 *
 * @author juan sebastian
 */
@Entity
public class Director {

    @Id
    @ManyToOne
    @JoinColumn(name = "Director_idDirector")
    Integer idDirector;
    String nombre;
    String apellido;
    String nacionalidad;

    public Integer getIdDirector() {
        return idDirector;
    }

    public void setIdDirector(Integer idDirector) {
        this.idDirector = idDirector;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    @Override
    public String toString() {
        return "director{" + "idDirector=" + idDirector + ", nombre=" + nombre + ", apellido=" + apellido + ", nacionalidad=" + nacionalidad + '}';
    }
    
}
