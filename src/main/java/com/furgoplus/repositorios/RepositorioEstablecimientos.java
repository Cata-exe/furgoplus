package com.furgoplus.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.furgoplus.modelos.Establecimiento;

public interface RepositorioEstablecimientos extends CrudRepository<Establecimiento, Long>{
	List<Establecimiento> findAll();
}
