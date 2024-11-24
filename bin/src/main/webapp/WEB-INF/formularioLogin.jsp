<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		<main class="mainNav">
			<form:form class="col-6" action="/procesa/login" method="POST" modelAttribute="usuarioLogin">
		        <div class="containerMain">
		            <h1>Haz login con tu cuenta</h1>
		            <div class="containerLogin">
		            	<div>
							<form:label class="form-label" path="correoLogin"> Correo: </form:label>
							<form:input class="form-control" path="correoLogin" />
							<form:errors class="alert alert-danger d-block" path="correoLogin" /> 
						</div>
		                <div>
							<form:label class="form-label" path="contraseniaLogin"> Contraseña: </form:label>
							<form:input class="form-control" path="contraseniaLogin" type="password"/>
							<form:errors class="alert alert-danger d-block" path="contraseniaLogin" /> 
						</div>
		             
		                <div class="buttons">
		                    <a href="">¿Olvidó La Contraseña?</a>
		                </div>
		                <button class="btn btn-primary mt-3">
							Iniciar Sesión
						</button>
		                <h3 class="noacc">¿No eres miembro? <a href="">Registrate</a></h3>
		            </div>
		        </div>
	        </form:form>
    	</main>
		
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>