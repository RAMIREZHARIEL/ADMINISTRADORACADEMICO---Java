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
import Dominio.Curso;
import Negocio.CursoNeg;


@WebServlet("/ServletListarAlumnosDeCurso")
public class ServletListarAlumnosDeCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletListarAlumnosDeCurso() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Alumno> listaAlumnos = null;
		if(request.getParameter("btnCalificarCurso")!=null)
		{
			Curso curso = new Curso();
			int idCurso = Integer.parseInt( request.getParameter("IDCurso"));
			curso = CursoNeg.ListarCurso(idCurso);
			listaAlumnos = CursoNeg.ListarAlumnosXCurso(idCurso);
			curso.setAlumnos(listaAlumnos);
			
			request.setAttribute("CursoACalificar", curso);
			RequestDispatcher rd=request.getRequestDispatcher("DocenteCalificar.jsp");  	
			rd.forward(request, response);
			
		}
	}

}
