package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;

@WebServlet(name = "CalculoIACServlet", urlPatterns = {"/CalculoIACServlet"})
public class CalculoIACServlet extends HttpServlet {

    // Método que se ejecuta cuando se recibe una solicitud POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recibir parámetros del formulario enviado por el usuario
        // El servlet recibe los datos ingresados por el usuario en el formulario HTML.
        // Estos datos se extraen usando getParameter().
        
        String nombre = request.getParameter("nombre");
        int edad = Integer.parseInt(request.getParameter("edad"));
        String sexo = request.getParameter("sexo");
        double altura = Double.parseDouble(request.getParameter("altura"));
        double peso = Double.parseDouble(request.getParameter("peso"));
        double cintura = Double.parseDouble(request.getParameter("cintura"));

        // 2. Calcular el IAC (Índice de Adiposidad Corporal)
        // Esto se hace usando los datos recibidos (cintura y altura).
        
        double iac = (cintura / (altura * Math.sqrt(altura))) - 18;

        // 3. Formatear el resultado a dos decimales
        // El resultado del cálculo del IAC se formatea a dos decimales para que sea más legible.
        DecimalFormat df = new DecimalFormat("#.##"); // Se crea un objeto DecimalFormat para el formato
        String iacFormateado = df.format(iac); // Se aplica el formato y se convierte el resultado a una cadena

        // 4. Enviar todos los datos al JSP
        // Los datos recibidos y el resultado del cálculo se envían a la página JSP para ser mostrados al usuario.
        // Esto se hace utilizando setAttribute() para asignar los valores a los atributos de la solicitud.
        
        request.setAttribute("nombre", nombre);
        request.setAttribute("edad", edad);
        request.setAttribute("sexo", sexo);
        request.setAttribute("altura", altura);
        request.setAttribute("peso", peso);
        request.setAttribute("cintura", cintura);
        request.setAttribute("iacResultado", iacFormateado);

        // 5. Redirigir a la página de resultados
        // Finalmente, se redirige al usuario a la página JSP "resultado.jsp" para mostrar los datos procesados.
        // Se utiliza el método forward() para enviar la solicitud y la respuesta al JSP correspondiente.
        
        request.getRequestDispatcher("resultado.jsp").forward(request, response); // Enviamos los datos a la página JSP
    }
}
