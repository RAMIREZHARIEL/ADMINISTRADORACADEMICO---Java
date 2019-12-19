<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="Dominio.Docente" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  
  <script type="text/javascript" src="assets/js/ControladorListado.js"></script>
    <script type="text/javascript" src="assets/js/ControladorDocente.js"></script>
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


<title>TP Integrador</title>
</head>
<body>


<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
		<div class="main-panel">
		<div class="container">
					<jsp:include page="Htmls/HeadDocentes.html"></jsp:include>
					
							
							                  <%	if(request.getAttribute("Docente")!=null)
                	  {
                	  
                	  Docente docente= (Docente) request.getAttribute("Docente");
                	  
                	  %>
		<div class="row">
            <div class="col-md">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Editar Docente</h4>
                  <p class="card-category">Datos personales</p>
                </div>
                <div class="card-body">
                  <form id="FormModificarDocente"> 
                  
                                    <div class="row">
                         <div class="col-md-3">
                         <div class="form-group">
                            <label class="bmd-label-floating">ID</label>
                          <input type="text" class="form-control" readonly="readonly" id="txtIDDocente" name="txtIDDocente" value="<%= docente.getID()%>" >
                       
                            </div>        
							</div>         
                                   </div> 
                  

                  <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nombres</label>
                          <input type="text" class="form-control" id="txtNombreDocente" name="txtNombreDocente" value="<%=docente.getNombre()%>" >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Apellidos</label>
                          <input type="text" class="form-control" id="txtApellidoDocente" name="txtApellidoDocente" value="<%= docente.getApellido() %>" >
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Legajo</label>
                          <input type="text" class="form-control"  name="txtLegajoDocente" id="txtLegajoDocente" value="<%= docente.getLegajo() %>">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Telefono</label>
                          <input type="text" class="form-control" name="txtTelefonoDocente" id="txtTelefonoDocente" value="<%= docente.getTelefono() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email</label>
                          <input type="email" class="form-control" name="txtMailDocente" id="txtMailDocente" value="<%= docente.getMail() %>">
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Domicilio</label>
                          <input type="text" class="form-control" name="txtDomicilioDocente" id="txtDomicilioDocente" value="<%= docente.getDireccion() %>">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Localidad</label>
                          <input type="text" class="form-control" name="txtLocalidadDocente" id="txtLocalidadDocente" value="<%= docente.getLocalidad() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Provincia</label>
                          <input type="text" class="form-control" name="txtProvinciaDocente" id="txtProvinciaDocente" value="<%= docente.getProvincia() %>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Fecha de nacimiento</label>
                          <input type="date" class="form-control" name="txtFechaNacDocente" id="txtFechaNacDocente" value="<%= docente.getFNacimiento() %>">
                        </div>
                      </div>
                    </div>

                    <button type="submit" class="btn btn-primary pull-right" onclick="ModificarDocente()"  name="btnGuardarDocente" value="btnGuardarDocente">  Guardar</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
          
          <% } %>
          
         
         


          </div>
		               </div>




</body>
</html>