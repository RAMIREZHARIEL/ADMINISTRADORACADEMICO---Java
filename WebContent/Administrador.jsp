<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
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
  
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  
<title>TP Integrador</title>
</head>
<body>



<div class="wrapper ">




<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
    
   
    
    
    <!--  TERMINA -->
    
        <header class="main-panel">
        
        <jsp:include page="Htmls/HeadAlumnos.html"></jsp:include>
        

    
     </header>
</div>

</body>
</html>