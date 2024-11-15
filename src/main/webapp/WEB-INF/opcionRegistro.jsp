<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
		<link rel='stylesheet'
	        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
	    <link rel='stylesheet'
	        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		 <jsp:include page="/WEB-INF/navigation/nav.jsp" />
         <main class="selectorRegUsuario">
            <container class="containerSuperior">
                <div class="regView">
                    <div class="boxRegistro">
                        <h1>Elige tu perfil para registrarte</h1>
                    </div>
                    <p>Puedes registrarte como apoderado para contratar servicios de transporte para tu hijo o como conductor para ofrecer tus servicios de transporte escolar en nuestra plataforma.</p>
                </div>
            </container>
            <container class="containerCentrado">
                <div class="opcionesRegistro">
                    <div class="opcionReg">
                        <div>
                            <i class="fi fi-rr-user icon" id="iconApoderado"></i>
                        </div>
                        <h2>Como Apoderado</h2>
                        <p>Contrata un servicio de transporte seguro y confiable para tu hijo. Podrás ver la disponibilidad de furgones en tu zona, revisar las reseñas de otros apoderados, y comunicarte directamente con los conductores.</p>
                        <button class="btnRegistro btnRegApoderado">Registrarme como Apoderado</button>
                    </div>
                    <div class="opcionReg">
                        <div>
                            <i class="fi fi-rs-driver-man icon" id="iconConductor"></i>
                        </div>
                        <h2>Como Conductor</h2>
                        <p>Ofrece un servicio de transporte escolar seguro y confiable. Podrás llegar a más familias en tu zona, recibir reseñas y comunicarte directamente con los apoderados interesados en tus servicios.</p>
                        <button class="btnRegistro btnRegConductor">Registrarme como Conductor</button>
                    </div>
                </div>
            </container>
        </main>
        <jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>