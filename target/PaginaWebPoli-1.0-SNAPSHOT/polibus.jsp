<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.poliweb.Ruta" %>
<%@page import="com.poliweb.controller.RutaJpaController" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Polibus - Portal Estudiantil EPN</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            .bg-white {
                background-color: #ffffff;
            }
            .rounded-lg {
                border-radius: 0.5rem;
            }
            .shadow-lg {
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.1);
            }
        </style>
    </head>
    <body>
        <div class="container my-4">
            <div class="bg-white p-6 rounded-lg shadow-lg">
                <h2 class="text-2xl font-bold mb-4">Polibus</h2>
                <p class="mb-4">El Polibus es el servicio de transporte para estudiantes de la EPN. Aquí puedes encontrar información sobre las rutas disponibles:</p>
                <!-- Formulario de búsqueda -->
                <form action="rutas" method="GET" class="mb-4">
                    <div class="input-group">
                        <input type="text" class="form-control" name="query" placeholder="Buscar ruta por nombre" required>
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit">Buscar</button>
                        </div>
                    </div>
                </form>


                <!-- Tabla de rutas -->
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="thead-light">
                            <tr>
                                <th>Nombre de la Ruta</th>
                                <th>Paradas</th>
                                <th>Horario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Mostrar las rutas desde el servlet -->
                            <c:forEach var="ruta" items="${rutas}">
                                <tr>
                                    <td>${ruta.nombreRuta}</td>
                                    <td>${ruta.paradas}</td>
                                    <td>${ruta.horario}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
