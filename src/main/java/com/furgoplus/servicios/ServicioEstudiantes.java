package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Estudiante;
import com.furgoplus.repositorios.RepositorioEstudiantes;

@Service
public class ServicioEstudiantes {
	@Autowired
	private final RepositorioEstudiantes repositorioEstudiantes;
	
	public ServicioEstudiantes(RepositorioEstudiantes repositorioEstudiantes) {
		this.repositorioEstudiantes = repositorioEstudiantes;
	}
	
	public List<Estudiante> obtenerTodos(){
		return this.repositorioEstudiantes.findAll();
	}

	public List<Estudiante> obtenerEstudiantesPorApoderado(Long apoderadoId) {
        return repositorioEstudiantes.findByApoderadoId(apoderadoId);
    }

    public Estudiante obtenerEstudiantePorId(Long id) {
        return repositorioEstudiantes.findById(id).orElse(null);
    }
    
    public Estudiante agregarEstudiante(Estudiante nuevoEstudiante) {
		return this.repositorioEstudiantes.save(nuevoEstudiante);
	}

}
