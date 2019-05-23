<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<title>Identificarse</title>
	<style>
	body{background-color: #f5f5f5;}
	</style>
</head>
<body>
	<div class="container col-2" style="padding-top: 8%;">

		<form class="form-signin text-center" method="post" action="control.php">

			<img class="mb-4" src="img/transporte2.svg" alt="logo" width="200" height="200" style="margin-buttom: -10px;">

			<h1 class="h3 mb-3 font-weight-normal">Registrese</h1>

			<input type="text" name="txtlogin" id="txtlogin" class="form-control" placeholder="Usuario" required autofocus><br>

			<input type="password" name="txtclave" id="txtclave" class="form-control" placeholder="Contraseña" id="" required> <br>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
			
		</form>
	</div>

	<script src="js/jquery.js"></script>
</body>
</html>