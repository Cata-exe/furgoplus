package com.furgoplus.modelos;

import jakarta.validation.Valid;

public class RegistroChoferDTO {
	@Valid
	private Usuario usuario;
	@Valid
    private DocumentoChofer documentoChofer;
    
    public RegistroChoferDTO() {}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public DocumentoChofer getDocumentoChofer() {
		return documentoChofer;
	}

	public void setDocumentoChofer(DocumentoChofer documentoChofer) {
		this.documentoChofer = documentoChofer;
	}
    
}
