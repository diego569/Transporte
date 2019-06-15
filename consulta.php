<?php

function Conectar(){
    $conexion = null;
    $host = 'localhost';
    $db = 'transporte';
    $user = 'root';
    $pwd = '';
    try {
    $conexion = new PDO('mysql:host='.$host.';dbname='.$db, $user, $pwd);
    }
    catch (PDOException $e) {
    echo '<p>No se puede conectar a la base de datos !!</p>';
    exit;
    }
    return $conexion;
}




$con = Conectar();
$SQL = 'SELECT dnipasajero, nombre, direccion, celular FROM pasajero';
$stmt = $con->prepare($SQL);
$result = $stmt->execute();
$rows = $stmt->fetchAll(\PDO::FETCH_OBJ);
echo (json_encode($rows))   ;
echo "<table class='container table table-hover'>";
echo "<thead>";
echo "<th>N°</th>";
echo "<th>DNI</th>";
echo "<th>Nombre</th>";
echo "<th>Direccion</th>";
echo "</thead>";
echo "<tbody>";
$i = 1;
while($row = mysqli_fetch_assoc($result))
{
    echo "<tr>";
    echo "<td>".$i++."</td>";
    echo "<td>".$row['dnipasajero']."</td>";
    echo "<td>".$row['nombre']."</td>";
    echo "<td>".$row['direccion']."</td>";
    echo "</tr>";

}
echo "</tbody>";
echo "</table>"

?>