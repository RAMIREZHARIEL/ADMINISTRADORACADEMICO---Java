<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="Dominio.Curso" %>
        <%@ page import="Dominio.Alumno" %>
    
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<%@ page import="Servlets.MiServlet" %>

<% MiServlet.validarSesion(request,response);%>
<html>
<%@ page import="Servlets.MiServlet" %>

<% MiServlet.validarSesion(request,response);%>
<head>
<meta charset="ISO-8859-1">

  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <link href="assets/img/icons/font/css/open-iconic.css" rel="stylesheet">
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorAltaCurso.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
      <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
      <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    
<title>TP Integrador</title>
</head>
<body>


<div class="sidebar" data-color="purple" data-background-color="white" data-image="assets/img/sidebar-1.jpg">

      <div class="logo">
        <a class="simple-text logo-normal active">
          DOCENTE
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<form id="FormDocenteDireccionar2" action="ServletDireccionarDocente" method="post" >
        	<li class="nav-item" >	
        	<% 
        	
        	int IDDocente=-1;
        	if(request.getAttribute("IDDocente")!=null)
        		{
        		 IDDocente= (int)request.getAttribute("IDDocente");
        		%>
			<input type="hidden"  value="<%=IDDocente %>" name="IDDocente" >
			<%} %>	
            <a type="submit" href="javascript:{}" onclick="document.getElementById('FormDocenteDireccionar2').submit()" class="nav-link"   >
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
    <div class="wrapper ">
    		<div class="container">
    
        <div class="main-panel">
       
            <div class="row">  
<div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary ">
                  <h4 class="card-title mt-0 text-center">Calificar Alumnos</h4>
                  <p class="card-category text-white text-center"> Curso</p>
                  </div>
				<div class="card-body">
				
				<%
				if(request.getParameter("btnCalificarCurso")!=null)
				{
				
				
				%>
			<form id="TablaCalificarCurso">	
			
			   <input type="hidden" name="IDDocente" value="<%=IDDocente%>">
			
			
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead class="">
                        <th>
                          Legajo
                        </th>
                        <th>
                          Nombre
                        </th>
                        <th>
                          Apellido
                        </th>
                        <th>
                          1er Parcial
                        </th>
                        <th>
                          1er Recup.
                        </th>
                        <th>
                          2do Parcial
                        </th>
                        <th>
                          2do Recup.
                        </th>
                        <th>
                          Estado
                        </th>
                        
                      </thead>
                      
                      <tbody>
                      <%
	                     int contAlumnos = 0;
                      if(request.getAttribute("CursoACalificar")!=null)
                      {
                    	 Curso curso = (Curso) request.getAttribute("CursoACalificar");
                    	 %>
							<input type="hidden" name="IDCurso" value="<%= curso.getID()%>">
	                     <% 
	                      for(Alumno alumno : curso.getAlumnos() )	
							{
	                    	  contAlumnos++;
							%>
				<input type="hidden" name="IDAlumno" value="<%= alumno.getID()%>">
                     
                        <tr>
                          <td>
                            <%= alumno.getLegajo() %>
                          </td>
                          <td>
                          <%= alumno.getNombre() %>
                          </td>
                          <td>
                          <%= alumno.getApellido() %>
                          </td>
				
                         <td>
                          <input id="Nota1ID<%=contAlumnos %>" type="text" class="form-control-sm " size="5" name="Nota1ID<%=alumno.getID() %>" value="<%=alumno.getNota1() %>">
                         </td> 
                         <td>
                          <input id="Nota2ID<%=contAlumnos %>" type="text" class="form-control-sm" size="5" name="Nota2ID<%=alumno.getID() %>" value="<%=alumno.getNota2() %>">
                         </td> 
                         <td>
                          <input id="Nota3ID<%=contAlumnos %>" type="text" class="form-control-sm" size="5" name="Nota3ID<%=alumno.getID() %>" value="<%=alumno.getNota3() %>">
                         </td> 
                         <td>
                          <input id="Nota4ID<%=contAlumnos %>" type="text" class="form-control-sm" size="5" name="Nota4ID<%=alumno.getID() %>" value="<%=alumno.getNota4() %>">
                         </td> 
                         <td>
                            <select class="btn btn-primary btn-md" name="TipoLogIn<%=alumno.getID() %>" >
                            
               		<option value="1" <% if(alumno.isAprobado()) { %> selected<%} %> > Aprobado </option>
               		
					<option value="0"  <%if(!alumno.isAprobado()){ %>selected<%} %>>Desaprobado </option>
					</select>
                         </td> 
                          
                          
                        </tr>
					
					<%
							}
                      }
					%>

                      </tbody>
                    </table>
                    <button type="submit" onclick="GuardarNotas(<%=contAlumnos %>)" name="btnGuardarNotas" value="btnGuardarNotas" class="btn btn-primary pull-right">Guardar notas</button>
                  </div>
                  </form>
                  <% 
				}
                  %>
            </div>	    
</div>
                </div> 
                </div>
</div>
    
     </div>
     
</div>

</body>
</html>