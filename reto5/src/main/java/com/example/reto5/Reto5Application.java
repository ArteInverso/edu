package com.example.reto5;

import com.example.reto5.vistas.Ventana;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Reto5Application {

	public static void main(String[] args) {
		new Ventana().setVisible(true);
	}

	public static void iniciarSpring(){
		SpringApplication.run(Reto5Application.class);
	}

}
