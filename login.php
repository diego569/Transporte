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
      <div class="rounded-lg col-lg-6 col-md-9 offset-lg-3 offset-md-2 shadow">
          <form class="form-signin text-center fmargin" method="post" action="control.php" >
            <div class="fmarginb">
              <div class="h2 font-weight-bold">
                SVP
              </div> 
            </div>
            <h1 class="h3 mb-3 font-weight-normal">Identificarse</h1>
            <input type="text" name="txtlogin" id="txtlogin" class="form-control" placeholder="Usuario" value="admin" required autofocus><br>
            <input type="password" name="txtclave" id="txtclave" class="form-control" placeholder="Contraseña" value="root" required> <br>
            <button class="btn btn-lg btn-outline-light btn-block" type="submit">Ingresar</button>
          </form>
      </div>
    </div>
  </div>

  <script src="./js/script.js"></script>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.bundle.js"></script>

</body>
</html>