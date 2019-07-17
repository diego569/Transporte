<?php
    include ('../include/config.php');
    require("../fpdf/fpdf.php");
    class  myPDF extends FPDF{
        function header(){
            $this -> SetFont('Arial', 'B', 30);
            $this -> Cell(20, 5, 'SVP', 0, 0, 'C');
            $this -> SetFont('Arial', 'B', 14);
            $this -> Cell(240, 5, 'LISTADO DE BUSES', 0, 0, 'C');
            $this -> Ln();
            $this -> SetFont('Times', '', 12);
            $this -> Cell(280, 10, 'Datos  de los buses de la empresa SVP', 0, 0, 'C');
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
            $this -> Cell(60, 10, 'Placa', 1, 0, 'C');
            $this -> Cell(68, 10, 'No Asiento', 1, 0, 'C');
            $this -> Cell(70, 10, 'Calefaccion', 1, 0, 'C');
            $this -> Cell(70, 10, 'Empresa', 1, 0, 'C');
            $this -> Ln();
        }
        function viewTable($conexion){
            $this -> SetFont('Times', '', 12);
            $query = "select * from bus order by placa";
            $result = $conexion->query($query);
            $i = 1;
            while ($row = $result -> fetch_array()) {
                $this -> SetFont('Times', '', 12);
                $this -> Cell(10, 10, $i, 1, 0, 'C');
                $this -> Cell(60, 10, $row['placa'], 1, 0, 'L');
                $this -> Cell(68, 10, $row['casiento'], 1, 0, 'L');
                $this -> Cell(70, 10, $row['calefaccion'], 1, 0, 'L');
                $this -> Cell(70, 10, $row['empresa'], 1, 0, 'L');
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