-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-04-2023 a las 22:48:17
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportesx`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `tel`, `mensaje`) VALUES
(1, 'Belen', 'mellizamala@hotmail.com', '2944929800', 'probando que todo funcione ok\r\n'),
(2, 'Belen', 'ABFERNANDEZ@TRIUNFOSEGUROS.COM', '2944929800', 'hola\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'reeditado Autos usados en oferta: una aseguradora remata más de 20 vehículos', 'editado Se realizará el 31 de marzo por la plataforma virtual de Adrián Mercado. Qué tener en cuenta.', 'editado Antes de que termine el mes, el sitio de subastas Adrián Mercado realizará a través de su plataforma virtual tres subastas importantes; todas con fecha de inicio el 31 de marzo.\r\n\r\n\r\nLa más destacada tiene como protagonista a la aseguradora Zurich, que rematará más de 20 vehículos de todas las marcas y modelos fabricados entre 2002 y 2020.\r\n\r\nMinutos más tarde se dará comienzo a una nueva puja; esta vez de 10 unidades, mientras que la última estará reservada a quienes buscan renovar su flota de camiones.\r\n\r\nVolkswagen Golf (2016), con 25.600 kilómetros. Precio base: $ 2.792.038.\r\nVolkswagen Golf (2016), con 25.600 kilómetros. Precio base: $ 2.792.038.\r\n\r\nPor otra parte, ya se encuentra activa la subasta de motos, autos y utilitarios mediante la plataforma de Monasterio-Tattersall, en la que se podrá ofertar hasta este miércoles 29 de marzo a partir de las 14 horas.'),
(3, 'editado El dólar blue aumentó en el cierre de la jornada: a cuánto cotiza', 'La moneda paralela cerró con una suba de un peso y cotiza a $390.', 'El dólar blue cerró la jornada del lunes con un aumento de $1 y cotiza a 390 pesos. El dólar oficial cerró hoy con una cotización promedio de $ 214,45, con una suba de $1,48 centavos respecto del jueves, último día hábil de la semana pasada, mientras que el Banco Central finalizó la jornada con un saldo negativo de US$95 millones.\r\n\r\n'),
(6, 'Empezó Travel Sale: cuáles son las mejores promociones con hasta 65% de descuento para viajar por Argentina y el mundo', 'Desde este lunes y hasta el 2 de abril los viajeros podrán comprar productos y servicios turísticos en oferta y con planes de financiación', 'Este lunes comenzó el Travel Sale, el evento de descuentos y promociones turísticas del cual participarán más de 30 agencias de viaje y turismo de todo el país con diferentes propuestas y oportunidades para viajar en Argentina y el mundo con sus productos y servicios en promoción, con descuentos, opciones de financiación y más.\r\n\r\nPUBLICIDAD\r\n\r\nEl Travel Sale se desarrollará entre este lunes 27 de marzo hasta el 2 de abril inclusive, los viajeros podrán encontrar pasajes, paquetes, cruceros, alojamientos y actividades, con oportunidades imperdibles para sus próximas vacaciones o escapadas de fin de semana; entre los productos hay ofertas especiales para Semana Santa, el receso extendido con dos días feriados que llega en poco más de una semana.\r\n\r\n\r\nAl ingresar al sitio oficial del evento (travelsale.com.ar), que nuclea las ofertas de las agencias de viajes participantes, se destacan dos secciones; “Recorré Argentina” y “Escapate”.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Belen', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Gabriel', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
