package com.furgoplus.modelos;

import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name="usuarios")
public class Usuario {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Vehiculo> vehiculos;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<DocumentoChofer> documentosChoferes;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Apoderado> apoderados;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Reunion> reuniones;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Comentario> comentarios;
	
	@OneToMany(mappedBy = "usuario",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Recorrido> recorridos;
	
	@NotBlank(message = "Por favor proporciona tu nombre.")
	private String nombre;
	
	@NotBlank(message = "Por favor proporciona el correo.")
    @Email(message="Por favor proporciona un correo válido.")
	@Column(unique = true)
	private String correo;
	
	@NotBlank(message = "Por favor proporciona el celular")
	private String celular;
	
	@NotBlank(message = "Por favor proporciona la contraseña.")
	private String contrasenia;
	
	@Transient
	@NotBlank(message = "Por favor proporciona la confirmación de su contraseña.")
	private String confirmacionContrasenia;
	
	private String imagen;
	
	@Enumerated(EnumType.STRING) 
	private Rol rol;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public Usuario() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public String getConfirmacionContrasenia() {
		return confirmacionContrasenia;
	}

	public void setConfirmacionContrasenia(String confirmacionContrasenia) {
		this.confirmacionContrasenia = confirmacionContrasenia;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaActualizacion() {
		return fechaActualizacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}
	
	public List<Vehiculo> getVehiculos() {
		return vehiculos;
	}

	public void setVehiculos(List<Vehiculo> vehiculos) {
		this.vehiculos = vehiculos;
	}

	public List<DocumentoChofer> getDocumentosChoferes() {
		return documentosChoferes;
	}

	public void setDocumentosChoferes(List<DocumentoChofer> documentosChoferes) {
		this.documentosChoferes = documentosChoferes;
	}

	public List<Apoderado> getApoderados() {
		return apoderados;
	}

	public void setApoderados(List<Apoderado> apoderados) {
		this.apoderados = apoderados;
	}

	public List<Reunion> getReuniones() {
		return reuniones;
	}

	public void setReuniones(List<Reunion> reuniones) {
		this.reuniones = reuniones;
	}

	public List<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public List<Recorrido> getRecorridos() {
		return recorridos;
	}

	public void setRecorridos(List<Recorrido> recorridos) {
		this.recorridos = recorridos;
	}

	@PrePersist
	protected void onCreate() {
		this.fechaCreacion = new Date();
		this.fechaActualizacion = this.fechaCreacion;
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.fechaActualizacion = new Date();
	}
}
