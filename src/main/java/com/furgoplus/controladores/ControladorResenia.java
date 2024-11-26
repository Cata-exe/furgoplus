package com.furgoplus.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.furgoplus.modelos.Resenia;
import com.furgoplus.servicios.ServicioResenia;

@Controller
public class ControladorResenia {

	@Autowired
	private ServicioResenia servicioResenia;
	
	@GetMapping("/calificar")
	public String mostrarFormularioResenia() {
		return "Resenia.jsp";
	}
	
	@PostMapping("/agregar/calificar")
	public String agregarResenia(@ModelAttribute Resenia resenia) {
		servicioResenia.saveResenia(resenia);
		return "redirect:/calificar?success";
	}
}
