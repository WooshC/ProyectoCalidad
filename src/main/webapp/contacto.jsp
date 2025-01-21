<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - Escuela Politécnica Nacional (EPN)</title>
    <link rel="stylesheet" href="./css/contacto.css">
</head>
<body>

    <!-- Contenedor principal -->
    <div id="main-container" class="container">
        <!-- Título -->
        <h2 id="page-title">Contacto - EPN</h2>

        <!-- Formulario de contacto -->
        <form id="contact-form">
            <!-- Nombre -->
            <div class="form-group">
                <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <!-- Correo electrónico -->
            <div class="form-group">
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Mensaje -->
            <div class="form-group">
                <label for="message">Mensaje:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>

            <!-- Botón de enviar -->
            <div class="form-group">
                <button id="submit-button" type="submit">Enviar</button>
            </div>
        </form>

        <!-- Información de contacto -->
        <div id="contact-info">
            <h3 id="info-title">Información de Contacto</h3>
            <ul>
                <li id="phone">Teléfono: +593 2 2971000</li>
                <li id="email-contact">Email: contacto@epn.edu.ec</li>
                <li id="address">Dirección: Av. Diego de Vásquez de Cepeda s/n, Quito, Ecuador</li>
            </ul>
        </div>
    </div>

</body>
</html>
