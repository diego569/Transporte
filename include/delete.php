<?php
	session_start();
	include 'config.php';
	if ($_POST['placa']) {
		$var_placa = $_POST['placa'];
		$query = "DELETE from bus where placa='$var_placa'";
		$conexion ->query($query);
	}
	if ($_POST['dnic']) {
		$var_dnic = $_POST['dnic'];
		$query = "DELETE from conductor where dnic='$var_dnic'";
		$conexion ->query($query);
	}
	if ($_POST['dnip']) {
		$var_dnip = $_POST['dnip'];
		$query = "DELETE from pasajero where dnip='$var_dnip'";
		$conexion ->query($query);
	}
	if ($_POST['login']) {
		$var_login = $_POST['login'];
		$query = "DELETE from admin where login='$var_login'";
		$conexion ->query($query);
	}

?>