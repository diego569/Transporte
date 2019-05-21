<?php
    include 'cn/conectar.php';
    include 'cn/cn.php';
    

    $login = $_POST['txtlogin'];
    $clave = $_POST['txtclave'];

    $sql = "SELECT * from usuario where nombre=('$login') and clave=('$clave')";

    $result = $conexion->query($sql);

    if ($result->num_rows>0){

        session_start();
        header ('Location: inicio.php');

    }else{
        header("Location: login.php?errorusuario=si");
    }


?>