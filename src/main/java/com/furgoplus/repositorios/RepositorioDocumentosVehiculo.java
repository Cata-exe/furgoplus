package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.furgoplus.modelos.DocumentoVehiculo;

@Repository
public interface RepositorioDocumentosVehiculo extends CrudRepository<DocumentoVehiculo, Long>{
	List<DocumentoVehiculo> findByVehiculoId(Long vehiculoId);
}
