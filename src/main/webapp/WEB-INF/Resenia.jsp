<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enviar Reseña</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resenia_style.css">
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
</head>
<body>
    <jsp:include page="/WEB-INF/navigation/nav.jsp" />

    <main class="mainNav">
        <div class="containerMain">
            <h1>Califica a un conductor</h1>
            <div class="containerCalificar">
                <form action="<c:url value='/agregar/calificar'/>" method="post">
                    <div class="divContainer" id="divNombre">
                        <label for="txtNombre">Nombre</label>
                        <input type="text" id="txtNombre" name="nombre">
                    </div>
                    <div class="divContainer" id="divReseña">
                        <label for="txtReseña">Reseña</label>
                        <textarea id="txtReseña" name="resena" rows="10" cols="80"></textarea>
                    </div>
                    <div class="divContainer" id="divEnviar">
                        <div class="rate">
                            <input type="radio" id="star5" name="calificacion" value="5" />
                            <label for="star5" title="5 estrellas">5 estrellas</label>
                            <input type="radio" id="star4" name="calificacion" value="4" />
                            <label for="star4" title="4 estrellas">4 estrellas</label>
                            <input type="radio" id="star3" name="calificacion" value="3" />
                            <label for="star3" title="3 estrellas">3 estrellas</label>
                            <input type="radio" id="star2" name="calificacion" value="2" />
                            <label for="star2" title="2 estrellas">2 estrellas</label>
                            <input type="radio" id="star1" name="calificacion" value="1" />
                            <label for="star1" title="1 estrella">1 estrella</label>
                        </div>
                        <input type="submit" value="Enviar Reseña" id="btnEnviar">
                    </div>
                </form>
            </div>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/navigation/footer.jsp" />
</body>
</html>
