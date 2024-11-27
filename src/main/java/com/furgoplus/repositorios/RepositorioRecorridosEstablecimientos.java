package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.furgoplus.modelos.RecorridoEstablecimiento;

public interface RepositorioRecorridosEstablecimientos extends CrudRepository<RecorridoEstablecimiento, Long>{
	List<RecorridoEstablecimiento> findByEstablecimientoId(Long establecimientoId);
}
