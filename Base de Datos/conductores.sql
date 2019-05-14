-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2019 a las 21:01:34
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
