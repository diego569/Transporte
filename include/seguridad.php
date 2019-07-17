<?php
    session_start();
    if ($_SESSION["autentificado"] != "si") {
    //include 'cn/conectar.php';
        header("Location: index.php?exededtime=si");
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