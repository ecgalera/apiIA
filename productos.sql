-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-06-2026 a las 21:26:52
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
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `created_at`) VALUES
(1, 'Notebook Lenovo IdeaPad', 850.00, '2026-06-25 20:34:11'),
(2, 'Mouse Inalámbrico Logitech', 25.99, '2026-06-25 20:34:11'),
(3, 'Teclado Mecánico Redragon', 45.50, '2026-06-25 20:34:11'),
(4, 'Monitor Samsung 24\"', 210.00, '2026-06-25 20:34:11'),
(5, 'Auriculares Sony WH-1000XM4', 299.99, '2026-06-25 20:34:11'),
(6, 'Webcam Logitech C920', 89.00, '2026-06-25 20:34:11'),
(7, 'SSD Kingston 1TB', 75.00, '2026-06-25 20:34:11'),
(8, 'Hub USB-C 7 en 1', 35.00, '2026-06-25 20:34:11'),
(9, 'Lámpara LED de escritorio', 18.50, '2026-06-25 20:34:11'),
(10, 'Soporte para notebook', 22.00, '2026-06-25 20:34:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
