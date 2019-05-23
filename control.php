<?php
    include 'cn/conectar.php';
    include 'cn/cn.php';
    

    $login = $_POST['txtlogin'];
    $clave = $_POST['txtclave'];

    $sql = "SELECT * from usuario where nombre=('$login') and clave=('$clave')";

    $result = $conexion->query($sql);

    if ($result->num_rows>0){
        session_start();
        $row = $result->fetch_array();
        $_SESSION['autentificado'] = 'si';
        $_SESSION['ultimoacceso'] = time();
        $_SESSION['idusuario'] = $row['idusuario'];
        $_SESSION['root'] = $row['root'];
        $_SESSION['nombre'] = $row['nombre'];
        $_SESSION['pc_anio'] = date("Y");
        $_SESSION['pc_mes'] = date("m");
        
        header ("Location: inicio.php");

    }else{
        header("Location: login.php?errorusuario=si");
    }


?>