package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Docente;
import Negocio.DocenteNeg;


@WebServlet("/ServletListarDocente")
public class ServletListarDocente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletListarDocente() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		if(request.getParameter("btnBuscarDocentes")!=null)
		{
			
		
			ArrayList<Docente> listado=null;	
			int legajo=-1;
			String nombre="";
			if(request.getParameter("txtLegajoDocente").length()>0)
			{
				legajo=Integer.parseInt(request.getParameter("txtLegajoDocente"));
			}
			if(request.getParameter("txtNomApeDocente")!=null)
			{
				nombre=request.getParameter("txtNomApeDocente");
			}
			
			
			if(legajo!=-1 && nombre!=null)
			{
				listado = DocenteNeg.ListarDocentes(nombre, legajo);
			}
			else if(legajo!=-1)
			{
				Docente docente=DocenteNeg.ListarDocentes(legajo);
				request.setAttribute("ListaDocentes", docente);
				RequestDispatcher rd=request.getRequestDispatcher("DocenteListado.jsp");  	
				rd.forward(request, response);
				return;
			}
			else
			{
				listado = DocenteNeg.ListarDocentes(nombre);
			}
			
			request.setAttribute("ListaDocentes", listado);
			RequestDispatcher rd=request.getRequestDispatcher("DocenteListado.jsp");  	
			rd.forward(request, response);
			
		}
		else if(request.getParameter("btnBuscarProfesor")!=null)
		{
			
		
			ArrayList<Docente> listado=null;	
			int legajo=-1;
			String nombre="";
			if(request.getParameter("txtLegajoProfesor").length()>0)
			{
				legajo=Integer.parseInt(request.getParameter("txtLegajoProfesor"));
			}
			if(request.getParameter("txtNombreProfesor")!=null)
			{
				nombre=request.getParameter("txtNombreProfesor");
			}
			
			
			if(legajo!=-1 && nombre!=null)
			{
				listado = DocenteNeg.ListarDocentes(nombre, legajo);
			}
			else if(legajo!=-1)
			{
				Docente docente=DocenteNeg.ListarDocentes(legajo);
				request.setAttribute("ListaDocentes", docente);
				RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
				rd.forward(request, response);
				return;
			}
			else
			{
				listado = DocenteNeg.ListarDocentes(nombre);
			}
			
			request.setAttribute("ListaDocentes", listado);
			RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
			rd.forward(request, response);
			
		}

		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	



	
	
}
}
