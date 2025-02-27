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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recibir parámetros del formulario
        double cintura = Double.parseDouble(request.getParameter("cintura"));
        double altura = Double.parseDouble(request.getParameter("altura"));

        // 2. Calcular el IAC
        double iac = (cintura / (altura * Math.sqrt(altura))) - 18;

        // 3. Formatear el resultado a dos decimales
        DecimalFormat df = new DecimalFormat("#.##");
        String iacFormateado = df.format(iac);

        // 4. Enviar el resultado formateado al JSP
        request.setAttribute("iacResultado", iacFormateado);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
