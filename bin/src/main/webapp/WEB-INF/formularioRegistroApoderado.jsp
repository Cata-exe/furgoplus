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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <jsp:include page="/WEB-INF/navigation/nav.jsp" />
    
    <div class="container mt-3">
        <div class="row">
            <h1> Registro </h1>
        </div>
        <div class="row container">
            <form:form class="col-6" action="/procesa/registro/apoderado" method="POST" modelAttribute="usuario">
                <div>
                    <form:label class="form-label" path="nombre"> Nombre: </form:label>
                    <form:input class="form-control" path="nombre" />
                    <form:errors class="alert alert-danger d-block" path="nombre" />
                </div>
                <div>
                    <form:label class="form-label" path="correo"> Correo: </form:label>
                    <form:input class="form-control" path="correo" type="email" />
                    <form:errors class="alert alert-danger d-block" path="correo" />
                </div>
                <div>
                    <form:label class="form-label" path="contrasenia"> Contraseña: </form:label>
                    <form:input class="form-control" path="contrasenia" type="password"/>
                    <form:errors class="alert alert-danger d-block" path="contrasenia" />
                </div>
                <div>
                    <form:label class="form-label" path="confirmacionContrasenia"> Confirmar Contraseña: </form:label>
                    <form:input class="form-control" path="confirmacionContrasenia" type="password"/>
                    <form:errors class="alert alert-danger d-block" path="confirmacionContrasenia" />
                </div>
                <button class="btn btn-primary mt-3">
                    Registrarse
                </button>
                <p class="noacc">¿Ya eres apoderado? <a href="">Inicia Sesión</a></p>
            </form:form>
        </div>
    </div>
    
    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
</body>
</html>
