package com.furgoplus.modelos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class UsuarioLogin {
	@NotBlank(message = "Por favor proporciona el correo.")
    @Email(message="Por favor proporciona un correo válido.")
    private String correoLogin;

    @NotBlank(message = "Por favor proporciona una contraseña.")
    private String contraseniaLogin;
    
    public UsuarioLogin() {}

	public String getCorreoLogin() {
		return correoLogin;
	}

	public void setCorreoLogin(String correoLogin) {
		this.correoLogin = correoLogin;
	}

	public String getContraseniaLogin() {
		return contraseniaLogin;
	}

	public void setContraseniaLogin(String contraseniaLogin) {
		this.contraseniaLogin = contraseniaLogin;
	}
}
