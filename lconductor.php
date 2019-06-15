<?php

include ('cn/conectar.php');

$query = "select * from conductor";
$result = mysqli_query($link, $query);

echo "<table class='table table-striped table-responsive-md awd'>";
echo "<thead>";
echo "<th>N°</th>";
echo "<th>DNI</th>";
echo "<th>N° Licencia</th>";
echo "<th>Categoria</th>";
echo "<th>Nombre</th>";
echo "<th>Expreriencia</th>";
echo "<th><button class='btn btn-outline-info btn-sm'>Añadir</button></th>";
echo "</thead>";
echo "<tbody>";
$i = 1;
while($row = mysqli_fetch_assoc($result))
{
    echo "<tr>";
    echo "<td class='font-weight-bold'>".$i++."</td>";
    echo "<td>".$row['dniconductor']."</td>";
    echo "<td>".$row['licencia']."</td>";
    echo "<td>".$row['categoria']."</td>";
    echo "<td>".$row['nombre']."</td>";    
    echo "<td>".$row['experiencia']."</td>";
    echo "<td>".
	 	"<button class='btn btn-success btn-sm mr-sm-2'>Editar</button>".
    	"<button class='btn btn-danger btn-sm mr-sm-2'>Eliminar</button>"."</td>";
    echo "</tr>";
}
echo "</tbody>";
echo "</table>"


?>