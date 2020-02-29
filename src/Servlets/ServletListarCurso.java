package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Curso;
import Dominio.Docente;
import Negocio.CursoNeg;


@WebServlet("/ServletListarCurso")
public class ServletListarCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletListarCurso() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("FiltroAnio")!=null)
		{
			if(request.getParameter("IDDocente")!=null)
			{
				//Docente docente = (Docente)request.getAttribute("Docente");
				int IDDocente = Integer.parseInt( request.getParameter("IDDocente"));
				int anio = Integer.parseInt( request.getParameter("FiltroAnio"));
				ArrayList<Curso> listado = CursoNeg.ListarCursos(anio,IDDocente);
				request.setAttribute("ListaCursos", listado);
				request.setAttribute("IDDocente", IDDocente);
				
			}
			
			
			
			RequestDispatcher rd=request.getRequestDispatcher("CursoListar.jsp");  	
			rd.forward(request, response);
		}
		if(request.getParameter("FiltroAnioAdministrador")!=null)
		{
			int anio = Integer.parseInt( request.getParameter("FiltroAnioAdministrador"));
			ArrayList<Curso> listado = CursoNeg.ListarCursos(anio);
			request.setAttribute("ListaCursos", listado);

			RequestDispatcher rd=request.getRequestDispatcher("AdministradorCursosVigentes.jsp");  	
			rd.forward(request, response);
			
		}
		if(request.getParameter("btnVerCurso")!=null)
		{
			int IDCurso = Integer.parseInt(request.getParameter("IDCurso"));
			request.setAttribute("IDCurso", IDCurso);
			RequestDispatcher rd=request.getRequestDispatcher("CursoVer.jsp");  	
			rd.forward(request, response);
		}
		
	
	}

}
