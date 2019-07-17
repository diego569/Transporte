<?php
    session_start();
    include ('../include/config.php');
    $query = "select * from admin order by login";
    $result = $conexion->query($query);
    $i = 0;
    while($row = $result->fetch_array()){
        $registros[$i] = array( 'nombre'=>$row['nombre'],
                                'login'=>$row['login'],
                                'tipo'=>$row['tipo']
                        );
        $i++;
    }        
    $output = json_encode($registros);
    print($output);
?>