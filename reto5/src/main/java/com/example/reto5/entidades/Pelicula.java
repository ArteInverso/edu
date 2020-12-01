/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reto5.entidades;

import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author juan sebastian
 */
@Entity
public class Pelicula {
    @Id
    @ManyToOne
    @JoinColumn(name = "Pelicula_idPelicula1")
    Integer idPelicula;
    String titulo;
    String resumen;
    Integer anno;
    @OneToMany(mappedBy = "idDirector")
    Set<Director> Director_idDirector;

    public Integer getIdPelicula() {
        return idPelicula;
    }

    public void setIdPelicula(Integer idPelicula) {
        this.idPelicula = idPelicula;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public Integer getAnno() {
        return anno;
    }

    public void setAnno(Integer anno) {
        this.anno = anno;
    }

    public Set<Director> getDirector_idDirector() {
        return Director_idDirector;
    }

    public void setDirector_idDirector(Set<Director> Director_idDirector) {
        this.Director_idDirector = Director_idDirector;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "idPelicula=" + idPelicula + ", titulo=" + titulo + ", resumen=" + resumen + ", anno=" + anno + ", Director_idDirector=" + Director_idDirector + '}';
    }
    
    
}
