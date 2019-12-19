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


<title>TP Integrador</title>


</head>
<body >



<header class="header-global bg-white">
    <div class="bg-info ">&nbsp </div>

    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom bg-white">
      <div class="container">
        <a class="navbar-brand mr-lg-11" href="http://frgp.cvg.utn.edu.ar/">
          <img src="assets/img/brand/UTN.png" alt="brand">
        </a>
        <a class="navbar-brand mr-lg-11" href="#">
          <img src="assets/img/brand/Bienvenido.png" alt="brand">
        </a>
        
        

      </div>
    </nav>
  </header>
    <div class="bg-info">&nbsp </div>
    <main>
    
    <section class="section section-shaped section-lg bg-info" >
      <div class="shape shape-style-1 bg-gradient-default">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="container pt-lg-md">
        <div class="row justify-content-center">
          <div class="col-lg-5">
            <div class="card shadow border-0" >
              <div class="card-header bg-secondary pb-2">
                <div class="text-light text-center mb-6"><big>Log in </big></div>

              </div>
              <div class="card-body px-lg-5 py-lg-5 bg-light">
                <div class="text-center text-dark mb-4">
                  <big>Ingrese usuario y contraseña</big>
                </div>
                <form action="ServletLogin" method="get">
                  <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                      </div>
                      <input class="form-control" placeholder="Usuario" type="text" name="txtUsuario">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control " placeholder="Contraseña" type="password" name="txtContrasenia">
                    </div>
                  </div>
                  
        
	

                  <div class="text-center">
                  
                            <select class="btn btn-dark btn-md" name="TipoLogIn">
			<option value="Administrador"> Administrador </option>
		<option value="Docente"> Docente </option>
			
				</select>
                    <input type="submit" name="btnIngresar" class="btn btn-dark my-4 text-light" value="Ingresar"></input>
                  </div>
                </form>
              </div>
            </div>
       	<div class="bg-info">&nbsp </div>
       	<div class="bg-info">&nbsp </div>
       	<div class="bg-info">&nbsp </div>
       	<div class="bg-info ">&nbsp </div>
       	<div class="bg-info ">&nbsp </div>
       	<div class="bg-info ">&nbsp </div>
       	<div class="bg-info">&nbsp </div>


          </div>
        </div>
      </div>
    </section>
  </main>

</body>
</html>