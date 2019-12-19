package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Alumno;
import Negocio.AlumnoNeg;

/**
 * Servlet implementation class ServletModificarAlumno
 */
@WebServlet("/ServletModificarAlumno")
public class ServletModificarAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletModificarAlumno() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		if(request.getParameter("btnModificar")!=null)
		{

			
			int legajo = Integer.parseInt(request.getParameter("Legajo"));
			Alumno alumno = AlumnoNeg.ListarAlumnos(legajo);
			
			
			
			request.setAttribute("Alumno", alumno);
			RequestDispatcher rd = request.getRequestDispatcher("AlumnoModificar.jsp");
			rd.forward(request, response);
		
		}
		else if(request.getParameter("btnEliminar")!=null)
		{
			
			
			int ID= Integer.parseInt( request.getParameter("ID"));
			AlumnoNeg.Baja(ID);
			
			RequestDispatcher rd=request.getRequestDispatcher("AlumnoListado.jsp");  	
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("AlumnoListado.jsp");  	
			rd.forward(request, response);
		}
		
				
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			Alumno alumno = new Alumno();
			alumno.setApellido(request.getParameter("txtApellido"));
			alumno.setNombre(request.getParameter("txtNombre"));
			alumno.setDireccion(request.getParameter("txtDomicilio"));
		
			
			alumno.setFNacimiento(request.getParameter("txtFechaNac"));
			alumno.setLegajo(Integer.parseInt(request.getParameter("txtLegajo")));
			alumno.setLocalidad(request.getParameter("txtLocalidad"));
			alumno.setMail(request.getParameter("txtMail"));
			alumno.setTelefono(request.getParameter("txtTelefono"));
			alumno.setProvincia(request.getParameter("txtProvincia"));
			alumno.setEstado(true);
			alumno.setID(Integer.parseInt(request.getParameter("txtID")));
			
			
			
			AlumnoNeg.Modificar(alumno);

			RequestDispatcher rd=request.getRequestDispatcher("AlumnoAlta.jsp");  	
			rd.forward(request, response);
			
		
		
		
		
	}

}
