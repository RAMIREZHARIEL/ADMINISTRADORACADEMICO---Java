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
import Dominio.Usuario;
import Negocio.AlumnoNeg;
import Negocio.DocenteNeg;
import Negocio.UsuarioNeg;

@WebServlet("/ServletAltaDocente")
public class ServletAltaDocente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ServletAltaDocente() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		
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
		
		
		
		DocenteNeg.guardar(docente);
		Usuario usser = new Usuario();
		usser.setEliminado(false);
		usser.setUsser(request.getParameter("txtMailDocente"));
		usser.setTipo("Docente");
		usser.setPassword(request.getParameter("txtLegajoDocente"));
		UsuarioNeg.guardar(usser);

		RequestDispatcher rd=request.getRequestDispatcher("DocenteAlta.jsp");  	
		rd.forward(request, response);
	}

}
