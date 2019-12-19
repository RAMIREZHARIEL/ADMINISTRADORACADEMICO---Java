<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="Dominio.Curso" %>
        <%@ page import="Dominio.Alumno" %>
    
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
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
    
  
  
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
</head>
<body>

<div class="wrapper ">

<jsp:include page="Htmls/PanelLateralDocente.html"></jsp:include>
    
   
    
    
    <!--  TERMINA -->
    
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
                      if(request.getAttribute("CursoACalificar")!=null)
                      {
                    	 Curso curso = (Curso) request.getAttribute("CursoACalificar");
                    	 %>
							<input type="hidden" name="IDCurso" value="<%= curso.getID()%>">
	                     <% 
	                      for(Alumno alumno : curso.getAlumnos() )	
							{

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
                          <input type="text" class="form-control-sm " size="5" name="Nota1ID<%=alumno.getID() %>" value="<%=alumno.getNota1() %>">
                         </td> 
                         <td>
                          <input type="text" class="form-control-sm" size="5" name="Nota2ID<%=alumno.getID() %>" value="<%=alumno.getNota2() %>">
                         </td> 
                         <td>
                          <input type="text" class="form-control-sm" size="5" name="Nota3ID<%=alumno.getID() %>" value="<%=alumno.getNota3() %>">
                         </td> 
                         <td>
                          <input type="text" class="form-control-sm" size="5" name="Nota4ID<%=alumno.getID() %>" value="<%=alumno.getNota4() %>">
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
                    <button type="submit" onclick="GuardarNotas()" name="btnGuardarNotas" value="btnGuardarNotas" class="btn btn-primary pull-right">Guardar notas</button>
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

</body>
</html>