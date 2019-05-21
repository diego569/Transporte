<?php
    include 'seguridad.php';
    include 'cn/conectar.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<title>Document</title>
</head>
<body>


	<h1>Usted esta registrado en la Pagina</h1>

	<br>
	
	
	<!--<input type="button" value="Listado de Clientes" onclick=listacliente() >-->

	<div id="main"></div>

	<a href="login.php" class="btn btn-lg btn-outline-primary btn-block" action="closesession.php">Salir del sistema</a>
</body>
</html>
