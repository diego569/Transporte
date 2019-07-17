<?php
    session_start();
    include ('../include/config.php');
    $query = "select * from pasajero order by dnip";
    $result = $conexion->query($query);
    $i = 0;
    while($row = $result->fetch_array()){
        $registros[$i] = array(//'nombre'=> $row ['nombre'],
                                'dnip'=>$row['dnip'],
                                'ciudad'=>$row['ciudad'],
                                'telefono'=>$row['telefono'],
                                'fechan'=>$row ['fechan'],

                        );
        $i++;
    }        
    $output = json_encode($registros);
    print($output);
?>