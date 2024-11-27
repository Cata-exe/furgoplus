package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.furgoplus.modelos.Reserva;

public interface RepositorioReservas extends CrudRepository<Reserva, Long>{
	List<Reserva> findByEstudianteId(Long estudianteId);
    List<Reserva> findByRecorridoId(Long recorridoId);
}
