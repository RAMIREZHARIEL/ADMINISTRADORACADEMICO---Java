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
        
        
                      <div class="card card-plain">
                <div class="card-header card-header-primary ">
                  <h4 class="card-title mt-0 text-center">Listado Cursos vigentes</h4>
               
                <div class="form-row align-items-center">
                <form id="formFiltroAnioAdministrador" >

                	<select class="custom-select mr-sm-2" onchange="ListadoCursosVigentes()" data-size="5" id="FiltroAnioAdministrador"  name="FiltroAnioAdministrador">
                		<option value="0">
                		Año  
                		</option>
                		<option value="2020">
                			2020
                		</option>
                		<option value="2019">
                			2019
                		</option>
                		<option value="2018">
                			2018
                		</option>
                		<option value="2017">
                			2017
                		</option>
                		
                	</select>
                </form>
                	</div>
                </div>
                <div class="card-body">
                <%
                
                if(request.getAttribute("ListaCursos")!=null)
                {
                	ArrayList<Curso> list = (ArrayList<Curso>) request.getAttribute("ListaCursos");
                
                %>
            <div class="table-responsive">
                    <table class="table table-hover">
                      <thead class="">
                        <th>
                          Materia
                        </th>
                        <th>
                          Semestre
                        </th>
                        <th>
                          Año
                        </th>
                        
                       
                        <th>
                          Ver curso
                        </th>
                      </thead>
                      <tbody>

<%
int i=0;
for (Curso curso : list)
{
	i++;
	String x = "VerCursos"+i;
%>
                <form id="<%= x %>">

                        <tr>
                          <input type="hidden" name="IDCurso" id="IDCurso" value="<%=curso.getID() %>" >
                          <td>
                          <%= curso.getMateria() %>
                          </td>
                          <td>
						<%= curso.getSemestre() %>
                          </td>
                          <td>
                         <%= curso.getAnio() %>
                          </td>
           
                      
                          <td>
                            <button type="submit" class="btn btn-primary" onclick="VerCurso(<%=i %>)" name="btnVerCurso" id="btnVerCurso" value="btnVerCurso"> X </button>

                          </td>
                        
                        </tr>
                  </form>
                      <%
                      }
                      %>


                      </tbody>
                    </table>
                  </div>
                  
                  <%
                  }
                  %>
                </div>

          </div>
        
        
        
        

    </div>
     </div>
</div>
    <script type="text/javascript" src="assets/js/ControladorListado.js"></script>


</body>
</html>