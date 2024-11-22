package com.furgoplus.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.furgoplus.modelos.Apoderado;
import com.furgoplus.modelos.DocumentoChofer;
import com.furgoplus.modelos.RegistroChoferDTO;
import com.furgoplus.modelos.Rol;
import com.furgoplus.modelos.Usuario;
import com.furgoplus.modelos.UsuarioLogin;
import com.furgoplus.servicios.ServicioApoderados;
import com.furgoplus.servicios.ServicioChoferes;
import com.furgoplus.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorUsuarios {
	@Autowired
    private final ServicioUsuarios servicioUsuarios;
    @Autowired
    private final ServicioApoderados servicioApoderados;
    @Autowired
    private final ServicioChoferes servicioChoferes;

    public ControladorUsuarios(ServicioUsuarios servicioUsuarios, ServicioApoderados servicioApoderados, ServicioChoferes servicioChoferes) {
        this.servicioUsuarios = servicioUsuarios;
        this.servicioApoderados = servicioApoderados;
        this.servicioChoferes = servicioChoferes;
    }
    
    @GetMapping("/vista")
    public String vistaUsuarios(HttpSession session) {
    	Usuario usuario = (Usuario) session.getAttribute("usuario");
    	System.out.println(usuario);

        if (usuario != null && usuario.getRol() != null) {
            if (usuario.getRol() == Rol.apoderado) {
                return "vistaApoderado.jsp";
            } else if (usuario.getRol() == Rol.chofer) {
                return "vistaChofer.jsp";
            }
        }

        return "redirect:/login";
    }
	
	@GetMapping("/registroapoderado")
    public String formularioRegistroApoderado(@ModelAttribute Usuario usuario, Model model) {
		model.addAttribute("usuario", usuario);
		return "formularioRegistroApoderado.jsp";
    }
	
	@PostMapping("/procesa/registro/apoderado")
    public String registrarUsuarioApoderado(@Valid @ModelAttribute Usuario usuario, BindingResult validation, HttpSession session) {
        validation = this.servicioUsuarios.validarRegistro(validation, usuario);
        if (validation.hasErrors()) {
            return "formularioRegistroApoderado.jsp";
        }
        
        usuario.setRol(Rol.apoderado);  

        Usuario usuarioGuardado = servicioUsuarios.agregarUsuario(usuario);

        Apoderado apoderado = new Apoderado();
        apoderado.setUsuario(usuarioGuardado);
        servicioApoderados.guardarApoderado(apoderado);

        session.setAttribute("id", usuarioGuardado.getId());
        session.setAttribute("nombre", usuarioGuardado.getNombre());

        return "redirect:/";
    }
	
	@GetMapping("/registrochofer")
    public String formularioRegistroChofer(@ModelAttribute RegistroChoferDTO registroChoferDTO, Model model) {
        model.addAttribute("registroChoferDTO", registroChoferDTO);
        return "formularioRegistroChofer.jsp";
    }

    @PostMapping("/procesa/registro/chofer")
    public String registrarUsuarioChofer(@Valid @ModelAttribute RegistroChoferDTO registroChoferDTO, BindingResult validation, HttpSession session) {
        validation = this.servicioUsuarios.validarRegistro(validation, registroChoferDTO.getUsuario());
        if (validation.hasErrors()) {
            return "formularioRegistroChofer.jsp";
        }

        registroChoferDTO.getUsuario().setRol(Rol.chofer);

        Usuario usuarioGuardado = servicioUsuarios.agregarUsuario(registroChoferDTO.getUsuario());

        DocumentoChofer documentoChofer = registroChoferDTO.getDocumentoChofer();
        documentoChofer.setUsuario(usuarioGuardado);
        servicioChoferes.guardarDocumentosChofer(documentoChofer);

        session.setAttribute("id", usuarioGuardado.getId());
        session.setAttribute("nombre", usuarioGuardado.getNombre());

        return "redirect:/";
    }
    
    @GetMapping("/login")
    public String formularioLogin(Model model, @ModelAttribute UsuarioLogin usuarioLogin) {
		model.addAttribute("usuarioLogin", usuarioLogin);
		return "formularioLogin.jsp";
    }
    
    @PostMapping("/procesa/login")
    public String loginUsuario(@Valid @ModelAttribute UsuarioLogin usuarioLogin, BindingResult validation, HttpSession session, Model model) {
        validation = this.servicioUsuarios.validarLogin(validation, usuarioLogin);
        if(validation.hasErrors()) {
            return "formularioLogin.jsp";
        }
        Usuario usuario = this.servicioUsuarios.obtenerUsuarioParaLogin(usuarioLogin.getCorreoLogin());
        session.setAttribute("usuario", usuario);
        session.setAttribute("id", usuario.getId());
        session.setAttribute("nombre", usuario.getNombre());
        return "redirect:/vista";
    }
	
	
}
