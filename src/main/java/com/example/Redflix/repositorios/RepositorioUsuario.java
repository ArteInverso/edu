/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Redflix.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.Redflix.entidades.Usuario;
/**
 *
 * @author Veronica Villamil
 */
@Repository
public interface RepositorioUsuario extends JpaRepository<Usuario,String> {
}
