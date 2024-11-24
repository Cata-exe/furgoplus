<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>FurgoPlus</title>
		<link rel="icon" href="./furgoplus.ico" type="image/x-icon">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
		<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
	    
	    <form:form action="/contactos/procesa/agregar" method="POST" modelAttribute="contacto">
			<div class="contacto">
				<main class="formularioContacto">
					<h1>Contactanos</h1>
	            	<p>Le invitamos a contactarse con nosotros completando el formulario a continuación.</p>
					
					<div class="form-group">
						<form:label class="form-label" path="nombreCompleto"> Nombre: </form:label>
						<form:input class="form-control" path="nombreCompleto" />
						<form:errors class="alert alert-danger d-block mt-2" path="nombreCompleto" /> 
					</div>
						
	                <div class="form-group">
						<form:label class="form-label" path="correo"> Correo: </form:label>
						<form:input class="form-control" path="correo" type="email" />
						<form:errors class="alert alert-danger d-block mt-2" path="correo" /> 
					</div>
					
					<div class="form-group">
						<form:label class="form-label" path="numeroCelular"> Número Celular: </form:label>
						<form:input class="form-control" path="numeroCelular" />
						<form:errors class="alert alert-danger d-block mt-2" path="numeroCelular" /> 
					</div>
					
					<div class="form-group">
						<form:label class="form-label" path="mensaje"> Mensaje: </form:label>
						<form:textarea class="form-control" path="mensaje" rows="6" cols="30"/>
						<form:errors class="alert alert-danger d-block mt-2" path="mensaje" /> 
					</div>
					
					<div class="submitBtn">
						<button>Enviar Mensaje</button>
					</div>      
				</main>
			</div>	
		</form:form>
	    	
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	
	</body>
</html>