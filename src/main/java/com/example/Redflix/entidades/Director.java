/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix.entidades;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Veronica Villamil
 */
@Entity
public class Director{
    @Id
    Integer iddirector;
    String Name;
    String Lastname;
    String Nacionalidad;   
 //   @OneToMany(mappedBy = "idDirector")
 //   List<Pelicula> peliculas;
    

    public int getIdDirector() {
        return iddirector;
    }

    public void setidDirector(int idDirector) {
        this.iddirector = idDirector;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public void setNacionalidad(String Nacionalidad) {
        this.Nacionalidad = Nacionalidad;
    }

    public String getName() {
        return Name;
    }

    public String getLastname() {
        return Lastname;
    }

    public String getNacionalidad() {
        return Nacionalidad;
    }
    @Override
    public String toString() {
        return "Director{" + "idDirector=" + iddirector + ", Name=" + Name + ", Lastname=" + Lastname + ", Nacionalidad=" + Nacionalidad;
    }
}
