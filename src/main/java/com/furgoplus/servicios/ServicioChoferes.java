package com.furgoplus.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.DocumentoChofer;
import com.furgoplus.repositorios.RepositorioChoferes;

@Service
public class ServicioChoferes {
	@Autowired
	private final RepositorioChoferes repositorioChoferes;

	public ServicioChoferes(RepositorioChoferes repositorioChoferes) {
		this.repositorioChoferes = repositorioChoferes;
	}
	
	public DocumentoChofer obtenerUno(Long id_domumento_chofer) {
		return this.repositorioChoferes.findById(id_domumento_chofer).orElse(null);
	}
	
	public DocumentoChofer guardarDocumentosChofer(DocumentoChofer documentoChofer) { 
		return this.repositorioChoferes.save(documentoChofer); 
	}
	

}
