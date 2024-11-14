<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>FurgoPlus</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		<container class="instructivo">
            <div class="boxTitulo">
                <h1>Pasos para Registrarse como Conductor</h1>
            </div>
            <div class="boxPasos">
                <div class="lineaPasos">
                    <div class="paso">
                        <div class="numPaso">1</div>
                        <h2>Información Básica</h2>
                        <p>Proporciona tu nombre, apellido, dirección y teléfono de contacto.</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">2</div>
                        <h2>Información del Furgon Escolar</h2>
                        <p>Ingresa los detalles del furgon, como marca, modelo, patente y número de asientos.</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">3</div>
                        <h2>Antecedentes y permisos</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero officia inventore quae ipsa?</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">4</div>
                        <h2>Credenciales de Acceso</h2>
                        <p>Crea una cuenta con tu correo electrónico y una contraseña segura.</p>
                    </div>
                </div>
            </div>
        </container>
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>