package com.furgoplus.controladores;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.furgoplus.modelos.Usuario;
import com.furgoplus.modelos.Vehiculo;
import com.furgoplus.servicios.ServicioUsuarios;
import com.furgoplus.servicios.ServicioVehiculos;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorVehiculos {
	@Autowired
	private final ServicioUsuarios servicioUsuarios;
	@Autowired
	private final ServicioVehiculos servicioVehiculos;
	
	public ControladorVehiculos(ServicioUsuarios servicioUsuarios, ServicioVehiculos servicioVehiculos) {
		this.servicioUsuarios = servicioUsuarios;
		this.servicioVehiculos = servicioVehiculos;
	}

	@GetMapping("/registrofurgon")
    public String formularioRegistroVehiculo(@ModelAttribute Vehiculo vehiculo, Model model) {
		model.addAttribute("vehiculo", vehiculo);
		return "formularioAgregarVehiculo.jsp";
    }
	
	@PostMapping("/procesa/registro/vehiculo")
	public String agregarEstudiante(@Valid @ModelAttribute Vehiculo vehiculo, HttpSession session, BindingResult validation) {
		if (validation.hasErrors()) {
            return "formularioAgregarVehiculo.jsp";
        }
		
		Long userId = (Long) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/login";
        }
        
        Usuario usuario = servicioUsuarios.obtenerUsuarioId(userId);
        if (usuario == null) {
            return "redirect:/login";
        }
        
        vehiculo.setUsuario(usuario);
        
        servicioVehiculos.agregarVehiculo(vehiculo);
       
		return "redirect:/vista";
	}
}
