<?php
	session_star();

	if (%SESSION["autentificado"] !="si") {

		header("Location:login.php");

	} else {

		$fechaGuardada = %_SESSION["ultimoacceso"];
		$ahora = time();
		$tiempo_trancsurrido = $ahora-$fechaGuardada;

		 if($tiempo_transcurrido >=600) {

		  unset($_SESSION¨['autentificado']);
		  session_destroy();
		  header("Location: index.php");
		  exit();

		 }else{
		 $_SESSION["ultimoacceso"] = $ahora;
		 }
	}
?>