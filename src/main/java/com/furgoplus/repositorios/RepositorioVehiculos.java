package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.Vehiculo;

@Repository
public interface RepositorioVehiculos extends CrudRepository<Vehiculo, Long>{
	List<Vehiculo> findAll();
	List<Vehiculo> findByUsuarioId(Long usuarioId);
}
