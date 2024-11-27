package com.furgoplus.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.furgoplus.modelos.Vehiculo;
import com.furgoplus.repositorios.RepositorioVehiculos;

@Service
public class ServicioVehiculos {
	@Autowired
	private final RepositorioVehiculos repositorioVehiculos;

	public ServicioVehiculos(RepositorioVehiculos repositorioVehiculos) {
		this.repositorioVehiculos = repositorioVehiculos;
	}
	
	public List<Vehiculo> obtenerTodasLosVehiculos(){
		return this.repositorioVehiculos.findAll();
	}

	public List<Vehiculo> obtenerVehiculosPorUsuario(Long usuarioId) {
        return repositorioVehiculos.findByUsuarioId(usuarioId);
    }

    public Vehiculo obtenerVehiculoPorId(Long id) {
        return repositorioVehiculos.findById(id).orElse(null);
    }
    
    public Vehiculo agregarVehiculo(Vehiculo nuevoVehiculo) {
		return this.repositorioVehiculos.save(nuevoVehiculo);
	}
}
