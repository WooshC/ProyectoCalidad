<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Nombres</title>
</head>
<body>
    <h1>Bienvenido</h1>
    <form action="hola" method="get">
        <label for="nombre">Ingresa tu nombre:</label>
        <input type="text" id="nombre" name="nombre">
        <button type="submit">Enviar</button>
    </form>

    <h2>Nombres Ingresados:</h2>
    <ul>
        <c:forEach var="nombre" items="${nombres}">
            <li>${nombre}</li>
        </c:forEach>
    </ul>
</body>
</html>

