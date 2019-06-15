<?php
$link = mysqli_connect("localhost", "root", "", "transporte");
if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "select *from usuario";
$result = mysqli_query($link, $query);

echo "<table class='table table-striped table-responsive-md awd'>";
echo "<thead>";
echo "<th>N°</th>";
echo "<th>Nombre</th>";
echo "<th>Usuario</th>";
echo "<th>Clave</th>";
echo "<th><button class='btn btn-outline-info btn-sm'>Añadir</button></th>";
echo "</thead>";
echo "<tbody>";
$i = 1;
while($row = mysqli_fetch_assoc($result))
{
    echo "<tr>";
    echo "<td class='font-weight-bold'>".$i++."</td>";
    echo "<td>".$row['nombre']."</td>";
    echo "<td>".$row['login']."</td>";
    echo "<td>".$row['clave']."</td>";
    echo "<td>".
	 	"<button class='btn btn-success btn-sm mr-sm-2'>Editar</button>".
    	"<button class='btn btn-danger btn-sm mr-sm-2'>Eliminar</button>"."</td>";
    echo "</tr>";
}
echo "</tbody>";
echo "</table>"


?>