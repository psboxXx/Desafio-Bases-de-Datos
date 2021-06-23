-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2021 a las 04:45:40
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafiobd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `num_depto` int(11) NOT NULL,
  `nombre_depto` varchar(25) NOT NULL,
  `presupuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`num_depto`, `nombre_depto`, `presupuesto`) VALUES
(11, 'Calidad', 40000),
(14, 'Informática', 80000),
(15, 'Gestión', 95000),
(16, 'Comunicación', 75000),
(37, 'Desarrollo', 65000),
(77, 'Investigación', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `depto_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`dni`, `nombre`, `apellido`, `depto_num`) VALUES
(31096675, 'Martin', 'Zarabia', 77),
(31096678, 'Juan', 'Lopez', 14),
(31236985, 'Maria', 'diamante', 14),
(32145698, 'Guadalupe', 'Perez', 77),
(32369854, 'Bernardo', 'pantera', 37),
(32698547, 'Mariana', 'Lopez', 15),
(32698548, 'Carmen', 'barbieri', 16),
(33698521, 'Pedro', 'Perez', 14),
(34269854, 'Jose', 'velez', 77),
(36125896, 'Marti', 'Julia', 14),
(36125965, 'Lucia', 'Pesaro', 14),
(36985471, 'Omar', 'Diaz', 15),
(41369852, 'Paula', 'Madariaga', 77),
(42369854, 'Abril', 'Sanchez', 37),
(89267109, 'Esther', 'Vazquez', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`num_depto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `depto_num` (`depto_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
