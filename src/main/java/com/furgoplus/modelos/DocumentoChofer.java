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
@Table(name="documentos_choferes")
public class DocumentoChofer {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	
	@NotBlank(message = "Por favor proporciona el carnet de identidad.")
	@Column(name="carnet_identidad")
	private String carnetIdentidad;
	
	@NotBlank(message = "Por favor proporciona el certificado de renastre.")
	@Column(name="certificado_renastre")
	private String certificadoRenastre;
	
	@NotBlank(message = "Por favor proporciona el certificado de registro penal.")
	@Column(name="certificado_registro_penal")
	private String certificadoRegistroPenal;
	
	@NotBlank(message = "Por favor proporciona la licencia de conducir.")
	@Column(name="licencia_conducir")
	private String licenciaConducir;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public DocumentoChofer() {}

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

	public String getCarnetIdentidad() {
		return carnetIdentidad;
	}

	public void setCarnetIdentidad(String carnetIdentidad) {
		this.carnetIdentidad = carnetIdentidad;
	}

	public String getCertificadoRenastre() {
		return certificadoRenastre;
	}

	public void setCertificadoRenastre(String certificadoRenastre) {
		this.certificadoRenastre = certificadoRenastre;
	}

	public String getCertificadoRegistroPenal() {
		return certificadoRegistroPenal;
	}

	public void setCertificadoRegistroPenal(String certificadoRegistroPenal) {
		this.certificadoRegistroPenal = certificadoRegistroPenal;
	}

	public String getLicenciaConducir() {
		return licenciaConducir;
	}

	public void setLicenciaConducir(String licenciaConducir) {
		this.licenciaConducir = licenciaConducir;
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
