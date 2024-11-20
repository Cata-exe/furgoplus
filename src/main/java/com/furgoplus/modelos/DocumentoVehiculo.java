package com.furgoplus.modelos;

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
@Table(name="documentos_vehiculos")
public class DocumentoVehiculo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "id_vehiculo")
	private Vehiculo vehiculo;
	
	@NotBlank(message = "Por favor proporciona el certificado de la revision tecnica.")
	@Column(name="certificado_revision_tecnica")
	private String certificadoRevisionTecnica;
	
	@NotBlank(message = "Por favor proporciona el permiso de circulacion.")
	@Column(name="permiso_circulacion")
	private String permisoCirculacion;
	
	@NotBlank(message = "Por favor proporciona el seguro de transporte.")
	@Column(name="seguro_transporte")
	private String seguroTransporte;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public DocumentoVehiculo() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Vehiculo getVehiculo() {
		return vehiculo;
	}

	public void setVehiculo(Vehiculo vehiculo) {
		this.vehiculo = vehiculo;
	}

	public String getCertificadoRevisionTecnica() {
		return certificadoRevisionTecnica;
	}

	public void setCertificadoRevisionTecnica(String certificadoRevisionTecnica) {
		this.certificadoRevisionTecnica = certificadoRevisionTecnica;
	}

	public String getPermisoCirculacion() {
		return permisoCirculacion;
	}

	public void setPermisoCirculacion(String permisoCirculacion) {
		this.permisoCirculacion = permisoCirculacion;
	}

	public String getSeguroTransporte() {
		return seguroTransporte;
	}

	public void setSeguroTransporte(String seguroTransporte) {
		this.seguroTransporte = seguroTransporte;
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
