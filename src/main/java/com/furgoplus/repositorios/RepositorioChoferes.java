package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.DocumentoChofer;

@Repository
public interface RepositorioChoferes extends CrudRepository<DocumentoChofer, Long>{
	List<DocumentoChofer> findAll();
}
