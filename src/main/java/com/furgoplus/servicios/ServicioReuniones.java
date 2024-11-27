package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Reunion;
import com.furgoplus.repositorios.RepositorioReuniones;

@Service
public class ServicioReuniones {
	@Autowired
	private final RepositorioReuniones repositorioReuniones;

	public ServicioReuniones(RepositorioReuniones repositorioReuniones) {
		this.repositorioReuniones = repositorioReuniones;
	}
	
	public List<Reunion> obtenerReunionesPorUsuario(Long usuarioId) {
        return repositorioReuniones.findByUsuarioId(usuarioId);
    }

    public Reunion obtenerReunionPorId(Long id) {
        return repositorioReuniones.findById(id).orElse(null);
    }
}
