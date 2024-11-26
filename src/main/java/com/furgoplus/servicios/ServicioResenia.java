package com.furgoplus.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Resenia;
import com.furgoplus.repositorios.RepositorioResenia;

@Service
public class ServicioResenia {

	@Autowired
	private RepositorioResenia repositorioResenia;
	
	public Resenia saveResenia(Resenia resenia) {
		return repositorioResenia.save(resenia);
	}
}
