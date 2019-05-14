-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2019 a las 21:01:28
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`placa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
