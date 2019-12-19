<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dominio.Docente" %>
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
    <script type="text/javascript" src="assets/js/ControladorDocente.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
  
  
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
</head>
<body>


			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
			<div class="main-panel">
			<div class="container">
					<jsp:include page="Htmls/HeadDocentes.html"></jsp:include>
						

					</div>
					<form id="formListaDocentes"  >
					<jsp:include page="Htmls/ListadoDocentes.html"></jsp:include>
					<div class="text-center">
                  
 
                    <button type="submit" class="btn btn-dark btn-sm" onclick="ListadoDocentes()" id="btnBuscarDocentes" name="btnBuscarDocentes" value="btnBuscarDocentes">Buscar</button>
                  </div>
					</form>
					<%
					if(request.getAttribute("ListaDocentes")!=null)
					{
						ArrayList<Docente> listaDocentes = (ArrayList<Docente>) request.getAttribute("ListaDocentes");	
					%>
					
					
				<div class="col-md-12">
                  <div class="table-responsive">
                  
                    <table class="table table-hover" id="TablaListaDocentes">
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
				for(Docente docente : listaDocentes)	
				{
					i++;
					String x = "formTablaDocentes" + Integer.toString(i);
					
					%>
                  						<form id="<%= x %>"> 
                  						
                        <tr>
                        <td> <input type="hidden" name="IDDocente" value="<%= docente.getID()%>">
                            <%= docente.getID()%>
                          </td>
                          <td> <input type="hidden" name="LegajoDocente" value="<%= docente.getLegajo()%>">
                            <%= docente.getLegajo()%>
                          </td>
                          
                          <td>
                       <%= docente.getNombre() %>
                          </td>
                          <td>
                      <%= docente.getApellido() %>
                          </td>
                          <td>
                            <%= docente.getFNacimiento() %>
                          </td>
                          <td>
                                <%= docente.getTelefono() %>
                          </td>
                          <td>
                                <%= docente.getMail() %>
                          </td>
                          <td>
                                <%= docente.getDireccion() %>
                          </td>
                          <td >
                                <%= docente.getLocalidad() %>
                          </td>
                          <td>
                                <%= docente.getProvincia() %>
                          </td>
                          <td>
                            <button class="btn oi" data-glyph="person" aria-hidden="true" onclick="direccionarDocente()" name="btnModificarDocente" id="btnModificarDocente" value="btnModificarDocente" >  </button>

                          </td>
                          <td>
                            <button class="btn oi" data-glyph="trash" aria-hidden="true" onclick="EliminarDocente()"  id="EliminaDocente" name="btnEliminarDocente" value="btnEliminarDocente" >  </button>

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
					else
					{
						ArrayList<Docente> listaDocentes = null;
					}
		
					
				
					%>
					
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorDocente.js"></script>                  

          </div>



</body>
</html>