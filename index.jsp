<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de IAC</title>
</head>
<body>
    <h2>Calculadora de Índice de Adiposidad Corporal (IAC)</h2>
    <form action="CalculoIACServlet" method="POST">
        <label for="cintura">Perímetro de la cintura (cm):</label>
        <input type="text" id="cintura" name="cintura" required><br><br>

        <label for="altura">Altura (m):</label>
        <input type="text" id="altura" name="altura" required><br><br>

        <input type="submit" value="Calcular IAC">
    </form>
</body>
</html>
