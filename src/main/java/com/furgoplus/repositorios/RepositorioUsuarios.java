package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.Rol;
import com.furgoplus.modelos.Usuario;

@Repository
public interface RepositorioUsuarios extends CrudRepository<Usuario, Long>{
	List<Usuario> findAll();
	Usuario findByCorreo(String correo);
	List<Usuario> findByRol(Rol rol);
	List<Usuario> findByNombreContainingIgnoreCase(String nombre);
}
