<?php

$link = mysqli_connect("localhost", "root", "", "transorte");
if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

?>