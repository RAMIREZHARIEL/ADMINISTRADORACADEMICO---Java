<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dominio.Usuario"%>
    <%@ page import="Dominio.Docente"%>
    <%@ page import="Negocio.DocenteNeg" %>
    
<!DOCTYPE html>
<html>
    <%@ page import="Servlets.MiServlet" %>
    <% MiServlet.validarSesion(request,response);%>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
   <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
    <script type="text/javascript" src="assets/js/ControladorDocente.js"></script>
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
<title>TP Integrador</title>
</head>
<body>
<div class="wrapper ">

	<%
	
	Usuario usuario = (Usuario)session.getAttribute("Usuario"); 	
	Docente docente = new Docente();
	if(usuario!=null)
	{
	 docente = DocenteNeg.ListarDocentes(usuario.getIDUsuario());
	}
	else
	{
		docente.setID(0);
		
	}
	request.setAttribute("Docente", docente);
	request.setAttribute("Usuario", usuario);

	
		
	%>



<div class="sidebar" data-color="purple" data-background-color="white" data-image="assets/img/sidebar-1.jpg">

      <div class="logo">
        <a  class="simple-text logo-normal active">
          DOCENTE
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<form id="FormDocenteDireccionar" action="ServletDireccionarDocente" method="post" >
        	<li class="nav-item" >	
			<input type="hidden"  value="<%=docente.getID() %>" name="IDDocente" >
            <a type="submit" href="javascript:{}" onclick="document.getElementById('FormDocenteDireccionar').submit()" class="nav-link"   >
              <i class="material-icons">content_paste</i>
              <p>Mis Cursos</p>
            </a>

          </li>
</form>

    
          
         
           <li class="nav-item ">
            <a class="nav-link" href="Login.jsp">
              <i class="material-icons">logout</i>
              <p>Salir</p>
            </a>
          </li>
          

        </ul>
      </div>
    </div>    

    
    
    <!--  TERMINA -->
    

</div>
    <script type="text/javascript" src="assets/js/ControladorDocente.js"></script>

</body>
</html>