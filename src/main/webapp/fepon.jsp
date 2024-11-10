<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>FEPON - Federación de Estudiantes de la Politécnica Nacional</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body class="bg-light p-4">
<div class="container">
    <div class="bg-white p-4 rounded-lg shadow">
        <h2 class="text-2xl font-bold mb-4">FEPON - Federación de Estudiantes de la Politécnica Nacional</h2>
        <p class="mb-4">La FEPON es la asociación que representa a los estudiantes de la EPN. Aquí encontrarás información sobre sus actividades y servicios:</p>

        <div class="mt-4">
            <div class="d-flex align-items-start mb-4">
                <i class="fas fa-users fa-2x mr-3 text-primary"></i>
                <div>
                    <h3 class="h5 font-weight-bold">Representación Estudiantil</h3>
                    <p>La FEPON trabaja para defender los derechos e intereses de los estudiantes ante las autoridades universitarias.</p>
                </div>
            </div>

            <!-- Sección de Eventos y Actividades -->
            <div class="d-flex align-items-start mb-4">
                <i class="fas fa-calendar-alt fa-2x mr-3 text-success"></i>
                <div>
                    <h3 class="h5 font-weight-bold">Eventos y Actividades</h3>
                    <p>Organizamos eventos culturales, deportivos y académicos para enriquecer la vida estudiantil.</p>

                    <!-- Botón para alternar la visibilidad de los eventos -->
                    <button class="btn btn-primary" id="toggleEventsBtn">Ver Eventos</button>

                    <!-- Contenedor de eventos (inicialmente oculto) -->
                    <div id="eventsList" class="mt-3" style="display: none;">
                        <!-- Evento 1: Fiesta Deportiva -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><i class="fas fa-futbol"></i> Fiesta Deportiva</h5>
                                <p class="card-text">Únete a nuestra fiesta deportiva con actividades como fútbol, baloncesto y voleibol. ¡No te lo puedes perder!</p>
                                <p class="card-text"><strong>Fecha:</strong> 20 de Noviembre, 2024</p>
                                <p class="card-text"><strong>Hora:</strong> 10:00 AM - 4:00 PM</p>
                                <p class="card-text"><strong>Lugar:</strong> Canchas Deportivas EPN</p>
                            </div>
                        </div>

                        <!-- Evento 2: Competencia de Matemáticas -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><i class="fas fa-calculator"></i> Competencia de Matemáticas</h5>
                                <p class="card-text">Demuestra tus habilidades en la resolución de problemas matemáticos en nuestra competencia anual.</p>
                                <p class="card-text"><strong>Fecha:</strong> 25 de Noviembre, 2024</p>
                                <p class="card-text"><strong>Hora:</strong> 9:00 AM - 12:00 PM</p>
                                <p class="card-text"><strong>Lugar:</strong> Aula Magna, Edificio de Matemáticas</p>
                            </div>
                        </div>

                        <!-- Evento 3: Festival Cultural -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><i class="fas fa-masks-theater"></i> Festival Cultural</h5>
                                <p class="card-text">Disfruta de presentaciones artísticas, teatro, música en vivo y danza en nuestro festival cultural.</p>
                                <p class="card-text"><strong>Fecha:</strong> 5 de Diciembre, 2024</p>
                                <p class="card-text"><strong>Hora:</strong> 3:00 PM - 7:00 PM</p>
                                <p class="card-text"><strong>Lugar:</strong> Patio Central, Edificio de Artes</p>
                            </div>
                        </div>

                        <!-- Evento 4: Torneo de Ajedrez -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><i class="fas fa-chess"></i> Torneo de Ajedrez</h5>
                                <p class="card-text">Participa en el torneo de ajedrez para estudiantes. ¡El mejor estratega ganará un premio!</p>
                                <p class="card-text"><strong>Fecha:</strong> 10 de Diciembre, 2024</p>
                                <p class="card-text"><strong>Hora:</strong> 2:00 PM - 6:00 PM</p>
                                <p class="card-text"><strong>Lugar:</strong> Sala de Juegos, Edificio de Actividades Estudiantiles</p>
                            </div>
                        </div>

                        <!-- Evento 5: Cine al Aire Libre -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><i class="fas fa-film"></i> Cine al Aire Libre</h5>
                                <p class="card-text">Ven y disfruta de una noche de cine al aire libre, con la proyección de películas clásicas y actuales.</p>
                                <p class="card-text"><strong>Fecha:</strong> 15 de Diciembre, 2024</p>
                                <p class="card-text"><strong>Hora:</strong> 7:00 PM - 10:00 PM</p>
                                <p class="card-text"><strong>Lugar:</strong> Plaza Central, Campus EPN</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="d-flex align-items-start mb-4">
                <i class="fas fa-book fa-2x mr-3 text-danger"></i>
                <div>
                    <h3 class="h5 font-weight-bold">Servicios Académicos</h3>
                    <p>Ofrecemos asesoría académica, tutorías y recursos para apoyar el éxito estudiantil.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
        <div class="mt-4">
            <h3 class="h5 font-weight-bold mb-2">Contáctanos</h3>
            <p>Correo: <a href="mailto:fepon@epn.edu.ec">fepon@epn.edu.ec</a></p>
            <p>Teléfono: (02) 2976-300 ext. 1000</p>
            <p>Ubicación: Edificio de Asociaciones, Campus Politécnico</p>
        </div>
    </div>
</div>
<script>
    // Obtener el botón y el contenedor de eventos
    const toggleEventsBtn = document.getElementById('toggleEventsBtn');
    const eventsList = document.getElementById('eventsList');

    // Función para alternar la visibilidad de la lista de eventos
    toggleEventsBtn.addEventListener('click', function() {
        if (eventsList.style.display === 'none' || eventsList.style.display === '') {
            // Mostrar los eventos
            eventsList.style.display = 'block';
            toggleEventsBtn.textContent = 'Ocultar Eventos';  // Cambiar texto del botón
        } else {
            // Ocultar los eventos
            eventsList.style.display = 'none';
            toggleEventsBtn.textContent = 'Ver Eventos';  // Cambiar texto del botón
        }
    });
</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
