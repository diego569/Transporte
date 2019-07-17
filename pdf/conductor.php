<?php
    include ('../include/config.php');
    require("../fpdf/fpdf.php");
    class  myPDF extends FPDF{
        function header(){
            $this -> SetFont('Arial', 'B', 30);
            $this -> Cell(20, 5, 'SVP', 0, 0, 'C');
            $this -> SetFont('Arial', 'B', 14);
            $this -> Cell(240, 5, 'LISTADO DE CONDUCTORES', 0, 0, 'C');
            $this -> Ln();
            $this -> SetFont('Times', '', 12);
            $this -> Cell(280, 10, 'Datos  de los conductores de la empresa SVP', 0, 0, 'C');
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
            $this -> Cell(30, 10, 'DNI', 1, 0, 'C');
            $this -> Cell(30, 10, 'N. Licencia', 1, 0, 'C');
            $this -> Cell(22, 10, 'Categoria', 1, 0, 'C');
            $this -> Cell(45, 10, 'Ap. Paterno', 1, 0, 'C');
            $this -> Cell(45, 10, 'Ap. Materno', 1, 0, 'C');
            $this -> Cell(70, 10, 'Nombre(es)', 1, 0, 'C');
            $this -> Cell(25, 10, 'Experiencia', 1, 0, 'C');
            $this -> Ln();
        }
        function viewTable($conexion){
            $this -> SetFont('Times', '', 12);
            $query = "select * from conductor order by apaterno";
            $result = $conexion->query($query);
            $i = 1;
            while ($row = $result -> fetch_array()) {
                $this -> SetFont('Times', '', 12);
                $this -> Cell(10, 10, $i, 1, 0, 'C');
                $this -> Cell(30, 10, $row['dnic'], 1, 0, 'L');
                $this -> Cell(30, 10, $row['nlicencia'], 1, 0, 'L');
                $this -> Cell(22, 10, $row['categoria'], 1, 0, 'L');
                $this -> Cell(45, 10, $row['apaterno'], 1, 0, 'L');
                $this -> Cell(45, 10, $row['amaterno'], 1, 0, 'L');
                $this -> Cell(70, 10, $row['nombres'], 1, 0, 'L');
                $this -> Cell(25, 10, $row['experiencia'], 1, 0, 'L');
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