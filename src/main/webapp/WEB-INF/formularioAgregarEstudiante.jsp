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
		            <h1>Agregar Estudiante</h1>
		        </div>
		        <div class="inputsEstudiante">
		            <form:form class="col-6" action="/procesa/registro/estudiante" method="POST" modelAttribute="estudiante">
		                <div>
		                    <form:label class="form-label" path="nombre"> Nombre Completo: </form:label>
		                    <form:input class="form-control" path="nombre" />
		                    <form:errors class="alert alert-danger d-block" path="nombre" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="direccion"> Dirección: </form:label>
		                    <form:input class="form-control" path="direccion" />
		                    <form:errors class="alert alert-danger d-block" path="direccion" />
		                </div>
		                <div>
		                    <form:label class="form-label" path="edad"> Edad: </form:label>
		                    <form:input class="form-control" path="edad" type="number" />
		                    <form:errors class="alert alert-danger d-block" path="edad" />
		                </div>
		                <div>
		                    <label class="form-label" for="establecimiento">Establecimiento:</label>
		                    <select class="form-control" name="establecimiento.id" id="establecimiento">
		                        <option value="">Seleccione un Establecimiento</option>
		                        <c:forEach var="establecimiento" items="${establecimientos}">
		                            <option value="${establecimiento.id}">${establecimiento.nombre}</option>
		                        </c:forEach>
		                    </select>
		                    <form:errors class="alert alert-danger d-block" path="establecimiento" />
		                </div>
		
		                <button class="btnAgregar">Agregar</button>
		            </form:form>
		        </div>
		    </div>
		</main>
		<jsp:include page="/WEB-INF/navigation/footer.jsp"/>
	
	</body>
</html>