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
import Dominio.Docente;
import Negocio.AlumnoNeg;
import Negocio.CursoNeg;
import Negocio.DocenteNeg;

@WebServlet("/ServletAltaCurso")
public class ServletAltaCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ServletAltaCurso() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
		
//		if(request.getParameter("btnAgregarDocente")!=null)
//		{
//			
//
//				Docente docente = new Docente();
//				docente.setID(Integer.parseInt(request.getParameter("IDDocente")));
//				docente.setApellido(request.getParameter("ApellidoProfesor"));
//				docente.setNombre(request.getParameter("NombreProfesor"));
//				Curso curso = new Curso();
//				curso.setAnio(Integer.parseInt(request.getParameter("AnioIngresado")));
//				curso.setMateria(request.getParameter("MateriaIngresada"));
//				curso.setEliminado(false);
//				curso.setSemestre(request.getParameter("SemestreIngresado"));
//				curso.setDocente(docente);
//				
//				request.setAttribute("DatosCursoConProfesor", curso);
//				
//				RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
//				rd.forward(request, response);
//			
//
//		}
		
		
		
		
//		if(request.getParameter("btnInscribirAlumnos")!=null)
//		{
//			
//			ArrayList<Alumno> listado= new ArrayList<>();	
//			String check[] = request.getParameterValues("chxAlumno");
//			if(check!=null)
//			{
//				for (int i=0; i<check.length;i++)
//				{
//					listado.add(AlumnoNeg.ListarAlumnos(Integer.parseInt(check[i])));
//				}
//			}
//			
//			request.setAttribute("ListaAlumnosInscriptos", listado);
//			RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  
//			rd.forward(request, response);
//
//		}
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		if(request.getParameter("btnAltaCurso")!=null)
		{
			if(request.getParameter("MateriaIngresada")!=null)
			{
				
				Curso curso = new Curso();
				curso.setAnio(Integer.parseInt(request.getParameter("AnioIngresado")));
				curso.setMateria(request.getParameter("MateriaIngresada"));
				curso.setEliminado(false);
				curso.setSemestre(request.getParameter("SemestreIngresado"));
				
				request.setAttribute("DatosCurso", curso);

				
				RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
				rd.forward(request, response);
			}

		}
		if(request.getParameter("btnAgregarDocente")!=null)
		{
			
				Curso curso = new Curso();
				curso.setAnio(Integer.parseInt(request.getParameter("AnioIngresado")));
				curso.setMateria(request.getParameter("MateriaIngresada"));
				curso.setEliminado(false);
				curso.setSemestre(request.getParameter("SemestreIngresado"));
				request.setAttribute("Curso", curso);
			
				
				RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  	
				rd.forward(request, response);
			

		}

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
		if(request.getParameter("btnBuscarProfesor")!=null)
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
		if(request.getParameter("btnGuardarCurso")!=null)
		{
			Curso curso = new Curso();
			ArrayList<Alumno> listado= new ArrayList<>();	
			String check[] = request.getParameterValues("chxAlumno");
			if(check!=null)
			{
				for (int i=0; i<check.length;i++)
				{
					listado.add(AlumnoNeg.ListarAlumnos(Integer.parseInt(check[i])));
				}
			}
			curso.setAlumnos(listado);			
			curso.setAnio(Integer.parseInt(request.getParameter("AnioIngresado")));
			curso.setMateria(request.getParameter("MateriaIngresada"));
			curso.setEliminado(false);
			curso.setSemestre(request.getParameter("SemestreIngresado"));
			Docente docente = new Docente();
			docente.setID(Integer.parseInt(request.getParameter("ProfesorSeleccionado")));
			curso.setDocente(DocenteNeg.ListarDocenteID(docente.getID()));
			
			String query2 = "select MAX(ID) as 'MAX' from Cursos";
			CursoNeg.guardar(curso);
			int maxID = CursoNeg.BuscarMaxId(query2);
			for (Alumno alumno : curso.getAlumnos())
			{
			CursoNeg.guardarAlumno(alumno,maxID);
			}
			
			
			RequestDispatcher rd=request.getRequestDispatcher("CursoAlta.jsp");  
			rd.forward(request, response);
		
			
		}
		
		
		
	}

}
