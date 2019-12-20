<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dominio.Alumno" %>
    
<!DOCTYPE html>
<%@ page import="Servlets.MiServlet" %>

<% MiServlet.validarSesion(request,response);%>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorAlumno.js"></script>
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


<title>TP Integrador</title>
</head>
<body>


			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
		<div class="main-panel">
		<div class="container">
					<jsp:include page="Htmls/HeadAlumnos.html"></jsp:include>
					
							
							                  <%	if(request.getAttribute("Alumno")!=null)
                	  {
                	  
                	  Alumno alumno = (Alumno) request.getAttribute("Alumno");
                	  
                	  %>
		<div class="row">
            <div class="col-md">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Editar Alumno</h4>
                  <p class="card-category">Datos personales</p>
                </div>
                <div class="card-body">
                  <form id="FormModificarAlumno"> 
                  
                                    <div class="row">
                         <div class="col-md-3">
                         <div class="form-group">
                            <label class="bmd-label-floating">ID</label>
                          <input type="text" class="form-control" readonly="readonly" id="txtIDModificarAlumno" name="txtID" value="<%= alumno.getID()%>" >
                       
                            </div>        
							</div>         
                                   </div> 
                  

                  <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nombres</label>
                          <input type="text" class="form-control" id="txtNombreModificarAlumno" name="txtNombre" required value="<%= alumno.getNombre()%>" >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Apellidos</label>
                          <input type="text" class="form-control" id="txtApellidoModificarAlumno" name="txtApellido" required value="<%= alumno.getApellido() %>" >
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Legajo</label>
                          <input type="text" class="form-control"  name="txtLegajo" id="txtLegajoModificarAlumno" required value="<%= alumno.getLegajo() %>">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Telefono</label>
                          <input type="text" class="form-control" name="txtTelefono" id="txtTelefonoModificarAlumno" required value="<%= alumno.getTelefono() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email</label>
                          <input type="email" class="form-control" name="txtMail" id="txtMailModificarAlumno" required value="<%= alumno.getMail() %>">
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Domicilio</label>
                          <input type="text" class="form-control" name="txtDomicilio" id="txtDomicilioModificarAlumno" required value="<%= alumno.getDireccion() %>">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Localidad</label>
                          <input type="text" class="form-control" name="txtLocalidad" id="txtLocalidadModificarAlumno" required value="<%= alumno.getLocalidad() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Provincia</label>
                          <input type="text" class="form-control" name="txtProvincia" id="txtProvinciaModificarAlumno" required value="<%= alumno.getProvincia() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Fecha de nacimiento</label>
                          <input type="date" class="form-control" name="txtFechaNac" id="txtFechaNacModificarAlumno" required value="<%= alumno.getFNacimiento() %>">
                        </div>
                      </div>
                    </div>

                    <button type="submit" class="btn btn-primary pull-right" onclick="ModificarAlumno()"  name="btnGuardar" value="btnGuardar">  Guardar</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
          
          <% } %>
          
         
         


          </div>
		                <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorAlumno.js"></script>
  
		               </div>
		               


</body>
</html>