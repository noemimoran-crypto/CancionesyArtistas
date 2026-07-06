package com.noemi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CancionesApplication {

	public static void main(String[] args) {
		SpringApplication.run(CancionesApplication.class, args);
	}



public Cancion actualizaCancion(Cancion cancion) {
    Object repositorioCanciones;
	return repositorioCanciones.save(cancion);
}


}