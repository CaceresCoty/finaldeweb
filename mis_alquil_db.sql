-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2025 a las 05:50:19
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
-- Base de datos: `mis_alquil_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `genero`, `precio`, `stock`, `descripcion`) VALUES
(1, 'Cien años de soledad', 'Gabriel García Márquez	', 'Ficción', 5.00, 10, 'Cien años de soledad es una novela del escritor colombiano ganador del Premio Nobel de Literatura Gabriel García Márquez. Es opinión general que se trata de una obra maestra de la literatura hispanoamericana y universal, y es una de las obras más traducidas y leídas en español'),
(2, 'Cien años de soledad', 'Gabriel García Márquez	', 'Ficción', 5.00, 10, 'Cien años de soledad es una novela del escritor colombiano ganador del Premio Nobel de Literatura Gabriel García Márquez. Es opinión general que se trata de una obra maestra de la literatura hispanoamericana y universal, y es una de las obras más traducidas y leídas en español'),
(3, 'El Código Da Vinci', 'Dan Brown', 'Misterio', 7.50, 15, 'Una novela de suspenso que mezcla simbología religiosa e histórica.'),
(4, 'Orgullo y Prejuicio', 'Jane Austen', 'Romance', 4.00, 22, 'Clásico de la literatura inglesa sobre las clases sociales y el matrimonio.'),
(5, 'Un Mundo Feliz', 'Aldous Huxley', 'Ciencia Ficción', 6.25, 8, 'Una distopía que explora una sociedad controlada por la tecnología y la ingeniería genética.'),
(6, 'Crimen y Castigo', 'Fiódor Dostoievski', 'Ficción', 5.50, 12, 'Exploración psicológica de la mente de un estudiante que comete un asesinato.'),
(7, 'Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 'Fantasía', 8.99, 30, 'El inicio de la saga del famoso niño mago.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `tipo`, `telefono`) VALUES
(1, 'Admin Principal', 'admin@misalquil.com', '123456', 'admin', '123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
