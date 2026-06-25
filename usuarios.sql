-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-06-2026 a las 21:27:52
-- Versión del servidor: 8.0.46
-- Versión de PHP: 8.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_api_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `created_at`) VALUES
(1, 'Carlos López', 'carlos.lopez@email.com', '2026-06-25 20:34:11'),
(2, 'María García', 'maria.garcia@email.com', '2026-06-25 20:34:11'),
(3, 'Juan Pérez', 'juan.perez@email.com', '2026-06-25 20:34:11'),
(4, 'Ana Martínez', 'ana.martinez@email.com', '2026-06-25 20:34:11'),
(5, 'Luis Rodríguez', 'luis.rodriguez@email.com', '2026-06-25 20:34:11'),
(6, 'Sofía Fernández', 'sofia.fernandez@email.com', '2026-06-25 20:34:11'),
(7, 'Diego Sánchez', 'diego.sanchez@email.com', '2026-06-25 20:34:11'),
(8, 'Valentina Torres', 'valentina.torres@email.com', '2026-06-25 20:34:11'),
(9, 'Martín Gómez', 'martin.gomez@email.com', '2026-06-25 20:34:11'),
(10, 'Lucía Díaz', 'lucia.diaz@email.com', '2026-06-25 20:34:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
