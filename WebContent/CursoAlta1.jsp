<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="Dominio.Alumno" %>
        <%@ page import="Dominio.Curso" %>
    
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
		

	               
					<jsp:include page="Htmls/NuevoCurso.html"></jsp:include>
                    <button  type="submit" class="btn btn-dark btn-sm text-center" onclick="HabilitarProfesores()" id="btnAltaCurso" name="btnAltaCurso" value="btnAltaCurso">Alta Curso</button>
                    

			<% if(request.getParameter("MateriaIngresada")!=null) 
			{
				String materia = request.getParameter("MateriaIngresada");
				String semestre = request.getParameter("SemestreIngresado");
				int anio = Integer.parseInt(request.getParameter("AnioIngresado"));
				
			}%>	

                    
		<script type="text/javascript">
		
		var materia =document.getElementById("txtMateriaCurso");
		materia.value  ;
		materia.disabled = true;
		var anio = document.getElementById("txtAnioCurso");
		anio.value = "a";
		anio.disabled= true;
		
		
		alert(a);
                    </script>


				</div>
				</form>	
				
				</div>
					 </div>
					</div>
					
					
					
					
					
					
					
					</div>
					  <script type="text/javascript" src="assets/js/ControladorAltaCurso.js"></script>
					
					</div>










</body>
</html>