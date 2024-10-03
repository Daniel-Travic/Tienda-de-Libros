-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 23:21:46
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
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'No Ficción', 'Explora el conocimiento real y las experiencias humanas con libros que informan, inspiran y educan.', 'img_125e45445bd33723d025d7f815ca29f7.jpg', '2021-08-20 03:04:04', 'no-ficcion', 0),
(2, 'Ficción', 'Descubre historias cautivadoras que te transportarán a mundos imaginarios y te harán vivir aventuras inolvidables.', 'img_bf5f96fcafeac2318843e0cd813a455a.jpg', '2021-08-21 00:47:10', 'ficcion', 1),
(3, 'Infantil y Juvenil', 'Fomenta la imaginación y el amor por la lectura en los más jóvenes con cuentos y aventuras diseñados para ellos.', 'img_4cd7df1d32839684803f38886d60fcd9.jpg', '2024-06-20 15:19:20', 'infantil-y-juvenil', 1),
(4, 'Académicos y Textos', 'Encuentra recursos esenciales para tu educación y desarrollo profesional, desde textos básicos hasta investigaciones avanzadas.', 'img_6c25347bf4813332d2392df95be8b30b.jpg', '2024-06-20 15:19:49', 'academicos-y-textos', 1),
(5, 'Arte y Cultura', 'Sumérgete en el mundo de la creatividad y la expresión humana con libros que exploran las artes y las tradiciones culturales.', 'img_2c9f13797e36670bd4181a4d5896c6cc.jpg', '2024-06-20 15:20:18', 'arte-y-cultura', 1),
(6, 'Gastronomía', 'Deléitate con una variedad de libros que celebran la comida, el vino y las tradiciones culinarias de todo el mundo.', 'img_14026bdad66bebf44ec9a2522579713f.jpg', '2024-06-20 15:20:52', 'gastronomia', 1),
(7, 'Deportes y Recreación', 'Mantente activo y entretenido con guías y relatos sobre deportes, actividades al aire libre y pasatiempos.', 'img_9f40fcb8066622b5b7365148e5374091.jpg', '2024-06-20 15:21:23', 'deportes-y-recreacion', 1),
(8, 'Espiritualidad y Religión', 'Encuentra inspiración y comprensión en libros que exploran las creencias, prácticas espirituales y filosofías de vida.', 'img_095c884067ab7b12b9192d7ddaae515b.jpg', '2024-06-20 15:21:58', 'espiritualidad-y-religion', 1),
(9, 'Hogar y Jardín', 'Transforma tu espacio y estilo de vida con libros llenos de ideas prácticas y creativas para el hogar y el jardín.', 'img_5977f50125a76e244d0a95f76561cad6.jpg', '2024-06-20 15:22:26', 'hogar-y-jardin', 1),
(10, 'Salud y Bienestar', 'Mejora tu calidad de vida con consejos y guías sobre nutrición, ejercicio y bienestar general.', 'img_ec875e9a49055dd01350e966afd85c82.jpg', '2024-06-20 15:22:49', 'salud-y-bienestar', 1),
(11, 'Poesía', 'Redescubre las obras literarias que han dejado una marca indeleble en la historia, desde novelas hasta poesía y teatro.', 'img_a3e916a3b46ad7e95e1bccfe6bc70232.jpg', '2024-06-20 15:23:16', 'poesia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(4, 3, 2, 200.00, 1),
(5, 4, 4, 120.00, 1),
(6, 5, 5, 200.00, 16),
(7, 6, 4, 120.00, 6),
(8, 7, 5, 200.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(1, 1, 'pro_1018ac4efefe93878b7468ce72c630a3.jpg'),
(4, 2, 'pro_04e3bbf847b466de4aed691fca982d9d.jpg'),
(13, 3, 'pro_2b1a81cfe27f85486abbf5a7f8860cd9.jpg'),
(16, 4, 'pro_bc31640497c411fc4fcf6a0f30f386fa.jpg'),
(17, 5, 'pro_418eaead2b3e82c18151829364ee9561.jpg'),
(22, 8, 'pro_d11a4642386750ca3d502beec0ff998e.jpg'),
(23, 6, 'pro_fbeb406956b3e65d0f6711fc413a60ad.jpg'),
(24, 7, 'pro_a7ea355e0f3e6d2b868cce907febe80e.jpg'),
(25, 9, 'pro_56f88d7b09113a21da84058b5ddeee74.jpg'),
(26, 10, 'pro_72301f1dc5c6ea8c5e862c4c044eef35.jpg'),
(27, 11, 'pro_d33a4e57f635bcbc72c6c6fa9e5f9cfc.jpg'),
(28, 12, 'pro_79ee04df9f9407c9c30ee84307cc9a1e.jpg'),
(29, 13, 'pro_262d3cf37739f506a7c4a028763314b8.jpg'),
(30, 14, 'pro_e90b5807abca871db7f0e54530f6b138.jpg'),
(31, 15, 'pro_06ae7631f0ce246d5d03077738229e0d.jpg'),
(32, 16, 'pro_1a4208f0f74391adfe5fcaf70753dddf.jpg'),
(33, 17, 'pro_a72bd6f00492dc2da5d6f7d052d96d7a.jpg'),
(34, 18, 'pro_991a5a0712d0fbb0ca8683acb744438b.jpg'),
(35, 19, 'pro_1ac2970cb68cc548cf51c7e8b0f8b5f7.jpg'),
(36, 20, 'pro_9c5dfe683bd28060f733f90a4acd06c7.jpg'),
(37, 21, 'pro_3ad3c18dd20f5ac6439a59050b7726ab.jpg'),
(38, 22, 'pro_e7cf334dce9af2b0cd38fa7ef3d73d8f.jpg'),
(39, 23, 'pro_7f0608c31be2cdf823a449fda3cff8ed.jpg'),
(40, 24, 'pro_9385933c46accf40869251442fe1d7b5.jpg'),
(41, 25, 'pro_7aeec74359fb85291b596242fc5a61a5.jpg'),
(42, 26, 'pro_7ceab1fb4671774804c47c95d3dfa7d1.jpg'),
(43, 27, 'pro_15dd2dd087edf13f2facb26a9095e2cd.jpg'),
(44, 28, 'pro_0f88dfa35ac10c80b0cf0b2a9a0084f3.jpg'),
(45, 29, 'pro_cb26afd78b250c2709e52937faf6f698.jpg'),
(46, 30, 'pro_8c8c5901a57ee60617bd79ab64fe2d6a.jpg'),
(47, 31, 'pro_1465204f77fabbd643e82bd37ae43952.jpg'),
(48, 32, 'pro_9ba075f950351f71bc466927949202c0.jpg'),
(49, 33, 'pro_784743963d5708dce996ff7ad16e9a36.jpg'),
(50, 34, 'pro_7463b3513800f107d1fb1c34ad10af27.jpg'),
(51, 35, 'pro_9d548d35fb3e3c956242c4512ecb7cd6.jpg'),
(52, 36, 'pro_b81a3379e0ea83c012096e55acf43258.jpg'),
(53, 37, 'pro_a411cdd7e1c4dc7e46cc16554960e272.jpg'),
(54, 38, 'pro_1b462cbac83cc226dc900ab8aaae59c2.jpg'),
(55, 39, 'pro_431d3b4d0da33bb396bc2356f2bed0c8.jpg'),
(56, 40, 'pro_6d3efd2fdf6baaa486d084b7ad8bc219.jpg'),
(57, 41, 'pro_082c239b31e2fabdea0203e66ceae336.jpg'),
(58, 42, 'pro_887e400c78b36fe9e6d5cece74a2ad91.jpg'),
(59, 43, 'pro_4c612f2c70db96a0fa79f29052936f21.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(3, NULL, NULL, NULL, 5, '2024-06-20 15:51:29', 5.00, 205.00, 2, 'bamba 312, Neza', 'Pendiente'),
(4, NULL, NULL, NULL, 6, '2024-06-20 16:15:43', 5.00, 125.00, 4, 'escom, CDMX', 'Pendiente'),
(5, NULL, NULL, NULL, 5, '2024-06-20 16:32:17', 5.00, 3205.00, 2, 'NEZAHUALCÓYOTL, EDOMEX', 'Pendiente'),
(6, NULL, NULL, NULL, 5, '2024-06-20 16:33:45', 5.00, 725.00, 2, 'ASJSADJHSA, sdmskd', 'Pendiente'),
(7, '210', NULL, NULL, 1, '2024-06-26 16:27:02', 5.00, 205.00, 2, 'Avenida siempre viva, Sprinfil', 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Abel', 'OSH', 123456, 'info@abelosh.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Abel OSH', 'Ciudad', NULL, 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', 456878977, 'alex@info.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 1),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1),
(5, '5677', 'Diego Iván', 'Rodríguez Reyes', 5579357928, 'diegoivanrodriguezreyes3@gmail.com', '90d09814c2206bf69be7688837da6752845c6a2836dca076bb4ed18d17e7d573', NULL, NULL, NULL, 'a0d2d79296604c6b6199-d945c4a31bf7732ed755-9e6d014d6375fc7b8ad3-058d982e8bbb6907f3b8', 3, '2024-06-20 11:05:59', 1),
(6, '123231', 'Itzel', 'Flores', 55678827827, 'itzelre@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '12413413', 'ING,ITZEL', 'CHAMBA', 'b7e76ee6369973d19587-82e1e745665c48f249a3-85cb83f4e1f64673896f-5eb9bed86ad773fd045b', 3, '2024-06-20 16:14:37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p>Hace algunos a&ntilde;os, un grupo de diez apasionados de la lectura se uni&oacute; con el sue&ntilde;o de crear un espacio donde los libros fueran el centro de atenci&oacute;n. Estos diez visionarios compart&iacute;an una creencia com&uacute;n: que los libros tienen el poder de transformar vidas y abrir puertas a mundos desconocidos. Juntos, formaron una comunidad dedicada a promover el amor por la lectura y el intercambio de conocimientos.</p> <p>Sin embargo, como en toda gran historia, el camino no siempre es sencillo. A medida que pasaba el tiempo, cinco de los miembros decidieron seguir sus propios caminos y desarrollar proyectos individuales, explorando nuevas ideas y territorios.</p> <p>Fue en ese momento cuando los cuatro miembros restantes se unieron con m&aacute;s fuerza y determinaci&oacute;n, impulsados por la visi&oacute;n de crear algo verdaderamente especial. Con una mezcla de talentos, entre ellos escritores, bibliotecarios y entusiastas de la literatura, estos cuatro fundadores decidieron dar vida a un proyecto ambicioso y apasionante: \"YeiBook\".</p> <p>Desde sus humildes comienzos, \"YeiBook\" ha crecido hasta convertirse en un faro para los amantes de los libros. La dedicaci&oacute;n y el amor por la literatura de estos cuatro fundadores se reflejan en cada aspecto de nuestra plataforma. Han trabajado incansablemente para crear un espacio donde los libros puedan encontrar nuevos hogares y donde los lectores puedan descubrir historias que les hablen al coraz&oacute;n.</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p>En \"YeiBook\", creemos que cada libro tiene una historia que contar y un hogar perfecto donde ser apreciado. Nuestra misi&oacute;n es conectar a los lectores con esos libros que cambiar&aacute;n sus vidas, les har&aacute;n so&ntilde;ar y expandir&aacute;n sus horizontes.</p> <p>Nos dedicamos a ofrecer una cuidadosa selecci&oacute;n de libros, asegurando que cada uno de ellos sea una joya esperando ser descubierta. Creemos en el poder transformador de la lectura y en la importancia de mantener viva la magia de los libros f&iacute;sicos en un mundo digital.</p> <p>En \"YeiBook\", cada cliente es un amigo y cada libro, una puerta a un nuevo mundo. Te invitamos a explorar nuestra colecci&oacute;n, a encontrar esa historia que te acompa&ntilde;ar&aacute; siempre y a unirte a nuestra comunidad de amantes de la lectura.</p> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://images.pexels.com/photos/1290141/pexels-photo-1290141.jpeg?cs=srgb&amp;dl=pexels-ivo-rainha-527110-1290141.jpg&amp;fm=jpg\" alt=\"2.576+ Fotos y Im&aacute;genes de Librer&iacute;a Gratis &middot; Banco de Fotos Gratis\" /><br /> <div class=\"card-body\"> <p class=\"card-text\">Descubre la magia de la lectura en el coraz&oacute;n de la ciudad. Nuestra sucursal en Claveria te invita a explorar una vasta colecci&oacute;n de libros en un ambiente acogedor y lleno de historia. Disfruta de nuestras recomendaciones personalizadas y eventos literarios &uacute;nicos. &iexcl;Vis&iacute;tanos y encuentra tu pr&oacute;xima gran lectura!</p> <p>Direcci&oacute;n: Calle Floresta 79, Claveria, Azcapotzalco, 02080 Ciudad de M&eacute;xico, CDMX<br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://png.pngtree.com/thumb_back/fw800/background/20230425/pngtree-huge-library-with-old-books-that-have-multiple-doors-image_2513239.jpg\" alt=\"Fondo Enorme Biblioteca Con Libros Antiguos Que Tienen Varias Puertas Fondo, Estanter&iacute;a Con Biblioteca De Libros, Foto De Fotograf&iacute;a De Alta Definici&oacute;n, Estanter&iacute;a Imagen de Fondo Para Descarga Gratuita - Pngtreee\" /><br /> <div class=\"card-body\"> <p class=\"card-text\">Tu oasis literario en el Centro Hist&oacute;rico. Sum&eacute;rgete en un espacio moderno y vibrante, ideal para descubrir las &uacute;ltimas novedades y cl&aacute;sicos imprescindibles. Nuestra tienda ofrece un rinc&oacute;n de lectura c&oacute;modo, caf&eacute; artesanal y un equipo de expertos apasionados por los libros, listos para ayudarte a encontrar el libro perfecto. &iexcl;Ven y vive una experiencia literaria sin igual!</p> <p>Direcci&oacute;n: Av Francisco I. Madero 32, Centro Hist&oacute;rico de la Cdad. de M&eacute;xico, Centro, Cuauht&eacute;moc, 06000 Ciudad de M&eacute;xico, CDMX<br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://img.freepik.com/fotos-premium/libros-biblioteca-papel-tapiz-hd-imagen-fotografica_993236-3331.jpg\" alt=\"Libros de biblioteca papel tapiz HD imagen fotogr&aacute;fica | Foto Premium\" /><br /> <div class=\"card-body\"> <p class=\"card-text\">El para&iacute;so de los amantes de los libros en Coyoac&aacute;n. Nuestra sucursal en Coyoac&aacute;n es el destino perfecto para los bibli&oacute;filos. Con una amplia selecci&oacute;n de t&iacute;tulos y un ambiente elegante, te ofrecemos el lugar ideal para relajarte y disfrutar de la lectura. Adem&aacute;s, contamos con una agenda de talleres y charlas exclusivas para enriquecer tu amor por la literatura. &iexcl;Te esperamos para compartir nuestra pasi&oacute;n por los libros!</p> <p>Direcci&oacute;n: Eje 1 Oriente, Canal de Miramontes 2739, Coyoac&aacute;n, Ciudad de M&eacute;xico, CDMX<br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 2, '2417984565', 'En agosto nos vemos', '<p>Como cada 16 de agosto, Ana Magdalena Bach toma el transbordador para llegar a la isla donde est&aacute; sepultada su madre, se registra en el hotel habitual, compra un ramo de gladiolos, pasa la tarde en el cementerio y, al d&iacute;a siguiente, regresa a casa con su familia. Sin embargo, esta vez el encuentro inesperado con un hombre cambiar&aacute; para siempre su rutina invit&aacute;ndola cada a&ntilde;o a escapar por una noche de la vida que ha construido con su esposo e hijos.</p> <p>Narrada con el inconfundible estilo del nobel colombiano que ha cautivado a millones de lectores durante varias generaciones,<span class=\"a-text-italic\">&nbsp;En agosto nos vemos</span>&nbsp;es una profunda reflexi&oacute;n sobre el amor y sus misterios, el deseo femenino y la libertad. Un inesperado regalo de uno de los m&aacute;s grandes escritores que el mundo ha conocido.</p>', 400.00, 50, NULL, '2021-08-20 03:12:14', 'en-agosto-nos-vemos', 1),
(2, 2, '456879878', 'Tres enigmas para la Organización', '<p>Barcelona, primavera de 2022. Los miembros de una organizaci&oacute;n gubernamental secreta se enfrentan a la peligros&iacute;sima investigaci&oacute;n de tres casos que tal vez est&eacute;n relacionados entre s&iacute;, o tal vez no: la aparici&oacute;n de un cuerpo sin vida en un hotel de Las Ramblas, la desaparici&oacute;n de un millonario brit&aacute;nico en su yate y las singulares finanzas de Conservas Fern&aacute;ndez.<br />Creada en pleno franquismo y perdida en el limbo de la burocracia institucional del sistema democr&aacute;tico, la Organizaci&oacute;n sobrevive con apuros econ&oacute;micos y en los l&iacute;mites de la ley, con una reducida plantilla de personajes heterog&eacute;neos, extravagantes y mal avenidos. Entre el suspense y la carcajada, el lector deber&aacute; unirse a este disparatado grupo si quiere resolver los tres enigmas de este apasionante rompecabezas.<br />Eduardo Mendoza entrega su mejor y m&aacute;s divertida aventura hasta la fecha. Y lo hace con nueve agentes secretos en una novela de detectives que actualiza los cl&aacute;sicos del g&eacute;nero, y en la que el lector encontrar&aacute; la inconfundible voz narrativa, el brillante sentido del humor, la s&aacute;tira social y la comedia de enredo que caracterizan a uno de los mejores autores de la lengua espa&ntilde;ola.</p>', 200.00, 100, NULL, '2021-08-20 03:14:10', 'tres-enigmas-para-la-organizacion', 1),
(3, 2, '4658798787', 'La ciudad y sus muros inciertos', '<p>Poco se imagina el joven protagonista de esta novela que la chica de la que se ha enamorado est&aacute; a punto de desaparecer de su vida. Se han conocido durante un concurso entre estudiantes de diferentes institutos, y no pueden verse muy a menudo. En sus encuentros, sentados bajo la glicinia de un parque o paseando a orillas de un r&iacute;o, la joven empieza a hablarle de una extra&ntilde;a ciudad amurallada, situada, al parecer, en otro mundo; poco a poco, ella acaba confes&aacute;ndole su inquietante sensaci&oacute;n de que su verdadero&nbsp;<span class=\"a-text-italic\">yo</span> se halla en esa misteriosa ciudad. De pronto, entrado el oto&ntilde;o, el protagonista recibe una carta de ella que quiz&aacute; suponga una despedida, y eso lo sume en una profunda tristeza. Tendr&aacute;n que pasar a&ntilde;os antes de que pueda atisbar alguna posibilidad de reencontrarla.</p> <p>Y sin embargo, esa ciudad, tal y como ella la describi&oacute;, existe. Porque todo es posible en este asombroso universo donde la realidad, la identidad, los sue&ntilde;os y las sombras fluct&uacute;an y escapan a los r&iacute;gidos l&iacute;mites de la l&oacute;gica.</p>', 300.00, 100, NULL, '2021-08-21 00:48:21', 'la-ciudad-y-sus-muros-inciertos', 1),
(4, 2, '12122132', 'Percy Jackson y los dioses del Olimpo', '<p>Expulsado de seis colegios, Percy Jackson padece dislexia y dificultades para concentrarse, o al menos &eacute;sa es la versi&oacute;n oficial. Objeto de burlas por inventarse historias fant&aacute;sticas, ni siquiera &eacute;l mismo acaba de cre&eacute;rselas hasta el d&iacute;a que los dioses del Olimpo le revelan la verdad: Percy es nada menos que un semidi&oacute;s, es decir, el hijo de un dios y una mortal.</p>', 120.00, 5, NULL, '2024-06-20 16:08:12', 'percy-jackson-y-los-dioses-del-olimpo', 1),
(5, 2, '129078', '1984', '<p>En el a&ntilde;o 1984 Londres es una ciudad l&uacute;gubre en la que la polic&iacute;a del pensamiento controla de forma asfixiante la vida de los ciudadanos. Winston Smith es un pe&oacute;n de este engranaje perverso, su cometido es reescribir la historia para adaptarla a lo que el partido considera la versi&oacute;n oficial de los hechos hasta que decide replantearse la verdad del sistema que los gobierna y somete.</p>', 200.00, 10, NULL, '2024-06-20 16:30:05', '1984', 1),
(6, 11, '2314124', 'Poesía Amorosa', '<p>Digo que no puede decirse el amor. El amor se come como un pan, se muerde como un labio, se bebe como un manantial. Mario Benedetti seleccion&oacute; los mejores poemas de amor para que las nuevas generaciones se inicien en la obra de Jaime Sabines, a quien consideraba \"el m&aacute;s notable precursor de la poes&iacute;a coloquial en Am&eacute;rica Latina\" y \"uno de los poetas fundamentales, no s&oacute;lo de M&eacute;xico sino de Hispanoam&eacute;rica y la lengua castellana\".</p>', 130.00, 10, NULL, '2024-06-20 16:42:44', 'poesia-amorosa', 1),
(7, 2, '9999999', 'Rebelión en la granja', '<p>Esta s&aacute;tira de la Revoluci&oacute;n rusa y el triunfo del estalinismo, se ha convertido por derecho propio en un referente de la cultura contempor&aacute;nea y en uno de los libros m&aacute;s mordaces de todos los tiempos. Ante el apogeo del &aacute;nimo de los animales de la Granja Solariega, molestos con su tipo de vida, planean una rebeli&oacute;n encabezada por los cerdos, que pretende que los habitantes aprendan a leer, estudiar y construir un molino. El objetivo es propiciarles una vida mejor. Pero pronto se dejan ver las semillas del totalitarismo en una organizaci&oacute;n aparentemente ideal.</p>', 399.00, 66, NULL, '2024-06-26 17:03:04', 'rebelion-en-la-granja', 1),
(8, 2, '23432424', 'Matar a un ruiseñor', '<p>El consejo de un abogado a sus hijos mientras &eacute;l defiende el verdadero ruise&ntilde;or de la novela cl&aacute;sica de Harper Lee ―un hombre negro acusado de violar a una ni&ntilde;a blanca. A trav&eacute;s de los ojos de Jem y Scout Finch, Harper Lee explora con humor y honestidad inquebrantable la irracionalidad de la actitud de los adultos hacia la raza y la clase en las profundidades del sur en la d&eacute;cada de 1930. La conciencia de una ciudad impregnada de prejuicios, violencia e hipocres&iacute;a se enfrenta con la resistencia y hero&iacute;smo silencioso de la lucha de un hombre por la justicia, pero el peso de la historia no tolera m&aacute;s all&aacute; de su l&iacute;mite. Uno de los cl&aacute;sicos m&aacute;s queridos de todos los tiempos, Matar a un ruise&ntilde;or ha ganado muchas distinciones desde su publicaci&oacute;n original en 1960. Ha ganado el Premio Pulitzer, ha sido traducido a m&aacute;s de cuarenta idiomas, vendi&oacute; m&aacute;s de cuarenta millones de copias en todo el mundo, y se han convertido en una popular pel&iacute;cula. Tambi&eacute;n se nombr&oacute; como la mejor novela del siglo XX por los bibliotecarios de todo el pa&iacute;s (Library Journal). Compasivo, dram&aacute;tico y muy emotivo, Matar a un ruise&ntilde;or en esta nueva y moderna traducci&oacute;n lleva a los lectores a las ra&iacute;ces de la conducta humana, a la inocencia y experiencia, a la bondad y crueldad, al amor y odio, humor y patetismo..</p>', 279.00, 80, NULL, '2024-06-27 13:14:39', 'matar-a-un-ruisenor', 1),
(9, 2, '43234220', 'Orgullo y prejuicio', '<p>La historia de las hermanas Bennet, conlleva un padre indolente, una madre hist&eacute;rica e irresponsable, la presencia elegante y varonil de Fitzwilliam Darcy, y un plantel de secundarios absolutamente deliciosos. No es de sorprender que causara de inmediato un tremendo revuelo en los cen&aacute;culos literarios de Londres, donde se valor&oacute; muy positivamente la novela. Elizabeth Bennet ya no es la damisela inv&aacute;lida, es una mujer inteligente, independiente, cr&iacute;tica, maliciosa, divertida, sensata, aventurera y sincera. Se divierte con las tonter&iacute;as a las que se ven abocados sus coet&aacute;neos por las imposiciones sociales, no le importa demasiado quedarse soltera, se burla del amor a primera vista, aprende de sus errores, es implacable con las cadenas sociales que atenazan a sus cong&eacute;neres y asume desde el principio que ella es la due&ntilde;a de su vida. Hoy parece poca cosa, pero hace doscientos a&ntilde;os todas las muchachas de Inglaterra aprendieron, con Elizabeth Bennet, a decir que &laquo;no&raquo; y que se tomara como un &laquo;no&raquo;, a no sentirse arrastradas por una madre absurda, a no sentirse intimidadas por el poder, la clase o el dinero, a respetarse a s&iacute; mismas y a presentarse ante el mundo sin nada de lo que avergonzarse.</p>', 268.00, 30, NULL, '2024-06-27 14:01:50', 'orgullo-y-prejuicio', 1),
(10, 2, '435342245', 'El gran Gatsby', '<p>&laquo;&Eacute;l ten&iacute;a una de las cualidades m&aacute;s raras en la literatura: encanto, encanto como Keats lo hab&iacute;a tenido, &iquest;y qui&eacute;n lo posee hoy d&iacute;a?&raquo; Raymond ChandlerEl gran Gatsby es un retrato de la Jazz Age que captura el esp&iacute;ritu de la generaci&oacute;n de Scott Fitzgerald y le concede un trono permanente en el Olimpo de la literatura norteamericana. El millonario hecho a s&iacute; mismo, Jay Gatsby, personaliza una de las obsesiones del autor y de la sociedad de su pa&iacute;s: la combinaci&oacute;n de dinero, ambici&oacute;n y lujuria como promesa de nuevos comienzos. Una extraordinaria f&aacute;bula y como tal, no exenta de moraleja sobre el sue&ntilde;o americano. Traducci&oacute;n de Jos&eacute; Luis L&oacute;pez Mu&ntilde;oz.</p>', 312.00, 26, NULL, '2024-06-27 14:06:25', 'el-gran-gatsby', 1),
(11, 2, '60548943', 'Cien años de soledad', '<p>Muchos a&ntilde;os despu&eacute;s, frente al pelot&oacute;n de fusilamiento, el coronel Aureliano Buend&iacute;a hab&iacute;a de recordar aquella tarde remota en que su padre lo llev&oacute; a conocer el hielo. Macondo era entonces una aldea de veinte casas de barro y ca&ntilde;abrava construidas a la orilla de un r&iacute;o de aguas di&aacute;fanas que se precipitaban por un lecho de piedras pulidas, blancas y enormes como huevos prehist&oacute;ricos. El mundo era tan reciente, que muchas cosas carec&iacute;an de nombre, y para mencionarlas hab&iacute;a que se&ntilde;alarlas con el dedo.&raquo;&nbsp;Mito por derecho propio, saludada por sus lectores como la obra en espa&ntilde;ol m&aacute;s importante despu&eacute;s de la Biblia, Cien a&ntilde;os de soledad cuenta la saga de la familia Buend&iacute;a y su maldici&oacute;n, que castiga el matrimonio entre parientes d&aacute;ndoles hijos con cola de cerdo. Como un r&iacute;o desbordante, a lo largo de un siglo se entretejer&aacute;n sus destinos por medio de sucesos maravillosos en el fant&aacute;stico pueblo de Macondo, en una narraci&oacute;n que es la cumbre indiscutible del realismo m&aacute;gico y la literatura del boom. Alegor&iacute;a universal, es tambi&eacute;n una visi&oacute;n de Latinoam&eacute;rica y una par&aacute;bola sobre la historia humana.</p>', 478.00, 12, NULL, '2024-06-27 14:10:16', 'cien-anos-de-soledad', 1),
(12, 3, '7786464', 'Harry Potter Y La Piedra Filosofal', '<p>Harry Potter nunca ha o&iacute;do hablar de Hogwarts cuando en el felpudo del n&uacute;mero 4 de Privet Drive empieza a caer una lluvia de sobres de pergamino amarillento, con la direcci&oacute;n escrita con tinta verde y un sello de lacre p&uacute;rpura. Y aunque los horribles t&iacute;os de Harry se apresuran a confiscar las cartas, el d&iacute;a que Harry cumple once a&ntilde;os un hombre gigantesco llamado Rubeus Hagrid, cuyos ojos brillan como escarabajos negros, irrumpe con una noticia extraordinaria: Harry Potteres un mago, y le han concedido una plaza en el Colegio Hogwarts de Magia y Hechicer&iacute;a. &iexcl;Una aventura incre&iacute;ble est&aacute; a punto de comenzar.</p>', 319.00, 14, NULL, '2024-06-27 14:13:21', 'harry-potter-y-la-piedra-filosofal', 1),
(13, 3, '965443094', 'Donde viven los monstruos', '<p><span class=\"a-text-italic\">Donde viven los monstruos</span>&nbsp;tiene cincuenta a&ntilde;os de publicaci&oacute;n. Maurice Sendak ganador de la Medalla Caldecott por su libro de im&aacute;genes se ha convertido en uno de los libros infantiles m&aacute;s queridos y aclamados de todos los tiempos. Todo ni&ntilde;o debe tener una copia.</p> <p>Las travesuras llevan a Max a su habitacion castigado y sin cenar. Encerrado entre esas cuatro paredes, imagina un viaje fantastico al pa&iacute;s de los monstruos, donde se convertir&aacute; en el rey. Un libro para aprender a domar monstruos (en este caso, de lo m&aacute;s dulces y tiernos).</p> <p>Este cl&aacute;sico de la literatura infantil es ideal para los primeros lectores, quienes se veran identificados con Max, sus juegos, sus miedos y, su mundo.</p>', 350.96, 11, NULL, '2024-06-27 14:16:54', 'donde-viven-los-monstruos', 1),
(14, 3, '742238609', 'La oruga muy hambrienta', '<p>The Spanish translation of The Very Hungry Caterpillar (Philomel) preserves the original simplicity and the appealing use of repetition and rhythm. The exquisite collage illustrations will delight children as a hungry caterpillar happily eats his way through pages of fabulous food and emerges a brilliantly colored butterfly.</p>', 390.37, 6, NULL, '2024-06-27 14:22:47', 'la-oruga-muy-hambrienta', 1),
(15, 3, '63467890', 'La Telarana de Carlota', '<p>Un cerdito. Humilde. Radiante. Estas son las palabras en&nbsp;<span class=\"a-text-italic\">La telara&ntilde;a de Carlota</span>, en lo alto del establo Zuckerman. Charlotte narra sus sentimientos por un cerdito llamado Wilbur, que simplemente quiere un amigo. Asimismo, expresa el amor de una ni&ntilde;a llamada Fern, que salv&oacute; la vida de Wilbur cuando naci&oacute;.</p> <p>Este libro ganador galardonada con el Newbery Honor es una tierna novela de amistad, amor, vida y muerte que permanecer&aacute; por generaciones venideras. Contiene ilustraciones de Garth Williams, el aclamado ilustrador de&nbsp;<span class=\"a-text-italic\">Stuart Little</span>, entre otros muchos libros.</p>', 332.66, 32, NULL, '2024-06-27 15:07:42', 'la-telarana-de-carlota', 1),
(16, 3, '67382520', 'Buenas Noches, Luna', '', 297.24, 40, NULL, '2024-06-27 15:12:33', 'buenas-noches-luna', 1),
(17, 3, '643738', 'Matilda', '<p>Matilda es una lectora empedernida con tan solo cinco a&ntilde;os. Sensible e inteligente, todos la admiran menos sus mediocres padres que laconsideran una in&uacute;til. Adem&aacute;s, tiene poderes extra&ntilde;os y maravillosos.Un d&iacute;a, decide desquitarse y empieza a emplearlos contra la cruelse&ntilde;orita Trumchbull.</p>', 175.83, 20, NULL, '2024-06-27 15:21:15', 'matilda', 1),
(18, 3, '6732982', 'El Gato Ensombrerado', '<p class=\"a-text-bold\"><span class=\"a-text-bold\">This rhymed, Spanish-language translation of&nbsp;</span><span class=\"a-text-bold a-text-italic\">The Cat in the Hat&nbsp;</span><span class=\"a-text-bold\">makes the joyful experience of reading Dr. Seuss\'s most beloved Beginner Book available for the first time to the more than 38 million people in the United States who speak Spanish! Translated by Teresa Mlawerone of the most respected figures in Hispanic publishingand Puerto Rican poet and children\'s book author Georgina L&aacute;zaro, this classic beginning reader will delight Spanish speakers of all ages, proving yet again that learning to read with the Cat in the Hat is FUN!</span></p> <p class=\"a-text-bold\"><span class=\"a-text-bold\">Beginner Books are fun, funny, and easy to read! Launched by Dr. Seuss in 1957 with the publication of&nbsp;</span><span class=\"a-text-bold a-text-italic\">The Cat in the Hat</span><span class=\"a-text-bold\">, this beloved early reader series motivates children to read on their own by using simple words with illustrations that give clues to their meaning. Featuring a combination of kid appeal, supportive vocabulary, and bright, cheerful art, Beginner Books will encourage a love of reading in children ages 3-7.</span></p>', 181.73, 54, NULL, '2024-06-27 15:24:01', 'el-gato-ensombrerado', 1),
(19, 4, '646734936', 'La otra historia de los Estados Unidos', '<p>En &eacute;sta, su m&aacute;s famosa obra, Howard Zinn nos presenta una perspectiva l&uacute;cida e imprescindible de la historia de los Estados Unidos. Desde el primer encuentro entre los ind&iacute;genas americanos y Crist&oacute;bal Col&oacute;n, hasta las aposionadas protestas en contra de la invasi&oacute;n de Irak del 2003, Zinn nos enfrenta con el otro lado de la historia de los Estados Unidos. Lleno de humor, calidez y respeto por aquellos que se han dejado fuera de la historia prevaleciente,&nbsp;<span class=\"a-text-italic\">La otra historia de los Estados Unidos&nbsp;</span>de muestra la importancia de las experiencias de afroamericanos, mujeres, ind&iacute;genas, obreros e inmigrantes en la formaci&oacute;n del pa&iacute;s.<br /><br />La nueva edici&oacute;n de la&nbsp;<span class=\"a-text-italic\">La otra historia</span>&nbsp;incluye un an&aacute;lisis de la presidencia Bush, escrito por el autor antes de su muerte, en el cual discute la controversia de la elecci&oacute;n presidencial del 2000, las deciciones que se tomaron tras los ataques del 11 de septiembre del 2001, la reaci&oacute;n del pueblo americano y la elecciones legislativas del 2006.</p>', 229.00, 19, NULL, '2024-06-27 15:27:51', 'la-otra-historia-de-los-estados-unidos', 1),
(20, 4, '45465287', 'Sapiens. De animales a dioses', '<p>&iquest;C&oacute;mo logr&oacute; nuestra especie imponerse en la lucha por la existencia? &iquest;Por qu&eacute; nuestros ancestros recolectores se unieron para crear ciudades y reinos? &iquest;C&oacute;mo llegamos a creer en dioses, en naciones o en los derechos humanos; a confiar en el dinero, en los libros o en las leyes? &iquest;C&oacute;mo acabamos sometidos a la burocracia, a los horarios y al consumismo? &iquest;Y c&oacute;mo ser&aacute; el mundo en los milenios venideros?</p> <p>En&nbsp;<span class=\"a-text-italic\">De animales a dioses</span>, Yuval Noah Harari traza una breve historia de la humanidad, desde los primeros humanos que caminaron sobre la Tierra hasta los radicales y a veces devastadores avances de las tres grandes revoluciones que nuestra especie ha protagonizado: la cognitiva, la agr&iacute;cola y la cient&iacute;fica. A partir de hallazgos de disciplinas tan diversas como la biolog&iacute;a, la antropolog&iacute;a, la paleontolog&iacute;a o la econom&iacute;a, Harari explora c&oacute;mo las grandes corrientes de la historia han modelado nuestra sociedad, los animales y las plantas que nos rodean e incluso nuestras personalidades. &iquest;Hemos ganado en felicidad a medida que ha avanzado la historia? &iquest;Seremos capaces de liberar alguna vez nuestra conducta de la herencia del pasado? &iquest;Podemos hacer algo para influir en los siglos futuros?</p> <p>Audaz, ambicioso y provocador, este libro cuestiona todo lo que cre&iacute;amos saber sobre el ser humano: nuestros or&iacute;genes, nuestras ideas, nuestras acciones, nuestro poder... y nuestro futuro.</p>', 271.15, 17, NULL, '2024-06-27 15:30:00', 'sapiens-de-animales-a-dioses', 1),
(21, 4, '345742348', 'Armas, gérmenes y acero', '<p>Un apasionante y clarificador trabajo de investigaci&oacute;n que desmantela el concepto occidental, no exento de soberbia, de \"sociedades avanzadas\".Armas, g&eacute;rmenes y acero, ganador del premio Pulitzer, cuestiona la prepotente visi&oacute;n occidental del progreso humano y nos ayuda a comprender c&oacute;mo el mundo moderno y sus desigualdades han llegado a ser como son. Hace 13 000 a&ntilde;os la evoluci&oacute;n de las distintas sociedades humanas comenz&oacute; a tomar rumbos diferentes. La temprana domesticaci&oacute;n de animales y el cultivo de plantas silvestres en el Creciente F&eacute;rtil, China, Mesoam&eacute;rica y otras zonas geogr&aacute;ficas otorg&oacute; una ventaja inicial a sus habitantes. Sin embargo, los or&iacute;genes localizados de la agricultura y la ganader&iacute;a son s&oacute;lo una parte de la explicaci&oacute;n de los diferentes destinos de los pueblos. Las sociedades que superaron esta fase de cazadores-recolectores se encontraron con m&aacute;s probabilidades de desarrollo, supervivencia y poder b&eacute;lico.</p>', 458.98, 25, NULL, '2024-06-27 15:31:56', 'armas-germenes-y-acero', 1),
(22, 4, '122478534', 'Pensar rápido, pensar despacio', '<p>Un apasionante recorrido por el funcionamiento de la mente de la mano del padre de la psicolog&iacute;a conductista y premio Nobel de Econom&iacute;a en 2002: Daniel Kahneman. Daniel Kahneman, uno de los pensadores m&aacute;s importantes del mundo, recibi&oacute; el premio Nobel de Econom&iacute;a por su trabajo pionero en psicolog&iacute;a sobre el modelo racional de la toma de decisiones. Sus ideas han tenido un profundo impacto en campos tan diversos como la econom&iacute;a, la medicina o la pol&iacute;tica, pero hasta ahora no hab&iacute;a reunido la obra de su vida en un libro. En Pensar r&aacute;pido, pensar despacio, un &eacute;xito internacional, Kahneman nos ofrece una revolucionaria perspectiva del cerebro y explica los dos sistemas que modelan c&oacute;mo pensamos. El sistema 1 es r&aacute;pido, intuitivo y emocional, mientras que el sistema 2 es m&aacute;s lento, deliberativo y l&oacute;gico. Kahneman expone la extraordinaria capacidad (y tambi&eacute;n los errores y los sesgos) del pensamiento r&aacute;pido, y revela la duradera influencia de las impresiones intuitivas sobre nuestro pensamiento y nuestra conducta. El impacto de la aversi&oacute;n a la p&eacute;rdida y el exceso de confianza en las estrategias empresariales, la dificultad de predecir lo que nos har&aacute; felices en el futuro, el reto de enmarcar adecuadamente los riesgos en el trabajo y en el hogar, el profundo efecto de los sesgos cognitivos sobre todo lo que hacemos, desde jugar en la Bolsa hasta planificar las vacaciones todo esto solo puede ser comprendido si entendemos el funcionamiento conjunto de los dos sistemas a la hora de formular nuestros juicios y decisiones. Al implicar al lector en una animada reflexi&oacute;n sobre c&oacute;mo pensamos, Kahneman consigue revelar cu&aacute;ndo podemos confiar en nuestras intuiciones y cu&aacute;ndo no, y de qu&eacute; modo podemos aprovechar los beneficios del pensamiento lento. Adem&aacute;s, ofrece ense&ntilde;anzas pr&aacute;cticas e iluminadoras sobre c&oacute;mo se adoptan decisiones en la vida profesional o personal, y sobre c&oacute;mo podemos usar distintas t&eacute;cnicas para protegernos de los fallos mentales que nos crean problemas. Pensar r&aacute;pido, pensar despacio cambiar&aacute; para siempre nuestra manera de pensar sobre c&oacute;mo pensamos.</p>', 400.00, 12, NULL, '2024-06-27 15:33:51', 'pensar-rapido-pensar-despacio', 1),
(23, 5, '5723925', 'La historia del arte', '<p>La historia del arte\' es una de las obras sobre arte m&aacute;s famosas jam&aacute;s publicadas. Durante m&aacute;s de cinco d&eacute;cadas no ha tenido rival como introducci&oacute;n al arte en su totalidad, abarcando desde las primera pinturas rupestres hasta el arte experimental contempor&aacute;neo. Lectores de todas las edades y culturas han sabido hallar en el profesor Gombrich a un aut&eacute;ntico maestro, en quien conocimiento y sabidur&iacute;a se conjugan con un don &uacute;nico para comunicar de manera clara su profundo fervor por las obras de arte objeto de su estudio.</p>', 832.57, 11, NULL, '2024-06-27 18:03:56', 'la-historia-del-arte', 1),
(24, 5, '2378914263', 'Modos de ver', '<p>El programa televisivo Ways of seeing, dirigido en 1972 por un jovenc&iacute;simo John Berger, se propuso analizar c&oacute;mo nuestros modos de ver afectan a la forma de interpretar. La serie recibi&oacute; diversos premios, revolucion&oacute; la teor&iacute;a del arte y fue adaptada al presente libro, convirti&eacute;ndose desde entonces en un t&iacute;tulo indispensable de la teor&iacute;a del arte y de la comunicaci&oacute;n visual. En estas p&aacute;ginas, Berger analiza cuatro aspectos de la interpretaci&oacute;n de la pintura al &oacute;leo: su origen relacionado con el sentido de la propiedad, el uso continuado de la mujer como objeto pict&oacute;rico, la relaci&oacute;n entre la herencia visual de la pintura y la publicidad y, finalmente, la transformaci&oacute;n del significado de la obra original en el marco de sus m&uacute;ltiples reproducciones. En esta nueva edici&oacute;n, minuciosamente revisada, se ha recuperado el dise&ntilde;o original de Richard Hollis.</p>', 249.00, 14, NULL, '2024-06-27 18:11:05', 'modos-de-ver', 1),
(25, 5, '532729523', 'Cartas a Theo', '<p>Este libro proporciona las claves de la vida y la obra de Van Gogh a trav&eacute;s de una selecci&oacute;n de las cartas que el propio Vincent escribi&oacute; a su hermano Theo. Se trata de la autobiograf&iacute;a espiritual y art&iacute;stica de un genio de la pintura que siempre vivi&oacute; en precario, entre la locura y la miseria, pero que gracias a su obra se encuentra hoy en el cenit de la gloria.Desde 1872 hasta 1890, a&ntilde;o de su muerte, Van Gogh escribi&oacute; m&aacute;s de ochocientas cartas, casi todas dirigidas a su hermano Theo. Es un epistolario excepcional que constituye, por encima de todo, la autobiograf&iacute;a de un artista vehemente que desnuda su alma y expone ilusiones y proyectos como si quisiera, al mismo tiempo, ense&ntilde;arnos a mirar un cuadro. De alguien que se defini&oacute; a s&iacute; mismo como un ser \"con una hoguera en el pecho a la que nunca se acerca nadie a calentarse\". De un trabajador infatigable que, en el espacio de diez a&ntilde;os, produjo ochocientos setenta y nueve cuadros, mil setecientos cincuenta y seis dibujos y ochocientas veintiuna cartas: una obra pl&aacute;stica y literaria que, en particular la segunda, nos da la clave de su vida. De un pintor que regalaba sus obras, que viv&iacute;a del dinero que le enviaba su hermano Theo, que en toda su vida s&oacute;lo vendi&oacute; un cuadro y que ahora, m&aacute;s de cien a&ntilde;os despu&eacute;s de su tr&aacute;gica muerte, tiene esas obras batiendo marcas.Selecci&oacute;n significativa de ese epistolario, la presente antolog&iacute;a constituye tambi&eacute;n la cr&oacute;nica de un cap&iacute;tulo fundamental de la historia de la pintura.</p>', 501.80, 16, NULL, '2024-06-27 18:13:58', 'cartas-a-theo', 1),
(26, 6, '65767327', 'El Arte de la Cocina Francesa', '<p>Julia Child revolucion&oacute; la forma de cocinar en los hogares de todo el mundo. Tras estudiar en la reputada academia Le Cordon Bleu de Par&iacute;s, abri&oacute; su propia escuela de cocina con Simone Beck y Louisette Bertholle. Con ellas escribi&oacute; el primero de sus libros,&nbsp;<span class=\"a-text-italic\">El arte de la cocina francesa</span>, que se convertir&iacute;a de inmediato en un best seller y a&ntilde;os despu&eacute;s en un cl&aacute;sico. Su programa de televisi&oacute;n&nbsp;<span class=\"a-text-italic\">The French Chef</span>&nbsp;fue una revoluci&oacute;n para los amantes de la cocina del mundo entero, precursor del exitoso formato de los programas televisivos de cocina que conocemos hoy.</p> <p>&laquo;Todo el mundo puede cocinar al estilo franc&eacute;s en cualquier parte del mundo con las instrucciones adecuadas&raquo; escriben las se&ntilde;oras Beck, Bertholle, y Child. Y este es el libro que durante m&aacute;s de cincuenta a&ntilde;os ha ense&ntilde;ado c&oacute;mo hacerlo.</p> <p><span class=\"a-text-italic\">El arte de la cocina francesa</span>&nbsp;es un libro para cocineros avezados y para principiantes que aman la buena comida y desean reproducir en casa las delicias de la cocina cl&aacute;sica, desde recetas hist&oacute;ricas y aut&eacute;nticas obras maestras galas hasta los platos m&aacute;s sencillos, desde el m&iacute;tico Boeuf Bourguignon hasta el perfecto croissant. Un libro hermoso y revolucionario en su tiempo, con 524 recetas, m&aacute;s de cien ilustraciones, y ense&ntilde;anzas de t&eacute;cnicas que conforman la base de la cocina francesa y que ofrecen recursos para la creaci&oacute;n propia.</p>', 730.71, 44, NULL, '2024-06-27 18:20:01', 'el-arte-de-la-cocina-francesa', 1),
(27, 6, '664342343', 'Sal, grasa, ácido, calor', '<p>La innovadora creaci&oacute;n culinaria de la chef Samin refleja una ambiciosa manera de concebir la cocina. En esta obra, una aut&eacute;ntica&nbsp;<span class=\"a-text-bold\">master class</span>&nbsp;para todo tipo de lectores, la autora revela su sencilla pero revolucionaria filosof&iacute;a basada en d&eacute;cadas de experiencia, que resume de la siguiente manera: para que todo lo que cocines quede delicioso tienes que hacer buen uso de tan solo cuatro elementos. Y esos elementos son la&nbsp;<span class=\"a-text-bold\">SAL</span>, que realza el sabor; la&nbsp;<span class=\"a-text-bold\">GRASA</span>, que transporta el gusto y genera textura; el&nbsp;<span class=\"a-text-bold\">&Aacute;CIDO</span>, que equilibra el sabor; y el&nbsp;<span class=\"a-text-bold\">CALOR</span>, que finalmente determina la textura del alimento.</p> <p>Gracias a sus explicaciones sobre los procedimientos y los principios de la buena cocina, este libro ense&ntilde;ar&aacute; e inspirar&aacute; a una nueva generaci&oacute;n de cocineros a tomar mejores decisiones y a preparar platos deliciosos guiados por su instinto y el conocimiento de estas cuatro claves esenciales.</p>', 994.98, 24, NULL, '2024-06-27 21:45:30', 'sal-grasa-acido-calor', 1),
(28, 7, '3605863', 'Nacidos para correr', '<p id=\"title\" class=\"a-spacing-none a-text-normal\"><span id=\"productTitle\" class=\"a-size-extra-large celwidget\" data-csa-c-id=\"bwq6xe-ug4sxs-sm8khq-mh8z7s\" data-cel-widget=\"productTitle\">La historia de una tribu oculta, un grupo de superatletas y la mayor carrera de la historia.</span></p>', 414.32, 19, NULL, '2024-06-27 21:51:16', 'nacidos-para-correr', 1),
(29, 7, '5430593', 'Open. Memorias', '<p>Siendo un beb&eacute;, le pusieron una raqueta de juguete en la mano. Desde entonces, Agassi no ha hecho otra cosa que golpear pelotas de tenis. Su padre, obsesionado en convertirlo en un astro del deporte, cosntruy&oacute; una m&aacute;quina (el drag&oacute;n) que disparaba 2.500 pelotas al d&iacute;a contra el peque&ntilde;o Andre. Escrita por el premio Pulitzer J. R. Moehringer, Open es la semblanza a coraz&oacute;n abierto de Andr&eacute; Agassi, que en estas memorias se muestra tal como es: un hombre que debi&oacute; enfrentarse a las presiones de su familia, de la fama, pero que siempre conserv&oacute; el valor de la amistad y un sentido altruista de la vida. En esta cautivadora autobiograf&iacute;a, Agassi revela, con sentido del humor y ternura, una vida definida por la contradicci&oacute;n entre un destino impuesto y el anhelo por complacer a quienes lo han sacrificado todo por &eacute;l.</p> <p>&laquo;Odio el tenis, lo detesto con una oscura y secreta pasi&oacute;n, y sin embargo sigo jugando porque no tengo alternativa. Y ese abismo, esa contradicci&oacute;n entre lo que quiero hacer y lo que de hecho hago, es la esencia de mi vida.&raquo; Andre Agassi</p>', 259.71, 24, NULL, '2024-06-27 22:12:00', 'open-memorias', 1),
(30, 7, '342034', 'Nunca pares', '<p>Phil Knight habla por primera vez de la aut&eacute;ntica historia detr&aacute;s de Nike, la empresa que fund&oacute; en 1962, que hoy factura m&aacute;s de 30 000 millones de d&oacute;lares al a&ntilde;o, y cuyo logo ha llegado a ser un s&iacute;mbolo global, el icono m&aacute;s ubicuo y reconocido en todo el mundo.</p> <p>Todo comenz&oacute; con 50 d&oacute;lares y una idea sencilla: importar calzado deportivo econ&oacute;mico y de gran calidad desde Jap&oacute;n. Vendiendo esos tenis en la cajuela de su coche, Phil Knight consigui&oacute; facturar 8 000 d&oacute;lares durante el primer a&ntilde;o. Progresivamente, este peque&ntilde;o negocio se convirti&oacute; en una start-up exitosa que revolucion&oacute; el mercado, cre&oacute; una marca universal e innovadora y evolucion&oacute; hasta convertirse en el gigante actual.</p> <p>En estas memorias sinceras y viscerales, Phil Knight relata los numerosos riesgos asumidos, los reveses sufridos y los incipientes &eacute;xitos, pero sobre todo la relaci&oacute;n con sus primeros colaboradores y empleados, un grupo de inconformistas y luchadores que acabaron sinti&eacute;ndose como hermanos.</p> <p>Juntos, animados por la fuerza de un objetivo com&uacute;n y una fe profunda en el esp&iacute;ritu del deporte, construyeron una marca que transform&oacute; todos los c&aacute;nones establecidos.</p>', 257.71, 43, NULL, '2024-06-27 22:14:43', 'nunca-pares', 1),
(31, 8, '6904543', 'El poder del ahora', '<p>El cl&aacute;sico que consagr&oacute; a Eckhart Tolle como uno de los gur&uacute;s m&aacute;s importantes del mundo. El poder del ahora es un libro &uacute;nico. Tiene la capacidad de crear una experiencia en los lectores y de cambiar su vida. Hoy ya es considerado una obra maestra. Su autor, Eckhart Tolle, se convirti&oacute; en un maestro universal, un gran esp&iacute;ritu con un gran mensaje: se puede alcanzar un estado de iluminaci&oacute;n aqu&iacute; y ahora. Es posible vivir libre del sufrimiento, de la ansiedad y de la neurosis. Para lograrlo s&oacute;lo tenemos que comprender nuestro papel de creadores de nuestro dolor. Es nuestra propia mente la que causa nuestros problemas con su corriente constante de pensamientos, aferr&aacute;ndose al pasado, preocup&aacute;ndose por el futuro. Cometemos el error de identificarnos con ella, de pensar que eso es lo que somos, cuando de hecho somos seres mucho m&aacute;s grandes. Escrito en un formato de preguntas y respuestas que lo hace muy accesible, El poder del ahora es una invitaci&oacute;n a la reflexi&oacute;n, que le abrir&aacute; las puertas a la plenitud espiritual y le permitir&aacute; verla vida con nuevos ojos y empezar a disfrutar del verdadero poder del ahora.</p>', 299.00, 12, NULL, '2024-06-27 22:16:47', 'el-poder-del-ahora', 1),
(32, 8, '42391212', 'El Alquimista', '<p>Cuando una persona desea realmente algo, el Universo entero conspira para que pueda realizar su sue&ntilde;o. Basta con aprender a escuchar los dictados del coraz&oacute;n y a descifrar un lenguaje que est&aacute; m&aacute;s all&aacute; de las palabras, el que muestra aquello que los ojos no pueden ver. El Alquimista relata las aventuras de Santiago, un joven pastor andaluz que un d&iacute;a abandon&oacute; su reba&ntilde;o para IR en pos de una quimera. Con este enriquecedor viaje por las arenas del desierto, Paulo Coelho recrea un s&iacute;mbolo hermoso y revelador de la vida, el hombre y sus sue&ntilde;os. Cuando una persona desea realmente algo, el Universo entero conspira para que pueda realizar su sue&ntilde;o. Basta con aprender a escuchar los dictados del coraz&oacute;n y a descifrar un lenguaje que est&aacute; m&aacute;s all&aacute; de las palabras, el que muestra aquello que los ojos no pueden ver. El Alquimista relata las aventuras de Santiago, un joven pastor andaluz que un d&iacute;a abandon&oacute; su reba&ntilde;o para IR en pos de una quimera. Con este enriquecedor viaje por las arenas del desierto, Paulo Coelho recrea un s&iacute;mbolo hermoso y revelador de la vida, el hombre y sus sue&ntilde;os.\".</p>', 199.00, 10, NULL, '2024-06-27 22:20:20', 'el-alquimista', 1),
(33, 8, '5794352', 'Bhagavad Gita', '<p><span class=\"a-text-bold\">Un di&aacute;logo entre el dios y el hombre que muestra los caminos de la acci&oacute;n, la devoci&oacute;n y el conocimiento de Oriente.</span></p> <p class=\"a-text-bold\"><span class=\"a-text-bold\">&laquo;Todos los seres nacen en la ilusi&oacute;n, la ilusi&oacute;n de la divisi&oacute;n procedente del deseo y el odio.&raquo;</span></p> <p class=\"a-text-bold\"><span class=\"a-text-bold\">Este texto forma parte del libro VI del&nbsp;</span><span class=\"a-text-bold a-text-italic\">Mahabharata</span><span class=\"a-text-bold\">, y fue escrito probablemente en los siglos I o II a.C. No se conocen sus autores. Se presenta como un di&aacute;logo entre Arjuna y Krisna, en el campo de batalla, justo cuando va a empezar la guerra entre los Pandaras y los Kauravas. El miedo a la batalla inicia un di&aacute;logo a trav&eacute;s del cual se traza una sinopsis del pensamiento y experiencia religiosa de la India, que aglutina los caminos de la acci&oacute;n, la devoci&oacute;n y el conocimiento.</span></p> <p class=\"a-text-bold\"><span class=\"a-text-bold\">A Juan Mascar&oacute; se debe una de las traducciones m&aacute;s c&eacute;lebres de la&nbsp;</span><span class=\"a-text-bold a-text-italic\">Bhagavad Gita</span><span class=\"a-text-bold\">, que aqu&iacute; presentamos en versi&oacute;n castellana de Jos&eacute; Manuel Abeleira frente al s&aacute;nscrito original.</span></p>', 339.87, 11, NULL, '2024-06-27 22:30:43', 'bhagavad-gita', 1),
(34, 9, '53822323', 'La magia del orden', '<p>Marie Kondo te ayudar&aacute; a poner en orden tu casa de una vez por todas con su m&eacute;todo inspirador paso a paso. Transforma tu hogar en un espacio limpio y ordenado de manera permanente y sorpr&eacute;ndete de c&oacute;mo cambia tu vida.Recupera tu vida y aprovecha mejor los espacios de tu casa. Transforma tu hogar en un espacio arm&oacute;nico y libre de desorden con el incre&iacute;ble M&eacute;todo KonMari. La autora, Marie Kondo, ha vendido m&aacute;s de 3 millones de copias de sus libros, que han sido traducidos a m&aacute;s de 30 lenguas y publicado en m&aacute;s de 30 pa&iacute;ses. Ha conquistado el n&uacute;mero 1 en la lista de m&aacute;s vendidos de The New York Times, Los Angeles Times, Publishers Weekly y The Wall Street Journal, entre otras publicaciones Marie Kondo, con su m&eacute;todo inspirador, te ayudar&aacute; a poner en orden tu casa de una vez por todas. Paso a paso te guiar&aacute; para que en tu casa s&oacute;lo tengas las cosas esenciales y tu vida mejore incre&iacute;blemente te sentir&aacute;s m&aacute;s seguro, exitoso y con energ&iacute;a para crear lo que sea. A partir de este momento s&oacute;lo tendr&aacute;s que elegir qu&eacute; conservar y qu&eacute; desechar. Algunos de los consejos del m&eacute;todo KonMari: - Ordena por categor&iacute;a, no por localizaci&oacute;n. - No guardes nada en tu armario que no te d&eacute; alegr&iacute;a. - Lo que no necesitas t&uacute;, tampoco lo necesita nadie de tu familia. -Desp&iacute;dete de cada pieza que tires con gratitud por su servicio dado. - Ordena bien una vez y siempre permanecer&aacute; ordenado. - Las maratones de orden tienen efecto rebote. Cr&eacute;ate un h&aacute;bito diario. - Empieza por las cosas m&aacute;s f&aacute;ciles. - Aprende a doblar bien la ropa y ahorrar&aacute;s espacio. - No compres m&aacute;s cajas ni materiales de almacenaje peque&ntilde;o. No lo necesitas.</p>', 228.98, 5, NULL, '2024-06-27 22:47:24', 'la-magia-del-orden', 1),
(35, 9, '67854389', 'Animales de granja', '<p>Animales de granja: De las peque&ntilde;as granjas a las aves de corral es la gu&iacute;a perfecta para cualquier persona interesada en conocer el mundo de los animales de granja. Este completo libro abarca desde los animales de granja dom&eacute;sticos hasta los ex&oacute;ticos, pasando por vacas, ovejas, cabras y pollos. El libro ofrece informaci&oacute;n detallada sobre las distintas razas, sus caracter&iacute;sticas y la mejor forma de cuidarlas. Tanto si es un granjero experimentado como si acaba de empezar con las aves de corral de traspatio, este libro tiene algo para todos.</p> <p>&nbsp;</p> <p>El autor comparte su experiencia en la cr&iacute;a de animales de granja, incluyendo la alimentaci&oacute;n, el alojamiento y el cuidado de la salud. Aprender&aacute;s las mejores pr&aacute;cticas para criar y cuidar animales de granja, tanto si quieres empezar una peque&ntilde;a granja como si quieres tener unas cuantas gallinas en tu patio trasero. Con su estilo de redacci&oacute;n claro y conciso, este libro es la referencia perfecta para cualquiera que desee comprender mejor el mundo de los animales de granja. Tanto si es usted un principiante como un granjero experimentado, este libro le proporcionar&aacute; sin duda la informaci&oacute;n que necesita para sacar el m&aacute;ximo partido a su experiencia con los animales de granja.</p>', 166.72, 20, NULL, '2024-06-27 23:01:54', 'animales-de-granja', 1),
(36, 10, '3242423', 'Cómo no morir', '<p>Descubre los alimentos cient&iacute;ficamente probados para prevenir y revertir las enfermedades. C&oacute;mo no morir proporciona consejos nutricionales eficaces y cient&iacute;ficamente probados para prevenir a nuestros mayores asesinos, incluyendo enfermedades card&iacute;acas, c&aacute;ncer de mama, c&aacute;ncer de pr&oacute;stata, presi&oacute;n arterial alta y diabetes, y revela los sorprendentes beneficios para la salud que pueden proporcionar las sencillas opciones diet&eacute;ticas.</p>', 499.00, 8, NULL, '2024-06-27 23:07:38', 'como-no-morir', 1),
(37, 10, '6558463', 'El secreto de Las Zonas Azules', '<p>A partir de una d&eacute;cada de investigaci&oacute;n sobre las&nbsp;<span class=\"a-text-bold\">zonas azules&nbsp;</span>, las regiones donde vive la gente m&aacute;s&nbsp;<span class=\"a-text-bold\">sana&nbsp;</span>y m&aacute;s&nbsp;<span class=\"a-text-bold\">longeva&nbsp;</span>del mundo,&nbsp;<span class=\"a-text-bold\">Dan Buettner&nbsp;</span>ha dise&ntilde;ado un plan que nos ense&ntilde;ar&aacute; a tomar el control de nuestra salud, revolucionar la forma en que comemos y agregar a&ntilde;os a nuestra vida.</p> <p>A sus 104 a&ntilde;os, Gozei Shinzato se re&uacute;ne a tomar el t&eacute; con su&nbsp;<span class=\"a-text-bold\">moai&nbsp;</span>un grupo de amigas que han prometido velar la una por la otra por el resto de su vida, un par de veces a la semana. Por m&aacute;s de 100 a&ntilde;os, la familia Melis ha empezado el d&iacute;a con un huevo frito en manteca, una pieza de pan agrio, un vaso de leche de cabra y dos tazas de caf&eacute;. Todos los d&iacute;as, Panchita Castillo, de 107 a&ntilde;os, se pone un vestido de alg&uacute;n color brillante al despertar, barre la entrada de su casa y da la bienvenida a los visitantes con una bendici&oacute;n y una sonrisa.</p> <p>Ellos viven en las zonas azules Okinawa, Jap&oacute;n; Icaria, Grecia; Cerde&ntilde;a, Italia; Loma Linda, California y la Pen&iacute;nsula de Nicoya, Costa Rica, donde a la gente &ldquo;simplemente se le olvida morir&rdquo;. All&iacute; se registran los &iacute;ndices m&aacute;s bajos de c&aacute;ncer, obesidad y enfermedades del coraz&oacute;n, las comidas siempre se hacen con la familia y los amigos, se prefiere caminar que usar el coche y la gente sigue cocinando y comiendo como sus ancestros.</p>', 999.00, 4, NULL, '2024-06-27 23:23:27', 'el-secreto-de-las-zonas-azules', 1),
(38, 10, '4763252', 'El método Whole30', '<p>Llega a Latinoam&eacute;rica la dieta que se ha convertido en un fen&oacute;meno mundial gracias a su propuesta: deja de contar calor&iacute;as y hacer deporte. Como la dieta Dukan, la dieta Whole30 aboga por un cambio radical en la alimentaci&oacute;n que permite transformar tu cuerpo en solo un mes. Este libro, que ha vendido m&aacute;s de dos millones de ejemplares en Estados Unidos, apuesta por un programa revolucionario, r&aacute;pido y eficaz para adelgazar, fortalecer y cambiar de arriba abajo tus h&aacute;bitos, permiti&eacute;ndote mejorar tu salud, autoestima y felicidad. Es un libro pr&aacute;ctico, que a&uacute;na rigor cient&iacute;fico, explicaciones generales y recetas. Un m&eacute;todo que se puede seguir paso a paso y que nos ense&ntilde;ar&aacute; qu&eacute; alimentos ingerir, c&oacute;mo y cu&aacute;ndo cocinarlos y de qu&eacute; manera combinarlos. Inspirada en la paleodieta, Whole30 potencia la ingesta de prote&iacute;na y reduce al m&aacute;ximo los carbohidratos. No obstante, su &eacute;xito radica en que sus recetas son sabrosas y f&aacute;ciles de hacer. Tras la dieta Dukan, llega el nuevo fen&oacute;meno mundial. Un plan revolucionario que permite cambiar tu cuerpo en solo un mes.</p>', 179.10, 21, NULL, '2024-06-27 23:25:50', 'el-metodo-whole30', 1),
(39, 10, '6543522222', '¡Eres un chingón!', '<p>En esta gu&iacute;a, la coach Jen Sincero nos ofrece 27 cap&iacute;tulos llenos de historias divertidas e inspiradoras, sabios consejos, ejercicios sencillos y una que otra groser&iacute;a. Todo para ayudarte a:- Identificar y cambiar tus conductas de sabotaje, que no te permiten obtener lo que realmente quieres.- Crear una vida que ames. Y crearla ahora. Cuando termines este libro, entender&aacute;s el porqu&eacute; de tu forma de ser, c&oacute;mo amarte, y aprender&aacute;s a reconocer y aceptar lo que puedes cambiar y lo que no, pero sobre todo. C&oacute;mo utilizar tu fuerza interna para patear algunos traseros.</p>', 318.00, 13, NULL, '2024-06-27 23:27:40', '¡eres-un-chingon!', 1),
(40, 11, '47653367', 'Hojas de hierba', '<p>Considerado de forma un&aacute;nime el m&aacute;ximo poeta de Estados Unidos, Walt Whitman (1819-1892) es el supremo cantor del Yo y de la naturaleza, del cuerpo y del alma, de la igualdad del hombre y la mujer, de las delicias del sexo, de la fraternidad y la democracia. Profundamente renovadora en cuanto a forma y contenido, su obra suscit&oacute; una oleada de entusiasmo y controversias. Aparecida en 1855, \"Hojas de hierba\" vio nueve ediciones corregidas y aumentadas en vida del poeta. La presente antolog&iacute;a biling&uuml;e, traducida, prologada y anotada por Manuel Villar Raso, ofrece los poemas de Whitman en sus primeras versiones, en las cuales el impulso que les dio origen se manifiesta con mayor fidelidad que en las &uacute;ltimas, expurgadas por el propio poeta.</p>', 329.00, 30, NULL, '2024-06-27 23:32:06', 'hojas-de-hierba', 1),
(41, 11, '8775434', 'La Tierra Baldía', '<p>Adem&aacute;s de ser el gran poema del siglo XX, La tierra bald&iacute;a es una obra esencial para entender nuestro tiempo. Con una dicci&oacute;n y unas im&aacute;genes rompedoras, T.S. Eliot sabe cantar la devastaci&oacute;n de la primera guerra mundial, la adecuaci&oacute;n del hombre a la ciudad como nuevo y definitivo exilio de la naturaleza, el deseo dif&iacute;cil entre mujeres y hombres, y convocar a la vez las voces del pasado literario de Occidente. Pero m&aacute;s all&aacute; del intimidante virtuosismo t&eacute;cnico y de la intensidad est&eacute;tica que el poema desata, en estos versos emociona sobre todo la desnuda humanidad que estalla en silencio. Editado, prologado y traducido por Andreu Jaume, que tambi&eacute;n nos da su versi&oacute;n de Prufrock, el primer poemario de Eliot y referente indispensable para entender el resto de su poes&iacute;a, este libro viene a recordarnos, cuando se cumplen cincuenta a&ntilde;os de su muerte, la vigencia, la ambici&oacute;n y el ejemplo de un poeta, un cr&iacute;tico y un editor que consigui&oacute; crear una nueva visi&oacute;n del mundo contempor&aacute;neo.</p>', 298.00, 17, NULL, '2024-06-27 23:34:39', 'la-tierra-baldia', 1),
(42, 11, '785676423', 'Dime mi nombre', '<p>Sylvia Plath es una de las poetas m&aacute;s admiradas y le&iacute;das del siglo XX. Sus versos, que a lo largo de los a&ntilde;os han ido cobrando protagonismo, especialmente despu&eacute;s de que se quitara la vida a los treinta a&ntilde;os, son un intento de expresar su desesperaci&oacute;n y su obsesi&oacute;n por la muerte. Sus poemas pueden considerarse en gran parte autobiogr&aacute;ficos y exploran su angustia mental, su problem&aacute;tico matrimonio con el poeta Ted Hughes y los conflictos sin resolver con sus padres, as&iacute; como la visi&oacute;n que ten&iacute;a de ella misma.</p> <p>Plath se ha ido perfilando hasta el d&iacute;a de hoy como uno de los grandes iconos del feminismo, y su poes&iacute;a &mdash;en especial El coloso y el p&oacute;stumo Ariel&mdash;, una valiosa prueba de que fue una de las grandes escritoras del pasado siglo. Cincuenta a&ntilde;os despu&eacute;s, sus versos todav&iacute;a contienen toda su intensidad, dolor y belleza.</p> <p>Presentamos esta nueva edici&oacute;n de su poes&iacute;a completa, en la cuidada traducci&oacute;n de Xo&aacute;n Abeleira, uno de los mayores conocedores de la obra de Plath.</p>', 659.00, 24, NULL, '2024-06-27 23:36:32', 'dime-mi-nombre', 1),
(43, 11, '564625', 'El sol y sus flores', '<p>Segundo y poderoso poemario de esta autora&nbsp;best seller. Dividido en cinco movimientos (marchitarse; caer; enraizar; crecer; florecer), este poemario se desliza desde las profundidades de un desamor y el dolor que conlleva hasta la fuerza y la alegr&iacute;a que pueden florecer tras ese sufrimiento. Un vibrante y trascendental viaje sobre el crecimiento y la curaci&oacute;n, la descendencia y el honor por las ra&iacute;ces de uno, la expatriaci&oacute;n y la b&uacute;squeda del hogar en uno mismo. &laquo;Rupi Kaur est&aacute; derrumbando los muros del sector editorial&raquo;,&nbsp;The New York Times. &laquo;Otras maneras de usar la boca&nbsp;es, desde hace tiempo, el libro m&aacute;s vendido en Estados Unidos. Pero le ha salido un duro competidor: El sol y sus flores, su segundo poemario&raquo;,&nbsp;Los Angeles Times.</p>', 378.00, 13, NULL, '2024-06-27 23:38:22', 'el-sol-y-sus-flores', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
