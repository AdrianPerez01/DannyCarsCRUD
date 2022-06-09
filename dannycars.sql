-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2022 a las 06:03:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dannycars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `cod_art` varchar(75) NOT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `nombre_art` varchar(75) DEFAULT NULL,
  `descripcion_art` varchar(150) DEFAULT NULL,
  `marca_Art` varchar(50) DEFAULT NULL,
  `precio_compra_art` varchar(50) DEFAULT NULL,
  `precio_venta_art` varchar(50) DEFAULT NULL,
  `imagen_art` varchar(2500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`cod_art`, `id_prov`, `id_cat`, `nombre_art`, `descripcion_art`, `marca_Art`, `precio_compra_art`, `precio_venta_art`, `imagen_art`) VALUES
('000010', 4, 1, 'aquiles', '', 'toyota', '500$', '7880$', 'https://img.freepik.com/foto-gratis/cierre-repuestos-nuevos_93675-87633.jpg?w=2000'),
('01202', 4, 1, 'amortiguador', '', 'samsung', '1200$', '7880$', NULL),
('15-253', 8, 1, 'Carros Viejos', 'carros de edicion limitada', 'volkswagen', '12000$', '15000$', 'https://unsplash.com/es/fotos/A53o1drQS2k'),
('15200', 5, 1, 'https://images.unsplash.com/photo-1526726538690-5cbf956ae2fd?ixlib=rb-1.2.1', '', 'samsung', '12000$', '15000$', 'https://images.unsplash.com/photo-1526726538690-5cbf956ae2fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
('785228', 5, 1, 'rty', 'jbhjn', 'samsung', '500$', '600$', NULL),
('789512', 4, 1, 'amortiguador', 'dghdfgdfg', 'samsung', '500$', '600$', 'sdfsdfsd'),
('89569*', 8, 1, 'cauchos', 'diametro 15\'20\'12', 'pirelli', '80$', '100$', NULL),
('adrian', 4, 1, '007', '', 'oca', '78945', '7889888', NULL),
('ASDAS451645', 1, 1, 'Parachoque Delantero', 'parachoque delantero de un aveo del año 2006', 'Chevrolet', '150$', '300$', NULL),
('B-78945', 8, 1, 'bobina', 'para carrao lujoso', 'BNW', '1230$', '2000$', NULL),
('holamundo', 4, 1, 'hola', 'descrpcion de algo', 'nose', '125', '252', NULL),
('imagen', 8, 1, 'imagen', 'hola', 'imagen', '100', '100', NULL),
('rafaela', 1, 1, 'rafaela', 'asdasdas', 'rafaela', '800$', '800$', 'sdfsdfsd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(11) NOT NULL,
  `nombre_cat` varchar(75) NOT NULL,
  `descripcion_cat` varchar(75) NOT NULL,
  `borrar_cat` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nombre_cat`, `descripcion_cat`, `borrar_cat`) VALUES
(1, 'Carroceria', '', ''),
(2, 'Mecanica', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cli` int(11) NOT NULL COMMENT 'Primary Key',
  `Cedula_cli` int(10) DEFAULT NULL COMMENT 'Cedula del cliente',
  `Nombre_cli` varchar(255) DEFAULT NULL COMMENT 'Nombre del cliente',
  `Apellido_cli` varchar(255) DEFAULT NULL COMMENT 'Apellido del cliente',
  `Nombre_Empresa_cli` varchar(255) DEFAULT NULL COMMENT 'Nombre de la empresa del cliente',
  `Direccion_Cli` varchar(255) DEFAULT NULL COMMENT 'Direccion del cliente',
  `Borrar_cli` varchar(255) DEFAULT NULL COMMENT 'Borrar cliente',
  `Telefono_cli` varchar(255) DEFAULT NULL COMMENT 'telefono del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `Id_Dep` int(11) NOT NULL COMMENT 'llave primaria de departamento',
  `Nombre_Dep` varchar(25) NOT NULL COMMENT 'nombre del departamento',
  `Borrar_Dep` tinyint(1) DEFAULT NULL COMMENT 'borrar departamento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Ci_Emp` int(11) NOT NULL COMMENT 'llave primaria del empleado',
  `Id_Usu` int(11) DEFAULT NULL COMMENT 'id del usuario',
  `Id_Dep` int(11) DEFAULT NULL COMMENT 'id del departamento',
  `Nombre_Emp` varchar(25) NOT NULL COMMENT 'Nombre del empleado',
  `Apellido_Emp` varchar(25) NOT NULL COMMENT 'Apellido del empleado',
  `Telefono_Emp` int(11) DEFAULT NULL COMMENT 'telefono del empleado',
  `Cargo_Emp` varchar(30) DEFAULT NULL COMMENT 'cargo del empleado',
  `Genero_Emp` varchar(10) DEFAULT NULL COMMENT ' Genero del empleado',
  `Fecha_inicio_Emp` date DEFAULT NULL COMMENT ' fecha de inicio del empleado',
  `Años_Servicio_Emp` date DEFAULT NULL COMMENT ' fecha de servicio en la empresa',
  `Direccion_Emp` varchar(150) DEFAULT NULL COMMENT 'direccion del empleado',
  `Salario_Emp` varchar(15) DEFAULT NULL COMMENT 'Salario del Empleado',
  `Contacto_Emergencia_Emp` int(11) DEFAULT NULL COMMENT 'conctacto de emergencia del empleado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_fac` int(11) NOT NULL,
  `fecha_emi_fac` varchar(12) DEFAULT NULL,
  `fecha_ven_fac` varchar(12) DEFAULT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `ci_emp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_articulo`
--

CREATE TABLE `factura_articulo` (
  `id_fac_art` int(11) NOT NULL,
  `id_fac` int(11) DEFAULT NULL,
  `cod_art` varchar(75) DEFAULT NULL,
  `cantidad_fac_art` int(11) DEFAULT NULL,
  `precio_fac_art` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Id_Prov` int(11) NOT NULL COMMENT 'llave primaria del proveedor',
  `Nombre_Prov` varchar(25) NOT NULL COMMENT 'Nombre del proveedor',
  `Apellido_Prov` varchar(25) DEFAULT NULL COMMENT 'apellido del proveedor',
  `Nombre_Empresa_Prov` varchar(40) DEFAULT NULL COMMENT 'Nombre de la empresa del proveedor',
  `Direccion_Prov` varchar(150) DEFAULT NULL COMMENT 'direccion del proveedor',
  `Pais_Prov` varchar(25) DEFAULT NULL COMMENT 'pais de donde es la empresa del proveedor',
  `Telefono_Prov` varchar(50) DEFAULT NULL,
  `Correo_Prov` varchar(40) DEFAULT NULL COMMENT 'correo del proveedor',
  `Borrar_Prov` tinyint(1) DEFAULT NULL COMMENT 'borrar el proveedor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`Id_Prov`, `Nombre_Prov`, `Apellido_Prov`, `Nombre_Empresa_Prov`, `Direccion_Prov`, `Pais_Prov`, `Telefono_Prov`, `Correo_Prov`, `Borrar_Prov`) VALUES
(1, 'Manuel', 'Gonsalez', 'Troen', 'Av livertadores con calle 3 a la esquina de un bodegon', 'Venezuela', '251985676', 'troen@gmail.com', NULL),
(4, 'Daniel', 'Vaquez', 'natulac', 'AV bolivar con calle 7 y 7 N185', 'chile', '4567895', 'natulac@natulac.com', NULL),
(5, 'aquiles', 'baldayo', 'multimax', 'urbanizacion los proceres', 'venezuela', '412578361', 'aquiles01@gmail.com', NULL),
(8, 'Aquiles', 'Baldayo ', 'FERCOVEN ', 'AV bolivar con calle 7 y 7 N185', 'Venezuela', '251801', 'dsfd@email.ner', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `descripcion_tipo_pago` varchar(75) DEFAULT NULL,
  `borrar_tipo_pago` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `Id_tipo_usu` int(11) NOT NULL COMMENT 'Primary Key',
  `Nombre_tipo_usu` varchar(25) NOT NULL COMMENT 'Tipo de usuario',
  `Borrar_tipo_usu` tinyint(1) DEFAULT NULL COMMENT 'borrar usuauio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla de tipo de usuario';

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`Id_tipo_usu`, `Nombre_tipo_usu`, `Borrar_tipo_usu`) VALUES
(1, 'administrador', NULL),
(2, 'empleado', NULL),
(3, 'administrador', NULL),
(4, 'empleado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usu` int(11) NOT NULL COMMENT 'Primary Key',
  `Id_tipo_usu` int(11) NOT NULL,
  `Nombre_usu` varchar(25) NOT NULL COMMENT 'Nombre de usuario',
  `Password_usu` varchar(25) NOT NULL COMMENT 'Contraseña de usuario',
  `Borrar_usu` tinyint(1) DEFAULT NULL COMMENT 'borrar usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usu`, `Id_tipo_usu`, `Nombre_usu`, `Password_usu`, `Borrar_usu`) VALUES
(1, 1, 'Arturo ', 'contraseña', NULL),
(5, 1, '', '', NULL),
(6, 1, 'alejandro', 'sdfsdf', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`cod_art`),
  ADD KEY `id_prov` (`id_prov`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cli`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Id_Dep`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Ci_Emp`),
  ADD KEY `Id_Usu` (`Id_Usu`),
  ADD KEY `Id_Dep` (`Id_Dep`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_fac`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `ci_emp` (`ci_emp`);

--
-- Indices de la tabla `factura_articulo`
--
ALTER TABLE `factura_articulo`
  ADD PRIMARY KEY (`id_fac_art`),
  ADD KEY `id_fac` (`id_fac`),
  ADD KEY `cod_art` (`cod_art`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Id_Prov`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`Id_tipo_usu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usu`),
  ADD KEY `Id_tipo_usu` (`Id_tipo_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `Id_Dep` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria de departamento';

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_articulo`
--
ALTER TABLE `factura_articulo`
  MODIFY `id_fac_art` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Id_Prov` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria del proveedor', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `Id_tipo_usu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`),
  ADD CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`id_prov`) REFERENCES `proveedor` (`Id_Prov`),
  ADD CONSTRAINT `articulo_ibfk_3` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_usu`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`Id_Dep`) REFERENCES `departamento` (`Id_Dep`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ci_emp`) REFERENCES `empleado` (`Ci_Emp`);

--
-- Filtros para la tabla `factura_articulo`
--
ALTER TABLE `factura_articulo`
  ADD CONSTRAINT `factura_articulo_ibfk_1` FOREIGN KEY (`id_fac`) REFERENCES `factura` (`id_fac`),
  ADD CONSTRAINT `factura_articulo_ibfk_2` FOREIGN KEY (`cod_art`) REFERENCES `articulo` (`cod_art`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_tipo_usu`) REFERENCES `tipo_usuario` (`Id_tipo_usu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
