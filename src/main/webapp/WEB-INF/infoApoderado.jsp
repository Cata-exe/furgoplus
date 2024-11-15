<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="icon" href="./furgoplus.ico" type="image/x-icon">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/info_style.css">
	    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-brands/css/uicons-brands.css'>
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
	    <main>
	        <h1>Apoderados</h1>
	        <p>En FurgoPlus entendemos lo crucial que es para ti la seguridad de tu hijo durante el transporte escolar. Por eso, ofrecemos un servicio confiable con seguimiento en tiempo real, garantizando su traslado en condiciones óptimas. Al registrarte, tendrás acceso inmediato a toda la información y el control que necesitas para estar tranquilo. ¡Elige FurgoPlus y brinda lo mejor en seguridad y comodidad para tu hijo!</p>
	        <div class="registroApoderado">
	            <button>Registro Apoderado</button>
	        </div>
	    </main>
	    <section>
	        <h1>Testimonios de nuestros usuarios</h1>
	        <div class="review">
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/maria.jpg" alt="imagen de Maria González">
	                <p>
	                    "Desde que uso FurgoPlus, me siento más tranquila. El seguimiento en tiempo real y los conductores responsables me dan mucha seguridad. ¡Recomendado!"
	                </p>
	                <p>— María Fernanda González, madre de Sofía, 6° Básico</p>
	            </div>
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/carlos.jpg" alt="imagen de Carlos Diaz">
	                <p>
	                    "El servicio es excelente, especialmente para mi hijo con necesidades especiales. Los conductores son muy atentos, y el seguimiento en vivo me da paz."
	                </p>
	                <p>— Carlos Díaz, padre de Tomás, 1° Básico</p>
	            </div>
	            <div class="containerReview">
	                <img class="apoderadosReview" src="./img/claudia.jpg" alt="imagen de Claudia Rojas">
	                <p>
	                    "La puntualidad y seguridad son lo que más valoro. Mi hijo siempre llega a tiempo y yo puedo seguir su recorrido. Es un servicio muy confiable."
	                </p>
	                <p>— Claudia Rojas, madre de Javier, 2° Medio</p>
	            </div>
	        </div>
	    </section>
    	<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>