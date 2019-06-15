<?php
    include 'seguridad.php';
    include 'cn/conectar.php';
    include 'cn/cn.php'
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="css/estilo.css">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>SVP v1.0</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg shadow p-2 mb-5 sticky-top awd">
    <div class="container">
      <div class="navbar-brand">
        <div class="d-inline h2 font-weight-bold">
          SVP
        </div>
        <p class="d-inline"><abbr title="Version 1.0" class="initialism">v1.0</abbr></p>
      </div>      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Archivo
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#" onclick="MPasajero('lpasajero.php'); return false">Pasajeros</a>
              <a class="dropdown-item" href="#" onclick="MBus('lbus.php'); return false">Buses</a>
              <a class="dropdown-item" href="#" onclick="MConductor('lconductor.php'); return false">Conductores</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Venta
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Ida</a>
              <a class="dropdown-item" href="#">Ida y Vuelta</a>
              <a class="dropdown-item" href="#">asiento</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Reporte
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Diario</a>
              <a class="dropdown-item" href="#">Semanal</a>
              <a class="dropdown-item" href="#">Anual</a>
            </div>
          </li>
          <li>
            <a class="nav-link" href="" onclick="MUsuario('lusuario.php'); return false">Usuarios</a>
          </li>
        </ul>

        <div class="nav-item dropdown navbar-nav">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php
              echo $_SESSION['nombre'];
            ?>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#" >Acerca de</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="index.php" action="closesession.php">
              Salir del sistema
            </a>
          </div>
        </div>
      </div>
    </div>
  </nav>

  
  <div class="container" id="resultado">
    <div class="container fpaddingt">
      <h1 class="text-center skyte-middle fpaddingt" >Bienvenido..!<br> <hr>
        <i class="font-weight-bold fpaddingt">
          <?php echo $_SESSION['nombre']; ?>
        </i>
        <br>
      </h1>
    </div>
  </div>

  <script src="./js/script.js"></script>
  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.bundle.js"></script>
</body>
</html>
