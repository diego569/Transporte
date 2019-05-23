<?php
    session_start();
    
    if ($_SESSION["autentificado"] != "si") {
        header("Location: login.php");
    } else {
        $fechaGuardada =$_SESSION["ultimoacceso"];
        $ahora = time();
        $tiempo_transcurrido = $ahora - $fechaGuardada;

        if($tiempo_transcurrido >= 600) {
            unset($_SESSION['autentificado']);
            session_destroy();
            header("Location: login.php");
            exit();

        }else{
            $_SESSION["ultimoacceso"] = $ahora;
            session_destroy();
        }
    }
?>