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

public class Usuario {
    @Id
    String Nickname;
    String Name;
    String LastName;
 //   String Email;

    public String getNickname() {
        return Nickname;
    }

    public void setNickname(String Nickname) {
        this.Nickname = Nickname;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }
    
    
    
    
}
