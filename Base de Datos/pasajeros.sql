-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2019 a las 21:01:39
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
