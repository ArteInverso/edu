package com.example.Redflix;

import com.example.Redflix.vistas.Ventana;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class RedflixApplication {

	public static void main(String[] args) {
            new Ventana().setVisible(true);
	//	SpringApplication.run(RedflixApplication.class, args);
	}
        public static void iniciarSpring(){
            SpringApplication.run(RedflixApplication.class);
        }
        

}
