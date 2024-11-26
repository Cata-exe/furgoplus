<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link rel="stylesheet" href="./estilos/style.css">
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
</head>
<body>
    <header>
        <h1>Mi Perfil</h1>
        <button>Editar Perfil</button>
    </header>
    <main>
        <div class="infoPersonal">
            <div class="chofer">
                <h2>Información Personal</h2>
                <img src="./img/luis.jpg" alt="imagen de chofer Luis">
                <div class="aside">
                    <h1>Luis Martínez</h1>
                    <p>ID: COND-12345</p>
                    <div class="estrellas">
                        <p>★</p>
                        <span>4.8 (120 reseñas)</span>
                    </div>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rs-marker"></i>
                    <span>Concepción, Chile</span>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rr-phone-call"></i>
                    <span>+56 9 1234 5678</span>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rr-envelope"></i>
                    <span>luis.martínez@example.com</span>
                </div>
                <div class="detallesChofer">
                    <i class="fi fi-rs-calendar"></i>
                    <span>Miembro desde: Octubre 2021</span>
                </div>
            </div>
            <div class="vehiculo">
                <h2>Información del Furgón</h2>
                <div class="infoFurgon">
                    <h3>Vehículo</h3>
                    <p>Toyota Hiace 2019</p>
                    <h3>Patente</h3>
                    <p>AB-CD-12</p>
                    <h3>Capacidad</h3>
                    <p>12 Pasajeros</p>
                    <h3>Caracteristicas</h3>
                    <div class="caracteristicasVehiculo">
                        <span>Aire acondicionado</span>
                        <span>Cinturones de seguridad</span>
                        <span>GPS</span>
                        <span>Cámara de seguridad</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="documentos">
            <h2>Certificaciones y Documentos</h2>
            <div class="iconoEscudo">
                <i class="fi fi-rs-shield"></i>
                <span>Licencia de conducir Clase A3 vigente</span>
            </div>
            <div class="iconoEscudo">
                <i class="fi fi-rs-shield"></i>
                <span>Curso de capacitación en transporte escolar</span>
            </div>
            <div class="iconoEscudo">
                <i class="fi fi-rs-shield"></i>
                <span>Certificado de antecedentes al día</span>
            </div>
            <div class="iconoEscudo">
                <i class="fi fi-rs-shield"></i>
                <span>Registro Nacional de Transporte Escolar</span>
            </div>
        </div>
        <div class="rutas">
            <h2>Rutas y Horarios</h2>
            <div class="rutaUno">
                <h3>Ruta mañana</h3>
                <p>Concepción - San Pedro de la Paz - Chiguayante</p>
                <p>Horario: 6:30 AM - 8:00 AM</p>
            </div>
            <div class="rutaDos">
                <h3>Ruta Tarde</h3>
                <p>Chiguayante - San Pedro de la Paz - Concepción</p>
                <p>Horario: 3:30 PM - 5:00 PM</p>
            </div>
        </div>
        <div class="reuniones">
            <h2>Tus Próximas Reuniones</h2>
            <div class="contedorReunion">
                <div class="reunionesBox">
                    <div class="reunionHeader">
                        <div class="avatar">
                            <img src="./img/claudia.jpg" alt="imagen de claudia">
                        </div>
                        <div>
                            <h3>Claudia Rojas</h3>
                            <p>Reunión Pendiente</p>
                        </div>
                    </div>
                    <ul class="reunionDetalles">
                        <li><i class="fi fi-rs-calendar"></i> 2023-11-25</li>
                        <li><i class="fi fi-rr-clock-three"></i> 15:00</li>
                        <li><i class="fi fi-rs-marker"></i> Café Central, Las Condes</li>
                    </ul>
                    <button class="btnConfirmar">Confirmar Reunión</button>
                </div>
                <div class="reunionesBox">
                    <div class="reunionHeader">
                        <div class="avatar">
                            <img src="./img/carlos.jpg" alt="imagen de carlos">
                        </div>
                        <div>
                            <h3>Carlos Díaz</h3>
                            <p>Reunión Confirmada</p>
                        </div>
                    </div>
                    <ul class="reunionDetalles">
                        <li><i class="fi fi-rs-calendar"></i> 2023-11-26</li>
                        <li><i class="fi fi-rr-clock-three"></i> 10:30</li>
                        <li><i class="fi fi-rs-marker"></i> Parque Araucano, Las Condes</li>
                    </ul>
                    <button class="btnConfirmar">Confirmar Reunión</button>
                </div>
                <div class="reunionesBox">
                    <div class="reunionHeader">
                        <div class="avatar">
                            <img src="./img/maria.jpg" alt="imagen de maria">
                        </div>
                        <div>
                            <h3>María Fernanda González</h3>
                            <p>Reunión Pendiente</p>
                        </div>
                    </div>
                    <ul class="reunionDetalles">
                        <li><i class="fi fi-rs-calendar"></i> 2023-11-27</li>
                        <li><i class="fi fi-rr-clock-three"></i> 14:00</li>
                        <li><i class="fi fi-rs-marker"></i> Colegio San Carlos, Vitacura</li>
                    </ul>
                    <button class="btnConfirmar">Confirmar Reunión</button>
                </div>
            </div>
        </div>
        <div class="pasajeros">
            <h2>Lista de Pasajeros</h2>
            <table class="estudiantes">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Edad</th>
                        <th>Escuela</th>
                        <th>Dirección</th>
                        <th>Apoderado</th>
                        <th>Teléfono Apoderado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Sofía Rodríguez</td>
                        <td>8 años</td>
                        <td>Colegio San José</td>
                        <td>Av. Las Condes 1234</td>
                        <td>Ana Rodríguez</td>
                        <td>+56 9 8765 4321</td>
                    </tr>
                    <!--de aca hay que borrar porque es solo para llenar espacio ya que solo se ocuparia una con los datos de la base de datos-->
                    <tr>
                        <td>Mateo Gómez</td>
                        <td>10 años</td>
                        <td>Escuela Santa María</td>
                        <td>Calle Providencia 567</td>
                        <td>Carlos Gómez</td>
                        <td>+56 9 2345 6789</td>
                    </tr>
                    <tr>
                        <td>Mateo Gómez</td>
                        <td>10 años</td>
                        <td>Escuela Santa María</td>
                        <td>Calle Providencia 567</td>
                        <td>Carlos Gómez</td>
                        <td>+56 9 2345 6789</td>
                    </tr>
                    <tr>
                        <td>Mateo Gómez</td>
                        <td>10 años</td>
                        <td>Escuela Santa María</td>
                        <td>Calle Providencia 567</td>
                        <td>Carlos Gómez</td>
                        <td>+56 9 2345 6789</td>
                    </tr>
                    <tr>
                        <td>Mateo Gómez</td>
                        <td>10 años</td>
                        <td>Escuela Santa María</td>
                        <td>Calle Providencia 567</td>
                        <td>Carlos Gómez</td>
                        <td>+56 9 2345 6789</td>
                    </tr>
                    <tr>
                        <td>Mateo Gómez</td>
                        <td>10 años</td>
                        <td>Escuela Santa María</td>
                        <td>Calle Providencia 567</td>
                        <td>Carlos Gómez</td>
                        <td>+56 9 2345 6789</td>
                    </tr>
                    <!--Hasta aca :3-->
                </tbody>
            </table>
        </div>
        <div class="review">
            <h2>Reseñas Recientes</h2>
            <div class="valoraciones">
                <span class="estrellaReview">★★★★★</span>
                <span>Hace 2 semanas</span>
            </div>
            <p>"Excelente servicio. Juan es muy puntual y responsable. Los niños se sienten seguros con él."</p>
            <p>- María G., madre de Sofía</p>

            <!--de nuevo poquito relleno para ayudar con el tema de los tamaños y que no se bugee despues-->

            <div class="valoraciones">
                <span class="estrellaReview">★★★★★</span>
                <span>Hace 2 semanas</span>
            </div>
            <p>"Excelente servicio. Juan es muy puntual y responsable. Los niños se sienten seguros con él."</p>
            <p>- María G., madre de Sofía</p>

            <div class="valoraciones">
                <span class="estrellaReview">★★★★★</span>
                <span>Hace 2 semanas</span>
            </div>
            <p>"Excelente servicio. Juan es muy puntual y responsable. Los niños se sienten seguros con él."</p>
            <p>- María G., madre de Sofía</p>

            <!--hasta aca :3-->
        </div>
    </main>
</body>
</html>