package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Apoderado;
import com.furgoplus.repositorios.RepositorioApoderados;

@Service
public class ServicioApoderados {
	@Autowired
	private final RepositorioApoderados repositorioApoderados;

	public ServicioApoderados(RepositorioApoderados repositorioApoderados) {
		this.repositorioApoderados = repositorioApoderados;
	}
	
	public List<Apoderado> obtenerTodas(){
		return this.repositorioApoderados.findAll();
	}
	
	public Apoderado obtenerUno(Long id_apoderado) {
		return this.repositorioApoderados.findById(id_apoderado).orElse(null);
	}
	
	public Apoderado guardarApoderado(Apoderado apoderado) { 
		return this.repositorioApoderados.save(apoderado); 
	}
	
	
	
}
