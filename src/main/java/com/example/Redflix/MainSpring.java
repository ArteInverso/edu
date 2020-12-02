/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix;

import com.example.Redflix.entidades.Director;
import com.example.Redflix.repositorios.RepositorioDirector;
import com.example.Redflix.repositorios.RepositorioPelicula;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 *
 * @author Veronica Villamil
 */
@Component
public class MainSpring implements CommandLineRunner  {
    @Autowired
    RepositorioPelicula repositorioPelicula;
    @Autowired
    RepositorioDirector repositorioDirector;
    
    @Override
       public void run(String... args) throws Exception {
       System.out.println("Cantidad de peliculas: " + repositorioPelicula.count());
       System.out.println("Cantidad de Directores: " + repositorioDirector.count());
       //String nombreDirector = repositorioPelicula.findById(1).toString();
       Director nombreDirector = repositorioPelicula.findById(1).get().getDirector();
       System.out.println("Director de la pelicula 5:" + nombreDirector);
    }  
}
