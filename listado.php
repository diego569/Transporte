<html>
<head>
    <title>Listado</title>
    <link rel="stylesheet" href="css\bootstrap\dist\css\bootstrap.css">
</head>
</html>
<?php
$link = mysqli_connect("localhost", "root", "", "transporte");
if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "select *from pasajeros";
$result = mysqli_query($link, $query);

echo "<table class='table table-hover'>";
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
    echo "<td>".$row['dni']."</td>";
    echo "<td>".$row['nombre']."</td>";
    echo "<td>".$row['direccion']."</td>";
    echo "</tr>";

}
echo "</tbody>";
echo "</table>"


?>