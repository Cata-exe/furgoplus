package com.furgoplus.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.furgoplus.modelos.Contacto;
import com.furgoplus.servicios.ServicioContactos;

import jakarta.validation.Valid;

@Controller
public class ControladorContactos {
	@Autowired
	private final ServicioContactos serviciosContactos;

	public ControladorContactos(ServicioContactos serviciosContactos) {
		this.serviciosContactos = serviciosContactos;
	}
	
	@GetMapping("/contacto")
    public String contacto(@ModelAttribute Contacto contacto, Model model) {
		model.addAttribute("contacto", contacto);
		return "contacto.jsp";
    }
	
	@PostMapping("/contactos/procesa/agregar")
	public String guardarContacto(@Valid @ModelAttribute Contacto contacto, BindingResult result) { 
		if (result.hasErrors()) {
	        return "contacto.jsp";
	    }
		serviciosContactos.guardarContacto(contacto); 
		return "redirect:/";
	}
}
