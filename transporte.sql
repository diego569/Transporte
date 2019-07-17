-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 04:21 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transporte`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nombre`, `login`, `clave`, `tipo`) VALUES
(1, 'Administrador', 'admin', '63a9f0ea7bb98050796b649e85481845', NULL),
(2, 'Arnaldo Medina', 'medina', 'aa4f56f555e2f3b4d4705ea05c12028c', NULL),
(3, 'Diego Romani', 'diego569', '9987137f2b18749bfa2fa2f97cc6c458', NULL),
(4, 'Jhon Quispe', 'jhon', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(5, 'Fredy Cahuana', 'fredy', 'b5a7bbf2ecd5953e6640d675849deca9', NULL),
(6, 'Cristian Velez', 'cristianvelez', '3f7d2a56f5b27b6391fb11a4c5301131', NULL),
(7, 'Luis Miguel Rojas', 'luis', '827ccb0eea8a706c4c34a16891f84e7b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boleto`
--

CREATE TABLE `boleto` (
  `idboleto` int(11) NOT NULL,
  `fechab` datetime DEFAULT NULL,
  `nasiento` varchar(3) DEFAULT NULL,
  `pasajero_dnip` int(11) NOT NULL,
  `admin_idadmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `placa` varchar(8) NOT NULL,
  `casiento` varchar(2) DEFAULT NULL,
  `calefaccion` varchar(2) DEFAULT NULL,
  `empresa` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`placa`, `casiento`, `calefaccion`, `empresa`) VALUES
('A5S-111', '72', 'no', 'San Martin'),
('AE3-999', '67', 'no', 'Flores'),
('AQC-129', '67', 'no', 'Julsa'),
('AQV-256', '72', 'no', 'San Roman'),
('BC1-944', '72', 'no', 'San Roman'),
('BGG-124', '72', 'no', 'San Martin'),
('BGS-460', '56', 'si', 'Civa'),
('C2O-138', '67', 'no', 'San Martin'),
('CGA-503', '54', 'si', 'San Martin'),
('D3X-941', '72', 'no', 'Julsa'),
('D3X-944', '72', 'no', 'Flores'),
('DQ4-241', '56', 'si', 'San Martin'),
('EH2-271', '56', 'si', 'Civa'),
('FQ9-756', '54', 'si', 'Civa'),
('HG7-152', '41', 'no', 'San Martin'),
('HO6-719', '67', 'no', 'Julsa'),
('JO2-158', '41', 'no', 'Flores'),
('LG2-268', '67', 'no', 'Civa'),
('LGA-374', '56', 'si', 'Civa'),
('LO2-500', '56', 'si', 'Julsa'),
('MG3-3818', '54', 'si', 'San Martin'),
('ML7-365', '67', 'no', 'San Roman'),
('NI2-1794', '72', 'no', 'Flores'),
('NI2-311', '41', 'no', 'San Martin'),
('NI2-5952', '67', 'no', 'Civa'),
('NY1-4659', '56', 'si', 'Julsa'),
('OG2-820', '54', 'si', 'Julsa'),
('OH2-933', '67', 'no', 'Flores'),
('OH4-054', '56', 'si', 'San Roman'),
('OH4-063', '56', 'si', 'Civa'),
('OH4-064', '72', 'no', 'Flores'),
('OQ1-108', '54', 'si', 'Julsa'),
('OQ2-662', '54', 'si', 'San Roman'),
('PE1-777', '72', 'no', 'San Martin'),
('PE3-299', '67', 'no', 'Civa'),
('PF4-618', '41', 'no', 'San Roman'),
('PGT-348', '72', 'no', 'Flores'),
('PII-915', '54', 'si', 'Civa'),
('PO6-321', '41', 'no', 'Civa'),
('POC-735', '54', 'si', 'San Martin'),
('PQ5-548', '67', 'no', 'Julsa'),
('QH2-066', '54', 'si', 'Flores'),
('RD1-428', '56', 'si', 'Julsa'),
('RH7-014', '56', 'si', 'San Roman'),
('RI6-903', '56', 'si', 'San Martin'),
('RII-420', '67', 'no', 'Civa'),
('RK3-066', '72', 'no', 'Civa'),
('RO3-117', '56', 'si', 'Julsa'),
('SH7-080', '67', 'no', 'Flores'),
('TI6-845', '41', 'no', 'Flores'),
('UJ1-181', '72', 'no', 'San Martin'),
('WI3-385', '72', 'no', 'Civa'),
('WL1-326', '41', 'no', 'San Roman'),
('WL1-757', '56', 'si', 'Flores'),
('WP8-159', '67', 'no', 'San Roman'),
('WQ7-345', '56', 'si', 'Flores'),
('ZD3-759', '54', 'si', 'San Martin'),
('ZD4-533', '72', 'no', 'Julsa'),
('ZH2-510', '72', 'no', 'San Martin');

-- --------------------------------------------------------

--
-- Table structure for table `conductor`
--

CREATE TABLE `conductor` (
  `dnic` int(11) NOT NULL,
  `nlicencia` varchar(10) DEFAULT NULL,
  `categoria` varchar(6) DEFAULT NULL,
  `apaterno` varchar(15) DEFAULT NULL,
  `amaterno` varchar(15) DEFAULT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `experiencia` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conductor`
--

INSERT INTO `conductor` (`dnic`, `nlicencia`, `categoria`, `apaterno`, `amaterno`, `nombres`, `experiencia`) VALUES
(10295281, 'U10295281', 'A-IIIa', 'Gomez', 'Saul', 'Enrique', 43),
(10520075, 'Q10520075', 'A-IIIb', 'Cifuentes', 'Casas', 'Cesar', 28),
(10523223, 'M10523223', 'A-IIIb', 'Campo', 'Sanchez', 'Harold Horacio', 34),
(10524320, 'A10524320', 'A-IIIa', 'Diago', 'Franco', 'Julio Cesar', 15),
(10527966, 'U10527966', 'A-IIIa', 'Ceron', 'Castro', 'Homero', 17),
(10528987, 'I10528987', 'A-IIIa', 'Erazo', 'Rodriguez', 'Reinaldo', 41),
(10537216, 'U10537216', 'A-IIIb', 'Barragan', 'Ramirez', 'Jesus Alberto', 26),
(10539634, 'U10539634', 'A-IIIb', 'Fernandez', 'Jesus', 'Antonio', 15),
(10540346, 'I10540346', 'A-IIIb', 'Hurtado', 'Julio', 'David', 23),
(10542190, 'F10542190', 'A-IIIa', 'Escobar', 'Solis', 'Augusto', 44),
(10545657, 'F10545657', 'A-IIIa', 'Capote', 'Campo', 'Leonel', 42),
(10546135, 'A10546135', 'A-IIIb', 'Jaramillo', 'Salazar', 'Jose Tomas', 42),
(10585197, 'U10585197', 'A-IIIb', 'Beltran', 'Vidal', 'Jose Toribio', 16),
(12991300, 'F12991300', 'A-IIIa', 'Escobar', 'Luis', 'Jaime', 32),
(14996114, 'U14996114', 'A-IIIb', 'Delgado', 'Velasco', 'Fernando', 40),
(16627531, 'Q16627531', 'A-IIIa', 'Lasso', 'Ordonez', 'Mario Alfredo', 28),
(19343842, 'A19343842', 'A-IIIa', 'Fernandez', 'Lopez', 'Gilberto', 13),
(34320823, 'M34320823', 'A-IIIb', 'Fernandez', 'Sandoval', 'Nicolas', 23),
(34529181, 'M34529181', 'A-IIIa', 'Camacho', 'Yacumal', 'Jose Arnulfo', 24),
(34537751, 'I34537751', 'A-IIIb', 'Cosme', 'Vargas', 'Hugo Aldemar', 27),
(40757341, 'Q40757341', 'A-IIIb', 'Cosme', 'Vargas', 'Galo Alberto', 42),
(76305729, 'Q76305729', 'A-IIIb', 'Fernandez', 'Gomez', 'Lizardo', 41),
(76306235, 'M76306235', 'A-IIIb', 'Bolanos', 'Andrade', 'Luis Ildem', 15),
(76308616, 'A76308616', 'A-IIIa', 'Bravo', 'Ceron', 'Gerardo', 12),
(76310264, 'M76310264', 'A-IIIa', 'Constain', 'Salazar', 'Luis Jaime', 43),
(76317155, 'U76317155', 'A-IIIb', 'Ayala', 'Carlos', 'Hugo', 40),
(76320754, 'I76320754', 'A-IIIa', 'Grijalba', 'Gomez', 'Pedro Felipe', 34),
(91154963, 'I91154963', 'A-IIIb', 'Ayala', 'Caldas', 'Jorge Enrique', 34),
(94432606, 'M94432606', 'A-IIIa', 'Camayo', 'Ordonez', 'Gerardo Enrique', 19);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idmenu` char(2) NOT NULL,
  `desmenu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pasajero`
--

CREATE TABLE `pasajero` (
  `dnip` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `fechan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pasajero`
--

INSERT INTO `pasajero` (`dnip`, `nombre`, `ciudad`, `telefono`, `fechan`) VALUES
(70082855, 'Antallaca Espinoza Gabetty Keyth', 'Cajamarca', '911889569', '1990-12-11'),
(70083719, 'Vilca ÑAupa Doris RocÍO', 'San Martin', '975954041', '1991-04-05'),
(70099971, 'Aroapaza Paredes Yeshenia Avencia', 'Tacna', '961549510', '1991-07-04'),
(70102604, 'Quisocala Laura Juan Manuel', 'Tacna', '970881426', '1982-05-09'),
(70106368, 'Mamani Velasquez Yamely Brenda', 'Amazonas', '985193985', '1989-10-12'),
(70109078, 'Aycaya Huillca Willkims Arnold', 'Junin', '947229704', '2000-07-08'),
(70109156, 'Cochuirumi Morocco Guido Yelsin', 'Cajamarca', '929415790', '1996-09-08'),
(70113250, 'Asqui Ticona Luis Fernando', 'Tacna', '938319369', '1994-08-02'),
(70127753, 'Sucapuca Yanqui Aldo Cristian', 'Moquegua', '996018323', '1996-09-01'),
(70142451, 'Valdivia Valdivia Alexandra', 'Tacna', '998662949', '1982-04-07'),
(70143929, 'Ramirez Aguirre Jheyson Edder', 'Apurimac', '915155269', '1987-07-09'),
(70146920, 'Ccama Torres Cinthia Irene', 'Ucayali', '939596493', '1990-10-09'),
(70149207, 'Mango Aviles Amador', 'Madre de Dios', '914163452', '1998-12-04'),
(70150894, 'Flores Salazar Gleny Flory', 'La Libertad', '996684484', '1989-07-02'),
(70155914, 'Jaliri Mamani Magy Rosario', 'Arequipa', '978139174', '1990-01-11'),
(70177394, 'Caceres Machaca Gonzalo Arom', 'Ica', '986502598', '2001-04-08'),
(70178021, 'Florez Condori Yohaida Madeleyne', 'Tacna', '922099758', '1999-02-05'),
(70184721, 'Osnayo Calloapaza Leonela Hayde', 'Ucayali', '965191556', '1987-12-12'),
(70184793, 'Ari Mamani Joel Rodrigo', 'Lima', '969951052', '1989-04-12'),
(70185039, 'Cornejo Cruz Flor Alexandra', 'San Martin', '910037432', '1982-08-08'),
(70188671, 'Rodriguez Rodriguez Jose Armando', 'Junin', '920441659', '2004-01-03'),
(70202302, 'Barrios Lino Jose Fernando', 'Moquegua', '955477644', '1992-05-04'),
(70202307, 'Astorga Romero Kimberly Cossett', 'Amazonas', '946752938', '2003-04-04'),
(70222837, 'Sosa Ochochoque Daisy Quely', 'Huancavelica', '994056540', '2003-11-03'),
(70226785, 'Uchiri Pacha Waldir', 'Junin', '928139514', '1980-05-08'),
(70228018, 'Mayta Rodriguez Denys Yerson', 'Madre de Dios', '995653487', '1982-10-10'),
(70232947, 'Velasco Ramos Jhon Oscar', 'Tumbes', '918189232', '1994-01-12'),
(70244412, 'Huahuasonco Huaman Yulinio', 'Lima', '950976512', '1995-04-05'),
(70244570, 'Quispe Quispe Yuimi Marcial', 'Arequipa', '959516541', '1987-06-03'),
(70258339, 'Pino Ucharico Dayana Lizeth', 'Huanuco', '965761694', '1995-08-12'),
(70263169, 'Coaquira Flores Evelyn Eliana', 'Ucayali', '960211662', '2002-07-08'),
(70269405, 'Apaza Barrionuevo Midward Jhoel', 'Ancash', '999761329', '1983-08-08'),
(70274355, 'Condori Rocha Josue Darwin', 'Apurimac', '963034256', '2004-04-10'),
(70279481, 'Rojas Mamani Gonzalo Emanuel', 'Huanuco', '931421462', '1991-03-09'),
(70279485, 'OrdoÑEz AvendaÑO Roddy Jerson', 'Tumbes', '915919949', '2000-04-03'),
(70280086, 'Mamani Romero Alexander Jhoel', 'Junin', '936555574', '1989-03-04'),
(70280099, 'IstañA Contreras Dennys', 'Piura', '975499556', '1988-02-05'),
(70286281, 'Maldonado Sanga Juan Hanssel', 'Huanuco', '922232142', '1982-06-03'),
(70286305, 'Huanca Canaza Paola Lizet', 'Junin', '916269357', '1991-10-12'),
(70286636, 'Quispe Ramos Kevin Alvaro', 'Huanuco', '948062268', '1986-11-06'),
(70308972, 'Larico Mamani Laura Virginia', 'San Martin', '985382292', '1980-04-05'),
(70321664, 'Callata Hallasi Irene Claret', 'Tacna', '913332867', '2004-06-01'),
(70342874, 'Enriquez Callata Luzmery', 'Cajamarca', '962873847', '2001-01-08'),
(70343394, 'Huanatico Ramos Jhon Marco', 'Cuzco', '941692154', '2003-06-11'),
(70360903, 'Flores Orcoapaza Nery Angelica', 'Ucayali', '910188464', '1983-07-08'),
(70379939, 'Merma Huanca Cristhian Gustavo', 'Moquegua', '980097157', '1989-09-02'),
(70383098, 'Sanchez Salazar Luis Alvaro', 'San Martin', '929296541', '1987-02-04'),
(70389668, 'Callata Ticona Brayan Cristofer', 'Amazonas', '966872529', '1995-08-02'),
(70398283, 'Toro Ruelas Andre De Jesus', 'Moquegua', '982133992', '1982-05-11'),
(70400826, 'Condori Pampamallco Denilson', 'Ica', '911118704', '1993-03-01'),
(70400827, 'Condori Pampamallco Zaida Shamira', 'Ucayali', '931868313', '1990-09-09'),
(70402736, 'Huanacuni Condori Jhon Brayan', 'Arequipa', '990376410', '1990-02-05'),
(70404738, 'Galarza Flores Uver Daniel', 'Cajamarca', '919074307', '1996-11-02'),
(70405179, 'Jilapa Chura Luis Fernando', 'Amazonas', '985033829', '1980-06-10'),
(70405253, 'Sarmiento Monrroy Leydi Brenda', 'Piura', '988758433', '1981-10-09'),
(70406770, 'Yujra Zanga Lourdes Sonia', 'Ayacucho', '928963022', '1985-07-07'),
(70412870, 'Sucari Chambi Cristian Max', 'Madre de Dios', '962241008', '1988-10-08'),
(70415938, 'Borda Herrera Renzo Pastor', 'Loreto', '962022634', '1986-03-01'),
(70415945, 'Quispe Condori Luis Alberto', 'Cuzco', '986649970', '2001-08-06'),
(70428701, 'Condori Morales Ronnie Mask', 'Madre de Dios', '986173757', '1980-07-07'),
(70442934, 'Alania Rivera Leydi Lizzeth', 'Moquegua', '914789358', '1983-03-05'),
(70446037, 'Medina Flores Paola Sariah', 'Huanuco', '954111025', '1992-07-11'),
(70475793, 'Puma Arqque Ada Emperatriz', 'Ica', '938515484', '1992-04-12'),
(70481615, 'Mamani Tezen Andy Rodrigo', 'Madre de Dios', '932455508', '1996-03-02'),
(70547250, 'Calsin Velarde Alexander', 'Arequipa', '982536868', '1982-10-11'),
(70547916, 'Tisnado Berrios Angel', 'Tumbes', '914616234', '1984-07-12'),
(70557872, 'Yerba Quispe Yaquelyn Estefany', 'San Martin', '917183753', '2002-01-01'),
(70580684, 'Encinas Callata Vanesa', 'Lima', '915854041', '2003-07-02'),
(70580685, 'Encinas Callata Brigida Milissa', 'Huanuco', '960384179', '1980-11-12'),
(70612463, 'Torres Quispe Denny\'S Jalil', 'Loreto', '949444955', '1980-10-06'),
(70666874, 'Mamani Flores Nora Luz', 'Apurimac', '948024099', '1988-11-02'),
(70750415, 'Soncco Surco Mauro Abel', 'Arequipa', '934019789', '1998-07-02'),
(70818676, 'Vargas Coaricona Katherine Yuliana', 'Arequipa', '961392423', '1999-08-05'),
(70831324, 'Mamani Castro Alexandra Dayana', 'Lima', '921932734', '1996-09-05'),
(70831407, 'Coila Cuadros Yrving Waldir', 'Tumbes', '957217189', '1988-05-03'),
(70851431, 'Gomez Ccalahuille Reyna', 'Lima', '911531520', '1980-07-02'),
(70865850, 'Barrientos Condori Dina Doris', 'Ica', '961734429', '1995-04-02'),
(70898039, 'Jacho Provincia Yenni Maribel', 'Ancash', '910036869', '1997-09-08'),
(70917621, 'Condori Uturunco Fany Mirla', 'Apurimac', '952051783', '1988-09-02'),
(70939883, 'Huanacuni Chura Keren Happuch', 'Ayacucho', '974485200', '2002-12-09'),
(70940631, 'Paredes Leon Wilbert Ivan', 'San Martin', '963036634', '1999-01-06'),
(70941498, 'Nina Alarcon Jimena Rubi', 'Lambayeque', '980274084', '1997-06-05'),
(71000091, 'Checalla Porto Stiven Alex', 'Tumbes', '944844774', '2001-05-04'),
(71011902, 'Apaza Quispe Alex', 'Lambayeque', '961291240', '1988-12-12'),
(71019723, 'Quispe Castillo Euclides', 'Huanuco', '993185602', '1987-10-05'),
(71024865, 'Lima Ticona Kenyi', 'Ancash', '923914604', '1998-12-07'),
(71025991, 'Luna Rios Ly Hely', 'Cajamarca', '983504333', '1992-02-09'),
(71077661, 'Ruelas Ccama Edith Liz', 'Ucayali', '931028480', '2000-01-12'),
(71126670, 'Quispe Huisa Rosy Lisbeth', 'Ucayali', '923032760', '1985-04-05'),
(71136015, 'Quispe Trujillo Karen Paola', 'La Libertad', '987621655', '2001-09-10'),
(71234014, 'Torres Caceres Ana Mile', 'Madre de Dios', '938699361', '1992-03-10'),
(71391543, 'Suni Huallpartupa Lisriaret Claudia', 'Ucayali', '988964667', '2003-12-05'),
(71397723, 'Mansilla Flores Henry', 'Madre de Dios', '983187870', '1983-06-06'),
(71431790, 'QuiÑOnez Terrazas Gretel Sofia', 'Lima', '994972589', '1986-01-05'),
(71434619, 'Chusi Mamani Walter Daniel', 'Apurimac', '974898240', '2001-09-10'),
(71453035, 'Caceres Choque Alan Ruso', 'Amazonas', '996901650', '1983-01-06'),
(71462694, 'Osnayo Mamani Pedro Cesar', 'Piura', '950754515', '2000-08-06'),
(71466461, 'Canqui Vilca Luis Fernando', 'Ucayali', '913186858', '1982-03-06'),
(71482402, 'PeÑAloza Ticona Cristhian Elvis', 'Lambayeque', '956621634', '1980-05-06'),
(71485541, 'Marca Huille Alex', 'Junin', '959905145', '1996-07-10'),
(71487479, 'Alata Mamani Junnior Erickson', 'Lambayeque', '910545345', '1994-08-05'),
(71513288, 'Apaza Cruz Gersy Danton', 'Ucayali', '925499496', '1995-04-03'),
(71519402, 'Amanqui Mullisaca Ildorfo Samuel', 'Tumbes', '980821954', '2003-01-02'),
(71521101, 'Coaguila Luque Jose Feliciano', 'Lima', '987879905', '2002-08-07'),
(71521102, 'Coaguila Luque Pedro JosÈ', 'Apurimac', '993145824', '1986-09-06'),
(71548228, 'Laruta Quiza Franz Gustavo', 'Ucayali', '910981247', '2001-10-04'),
(71548231, 'Ccori Ramos Anyhell Luzmia', 'Loreto', '964139168', '2004-06-02'),
(71558219, 'AÑAcata Paccara Doris Sonia', 'Lima', '996765629', '2004-12-11'),
(71597864, 'Marroquin Huarsocca Jose Roberto', 'Madre de Dios', '990082619', '1995-10-05'),
(71601855, 'Atamari Hancco Jose Luis', 'Huancavelica', '949378869', '1998-01-03'),
(71650507, 'Chura Vidal Alex Yorcy', 'Tumbes', '982386423', '1990-01-06'),
(71652853, 'Itusaca Machaca Willson', 'Ucayali', '957058145', '2003-04-07'),
(71653963, 'Cuevas Paredes Cristian Rivaldo', 'Amazonas', '983303039', '1991-09-02'),
(71660352, 'Apaza Laura Pedro Angel', 'Cuzco', '939716264', '1987-01-11'),
(71689688, 'Huamantuco Pacosonco Karen Nelyda', 'Ancash', '982566652', '2001-07-09'),
(71736236, 'Quecara Alegre Pedro Wester', 'Junin', '922969855', '1990-02-06'),
(71743413, 'Morales Mamani Yhon Olger', 'Ica', '995774474', '1989-01-09'),
(71743621, 'Vilcanqui Bailon Lenin Denys', 'Ica', '987629567', '1993-09-03'),
(71751665, 'Pinto Bejar Roy Franz', 'Puno', '913615264', '1988-01-08'),
(71778188, 'Chambi Quispe Jeraldin Araceli', 'Lima', '916732386', '1993-04-01'),
(71790607, 'Sacachipana Incahuanaco Edu', 'Puno', '918811998', '1982-08-06'),
(71791832, 'Colque Espinoza Lesly Evelyn', 'La Libertad', '933925759', '1999-05-06'),
(71819315, 'Cutipa Chambizea Jose Armando', 'Arequipa', '969442439', '2002-01-06'),
(71822415, 'AÑAri Sotomayor Gianmarco', 'Loreto', '922574766', '1995-01-11'),
(71824383, 'Bellido Morocco Darwin', 'Arequipa', '920432758', '1981-11-06'),
(71831625, 'BolaÑOs Vilca Alderson', 'Ucayali', '977732270', '1987-08-09'),
(71831707, 'Cornejo Mamani Mayra Karina', 'Arequipa', '951857038', '1999-02-04'),
(71864545, 'Mitta Quiro Rosel Isaias', 'Moquegua', '914189897', '1987-10-02'),
(71880514, 'Chura Laura Lalo Wladimir', 'Loreto', '954026923', '2002-01-11'),
(71889381, 'Bendita Mamani Marleny', 'Huanuco', '923937636', '2001-04-08'),
(71911003, 'Choquepata Surco Saint Napoleon', 'Cajamarca', '963624886', '2002-01-11'),
(71922653, 'Roque Roque Isabel Corina', 'Madre de Dios', '960586439', '1997-09-09'),
(71933600, 'Mamani Chacon Roy Willian', 'Ica', '965656036', '1997-07-12'),
(71953719, 'Mullo Quispe Maria Elena', 'Ucayali', '983154575', '1980-03-03'),
(71958425, 'Sucari Cecenarro Lourdes', 'Lima', '980192125', '1987-10-03'),
(71972358, 'Castro Lupaca Rudy Paul', 'Tacna', '927049930', '2001-12-09'),
(72000425, 'Flores Tacuri Dora', 'La Libertad', '991878360', '1985-10-07'),
(72005160, 'Soto Machacca Edson Emerson', 'Tumbes', '991695724', '1996-05-11'),
(72033017, 'Quispe Casilla Yang Evelyn', 'Madre de Dios', '940155565', '1983-10-05'),
(72091795, 'Armas Calixto Judith Graciela', 'Junin', '928008087', '2001-11-02'),
(72106057, 'Cosi Rafael Jhon Gustavo', 'Amazonas', '984861196', '1986-04-12'),
(72127920, 'Huanacuni Flores Joaquin Walas', 'Tacna', '934586618', '2001-11-08'),
(72132724, 'Coila Salazar Raul Rosel', 'Lima', '993149503', '1988-11-01'),
(72170846, 'Vilca Mamani Gianella Guadalupe', 'Cuzco', '929131075', '1989-04-06'),
(72178862, 'Callata Mamani Ines Sofia', 'Lambayeque', '964115547', '1997-06-01'),
(72198997, 'Ramos Miranda Werner', 'Piura', '940312052', '1992-05-11'),
(72231350, 'Macedo Pinto Carmen Rosa', 'Madre de Dios', '994218405', '1993-10-03'),
(72243811, 'Vilca Callata Henry Evans', 'Cajamarca', '969249072', '2003-01-10'),
(72297345, 'Cahuana Gutierrez Jheydi Angeles Divzet', 'Tumbes', '942218588', '1989-01-02'),
(72297369, 'Mamani Cajia Yakelyn', 'Pasco', '999017103', '1995-09-07'),
(72305134, 'Zaraza Fernandez Kevin Jampier', 'Pasco', '955611627', '1988-08-09'),
(72354331, 'Ortega Malqui Juana Ines Rosario', 'Ayacucho', '956291928', '1986-08-01'),
(72362015, 'Huisa Vilca Miller Guillermo', 'Lambayeque', '912211758', '1988-05-07'),
(72384587, 'Ramos Cardenas Edith Stephany', 'Ucayali', '962926439', '1992-07-01'),
(72393294, 'Molina Salas Gabriela Zulu', 'Moquegua', '948331115', '2002-10-01'),
(72399537, 'Aguilar Quispe Evelin Paola', 'Tacna', '943106617', '2001-02-12'),
(72418367, 'Mamani Holguin Williams Jefferson', 'Apurimac', '947711538', '1986-04-05'),
(72430297, 'Quispe Gamarra Jorge Francisco', 'Tumbes', '924555734', '1996-10-08'),
(72446814, 'Moreno Lupaca Yaneth', 'Madre de Dios', '983371278', '1982-03-12'),
(72447054, 'Flores Roque Angie Lizbeth', 'Huancavelica', '944748022', '1991-04-08'),
(72471556, 'Blanco Laime Joseph Yordy', 'Apurimac', '912823653', '1990-10-10'),
(72478603, 'Maquera Cahuana Diego Dagoberto', 'Lambayeque', '974419512', '1988-09-06'),
(72515902, 'Puma Parhuayo Cynthia Yanett', 'Tumbes', '951417711', '2004-03-07'),
(72531570, 'Quispe Canepa Ruben Samuel', 'Lambayeque', '993572324', '2000-06-05'),
(72535838, 'Pizarro Illanes Dayan Davhi', 'Puno', '950218745', '1999-05-01'),
(72546783, 'Quispe Quispe Aracely Antonia', 'Lambayeque', '923163035', '1982-05-06'),
(72564222, 'Quispe Rafael Gabriela Mercedes', 'Huanuco', '980352226', '2001-12-01'),
(72656922, 'Velarde Yana Wendy Melissa', 'Piura', '926706428', '1999-01-08'),
(72681462, 'Mamani Sanizo Tony Eric', 'Huanuco', '987146946', '1991-11-06'),
(72704416, 'Azocar Rivera Daniela Milagros', 'Pasco', '990104757', '1999-03-07'),
(72737932, 'Siguayro Mamani Mariela Vanessa', 'Huanuco', '926951624', '2000-12-01'),
(72754816, 'SuaÑA Cahui Jhon', 'La Libertad', '976819964', '1999-11-08'),
(72757025, 'Mamani Puma Lider Arturo', 'Lima', '919741071', '1996-04-07'),
(72770942, 'Zegarra RodríGuez Alvaro Augusto', 'Ancash', '957062363', '2004-11-06'),
(72781320, 'Lope Nayhua Jose Carlos', 'Cuzco', '974626633', '1992-11-08'),
(72812323, 'Vilca Coaquira Yakelin Erika', 'Cuzco', '938441416', '1988-01-10'),
(72812330, 'Vilca Coaquira Kely Melina', 'San Martin', '954572287', '1995-11-08'),
(72855864, 'Sucasaca Apaza Lys Vanessa', 'Ayacucho', '974463805', '1994-03-03'),
(72866742, 'Pinto Mayta Henry', 'La Libertad', '912212663', '1981-06-02'),
(72870998, 'Yufra Zambrano Christian Jesus', 'La Libertad', '946261323', '1997-02-03'),
(72883445, 'Torres Coaquira Diego Cristhian', 'Lima', '926002510', '1998-03-02'),
(72883569, 'Cecenardo Cariapaza Jacilma Yudith', 'Ancash', '990408942', '1980-10-05'),
(72890629, 'Tinta Hancco Ariel Diego', 'Huanuco', '976734664', '1991-01-04'),
(72943715, 'Tito Bailon Brigham Aron', 'Pasco', '927178696', '2002-02-06'),
(72947149, 'Charaja Cornejo Ana Estefany', 'Lambayeque', '944136641', '1981-12-03'),
(72947382, 'Yucra Llanque Leydi Stefani', 'Madre de Dios', '943097616', '1999-09-10'),
(72950687, 'Quispe Machaca Joel Neider', 'La Libertad', '915458712', '1999-04-07'),
(73022548, 'Luque Justo Anyely Teresa', 'Lambayeque', '954984970', '1987-11-12'),
(73029102, 'RamÍRez Cotrado Deysi Diana', 'Huancavelica', '944234129', '1998-12-12'),
(73041605, 'Salas Ticona Jose Luis', 'La Libertad', '928352356', '1989-10-11'),
(73072569, 'Apaza Vilca Dania Gianella', 'Ica', '975167726', '1989-02-07'),
(73250338, 'Apaza Quispe Samuel', 'Tacna', '945964021', '1982-02-02'),
(73251979, 'Apaza Zapana Ivan Michael', 'Tacna', '951176215', '1983-01-02'),
(73251996, 'Huancapaza Quispe Shally Kathe', 'Ayacucho', '910601926', '1994-10-03'),
(73254642, 'Apaza Baca Marcos Josue', 'Cuzco', '923368397', '1997-05-01'),
(73273524, 'Choque Luna Angeles Yaneli', 'Junin', '997904924', '1980-04-10'),
(73273661, 'Onque ChaiÑA D\'Sire Anel', 'Lambayeque', '975063030', '2004-11-12'),
(73298598, 'Quispe Lopez Lesly Giuliana', 'San Martin', '965598932', '1986-02-03'),
(73298702, 'Apaza Tacca Mirna Lilian', 'Huancavelica', '967775573', '1988-03-03'),
(73301049, 'Guevara Choque Paola Isabel', 'Cajamarca', '988266816', '1980-06-08'),
(73303266, 'Serruto Paredes Leila Nicol', 'La Libertad', '998535629', '1997-01-03'),
(73305216, 'Velasquez Zapana Roel Angel', 'Lambayeque', '966671528', '1982-04-04'),
(73311268, 'Yana Beltran Yossell Evelin', 'Madre de Dios', '986859090', '1993-07-03'),
(73313459, 'Chambi Acero Max Vladimir', 'Moquegua', '965042392', '1984-05-12'),
(73342771, 'Mamani Condori Victor Henry', 'Arequipa', '932217870', '1994-09-06'),
(73347660, 'Hancco Quispe Aremy Lucero', 'Lambayeque', '996292623', '1997-09-01'),
(73357411, 'Yanapa Huahuamullo Judith Juana', 'Cuzco', '922335454', '1990-08-07'),
(73385739, 'Guzman Ccama Efren Siro', 'Junin', '978614688', '1997-10-01'),
(73385808, 'Quispe Condori Omar Denilson', 'Amazonas', '971923985', '1982-09-06'),
(73386790, 'Anccasi Alanoca Eddy Alexander', 'Moquegua', '993539314', '1994-08-08'),
(73432933, 'Tapia Titalo Maria Jose', 'Moquegua', '973483199', '1982-10-10'),
(73442108, 'Pilco Vilca Kelly Ruth', 'Junin', '969411724', '2001-07-11'),
(73450525, 'Huisa Huisa Braulio', 'Lima', '974878297', '1987-10-12'),
(73477347, 'Valeriano Huaman Michelle Nadia', 'Tumbes', '958245601', '1992-02-02'),
(73486213, 'Pari Churata Juan Josue', 'Madre de Dios', '969624464', '1990-11-10'),
(73503369, 'Merma Acrota Soledad', 'Ica', '964224946', '1985-01-05'),
(73504104, 'Sucasaca Pampa Joel Cristian', 'Pasco', '986516740', '1994-01-07'),
(73512319, 'Churquipa Parisaca Rony Alex', 'Piura', '964775108', '1986-12-07'),
(73513377, 'Larico Fuentes Joel Yury', 'Tacna', '975916704', '1993-11-01'),
(73513758, 'Tacca Chavez Koyac Kenyo', 'Tacna', '945557815', '2003-02-09'),
(73517382, 'Calderon Paxi Juan Jose', 'Moquegua', '910151131', '1983-10-02'),
(73523041, 'Aguilar Mayta Amilcar', 'Apurimac', '971645109', '1983-05-11'),
(73523957, 'Ancalla Vela Josue', 'La Libertad', '966985589', '1998-06-10'),
(73536929, 'Quispe Condori Clara', 'Puno', '982866105', '1994-07-09'),
(73580446, 'Bustinza Hilca Katerine Madeleine', 'Arequipa', '987239741', '1990-02-08'),
(73584028, 'Gutierrez Huahuachampi Reynaldo Augusto', 'Lima', '940087262', '1993-02-08'),
(73619609, 'Velasquez Yujra Ana Mayli', 'Junin', '939663430', '1994-04-07'),
(73640396, 'Ucharico Onofre Ruth Diana', 'Tumbes', '943933548', '2004-05-07'),
(73645426, 'Zapana Ccari Deisy Judith', 'Lima', '930614181', '1981-03-07'),
(73645566, 'Mamani Apaza Javier Fernando', 'Arequipa', '947787200', '1995-03-12'),
(73651511, 'Zapana Roque Thania Nohemi', 'Amazonas', '973712466', '1997-02-07'),
(73673873, 'Ramos Riva Renzo Fabricio', 'Loreto', '915881342', '1987-06-07'),
(73694243, 'Amanqui Lipe Gilder Yulem', 'La Libertad', '964679541', '2002-04-10'),
(73713312, 'Pacuri Quispe Luz Marina', 'Apurimac', '998012850', '2000-01-07'),
(73738908, 'Apaza Luque Luz Carmen', 'Tacna', '961421196', '1996-04-05'),
(73739463, 'Valer Gonzales Yvonne Anthoaneth', 'Huanuco', '988234485', '2004-06-08'),
(73740282, 'Huaman Ortiz Ruth Catherine', 'Lima', '962795996', '1997-01-11'),
(73740363, 'Condori Coloma Alex Edwin', 'Puno', '978827086', '1985-06-09'),
(73744656, 'Pineda Gutierrez Irvin Alex', 'Cajamarca', '917695262', '1985-03-06'),
(73744762, 'Quispe Soloysolo Luisa Erika', 'Lima', '982307841', '1981-03-03'),
(73750854, 'Quispe Pilco Frank Ronny', 'Moquegua', '991352505', '1985-09-02'),
(73758960, 'Madrigal Ccora Yulisa Paola', 'Moquegua', '929432637', '1993-06-03'),
(73766015, 'Torres Valencia Alexandra Tabata', 'Huancavelica', '964187938', '1995-09-06'),
(73771380, 'Garcia Ccanahuire Yerson', 'Amazonas', '981151679', '2004-05-12'),
(73771590, 'Bellido Ramos Virginia', 'Amazonas', '972221286', '1994-05-01'),
(73771681, 'Coaquira Ayque Sonia', 'Apurimac', '951621655', '1980-01-09'),
(73771898, 'Corimayhua Luque Doris Keila', 'La Libertad', '946399658', '2001-09-04'),
(73773977, 'Chavez Paredes Lourdes', 'Tacna', '912648260', '1988-11-12'),
(73776961, 'Pari Luna Patrick Marlon', 'Tacna', '949023561', '1981-04-06'),
(73806429, 'Condori Calcina Mabel Betsy', 'Puno', '928658540', '1994-03-01'),
(73807774, 'Lema Contreras Sandro Jhonatan', 'La Libertad', '992924600', '1998-11-04'),
(73809003, 'Flores Maquera Ronny', 'Pasco', '992137627', '1991-07-12'),
(73810724, 'Ramos CaÑAzaca Christian', 'Lima', '978924389', '1984-10-08'),
(73810939, 'Cahuana Mamani Mariela Nayely', 'Madre de Dios', '930647900', '1990-02-11'),
(73811977, 'Ñaca Mendoza Luz Mery', 'Tacna', '946482483', '1986-12-06'),
(73817701, 'Flores Ignacio Luz Angelica', 'Lambayeque', '925497437', '1985-10-07'),
(73819947, 'Auccahuaqui Tapara Liceth Joselin', 'Tacna', '929717864', '1990-01-07'),
(73866979, 'Holgado Cardenas Abel Gustavo', 'Arequipa', '956676299', '2004-01-07'),
(73876373, 'Pancca Humpiri Gabriela', 'Piura', '947369141', '1987-10-12'),
(73888191, 'Flores Tacora Luis Antonio', 'Ucayali', '998152888', '1992-08-06'),
(73892348, 'Tipo Cansaya Yobana Jossy', 'Loreto', '975188177', '1987-08-04'),
(73931166, 'Ochoa Cruz Sandro Kenyi', 'Ica', '973501150', '1981-10-07'),
(73942636, 'Condori Mamani Ronald Roman', 'Junin', '964397958', '2003-12-03'),
(73955100, 'Idme Gutierrez Ruth Karina', 'Puno', '925089961', '1986-12-06'),
(73958832, 'Jilapa Pari Cristian Brath', 'Madre de Dios', '926072483', '1980-10-03'),
(73958847, 'Musaja Toque Brayan Richard', 'Piura', '963983146', '2002-06-08'),
(73993181, 'Anchapuri Velasquez Jose Carlos', 'Cuzco', '963372623', '1981-06-08'),
(74058020, 'Jimenez Huanca Erick Madgier', 'Ica', '993345874', '1981-06-06'),
(74060424, 'Villalta Luna Noelia Vanesa', 'Pasco', '923688692', '1998-03-07'),
(74060482, 'Castillo Quispe Fredy', 'Pasco', '911927605', '2004-11-06'),
(74118153, 'Cahuaya Tintaya Midwar Gustavo', 'La Libertad', '937546511', '1993-12-01'),
(74124188, 'Huillca Palomino Rodney', 'Arequipa', '948275436', '2000-10-05'),
(74169068, 'Vasquez Acero Alex Victor', 'Tacna', '955561993', '2001-08-02'),
(74173264, 'Mamani Mamani Wilmer Yoel', 'Puno', '990102171', '1988-10-06'),
(74200146, 'Caceres Limachi Lizeth Delia', 'Piura', '997115760', '1983-04-05'),
(74204540, 'Mamani Huanca Evelyn Katherine', 'Huanuco', '917528443', '1983-06-09'),
(74205374, 'Apaza Garcia Geraldine Antuannet', 'Piura', '939316308', '1984-07-03'),
(74209067, 'Zapana Cauna Abigail Judith', 'Tumbes', '953472088', '1987-02-06'),
(74217637, 'Quispe Tapia Ledy Sariah', 'Ancash', '916376534', '1983-04-06'),
(74220585, 'Choque Pacompia Marily', 'Tumbes', '916006969', '1984-06-05'),
(74222946, 'Saca Vilca Maily Lisbeth', 'Amazonas', '925322963', '1985-12-03'),
(74226511, 'Onque Quispe Gabriela', 'Loreto', '987561840', '1984-06-01'),
(74303526, 'Quispe Casilla Owen Helveg', 'Huanuco', '997189895', '1995-11-02'),
(74307320, 'Chura Anccota Cristian Edwin', 'Apurimac', '933182726', '1991-01-10'),
(74307586, 'Mamani Huaman Carlos Antonio', 'Ucayali', '991618636', '1999-06-02'),
(74313533, 'Enriquez Martinez Wendy', 'La Libertad', '989587578', '1982-02-06'),
(74326202, 'Cayo Huanca Lizbeth Shamely', 'Lambayeque', '944496925', '2001-04-12'),
(74351489, 'Pampa Salluca Edilberto Gregory', 'Amazonas', '992001080', '1988-10-04'),
(74355689, 'Condori Sulca Arnold Ivan', 'Ucayali', '947216064', '1989-12-10'),
(74434193, 'Laura Quispe Rosalinda', 'Piura', '957862263', '1995-04-11'),
(74451769, 'ZuniIga Medrano Gaby Lizbeth', 'Ayacucho', '995605147', '1981-09-05'),
(74457128, 'Zapana Callisaya Evely Leyla', 'Cuzco', '979029873', '1981-06-10'),
(74457772, 'Vasquez Zapana Edson Elvis', 'Cajamarca', '935843648', '1999-05-07'),
(74458950, 'Coila Jallo Claudia Raquel', 'Amazonas', '944233527', '1991-02-12'),
(74503566, 'Hermosilla Melendez Brizaida', 'Loreto', '921645542', '2002-09-09'),
(74536740, 'Condori Quispe Liz Esmeralda', 'San Martin', '939863290', '1980-04-12'),
(74538066, 'Condori Coaquira Doris Liset', 'Piura', '917632668', '1985-06-01'),
(74597544, 'Gutierrez Mamani Jhon Clever', 'Piura', '999233359', '1981-04-07'),
(74664394, 'Velasquez Pelinco Yoycy', 'Moquegua', '979492843', '2002-11-07'),
(74720012, 'Arohuanca Flores Brayan Vladimir', 'Apurimac', '950711885', '1995-04-11'),
(74729162, 'Quispe Anccori Marianela', 'Cajamarca', '949892702', '1988-05-12'),
(74747191, 'Hilasaca Soto Karla Deydanea', 'Cajamarca', '972852550', '1983-01-03'),
(74780514, 'Ochoa Huallipe Najaira Lucila', 'Huanuco', '923554767', '1994-07-07'),
(74807721, 'Llanque Mamani Noemi Brizaida', 'Madre de Dios', '964774414', '1990-12-09'),
(74829037, 'Quispe Caxi Cristina', 'Ucayali', '962705829', '1994-07-04'),
(74836209, 'Cuentas Vilca Armando', 'Huancavelica', '911366630', '1996-11-05'),
(74851479, 'Apaza Gonzales Yadira Alessandra', 'Madre de Dios', '936467982', '2001-12-11'),
(74861426, 'Quispe Chiara Susan Fiory', 'Ayacucho', '983653007', '1990-08-07'),
(74946713, 'Arias Castillo Karla Dianira', 'Amazonas', '954238520', '1981-01-08'),
(74951201, 'Perez Morocco Bryan Daniel', 'Cajamarca', '940504155', '1983-10-11'),
(74959017, 'Barrios Soto Kelvin', 'Amazonas', '926855313', '1993-10-01'),
(74973578, 'Flores Calcina David Alberto', 'Ucayali', '982895944', '1984-03-04'),
(75057080, 'Hallasi Callata Ruth Maribel', 'Pasco', '968164230', '1999-02-11'),
(75082467, 'Rojas Puma Rubela Maria', 'Huanuco', '949458909', '1990-04-03'),
(75093524, 'Apaza Chavez Yeison Isai', 'Ucayali', '922901293', '1988-08-08'),
(75167522, 'Aguilar Cruz Almendra', 'Cajamarca', '927253031', '2000-02-04'),
(75263377, 'Torres Cute Danny Daniel', 'La Libertad', '926374186', '1985-01-05'),
(75269248, 'Gallegos Lizarraga Rudy Alex', 'Ancash', '971243941', '1985-03-09'),
(75322830, 'Montiel Canaza Deysy Patricia', 'Tacna', '992925997', '2001-10-04'),
(75329590, 'Mayta Villanueva Jhon Ricardo', 'Junin', '992642648', '1983-11-12'),
(75340310, 'Choque Martinez Jose Carlo', 'Lima', '949667376', '1987-01-12'),
(75360083, 'Paquita Mayta Mayumi Tais', 'Moquegua', '926586302', '1989-05-03'),
(75360115, 'Ramos Cayo Yameli Dianira', 'Junin', '919459781', '1989-10-05'),
(75364393, 'Flores Huayhua Rocio', 'Pasco', '979587391', '1996-10-12'),
(75366028, 'Yucra Perez Carlos Daniel', 'Piura', '996436909', '2000-07-08'),
(75396854, 'Ccarita Mamani Jose Luis', 'Moquegua', '966797864', '1991-01-10'),
(75396867, 'Pineda Jara Yadira Brigitte', 'Ayacucho', '961182082', '2004-04-12'),
(75402059, 'Quispe Alave Nely Roxana', 'Tumbes', '985709763', '1982-12-11'),
(75403236, 'Salcedo Arratia Cristian Ariel', 'Junin', '947985281', '1988-12-02'),
(75412938, 'Musaja Toque Jesus Antony', 'Apurimac', '925497469', '1993-07-06'),
(75445850, 'Valero Yapo Joel Wilber', 'Loreto', '914771200', '1985-04-12'),
(75449518, 'Pari Yana Edwin Abel', 'Madre de Dios', '940843556', '1988-12-04'),
(75453124, 'Mamani Hancco Diana Elizabeth', 'San Martin', '980757913', '1996-08-05'),
(75454471, 'Alarcon Cayo Cinthia Lucero', 'Piura', '984237531', '1986-06-01'),
(75483992, 'Mamani Mayta Eder Roger', 'Arequipa', '940987830', '1997-08-06'),
(75494359, 'MuÑOz Mamani Christian Yoel', 'Huancavelica', '924046705', '2000-11-01'),
(75501812, 'UmiÑA Quispe Ruth Delsy', 'Cajamarca', '933094693', '1988-12-12'),
(75510347, 'Coyla Ccopa Guido Vladimir', 'Lima', '981141701', '1982-08-06'),
(75515444, 'Ticahuanca Centeno Luis Andres', 'Huancavelica', '911468392', '1984-04-04'),
(75529266, 'Encinas Flores Cristian', 'Ancash', '966546972', '1994-09-06'),
(75530807, 'Mamani Cheje Luiggy Mayumy', 'Piura', '950494681', '2003-12-06'),
(75576312, 'Arpasi Chambilla Fernando Ivan', 'San Martin', '982962673', '1986-11-09'),
(75580242, 'Ylaquita Mamani Gilder Jakeline', 'Junin', '935578476', '1983-08-09'),
(75615353, 'Jara Paucar Lucia Antonieta', 'Ucayali', '998554855', '1995-01-06'),
(75621351, 'Roque Yana Ruth Evelin', 'Lambayeque', '993741020', '1980-03-10'),
(75661511, 'Choquehuanca Mamani Flor De Maria', 'Piura', '946782593', '1982-08-01'),
(75672420, 'Hualla Condori Gian Royer', 'Ancash', '930373925', '2000-02-12'),
(75708377, 'Yucra Chipana Jhoel Ronald', 'Lima', '932816827', '1995-09-04'),
(75709303, 'Chata Zapana Jose Luis', 'Lima', '934811012', '1992-04-03'),
(75758886, 'Puma Leonardo Lucy Leonela', 'Junin', '950061101', '2004-05-11'),
(75783680, 'Roque Yana Nelida Marisol', 'Amazonas', '978072421', '1989-12-01'),
(75793911, 'Incacutipa Mamani Jhon Omar', 'Huanuco', '974913712', '1994-05-10'),
(75820312, 'Yapo Huillca Omar Manuel', 'Piura', '936024350', '1980-09-07'),
(75835016, 'Astete Loza Yesica Yesbenia', 'Piura', '942709170', '1987-05-06'),
(75881267, 'Tacca Chavez Halton Yojan', 'Cajamarca', '971094028', '1985-11-04'),
(75902900, 'Escarcena Pancca Brandy', 'Ayacucho', '999568689', '1997-07-10'),
(75904254, 'Sucaticona Cutipa Vianca Belen', 'Cuzco', '926622757', '1982-06-04'),
(75904397, 'Muelle Ccama Ludwing Wilfredo', 'Ica', '941146809', '1993-02-07'),
(75909943, 'Calla Ticona Luz Marina', 'Tumbes', '980071337', '1996-09-03'),
(75928905, 'Montalvo Mamani Andres', 'Tacna', '976592498', '1983-01-05'),
(75929933, 'Velasquez Olvea Leydi Vanessa', 'Ancash', '911193152', '1984-12-01'),
(75930907, 'Flores Cruz Jhonatan', 'Tumbes', '995578962', '1989-08-05'),
(75937167, 'Luque Mendoza Gerson', 'Loreto', '916261934', '1999-09-07'),
(75944477, 'Coaquira Lerma Deissy Cinthia', 'Arequipa', '944886282', '1981-02-11'),
(75956695, 'Aquise Vargas Maria Elizabeth', 'Cuzco', '952642181', '1988-11-12'),
(75980043, 'Mamani Chambi Rossy Yeny', 'Amazonas', '922792701', '1985-02-06'),
(75997716, 'Ccori Ccolque Rai', 'Cajamarca', '927225938', '1990-03-12'),
(76017361, 'Loayza Loayza Ana Isabel', 'Lima', '982814734', '1984-06-11'),
(76019857, 'Puma Hanccori Milagros', 'Amazonas', '921684018', '1985-04-10'),
(76024399, 'Palomino Zapata Mary Luz', 'Huancavelica', '958906729', '1989-02-11'),
(76028387, 'Capia Ramos Smith Clinton', 'Apurimac', '979643342', '1982-01-10'),
(76028695, 'Huayta Laura Cesar Abundio', 'Cajamarca', '911134887', '1981-05-04'),
(76228300, 'Mamani Arana Linda Aurora', 'Arequipa', '935849734', '1988-09-01'),
(76246451, 'Pino Mamani Lucia', 'Ucayali', '970359894', '1984-11-05'),
(76251728, 'Yucra Soto Walter Junior', 'Huancavelica', '939778132', '1988-09-04'),
(76253842, 'Hualpa Tacora Anthony Cesar', 'Madre de Dios', '997376336', '2001-08-11'),
(76277494, 'Baylon Bueno Albino Arlenko', 'Puno', '949751539', '1983-09-06'),
(76322067, 'Pilcomamani Chavez Yamilet Sayuri', 'Loreto', '940849954', '1994-05-09'),
(76401671, 'Ponce Valencia Oscar', 'Madre de Dios', '918699912', '1981-11-04'),
(76507349, 'Ancayfuro Condori Fabricio Berliner', 'Ucayali', '920441258', '1993-07-05'),
(76546603, 'Apaza Puma Eduardo', 'Piura', '969024962', '1984-12-10'),
(76566574, 'Solorzano Saya Ayda Rocio', 'Huanuco', '989357451', '1986-08-03'),
(76567538, 'Panca Chuquitarqui Cinthia', 'Madre de Dios', '969003788', '1993-02-08'),
(76592847, 'Mamani Cruz Kewin Arnold', 'Ica', '986387663', '2004-05-01'),
(76592857, 'Quispe Bernedo Randol Reni', 'Lambayeque', '926255627', '2000-05-07'),
(76604753, 'Colque Flores Yesica Yanett', 'Ica', '986623829', '2003-10-06'),
(76665813, 'Laricano Mamani Wagner Alain', 'Huanuco', '985849515', '1987-07-11'),
(76693935, 'Huanca Velasquez Alvin Bruno', 'Lima', '974106359', '1980-02-04'),
(76737222, 'Quispe Laura Alex', 'Piura', '983809815', '1986-06-07'),
(76746718, 'Apaza Tintaya Leidy Cinthia', 'Huancavelica', '955371538', '2001-04-09'),
(76771566, 'Salazar Calcina Handy Yihad', 'Cajamarca', '914574369', '1997-08-02'),
(76815046, 'Nina Alanoca Yovana', 'Huancavelica', '944602428', '1996-02-12'),
(76827012, 'Pari Choquechambi Jhiorshi', 'Loreto', '911324472', '1990-01-04'),
(76835668, 'Rafael Calizaya Anghie Dayana', 'Ancash', '943137756', '1996-11-07'),
(76860293, 'Ramos Ramos Blanca Nelida', 'Arequipa', '937284893', '1997-01-09'),
(76861298, 'Mamani Barrientos Jhon Michael', 'Huanuco', '929951942', '1990-06-02'),
(76867167, 'Murillo Barreda Lara Yahandra', 'Cuzco', '943705350', '1980-09-02'),
(76871347, 'Larico Pari Aurea Maritza', 'La Libertad', '915486483', '1987-03-09'),
(76902668, 'Calsin UmiÑA Saul Franco', 'Junin', '930934343', '1997-06-03'),
(76925476, 'Gomez Quispe Omar', 'La Libertad', '991561511', '2002-03-10'),
(76949354, 'Huamani Sumi Nayeli Yuliana', 'Piura', '961534295', '1996-10-06'),
(76967688, 'Ramos Laura Renzo Erick', 'Junin', '934346549', '1991-01-11'),
(76969362, 'Chata Blanco Edison Yimi', 'Huanuco', '985263357', '1997-08-04'),
(76970402, 'Vargas Mamani Jhosep Wember', 'Tacna', '919033676', '1980-08-02'),
(77025457, 'Aquise Quispe Jhoel Edys', 'Tumbes', '999969152', '1993-05-06'),
(77036039, 'Morocco Ramos Roni Cristian', 'Apurimac', '923174213', '1992-01-11'),
(77073132, 'Aguilar Flores Mischel Yojhana', 'Ayacucho', '923611754', '1987-02-01'),
(77081209, 'Condori Yucra Paul Brayan', 'Moquegua', '971525087', '1994-11-09'),
(77128774, 'Mamani Ramos Ronal Eliseo', 'Tumbes', '942294565', '1983-03-06'),
(77158014, 'Apaza Huata Ronaldo Junior', 'Ayacucho', '921582022', '2003-06-05'),
(77218277, 'Ramirez Chuquimia Berenice Jacqueline', 'Ucayali', '986669087', '2001-07-09'),
(77235855, 'Calderon Pacco Elvis Guido', 'Apurimac', '924096463', '1993-10-09'),
(77328133, 'Mamani Pinto Frank Joseph', 'Ayacucho', '914305620', '1992-07-05'),
(77377522, 'Medina Escobar Ruy Luis', 'Lima', '962028116', '1994-01-01'),
(77386302, 'Huahuasoncco Mamani Gian Marco', 'Huanuco', '917231363', '2003-11-08'),
(77419379, 'Ccahuana Zuniga Rolando Sabino', 'Piura', '939772306', '1985-08-05'),
(77495623, 'Pilco Huanca Naydhu Nohelia', 'Ucayali', '979586191', '2004-09-10'),
(77566448, 'Ponce Paye Rey Neric Jimy', 'Moquegua', '910174932', '2004-06-07'),
(77683174, 'Huanca Condori Gloria Estefany', 'Puno', '971292161', '2004-07-06'),
(77813766, 'Condori Mamani Milton', 'Amazonas', '958283851', '1995-06-08'),
(77907985, 'Pachapuma Choquepata Yrma Magali', 'Tumbes', '910239972', '1996-03-02'),
(77917909, 'Subia Gutierrez Jhony Clinton', 'Puno', '929937384', '1980-06-01'),
(77921678, 'Condori Ccapa Ever', 'Apurimac', '954471726', '1984-08-01'),
(77922161, 'Flores Calcina Luz Marina', 'Moquegua', '952697479', '1996-10-07'),
(77922914, 'Meza Anahua Maria Josefina', 'Cajamarca', '915431924', '1985-05-11'),
(81604619, 'Quenta PeÑAranda Andre Fabricio', 'Apurimac', '919485072', '2000-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `idsubmenu` char(3) NOT NULL,
  `dessubmenu` varchar(45) DEFAULT NULL,
  `menu_idmenu` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `viaje`
--

CREATE TABLE `viaje` (
  `idviaje` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`idboleto`,`pasajero_dnip`,`admin_idadmin`),
  ADD KEY `fk_boleto_pasajero1_idx` (`pasajero_dnip`),
  ADD KEY `fk_boleto_admin1_idx` (`admin_idadmin`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`placa`);

--
-- Indexes for table `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`dnic`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indexes for table `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`dnip`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`idsubmenu`),
  ADD KEY `fk_submenu_menu_idx` (`menu_idmenu`);

--
-- Indexes for table `viaje`
--
ALTER TABLE `viaje`
  ADD PRIMARY KEY (`idviaje`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boleto`
--
ALTER TABLE `boleto`
  ADD CONSTRAINT `fk_boleto_admin1` FOREIGN KEY (`admin_idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_boleto_pasajero1` FOREIGN KEY (`pasajero_dnip`) REFERENCES `pasajero` (`dnip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `submenu`
--
ALTER TABLE `submenu`
  ADD CONSTRAINT `fk_submenu_menu` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
