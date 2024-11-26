<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>NAV</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/navigation_style.css">
	</head>
	<body>
		<%
		    String isUserLoggedInParam = request.getParameter("isUserLoggedIn");
		    boolean isUserLoggedIn = Boolean.parseBoolean(isUserLoggedInParam);
		%>
		<nav class="navbar">
			<a href="/">
				<div class="logo">
		            <h1>Furgo<span id="plus">Plus</span></h1>
		            <p>Transporte Escolar</p>
		        </div>
			</a>
	        
			
			<%
			    if (!isUserLoggedIn) {
			%>
					<ul class="nav-links">
			            <li><a href="/">Inicio</a></li>
			            <li><a href="#">Conductores</a></li>
			            <li><a href="/nosotros">Nosotros</a></li>
			            <li><a href="/contacto">Contacto</a></li>
			        </ul>
			<%
			    }
			%>
	       
	        <div class="navBtns">
				<%
				    if (isUserLoggedIn) {
				%>
						<form action="/logout" method="get">
			            	<button id="registroBtn">Cerrar sesión</button>
			            </form>
				<%
				    } else {
				%>
			        	<form action="/login" method="get">
			            	<button id="loginBtn">Iniciar Sesión</button>
			            </form>
			            <form action="/opcionregistro" method="get">
			            	<button id="registroBtn">Registrarse</button>
			            </form>
				<%
				    }
				%>
	        </div>
	    </nav>
	</body>
</html>