<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal Estudiantil EPN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        function showTab(tabName) {
            console.log("Cargando pestaña: " + tabName);
            let url = '';

            // Mostrar el spinner
            $('#spinner').show();

            switch (tabName) {
                case 'polibus':
                    url = '/PaginaWebPoli/buses'; // URL para cargar las rutas
                    break;
                case 'cafeteria':
                    url = '/PaginaWebPoli/cafeteria'; // URL para cargar la cafetería
                    break;
                case 'asociacion':
                    url = '/PaginaWebPoli/asociaciones'; // URL para cargar asociacion
                    break;
                case 'comentarios':
                    url = '/PaginaWebPoli/comentarios'; // URL para cargar comentarios
                    break;
                case 'social':
                    url = '/PaginaWebPoli/social'; // URL para cargar área social
                    break;
                default:
                    console.error("Tab no reconocido: " + tabName);
                    return; // Salir si no hay URL definida
            }

            // Cargar contenido usando la URL correspondiente
            $('#tabContent').load(url, function (response, status, xhr) {
                // Ocultar el spinner cuando se carga el contenido
                $('#spinner').hide();

                if (status === "error") {
                    console.error("Error al cargar la pestaña: " + xhr.status + " " + xhr.statusText);
                    $('#tabContent').html('<div class="alert alert-danger">Error al cargar el contenido. Inténtalo nuevamente más tarde.</div>');
                }
            });
        }

        // Mostrar la pestaña por defecto al cargar la página
        $(document).ready(function () {
            showTab('polibus'); // Cargar la pestaña "polibus" al inicio
        });
    </script>
</head>
<body>
<div class="wrapper">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <button class="nav-link btn btn-link" onclick="showTab('polibus')" type="button">Polibus</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn btn-link" onclick="showTab('cafeteria')" type="button">Cafetería</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn btn-link" onclick="showTab('asociacion')" type="button">Asociación</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn btn-link" onclick="showTab('comentarios')" type="button">Comentarios</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn btn-link" onclick="showTab('social')" type="button">Área Social</button>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main class="container my-4 content">
        <!-- Contenedor del contenido dinámico -->
        <div id="tabContent" class="tab-content" style="position: relative;">
            <!-- Spinner que se muestra mientras carga el contenido -->
            <div id="spinner" class="spinner-wrapper" aria-live="polite">
                <output class="spinner-border text-primary" aria-hidden="true"></output>
                <span class="sr-only">Cargando...</span>
            </div>
        </div>

    </main>

    <footer class="footer">
        <%@ include file="footer.jsp" %>
    </footer>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
