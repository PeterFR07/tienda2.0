-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2023 a las 09:28:03
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda2.0`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES
(1, 'Sillas'),
(2, 'Monitores'),
(3, 'Ratones'),
(4, 'Teclados'),
(5, 'Auriculares'),
(6, 'TV'),
(7, 'Sobremesa'),
(8, 'Portatil'),
(9, 'Movil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre_completo` varchar(150) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `contraseña` varchar(15) DEFAULT NULL,
  `direccion` varchar(55) DEFAULT NULL,
  `correo` varchar(55) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre_completo`, `usuario`, `contraseña`, `direccion`, `correo`, `telefono`) VALUES
(1, 'Pedro Fernández Ruiz', 'peter', 'Kira2001', 'Av Sabinal 34', 'peterfdez2001@gmail.com', '722225005'),
(2, 'María Ramírez Gonzalez', 'maryuky', 'ramgon2', 'Pintor Rosales 17', 'mariagonza@gmail.com', '710506595'),
(3, 'Aurora Cortázar', 'boreal', 'aurorita32', 'Calle Rosales', 'auroraboreal@gmail.com', '715987456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `Cliente_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `fecha`, `total`, `estado`, `cantidad`, `Cliente_idcliente`) VALUES
(1, '2023-03-11 11:15:23', '1154', NULL, '4', 1),
(2, '2023-03-08 15:56:45', '1267', NULL, '3', 2),
(3, '2023-02-28 20:25:36', '1217', NULL, '3', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `peso_producto(kg)` decimal(10,0) DEFAULT NULL,
  `precio_producto(€)` decimal(10,0) DEFAULT NULL,
  `existencias` decimal(10,0) DEFAULT NULL,
  `Proveedor_idproveedor` int(11) NOT NULL,
  `Categoria_idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre_producto`, `imagen`, `peso_producto(kg)`, `precio_producto(€)`, `existencias`, `Proveedor_idproveedor`, `Categoria_idcategoria`) VALUES
(1, 'LG OLED65A26LA 65\" OLED UltraHD 4K HDR10 Pro', 'https://img.pccomponentes.com/articles/1024/10241189/1184-lg-oled65a26la-65-oled-ultrahd-4k-hdr10-pro-opiniones.jpg', '6', '2399', '2', 1, 6),
(2, 'HP Victus 16-e0101ns AMD Ryzen 7 5800H/16GB/5', 'https://img.pccomponentes.com/articles/1039/10396660/1123-hp-victus-16-e0101ns-amd-ryzen-7-5800h-32gb-512gb-ssd-rtx-3060-161.jpg', '3', '929', '8', 1, 7),
(3, 'Xiaomi Redmi Note 11 4/128GB Gris Grafito Lib', 'https://img.pccomponentes.com/articles/1002/10026495/1796-xiaomi-redmi-note-11-4-128gb-gris-grafito-libre.jpg', '0', '199', '125', 2, 9),
(4, 'Newskill Takamikura Silla', 'https://img.pccomponentes.com/articles/9/90992/dpp-28091.jpg', '20', '160', '67', 4, 1),
(5, 'Logitech G535 Wireless Auriculares', 'https://img.pccomponentes.com/articles/1031/10319718/1936-logitech-g535-wireless-auriculares-gaming-inalambricos-negros-para-pc-ps4-ps5.jpg', '0', '139', '25', 5, 5),
(6, 'PcCom Gold Élite Intel Core i5-11400F/16GB/50', 'https://img.pccomponentes.com/articles/1002/10023724/1354-pccom-gold-elite-intel-core-i5-11400f-16gb-500gbssd-rtx3060-comprar.jpg', '14', '1029', '60', 3, 8),
(7, 'ASUS Vivo AiO V241EAK-WA050M Intel Core i5-11', 'https://img.pccomponentes.com/articles/1011/10112150/1308-asus-vivo-aio-v241eak-wa050m-intel-core-i5-1135g7-16gb-512gb-ssd-238.jp', '10', '849', '46', 1, 8),
(8, 'Owlotech Essential K100 Teclado Negro', 'https://thumb.pccomponentes.com/w-530-530/articles/43/433687/148-owlotech-essential-k100-teclado-negro-comprar.jpg', '0', '6', '24', 2, 4),
(9, 'Logitech MK470 Slim Combo Teclado + Ratón Ina', 'https://img.pccomponentes.com/articles/23/231222/high-resolution-png-samui-graphite-top.jpg', '1', '40', '16', 1, 4),
(10, 'Logitech G G502 X LIGHTSPEED Ratón Inalámbric', 'https://img.pccomponentes.com/articles/1049/10499039/1738-logitech-g-g502-x-lightspeed-raton-inalambrico-gaming-negro-25600-dpi.jpg', '0', '123', '32', 1, 3),
(11, 'Logitech M185 Ratón Inalámbrico', 'https://img.pccomponentes.com/articles/5/52510/1188-logitech-wireless-mouse-m185-gris-comprar.jpg', '0', '10', '15', 1, 3),
(12, 'Tempest F12 Silla ', 'https://img.pccomponentes.com/articles/40/403708/1438-tempest-f12-silla-gaming-negra.jpg', '18', '109', '14', 5, 1),
(13, 'Owlotech Helsinki Silla', 'https://img.pccomponentes.com/articles/43/433675/1446-owlotech-helsinki-silla-de-oficina-negra-comprar.jpg', '14', '125', '25', 4, 1),
(14, 'Nilox NXM24FHD1441 24\" LED FullHD 165Hz G-Syn', 'https://img.pccomponentes.com/articles/1033/10334393/1451-nilox-nxm24fhd1441-24-led-fullhd-165hz-g-sync-compatible.jpg', '7', '128', '14', 3, 2),
(15, 'Benq GW2283 21.5\" LED IPS FullHD', 'https://img.pccomponentes.com/articles/25/255947/benq-gw2283-215-led-ips-fullhd-f7a38032-495f-4e85-b00d-76f8fabeb2f5.jpg', '6', '100', '17', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_has_pedido`
--

CREATE TABLE `producto_has_pedido` (
  `Pedido_idpedido` int(11) NOT NULL,
  `Producto_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_has_pedido`
--

INSERT INTO `producto_has_pedido` (`Pedido_idpedido`, `Producto_idproducto`) VALUES
(1, 6),
(1, 8),
(1, 11),
(1, 12),
(2, 2),
(2, 3),
(2, 5),
(3, 2),
(3, 4),
(3, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`, `direccion`, `mail`, `telefono`) VALUES
(1, 'PcComponentes', 'Calle Madrid 17', 'pccomponentes@gmail.com', '658745893'),
(2, 'Amazon', 'Av Rosales 32', 'amazonsupply@gmail.com', '687589321'),
(3, 'AliBaba', 'India', 'alibaba4you@gmail.com', '648715265'),
(4, 'DHGate', 'America', 'dhgateamerica@gmail.com', '692154879'),
(5, 'Bangoot', 'China', 'bangoot@gmail.com', '632569874');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_Pedido_Cliente_idx` (`Cliente_idcliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_Producto_Proveedor1_idx` (`Proveedor_idproveedor`),
  ADD KEY `fk_Producto_Categoria1_idx` (`Categoria_idcategoria`);

--
-- Indices de la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD PRIMARY KEY (`Pedido_idpedido`,`Producto_idproducto`),
  ADD KEY `fk_Producto_has_Pedido_Pedido1_idx` (`Pedido_idpedido`),
  ADD KEY `fk_Producto_has_Pedido_Producto1_idx` (`Producto_idproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_Cliente` FOREIGN KEY (`Cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_Producto_Categoria1` FOREIGN KEY (`Categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_Proveedor1` FOREIGN KEY (`Proveedor_idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD CONSTRAINT `fk_Producto_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_has_Pedido_Producto1` FOREIGN KEY (`Producto_idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
