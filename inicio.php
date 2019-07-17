<?php
    include 'include/config.php';
    //session_start();
    include 'include/seguridad.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="css/estilo.css">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SVP v1.0</title>

</head>
<body>

  <nav class="navb navbar navbar-expand-lg mb-4 shadow sticky-top">
    <div class="container">
      <div class="navbar-brand">
        <div class="d-inline h3 font-weight-bold" >
          SVP
        </div>
        <p class="d-inline"><abbr title="Version 1.0" class="initialism">v1.0</abbr></p>
      </div>      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span><i class="fas fa-bars"></i></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle btn btn-outline-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Archivo
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#" onclick="Show('pasajero')">Pasajeros</a>
              <a class="dropdown-item" href="#" onclick="Show('bus')">Buses</a>
              <a class="dropdown-item" href="#" onclick="Show('conductor')">Conductor(es)</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle btn btn-outline-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Venta
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Ida</a>
              <a class="dropdown-item" href="#">Ida y Vuelta</a>
              <a class="dropdown-item" href="#">asiento</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle btn btn-outline-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Reporte
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Diario</a>
              <a class="dropdown-item" href="#">Semanal</a>
              <a class="dropdown-item" href="#">Anual</a>
            </div>
          </li>
          <li>  
            <a class="nav-link btn btn-outline-light " href="#" onclick="Show('admin')">Usuarios</a>
          </li>
        </ul>

        <div class="nav-item dropdown navbar-nav">
          <a class="nav-link dropdown-toggle btn btn-outline-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class='fas fa-user mr-sm-2' title='Admin'></span>
              <?php echo $_SESSION['nombre']; ?>
          </a>
          <div class=" dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#" >Acerca de</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="index.php" action="closesession.php">
              <span class='fas fa-sign-out-alt mr-sm-2' title='Salir'></span>Salir del sistema
            </a>
          </div>
        </div>
      </div>
    </div> 
  </nav>



<!--<input type="text" id="buscar">-->
  <div class="container bd">
    <div class="container fpaddingt" id="resultado">
      <p class='h2'>Sistema de Venta de Pasajes</p>

    </div>
  </div>

  <footer class="footer">
    <hr>
    <div class="text-center">
            <p>
              <?php $hoy = date("Y"); echo $hoy; ?> 
              - Desarrollado por 
              <a href="https://www.github.com/diego569/transporte" target="_blank" class="text-reset font-weight-bold" >
                GRUPO TRANSPORTE
              </a>.
            </p>
    </div>
  </footer>

  <script src="./js/fontawesome.js"></script>
  <script src="./js/myscript.js"></script>
  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.bundle.js"></script>
</body>
</html>
