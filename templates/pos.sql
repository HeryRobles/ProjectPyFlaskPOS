-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-04-2024 a las 19:49:41
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int NOT NULL,
  `nombre_cliente` varchar(250) NOT NULL,
  `ap1_cliente` varchar(250) NOT NULL,
  `ap2_cliente` varchar(250) NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `contraseña` varchar(250) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `ap1_cliente`, `ap2_cliente`, `email`, `contraseña`) VALUES
(0, 'Adriana Gabriela', 'Valenzuela', 'Ibarra', 'adryvib04@hotmail.com', '1234'),
(1, 'Samuel', 'Borbon', 'Vega', 'samy_super@hotmail.com', '12345'),
(2, 'Zoro de Jesús', 'Roronoa', 'Gonzales', 'enma_vicecapitan@gmail.com', '1234567'),
(3, 'Yovanny Guadalupe', 'Valenzuela', 'Ibarra', 'golosa69@hotmail.com', '12345'),
(5, 'Nico Guadalupe', 'Robin', 'De Robles', 'belle_fleur@gmail.com', '78910');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
(1, 'café', 20.00),
(2, 'agua', 30.00),
(3, 'agua', 40.00),
(4, 'leche', 20.00),
(5, 'té', 52.00),
(6, 'jugo', 30.00),
(7, 'pan', 12.00),
(8, 'tortilla', 27.00),
(9, 'aceite', 30.00),
(10, 'chocolate', 40.00),
(11, 'fresa', 90.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(250) NOT NULL,
  `ap1_usuario` varchar(250) NOT NULL,
  `ap2_usuario` varchar(250) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `ap1_usuario`, `ap2_usuario`, `contraseña`) VALUES
(1, 'Hery', 'Robles', 'Coronado', '1234'),
(2, 'Asaelito', 'Rios', '', 'sexo'),
(4, 'Matt ', 'Murdock', '', 'daredevil.90'),
(5, 'Ximena', 'Robles ', 'Valenzuela', '2014princess'),
(6, 'Adrian', 'Robles', 'Valenzuela', '2012pony');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
