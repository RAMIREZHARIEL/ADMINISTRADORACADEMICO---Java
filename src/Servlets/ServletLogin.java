package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Usuario;
import Negocio.UsuarioNeg;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btnIngresar")!=null )
		{
				

				String Pass=request.getParameter("txtContrasenia");
				String usser= request.getParameter("txtUsuario");
				String Tipo=request.getParameter("TipoLogIn");
				
				int idUsuario=UsuarioNeg.getIDUsuario(usser, Pass, Tipo);
				if(idUsuario!=0)
				{
					Usuario usuario = new Usuario(idUsuario,false,usser,Pass,Tipo);
					RequestDispatcher rd=request.getRequestDispatcher(Tipo+".jsp");  	
					rd.forward(request, response);
					//JOptionPane.showMessageDialog(null, "Registrado!", "Correcto", 1);


				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("Registro.jsp");  	
					rd.forward(request, response);
					//new JOptionPane("Error al intentar registrarse, intente nuevamente.");
				}	
				
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
