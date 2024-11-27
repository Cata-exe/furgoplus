package com.furgoplus.controladores;

import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.furgoplus.modelos.Apoderado;
import com.furgoplus.modelos.DocumentoChofer;
import com.furgoplus.modelos.Estudiante;
import com.furgoplus.modelos.RegistroChoferDTO;
import com.furgoplus.modelos.Reunion;
import com.furgoplus.modelos.Rol;
import com.furgoplus.modelos.Usuario;
import com.furgoplus.modelos.UsuarioLogin;
import com.furgoplus.modelos.Vehiculo;
import com.furgoplus.servicios.ServicioApoderados;
import com.furgoplus.servicios.ServicioChoferes;
import com.furgoplus.servicios.ServicioDocumentosChofer;
import com.furgoplus.servicios.ServicioEstudiantes;
import com.furgoplus.servicios.ServicioReuniones;
import com.furgoplus.servicios.ServicioUsuarios;
import com.furgoplus.servicios.ServicioVehiculos;

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
    @Autowired
    private final ServicioVehiculos servicioVehiculos;
    @Autowired
    private final ServicioDocumentosChofer servicioDocumentosChofer;
    @Autowired
    private final ServicioReuniones servicioReuniones;
    @Autowired
    private final ServicioEstudiantes servicioEstudiantes;

	public ControladorUsuarios(ServicioUsuarios servicioUsuarios, ServicioApoderados servicioApoderados,
			ServicioChoferes servicioChoferes, ServicioVehiculos servicioVehiculos,
			ServicioDocumentosChofer servicioDocumentosChofer, ServicioReuniones servicioReuniones,
			ServicioEstudiantes servicioEstudiantes) {
		this.servicioUsuarios = servicioUsuarios;
		this.servicioApoderados = servicioApoderados;
		this.servicioChoferes = servicioChoferes;
		this.servicioVehiculos = servicioVehiculos;
		this.servicioDocumentosChofer = servicioDocumentosChofer;
		this.servicioReuniones = servicioReuniones;
		this.servicioEstudiantes = servicioEstudiantes;
	}

	@GetMapping("/vista")
    public String vistaUsuarios(@RequestParam(value = "filtro", required = false) String filtro, Model model, HttpSession session) {
    	Usuario usuario = (Usuario) session.getAttribute("usuario");

        if (usuario != null && usuario.getRol() != null) {
            if (usuario.getRol() == Rol.apoderado) {
            	List<Usuario> usuarios; 
            	if (filtro != null && !filtro.isEmpty()) {
        	        usuarios = this.servicioUsuarios.buscarChoferesPorNombre(filtro);
        	    } else {
        	    	usuarios = this.servicioUsuarios.obtenerUsuarioChofer(Rol.chofer);
        	    	usuarios.sort(Comparator.comparing(Usuario::getNombre));        	    }
            	List<Estudiante> estudiantes = this.servicioEstudiantes.obtenerTodos();
            	model.addAttribute("usuarios", usuarios);
            	model.addAttribute("estudiantes", estudiantes);
            	model.addAttribute("filtro", filtro);
                return "vistaApoderado.jsp";
            } else if (usuario.getRol() == Rol.chofer) {
            	List<Vehiculo> vehiculos = this.servicioVehiculos.obtenerVehiculosPorUsuario(usuario.getId());
                List<DocumentoChofer> documentosChoferes = this.servicioDocumentosChofer.obtenerDocumentosPorUsuario(usuario.getId());
                List<Reunion> reuniones = this.servicioReuniones.obtenerReunionesPorUsuario(usuario.getId());
                
                model.addAttribute("chofer", usuario);
                model.addAttribute("vehiculos", vehiculos); 
                model.addAttribute("documentosChoferes", documentosChoferes); 
                model.addAttribute("reuniones", reuniones);
                
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
    
    @GetMapping("/logout")
	public String formularioLogout(HttpSession sesion) {
		sesion.invalidate();
		return "redirect:/";
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
	
    @GetMapping("/detalleChofer/{id}")
    public String detalleChofer(@PathVariable Long id, Model model, HttpSession session) {
        // Verificar si el usuario está autenticado
        Long userId = (Long) session.getAttribute("id");
        if (userId == null) {
            return "redirect:/login";
        }
        
        Usuario chofer = this.servicioUsuarios.obtenerUsuarioId(id);
        model.addAttribute("chofer", chofer);

        return "detalleChofer.jsp";
    }
}
    
