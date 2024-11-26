<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="icon" href="./furgoplus.ico" type="image/x-icon">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/apoderado_style.css">	
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		
		
		<div class="container">
			<h1>Bienvenido de vuelta apoderado <span>${nombre}</span></h1>
			<div class="row">
				<h1> Choferes </h1>
			</div>
			<div class="row"> 
				<input type="text" id="searchBar" placeholder="Buscar chofer...">
				<button id="searchButton">Buscar</button>
			</div>
			<div class="row">
				<c:forEach items="${usuarios}" var="usuario">
				<div class="col-3 tarjeta-usuario">
					<h3> ${usuario.nombre} </h3>
					<img class="imagen" src="${usuario.imagen}" alt="Imagen ${usuario.nombre}"/>

					<form action="#" method="GET">
						<button class="btn btn-success">
							Detalle
						</button>
					</form>
				</div>
				</c:forEach>
			</div>
		</div>
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
		
	</body>
</html>