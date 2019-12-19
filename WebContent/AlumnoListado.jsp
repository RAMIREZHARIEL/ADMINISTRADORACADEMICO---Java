
<%@ page import="Dominio.Alumno" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <link href="assets/img/icons/font/css/open-iconic.css" rel="stylesheet">
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorAlumno.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
  
  
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


</head>
<body>


			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
			<div class="main-panel">
			<div class="container">
					<jsp:include page="Htmls/HeadAlumnos.html"></jsp:include>
						

					</div>
					<form id="formListaAlumnos"  >
					<jsp:include page="Htmls/ListadoAlumnos.html"></jsp:include>
					<div class="text-center">
                  
 
                    <button type="submit" class="btn btn-dark btn-sm" onclick="ListadoAlumnos()" name="btnBuscarAlumnos" value="btnBuscarAlumnos">Buscar</button>
                  </div>
					</form>
					<%
					if(request.getAttribute("ListaAlumnos")!=null)
					{
						ArrayList<Alumno> lista = (ArrayList<Alumno>) request.getAttribute("ListaAlumnos");	
					%>
					
					
				<div class="col-md-12">
                  <div class="table-responsive">
                  
                    <table class="table table-hover" id="TablaListaALumnos">
                      <thead class="">
                      <tr>
                        <th>
                          ID
                        </th>
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
                          F/Nac.
                        </th>
                        <th>
                          Telefono
                        </th>
                        <th>
                          Mail
                        </th>
                        <th>
                          Domicilio
                        </th>
                        <th>
                          Localidad
                        </th>
                        <th>
                          Provincia
                        </th>
                        <th>
                          Modificar
                        </th>
                        <th>
                          Eliminar
                        </th>
                        </tr>
                      </thead>
                      <tbody>
                      

				<% int i=0; 
				for(Alumno alumno : lista)	
				{
					i++;
					String x = "formTablaAlumnos" + Integer.toString(i);
					
					%>
                  						<form id="<%= x %>"> 
                  						
                        <tr>
                        <td> <input type="hidden" name="ID" value="<%= alumno.getID()%>">
                            <%= alumno.getID()%>
                          </td>
                          <td> <input type="hidden" name="Legajo" value="<%= alumno.getLegajo()%>">
                            <%= alumno.getLegajo()%>
                          </td>
                          
                          <td>
                       <%= alumno.getNombre() %>
                          </td>
                          <td>
                      <%= alumno.getApellido() %>
                          </td>
                          <td>
                            <%= alumno.getFNacimiento() %>
                          </td>
                          <td>
                                <%= alumno.getTelefono() %>
                          </td>
                          <td>
                                <%= alumno.getMail() %>
                          </td>
                          <td>
                                <%= alumno.getDireccion() %>
                          </td>
                          <td >
                                <%= alumno.getLocalidad() %>
                          </td>
                          <td>
                                <%= alumno.getProvincia() %>
                          </td>
                          <td>
                            <button class="btn oi" data-glyph="person" aria-hidden="true" onclick="direccionar()" name="btnModificar" id="btnModificar" value="btnModificar" >  </button>

                          </td>
                          <td>
                            <button class="btn oi" data-glyph="trash" aria-hidden="true" onclick="EliminarAlumno()"  id="Elimina" name="btnEliminar" value="btnEliminar" >  </button>

                          </td>
                        </tr>
                          </form>
                        <%
							} //cierra el for	
                        %>


                      </tbody>
                    </table>
                  </div>
                 </div>
                 
                 <%
					///Cierra el if 
					}
					
				
					%>
					
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorAlumno.js"></script>                  

          </div>

</body>
</html>