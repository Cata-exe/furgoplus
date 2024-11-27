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
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
</head>
<body>
    <jsp:include page="/WEB-INF/navigation/nav.jsp" />
    
    <div class="formularioRegistro" id="formularioChofer">
        <div class="row">
            <h1>Registro de Conductor</h1>
        </div>
        <div class="inputsRegistro">
            <form:form class="col-6" action="/procesa/registro/chofer" method="POST" modelAttribute="registroChoferDTO">
                <div>
                    <form:label class="form-label" path="usuario.nombre">Nombre Completo:</form:label>
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
                    <form:label class="form-label" path="usuario.imagen">Imagen:</form:label>
                    <form:input class="form-control" path="usuario.imagen"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.imagen"/>
                </div>
                <div>
                    <form:label class="form-label" path="usuario.celular"> Celular: </form:label>
                    <form:input class="form-control" path="usuario.celular"/>
                    <form:errors class="alert alert-danger d-block" path="usuario.celular" />
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

                <button class="btnRegistrarse">Registrarse</button>
                <p class="noacc">¿Ya eres conductor? <a href="/login">Inicia Sesión</a></p>
            </form:form>
        </div>
    </div>

    <jsp:include page="/WEB-INF/navigation/footer.jsp"/>
</body>
</html>
