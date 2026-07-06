package com.noemi.servicios;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.noemi.modelos.Cancion;
import com.noemi.repositorios.RepositorioCanciones;


@Service
public class ServicioCanciones {

	@Autowired
	private RepositorioCanciones repoCanciones;
	
	public List<Cancion> ObtenerTodasLasCanciones(){
		return this.repoCanciones.findAll();
		
	}
	
	public Cancion obtenerCancionPorId(Long id) {
		return repoCanciones.findById(id).orElse(null);
		
	}
	
	public Cancion agregarCancion(Cancion cancion) {
		return repoCanciones.save(cancion);
	}
}
