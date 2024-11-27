package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.DocumentoChofer;
import com.furgoplus.repositorios.RepositorioDocumentosChofer;

@Service
public class ServicioDocumentosChofer {
	@Autowired
	private final RepositorioDocumentosChofer repositorioDocumentosChofer;

	public ServicioDocumentosChofer(RepositorioDocumentosChofer repositorioDocumentosChofer) {
		this.repositorioDocumentosChofer = repositorioDocumentosChofer;
	}
	
	 public List<DocumentoChofer> obtenerDocumentosPorUsuario(Long usuarioId) {
        return repositorioDocumentosChofer.findByUsuarioId(usuarioId);
	 }

    public DocumentoChofer obtenerDocumentoPorId(Long id) {
        return repositorioDocumentosChofer.findById(id).orElse(null);
    }
}
