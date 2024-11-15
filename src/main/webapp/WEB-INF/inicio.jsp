<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="icon" href="./furgoplus.ico" type="image/x-icon">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
	    <link rel='stylesheet'
	        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
	    <link rel='stylesheet'
	        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
	    <main class="mainView">
	        <h1>Conectando Familias con <span id="tes">Transporte Escolar Seguro</span></h1>
	        <p>La plataforma que une a apoderados con conductores confiables para el transporte escolar de sus hijos. </p>
	        <div class="infoBtn">
	        	<form action="/soyapoderado" method="get">
	            	<button type="submit" id="apoderadoBtn">Soy Apoderado</button>
	            </form>
	            <form action="/soyconductor" method="get">
	            	<button type="submit" id="conductorBtn">Soy Conductor</button>
	            </form>
	        </div>	        
	    </main>
	    <container class="infoResumen">
	        <h1>¿Por qué elegirnos?</h1>
	        <div class="cualidadesBox">
	            <div class="box">
	                <div class="icon">
	                    <i class="fi fi-rs-shield"></i>
	                </div>
	                <h2>Seguridad Garantizada</h2>
	                <p>Conductores verificados y monitoreados constantemente para la seguridad de tus hijos.</p>
	            </div>
	            <div class="box">
	                <div class="icon">
	                    <i class="fi fi-rs-marker"></i>
	                </div>
	                <h2>Seguimiendo en Tiempo Real</h2>
	                <p>Monitorea el recorrido de tus hijos en tiempo real a través de nuestra aplicación.</p>
	            </div>
	            <div class="box">
	                <div class="icon">
	                    <i class="fi fi-rr-comment-alt-middle"></i>
	                </div>
	                <h2>Comunicación Directa</h2>
	                <p>Mantén contacto directo con el conductor y recibe notificaciones importantes.</p>
	            </div>
	            <div class="box">
	                <div class="icon">
	                    <i class="fi fi-rr-credit-card"></i>
	                </div>
	                <h2>Pagos Seguros</h2>
	                <p>Realiza pagos mensuales de forma a través de nuestra plataforma.</p>
	            </div>
	        </div>
	    </container>
	    <section class="infoClientes">
	        <div class="paraApoderados">
	            <h1>Para Apoderados</h1>
	            <span><i class="fi fi-rs-star" id="iconoUno"></i> Encuentra conductores calificados </span>
	            <span> <i class="fi fi-rs-calendar" id="iconoDos"></i> Gestiona horarios y notifica ausencias fácilmente</span>
	            <span><i class="fi fi-rs-shield" id="iconoTres"></i> Accede a evaluaciones y referencias de otros apoderados</span>
	        </div>
	        <div class="paraConductores">
	            <h1>Para Conductores</h1>
	            <span><i class="fi fi-rs-user-add" id="iconoCuatro"></i> Aumenta tu cartera de clientes de forma segura</span>
	            <span><i class="fi fi-rs-school-bus" id="iconoCinco"></i> Optimiza tus rutas y maximiza tus ganancias</span>
	            <span><i class="fi fi-rr-credit-card" id="iconoSeis"></i> Recibe pagos puntuales y seguros</span>
	        </div>
	    </section>
	    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>