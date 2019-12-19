package Servlets;

import java.io.IOException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Alumno;
import Negocio.AlumnoNeg;
import Negocio.UsuarioNeg;


@WebServlet("/ServletAltaAlumno")
public class ServletAltaAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletAltaAlumno() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


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
			
			
			
			AlumnoNeg.guardar(alumno);

			RequestDispatcher rd=request.getRequestDispatcher("AlumnoAlta.jsp");  	
			rd.forward(request, response);

	}
	

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
