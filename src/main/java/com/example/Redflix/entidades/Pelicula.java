/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Veronica Villamil
 */
@Entity
public class Pelicula {
    @Id
    Integer idpelicula;
// seria necesario si los atributos no se crearan con el mismo nombre  @Column (name = "Title")
    String Title;
    String Summary;
    String Year;
    
    @ManyToOne()
    @JoinColumn(name="director_iddirector")
    Director director;
    
    public Director getDirector() {
        return director;
    }

    public void setDirector(Director director) {
        this.director = director;
    }
    
    public String getTitle() {
        return Title;
    }

    public String getSummary() {
        return Summary;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public void setSummary(String Summary) {
        this.Summary = Summary;
    }

    public void setYear(String Year) {
        this.Year = Year;
    }


    @Override
    public String toString() {
        return "Pelicula{" + "Idpelicula=" + idpelicula + ", Titulo=" + Title + '}';
    }
    
}
