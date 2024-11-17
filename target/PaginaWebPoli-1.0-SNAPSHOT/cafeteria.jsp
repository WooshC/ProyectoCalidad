<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>

<html>
<head>
    <title>Menú de la Cafetería</title>
    <link rel="stylesheet" type="text/css" href="css/cafeteria.css">
</head>
<body>
<%
    Locale locale = new Locale("es", "ES");
    SimpleDateFormat formatter = new SimpleDateFormat("EEEE, MMMM dd, yyyy", locale);
    String fechaActual = formatter.format(new Date());
%>
<h1>Menú de la Cafetería</h1>
<h2><%= fechaActual %></h2>

<!-- Iterar sobre cada categoría en el mapa -->
<c:forEach var="entry" items="${menuGroupedByCategory}">
    <!-- Obtener el nombre de la categoría -->
    <h2>${entry.key}</h2>

    <!-- Crear una tabla para cada categoría -->
    <table class="menu-table">
        <thead>
        <tr>
            <th>Nombre del Plato</th>
            <th>Descripción</th>
            <th>Precio</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="cafeteria" items="${entry.value}">
            <tr>
                <td>${cafeteria.nombrePlato}</td>

                <!-- Mostrar la descripción como una lista separada por comas -->
                <td>
                    <ul>
                        <!-- Usamos fn:split para separar la descripción por comas -->
                        <c:forEach var="item" items="${fn:split(cafeteria.descripcion, ',')}" varStatus="status">
                            <li>${item}</li>
                        </c:forEach>
                    </ul>
                </td>

                <td>$ ${cafeteria.precioFormateado}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</c:forEach>

</body>
</html>
