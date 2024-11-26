<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <p>Mario Fernandez Montes</p>
                <h2>Establecimientos</h2>
                <p>Liceo Bicentenario, Colegio Las Quintas, Jardín Rositas</p>
                <h2>Cupos</h2>
                <p>Ocho Asientos</p>
                <div class="btnInfo">
                  <input type="button" value="Recomendar">
                  <input type="button" value="Contratar">
                </div>
              </div>
              <div class="containerImg">
                <img src="/img/viejito.jpg" alt="Foto del chofer">
              </div>
            </div>
          </div>
          
          <div class="containerFurgon">
            <h1>Información Vehiculo</h1>
            <div class="containerInfoFurgon">
                <h2>Modelo Vehiculo</h2>
                <p>Número Patente</p>
                <h2>Capacidad</h2>
                <p>18 Asientos</p>
                <h2>Información Adicional</h2>
                <p>Furgón con aire acondicionado, asientos bien acolchados, etc etc etc.</p>
              </div>
            
          </div>
        </div>
      </main>
	<jsp:include page="/WEB-INF/navigation/footer.jsp" />
</body>
</html>