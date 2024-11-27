<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Info Chofer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/detalle_chofer_style.css">
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
</head>
<body>

	<jsp:include page="/WEB-INF/navigation/nav.jsp">
		<jsp:param name="isUserLoggedIn" value="true" />
	</jsp:include>

    <main class="mainDiv">  
        <div class="infoContainer">
          <div class="containerChofer">
            <h1>Información Chofer</h1>
            <div class="choferFlexContainer">
              <div class="containerInfo">
                <h2>Nombre Chofer</h2>
                <p>${chofer.nombre}</p>
                <h2>Establecimientos</h2>
                <p>Liceo Bicentenario, Colegio Las Quintas, Jardín Rositas</p>
                <h2>Cupos</h2>
                <c:forEach var="vehiculo" items="${chofer.vehiculos}">
                	<p>${vehiculo.cantidad}</p>
                </c:forEach>
                <div class="btnInfo">
                  <form action="/calificar" method="GET">
                  	<button class="btn btn-success">
						Recomendar
					</button>
                  </form>
                  
                  <form action="/contratar" method="GET">
                  	<button class="btn btn-success">
						Contratar
					</button>
                  </form>
                  
                </div>
              </div>
              <div class="containerImg">
                <img src="${chofer.imagen}" alt="Foto del chofer">
              </div>
            </div>
          </div>
          
          <div class="containerFurgon">
            <h1>Información Vehiculo</h1>
            <c:forEach var="vehiculo" items="${chofer.vehiculos}">
	            <div class="containerInfoFurgon">
	            	<h2>Marca</h2>
	                <p>${vehiculo.marca}</p>
	                <h2>Modelo</h2>
	                <p>${vehiculo.modelo}</p>
	                <h2>Patente</h2>
	                <p>${vehiculo.patente}</p>
	                <h2>Capacidad</h2>
	                <p>${vehiculo.cantidad} Asientos</p>
	                <h2>Información Adicional</h2>
	                <p>Furgón con aire acondicionado, asientos bien acolchados, etc etc etc.</p>
	            </div>
            </c:forEach>
            
          </div>
        </div>
      </main>
	<jsp:include page="/WEB-INF/navigation/footer.jsp" />
</body>
</html>