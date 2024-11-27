package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.furgoplus.modelos.Estudiante;

public interface RepositorioEstudiantes extends CrudRepository<Estudiante, Long>{
	List<Estudiante> findAll();
	List<Estudiante> findByApoderadoId(Long apoderadoId);
}
