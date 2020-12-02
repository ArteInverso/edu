/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix.entidades;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Veronica Villamil
 */
@Entity
public class Serie {
    @Id
    Integer IdSerie;
    String name;
    Integer NumSeason;
    Integer NumEpisodes;

    public Integer getIdSerie() {
        return IdSerie;
    }

    public String getName() {
        return name;
    }

    public Integer getNumSeason() {
        return NumSeason;
    }

    public Integer getNumEpisodes() {
        return NumEpisodes;
    }

    public void setIdSerie(Integer IdSerie) {
        this.IdSerie = IdSerie;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNumSeason(Integer NumSeason) {
        this.NumSeason = NumSeason;
    }

    public void setNumEpisodes(Integer NumEpisodes) {
        this.NumEpisodes = NumEpisodes;
    }
    
    
    
    
}
