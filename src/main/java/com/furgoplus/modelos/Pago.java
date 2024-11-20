package com.furgoplus.modelos;

import java.math.BigDecimal;
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
@Table(name="pagos")
public class Pago {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "id_reserva")
	private Reserva reserva;
	
	@NotBlank(message = "Por favor proporciona el monto total")
	@Column(name = "monto_total", precision = 10, scale = 2) 
	private BigDecimal montoTotal;
	
	@NotBlank(message = "Por favor proporciona el monto de la comision")
	@Column(name = "monto_comision", precision = 10, scale = 2) 
	private BigDecimal montoComision;
	
	@NotBlank(message = "Por favor proporciona el monto chofer")
	@Column(name = "monto_chofer", precision = 10, scale = 2) 
	private BigDecimal montoChofer;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	public Pago() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Reserva getReserva() {
		return reserva;
	}

	public void setReserva(Reserva reserva) {
		this.reserva = reserva;
	}

	public BigDecimal getMontoTotal() {
		return montoTotal;
	}

	public void setMontoTotal(BigDecimal montoTotal) {
		this.montoTotal = montoTotal;
	}

	public BigDecimal getMontoComision() {
		return montoComision;
	}

	public void setMontoComision(BigDecimal montoComision) {
		this.montoComision = montoComision;
	}

	public BigDecimal getMontoChofer() {
		return montoChofer;
	}

	public void setMontoChofer(BigDecimal montoChofer) {
		this.montoChofer = montoChofer;
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
