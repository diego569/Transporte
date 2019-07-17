<?php
    include ('../include/config.php');
    require("../fpdf/fpdf.php");
    class  myPDF extends FPDF{
        function header(){
            $this -> SetFont('Arial', 'B', 30);
            $this -> Cell(20, 5, 'SVP', 0, 0, 'C');
            $this -> SetFont('Arial', 'B', 14);
            $this -> Cell(240, 5, 'LISTADO DE ADMINISTRADORES', 0, 0, 'C');
            $this -> Ln();
            $this -> SetFont('Times', '', 12);
            $this -> Cell(280, 10, 'Datos  de los administradores de la empresa SVP', 0, 0, 'C');
            $this -> Ln();
        }
        function footer(){
            $this -> setY(-15);
            $this -> SetFont('Arial', '', 8);
            $this -> Cell(0, 10, 'Pagina ' . $this -> PageNo().'/{nb}', 0, 0, 'C');
        }
        function headerTable(){
            $this -> SetFont('Times', 'B', 12);
            $this -> Cell(10, 10, 'No', 1, 0, 'C');
            $this -> Cell(90, 10, 'Nombre(es)', 1, 0, 'C');
            $this -> Cell(87, 10, 'Usuario', 1, 0, 'C');
            $this -> Cell(90, 10, 'Tipo', 1, 0, 'C');
            $this -> Ln();
        }
        function viewTable($conexion){
            $this -> SetFont('Times', '', 12);
            $query = "select * from admin order by login";
            $result = $conexion->query($query);
            $i = 1;
            while ($row = $result -> fetch_array()) {
                $this -> SetFont('Times', '', 12);
                $this -> Cell(10, 10, $i, 1, 0, 'C');
                $this -> Cell(90, 10, $row['nombre'], 1, 0, 'L');
                $this -> Cell(87, 10, $row['login'], 1, 0, 'L');
                $this -> Cell(90, 10, $row['tipo'], 1, 0, 'L');
                $this -> Ln();
                $i++;
            }
        }
    }
    $pdf = new myPDF(); 
    $pdf -> AliasNBPages();
    $pdf -> AddPage('L','A4',0);
    $pdf -> headerTable();
    $pdf -> viewTable($conexion);
    $pdf -> Output();
?>