-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2020 a las 17:48:47
-- Versión del servidor: 5.7.29-log
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
-- Base de datos: `bdproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentario` int(11) NOT NULL,
  `comentario` varchar(240) NOT NULL,
  `fecha` datetime NOT NULL,
  `idpublicacion` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcomentario`, `comentario`, `fecha`, `idpublicacion`, `idusuario`) VALUES
(52, 'Hola', '2020-08-13 00:00:00', 5, 2),
(57, 'Hola', '2020-08-13 00:00:00', 2, 3),
(58, 'F', '2020-08-13 04:15:57', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosusuario`
--

CREATE TABLE `datosusuario` (
  `iddatos` int(11) NOT NULL,
  `descripcion` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `carrera` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pagina` varchar(100) CHARACTER SET utf8 NOT NULL,
  `twitter` varchar(100) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(1000) CHARACTER SET utf8 DEFAULT 'images/icon/icon.jpg',
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `datosusuario`
--

INSERT INTO `datosusuario` (`iddatos`, `descripcion`, `carrera`, `ubicacion`, `pagina`, `twitter`, `icon`, `idusuario`) VALUES
(1, '', '', '', '', '', 'images/icon/icon.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `idpublicacion` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `curso` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contenido` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`idpublicacion`, `titulo`, `curso`, `contenido`, `idusuario`) VALUES
(2, 'QUÉ TE GUSTA?', 'COMIDA', 'QUIERO SABER QUÉ COMIDA TE GUSTA', 1),
(5, 'Que sale manitos', 'DB', 'Yo quiero saber que sale', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `clave` varchar(50) CHARACTER SET utf8 NOT NULL,
  `codigo` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `usuario`, `clave`, `codigo`) VALUES
(1, 'nathan silvera', 'AgustD2', '123', 2016200216),
(2, 'Oscar Vilca', 'Ash', '123', 2016),
(3, 'Orlando Ramos', 'Lam', '123', 12345678),
(4, 'Elias Gomez', 'Krboncillo', '123', 684531),
(12, 'Jean Carlos', 'Dios', '132', 135416384);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `idpublicacion` (`idpublicacion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  ADD PRIMARY KEY (`iddatos`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`idpublicacion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  MODIFY `iddatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `idpublicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idpublicacion`) REFERENCES `publicacion` (`idpublicacion`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  ADD CONSTRAINT `datosusuario_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
