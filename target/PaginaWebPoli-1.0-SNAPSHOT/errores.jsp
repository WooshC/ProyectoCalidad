<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }

        .error-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
            max-width: 600px;
            animation: fadeIn 1s ease-out;
        }

        h1 {
            font-size: 3em;
            color: #dc3545;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            color: #6c757d;
        }

        .icon {
            font-size: 5em;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.1em;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="error-container">
        <div class="icon">⚠️</div>
        <h1>¡Vaya! Algo salió mal.</h1>
        <p><strong>Lo sentimos mucho.</strong><br> Hubo un error inesperado. Estamos trabajando para solucionarlo. Por favor, intenta de nuevo más tarde.</p>
        <button class="btn" onclick="goBack()">Volver al inicio</button>
    </div>

    <script>
        function goBack() {
            window.history.back();  // Navega a la página anterior
        }
    </script>

</body>
</html>
