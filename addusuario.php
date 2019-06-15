<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    
</body>
</html>
<?php

    $link = mysqli_connect("localhost", "root", "", "transporte");
    if (!$link) {
        die("Connection failed: " . mysqli_connect_error());
    }

if(isset($_POST['Submit'])) {    
    $placa = $_POST['placa'];
    $asiento = $_POST['asiento'];  
    $calefaccion = $_POST['calefaccion'];
    $busescol = $_POST['busescol'];
        
    // checking empty fields
    if(empty($placa) || empty($asiento) || empty($calefaccion)|| empty($busescol)) {                
            echo "<div class='container'>
            <p class='awd h1 text-center font-weight-bold fpaddingt'>Valores incorrectos</p>
        </div>";
    } else { 
        // if all the fields are filled (not empty)             
        //insert data to database
        $result = mysqli_query($link ,"INSERT INTO bus(placa,asiento,calefaccion, busescol) 
            VALUES('$placa','$asiento','$calefaccion', '$busescol')");
        
        //display success message
        echo "<div class='container'>
            <p class='awd h1 text-center font-weight-bold fpaddingt'>Agregado Correctamente</p>
        </div>";
    }
}
?>