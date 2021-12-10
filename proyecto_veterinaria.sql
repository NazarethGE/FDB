-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2021 a las 19:09:59
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Num_Cliente` varchar(45) DEFAULT NULL,
  `IdCliente` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Mascota` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Num_Cliente`, `IdCliente`, `Nombre`, `Mascota`) VALUES
('18', 'AJ18', 'Alexandra Juarez', 'Perro'),
('1', 'AM01', 'Armando Montero', 'Gato'),
('15', 'AM15', 'Armando Martinez', 'Iguana'),
('17', 'AP17', 'Ana Puga', 'Caballo'),
('30', 'CP30', 'Celia Prado', 'Conejo'),
('25', 'CR25', 'Carlos Reyes', 'Perro'),
('8', 'DB08', 'David Beltran', 'Mono Araña'),
('26', 'EE26', 'Emmanuel Espinoza', 'Iguana'),
('2', 'EG02', 'Ernesto Gutierrez', 'Cuyo'),
('28', 'ES28', 'Eduardo Santillan', 'Suricata'),
('29', 'EV29', 'Ema Vicente ', 'Serpiente'),
('3', 'GC03', 'Gabriela Caldera', 'Perro'),
('27', 'GE27', 'Galilea Esparza', 'Gato'),
('16', 'HF16', 'Hector Ferrer ', 'LLegua'),
('20', 'JA20', 'Javier Arambula', 'Perro'),
('9', 'JD09', 'Juana Duron', 'Gato'),
('14', 'KA14', 'Kevin Arrmendariz', 'Perro'),
('13', 'KG13', 'Katerine Gomez', 'Conejo'),
('4', 'MD04', 'Mario Duron', 'Hamster'),
('22', 'MG22', 'Monse Guzman', 'Iguana'),
('7', 'NC07', 'Noelia Carreron', 'Serpiente'),
('6', 'PM06', 'Pablo Montero', 'Hamanster'),
('10', 'RH10', 'Renata Herrera', 'Hamnster'),
('19', 'RS19', 'Reina Sosa', 'Loro'),
('23', 'SL23', 'Samuel Loera', 'Mono Araña'),
('11', 'TH11', 'Tomas Sierra', 'Iguana'),
('12', 'TL12', 'Teresa Lucio', 'Suricata'),
('21', 'UT21', 'Ulices Torres', 'Cuyo'),
('24', 'VR24', 'Vicente Ramirez', 'Hamnster'),
('5', 'YE05', 'Yuliana Espinoza', 'Loro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `Id` varchar(45) NOT NULL,
  `Serv_Id` varchar(45) DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Prod_Id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`Id`, `Serv_Id`, `Tipo`, `Prod_Id`) VALUES
('1', '1', 'Guarderia ', '2'),
('10', '2', 'Peluqueria', '2'),
('11', '4', 'Chequeo Medico', '2'),
('12', '4', 'Chequeo Medico', '2'),
('13', '2', 'Peluqueria', '2'),
('14', '4', 'Chequeo Medico', '3'),
('15', '3', 'Spa', '2'),
('16', '2', 'Peluqueria', '2'),
('17', '1', 'Guarderia', '2'),
('18', '3', 'Spa', '2'),
('19', '2', 'Peluqueria', '2'),
('2', '1', 'Guarderia', '2'),
('20', '1', 'Guarderia', '2'),
('21', '1', 'Guarderia', '2'),
('22', '2', 'Peluqueria', '2'),
('23', '4', 'Chequeo Medico ', '3'),
('24', '4', 'Chequeo Medico', '2'),
('25', '3', 'Spa', '1'),
('26', '1', 'Guarderia', '1'),
('27', '1', 'Guarderia ', '2'),
('28', '2', 'Peluqueria', '1'),
('29', '2', 'Peluqueria', '2'),
('3', '2', 'Peluqueria ', '1'),
('30', '4', 'Chequeo Medico', '1'),
('4', '3', 'Chequeo medico', '3'),
('5', '4', 'spa', '2'),
('6', '2', 'Peluqueria', '3'),
('7', '2', 'Peluqueria', '2'),
('8', '2', 'Peluqueria', '2'),
('9', '3', 'Spa', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `Ficha` varchar(45) NOT NULL,
  `Tipo_mascota` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` varchar(45) DEFAULT NULL,
  `Servicio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`Ficha`, `Tipo_mascota`, `Nombre`, `Edad`, `Servicio`) VALUES
('10', 'Gato', 'Muñeca', '9', 'Guarderia'),
('11', 'Cuyo', 'Toti', '3', 'Chequeo medico'),
('12', 'Perro', 'Tomas', '6', 'Spa'),
('13', 'Hamster', 'Bambi', '2', 'Chequeo medico'),
('14', 'Loro', 'Luis', '3', 'Chequeo medico'),
('15', 'Perro', 'Yayo', '2', 'Guarderia'),
('16', 'Mono Araña', 'Hugo', '3', 'Guarderia'),
('17', 'Conejo', 'Candy', '4', 'Chequeo Medico'),
('18', 'Gato', 'Filemona', '5', 'Spa'),
('19', 'Serpiente', 'Caría', '6', 'Guarderia'),
('20', 'Lemur', 'Kiko', '7', 'Spa'),
('21', 'Hamnster', 'Frijolito', '9', 'Chequeo Medico'),
('22', 'Ardilla ', 'Nía', '9', 'Chequeo Medico'),
('23', 'LLegua', 'Yiya', '7', 'Guarderia'),
('24', 'Caballo', 'Trueno', '6', 'Guarderia'),
('25', 'Gato', 'Pedro', '5', 'Spa'),
('26', 'Perro', 'Tomás', '5', 'Spa'),
('27', 'Mono Araña', 'Pipo', '5', 'Chequeo Medico'),
('28', 'Serpiente', 'Quíara ', '4', 'Chequeo Medico'),
('29', 'Gato', 'Samuel ', '3', 'Guarderia'),
('30', 'Hamnster', 'Tito', '2', 'Guarderia '),
('31', 'Suricata', 'Sasy', '1', 'Guarderia'),
('32', 'Ardilla', 'Lulu', '2', 'Spa'),
('33', 'Iguana', 'Ramona', '3', 'Chequeo Medico'),
('34', 'Serpiente', 'Zíara', '4', 'Chequeo Medico'),
('35', 'LLegua', 'Princesa', '5', 'Chequeo Medico'),
('36', 'Perro', 'Yayo', '6', 'Spa'),
('37', 'Conejo', 'Kiko', '6', 'Spa'),
('38', 'Loro', 'Matias', '7', 'Guarderia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` varchar(45) NOT NULL,
  `productos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `productos`) VALUES
('0', ''),
('1', 'shampoo'),
('11', 'Agujas'),
('12', 'Suero'),
('13', 'Vitamina'),
('17', 'Aguas'),
('2', 'Corta uñas'),
('23', 'Pelota'),
('3', 'Vendas'),
('4', 'Agua'),
('5', 'Huesos'),
('6', 'Camas'),
('7', 'Moños'),
('8', 'Huesos'),
('9', 'Platos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `Id` int(11) NOT NULL,
  `IdServicio` varchar(45) DEFAULT NULL,
  `Mascota` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`Id`, `IdServicio`, `Mascota`) VALUES
(1, 'Guarderia', 'gato'),
(2, 'Guarderia', 'perro'),
(3, 'Peluqueria', 'Perro'),
(4, 'Chequeo medico', 'hamster'),
(5, 'spa', 'gato'),
(6, 'Chequeo Medico ', 'Loro'),
(7, 'Chequeo Medico', 'Erizo'),
(8, 'Guarderia', 'Conejo'),
(9, 'Guarderia ', 'Hamnster'),
(10, 'Spa', 'Perro'),
(11, 'Spa', 'Gato'),
(12, 'Guarderia ', 'Mono Araña'),
(13, 'Chequeo Medico', 'Serpiente'),
(14, 'Chequeo Medico ', 'Iguana'),
(15, 'Guarderia', 'Loro'),
(16, 'Spa ', 'Gato'),
(17, 'Spa ', 'Erizo'),
(18, 'Spa ', 'Hamnster'),
(19, 'Guarderia ', 'Suricata'),
(20, 'Chequeo Medico ', 'Caballo'),
(21, 'Chequeo Medico', 'LLegua '),
(22, 'Guarderia ', 'Serpiente'),
(23, 'Guarderia ', 'Ardilla'),
(24, 'Chequeo Medico ', 'Ardilla'),
(25, 'Spa', 'Mono Araña'),
(26, 'Guarderia', 'LLegua'),
(27, 'Chequeo medico', 'Limur'),
(28, 'Guarderia', 'Conejo'),
(29, 'Spa', 'Conejo'),
(30, 'Spa', 'Perro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Turno` varchar(45) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`Cedula`, `Nombre`, `Turno`, `especialidad`) VALUES
(12300002, 'Fernanda Olvera', 'T.V', 'Spa'),
(12300302, 'Hector Pasillas', 'T.V', 'Peluqueria'),
(12303030, 'Jennifer Loera', 'T.M', 'Spa'),
(12310270, 'Santiago Morales', 'T.M ', 'Spa'),
(12311113, 'Diana Garcia', 'T.N', 'Guarderia'),
(12312310, 'Vianey Olivarez', 'T.V', 'Spa'),
(12322220, 'Rosa Acosta', 'T.V', 'Guarderia'),
(12322290, 'Omar Ceron', 'T.V', 'Peluqueria'),
(12332189, 'Maria Refugio', 'T.N', 'Peluqueria'),
(12333300, 'Alberto Herrada', 'T.M', 'Chequeo Medico'),
(12333450, 'Alejndro Monroy', 'T.M', 'Spa'),
(12340101, 'Zoila Berenice', 'T.V', 'Peluqueria '),
(12344424, 'Wendy Marin', 'T.M', 'Peluqueria'),
(12344445, 'Diana Lara', 'T.M', 'Spa'),
(12344578, 'Alondra Lopez', 'T.M', 'Spa'),
(12344666, 'Hans Tiscareño', 'T.V', 'Guarderia'),
(12345665, 'Amalia Carrillo', 'T.N', 'Chequeo Medico'),
(12347737, 'Hugo Escamilla', 'T.N', 'Chequeo Medico'),
(12356989, 'Jaime Beltrán', 'T.M', 'Chequeo medico'),
(12377782, 'Sergio Guzman', 'T.M', 'Guarderia'),
(12378393, 'America Serna', 'T.N', 'Chequeo Medico'),
(12378698, 'Ana María', 'T.V', 'Guarderia'),
(12388779, 'Alberto García', 'T.N', 'Guarderia'),
(12399657, 'Mario Soza', 'T.N', 'Chequeo medico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`Ficha`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`Cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
