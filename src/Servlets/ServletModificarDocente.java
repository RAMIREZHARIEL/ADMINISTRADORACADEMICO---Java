package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Alumno;
import Dominio.Docente;
import Negocio.AlumnoNeg;
import Negocio.DocenteNeg;

@WebServlet("/ServletModificarDocente")
public class ServletModificarDocente extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ServletModificarDocente() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		if(request.getParameter("btnModificarDocente")!=null)
		{

			
			int legajo = Integer.parseInt(request.getParameter("LegajoDocente"));
			Docente docente = DocenteNeg.ListarDocentes(legajo);
			
			
			
			request.setAttribute("Docente", docente);
			RequestDispatcher rd = request.getRequestDispatcher("DocenteModificar.jsp");
			rd.forward(request, response);
		
		}
		else if(request.getParameter("btnEliminarDocente")!=null)
		{
			
			
			int ID= Integer.parseInt( request.getParameter("IDDocente"));
			DocenteNeg.Baja(ID);
			
			RequestDispatcher rd=request.getRequestDispatcher("DocenteListado.jsp");  	
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("DocenteListado.jsp");  	
			rd.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		Docente docente = new Docente();
		docente.setApellido(request.getParameter("txtApellidoDocente"));
		docente.setNombre(request.getParameter("txtNombreDocente"));
		docente.setDireccion(request.getParameter("txtDomicilioDocente"));
	
		
		docente.setFNacimiento(request.getParameter("txtFechaNacDocente"));
		docente.setLegajo(Integer.parseInt(request.getParameter("txtLegajoDocente")));
		docente.setLocalidad(request.getParameter("txtLocalidadDocente"));
		docente.setMail(request.getParameter("txtMailDocente"));
		docente.setTelefono(request.getParameter("txtTelefonoDocente"));
		docente.setProvincia(request.getParameter("txtProvinciaDocente"));
		docente.setEstado(true);
		docente.setID(Integer.parseInt(request.getParameter("txtIDDocente")));
		
		
		
		DocenteNeg.Modificar(docente);

		RequestDispatcher rd=request.getRequestDispatcher("DocenteAlta.jsp");  	
		rd.forward(request, response);
		
		
	}

}
