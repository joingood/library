-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2018 a las 16:12:28
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `library`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author`
--

CREATE TABLE `author` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `ID_Country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author_book`
--

CREATE TABLE `author_book` (
  `ID` int(11) NOT NULL,
  `ID_Book` int(11) NOT NULL,
  `ID_Author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `ID_Category` int(11) NOT NULL DEFAULT '1',
  `State` tinyint(1) NOT NULL DEFAULT '1',
  `Registry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`ID`, `Name`, `Description`, `ID_Category`, `State`, `Registry`) VALUES
(1, 'El castellano', 'Una descripcion', 1, 1, '2018-10-26 04:37:18'),
(2, 'El castellanoo', 'Una descripcion', 1, 1, '2018-10-26 04:38:57'),
(3, 'El castellanoo', 'Una descripcion', 1, 1, '2018-10-26 04:40:41'),
(4, 'Name', 'Description', 1, 1, '2018-10-26 05:56:33'),
(20, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 12:55:08'),
(22, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 12:56:21'),
(24, 'Google N', 'Descripcc', 1, 1, '2018-10-26 12:58:10'),
(25, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:03:06'),
(26, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:04:17'),
(28, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:07:18'),
(29, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:07:18'),
(30, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:09:41'),
(31, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:09:41'),
(32, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:09:41'),
(33, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:10:38'),
(34, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:10:38'),
(35, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:10:38'),
(36, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:12:11'),
(37, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:12:11'),
(38, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:12:12'),
(39, 'aa', 'aaa', 1, 1, '2018-10-26 13:12:12'),
(40, 'sdasd', 'ada', 1, 1, '2018-10-26 13:12:12'),
(41, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:12:12'),
(42, '', 'ssss', 1, 1, '2018-10-26 13:12:12'),
(43, 'asddd', '', 1, 1, '2018-10-26 13:12:12'),
(44, 'assas', 'ssdd', 1, 1, '2018-10-26 13:12:12'),
(45, 'penultima', 'des', 1, 1, '2018-10-26 13:12:12'),
(46, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:17:41'),
(47, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:17:41'),
(48, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:17:41'),
(49, 'aa', 'aaa', 1, 1, '2018-10-26 13:17:41'),
(50, 'sdasd', 'ada', 1, 1, '2018-10-26 13:17:41'),
(51, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:17:41'),
(52, '', 'ssss', 1, 1, '2018-10-26 13:17:41'),
(53, 'asddd', '', 1, 1, '2018-10-26 13:17:41'),
(54, 'assas', 'ssdd', 1, 1, '2018-10-26 13:17:41'),
(55, 'penultima', 'des', 1, 1, '2018-10-26 13:17:42'),
(56, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:19:13'),
(57, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:19:14'),
(58, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:19:14'),
(59, 'aa', 'aaa', 1, 1, '2018-10-26 13:19:14'),
(60, 'sdasd', 'ada', 1, 1, '2018-10-26 13:19:14'),
(61, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:19:14'),
(62, '', 'ssss', 1, 1, '2018-10-26 13:19:14'),
(63, 'asddd', '', 1, 1, '2018-10-26 13:19:14'),
(64, 'assas', 'ssdd', 1, 1, '2018-10-26 13:19:14'),
(65, 'penultima', 'des', 1, 1, '2018-10-26 13:19:14'),
(66, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:19:30'),
(67, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:19:30'),
(68, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:19:30'),
(69, 'aa', 'aaa', 1, 1, '2018-10-26 13:19:30'),
(70, 'sdasd', 'ada', 1, 1, '2018-10-26 13:19:31'),
(71, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:19:31'),
(72, '', 'ssss', 1, 1, '2018-10-26 13:19:31'),
(73, 'asddd', '', 1, 1, '2018-10-26 13:19:31'),
(74, 'assas', 'ssdd', 1, 1, '2018-10-26 13:19:31'),
(75, 'penultima', 'des', 1, 1, '2018-10-26 13:19:31'),
(76, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:33:30'),
(77, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:33:30'),
(78, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:33:30'),
(79, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:33:30'),
(80, '', 'ssss', 1, 1, '2018-10-26 13:33:30'),
(81, 'asddd', '', 1, 1, '2018-10-26 13:33:30'),
(82, 'assas', 'ssdd', 1, 1, '2018-10-26 13:33:30'),
(83, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:34:32'),
(84, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:34:32'),
(85, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:34:32'),
(86, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:34:32'),
(87, '', 'ssss', 1, 1, '2018-10-26 13:34:32'),
(88, 'asddd', '', 1, 1, '2018-10-26 13:34:32'),
(89, 'assas', 'ssdd', 1, 1, '2018-10-26 13:34:32'),
(90, 'Castellano N', 'Descripcion', 1, 1, '2018-10-26 13:34:43'),
(91, 'Google N', 'Descripcc', 1, 1, '2018-10-26 13:34:43'),
(92, 'Test', 'Descriocion', 1, 1, '2018-10-26 13:34:43'),
(93, 'asdasd', 'asdasd', 1, 1, '2018-10-26 13:34:43'),
(94, '', 'ssss', 1, 1, '2018-10-26 13:34:43'),
(95, 'asddd', '', 1, 1, '2018-10-26 13:34:43'),
(96, 'assas', 'ssdd', 1, 1, '2018-10-26 13:34:43'),
(97, 'nuevo', 'Descripcion', 1, 1, '2018-10-26 14:04:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`ID`, `Name`) VALUES
(1, 'Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`ID`, `Name`) VALUES
(1, 'EEUU');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edition_book`
--

CREATE TABLE `edition_book` (
  `ID` int(11) NOT NULL,
  `ID_Book` int(11) NOT NULL,
  `Sequence` int(11) NOT NULL,
  `Registry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `author_ibfk_1` (`ID_Country`);

--
-- Indices de la tabla `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `author_book_ibfk_1` (`ID_Author`),
  ADD KEY `ID_Book` (`ID_Book`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Category` (`ID_Category`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `edition_book`
--
ALTER TABLE `edition_book`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Book` (`ID_Book`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `author`
--
ALTER TABLE `author`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `author_book`
--
ALTER TABLE `author_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `edition_book`
--
ALTER TABLE `edition_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`ID_Country`) REFERENCES `country` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_ibfk_1` FOREIGN KEY (`ID_Author`) REFERENCES `author` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_book_ibfk_2` FOREIGN KEY (`ID_Book`) REFERENCES `book` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`ID_Category`) REFERENCES `category` (`ID`);

--
-- Filtros para la tabla `edition_book`
--
ALTER TABLE `edition_book`
  ADD CONSTRAINT `edition_book_ibfk_1` FOREIGN KEY (`ID_Book`) REFERENCES `book` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
