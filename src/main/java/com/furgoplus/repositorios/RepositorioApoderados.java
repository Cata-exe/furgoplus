package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.Apoderado;

@Repository
public interface RepositorioApoderados extends CrudRepository<Apoderado, Long>{
	List<Apoderado> findAll();
	List<Apoderado> findByUsuarioId(Long usuarioId);
}
