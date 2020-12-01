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
public class Serie {
    @Id
    @ManyToOne
    @JoinColumn(name = "Serie_idSerie1")
    Integer idSerie;
    String titulo;
    Integer episodios;
    Integer temporadas;

    public Integer getIdSerie() {
        return idSerie;
    }

    public void setIdSerie(Integer idSerie) {
        this.idSerie = idSerie;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getEpisodios() {
        return episodios;
    }

    public void setEpisodios(Integer episodios) {
        this.episodios = episodios;
    }

    public Integer getTemporadas() {
        return temporadas;
    }

    public void setTemporadas(Integer temporadas) {
        this.temporadas = temporadas;
    }

    @Override
    public String toString() {
        return "serie{" + "idSerie=" + idSerie + ", titulo=" + titulo + ", episodios=" + episodios + ", temporadas=" + temporadas + '}';
    }
    
}
