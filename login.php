<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="css/estilo.css">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Identificarse</title>

</head>
<body >

	<div class="container flogin">
    <div class="row">
      <div class="border rounded-lg col-lg-6 col-md-9 offset-lg-3 offset-md-2 shadow bd">
          <form class="form-signin text-center fmargin" method="post" action="include/control.php" >
            <div class="mb-4">
            <div class="h2 font-weight-bold">
              SVP
            </div> 
            </div><br>
            <div class="list-inline">
              <span class="list-inline-item">
                <input class="fas fa-user">
              </span>
              <span class="list-inline-item">
                <input type="text" name="txtlogin" id="txtlogin" class="form-control" placeholder="Usuario" required autofocus>
              </span>
            </div><br>
            <div class="list-inline">
              <span class="list-inline-item">
                <input class="fas fa-key">
              </span>
              <span class="list-inline-item">
                <input type="password" name="txtclave" id="txtclave" class="form-control" placeholder="Contraseña" required>
              </span>
            </div><br>
              <button class="btn btn-secondary btn-md btn-block" type="submit">Ingresar</button>
          </form>
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