<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dominio.Alumno" %>
        <%@ page import="Dominio.Curso" %>
    
        <%@ page import="Dominio.Docente" %>
        <%@ page import="java.util.function.*" %>
        
    
<%@ page import="java.util.ArrayList" %>
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
      <script type="text/javascript" src="assets/js/ControladorAltaCurso.js"></script>
        <link href="assets/img/icons/font/css/open-iconic.css" rel="stylesheet">
      
  

  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


<title>TP Integrador</title>



</head>
<body>

	               
	               
			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
		<div class="main-panel">
		<div class="container">
		
					<jsp:include page="Htmls/HeadCursos.html"></jsp:include>
					
					<div class="row" >
					 <div class="col-md-12 border">
					 <div id="HabilitarDatosCurso">
					 
			<form id="formDatosCurso">
			<div class="text-center">
		
			 <input type="hidden" name="MateriaIngresada" id="MateriaIngresada" value=""> 
	             <input type="hidden" name="SemestreIngresado" id="SemestreIngresado" value=""> 
	            <input type="hidden" name="AnioIngresado" id="AnioIngresado" value=""> 
	              
					<jsp:include page="Htmls/NuevoCurso.html"></jsp:include>
                    <button  type="submit" class="btn btn-dark btn-sm text-center" onclick="HabilitarProfesores()" id="btnAltaCurso" name="btnAltaCurso" value="btnAltaCurso">Alta Curso</button>

		<% 
		boolean habilitarProfesores=false;
		boolean habilitarAlumnos = false;
		if(request.getParameter("btnAltaCurso")!=null) 
			{
				String materia = request.getParameter("MateriaIngresada");
				String semestre = request.getParameter("SemestreIngresado");
				int anio = Integer.parseInt(request.getParameter("AnioIngresado"));
         	   habilitarProfesores = true;

				
			%>	
			 <input type="hidden" name="MateriaIngresada" id="MateriaIngresada2" value="<%=materia%>"> 
			 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado2" value="<%=semestre%>"> 
			 <input type="hidden" name="AnioIngresado" id="AnioIngresado2" value="<%=anio%>" > 
			  			<script type="text/javascript" > 
			
							
								
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById("MateriaIngresada2").value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById("SemestreIngresado2").value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById("AnioIngresado2").value;
							anioIngresado.disabled = true;
							
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							document.getElementById("btnAltaCurso").disabled = true;
							

			</script>
				

				<% 
				
			}%>	

				</div>
				


				</form>	
				
				</div>
					 </div>
					</div>
					
					
					
					

					
					 <div class="row">
					 
          <div class="col-md-6 border">
         	<div id="HabilitarProfesores" style="visibility: hidden;" >
          <form id="formListaDocentes" >
          
             <div class="text-center">
                  
                  
 
	                 <jsp:include page="Htmls/ListadoProfesores.html"></jsp:include>	
	             <input type="hidden" name="MateriaIngresada" id="MateriaIngresada3"  > 
			 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado3" > 
			 <input type="hidden" name="AnioIngresado" id="AnioIngresado3" > 
                    <button  type="submit" class="btn btn-dark btn-sm" onclick="ListarProfesores()" id="btnBuscarProfesor" name="btnBuscarProfesor" value="btnBuscarProfesor">Buscar</button>
                  </div>
                  
                  <% 
                  
                  if(request.getParameter("btnBuscarProfesor")!=null || request.getParameter("btnConfirmarProfesor")!=null)
                	  {
                	  String materia = request.getParameter("MateriaIngresada");
      				String semestre = request.getParameter("SemestreIngresado");
      				int anio = Integer.parseInt(request.getParameter("AnioIngresado"));
                	   habilitarProfesores = false;
                	   habilitarAlumnos=false;
                	   
                	  
                	  %>
                	   <input type="hidden" name="MateriaIngresada" id="MateriaIngresada4" value="<%=materia %>" > 
			 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado4" value="<%=semestre%>"> 
			 <input type="hidden" name="AnioIngresado" id="AnioIngresado4" value="<%= anio%>"> 
                <script type="text/javascript" > 
			
							
								
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById("MateriaIngresada4").value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById("SemestreIngresado4").value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById("AnioIngresado4").value;
							anioIngresado.disabled = true;
							
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							

			</script>
       
                	  <% }%>

		</form>	                 
	                 
	                 <%
					if(request.getAttribute("ListaDocentes")!=null)
					{
 							ArrayList<Docente> listaDocentes = (ArrayList<Docente>) request.getAttribute("ListaDocentes");	
					
					%>
						 <div class="table-responsive">
		                    <table class="table table-hover">
		                      <thead class="">
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
		                          Seleccionar
		                        </th>
		                      </thead>
		                      <% 
		                      int i=0; 
		                      for(Docente docente : listaDocentes)	
								{
		                    	  i++;
		      					String x = "formTablaDocentesAltaCurso" + Integer.toString(i);
		      					String MateriaId = "MateriaIngresada" + Integer.toString(i+5);
		      					String SemestreId = "SemestreIngresado" + Integer.toString(i+5);
		      					String AnioId = "AnioIngresado" + Integer.toString(i+5);

								%>
		                      <tbody>
		                      
                  						<form id="<%= x %>"> 
			      <input type="hidden" name="MateriaIngresada" id="<%= MateriaId%>" value="<%=request.getParameter("MateriaIngresada") %>" > 
				 <input type="hidden" name="SemestreIngresado" id="<%= SemestreId%>" value="<%= request.getParameter("SemestreIngresado")%>"> 
				 <input type="hidden" name="AnioIngresado" id="<%= AnioId%>" value="<%= request.getParameter("AnioIngresado") %>">
			
				      <input type="hidden" id="MatID" value="<%= MateriaId%>" > 
				      <input type="hidden" id="SemID" value="<%= SemestreId%>" > 
				      <input type="hidden" id="AniID" value="<%= AnioId%>" > 
			
			
							 <input type="hidden" name="ProfesorSeleccionado"  value="<%= docente.getLegajo() %>">
			
			
		                 
		<script type="text/javascript" > 
			
							
							
						
							var IDMATE=document.getElementById("MatID");
							var IDSEM=document.getElementById("SemID");
							var IDANI=document.getElementById("AniID");

							
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById(IDMATE).value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById(IDSEM).value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById(IDANI).value;
							anioIngresado.disabled = true;
							
							
							document.getElementById("btnAltaCurso").disabled = true;
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
							

			</script>

										<%
		                        
		                        	
		                        %>
		                        <tr>
		                        <td>
		                        <input type="hidden" name="IDDocente" value="<%= docente.getID()%>">
					         <%= docente.getID()%>
		                        </td>
		                          <td>
		                            <%= docente.getLegajo() %>
		                          </td>
		                          <td>
		                    		<%= docente.getNombre() %>

		                          </td>
		                          <td>
		                            <%= docente.getApellido() %>

		                          </td>

		                          <td>
		                            <button  type="submit" class="btn" data-glyph="add" aria-hidden="true" id="btnAgregarDocente" name="btnAgregarDocente" value="btnAgregarDocente" onclick="SeleccionarProfesor(<%=x %>)"  > X </button>
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



	                 
	                    <div class="col-md-6 border">
          					<div id="HabilitarAlumnos" style="visibility: hidden;" >
	                    <form action="" id="formListaAlumnos2">
					<div class="text-center"> 
					
					 <jsp:include page="Htmls/ListadoAlumnos.html"></jsp:include>
					 
					 	<% 
		
		boolean habilitarTodo = false;
		if(request.getParameter("btnAgregarDocente")!=null) 
			{
	
         	   habilitarTodo = true;

				
			%>	
					 
		 <input type="hidden" name="MateriaIngresada" id="MateriaIngresada60" value="<%=request.getParameter("MateriaIngresada") %>" > 
		 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado60" value="<%= request.getParameter("SemestreIngresado")%>"> 
		 <input type="hidden" name="AnioIngresado" id="AnioIngresado60" value="<%= request.getParameter("AnioIngresado") %>">
		 <input type="hidden" name="ProfesorSeleccionado" id="ProfesorSeleccionado60" value="<%= request.getParameter("ProfesorSeleccionado") %>">
					 
					<script type="text/javascript" > 
			
							
					
					var doc = document.getElementById("txtDocenteCurso");
					doc.value = document.getElementById("ProfesorSeleccionado60").value;
					doc.disabled=true;			
					var mate = document.getElementById("txtMateriaCurso");
					mate.value = document.getElementById("MateriaIngresada60").value;
					mate.disabled = true;
					var sem = document.getElementById("txtSemestreCurso");
					sem.value = document.getElementById("SemestreIngresado60").value;
					sem.disabled=true;
					var anioIngresado = document.getElementById("txtAnioCurso");
					anioIngresado.value=document.getElementById("AnioIngresado60").value;
					anioIngresado.disabled = true;
							
					
							//document.getElementById("btnBuscarProfesor").disabled = true;
							
									document.getElementById("txtNombreProfesor").disabled = true;
									document.getElementById("txtLegajoProfesor").disabled = true;
							document.getElementById("btnBuscarProfesor").disabled = true;
							document.getElementById("btnAltaCurso").disabled = true;
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
							

			</script>		 
                  <% 
                  }
                  %>
					 
					 
                      <%
//                       if(request.getAttribute("DatosCursoConProfesor")!=null)
//                       {
// 	                    	  habilitarAlumnos=true;
//                     	  Curso curso = new Curso();
//                     	  curso = (Curso) request.getAttribute("DatosCursoConProfesor");

//                       }
                      %>
					 	
				<button type="submit" class="btn btn-dark btn-sm" onclick="ListarAlumnos()" id="btnBuscarAlumnos" name="btnBuscarAlumnos" value="btnBuscarAlumnos">Buscar</button>
                  
                  </div>
                  </form>
                  
                      <%  
 
					if(request.getAttribute("ListaAlumnos")!=null)
					{
						habilitarTodo=true;
						ArrayList<Alumno> listaAlumnos = (ArrayList<Alumno>) request.getAttribute("ListaAlumnos");	
						
						  
	      				
					%>
					
					
											<form id="formAltaAlumnosCurso">
						
				<input type="hidden" name="MateriaIngresada" id="MateriaIngresada61" value="<%=request.getParameter("MateriaIngresada") %>" > 
				 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado61" value="<%= request.getParameter("SemestreIngresado")%>"> 
				 <input type="hidden" name="AnioIngresado" id="AnioIngresado61" value="<%= request.getParameter("AnioIngresado") %>">
				<input type="hidden" name="ProfesorSeleccionado" id="ProfesorSeleccionado61" value="<%= request.getParameter("ProfesorSeleccionado") %>">
			

			
			
			
		                 
		<script type="text/javascript" > 
			
							
							
						
							
							var doc = document.getElementById("txtDocenteCurso");
							doc.value = document.getElementById("ProfesorSeleccionado61").value;
							doc.disabled=true;	
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById("MateriaIngresada61").value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById("SemestreIngresado61").value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById("AnioIngresado61").value;
							anioIngresado.disabled = true;
							
							
							document.getElementById("btnBuscarProfesor").disabled = true;

							document.getElementById("btnAltaCurso").disabled = true;
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
							
							

			</script>
					
					
					      <div class="table-responsive">
                    <table class="table table-hover">
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
                          Inscribir
                        </th>
                        </tr>
                      </thead>

                      
                      <tbody>
                      

				<% int e=0;
				
				for(Alumno alumno : listaAlumnos)	
				{
					e++;
				
					
				
					%>
                        <tr>

                        <td> 
                            <%= alumno.getID()%>
                          </td>
                          <td>
                            <%= alumno.getLegajo()%>
                          </td>
                          
                          <td>
                       <%= alumno.getNombre() %>
                          </td>
                          <td>
                      <%= alumno.getApellido() %>
                          </td>
                         
                          <td>
								<input type="checkbox" name="chxAlumno" id="<%=alumno.getID() %>" value="<%=alumno.getID() %>" >
                          </td>
                          

                        </tr>
                        <%
							} //cierra el for	
                        %>


                      </tbody>
                    </table>
                  </div>
<!--                           </form> -->
                  
                      <%
					///Cierra el if 
					}
					
				
					%>
                            <a class="btn oi" data-glyph="add" aria-hidden="true" onclick="CursoCompleto()" name="btnInscribirAlumnos" value="btnInscribirAlumnos" > Confirmar ALumnos </a>
                  	                                    <button type="submit" id="btnGuardarCurso" onsubmit="GuardarCurso()" disabled name="btnGuardarCurso" value="btnGuardarCurso" class="btn btn-primary btn-block pull-right">Guardar</button>
                  	          </form>
					 </div>
                  
                  </div>

                  </div>
                  
                  	
                  	
                  	
                  </div>	
                  
                   </div>
    <!--                
<%--                   <% --%>
//                   boolean habilitarCursoCompleto = false;
                  

                	  
//                 	  if(request.getParameter("btnInscribirAlumnos")!=null)
//                 	  {
//                 	  habilitarCursoCompleto = true;
//                 		  ArrayList<Alumno> listado = (ArrayList<Alumno>) request.getAttribute("ListaAlumnosInscriptos");   	  
      				
<%--           			%>	 --%>
                  
                  	 
<!--                           <div class="col-md-12 border"> 
<!-- <!--           			<form id="formCursoCompleto">  --> 
          					 
<%--           		 <input type="hidden" name="MateriaIngresada" id="MateriaIngresada62" value="<%=request.getParameter("MateriaIngresada") %>" >  --%>
<%--           		 <input type="hidden" name="SemestreIngresado" id="SemestreIngresado62" value="<%= request.getParameter("SemestreIngresado")%>">  --%>
<%--           		 <input type="hidden" name="AnioIngresado" id="AnioIngresado62" value="<%= request.getParameter("AnioIngresado") %>"> --%>
<%--           		 <input type="hidden" name="ProfesorSeleccionado" id="ProfesorSeleccionado62" value="<%= request.getParameter("ProfesorSeleccionado") %>"> --%>
          					 
<!--           		 													<script type="text/javascript" >  
						
						
// 						var doc = document.getElementById("txtDocenteCurso");
// 						doc.value = document.getElementById("ProfesorSeleccionado62").value;
// 						doc.disabled=true;			
// 						var mate = document.getElementById("txtMateriaCurso");
// 						mate.value = document.getElementById("MateriaIngresada62").value;
// 						mate.disabled = true;
// 						var sem = document.getElementById("txtSemestreCurso");
// 						sem.value = document.getElementById("SemestreIngresado62").value;
// 						sem.disabled=true;
// 						var anioIngresado = document.getElementById("txtAnioCurso");
// 						anioIngresado.value=document.getElementById("AnioIngresado62").value;
// 						anioIngresado.disabled = true;
						
// 						document.getElementById("txtNombreProfesor").disabled = true;
// 								document.getElementById("txtLegajoProfesor").disabled = true;
// 								document.getElementById("btnBuscarProfesor").disabled = true;
// 								document.getElementById("btnAltaCurso").disabled = true;
// 								document.getElementById("HabilitarProfesores").style.visibility = 'visible';
// 								document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
// 								document.getElementById("btnGuardarCurso").disabled = false;
// 								document.getElementById("HabilitarAlumnosInscriptos").style.visibility = 'visible';
// 								document.getElementById("btnBuscarAlumnos").disabled = true;

			</script>			  -->
          					 
                  
<!--           					<div id="HabilitarAlumnosInscriptos" style="visibility: hidden;" > -->
<%-- 	                    <jsp:include page="Htmls/AlumnosInscriptos.html"></jsp:include> --%>
	                    
<!-- 	                    <div class="card-body"> -->
<!--                   <div class="table-responsive"> -->
<!--                     <table class="table table-hover"> -->
<!--                       <thead class=""> -->
<!--                         <th> -->
<!--                           Legajo -->
<!--                         </th> -->
<!--                         <th> -->
<!--                           Nombre -->
<!--                         </th> -->
<!--                         <th> -->
<!--                           Apellido -->
<!--                         </th> -->
                       
                        
<!--                       </thead> -->
<!--                       <tbody> -->
<%-- 					<% --%>
					
 <!-- 					for (Alumno alumno : listado)
// 					{-->
<%-- 					%> --%>
<!--                         <tr> -->
                        
<!--                           <td> -->
<%--                             <%= alumno.getLegajo()%> --%>
<!--                           </td> -->
<!--                           <td> -->
<%--                            <%= alumno.getNombre() %> --%>
<!--                           </td> -->
<!--                           <td> -->
<%--                            <%= alumno.getApellido() %> --%>
<!--                           </td> -->
                       
                          
<!--                         </tr> -->
<%--                         <% --%>
<!-- //                         }-->
<%--                         %> --%>


<!--                       </tbody> -->
<!--                     </table> -->
<!--                   </div> -->
<!--             </div>	     -->
	                    
<%-- 	                    <% --%>
	                 
<!--// 	                    } -->
<%-- 	                    %> --%>
                		
                               
              
                
                
                
          
         
					
				
					
		
					
					<% if(habilitarProfesores)
						{%>
					  			<script type="text/javascript" > 
			
								
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById("MateriaIngresada2").value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById("SemestreIngresado2").value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById("AnioIngresado2").value;
							anioIngresado.disabled = true;
							
							document.getElementById("btnAltaCurso").disabled = true;

							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
							</script>
				
						<%	
						}
 							if(habilitarAlumnos)
						{
							%>
							<script type="text/javascript" > 
							var mate = document.getElementById("txtMateriaCurso");
							mate.value = document.getElementById("MateriaIngresada4").value;
							mate.disabled = true;
							var sem = document.getElementById("txtSemestreCurso");
							sem.value = document.getElementById("SemestreIngresado4").value;
							sem.disabled=true;
							var anioIngresado = document.getElementById("txtAnioCurso");
							anioIngresado.value=document.getElementById("AnioIngresado4").value;
							anioIngresado.disabled = true;
							
							document.getElementById("btnAltaCurso").disabled = true;
							document.getElementById("HabilitarProfesores").style.visibility = 'visible';
				</script>
							
							<%
						}
 							if(habilitarTodo)	
 							{
						%>
						<script type="text/javascript" > 
						
						
						var doc = document.getElementById("txtDocenteCurso");
						doc.value = document.getElementById("ProfesorSeleccionado60").value;
						doc.disabled=true;			
						var mate = document.getElementById("txtMateriaCurso");
						mate.value = document.getElementById("MateriaIngresada60").value;
						mate.disabled = true;
						var sem = document.getElementById("txtSemestreCurso");
						sem.value = document.getElementById("SemestreIngresado60").value;
						sem.disabled=true;
						var anioIngresado = document.getElementById("txtAnioCurso");
						anioIngresado.value=document.getElementById("AnioIngresado60").value;
						anioIngresado.disabled = true;
						
						document.getElementById("txtNombreProfesor").disabled = true;
						
								document.getElementById("txtLegajoProfesor").disabled = true;
								document.getElementById("btnBuscarProfesor").disabled = true;
								document.getElementById("btnAltaCurso").disabled = true;
								document.getElementById("HabilitarProfesores").style.visibility = 'visible';
								document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
								
			</script>

					<%
						}
 							
 							
 							%>
 													<script type="text/javascript" > 
						
						
						var doc = document.getElementById("txtDocenteCurso");
						doc.value = document.getElementById("ProfesorSeleccionado62").value;
						doc.disabled=true;			
						var mate = document.getElementById("txtMateriaCurso");
						mate.value = document.getElementById("MateriaIngresada62").value;
						mate.disabled = true;
						var sem = document.getElementById("txtSemestreCurso");
						sem.value = document.getElementById("SemestreIngresado62").value;
						sem.disabled=true;
						var anioIngresado = document.getElementById("txtAnioCurso");
						anioIngresado.value=document.getElementById("AnioIngresado62").value;
						anioIngresado.disabled = true;
						
						document.getElementById("txtNombreProfesor").disabled = true;
								document.getElementById("txtLegajoProfesor").disabled = true;
								document.getElementById("btnBuscarProfesor").disabled = true;
								document.getElementById("btnAltaCurso").disabled = true;
								document.getElementById("HabilitarProfesores").style.visibility = 'visible';
								document.getElementById("HabilitarAlumnos").style.visibility = 'visible';
								document.getElementById("btnGuardarCurso").disabled = false;
								document.getElementById("HabilitarAlumnosInscriptos").style.visibility = 'visible';
								document.getElementById("btnBuscarAlumnos").disabled = true;
			</script>
			<% %>
 							
					
  <script type="text/javascript" src="assets/js/ControladorAltaCurso.js"></script>
	
	
          </div>

</body>
</html>