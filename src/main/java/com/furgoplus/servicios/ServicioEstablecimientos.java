package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Establecimiento;
import com.furgoplus.repositorios.RepositorioEstablecimientos;

@Service
public class ServicioEstablecimientos {
	@Autowired
    private final RepositorioEstablecimientos repositorioEstablecimientos;
	
    public ServicioEstablecimientos(RepositorioEstablecimientos repositorioEstablecimientos) {
		this.repositorioEstablecimientos = repositorioEstablecimientos;
	}
    
    public List<Establecimiento> obtenerTodasLosEstablecimientos(){
		return this.repositorioEstablecimientos.findAll();
	}

	public Establecimiento obtenerEstablecimientoPorId(Long id) {
        return repositorioEstablecimientos.findById(id).orElse(null);
    }
}
