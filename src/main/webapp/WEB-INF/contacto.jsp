<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>FurgoPlus</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
		<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		<div class="contacto">
	        <main class="formularioContacto">
	            <h1>Contactanos</h1>
	            <p>Le invitamos a contactarse con nosotros completando el formulario a continuación.</p>
	            <div class="info-contacto">
	                <div class="container-contacto">
	                    <label for="nombre">Nombre</label>
	                    <input type="text" id="nombre" required>
	                </div>
	                <div class="container-contacto">
	                    <label for="apellido">Apellido</label>
	                    <input type="text" id="apellido" required>
	                </div>
	            </div>
	            <div class="container-contacto">
	                <label for="correo">Correo</label>
	                <input type="email" id="correo" required>
	            </div>
	            <div class="telefono">
	                <label for="pais">Numero de Teléfono</label>
	                <div class="container-contactor">
	                    <select id="pais" required>
	                        <option value="+56">+56 (Chile)</option>
	                        <option value="+54">+54 (Argentina)</option>
	                        <option value="+55">+55 (Brazil)</option>
	                        <option value="+57">+57 (Colombia)</option>
	                        <option value="+58">+58 (Venezuela)</option>
	                        <option value="+52">+52 (Mexico)</option>
	                    </select>
	                    <input type="tel" id="telefono" placeholder="tel" required>
	                </div>
	            </div>
	            <div class="container-contacto">
	                <label for="mensaje">Mensaje</label>
	                <textarea id="mensaje" required
	                rows="6" cols="30"></textarea>
	            </div>
	            <div class="submitBtn">
	                <button>Enviar Mensaje</button>
	            </div>
	        </main>
	    </div>	
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	
	</body>
</html>