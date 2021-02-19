<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/popper.min.js"></script>
  
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


<title>Inmobiliaria Alonso</title>
</head>
<body>


<div class="sidebar" data-color="blue" data-background-color="white" data-image="assets/img/sidebar-1.jpg">

      <div class="logo">
              <a class="navbar-brand mr-lg-11" href="https://www.inmobiliariaalonso.com.ar/">
      
        <img src="assets/img/brand/InmobiliariaAlonso.png" alt="brand">
          </a>
        
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

        	<li class="nav-item" >	

            <a class="nav-link" href="Administrador.jsp">
              <i class="material-icons">person</i>
              <p>Clientes</p>
            </a>

          </li>

          


           <li class="nav-item ">
            <a class="nav-link" href="Login.jsp">
              <i class="material-icons">logout</i>
              <p>Salir</p>
            </a>
          </li>
          

        </ul>
      </div>
    </div>
		
		
		
		
		<div class="main-panel">
		<div class="container">
					<jsp:include page="Htmls/HeadAlumnos.html"></jsp:include>
					<jsp:include page="Htmls/AlumnoAlta.html"></jsp:include>

          </div>
		               </div>

</body>
</html>