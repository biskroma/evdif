-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-08-2020 a las 20:31:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `difmod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empresas`
--

CREATE TABLE `Empresas` (
  `_idEmpresa` int(11) NOT NULL,
  `_nombreEmpresa` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Grupos`
--

CREATE TABLE `Grupos` (
  `_idGrupo` int(11) NOT NULL,
  `_nombreGrupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Grupos`
--

INSERT INTO `Grupos` (`_idGrupo`, `_nombreGrupo`) VALUES
(1, 'Precio'),
(2, 'Disponibilidad'),
(3, 'Publicidad'),
(4, 'Instalaciones'),
(5, 'Calidad'),
(6, 'Atencion'),
(7, 'Tiempo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Parametros_Buena`
--

CREATE TABLE `Parametros_Buena` (
  `a` float(4,3) DEFAULT NULL,
  `b` float(4,3) DEFAULT NULL,
  `c` float(4,3) DEFAULT NULL,
  `d` float(4,3) DEFAULT NULL,
  `m` float(4,3) DEFAULT NULL,
  `k` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Parametros_Buena`
--

INSERT INTO `Parametros_Buena` (`a`, `b`, `c`, `d`, `m`, `k`) VALUES
(0.000, 0.010, 2.000, 5.000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Parametros_Mala`
--

CREATE TABLE `Parametros_Mala` (
  `a` float(4,3) DEFAULT NULL,
  `b` float(4,3) DEFAULT NULL,
  `c` float(4,3) DEFAULT NULL,
  `d` float(4,3) DEFAULT NULL,
  `m` float(4,3) DEFAULT NULL,
  `k` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Parametros_Neutral`
--

CREATE TABLE `Parametros_Neutral` (
  `a` float(4,3) DEFAULT NULL,
  `b` float(4,3) DEFAULT NULL,
  `c` float(4,3) DEFAULT NULL,
  `d` float(4,3) DEFAULT NULL,
  `m` float(4,3) DEFAULT NULL,
  `k` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Preguntas`
--

CREATE TABLE `Preguntas` (
  `_idGrupo` int(255) DEFAULT NULL,
  `_idPregunta` int(255) NOT NULL,
  `_Pregunta` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Atencion`
--

CREATE TABLE `Satisfaccion_Atencion` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Calidad`
--

CREATE TABLE `Satisfaccion_Calidad` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Disponibilidad`
--

CREATE TABLE `Satisfaccion_Disponibilidad` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Instalaciones`
--

CREATE TABLE `Satisfaccion_Instalaciones` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Precio`
--

CREATE TABLE `Satisfaccion_Precio` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Publicidad`
--

CREATE TABLE `Satisfaccion_Publicidad` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Satisfaccion_Tiempo`
--

CREATE TABLE `Satisfaccion_Tiempo` (
  `_idEmpresa` int(255) DEFAULT NULL,
  `_conteo` int(255) DEFAULT NULL,
  `_valorDuro` float(4,3) DEFAULT NULL,
  `_mala` float(4,3) DEFAULT NULL,
  `_neutral` float(4,3) DEFAULT NULL,
  `_buena` float(4,3) DEFAULT NULL,
  `_tnormMNB` float(4,3) DEFAULT NULL,
  `_tnormMN` float(4,3) DEFAULT NULL,
  `_tnormMB` float(4,3) DEFAULT NULL,
  `_tnormBN` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Empresas`
--
ALTER TABLE `Empresas`
  ADD PRIMARY KEY (`_idEmpresa`);

--
-- Indices de la tabla `Grupos`
--
ALTER TABLE `Grupos`
  ADD PRIMARY KEY (`_idGrupo`);

--
-- Indices de la tabla `Preguntas`
--
ALTER TABLE `Preguntas`
  ADD PRIMARY KEY (`_idPregunta`),
  ADD KEY `_idGrupo` (`_idGrupo`);

--
-- Indices de la tabla `Satisfaccion_Atencion`
--
ALTER TABLE `Satisfaccion_Atencion`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Calidad`
--
ALTER TABLE `Satisfaccion_Calidad`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Disponibilidad`
--
ALTER TABLE `Satisfaccion_Disponibilidad`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Instalaciones`
--
ALTER TABLE `Satisfaccion_Instalaciones`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Precio`
--
ALTER TABLE `Satisfaccion_Precio`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Publicidad`
--
ALTER TABLE `Satisfaccion_Publicidad`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- Indices de la tabla `Satisfaccion_Tiempo`
--
ALTER TABLE `Satisfaccion_Tiempo`
  ADD KEY `_idEmpresa` (`_idEmpresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Empresas`
--
ALTER TABLE `Empresas`
  MODIFY `_idEmpresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Grupos`
--
ALTER TABLE `Grupos`
  MODIFY `_idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Preguntas`
--
ALTER TABLE `Preguntas`
  MODIFY `_idPregunta` int(255) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Preguntas`
--
ALTER TABLE `Preguntas`
  ADD CONSTRAINT `Preguntas_ibfk_1` FOREIGN KEY (`_idGrupo`) REFERENCES `Grupos` (`_idGrupo`);

--
-- Filtros para la tabla `Satisfaccion_Atencion`
--
ALTER TABLE `Satisfaccion_Atencion`
  ADD CONSTRAINT `Satisfaccion_Atencion_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Calidad`
--
ALTER TABLE `Satisfaccion_Calidad`
  ADD CONSTRAINT `Satisfaccion_Calidad_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Disponibilidad`
--
ALTER TABLE `Satisfaccion_Disponibilidad`
  ADD CONSTRAINT `Satisfaccion_Disponibilidad_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Instalaciones`
--
ALTER TABLE `Satisfaccion_Instalaciones`
  ADD CONSTRAINT `Satisfaccion_Instalaciones_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Precio`
--
ALTER TABLE `Satisfaccion_Precio`
  ADD CONSTRAINT `Satisfaccion_Precio_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Publicidad`
--
ALTER TABLE `Satisfaccion_Publicidad`
  ADD CONSTRAINT `Satisfaccion_Publicidad_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);

--
-- Filtros para la tabla `Satisfaccion_Tiempo`
--
ALTER TABLE `Satisfaccion_Tiempo`
  ADD CONSTRAINT `Satisfaccion_Tiempo_ibfk_1` FOREIGN KEY (`_idEmpresa`) REFERENCES `Empresas` (`_idEmpresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
