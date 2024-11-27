package com.furgoplus.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.furgoplus.modelos.Apoderado;
import com.furgoplus.modelos.Establecimiento;
import com.furgoplus.modelos.Estudiante;
import com.furgoplus.servicios.ServicioApoderados;
import com.furgoplus.servicios.ServicioEstablecimientos;
import com.furgoplus.servicios.ServicioEstudiantes;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorEstudiantes {
	@Autowired
	private final ServicioEstablecimientos servicioEstablecimientos;
	@Autowired
	private final ServicioEstudiantes servicioEstudiantes;
	@Autowired
	private final ServicioApoderados servicioApoderados;

	public ControladorEstudiantes(ServicioEstablecimientos servicioEstablecimientos,
			ServicioEstudiantes servicioEstudiantes, ServicioApoderados servicioApoderados) {
		this.servicioEstablecimientos = servicioEstablecimientos;
		this.servicioEstudiantes = servicioEstudiantes;
		this.servicioApoderados = servicioApoderados;
	}

	@GetMapping("/registroestudiante")
    public String formularioRegistroEstudiante(@ModelAttribute Estudiante estudiante, Model model) {
		List<Establecimiento> establecimientos = servicioEstablecimientos.obtenerTodasLosEstablecimientos();
        model.addAttribute("establecimientos", establecimientos);
		model.addAttribute("estudiante", estudiante);
		return "formularioAgregarEstudiante.jsp";
    }
	
	@PostMapping("/procesa/registro/estudiante")
	public String agregarEstudiante(@Valid @ModelAttribute Estudiante estudiante, HttpSession session, BindingResult validation) {
		if (validation.hasErrors()) {
            return "formularioAgregarEstudiante.jsp";
        }
		
		Long userId = (Long) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/login";
        }
        
        Apoderado apoderado = servicioApoderados.obtenerApoderadoPorId(userId);
        estudiante.setApoderado(apoderado);
        
        Long establecimientoId = estudiante.getEstablecimiento().getId();
        Establecimiento establecimiento = servicioEstablecimientos.obtenerEstablecimientoPorId(establecimientoId);
        estudiante.setEstablecimiento(establecimiento);
        
        this.servicioEstudiantes.agregarEstudiante(estudiante);
       
		return "redirect:/vista";
	}
}
