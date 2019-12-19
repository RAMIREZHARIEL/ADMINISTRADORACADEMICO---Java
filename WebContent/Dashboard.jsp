<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="Content/bootstrap.min.css">
  <script src="Scripts/bootstrap.min.js"></script>
  <script src="Scripts/bootstrap.js"></script>
  <script src="Scripts/popper.min.js"></script>
  
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <title>TP Integrador</title>
  
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
</head>
<body>

<div class="wrapper ">

<jsp:include page="Htmls/PanelLateralAdministrador.html"></jsp:include>
    
   
    
    
    <!--  TERMINA -->
    
        <header class="main-panel">
        
              <div class="content">
        <div class="container-fluid">
       <div class="row">
            <div class="col-md-4">
              <div class="card card-chart">
                <div class="card-header card-header-success">
                  <div class="ct-chart" id="dailySalesChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Daily Sales</h4>
                  <p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated 4 minutes ago
                  </div>
                </div>
              </div>
            </div>
                </div>
                 </div>
                </div>
    
     </header>
</div>

</body>
</html>