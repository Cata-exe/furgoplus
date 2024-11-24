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
	            <div class="faq-question">¿Lorem? <span>+</span></div>
	            <div class="faq-answer">
	            	Lorem ipsum dolor sit amet consectetur
	                adipisicing elit. Quas cupiditate laboriosam fugiat.
	            </div>
	        </div>
	        <div class="faq-item">
	            <div class="faq-question">¿Lorem? <span>+</span></div>
	            <div class="faq-answer">
	            	Lorem ipsum dolor sit amet consectetur
	                adipisicing elit. Quas cupiditate laboriosam fugiat.
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