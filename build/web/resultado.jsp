<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Definición de la codificación de caracteres -->
    <meta charset="UTF-8">
    <!-- Hace que la página sea responsiva en dispositivos móviles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado del IAC</title> <!-- Título de la página -->

    <style>
        /* Estilos para el cuerpo de la página */
        body {
            font-family: 'Roboto', sans-serif; /* Fuente de la página */
            background: linear-gradient(135deg, #74ebd5, #acb6e5); /* Fondo con gradiente */
            display: flex; /* Flexbox para centrar contenido */
            justify-content: center; /* Centrar contenido horizontalmente */
            align-items: center; /* Centrar contenido verticalmente */
            height: 100vh; /* Altura completa de la ventana */
            margin: 0; /* Eliminar márgenes */
            color: #333; /* Color del texto */
        }

        /* Estilos para el contenedor principal */
        .container {
            background: white; /* Fondo blanco para el contenedor */
            padding: 30px; /* Espaciado interno */
            border-radius: 20px; /* Bordes redondeados */
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1); /* Sombra suave */
            text-align: center; /* Centrar texto dentro del contenedor */
            width: 350px; /* Ancho fijo */
            animation: fadeIn 1s ease-in-out; /* Animación para aparecer */
            transition: transform 0.3s ease-in-out; /* Transición para el hover */
        }

        /* Efecto al pasar el cursor por encima del contenedor */
        .container:hover {
            transform: translateY(-5px); /* Eleva ligeramente el contenedor */
        }

        /* Animación de aparición */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); } /* Inicia con opacidad 0 y pequeño */
            to { opacity: 1; transform: scale(1); } /* Termina con opacidad 1 y tamaño normal */
        }

        /* Estilos para el título */
        h2 {
            color: #007bff; /* Color azul */
            margin-bottom: 20px; /* Espacio debajo del título */
            font-size: 24px; /* Tamaño de fuente */
        }

        /* Estilos para los párrafos */
        p {
            font-size: 18px; /* Tamaño de la fuente */
            margin: 15px 0; /* Espacio arriba y abajo de cada párrafo */
            font-weight: 500; /* Peso de la fuente */
            line-height: 1.5; /* Altura de línea para mejor legibilidad */
        }

        /* Estilos para el resultado (valores calculados) */
        .result {
            font-size: 20px; /* Tamaño de la fuente del resultado */
            color: #28a745; /* Color verde */
            font-weight: 600; /* Peso de la fuente */
        }

        /* Estilos para el enlace */
        a {
            display: inline-block; /* Hace que el enlace sea un bloque en línea */
            margin-top: 30px; /* Espacio encima del enlace */
            padding: 12px 25px; /* Espaciado interno */
            background-color: #007bff; /* Color de fondo azul */
            color: white; /* Color del texto blanco */
            text-decoration: none; /* Elimina subrayado */
            border-radius: 30px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de la fuente */
            text-transform: uppercase; /* Convierte el texto a mayúsculas */
            transition: background 0.3s, transform 0.2s; /* Efectos de transición */
        }

        /* Efecto al pasar el cursor por encima del enlace */
        a:hover {
            background-color: #0056b3; /* Cambia el fondo a un azul más oscuro */
            transform: scale(1.05); /* Aumenta ligeramente el tamaño */
        }

        /* Estilo cuando el enlace es enfocado */
        a:focus {
            outline: none; /* Elimina el borde de enfoque */
        }
    </style>
</head>
<body>
    <!-- Contenedor principal que muestra los resultados -->
    <div class="container">
        <h2>Resultado del IAC</h2>
        <!-- Se muestran los resultados del IAC con los valores insertados -->
        <p>Nombre: <span class="result">${nombre}</span></p>
        <p>Edad: <span class="result">${edad}</span></p>
        <p>Sexo: <span class="result">${sexo}</span></p>
        <p>Altura: <span class="result">${altura} m</span></p>
        <p>Peso: <span class="result">${peso} kg</span></p>
        <p>Perímetro de la cintura: <span class="result">${cintura} cm</span></p>
        <p>Tu IAC calculado es: <span class="result">${iacResultado}</span></p>
        <!-- Enlace para volver a la página de inicio -->
        <a href="index.jsp">Volver</a>
    </div>
</body>
</html>
