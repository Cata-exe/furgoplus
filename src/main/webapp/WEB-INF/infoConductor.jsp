<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/info_style.css">
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
	    <main>
	        <h1>Conductores</h1>
	        <p>FurgoPlus te permite expandir tu negocio de furgones escolares de manera fácil y eficiente. Regístrate y gestiona tus viajes, rutas y horarios desde un solo panel, conectando rápidamente con apoderados que necesitan un servicio seguro y confiable. ¡Únete hoy a FurgoPlus y optimiza tu tiempo, aumenta tus ingresos y garantiza la seguridad de los niños en cada viaje!</p>
	        <div class="registroApoderado">
	            <button>Registro Conductor</button>
	        </div>
	    </main>
	    <section>
	        <h1>Testimonios de nuestros conductores</h1>
	        <div class="review">
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/luis.jpg" alt="imagen de Luis A. Martínez">
	                <p>
	                    "FurgoPlus ha hecho que mi trabajo sea mucho más organizado. La plataforma es fácil de usar y me ha conectado con más apoderados. ¡Muy recomendable!"
	                </p>
	                <p>—Luis A. Martínez, Conductor de furgones escolaress</p>
	            </div>
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/carla.jpg" alt="imagen de Carla M. González">
	                <p>
	                    "La gestión de rutas y pagos es mucho más sencilla desde que uso FurgoPlus. Además, los apoderados confían más al ver mi perfil y recibir actualizaciones en tiempo real."
	                </p>
	                <p>—Carla M. González, Conductora de furgones escolares</p>
	            </div>
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/ricardo.jpg" alt="imagen de Ricardo J. Sánchez">
	                <p>
	                    "FurgoPlus ha aumentado mis viajes y facilita la conexión con apoderados. El seguimiento en tiempo real da tranquilidad a los padres. ¡Muy útil!"
	                </p>
	                <p>—Ricardo J. Sánchez, Conductor de transporte escolar</p>
	            </div>
	        </div>
	    </section>
	    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>