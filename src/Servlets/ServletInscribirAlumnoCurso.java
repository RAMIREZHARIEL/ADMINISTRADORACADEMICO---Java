package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletInscribirAlumnoCurso")
public class ServletInscribirAlumnoCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ServletInscribirAlumnoCurso() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	if(request.getParameter("btnInscribir")!=null)
	{
		int idAlumno = Integer.parseInt( request.getParameter("IDAlumno"));
		
	}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
