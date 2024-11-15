<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FurgoPlus</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
        <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
	    <link rel='stylesheet'
	        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		<main class="requisitos">
	        <h1>Requisitos para nuestros <span>conductores</span></h1>
	        <p>Conoce los requisitos y la documentación necesaria para ser conductor de furgones escolares en FurgoPlus</p>
	        <p>Requisitos en chile</p>
	    </main>
	    <div class="infoRequisitos">
	        <h1>Requisitos Fundamentales</h1>
	        <div class="requisitoBox">
	            <div class="containerRequisito">
	                <div class="icon">
	                    <i class="fi fi-rs-shield"></i>
	                </div>
	                <h2>Licencia Profesional</h2>
	                <p>Poseer licencia de conducir Clase A3 vigente, especifica para el transporte de escolares</p>
	            </div>
	            <div class="containerRequisito">
	                <div class="icon">
	                    <i class="fi fi-rr-add-document"></i>
	                </div>
	                <h2>Antecedentes Penales</h2>
	                <p>Certificado de antecedentes sin anotaciones por delitos que lo inhabiliten para trabajar con menores</p>
	            </div>
	            <div class="containerRequisito">
	                <div class="icon">
	                    <i class="fi fi-rr-graduation-cap"></i>
	                </div>
	                <h2>Capacitación</h2>
	                <p>Curso de capacitación en transporte escolar aprobado y certificado por una entidad autorizada</p>
	            </div>
	            <div class="containerRequisito">
	                <div class="icon">
	                    <i class="fi fi-rs-clipboard-check"></i>
	                </div>
	                <h2>Documentación</h2>
	                <p>Inscripción en el Registro Nacional de Servicios de Transporte Remunerado de Escolares</p>
	            </div>
	        </div>
	    </div>
	
	    <section class="requisitosConductores">
	        <div class="paraConductores">
	            <h1>Para Conductores</h1>
	            <span><i class="fi fi-rs-shield" id="iconoUno"></i> Edad mínima de 21 años </span>
	            <span><i class="fi fi-rs-shield" id="iconoDos"></i> Experiencia mínima de 2 años como conductor</span>
	            <span><i class="fi fi-rs-shield" id="iconoTres"></i> Exámenes médicos vigentes</span>
	        </div>
	        <div class="paraVehiculos">
	            <h1>Para el Vehículo</h1>
	            <span><i class="fi fi-rs-shield" id="iconoCuatro"></i> Antigüedad máxima de 12 años</span>
	            <span><i class="fi fi-rs-shield" id="iconoCinco"></i> Revisión técnica especial vigente</span>
	            <span><i class="fi fi-rs-shield" id="iconoSeis"></i> Cinturones de seguridad para todos los asientos</span>
	            <span><i class="fi fi-rs-shield" id="iconoSiete"></i> Letrero "ESCOLARES" visible</span>
	        </div>
	    </section>
	    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>