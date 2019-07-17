<?php
    session_start();
    include ('../include/config.php');
    $query = "select * from conductor order by apaterno";
    $result = $conexion->query($query);
    $i = 0;
    while($row = $result->fetch_array()){
        $registros[$i] = array( 'dnic'=>$row['dnic'],
                                'nlicencia'=>$row['nlicencia'],
                                'categoria'=>$row['categoria'],
                                'apaterno'=>$row['apaterno'],
                                'amaterno'=>$row['amaterno'],
                                'nombres'=>$row['nombres'],
                                'experiencia'=>$row['experiencia'],
                        );
        $i++;
    }        
    $output = json_encode($registros);
    print($output);
?>