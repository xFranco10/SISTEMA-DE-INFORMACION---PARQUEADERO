-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-07-2023 a las 00:28:48
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `placa` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_pago` varchar(255) NOT NULL,
  `fecha_ingreso` varchar(255) NOT NULL,
  `nombre_espacio` varchar(10) NOT NULL,
  `estado` enum('activo','inactivo','','') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`placa`, `tipo_vehiculo`, `tipo_pago`, `fecha_ingreso`, `nombre_espacio`, `estado`) VALUES
('KNH28F', 'Moto', 'Dia', 'Mon Jun 19 23:24:51 COT 2023', 'm1', 'activo'),
('ANM548', 'Carro', 'Hora', 'Mon Jun 19 23:26:58 COT 2023', 'c9', 'inactivo'),
('ALB47F', 'Moto', 'Dia', 'Thu Jun 22 10:42:17 COT 2023', 'M2', 'inactivo'),
('MHL49G', 'Carro', 'Dia', 'Thu Jun 22 10:43:06 COT 2023', 'C1', 'activo'),
('AQW12F', 'Moto', 'Hora', 'Fri Jun 23 09:11:57 COT 2023', 'M3', 'activo'),
('AQS13G', 'Moto', 'Hora', 'Fri Jun 23 10:09:36 COT 2023', 'M8', 'activo'),
('WSD12H', 'Moto', 'Hora', 'Fri Jun 23 10:18:01 COT 2023', 'M4', 'activo'),
('KLU43F', 'Moto', 'Hora', 'Fri Jun 23 18:46:32 COT 2023', 'M9', 'inactivo'),
('MXS448', 'Carro', 'Hora', 'Thu Jun 29 10:53:59 COT 2023', 'M2', 'inactivo'),
('VCV12F', 'Carro', 'Hora', 'Fri Jun 30 17:45:48 COT 2023', 'M2', 'activo'),
('CXZ12G', 'Carro', 'Hora', 'viernes, 30/06/2023 17:55', 'M5', 'inactivo'),
('ALV43G', 'Moto', 'Hora', 'viernes, 30/06/2023 18:01', 'M5', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

DROP TABLE IF EXISTS `membresias`;
CREATE TABLE IF NOT EXISTS `membresias` (
  `propietario` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_membresia` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `fecha_inicio` varchar(255) NOT NULL,
  `fecha_vencimiento` varchar(255) NOT NULL,
  `total` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`propietario`, `telefono`, `tipo_vehiculo`, `tipo_membresia`, `placa`, `fecha_inicio`, `fecha_vencimiento`, `total`) VALUES
('Andrey', '2147483647', 'Moto', 'Mensual', 'KHJ43F', 'Tue Jun 20 10:32:46 COT 2023', 'Thu Jul 20 10:32:46 COT 2023', 0),
('Monsalve', '314785621', 'Carro', 'Mensual', 'BLQ47F', 'Tue Jun 20 18:00:40 COT 2023', 'Wed Jul 05 18:00:40 COT 2023', 40000),
('MonsoDev', '2147483647', 'Carro', 'Mensual', 'ASQ89F', 'Tue Jun 20 18:08:08 COT 2023', 'Thu Jul 20 18:08:08 COT 2023', 40000),
('Oscar Loaiza', '2147483647', 'Moto', 'Quincenal', 'FGH56G', 'Fri Jun 23 18:41:28 COT 2023', 'Sat Jul 08 18:41:28 COT 2023', 15000),
('Diego Legarda', '2147483647', 'Carro', 'Mensual', 'LOI32G', 'Fri Jun 23 18:49:35 COT 2023', 'Sun Jul 23 18:49:35 COT 2023', 40000),
('Gordito Monso', '2147483647', 'Moto', 'Quincenal', 'AZX33H', 'Fri Jun 23 19:51:58 COT 2023', 'Sat Jul 08 19:51:58 COT 2023', 15000),
('Andres Felipe Cuervo Sanchez', '2147483647', 'Carro', 'Quincenal', 'RZC935', 'Thu Jun 29 09:16:16 COT 2023', 'Fri Jul 14 09:16:16 COT 2023', 20000),
('Sebastian Morales Rodas', '3222019288', 'Moto', 'Mensual', 'DXY25G', 'Thu Jun 29 09:49:52 COT 2023', 'Sat Jul 29 09:49:52 COT 2023', 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidamembresia`
--

DROP TABLE IF EXISTS `salidamembresia`;
CREATE TABLE IF NOT EXISTS `salidamembresia` (
  `propietario` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_membresia` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `fecha_inicio` varchar(255) NOT NULL,
  `fecha_vencimiento` varchar(255) NOT NULL,
  `total` int(25) NOT NULL,
  `recibe` int(25) NOT NULL,
  `devuelta` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salidamembresia`
--

INSERT INTO `salidamembresia` (`propietario`, `telefono`, `tipo_vehiculo`, `tipo_membresia`, `placa`, `fecha_inicio`, `fecha_vencimiento`, `total`, `recibe`, `devuelta`) VALUES
('Mensual', '3222019288', 'Mensual', 'Moto', 'DXY25G', 'Thu Jun 29 09:49:52 COT 2023', 'Sat Jul 29 09:49:52 COT 2023', 30000, 50000, 20000),
('Carro', '2147483647', 'Carro', 'Quincenal', 'RZC935', 'Thu Jun 29 09:16:16 COT 2023', 'Fri Jul 14 09:16:16 COT 2023', 20000, 30000, 10000),
('Sebastian Morales Rodas', '3222019288', 'Moto', 'Mensual', 'DXY25G', 'Thu Jun 29 09:49:52 COT 2023', 'Sat Jul 29 09:49:52 COT 2023', 30000, 45000, 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidavehiculo`
--

DROP TABLE IF EXISTS `salidavehiculo`;
CREATE TABLE IF NOT EXISTS `salidavehiculo` (
  `fecha_llegada` varchar(255) NOT NULL,
  `fecha_salida` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `tipo_pago` varchar(255) NOT NULL,
  `total` int(25) NOT NULL,
  `recibe` int(25) NOT NULL,
  `devuelta` int(25) NOT NULL,
  `nombre_espacio` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `duracion` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salidavehiculo`
--

INSERT INTO `salidavehiculo` (`fecha_llegada`, `fecha_salida`, `tipo_vehiculo`, `placa`, `tipo_pago`, `total`, `recibe`, `devuelta`, `nombre_espacio`, `estado`, `duracion`) VALUES
('Fri Jun 23 09:11:57 COT 2023', 'Wed Jun 28 21:06:20 COT 2023', 'Moto', 'AQW12F', 'Hora', 131000, 135000, 4000, '', '', ''),
('Fri Jun 23 18:46:32 COT 2023', 'Wed Jun 28 21:29:22 COT 2023', 'Moto', 'KLU43F', 'Hora', 122000, 125000, 3000, '', '', ''),
('Thu Jun 22 10:42:17 COT 2023', 'Wed Jun 28 21:33:14 COT 2023', 'Moto', 'ALB47F', 'Dia', 3000, 4000, 1000, '', '', ''),
('Mon Jun 19 23:26:58 COT 2023', 'Wed Jun 28 22:07:07 COT 2023', 'Carro', 'ANM548', 'Hora', 428000, 450000, 22000, 'c9', 'activo', '214'),
('Thu Jun 29 10:53:59 COT 2023', 'Thu Jun 29 10:55:05 COT 2023', 'Carro', 'MXS448', 'Hora', 1000, 2000, 1000, 'M2', 'inactivo', '0'),
('viernes, 30/06/2023 17:55', 'Fri Jun 30 17:56:33 COT 2023', 'Carro', 'CXZ12G', 'Hora', 1000, 2000, 1000, 'M5', 'inactivo', '0'),
('viernes, 30/06/2023 18:01', 'viernes, 30/06/2023 18:02', 'Moto', 'ALV43G', 'Hora', 500, 600, 100, 'M5', 'inactivo', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
