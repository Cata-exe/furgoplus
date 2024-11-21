package com.furgoplus.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Contacto;
import com.furgoplus.repositorios.RepositorioContactos;

@Service
public class ServicioContactos {
	@Autowired
	private final RepositorioContactos repositorioContactos;
	
	public ServicioContactos(RepositorioContactos repositorioContactos) {
		this.repositorioContactos = repositorioContactos;
	}

	public Contacto guardarContacto(Contacto contacto) { 
		return repositorioContactos.save(contacto); 
	}
}
