-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2019 a las 22:06:37
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transorte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buses`
--

CREATE TABLE `buses` (
  `placa` varchar(8) NOT NULL,
  `nro de asientos` int(11) DEFAULT NULL,
  `calefaccion` varchar(2) DEFAULT NULL,
  `busescol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `buses`
--

INSERT INTO `buses` (`placa`, `nro de asientos`, `calefaccion`, `busescol`) VALUES
('A1A-959', 54, 'NO', NULL),
('C8X-952', 56, 'NO', NULL),
('X6J-968', 60, 'SI', NULL),
('ZAP-955', 64, 'SI', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `dni` varchar(8) NOT NULL,
  `nro de licencia` varchar(20) DEFAULT NULL,
  `clase categoria` varchar(10) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `años de experiencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`dni`, `nro de licencia`, `clase categoria`, `nombre`, `años de experiencia`) VALUES
('01221713', 'U01221713 - 3', 'A I', 'MENDIZABAL GIRON FIDEL', 20),
('04081514', 'M04081514 - 4', 'A IIb', 'SILVESTRE VELASQUEZ ORLANDO LUIS', 9),
('29209868', 'H29209868 - 8', 'A IIIc', 'LAZARTE CONCHA RODOLFO MAURO', 6),
('29677914', 'H29677914 - 9', 'A IIIc', 'MACHICAO PROVINCIA LUIS ALBERTO', 16),
('30858852', 'H30858852 - 10', 'A IIIc', 'CARRERA RODRIGUEZ JOSE ENRIQUE', 17),
('41498370', 'Q41498370 - 2', 'A I', 'AGREDA CAMPOS EDUARDO JUNNIOR', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `fecha de nac.` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`dni`, `nombre`, `direccion`, `celular`, `fecha de nac.`) VALUES
(63276785, 'GOMEZ ZUÑIGA EDISON	', 'CUSCO', '947658520', '1990-05-04'),
(73451632, 'HUAITA SAIRE MARÍA CELINDA	', 'ANTA', '978300650', '1977-01-21'),
(74144096, 'DUEÑAS TTITO OSCAR JOSE	', 'CANCHIS', '920648173', '2006-02-05'),
(76942276, 'PERALTA ESTRADA CARLOS MIGUEL	', 'CUSCO', '958748130', '2016-12-06'),
(77079906, 'HUAMAN ATAYUPANQUI ALEXANDRA	', 'CUSCO', '972827675', '1991-11-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `clave` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`) VALUES
(1, 'medina', 'Cuenta1'),
(2, 'prueva1', 'contra1'),
(3, 'diego569', '73520253');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`placa`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
