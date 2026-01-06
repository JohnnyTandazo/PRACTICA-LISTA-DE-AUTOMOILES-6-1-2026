package controller;

import service.AutomovilService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(name = "AutomovilServlet", urlPatterns = {"/AutomovilServlet"})
public class AutomovilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Ejecutamos la lógica del servicio
        AutomovilService service = new AutomovilService();
        
        // "Inyectamos" los datos en el request para el JSP
        request.setAttribute("hashMap", service.getHashMap());
        request.setAttribute("linkedHashMap", service.getLinkedHashMap());
        request.setAttribute("treeMap", service.getTreeMap());
        
        // IMPORTANTE: Enviamos la petición al JSP
        RequestDispatcher rd = request.getRequestDispatcher("/listarAutos.jsp");
        rd.forward(request, response);
    }
}