/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reto5.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author juan sebastian
 */
@Entity
public class Usuario {
    @Id
    @ManyToOne
    @JoinColumn(name = "Usuario_alias")
    String alias;
    @Column(name = "nombre") // No esnecesario si los nombres son iguales acá y en Workbench
    String nombre;
    String apellido;
    String correo;
    Long celular;
    String contrasenna;
    //Pendiente Fecha nacimiento

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public Long getCelular() {
        return celular;
    }

    public void setCelular(Long celular) {
        this.celular = celular;
    }

    public String getContrasenna() {
        return contrasenna;
    }

    public void setContrasenna(String contrasenna) {
        this.contrasenna = contrasenna;
    }

    @Override
    public String toString() {
        return "usuario{" + "alias=" + alias + ", nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + ", celular=" + celular + ", contrasenna=" + contrasenna + '}';
    }
    
    
}
