/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reto5.repositorios;

import com.example.reto5.entidades.Contenidos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author juan sebastian
 */
@Repository
public interface RepositorioContenidos extends JpaRepository<Contenidos, Integer>{
    
}
