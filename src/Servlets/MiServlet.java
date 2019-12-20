package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MiServlet
 */
@WebServlet("/MiServlet")
public class MiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected static void redireccionar(HttpServletRequest req, HttpServletResponse resp, String location) {
		resp.setHeader("Location", req.getContextPath() + "/" + location);
		resp.setHeader("Cache-Control", "no-cache");
		resp.setStatus(302);
	}

	public static void validarSesion(HttpServletRequest req, HttpServletResponse resp) {
		try {
			if ((Integer) req.getSession().getAttribute("IDUsuario") == null) {
				throw new Exception();
			}
		} catch (Exception e) {
			redireccionar(req, resp, "Login.jsp");
		}
	}
}
