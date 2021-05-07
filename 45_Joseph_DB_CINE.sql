-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2021 a las 22:34:55
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cartelera`
--

CREATE TABLE `tbl_cartelera` (
  `ID_CARTELERA` int(11) NOT NULL,
  `PELICULA` varchar(50) NOT NULL,
  `HORA` varchar(20) NOT NULL,
  `FECHA` varchar(20) NOT NULL,
  `IDIOMA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_cartelera`
--

INSERT INTO `tbl_cartelera` (`ID_CARTELERA`, `PELICULA`, `HORA`, `FECHA`, `IDIOMA`) VALUES
(1, 'Rey Leon', '8', '25', 'Español'),
(2, 'Libro De La Selva', '7:00', '12/03/2018', 'Inglés'),
(3, 'Avengers End Game', '6:00p.m', '12/06/2019', 'Español'),
(4, 'Jurassic World', '6:30p.m', '20/07/2015', 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_taquilla`
--

CREATE TABLE `tbl_taquilla` (
  `ID_TAQUILLA` int(11) NOT NULL,
  `SALA` varchar(100) NOT NULL,
  `BUTAKAS` int(100) NOT NULL,
  `BOLETOS` int(100) NOT NULL,
  `PRECIO` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_taquilla`
--

INSERT INTO `tbl_taquilla` (`ID_TAQUILLA`, `SALA`, `BUTAKAS`, `BOLETOS`, `PRECIO`) VALUES
(1, 'Primera', 5, 5, 250),
(2, 'Tercera', 2, 2, 500),
(3, 'Segunda', 3, 3, 750);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cartelera`
--
ALTER TABLE `tbl_cartelera`
  ADD PRIMARY KEY (`ID_CARTELERA`);

--
-- Indices de la tabla `tbl_taquilla`
--
ALTER TABLE `tbl_taquilla`
  ADD PRIMARY KEY (`ID_TAQUILLA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cartelera`
--
ALTER TABLE `tbl_cartelera`
  MODIFY `ID_CARTELERA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_taquilla`
--
ALTER TABLE `tbl_taquilla`
  MODIFY `ID_TAQUILLA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
