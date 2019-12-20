package Negocio;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpsServer;

abstract public class Controlador extends HttpServlet{
	
	protected Dominio.Usuario Usuario =null;
	
	protected static void redireccionar(HttpServletRequest req, HttpServletResponse resp, String location) {
        resp.setHeader("Location", req.getContextPath() + "/" + location);
        resp.setHeader("Cache-Control", "no-cache");
        resp.setStatus(302);
    }

    public static void validarSesion(HttpServletRequest req, HttpServletResponse resp)
    {
        try{
            if((Integer)req.getSession().getAttribute("legajo") == null)
            {
                throw new Exception();
            }
        }catch (Exception e)
        {
            redireccionar(req,resp, "Login.jsp");
        }
    }


}
