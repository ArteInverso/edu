/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix.repositorios;

import com.example.Redflix.entidades.Serie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Veronica Villamil
 */
@Repository
public interface RepositorioSerie extends JpaRepository<Serie, Integer>{
}
