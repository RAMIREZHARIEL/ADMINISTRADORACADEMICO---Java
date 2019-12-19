package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Conexion.AccesoBD;
import Dominio.Usuario;
import Negocio.UsuarioNeg;


@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public ServletUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		if(request.getParameter("btnRegistrar")!=null && request.getParameter("txtContrasenia").contentEquals(request.getParameter("txtRepiteContrasenia")))
		{


				Usuario usuario = new Usuario();

				usuario.setPassword(request.getParameter("txtContrasenia"));
				usuario.setUsser(request.getParameter("txtUsuario"));
				usuario.setEliminado(false);
				usuario.setTipo(request.getParameter("TipoLogIn"));
				
				//UsuarioNeg usuarioNeg = new UsuarioNeg();
				if(UsuarioNeg.guardar(usuario))
				{
					RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");  	
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
		else
		{
			//new JOptionPane();
			RequestDispatcher rd=request.getRequestDispatcher("Registro.jsp");  	
			rd.forward(request, response);
			//JOptionPane.showMessageDialog(null, "Las contrasenias deben coincidir");

		}	
		
		
		


		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		doGet(request, response);
	}

}
