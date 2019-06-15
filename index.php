<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="css/estilo.css">
  <script language="javascript" type="text/javascript" src="ajax.js"></script>
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>SVP</title>
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
      <div class="nav-item">
		    <a class="nav-link  btn btn-outline-light" role="button" href="login.php">Ingresar</a>
      </div>
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
        <div class="container fmargint coloee">
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

  </div class="containser">
    <div class="fimaringt">
      <footer class="text-center" >
        <p>
          <?php
            $hoy = date("Y");
            echo $hoy;
          ?> 
          - Desarrollado por 
          <a href="https://www.github.com/diego569/transporte" class="text-reset font-weight-bold">
            GRUPO TRANSPORTE
          </a>.
        </p>
      </footer>
    </div>
  </div>

  <script src="./js/script.js"></script>
  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.bundle.js"></script>


</body>
</html>
