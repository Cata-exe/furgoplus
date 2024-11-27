package com.furgoplus.servicios;

import java.util.Comparator;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.furgoplus.modelos.Rol;
import com.furgoplus.modelos.Usuario;
import com.furgoplus.modelos.UsuarioLogin;
import com.furgoplus.repositorios.RepositorioUsuarios;



@Service
public class ServicioUsuarios {
	@Autowired
	private final RepositorioUsuarios repositorioUsuarios;

	public ServicioUsuarios(RepositorioUsuarios repositorioUsuario) {
		this.repositorioUsuarios = repositorioUsuario;
	}
	
	public List<Usuario> obtenerTodos(){
		return this.repositorioUsuarios.findAll();
	}
	
	public List<Usuario> obtenerUsuarioChofer(Rol rol) {
		return this.repositorioUsuarios.findByRol(rol);
	}
	
	public List<Usuario> buscarChoferesPorNombre(String nombre) {
		return repositorioUsuarios.findByNombreContainingIgnoreCase(nombre);
    }
	
	public List<Usuario> obtenerTodasLosUsuariosOrdenados() {
        List<Usuario> usuarios = (List<Usuario>) repositorioUsuarios.findAll();
        usuarios.sort(Comparator.comparing(Usuario::getNombre));
        return usuarios;
    }
	
	public Usuario obtenerUsuarioId(Long idUsuario) {
		return this.repositorioUsuarios.findById(idUsuario).orElse(null);
	}
	
	public Usuario agregarUsuario(Usuario nuevoUsuario) {
		String contraseniaSegura = BCrypt.hashpw(nuevoUsuario.getContrasenia(), BCrypt.gensalt());
		nuevoUsuario.setContrasenia(contraseniaSegura);
		return this.repositorioUsuarios.save(nuevoUsuario);
	}
	
	public Usuario obtenerUsuarioParaLogin(String correo) {
		return this.repositorioUsuarios.findByCorreo(correo);
	}
	
	public BindingResult validarRegistro(BindingResult validation, Usuario usuario) {
		if(! usuario.getContrasenia().equals(usuario.getConfirmacionContrasenia())) {
			validation.rejectValue("confirmacionContrasenia", "contraseniasNoIguales", "Las contraseñas deben de ser iguales.");
		}
		return validation;
	}
	
	public BindingResult validarLogin(BindingResult resultado, UsuarioLogin usuarioLogin) {
		Usuario usuarioActual = this.repositorioUsuarios.findByCorreo(usuarioLogin.getCorreoLogin());
		if(usuarioActual == null) {
			resultado.rejectValue("correoLogin", "Missing", "Credenciales incorrectas!");
		}
		else {
			if(! BCrypt.checkpw(usuarioLogin.getContraseniaLogin(), usuarioActual.getContrasenia())) {
				resultado.rejectValue("contraseniaLogin", "contraseniaLogin", "Credenciales incorrectas. Ingrese nuevamente.");
			}
		}
		return resultado;
	}
	
	public Usuario actualizarUsuario(Usuario actualizarUsuario) {
        Usuario usuarioActual = this.repositorioUsuarios.findById(actualizarUsuario.getId()).orElse(null);
        if (usuarioActual != null) {
        	usuarioActual.setNombre(actualizarUsuario.getNombre());
            return this.repositorioUsuarios.save(usuarioActual);
        }
        return null;
    }
}
