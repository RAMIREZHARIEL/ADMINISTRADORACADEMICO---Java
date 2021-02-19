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
import javax.servlet.http.HttpSession;

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
//		validarSesion(request,response);
//        try {
		
//            req.setAttribute("cursos", CursosService.obtenerCursos((Integer)req.getSession().getAttribute("legajo"),(Integer)req.getSession().getAttribute("idTipoUsuario")));
//            req.getRequestDispatcher("/Cursos.jsp").forward(req, resp);
//        }catch(Exception e){
//            e.printStackTrace();
//            redireccionar(req,resp, "login");
//        }
		
		

	}
	

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("btnGuardar")!=null)
		{
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
			
			
			if(AlumnoNeg.ValidarIngreso(alumno.getLegajo())==0)
			{
				AlumnoNeg.guardar(alumno);				
			}
			RequestDispatcher rd=request.getRequestDispatcher("AlumnoAlta.jsp");  	
			rd.forward(request, response);

		}
		
	}

}
