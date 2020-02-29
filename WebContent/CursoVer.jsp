<%@page import="Negocio.DocenteNeg"%>
<%@page import="Negocio.CursoNeg"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                <%@ page import="Dominio.Alumno" %>
        <%@ page import="Dominio.Curso" %>
    <%@ page import="java.util.ArrayList" %>
    
        <%@ page import="Dominio.Docente" %>
        <%@ page import="java.util.function.*" %>
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
  
    <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
<title>TP Integrador</title>
</head>
<body>

<div class="wrapper ">

<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
    
   
    
    
    <!--  TERMINA -->
    
        <div class="main-panel">
        <div class="container">
        
                <jsp:include page="Htmls/HeadCursos.html"></jsp:include>
        
        <% int IDCurso;
        	if(request.getAttribute("IDCurso")!=null)
        	{
        		IDCurso = (int)(request.getAttribute("IDCurso"));
        		Docente docente = new Docente();
        		Curso curso = new Curso();
        		curso = CursoNeg.ListarCurso(IDCurso);
        		docente = curso.getDocente();
        		ArrayList<Alumno> listadoAlumnos = curso.getAlumnos();
        		%>
        		
        		  <div class="card card-plain">
                <div class="card-header card-header-primary ">
                  <h4 class="card-title mt-0 text-center"><%=curso.getMateria() %> </h4>
               

        		</div>
        		</div>
        		
        		 <div class="card-body">

                     <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Anio</label>
                          <input type="text" class="form-control"  name="txtAnio" readonly="readonly" value="<%= curso.getAnio()%>" >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Semestre</label>
                          <input type="text" class="form-control"  name="txtSemestre" readonly="readonly" value="<%= curso.getSemestre() %>" >
                        </div>
                      </div>
                    </div>
                    
                       <h3 style="text-align:center" class="bmd-label-floating  bg-secondary text-light" >Docente</h3>
                        <div class="row">
                        
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nombre y apellido</label>
                          <input type="text" class="form-control"  name="txtDocente"  readonly="readonly" value="<%=  docente.getApellido() + " " + docente.getNombre() %>">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Legajo </label>
                          <input type="text" class="form-control" name="txtTelefono"  readonly="readonly" value="<%= docente.getLegajo() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email</label>
                          <input type="email" class="form-control" name="txtMail"  readonly="readonly" value="<%=  docente.getMail() %>">
                        </div>
                      </div>
                    </div>
                    
                     <h3 style="text-align:center" class="bmd-label-floating bg-secondary text-light" >Alumnos</h3>
                    
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
                          Email
                        </th>
                        <th>
                          Estado
                        </th>
                       
                        
                      </thead>
                      
                      <tbody>

	                     <% 
	                      for(Alumno alumno : listadoAlumnos )	
							{

							%>
                     
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
                          <%= alumno.getMail() %>
                          </td>
				
                     
                         <td>
                          <% if(alumno.isAprobado())
                        	  {
                        	  %>
                        	  Aprobado
                        	   <%
                        	  }
                        	  else
                        	  {
                        		  %>
                        		Pendiente aprobacion
                        	 <% }%>

                         </td> 
                          
                          
                        </tr>
					
					<%
							}
                      
					%>

                      </tbody>
                    </table>
                    
                    		<%
							}
                      
					%>

        </div>
        </div>
        </div>

</body>
</html>