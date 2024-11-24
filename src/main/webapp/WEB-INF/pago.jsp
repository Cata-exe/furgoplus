<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>FurgoPlus</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/navigation_style.css">
		<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<nav class="navbar">
	        <div class="logo">
	            <h1>Furgo<span id="plus">Plus</span></h1>
	            <p>Transporte Escolar</p>
	        </div>
	        <ul class="nav-links">
	            <li><a href="/">Inicio</a></li>
	            <li><a href="#">Conductores</a></li>
	            <li><a href="#">Mi Perfil</a></li>
	        </ul>
	        <div class="navBtns">
	        	<form action="" method="get">
	            	<button id="loginBtn">Cerrar Sesión</button>
	            </form>
	            <form action="" method="get">
	            	<button id="registroBtn">Editar Perfil</button>
	            </form>
	        </div>
	    </nav>
	    <main class="containerPagoPrincipal">
	        <div class="containerPago">
	            <div class="pagoSuperior">
	                <h1>Contratación de Servicio de Transporte Escolar</h1>
	                <span>Complete los detalles para finalizar la contratación</span>
	                <div class="cardConductor">
	                    <img src="./img/carlos.jpg" alt="Imagen de perfil">
	                    <div class="infoConductor">
	                        <h3>Carlos Martinez</h3>
	                        <span>Hyundai H1 2020 - Capacidad 12 pasajeros</span>
	                        <span>Zona: Concepción, Chile</span>
	                    </div>
	                </div>
	            </div>
	            <div class="pagoMedio">
	                <h2>Detalles del Servicio</h2>
	                <div class="cardInfoPago">
	                    <div class="precio">
	                        <p>Precio Mensual</p>
	                        <h3>$70,000</h3>
	                    </div>
	                    <div class="fecha">
	                        <p>Fecha de Inicio</p>
	                        <h3>1 de Diciembre, 2023</h3>
	                    </div>
	                </div>
	                <h2>Método de Pago</h2>
	                <form action="" class="formPago">
	                    <div class="boxMetods">
	                        <div class="metodoPago">
	                            <input type="radio" id="credito" name="btnMetodoPago">
	                            <label for="credito">Tarjeta de Crédito</label>
	                        </div>
	                        <div class="metodoPago">
	                            <input type="radio" id="debito" name="btnMetodoPago">
	                            <label for="debito">Tarjeta de Débito</label>
	                        </div>
	                        <div class="metodoPago">
	                            <input type="radio" id="transferencia" name="btnMetodoPago">
	                            <label for="transferencia">Transferencia Bancaria</label>
	                        </div>
	                    </div>
	                    <div class="numTarjeta">
	                        <label for="numeroTarjeta">Número de Tarjeta</label>
	                        <input type="text" name="numeroTarjeta" placeholder="1234 5678 9012 3456">
	                    </div>
	                    <div class="apartado">
	                        <div class="expiracion">
	                            <label for="fechaExp">Fecha de Expiración</label>
	                            <input type="text" name="fechaExp" placeholder="MM/AA">
	                        </div>
	                        <div class="boxCvc">
	                            <label for="cvc">CVC</label>
	                            <input type="text" name="cvc" placeholder="123">
	                        </div>
	                    </div>
	                    <div class="terminos">
	                        <label>
	                            <input type="checkbox" checked="checked" name="terms"> Acepto los términos y condiciones del
	                            servicio de transporte escolar
	                        </label>
	                    </div>
	                    <input type="submit" value="Confirmar contratación" class="btnContratar">
	                </form>
	            </div>
	        </div>
	    </main>
	    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>