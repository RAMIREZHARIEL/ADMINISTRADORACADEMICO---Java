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


@WebServlet("/ServletListarAlumno")
public class ServletListarAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletListarAlumno() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("btnBuscarAlumnos")!=null)
		{
			
		
			ArrayList<Alumno> listado=null;	
			int legajo=-1;
			String nombre="";
			if(request.getParameter("Legajo").length()>0)
			{
				legajo=Integer.parseInt(request.getParameter("Legajo"));
			}
			if(request.getParameter("NomApe")!=null)
			{
				nombre=request.getParameter("NomApe");
			}
			
			
			if(legajo!=-1 && nombre!=null)
			{
				listado = AlumnoNeg.ListarAlumnos(nombre, legajo);
			}
			else if(legajo!=-1)
			{
				Alumno alumno=AlumnoNeg.ListarAlumnos(legajo);
				request.setAttribute("ListaAlumnos", alumno);
				RequestDispatcher rd=request.getRequestDispatcher("AlumnoListado.jsp");  	
				rd.forward(request, response);
				return;
			}
			else
			{
				listado = AlumnoNeg.ListarAlumnos(nombre);
			}
			
			request.setAttribute("ListaAlumnos", listado);
			RequestDispatcher rd=request.getRequestDispatcher("AlumnoListado.jsp");  	
			rd.forward(request, response);
			
		}
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		if(request.getParameter("btnBuscarAlumnos")!=null)
		{
			
			ArrayList<Alumno> listado=null;	
			int legajo=-1;
			String nombre="";
			if(request.getParameter("Legajo").length()>0)
			{
				legajo=Integer.parseInt(request.getParameter("Legajo"));
			}
			if(request.getParameter("NomApe")!=null)
			{
				nombre=request.getParameter("NomApe");
			}
			
			
			if(legajo!=-1 && nombre!=null)
			{
				listado = AlumnoNeg.ListarAlumnos(nombre, legajo);
			}
			else if(legajo!=-1)
			{
				Alumno alumno=AlumnoNeg.ListarAlumnos(legajo);
				request.setAttribute("ListaAlumnos", alumno);
				RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
				rd.forward(request, response);
				return;
			}
			else
			{
				listado = AlumnoNeg.ListarAlumnos(nombre);
			}
			
			request.setAttribute("ListaAlumnos", listado);

		RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
		rd.forward(request, response);
		}
	}

}
