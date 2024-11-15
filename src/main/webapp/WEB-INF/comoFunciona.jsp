<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<container class="instructivo">
            <div class="boxTitulo">
                <h1>Cómo Funciona</h1>
            </div>
            <div class="boxPasos">
                <div class="lineaPasos">
                    <div class="paso">
                        <div class="numPaso">1</div>
                        <h2>Regístrate</h2>
                        <p>Proporciona tu nombre, apellido, dirección y teléfono de contacto para así poder revisar nuestro catálogo de choferes.</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">2</div>
                        <h2>Explora</h2>
                        <p>Explora nuestra pestaña de choferes para así ver alguno que cubra sus necesidades.</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">3</div>
                        <h2>Contrata</h2>
                        <p>Rellena el formulario para así poder ponerte en contacto con el chofer que hayas elegido, de esta forma podrás conocerlo y discutir sobre precios, rutas, etc.</p>
                    </div>
                    <div class="paso">
                        <div class="numPaso">4</div>
                        <h2>¡Todo Listo!</h2>
                        <p>Luego de tener una reunion con el chofer designado, tu pupilo está listo para viajar más seguro.</p>
                    </div>
                </div>
            </div>
        </container>
		<jsp:include page="/WEB-INF/navigation/footer.jsp" />
	</body>
</html>