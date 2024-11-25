<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>FurgoPlus</title>
		<link rel="icon" href="./furgoplus.ico" type="image/x-icon">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/faqs_style.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/navigation/nav.jsp" />
		<div class="faq-container">
	        <div class="faq-title">Preguntas Frecuentes</div>
	        <div class="faq-item">
	            <div class="faq-question">¿Cuáles son las principales normas que rigen al transporte escolar? <span>+</span></div>
	            <div class="faq-answer">
	            	- Decreto con Fuerza de Ley N° 1, de 2007, de los Ministerios de Transportes y Telecomunicaciones y de Justicia, que fija el texto refundido, coordinado y sistematizado de la Ley N.º 18.290, de Tránsito.<br>
					- Ley N° 19.831, de 2002, que Crea el Registro Nacional de Servicios de Transporte Remunerado de Escolares.<br>
					- Decreto Supremo N° 38, de 1992, del Ministerio de Transportes y Telecomunicaciones, que Reglamenta el Transporte Remunerado de Escolares.<br>
					- Decreto Supremo N° 38, de 2003, del Ministerio de Transportes y Telecomunicaciones, que Crea y Reglamenta el Registro Nacional de Transporte Remunerado de Escolares.<br>
	            </div>
	        </div>
	        <div class="faq-item">
	            <div class="faq-question">¿Quiénes fiscalizan los servicios de transporte escolar? <span>+</span></div>
	            <div class="faq-answer">
	            	Carabineros de Chile, inspectores municipales e inspectores fiscales dependientes del Departamento de Fiscalización del Ministerio de Transportes y Telecomunicaciones.
	            </div>
	        </div>
	    </div>
	    <jsp:include page="/WEB-INF/navigation/footer.jsp" />

    <script>
        document.querySelectorAll('.faq-question').forEach(item => {
            item.addEventListener('click', () => {
                item.classList.toggle('active');
                const answer = item.nextElementSibling;
                if (answer.style.display === 'block') {
                    answer.style.display = 'none';
                } else {
                    answer.style.display = 'block';
                }
            });
        });
    </script>
	</body>
</html>