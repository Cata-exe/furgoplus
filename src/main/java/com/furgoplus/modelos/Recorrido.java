package com.furgoplus.modelos;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name="recorridos")
public class Recorrido {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	
	@OneToMany(mappedBy = "recorrido",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<RecorridoEstablecimiento> recorridosEstablecimientos;
	
	@OneToMany(mappedBy = "recorrido",  cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Reserva> reservas;
	
	@NotBlank(message = "Por favor proporciona la descripcion")
	@Column(length = 1000) 
	private String descripcion;
	
	@NotBlank(message = "Por favor proporciona la descripcion")
	@Column(name = "dias_servicio", length = 1000) 
	private String diasServicio;
	
	@NotBlank(message = "Por favor proporciona la tarifa")
	@Column(precision = 10, scale = 2) 
	private BigDecimal tarifa;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public Recorrido() {}

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

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getDiasServicio() {
		return diasServicio;
	}

	public void setDiasServicio(String diasServicio) {
		this.diasServicio = diasServicio;
	}

	public BigDecimal getTarifa() {
		return tarifa;
	}

	public void setTarifa(BigDecimal tarifa) {
		this.tarifa = tarifa;
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
	
	public List<RecorridoEstablecimiento> getRecorridosEstablecimientos() {
		return recorridosEstablecimientos;
	}

	public void setRecorridosEstablecimientos(List<RecorridoEstablecimiento> recorridosEstablecimientos) {
		this.recorridosEstablecimientos = recorridosEstablecimientos;
	}

	public List<Reserva> getReservas() {
		return reservas;
	}

	public void setReservas(List<Reserva> reservas) {
		this.reservas = reservas;
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
