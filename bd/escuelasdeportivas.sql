-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2024 a las 17:26:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelasdeportivas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderados`
--

CREATE TABLE `apoderados` (
  `id_apoderado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `relacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id_asistencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `asistio` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id_asistencia`, `id_usuario`, `fecha`, `asistio`) VALUES
(1, 1, '2024-10-10', 1),
(2, 2, '2024-10-10', 0),
(3, 3, '2024-10-10', 1),
(4, 4, '2024-10-10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Fútbol'),
(2, 'Baloncesto'),
(3, 'Natación'),
(4, 'Tenis'),
(5, 'Atletismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `apoderado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `id_usuario`, `fecha_nacimiento`, `apoderado`) VALUES
(1, 1, '2005-06-01', NULL),
(2, 2, '2006-07-15', NULL),
(3, 1, '2007-04-16', NULL),
(4, 2, '2006-03-23', NULL),
(5, 3, '2007-07-23', NULL),
(6, 4, '2008-08-01', NULL),
(7, 5, '2008-09-19', NULL),
(8, 6, '2001-04-09', NULL),
(9, 7, '2006-09-11', NULL),
(10, 8, '2000-08-04', NULL),
(11, 9, '2007-12-27', NULL),
(12, 10, '2011-09-21', NULL),
(13, 11, '2008-05-10', NULL),
(14, 12, '2005-03-19', NULL),
(15, 13, '2006-08-16', NULL),
(16, 14, '2000-02-28', NULL),
(17, 15, '2012-05-07', NULL),
(18, 16, '2006-10-18', NULL),
(19, 17, '2005-03-20', NULL),
(20, 18, '2012-05-11', NULL),
(21, 19, '2009-08-01', NULL),
(22, 20, '2007-06-20', NULL),
(23, 21, '2000-04-07', NULL),
(24, 22, '2003-01-28', NULL),
(25, 23, '2002-12-20', NULL),
(26, 24, '2004-05-29', NULL),
(27, 25, '2002-01-03', NULL),
(28, 26, '2003-05-23', NULL),
(29, 27, '2010-02-13', NULL),
(30, 28, '2003-12-19', NULL),
(31, 29, '2002-09-01', NULL),
(32, 30, '2003-09-20', NULL),
(33, 31, '2006-07-12', NULL),
(34, 32, '2000-11-08', NULL),
(35, 33, '2007-02-15', NULL),
(36, 34, '2000-09-25', NULL),
(37, 35, '2008-04-04', NULL),
(38, 36, '2002-01-23', NULL),
(39, 37, '2001-06-13', NULL),
(40, 38, '2002-09-08', NULL),
(41, 39, '2004-01-02', NULL),
(42, 40, '2002-04-04', NULL),
(43, 41, '2012-02-21', NULL),
(44, 42, '2008-03-18', NULL),
(45, 43, '2011-10-03', NULL),
(46, 44, '2005-05-13', NULL),
(47, 45, '2010-01-10', NULL),
(48, 46, '2002-05-14', NULL),
(49, 47, '2001-01-03', NULL),
(50, 48, '2009-11-23', NULL),
(51, 49, '2001-01-09', NULL),
(52, 50, '2009-04-05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_categorias`
--

CREATE TABLE `estudiantes_categorias` (
  `id_estudiante` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes_categorias`
--

INSERT INTO `estudiantes_categorias` (`id_estudiante`, `id_categoria`) VALUES
(1, 1),
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_ramas`
--

CREATE TABLE `estudiantes_ramas` (
  `id_estudiante` int(11) NOT NULL,
  `id_rama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes_ramas`
--

INSERT INTO `estudiantes_ramas` (`id_estudiante`, `id_rama`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `id_usuario`, `especialidad`) VALUES
(1, 3, 'Fútbol'),
(2, 4, 'Natación'),
(3, 51, 'Especialidad 1'),
(4, 52, 'Especialidad 2'),
(5, 53, 'Especialidad 3'),
(6, 54, 'Especialidad 4'),
(7, 55, 'Especialidad 5'),
(8, 56, 'Especialidad 6'),
(9, 57, 'Especialidad 7'),
(10, 58, 'Especialidad 8'),
(11, 59, 'Especialidad 9'),
(12, 60, 'Especialidad 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ramas`
--

CREATE TABLE `ramas` (
  `id_rama` int(11) NOT NULL,
  `nombre_rama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ramas`
--

INSERT INTO `ramas` (`id_rama`, `nombre_rama`) VALUES
(1, 'Masculina'),
(2, 'Femenina'),
(3, 'Mixta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipo_usuario` enum('alumno','profesor','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `password`, `tipo_usuario`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', 'hashed_password1', 'alumno'),
(2, 'María García', 'maria.garcia@example.com', 'hashed_password2', 'alumno'),
(3, 'Carlos Gómez', 'carlos.gomez@example.com', 'hashed_password3', 'profesor'),
(4, 'Ana Torres', 'ana.torres@example.com', 'hashed_password4', 'profesor'),
(5, 'Ana López', 'ana.lópez1@example.com', 'hashed_password_1642', 'alumno'),
(6, 'Sofía Sánchez', 'sofía.sánchez2@example.com', 'hashed_password_6070', 'alumno'),
(7, 'Carlos Pérez', 'carlos.pérez3@example.com', 'hashed_password_1575', 'alumno'),
(8, 'Jorge Fernández', 'jorge.fernández4@example.com', 'hashed_password_1022', 'alumno'),
(9, 'Laura Gómez', 'laura.gómez5@example.com', 'hashed_password_7290', 'alumno'),
(10, 'Carlos Martínez', 'carlos.martínez6@example.com', 'hashed_password_7739', 'alumno'),
(11, 'Sofía Fernández', 'sofía.fernández7@example.com', 'hashed_password_1711', 'alumno'),
(12, 'Ana Fernández', 'ana.fernández8@example.com', 'hashed_password_5402', 'alumno'),
(13, 'Juan Jiménez', 'juan.jiménez9@example.com', 'hashed_password_3065', 'alumno'),
(14, 'Lucía Sánchez', 'lucía.sánchez10@example.com', 'hashed_password_4916', 'alumno'),
(15, 'Jorge Martínez', 'jorge.martínez11@example.com', 'hashed_password_7337', 'alumno'),
(16, 'Laura Martínez', 'laura.martínez12@example.com', 'hashed_password_2105', 'alumno'),
(17, 'Lucía Sánchez', 'lucía.sánchez13@example.com', 'hashed_password_3064', 'alumno'),
(18, 'Laura Pérez', 'laura.pérez14@example.com', 'hashed_password_2239', 'alumno'),
(19, 'Pedro Gómez', 'pedro.gómez15@example.com', 'hashed_password_4066', 'alumno'),
(20, 'Ana Gómez', 'ana.gómez16@example.com', 'hashed_password_7553', 'alumno'),
(21, 'María García', 'maría.garcía17@example.com', 'hashed_password_8255', 'alumno'),
(22, 'Jorge Rodríguez', 'jorge.rodríguez18@example.com', 'hashed_password_9839', 'alumno'),
(23, 'María Jiménez', 'maría.jiménez19@example.com', 'hashed_password_8535', 'alumno'),
(24, 'Laura Jiménez', 'laura.jiménez20@example.com', 'hashed_password_3207', 'alumno'),
(25, 'María Martínez', 'maría.martínez21@example.com', 'hashed_password_9632', 'alumno'),
(26, 'María Pérez', 'maría.pérez22@example.com', 'hashed_password_7728', 'alumno'),
(27, 'Luis Martínez', 'luis.martínez23@example.com', 'hashed_password_2207', 'alumno'),
(28, 'Luis García', 'luis.garcía24@example.com', 'hashed_password_2727', 'alumno'),
(29, 'Carlos Torres', 'carlos.torres25@example.com', 'hashed_password_2894', 'alumno'),
(30, 'Pedro Jiménez', 'pedro.jiménez26@example.com', 'hashed_password_2239', 'alumno'),
(31, 'Carlos Gómez', 'carlos.gómez27@example.com', 'hashed_password_3062', 'alumno'),
(32, 'María López', 'maría.lópez28@example.com', 'hashed_password_8531', 'alumno'),
(33, 'Juan Pérez', 'juan.pérez29@example.com', 'hashed_password_3694', 'alumno'),
(34, 'María Sánchez', 'maría.sánchez30@example.com', 'hashed_password_3757', 'alumno'),
(35, 'Pedro García', 'pedro.garcía31@example.com', 'hashed_password_6481', 'alumno'),
(36, 'Laura Fernández', 'laura.fernández32@example.com', 'hashed_password_6735', 'alumno'),
(37, 'Laura López', 'laura.lópez33@example.com', 'hashed_password_1524', 'alumno'),
(38, 'Ana García', 'ana.garcía34@example.com', 'hashed_password_5886', 'alumno'),
(39, 'Juan Jiménez', 'juan.jiménez35@example.com', 'hashed_password_9632', 'alumno'),
(40, 'María Jiménez', 'maría.jiménez36@example.com', 'hashed_password_2379', 'alumno'),
(41, 'Jorge Fernández', 'jorge.fernández37@example.com', 'hashed_password_8414', 'alumno'),
(42, 'María Pérez', 'maría.pérez38@example.com', 'hashed_password_3979', 'alumno'),
(43, 'Juan Torres', 'juan.torres39@example.com', 'hashed_password_8641', 'alumno'),
(44, 'Luis García', 'luis.garcía40@example.com', 'hashed_password_5782', 'alumno'),
(45, 'Luis Fernández', 'luis.fernández41@example.com', 'hashed_password_5341', 'alumno'),
(46, 'Jorge García', 'jorge.garcía42@example.com', 'hashed_password_3118', 'alumno'),
(47, 'Lucía Torres', 'lucía.torres43@example.com', 'hashed_password_6302', 'alumno'),
(48, 'Luis Rodríguez', 'luis.rodríguez44@example.com', 'hashed_password_1612', 'alumno'),
(49, 'Jorge Pérez', 'jorge.pérez45@example.com', 'hashed_password_5407', 'alumno'),
(50, 'Juan Rodríguez', 'juan.rodríguez46@example.com', 'hashed_password_7759', 'alumno'),
(51, 'Juan Rodríguez', 'juan.rodríguez47@example.com', 'hashed_password_9500', 'alumno'),
(52, 'Laura Pérez', 'laura.pérez48@example.com', 'hashed_password_1872', 'alumno'),
(53, 'Pedro Fernández', 'pedro.fernández49@example.com', 'hashed_password_9429', 'alumno'),
(54, 'Sofía Gómez', 'sofía.gómez50@example.com', 'hashed_password_7515', 'alumno'),
(55, 'Jorge Jiménez', 'jorge.jiménez51@example.com', 'hashed_password_2814', 'profesor'),
(56, 'Sofía Martínez', 'sofía.martínez52@example.com', 'hashed_password_1513', 'profesor'),
(57, 'María Pérez', 'maría.pérez53@example.com', 'hashed_password_1089', 'profesor'),
(58, 'Laura García', 'laura.garcía54@example.com', 'hashed_password_8751', 'profesor'),
(59, 'Jorge García', 'jorge.garcía55@example.com', 'hashed_password_5993', 'profesor'),
(60, 'Jorge Pérez', 'jorge.pérez56@example.com', 'hashed_password_4323', 'profesor'),
(61, 'Pedro García', 'pedro.garcía57@example.com', 'hashed_password_7296', 'profesor'),
(62, 'María Rodríguez', 'maría.rodríguez58@example.com', 'hashed_password_6306', 'profesor'),
(63, 'Jorge Rodríguez', 'jorge.rodríguez59@example.com', 'hashed_password_8022', 'profesor'),
(64, 'Carlos Fernández', 'carlos.fernández60@example.com', 'hashed_password_5070', 'profesor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apoderados`
--
ALTER TABLE `apoderados`
  ADD PRIMARY KEY (`id_apoderado`),
  ADD KEY `idx_id_usuario` (`id_usuario`),
  ADD KEY `idx_id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `estudiantes_categorias`
--
ALTER TABLE `estudiantes_categorias`
  ADD PRIMARY KEY (`id_estudiante`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `estudiantes_ramas`
--
ALTER TABLE `estudiantes_ramas`
  ADD PRIMARY KEY (`id_estudiante`,`id_rama`),
  ADD KEY `id_rama` (`id_rama`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ramas`
--
ALTER TABLE `ramas`
  ADD PRIMARY KEY (`id_rama`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apoderados`
--
ALTER TABLE `apoderados`
  MODIFY `id_apoderado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ramas`
--
ALTER TABLE `ramas`
  MODIFY `id_rama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apoderados`
--
ALTER TABLE `apoderados`
  ADD CONSTRAINT `apoderados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `apoderados_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiantes_categorias`
--
ALTER TABLE `estudiantes_categorias`
  ADD CONSTRAINT `estudiantes_categorias_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiantes_categorias_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiantes_ramas`
--
ALTER TABLE `estudiantes_ramas`
  ADD CONSTRAINT `estudiantes_ramas_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiantes_ramas_ibfk_2` FOREIGN KEY (`id_rama`) REFERENCES `ramas` (`id_rama`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
