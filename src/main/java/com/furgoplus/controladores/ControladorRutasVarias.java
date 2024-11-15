package com.furgoplus.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControladorRutasVarias {
	@GetMapping("/")
    public String inicio() {
		return "inicio.jsp";
    }
	
	@GetMapping("/soyapoderado")
    public String infoApoderado() {
		return "infoApoderado.jsp";
    }
	
	@GetMapping("/soyconductor")
    public String infoConductor() {
		return "infoConductor.jsp";
    }
	
	@GetMapping("/opcionregistro")
    public String opcionRegistro() {
		return "opcionRegistro.jsp";
    }
	
	@GetMapping("/faqs")
    public String FAQs() {
		return "faqs.jsp";
    }
	
	@GetMapping("/nosotros")
    public String nosotros() {
		return "nosotros.jsp";
    }
	
	@GetMapping("/contacto")
    public String contacto() {
		return "contacto.jsp";
    }
	
	@GetMapping("/pasosregistro")
    public String pasosRegistro() {
		return "pasosRegistro.jsp";
    }
	
	@GetMapping("/comofunciona")
    public String comoFunciona() {
		return "comoFunciona.jsp";
    }
	
	@GetMapping("/requisitos")
    public String requisitosConductor() {
		return "requisitos.jsp";
    }
	
}
