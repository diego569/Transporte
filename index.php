<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="css/estilo.css">
  <style type="text/css">
    a, div.navbar-brand{color: white;cursor: pointer;}
  </style>
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<title>SVP</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg shadow mb-5 sticky-top" style="background: black;">
    <div class="container">
      <div class="navbar-brand">
        <div class="d-inline h2 font-weight-bold">
          SVP
        </div>
        <p class="d-inline"><abbr title="Version 1.0" class="initialism">v1.0</abbr></p>
      </div>
      <a class="nav-link btn btn-outline-light" role="button" href="login.php">
        <span class='fas fa-user mr-sm-2' title='Crear' style='cursor:pointer;'></span>Ingresar</a>
    </div>
  </nav>



  <div class="container">
    <div class="row">
      <div class="col-12 col-md-6">
        <div class="container ">
          <div class="row">
            <div class="rounded-lg shadow fpadding">
              <div>
                <h2>Sistema de Venta de Pasaje.</h2>
              </div>
              <hr>
              <p> 
                'SVP' un software de ventas, 
                el cual sea capaz de llevar a cabo el proceso de venta y 
                reserva de pasajes con capacidad de conexión en todo el territorio nacional.
              </p>
              <p>
                Se incluyeron funcionalidad para seleccionar servicios, 
                administrador y mantener una lista de orígenes y destinos seleccionables, 
                optar por diferentes parámetros del viaje 
                (ida, ida y vuelta, origen, destino, fechas y cantidad de pasajeros) y 
                también mostrar la fecha de salida, llegada, comodidad, duración, 
                cantidad de asientos disponibles, precio y dar la posibilidad de seleccionar el servicio.
              </p>  
            </div>
          </div>
        </div>
      </div>
      <div class="col-12 col-md-6">
        <div class="container">
          <div class="row">
            <div class="rounded-lg shadow fpadding">
              <div>
                <h2>Proyecto del Curso de <i>Tecnologias Para El Desarrollo De Aplicaciones</i>.</h2>
              </div>
              <hr>
              <p >El desarrollo del software se llevó a acabo en el lenguaje de programación 
              HTML5, CSS, JavaScript, Jquery y con base de datos MySQL, 
              utilizando framework tal como Bootstrap.</p>
            </div> 
          </div>
        </div>
      </div>
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
  <script src="./js/script.js"></script>
  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.bundle.js"></script>


</body>
</html>
