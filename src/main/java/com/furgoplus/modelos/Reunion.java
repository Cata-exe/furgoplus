package com.furgoplus.modelos;

import java.time.LocalDateTime;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name="reuniones")
public class Reunion {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	
	@ManyToOne
	@JoinColumn(name = "id_apoderado")
	private Apoderado apoderado;
	
	@NotBlank(message = "Por favor proporciona la fecha programada")
	@Column(name="fecha_programada")
	private LocalDateTime fechaProgramada;
	
	@NotBlank(message = "Por favor proporciona la ubicacion.")
	private String ubicacion;
	
	@NotBlank(message = "Por favor proporciona el chofer confirmado.")
	@Column(name="chofer_confirmado")
	private int choferConfirmado;
	
	@NotBlank(message = "Por favor proporciona el apoderado confirmado.")
	@Column(name="apoderado_confirmado")
	private int apoderadoConfirmado;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public Reunion() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Apoderado getApoderado() {
		return apoderado;
	}

	public void setApoderado(Apoderado apoderado) {
		this.apoderado = apoderado;
	}

	public LocalDateTime getFechaProgramada() {
		return fechaProgramada;
	}

	public void setFechaProgramada(LocalDateTime fechaProgramada) {
		this.fechaProgramada = fechaProgramada;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public int getChoferConfirmado() {
		return choferConfirmado;
	}

	public void setChoferConfirmado(int choferConfirmado) {
		this.choferConfirmado = choferConfirmado;
	}

	public int getApoderadoConfirmado() {
		return apoderadoConfirmado;
	}

	public void setApoderadoConfirmado(int apoderadoConfirmado) {
		this.apoderadoConfirmado = apoderadoConfirmado;
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
