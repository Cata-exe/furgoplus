<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<jsp:include page="/WEB-INF/navigation/nav.jsp">
			<jsp:param name="isUserLoggedIn" value="true" />
		</jsp:include>
	
	
<main class="containerPagoPrincipal">
    <div class="containerPago">
        <div class="pagoSuperior">
            <h1>Contratación de Servicio de Transporte Escolar</h1>
            <span>Complete los detalles para finalizar la contratación</span>
            <div class="cardConductor">
                <!-- Mostrar imagen y datos del conductor -->
                <img src="${chofer.imagen}" alt="Imagen de perfil">
                <div class="infoConductor">
                    <h3>${chofer.nombre}</h3>
                    <span>${vehiculos[0].marca} ${vehiculos[0].modelo} - Capacidad ${vehiculos[0].cantidad} pasajeros</span>
                    <span>Zona: Concepción, Chile</span>
                </div>
            </div>
        </div>
        
        <div class="pagoMedio">
            <h2>Detalles del Servicio</h2>
            <div class="cardInfoPago">
                <div class="precio">
                    <p>Precio Mensual</p>
                    <h3>$70,000</h3>  <!-- Este precio es solo un ejemplo, deberías pasarlo dinámicamente si es necesario -->
                </div>
                <div class="fecha">
                    <p>Fecha de Inicio</p>
                    <h3>01 de Marzo, 2025</h3>  <!-- Igualmente, esto debería ser dinámico si cambia -->
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
                        <input type="checkbox" checked="checked" name="terms"> Acepto los términos y condiciones del servicio de transporte escolar
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