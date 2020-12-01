/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reto5;

import com.example.reto5.repositorios.RepositorioContenidos;
import com.example.reto5.repositorios.RepositorioDirectores;
import com.example.reto5.repositorios.RepositorioPeliculas;
import com.example.reto5.repositorios.RepositorioSeries;
import com.example.reto5.repositorios.RepositorioTransmisiones;
import com.example.reto5.repositorios.RepositorioUsuarios;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 *
 * @author juan sebastian
 */
@Component
public class MainSpring implements CommandLineRunner{
    
    @Autowired
    RepositorioPeliculas repositorioPeliculas;
    RepositorioSeries repositorioSeries;
    RepositorioUsuarios repositorioUsuarios;
    
    @Override
    public void run(String... args) throws Exception {
        System.out.println(repositorioSeries.count());
    }
    
}
