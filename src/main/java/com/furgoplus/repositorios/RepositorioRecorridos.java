package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.furgoplus.modelos.Recorrido;

public interface RepositorioRecorridos extends CrudRepository<Recorrido, Long>{
	List<Recorrido> findByUsuarioId(Long usuarioId);
}
