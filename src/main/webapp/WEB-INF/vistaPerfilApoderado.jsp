<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información del Apoderado</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <h1>Furgo<span id="plus">Plus</span></h1>
            <p>Transporte Escolar</p>
        </div>
        <ul class="nav-links">
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Conductores</a></li>
            <li><a href="#">Mi Perfil</a></li>
        </ul>
        <div class="navBtns">
            <button id="loginBtn">Cerrar Sesión</button>
            <button id="registroBtn">Editar Perfil</button>
        </div>
    </nav>

    <div class="container">
        <h1 id="info-apo">Información del Apoderado</h1>
        <div class="container1">
            <div class="info-box1">
                <h2>Datos Personales</h2>
                <p><strong>Nombre:</strong> Juan Pérez</p>
                <p><strong>RUT:</strong> 12.345.678-9</p>
                <p><strong>Dirección:</strong> Av. Principal 123, Santiago</p>
                <p><strong>Teléfono:</strong> +56 9 1234 5678</p>
                <p><strong>Correo Electrónico:</strong> juan.perez@email.com</p>
            </div>
            <div class="info-box2">
                <h2>Estudiantes a Cargo</h2>
                <ul>
                    <li>
                        <p><strong>Nombre:</strong> María Pérez</p>
                        <p><strong>Edad:</strong> 10 años</p>
                        <p><strong>Curso:</strong> 5° Básico</p>
                        <p><strong>Escuela:</strong> Colegio San José</p>
                    </li>
                    <li>
                        <p><strong>Nombre:</strong> Pedro Pérez</p>
                        <p><strong>Edad:</strong> 8 años</p>
                        <p><strong>Curso:</strong> 3° Básico</p>
                        <p><strong>Escuela:</strong> Colegio San José</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="info-box3">
            <div class="serv-trans">
                <h2>Servicio de Transporte</h2>
                <p><strong>Conductor Asignado:</strong> Carlos Rodríguez</p>
                <p><strong>Vehículo:</strong> Furgón Escolar Hyundai H1</p>
                <p><strong>Patente:</strong> ABCD12</p>
                <p><strong>Horario de Recogida:</strong> 07:15 AM</p>
                <p><strong>Horario de Regreso:</strong> 04:30 PM</p>
            </div>
            <div class="schedule-form">
                <h2>Agendar Reunión</h2>
                <form>
                    <div class="form-group">
                        <label for="meeting-date">Fecha:</label>
                        <input type="date" id="meeting-date" name="meeting-date" required>
                    </div>
                    <div class="form-group">
                        <label for="meeting-time">Hora:</label>
                        <input type="time" id="meeting-time" name="meeting-time" required>
                    </div>
                    <button type="submit" class="submit-btn">Agendar</button>
                </form>
            </div>
            <div class="scheduled-meetings">
                <h2>Reuniones Agendadas</h2>
                <div class="meeting-card">
                    <div class="meeting-icon">
                        <div class="clock-icon"></div>
                    </div>
                    <div class="meeting-content">
                        <h3>Reunión Pendiente</h3>
                        <p class="meeting-description">Reunión con Carlos Rodríguez programada para el 20 de febrero, 2025</p>
                        <p class="meeting-status">El conductor confirmará la reunión en breve. Recibirás una notificación cuando esto suceda.</p>
                        <p class="meeting-support">Para cualquier cambio o cancelación, por favor contacta con soporte.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="column">
                <h3>FurgoPlus</h3>
                <p>Conectando familias con transporte escolar seguro y confiable.</p>
                <div class="social-icons">
                    <a href="#"><i class="fi fi-brands-instagram"></i></a>
                    <a href="#"><i class="fi fi-brands-linkedin"></i></a>
                    <a href="#"><i class="fi fi-brands-twitter-alt-circle"></i></a>
                </div>
            </div>
            <div class="column">
                <h3>Para Apoderados</h3>
                <ul>
                    <a href="/comofunciona"><li>Como Funciona</li></a>
                    <a href="#"><li>Buscar Conductor</li></a>
                    <a href="faqs"><li>Preguntas Frecuentes</li></a>
                </ul>
            </div>
            <div class="column">
                <h3>Para Conductor</h3>
                <ul>
                    <a href="/requisitos"><li>Requisitos</li></a>
                    <a href="/pasosregistro"><li>Pasos Registro</li></a>
                </ul>
            </div>
            <div class="column">
                <h3>Contacto</h3>
                <ul>
                    <a href="/contacto"><li>Soporte</li></a>
                    <a href="mailto:info@furgoplus.cl"><li>Email: info@furgoplus.cl</li></a>
                    <a href="#"><li>Tel: +56 9 2222 3333</li></a>
                </ul>
            </div>
        </div>
        <div class="copyright">
            &copy; 2024 FurgoPlus. Todos los derechos reservados.
        </div>
    </footer>
</body>
</html>