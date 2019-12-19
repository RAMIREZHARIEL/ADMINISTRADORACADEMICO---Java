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


@WebServlet("/ServletCalificarCurso")
public class ServletCalificarCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletCalificarCurso() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Alumno> listaAlumnos = null;
		ArrayList<Alumno> listaAlumnosModificada = null;

	if(request.getParameter("btnGuardarNotas")!=null)
	{
		
		Curso curso = new Curso();
		int idCurso = Integer.parseInt(request.getParameter("IDCurso"));
		curso = CursoNeg.ListarCurso(idCurso);
		listaAlumnos = CursoNeg.ListarAlumnosXCurso(idCurso);
		listaAlumnosModificada = new ArrayList<Alumno>();
		
		for (Alumno alumno : listaAlumnos)
		{
			int nota1 = Integer.parseInt(request.getParameter("Nota1ID"+alumno.getID()));
			int nota2 = Integer.parseInt(request.getParameter("Nota2ID"+alumno.getID()));		
			int nota3 = Integer.parseInt(request.getParameter("Nota3ID"+alumno.getID()));
			int nota4 = Integer.parseInt(request.getParameter("Nota4ID"+alumno.getID()));
			
			int aprobado = Integer.parseInt(request.getParameter("TipoLogIn"+alumno.getID()));
			
			alumno.setNota1(nota1);
			alumno.setNota2(nota2);
			alumno.setNota3(nota3);
			alumno.setNota4(nota4);
			if(aprobado==1)
			alumno.setAprobado(true);
			else
				alumno.setAprobado(false);
			listaAlumnosModificada.add(alumno);
		}
	

		curso.setAlumnos(listaAlumnosModificada);
		
		for (Alumno alumno : listaAlumnosModificada)
		{	
			CursoNeg.CalificarCurso(alumno, curso.getID());
		}
		
		
		
		RequestDispatcher rd=request.getRequestDispatcher("CursoListar.jsp");  	
		rd.forward(request, response);
	}	
	
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
}

}
