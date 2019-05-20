<?php

$link = mysqli_connect("localhost", "root", "", "transporte");
if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

?>