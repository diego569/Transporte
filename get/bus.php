<?php
    session_start();
    include ('../include/config.php');
    $query = "select * from bus order by placa";
    $result = $conexion->query($query);
    $i = 0;
    while($row = $result->fetch_array()){
        $registros[$i] = array( 'placa'=>$row['placa'],
                                'casiento'=>$row['casiento'],
                                'calefaccion'=>$row['calefaccion'],
                                'empresa'=>$row['empresa'],
                        );
        $i++;
    }        
    $output = json_encode($registros);
    print($output);
?>