<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FurgoPlus - Registro Chofer</title>
    <link rel="icon" href="./furgoplus.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registro_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <jsp:include page="/WEB-INF/navigation/nav.jsp" />
    
    <div class="container mt-3">
        <div class="row">
            <h1>Registro de Chofer</h1>
        </div>
        <div class="row container">
            <form:form class="col-6" action="/procesa/registro/chofer" method="POST" modelAttribute="registroChoferDTO">
                <div>
                    <form:label class="form-label" path="usuario.nombre">Nombre:</form:label>
                    <form:input class="form-control" path="usuario.nombre"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.nombre"/>
                </div>
                <div>
                    <form:label class="form-label" path="usuario.correo">Correo:</form:label>
                    <form:input class="form-control" path="usuario.correo" type="email"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.correo"/>
                </div>
                <div>
                    <form:label class="form-label" path="usuario.contrasenia">Contraseña:</form:label>
                    <form:input class="form-control" path="usuario.contrasenia" type="password"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.contrasenia"/>
                </div>
                <div>
                    <form:label class="form-label" path="usuario.confirmacionContrasenia">Confirmar Contraseña:</form:label>
                    <form:input class="form-control" path="usuario.confirmacionContrasenia" type="password"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.confirmacionContrasenia"/>
                </div>

                <div>
                    <form:label class="form-label" path="documentoChofer.carnetIdentidad">Carnet de Identidad:</form:label>
                    <form:input class="form-control" path="documentoChofer.carnetIdentidad"/>
                    <form:errors class="alert alert-danger d-block" path="documentoChofer.carnetIdentidad"/>
                </div>
                <div>
                    <form:label class="form-label" path="documentoChofer.certificadoRenastre">Certificado de Renastre:</form:label>
                    <form:input class="form-control" path="documentoChofer.certificadoRenastre"/>
                    <form:errors class="alert alert-danger d-block" path="documentoChofer.certificadoRenastre"/>
                </div>
                <div>
                    <form:label class="form-label" path="documentoChofer.certificadoRegistroPenal">Certificado de Registro Penal:</form:label>
                    <form:input class="form-control" path="documentoChofer.certificadoRegistroPenal"/>
                    <form:errors class="alert alert-danger d-block" path="documentoChofer.certificadoRegistroPenal"/>
                </div>
                <div>
                    <form:label class="form-label" path="documentoChofer.licenciaConducir">Licencia de Conducir:</form:label>
                    <form:input class="form-control" path="documentoChofer.licenciaConducir"/>
                    <form:errors class="alert alert-danger d-block" path="documentoChofer.licenciaConducir"/>
                </div>

                <button class="btn btn-primary mt-3">Registrarse</button>
                <p class="noacc">¿Ya eres chofer? <a href="">Inicia Sesión</a></p>
            </form:form>
        </div>
    </div>

    <jsp:include page="/WEB-INF/navigation/footer.jsp"/>
</body>
</html>