-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2017 a las 23:36:40
-- Versión del servidor: 5.7.18-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `somos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Educacion'),
(3, 'MPPEUCT - Misiones'),
(4, 'MPPEUCT - Universidades PÃºblicas'),
(5, 'MPPEUCT - OPSU'),
(6, 'MPPEUCT - InvestigaciÃ³n e InnovaciÃ³n'),
(7, 'MPPEUCT - Becas'),
(8, 'MPPEUCT - Fundayacucho'),
(9, 'Salud - CirugÃ­a'),
(10, 'Salud - RevisiÃ³n MÃ©dica'),
(11, 'Salud - Medicamentos'),
(12, 'Salud - Discapacitados'),
(13, 'Vivienda - AdjudicaciÃ³n'),
(14, 'Vivienda - CulminaciÃ³n'),
(15, 'BNBT - Techo'),
(16, 'BNBT - Filtraciones'),
(17, 'BNBT - Pintura'),
(18, 'BNBT - Ventanas'),
(19, 'BNBT - Puertas'),
(20, 'BNBT - Otras reparaciones'),
(21, 'Servicios PÃºblicos - Agua'),
(22, 'Servicios PÃºblicos - Luz'),
(23, 'Servicios PÃºblicos - Transporte'),
(24, 'Comunas - Viviendas'),
(25, 'Comunas - Uniformes Escolares'),
(26, 'Empleo - Profesionales'),
(27, 'Empleo - No Profesionales'),
(28, 'JGH - Bastones'),
(29, 'JGH - Sillas de Ruedas'),
(30, 'JGH - Camas ClÃ­nicas'),
(31, 'JGH - Colchones'),
(32, 'JGH - Otros no categorizados'),
(33, 'AlimentaciÃ³n - CLAP Subsidiado'),
(34, 'AlimentaciÃ³n - Casa de AlimentaciÃ³n'),
(35, 'AlimentaciÃ³n - Complemento Nutricional'),
(36, 'EducaciÃ³n - Becas Escolares'),
(37, 'EducaciÃ³n - Ãštiles Escolares'),
(38, 'EducaciÃ³n - AsignaciÃ³n de Canaimitas'),
(39, 'EducaciÃ³n - InserciÃ³n Escolar'),
(40, 'CrÃ©ditos - MicroCrÃ©ditos'),
(41, 'CrÃ©ditos - SocioProductivos'),
(42, 'CrÃ©ditos - AgrÃ­colas'),
(43, 'LÃ­nea Blanca-MarrÃ³n - Camas'),
(44, 'LÃ­nea Blanca-MarrÃ³n - Neveras'),
(45, 'LÃ­nea Blanca-MarrÃ³n - Cocinas'),
(46, 'SAIME - IdentificaciÃ³n (cÃ©dulas y/o pasaportes)'),
(47, 'SAIME - MigraciÃ³n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kind`
--

CREATE TABLE `kind` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `kind`
--

INSERT INTO `kind` (`id`, `name`) VALUES
(1, 'Alimentacion'),
(2, 'BNBT'),
(3, 'Ciencia, Tecnologia e Innovacion'),
(4, 'Comunas'),
(5, 'Creditos'),
(6, 'Educacion (inicial, basica, media)'),
(7, 'Educacion Universitaria'),
(8, 'Empleos'),
(9, 'Identificacion / Migracion'),
(10, 'Maltrato Infantil'),
(11, 'Mision JGH'),
(12, 'Salud'),
(13, 'Servicios Publicos'),
(14, 'Vivienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priority`
--

CREATE TABLE `priority` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `priority`
--

INSERT INTO `priority` (`id`, `name`) VALUES
(1, 'Vulnerable'),
(2, 'No Vulnerable'),
(3, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `name`, `description`) VALUES
(1, 'MPPEUCT', NULL),
(2, 'MPP Salud', NULL),
(3, 'MPP Vivienda y Habitat', NULL),
(4, 'Barrio Nuevo Barrio Tricolor', NULL),
(5, 'CVG', NULL),
(6, 'CORPOELEC', NULL),
(7, 'TRANSAMAZONAS', NULL),
(8, 'FONTUR', NULL),
(9, 'MPP Obras PÃºblicas', NULL),
(10, 'MPP Comunas', NULL),
(11, 'IDENNA', NULL),
(12, 'MPP Trabajo', NULL),
(13, 'MisiÃ³n JosÃ© Gregorio HernÃ¡ndez', NULL),
(14, 'MPP AlimentaciÃ³n', NULL),
(15, 'MPP EducaciÃ³n', NULL),
(16, 'MPP Agricultura y Tierras', NULL),
(17, 'MPP Agricultura Urbana', NULL),
(18, 'MPP Pesca y Acuicultura', NULL),
(19, 'INAPYMI', NULL),
(20, 'Banco de la Mujer', NULL),
(21, 'MisiÃ³n Ribas', NULL),
(22, 'MisiÃ³n Robinson', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'En Proceso'),
(3, 'Solucionado'),
(4, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `carnet` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `edad` int(3) NOT NULL,
  `direccion` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(25) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `cargaFam` int(2) NOT NULL,
  `description` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `kind_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `asigned_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '1',
  `status_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `cedula`, `carnet`, `title`, `edad`, `direccion`, `telefono`, `cargaFam`, `description`, `updated_at`, `created_at`, `kind_id`, `user_id`, `asigned_id`, `project_id`, `category_id`, `priority_id`, `status_id`) VALUES
(1, 10081092, 214822, 'Jaime Mora', 47, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04120461205', 5, 'Esto es una prueba del sistema para sistematizaciÃ³n de casos ante la Mesa de Soluciones del Gobierno Bolivariano en el estado Amazonas', '2017-07-23 20:44:19', '2017-07-13 18:08:38', 3, 1, 1, 1, 6, 1, 3),
(2, 1234565, 324321, 'Fernando Martinez', 46, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 5, 'Prueba del sistema', '2017-07-23 22:29:00', '2017-07-15 20:38:08', 12, 1, 2, 2, 10, 1, 3),
(4, 4000000, 24567, 'Ana Sotillo', 32, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 4, 'Solicitud del compaÃ±ero', '2017-07-23 22:27:50', '2017-07-16 19:58:54', 1, 1, 14, 14, 33, 1, 2),
(5, 9997890, 123456, 'Carlos Dorante', 51, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 3, 'Casa de alimentaciÃ³n', '2017-07-23 20:43:54', '2017-07-16 21:20:57', 1, 1, 14, 14, 34, 1, 2),
(6, 20001001, 20202, 'Adriana Mendez', 27, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 0, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:29:19', '2017-07-16 21:30:21', 2, 1, 4, 4, 15, 1, 3),
(7, 3030311, 30303, 'Luisa Camico', 65, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 4, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 20:33:59', '2017-07-16 21:41:11', 14, 1, 3, 3, 13, 1, 2),
(8, 24000000, 909087, 'Juan Carlos Romo', 24, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04120461205', 0, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:28:32', '2017-07-16 21:43:17', 1, 1, 14, 14, 34, 2, 4),
(9, 10090090, 12345678, 'Fiama Bueno', 22, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04120461205', 4, 'Probando solicitud en sistema', '2017-07-23 20:35:48', '2017-07-16 22:53:28', 5, 1, 20, 20, 41, 1, 1),
(10, 10919191, 56432, 'Richard Quintero', 48, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 5, 'Prueba actualizando el campo asignado a...', '2017-07-23 20:38:52', '2017-07-16 23:01:34', 13, 1, 6, 6, 22, 1, 2),
(11, 1212120, 4635223, 'Mariano Rajoi', 27, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 4, 'Prueba del campo carga familiar en la inclusiÃ³n', '2017-07-23 20:37:24', '2017-07-16 23:43:36', 8, 1, 12, 12, 27, 1, 1),
(12, 21000001, 798789, 'Miletzy Ruiz', 28, 'Comunidad indÃ­gena La Reforma', '04160000101', 3, 'Requiere credito para socioproductivo de musÃ¡ceas, tubÃ©rculos y ciclo corto', NULL, '2017-07-23 20:41:47', 5, 1, 20, 20, 41, 1, 1),
(13, 12000000, 888777, 'Francisco Torrealba', 44, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 2, 'Requiere apoyo con medicamentos para tratamiento de su menor hijo.  ', '2017-07-23 22:27:38', '2017-07-23 20:43:30', 12, 1, 2, 2, 11, 1, 2),
(14, 21000002, 909090, 'Carlos HernÃ¡ndez', 25, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 2, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:27:06', '2017-07-23 20:46:11', 8, 1, 12, 12, 26, 1, 3),
(15, 21000003, 768797987, 'Laura Toro', 25, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 2, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:27:16', '2017-07-23 20:50:37', 6, 1, 15, 15, 39, 1, 3),
(16, 17000000, 8787, 'Marina Rangel', 30, 'Av. Aguerrevere. Edificio Michel. Piso 2. Pto. Aya', '04160000101', 1, 'Prueba Prueba Prueba Prueba ', '2017-07-23 22:27:27', '2017-07-23 20:52:01', 6, 1, 15, 15, 38, 1, 2),
(17, 16766432, 898989, 'Elvia Fuentes de Ortega', 35, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04160000101', 3, 'Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:28:12', '2017-07-23 22:08:52', 2, 1, 4, 4, 20, 1, 3),
(18, 13254952, 90087878, 'Carmen RodrÃ­guez', 40, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04161438618', 3, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:10:17', 2, 1, 4, 4, 19, 1, 1),
(19, 12173644, 89898, 'JosÃ© LÃ³pez', 45, 'Comunidad indÃ­gena La Reforma', '04160000101', 4, 'Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:28:46', '2017-07-23 22:12:20', 2, 1, 4, 4, 18, 1, 2),
(20, 23647125, 878787, 'Johandry MartÃ­nez', 21, 'Comunidad indÃ­gena La Reforma', '04160000101', 2, 'Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:44:27', '2017-07-23 22:14:34', 7, 1, 1, 1, 8, 1, 2),
(21, 19352427, 9898333, 'Thaimar LeÃ³n Tapo', 27, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04261497780', 4, 'Prueba Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:16:09', 14, 1, 3, 3, 13, 2, 1),
(22, 20437831, 76767, 'MarÃ­a Gabriela RodrÃ­guez', 26, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04167005682', 1, 'Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:45:59', '2017-07-23 22:18:13', 14, 1, 3, 3, 13, 1, 2),
(23, 21548380, 76776, 'Leonardo Reyes', 20, 'Comunidad indÃ­gena La Reforma', '04169493223', 2, 'Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:44:56', '2017-07-23 22:21:19', 7, 1, 1, 1, 8, 1, 3),
(24, 18242672, 88787, 'Ricardo MartÃ­nez', 28, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 3, 'Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:45:20', '2017-07-23 22:23:46', 14, 1, 3, 3, 13, 1, 3),
(25, 17675298, 87887, 'Grisenny Escobar', 32, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04160000101', 1, 'Prueba Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:25:42', 14, 1, 3, 3, 13, 1, 1),
(26, 8908437, 876878, 'JosÃ© Gregorio LeÃ³n', 52, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04160000101', 3, 'Prueba Prueba Prueba Prueba Prueba Prueba ', '2017-07-23 22:32:18', '2017-07-23 22:32:07', 2, 1, 4, 4, 20, 1, 1),
(27, 8947911, 57768787, 'Martha Tapo', 52, 'Urb. Sector 57. Pto. Ayacucho Amazonas', '04160000101', 3, 'Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:37:24', 12, 1, 2, 2, 11, 1, 1),
(28, 10605715, 87878, 'Tibiano Bautista', 47, 'Parcelamiento Ayacucho, Sector Vallecito', '04160000101', 4, 'Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:39:59', 2, 1, 4, 4, 20, 1, 1),
(29, 10920148, 87878787, 'Franklin Espinoza', 47, 'Avenida Aguerrevere casa sin nÃºmero diagonal a XX', '04160000101', 5, 'Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 22:43:52', 7, 1, 1, 1, 8, 1, 1),
(30, 10924716, 87998, 'Juanita Escobar', 45, 'Urb. Alto Carinagua XXXXXXXXX XXXXXXX XXX', '04160000101', 4, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 23:34:11', 7, 1, 1, 1, 7, 2, 2),
(31, 15955295, 239898, 'Edith Nayivi Olivero', 34, 'Gonzalez Herrera, detrÃ¡s de Malaria diagonal al t', '04160000101', 2, 'Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba Prueba ', NULL, '2017-07-23 23:35:50', 12, 1, 2, 2, 11, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `kind` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `kind`, `created_at`) VALUES
(1, 'admin', 'Administrador', 'Sistema', '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2017-07-13 15:27:35'),
(2, 'consulta', 'Consulta', 'Sistema', 'consulta@somos.gob.ve', 'dbf9a8061ce7ac9998c18484ab1a72fbcca7c889', 1, 2, '2017-07-13 18:22:06'),
(3, 'nmaldonado', 'Nicia', 'Maldonado', 'nmaldonado', '54e7de161b18960e025bc7dfa244a97420a98c66', 1, 5, '2017-07-15 21:24:03'),
(4, 'mrodriguez', 'Miguel', 'Rodriguez', 'mrodriguez', '0746ccfe28f7d82f33a33e13af09e2aeb9a90f13', 1, 5, '2017-07-15 21:41:19'),
(5, 'jcamejo', 'Jefferson', 'Camejo', 'camejo1984@gmail.com', '7fa58c94c295c47598949a53bae9d78c50559fd2', 1, 5, '2017-07-15 21:42:00'),
(6, 'root', 'Desarrolladores', 'SySOP', 'jemora@fundacite-amazonas.gob.ve', '68fbbe3f9dfe6947cd239b228cfde710054d01b7', 1, 4, '2017-07-15 21:43:06'),
(7, 'minsalud', 'MinSalud', 'MinSalud', 'minsalud', 'b24b5d6ffc8f292d4363d1ca139739913a43ddb3', 1, 7, '2017-07-15 21:44:29'),
(8, 'minvivienda', 'MinVivienda', 'MinVivienda', 'minvivienda', '43033a25b4bc8ff4ff0821ee8d1191aee7e0393a', 1, 6, '2017-07-15 21:45:06'),
(9, 'bnbt', 'Barrio Nuevo', 'Barrio Tricolor', 'bnbt', 'b8152d5cb6df705ba0ab9bfbe4ee67ab87a8bc36', 1, 13, '2017-07-15 21:46:01'),
(10, 'mppeuct', 'MPPEUCT', 'Amazonas', 'mppeuct', 'b59ca4f11c2a8af1c469f1c7fc519ed34be74351', 1, 8, '2017-07-15 21:46:38'),
(11, 'servicios', 'Servicios', 'Publicos', 'servicios', '2fa87083df50cac16eb97956bf443dde1d26bcc5', 1, 14, '2017-07-15 21:47:09'),
(12, 'mincomunas', 'MinComunas', 'Amazonas', 'mincmunas', '4e0c22ef0a8318ddfa1405cc8baae3cc8e2dd859', 1, 12, '2017-07-15 21:47:44'),
(13, 'idenna', 'IDENNA', 'Amazonas', 'idenna', '7e056858e956009f5df293ccf0563e573da1a5fa', 1, 17, '2017-07-15 21:50:31'),
(14, 'mintrabajo', 'MiTrabajo', 'Amazonas', 'mintrabajo', 'bb1cf19d42546117446e1b4dc4493d0e74d0ae70', 1, 9, '2017-07-15 21:51:10'),
(15, 'jgh', 'MisiÃ³n', 'JGH', 'jgh', '69422ecf3a1b28080a77ba9e1041610a1a58590e', 1, 15, '2017-07-15 21:51:42'),
(16, 'minalimentacion', 'MinAlimentaciÃ³n', 'Amazonas', 'minalimentacion', '2bb39f714bd67ca08a12e654cf4141639686671b', 1, 10, '2017-07-15 21:52:20'),
(17, 'mineducacion', 'MnEducaciÃ³n', 'Amazonas', 'mineducacion', 'aa4dd39f8afa4da8d8ae913d8e1e900d148741cd', 1, 11, '2017-07-15 21:52:52'),
(18, 'minagricultura', 'MinAgricultura', 'Amazonas', 'minagricultura', '3b176db06e04c5b0740e8e328932c3d3779c0357', 1, 16, '2017-07-15 21:53:53'),
(19, 'minppau', 'MinPPAU', 'Amazonas', 'minppau', 'ac07fb69aa68b039d36f5c8efee25dc022fcf530', 1, 16, '2017-07-15 21:54:25'),
(20, 'inapymi', 'Inapymi', 'Amazonas', 'inapymi', '6074529d6d88461c2fba6117c72ea38a969644a9', 1, 16, '2017-07-15 21:55:03'),
(21, 'banmujer', 'BanMujer', 'Amazonas', 'banmujer', 'bee6237fbaafa607b03011a28e98616173d2abe3', 1, 16, '2017-07-15 21:55:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kind`
--
ALTER TABLE `kind`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `kind_id` (`kind_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `cedula` (`cedula`),
  ADD KEY `carnet` (`carnet`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `kind`
--
ALTER TABLE `kind`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `priority`
--
ALTER TABLE `priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`kind_id`) REFERENCES `kind` (`id`),
  ADD CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `ticket_ibfk_6` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
