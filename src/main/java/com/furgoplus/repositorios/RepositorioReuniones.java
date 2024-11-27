package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.Reunion;

@Repository
public interface RepositorioReuniones extends CrudRepository<Reunion, Long>{
	List<Reunion> findByUsuarioId(Long usuarioId);
}
