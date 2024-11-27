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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registro_style.css">
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp"/>
		<main class="containerEstudiante">
		    <div class="formularioEstudiante">
		        <div class="tituloEst">
		            <h1>Agregar Vehiculo</h1>
		        </div>
		        <div class="inputsEstudiante">
		            <form:form class="col-6" action="/procesa/registro/vehiculo" method="POST" modelAttribute="vehiculo">
		                <div>
		                    <form:label class="form-label" path="marca"> Marca: </form:label>
		                    <form:input class="form-control" path="marca" />
		                    <form:errors class="alert alert-danger d-block" path="marca" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="modelo"> Modelo: </form:label>
		                    <form:input class="form-control" path="modelo" />
		                    <form:errors class="alert alert-danger d-block" path="modelo" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="patente"> Patente: </form:label>
		                    <form:input class="form-control" path="patente" />
		                    <form:errors class="alert alert-danger d-block" path="patente" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="anio"> Año: </form:label>
		                    <form:input class="form-control" path="anio" type="number" />
		                    <form:errors class="alert alert-danger d-block" path="anio" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="cantidad"> Capacidad: </form:label>
		                    <form:input class="form-control" path="cantidad"/>
		                    <form:errors class="alert alert-danger d-block" path="cantidad" />
		                </div>
		
		                <button class="btnAgregar">Agregar</button>
		            </form:form>
		        </div>
		    </div>
		</main>
		<jsp:include page="/WEB-INF/navigation/footer.jsp"/>
	
	</body>
</html>