<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/perfil_conductor_style.css">
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
</head>
<body>
	<jsp:include page="/WEB-INF/navigation/nav.jsp">
			<jsp:param name="isUserLoggedIn" value="true" />
		</jsp:include>
    <main>
        <div class="infoPersonal">
            <div class="chofer">
                <h2>Información Personal</h2>
                <img src="${usuario.imagen}" alt="imagen de ${usuario.nombre}">
                <div class="aside">
                    <h1>${usuario.nombre}</h1>
                    <p>ID: ${usuario.id}</p>
                    <div class="estrellas">
                        <p>★</p>
                        <span>4.8 (120 reseñas)</span>
                    </div>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rs-marker"></i>
                    <span>Concepción, Chile</span>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rr-envelope"></i>
                    <span>${usuario.correo}</span>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rs-calendar"></i>
                    <span>Miembro desde: ${usuario.fechaCreacion}</span>
                </div>
            </div>
            
            <div class="vehiculo">
			    <h2>Información del Furgón</h2>
			    <div class="infoFurgon">
			        <c:forEach var="vehiculo" items="${vehiculos}">
			            <h3>Vehículo</h3>
			            <p>${vehiculo.marca} ${vehiculo.modelo} ${vehiculo.anio}</p>
			            <h3>Patente</h3>
			            <p>${vehiculo.patente}</p>
			            <h3>Capacidad</h3>
			            <p>${vehiculo.cantidad} Pasajeros</p>
			            <h3>Características</h3>
			            <div class="caracteristicasVehiculo">
			                <span>Aire acondicionado</span>
			                <span>Cinturones de seguridad</span>
			                <span>GPS</span>
			                <span>Cámara de seguridad</span>
			            </div>
			        </c:forEach>
			    </div>
			    <form action="/registrofurgon" method="get">
	            	<button id="vehiculoBtn">Agregar Vehiculo</button>
	            </form>
			</div>
            
        </div>
        <div class="documentos">
		    <h2>Certificaciones y Documentos</h2>
		    <c:forEach var="documento" items="${documentosChoferes}">
		        <div class="iconoEscudo">
		            <i class="fi fi-rs-shield"></i>
		            <span>${documento.carnetIdentidad}</span>
		        </div>
		        <div class="iconoEscudo">
		            <i class="fi fi-rs-shield"></i>
		            <span>${documento.certificadoRenastre}</span>
		        </div>
		        <div class="iconoEscudo">
		            <i class="fi fi-rs-shield"></i>
		            <span>${documento.certificadoRegistroPenal}</span>
		        </div>
		        <div class="iconoEscudo">
		            <i class="fi fi-rs-shield"></i>
		            <span>${documento.licenciaConducir}</span>
		        </div>
		    </c:forEach>
		</div>
        <div class="rutas">
            <h2>Rutas y Horarios</h2>
            <div class="rutaUno">
                <h3>Ruta mañana</h3>
                <p>Concepción - San Pedro de la Paz - Chiguayante</p>
                <p>Horario: 6:30 AM - 8:00 AM</p>
            </div>
            <div class="rutaDos">
                <h3>Ruta Tarde</h3>
                <p>Chiguayante - San Pedro de la Paz - Concepción</p>
                <p>Horario: 3:30 PM - 5:00 PM</p>
            </div>
        </div>
        <div class="reuniones">
		    <h2>Tus Próximas Reuniones</h2>
		    <c:forEach var="reunion" items="${reuniones}">
		        <div class="contedorReunion">
		            <div class="reunionesBox">
		                <div class="reunionHeader">
		                    <div class="avatar">
		                        <img src="./img/claudia.jpg" alt="imagen de claudia">
		                    </div>
		                    <div>
		                        <h3>${reunion.apoderado.usuario.nombre}</h3>
		                        <p>Reunión ${reunion.choferConfirmado == 1 ? 'Confirmada' : 'Pendiente'}</p>
		                    </div>
		                </div>
		                <ul class="reunionDetalles">
		                    <li><i class="fi fi-rs-calendar"></i> ${reunion.fechaProgramada}</li>
		                    <li><i class="fi fi-rr-clock-three"></i> ${reunion.fechaProgramada}</li>
		                    <li><i class="fi fi-rs-marker"></i> ${reunion.ubicacion}</li>
		                </ul>
		                <button class="btnConfirmar">Confirmar Reunión</button>
		            </div>
		        </div>
		    </c:forEach>
		</div>
        <div class="pasajeros">
		    <h2>Lista de Pasajeros</h2>
		    <table class="estudiantes">
		        <thead>
		            <tr>
		                <th>Nombre</th>
		                <th>Edad</th>
		                <th>Escuela</th>
		                <th>Dirección</th>
		                <th>Apoderado</th>
		                <th>Teléfono Apoderado</th>
		                <th>Acción</th>
		                
		            </tr>
		        </thead>
		        <tbody>
		        	<c:if test="${empty estudiantes}">
				        <p>No hay estudiantes a cargo.</p>
				    </c:if>
		            <!-- Iterando sobre los pasajeros desde la base de datos -->
		            <c:forEach var="estudiante" items="${estudiantes}">
		                <tr>
		                    <td>${estudiante.nombre}</td>
		                    <td>${estudiante.edad}</td>
		                    <td>${estudiante.establecimiento.nombre}</td>
		                    <td>${estudiante.direccion}</td>
		                    <td>${estudiante.apoderado.usuario.nombre}</td>
		                    <td>${estudiante.apoderado.usuario.celular}</td>
		                    <td><a href="#">Dar de baja</a></td>
		                </tr>
		            </c:forEach>
		        </tbody>
		    </table>
		</div>
        <div class="review">
            <h2>Reseñas Recientes</h2>
            <div class="valoraciones">
                <span class="estrellaReview">★★★★★</span>
                <span>Hace 3 dias</span>
            </div>
            <p>"Excelente servicio. Juan es muy puntual y responsable. Los niños se sienten seguros con él."</p>
            <p>- María G., madre de Sofía</p>

            <!--de nuevo poquito relleno para ayudar con el tema de los tamaños y que no se bugee despues-->

            <div class="valoraciones">
                <span class="estrellaReview">★★★★</span>
                <span>Hace 1 semanas</span>
            </div>
            <p>"Muy buen servicio. Juan es puntual y muy responsable. Los niños se sienten muy seguros con él."</p>
            <p>- Carlos M., padre de Valentina</p>

            <div class="valoraciones">
                <span class="estrellaReview">★★★★★</span>
                <span>Hace 3 semanas</span>
            </div>
            <p>"Excelente atención. Juan es siempre puntual y muy profesional. Los niños disfrutan mucho del viaje."</p>
            <p>- Laura R., madre de Mateo</p>

            <!--hasta aca :3-->
        </div>
    </main>
    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
</body>
</html>