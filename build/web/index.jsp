<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de IAC</title>
    <style>
        /* Estilos generales para la pa?gina */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2); /* Fondo degradado */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Contenedor principal del formulario */
        .container {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Sombra para darle profundidad */
            text-align: center;
            width: 400px;
            animation: fadeIn 1s ease-in-out; /* Animacio?n al cargar */
        }

        /* Animacio?n de entrada suave */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Estilo para el ti?tulo */
        h2 {
            color: #4A00E0; /* Color de texto del ti?tulo */
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Estilo para las etiquetas de los campos */
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            text-align: left;
        }

        /* Estilos para los campos de texto */
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 2px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border 0.3s; /* Transicio?n suave al hacer foco */
        }

        /* Estilo al hacer foco en los campos de texto */
        input[type="text"]:focus {
            border-color: #4A00E0; /* Cambia el borde a un color distintivo */
            outline: none; /* Elimina el borde por defecto del navegador */
        }

        /* Estilo para el boto?n de envi?o */
        input[type="submit"] {
            background: linear-gradient(90deg, #6a11cb, #2575fc); /* Fondo degradado del boto?n */
            color: white;
            border: none;
            padding: 12px;
            margin-top: 20px;
            width: 100%;
            border-radius: 50px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: transform 0.3s, background 0.3s; /* Efectos de transicio?n */
        }

        /* Efecto al pasar el mouse sobre el boto?n */
        input[type="submit"]:hover {
            background: linear-gradient(90deg, #2575fc, #6a11cb); /* Cambio de colores */
            transform: scale(1.05); /* Aumento de taman?o */
        }
    </style>
</head>
<body>
    <!-- Contenedor donde se encuentra el formulario de entrada de datos -->
    <div class="container">
        <h2>Calculadora de IAC</h2>

        <!-- Formulario que enviara? los datos a CalculoIACServlet -->
        <form action="CalculoIACServlet" method="POST">
            
            <!-- Campo para ingresar el nombre -->
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <!-- Campo para ingresar la edad -->
            <label for="edad">Edad:</label>
            <input type="text" id="edad" name="edad" required>

            <!-- Campo para seleccionar el sexo -->
            <label for="sexo">Sexo:</label>
            <input type="text" id="sexo" name="sexo" required>

            <!-- Campo para ingresar la altura -->
            <label for="altura">Altura (m):</label>
            <input type="text" id="altura" name="altura" required>

            <!-- Campo para ingresar el peso -->
            <label for="peso">Peso (kg):</label>
            <input type="text" id="peso" name="peso" required>

            <!-- Campo para ingresar el peri?metro de la cintura -->
            <label for="cintura">Perimetro de la cintura (cm):</label>
            <input type="text" id="cintura" name="cintura" required>

            <!-- Boto?n para enviar el formulario y calcular el IAC -->
            <input type="submit" value="Calcular IAC">
        </form>
    </div>
</body>
</html>