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
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  


<title>TP Integrador</title>

</head>
<body>


			<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
		<div class="main-panel">
		<div class="container">
					<jsp:include page="Htmls/HeadDocentes.html"></jsp:include>
					<jsp:include page="Htmls/DocenteAlta.html"></jsp:include>

          </div>
		               </div>

</body>
</html>