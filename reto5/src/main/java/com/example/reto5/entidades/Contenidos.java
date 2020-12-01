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
public class Contenidos {
    @Id
    @ManyToOne
    @JoinColumn(name = "Contenidos_idContenidos")
    Integer idContenidos;
    @OneToMany(mappedBy = "idPelicula")
    Set<Pelicula> Pelicula_idPelicula1;
    @OneToMany(mappedBy = "idSerie")
    Set<Serie> Serie_idSerie1;

    
    
    public Integer getIdContenidos() {
        return idContenidos;
    }

    public void setIdContenidos(Integer idContenidos) {
        this.idContenidos = idContenidos;
    }

    public Set<Pelicula> getPelicula_idPelicula1() {
        return Pelicula_idPelicula1;
    }

    public void setPelicula_idPelicula1(Set<Pelicula> Pelicula_idPelicula1) {
        this.Pelicula_idPelicula1 = Pelicula_idPelicula1;
    }

    public Set<Serie> getSerie_idSerie1() {
        return Serie_idSerie1;
    }

    public void setSerie_idSerie1(Set<Serie> Serie_idSerie1) {
        this.Serie_idSerie1 = Serie_idSerie1;
    }

    @Override
    public String toString() {
        return "contenidos{" + "idContenidos=" + idContenidos + ", Pelicula_idPelicula1=" + Pelicula_idPelicula1 + ", Serie_idSerie1=" + Serie_idSerie1 + '}';
    }
    
}
