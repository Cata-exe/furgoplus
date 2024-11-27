package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.DocumentoChofer;

@Repository
public interface RepositorioDocumentosChofer extends CrudRepository<DocumentoChofer, Long>{
	List<DocumentoChofer> findByUsuarioId(Long usuarioId);
}
