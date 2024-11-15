<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>FurgoPlus</title>
	    <link rel="icon" href="./furgoplus.ico" type="image/x-icon">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio_style.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		
		<main class="mainNav">
	        <div class="nosotrosContainer">
	            <h1>Quiénes Somos</h1>
	            <p>
	                Movilizamos a tus hijos con seguridad, confianza y compromiso, garantizando que lleguen puntuales y en perfecto estado a sus destinos. Nos motiva innovar continuamente para ofrecerte tranquilidad en cada ruta, con un servicio pensado para el bienestar de los más pequeños. Por cada aula, cada hogar y cada momento importante, trabajamos con dedicación y responsabilidad, asegurándonos de que tu familia confíe en nosotros, con la rapidez y seguridad que exige el presente.
	            </p>
	        </div>
	        <div class="team">
	            <div class="info">
	                <h2>Conoce a nuestro equipo</h2>
	                <p>
	                    El equipo que trabaja detrás de esta página está formado por personas dedicadas, 
	                    creativas y con un firme compromiso por mejorar cada aspecto de nuestro servicio de transporte escolar. 
	                </p>
	            </div>
	            <div class="teamImg">
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Camilo Durán">
	                    <div class="memberInfo">
	                        <h3>Camilo Durán</h3>
	                        <p class="role">Lider / Back-End</p>
	                    </div>
	                </div>
	                
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Karla Jim3nez">
	                    <div class="memberInfo">
	                        <h3>Karla Jimenez</h3>
	                        <p class="role">Co-Lider / Back-End / Base De Datos</p>
	                    </div>
	                </div>
	                
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Catalina Hernandez">
	                    <div class="memberInfo">
	                        <h3>Catalina Hernández</h3>
	                        <p class="role">Diseñadora / Front-End</p>
	                    </div>
	                </div>
	                
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Rachell Rosales">
	                    <div class="memberInfo">
	                        <h3>Rachell Rosales</h3>
	                        <p class="role">Front-End Developer</p>
	                    </div>
	                </div>
	                
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Sebastian Cordova">
	                    <div class="memberInfo">
	                        <h3>Sebastián Cordova</h3>
	                        <p class="role">Front-End Developer</p>
	                    </div>
	                </div>
	                
	                <div class="teamMember">
	                    <img src="/vista info chofer/viejito.jpg" alt="Javier Arce">
	                    <div class="memberInfo">
	                        <h3>Javier Arce</h3>
	                        <p class="role">Back-End Developer</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </main>
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	
	</body>
</html>