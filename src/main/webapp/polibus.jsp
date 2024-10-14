<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.poliweb.Ruta" %>
<%@ page import="persistencia.RutaJpaController" %>

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

            <form action="rutas" method="GET" class="mb-4">
                <div class="input-group">
                    <input type="text" class="form-control" name="query" placeholder="Buscar ruta por nombre" required>
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">Buscar</button>
                    </div>
                </div>
            </form>

            <p>Total de rutas: ${not empty rutas ? rutas.size() : 0}</p>

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
                    <c:choose>
                        <c:when test="${not empty rutas}">
                            <c:forEach var="rutas" items="${rutas}">
                                <tr>
                                    <td>${ruta.nombreRuta}</td>
                                    <td>${ruta.paradas}</td>
                                    <td>${ruta.horario}</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="3">No se encontraron rutas.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- JavaScript para imprimir en la consola del navegador -->
    <script>
        console.log("Número de rutas recuperadas: ${not empty rutas ? rutas.size() : 'null'}");
    </script>

    <!-- jQuery (debe estar antes de Bootstrap JS) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
