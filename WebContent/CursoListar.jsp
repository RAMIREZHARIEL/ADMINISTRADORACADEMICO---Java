<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="Dominio.Alumno" %>
        <%@ page import="Dominio.Curso" %>
    <%@ page import="java.util.ArrayList" %>
    
        <%@ page import="Dominio.Docente" %>
        <%@ page import="java.util.function.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
   <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
 
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


</head>
<body>


			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
		<div class="main-panel">
		<div class="container">
					<jsp:include page="Htmls/HeadCursos.html"></jsp:include>
						

					</div>
<div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary ">
                  <h4 class="card-title mt-0 text-center">Listado Cursos vigentes</h4>
               
                <div class="form-row align-items-center">
                <form id="formFiltroAnio" >
                	<select class="custom-select mr-sm-2" onchange="ListadoCursos()" data-size="5" id="FiltroAnio"  name="FiltroAnio">
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
                          Docente
                        </th>
                       
                        <th>
                          Calificar Alumnos
                        </th>
                      </thead>
                      <tbody>

<%
int i=0;
for (Curso curso : list)
{
	i++;
	String x = "TablaVerCursos"+i;
%>
                <form id="<%= x %>">

                        <tr>
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
                          <input type="hidden" name="IDCurso" id="IDCurso" value="<%=curso.getID() %>" >
						<%= curso.getDocente().getID() %>
                          </td>
                      
                          <td>
                            <button type="submit" class="btn" onclick="ListarAlumnosDeCurso(<%=i %>)" name="btnCalificarCurso" id="btnCalificarCurso" value="btnCalificarCurso"> X </button>

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
                   
                
                  



</body>
</html>