<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>La Cafetería Está Cerrada</title>
  <style>

    .message-container {
      background-color: #f8d7da;
      padding: 30px;
      border-radius: 8px;
      width: 80%;
      max-width: 500px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .message-container h1 {
      color: #721c24;
      font-size: 2rem;
      margin: 0;
    }

    .message-container p {
      color: #856404;
      font-size: 1.1rem;
      margin: 15px 0;
    }

    @keyframes slideIn {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .message-container {
      animation: slideIn 1s ease-out;
    }

    .icon {
      font-size: 4rem;
      color: #d9534f;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

<!-- Contenedor del mensaje -->
<div class="message-container">
  <div class="icon">🚫</div> <!-- Icono de "cerrado" -->
  <h1>La Cafetería Está Cerrada Hoy</h1>
  <br>
  <p>Lo sentimos, la cafetería no abre hoy. ¡Vuelve pronto en un día laborable!</p>
</div>

</body>
</html>
