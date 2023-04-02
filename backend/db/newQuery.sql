-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.32 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para residentex
DROP DATABASE IF EXISTS `residentex`;
CREATE DATABASE IF NOT EXISTS `residentex` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `residentex`;

-- Volcando estructura para tabla residentex.gruposResidenciales
DROP TABLE IF EXISTS `gruposResidenciales`;
CREATE TABLE IF NOT EXISTS `gruposResidenciales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPropiedad` int NOT NULL,
  `idTipoGrupoResidencial` int NOT NULL,
  `idGrupoResidencialPadre` int DEFAULT '-1',
  `nombre` varchar(50) NOT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.gruposResidenciales: ~1 rows (aproximadamente)
DELETE FROM `gruposResidenciales`;
INSERT INTO `gruposResidenciales` (`id`, `idPropiedad`, `idTipoGrupoResidencial`, `idGrupoResidencialPadre`, `nombre`, `reg`, `isActive`) VALUES
	(26, 1, 22, -1, 'San benito', '2023-03-15 01:37:11', b'1'),
	(27, 1, 23, 26, 'A', '2023-03-15 01:37:11', b'1'),
	(28, 1, 23, 26, 'B', '2023-03-15 01:37:11', b'1'),
	(29, 1, 23, 26, 'C', '2023-03-15 01:37:11', b'1'),
	(30, 1, 23, 26, 'D', '2023-03-15 01:37:11', b'1'),
	(31, 1, 25, 27, '1', '2023-03-15 01:37:11', b'1'),
	(32, 1, 25, 27, '2', '2023-03-15 01:37:11', b'1'),
	(33, 1, 25, 27, '3', '2023-03-15 01:37:11', b'1'),
	(34, 1, 25, 28, '1', '2023-03-15 01:37:11', b'1'),
	(35, 1, 25, 28, '2', '2023-03-15 01:37:11', b'1'),
	(36, 1, 25, 28, '3', '2023-03-15 01:37:11', b'1'),
	(37, 1, 25, 29, '1', '2023-03-15 01:37:11', b'1'),
	(38, 1, 25, 29, '2', '2023-03-15 01:37:11', b'1'),
	(39, 1, 25, 29, '3', '2023-03-15 01:37:11', b'1'),
	(40, 1, 25, 30, '1', '2023-03-15 01:37:11', b'1'),
	(41, 1, 25, 30, '2', '2023-03-15 01:37:11', b'1'),
	(42, 1, 25, 30, '3', '2023-03-15 01:37:11', b'1'),
	(43, 1, 26, 31, 'I', '2023-03-15 01:58:02', b'1'),
	(44, 1, 26, 31, 'II', '2023-03-15 01:58:02', b'1'),
	(45, 1, 26, 31, 'III', '2023-03-15 01:58:02', b'1'),
	(46, 1, 26, 31, 'IV', '2023-03-15 01:58:02', b'1'),
	(47, 1, 26, 32, 'I', '2023-03-15 01:58:30', b'1'),
	(48, 1, 26, 32, 'II', '2023-03-15 01:58:30', b'1'),
	(49, 1, 26, 32, 'III', '2023-03-15 01:58:30', b'1'),
	(50, 1, 26, 32, 'IV', '2023-03-15 01:58:30', b'1'),
	(51, 1, 26, 33, 'I', '2023-03-15 01:58:45', b'1'),
	(52, 1, 26, 33, 'II', '2023-03-15 01:58:45', b'1'),
	(53, 1, 26, 33, 'III', '2023-03-15 01:58:45', b'1'),
	(54, 1, 26, 34, 'I', '2023-03-15 02:00:51', b'1'),
	(55, 1, 26, 34, 'II', '2023-03-15 02:00:51', b'1'),
	(56, 1, 26, 34, 'III', '2023-03-15 02:00:51', b'1'),
	(57, 1, 26, 34, 'IV', '2023-03-15 02:00:51', b'1'),
	(58, 1, 26, 34, 'V', '2023-03-15 02:00:51', b'1'),
	(59, 1, 26, 34, 'VI', '2023-03-15 02:00:51', b'1'),
	(60, 1, 26, 34, 'VII', '2023-03-15 02:00:51', b'1'),
	(61, 1, 26, 34, 'VIII', '2023-03-15 02:00:51', b'1'),
	(62, 1, 26, 35, 'I', '2023-03-15 02:02:10', b'1'),
	(63, 1, 26, 35, 'II', '2023-03-15 02:02:10', b'1'),
	(64, 1, 26, 35, 'III', '2023-03-15 02:02:10', b'1'),
	(65, 1, 26, 35, 'IV', '2023-03-15 02:02:10', b'1'),
	(66, 1, 26, 35, 'V', '2023-03-15 02:02:10', b'1'),
	(67, 1, 26, 35, 'VI', '2023-03-15 02:02:10', b'1'),
	(68, 1, 26, 35, 'VII', '2023-03-15 02:02:10', b'1');

-- Volcando estructura para tabla residentex.propiedades
DROP TABLE IF EXISTS `propiedades`;
CREATE TABLE IF NOT EXISTS `propiedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTipoPropiedad` int NOT NULL,
  `idTipoDocumento` int NOT NULL,
  `documento` varchar(30) NOT NULL,
  `hash` text NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.propiedades: ~2 rows (aproximadamente)
DELETE FROM `propiedades`;
INSERT INTO `propiedades` (`id`, `idTipoPropiedad`, `idTipoDocumento`, `documento`, `hash`, `nombre`, `direccion`, `correo`, `telefono`, `web`, `reg`, `isActive`) VALUES
	(10, 14, 20, '800987654-1', 'U2FsdGVkX1/U/yiOkgPiE88wumdsSqUTnfcOJ6K/+KJ9e3pNatQrcIMMNi4G4UMWXd4tDUFshQRb3r9LyN3D3AqaYGE8jK6nGvyF9pYSes4Vag9TvdR5V5my3linpaCfH2KEpDw9kNfeKmSaaVsndHwwaK65Llhn8Dgk3VhijBPa3LSuMn3JaldjxwPZzXajwMhcEkfDZ56F1wOg+KQ0w0n2U6E5mTHlS5aFhwx0tuOFbeVpPK3Wo2DaKOrk0eAVhm3QtqavZOTl+611plq4qPa/4RlbWtisFHTUUlbWWBuEFoaonbXszlKV2XROmf4bdDYuvRqXBz0iE4YJrg5HZToaejjtk0KkCX2RzJWJnpRYi61Srhm6ZGBOptoA+R6PWpUIBFBch1ty6jCu2kzmXESu37HxeeGfRDD1lU08TMsJHUH+Qa1aW3ZLbIhNBGfP59Mo6B6iDjmG0DaZTtAExsefctRI0O06kt+RPgRPWh10+vIcazIhTxb+NpOzZXdfXirVEY88rF4OltceW6/JPqGwjOk4x3x94unIkLjUV4bqnBlKbNPuJvyCPngB0+REqGlpu8RIEkMjdnkNVnO9ZL4n49wSMVxLLXIK9ZQr+57WrYyPf3OrHrdjbi5NwhBXZnP4Kn29MEphnO+Ffv8jI0FPFjCSZd22deMrwupESG+l2hZMP1p7qitOmQKnwDmaC3sNjSzqZWzPLHiF8LlBr9X88PkR9T6gqwD5L8E7b0PCXl9crL8AoDcbRi68OrM9YDGSSX1PgZGfX0/Bf9ZJ5GFmNS+fBcVpe3FeHKq3/AaaGVy1v4+L1oP9Q/xaDqrfUWmIMKYniSBzRZWzfW5HPt1MYtCEWS1njoy7m0loN+ReGkuAuYD/lV7g3GYXLdUPo3O3ccMQp4ddqPoG3gIajA==', 'Conjunto residencial los robles primer sector - San isidro 2', 'calle 12 # 45-85 sur edificio amariillo al frente de la caseta de postobon, barrio los laureles tercer sector localidad octava', 'jgaray@wigilabs.com', NULL, NULL, '2023-03-15 01:33:21', b'1'),
	(11, 15, 16, '1030576611', 'U2FsdGVkX1/U/yiOkgPiE88wumdsSqUTnfcOJ6K/+KJ9e3pNatQrcIMMNi4G4UMWXd4tDUFshQRb3r9LyN3D3AqaYGE8jK6nGvyF9pYSes4Vag9TvdR5V5my3linpaCfH2KEpDw9kNfeKmSaaVsndHwwaK65Llhn8Dgk3VhijBPa3LSuMn3JaldjxwPZzXajwMhcEkfDZ56F1wOg+KQ0w0n2U6E5mTHlS5aFhwx0tuOFbeVpPK3Wo2DaKOrk0eAVhm3QtqavZOTl+611plq4qPa/4RlbWtisFHTUUlbWWBuEFoaonbXszlKV2XROmf4bdDYuvRqXBz0iE4YJrg5HZToaejjtk0KkCX2RzJWJnpRYi61Srhm6ZGBOptoA+R6PWpUIBFBch1ty6jCu2kzmXESu37HxeeGfRDD1lU08TMsJHUH+Qa1aW3ZLbIhNBGfP59Mo6B6iDjmG0DaZTtAExsefctRI0O06kt+RPgRPWh10+vIcazIhTxb', 'Conjunto residencial Las Margaritas Etapa 4', 'Carrera 90A #45A - 05 sur', 'odraude160@gmail.com', NULL, NULL, '2023-03-15 01:33:21', b'1');

-- Volcando estructura para tabla residentex.tiposDocumentos
DROP TABLE IF EXISTS `tiposDocumentos`;
CREATE TABLE IF NOT EXISTS `tiposDocumentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  `chr` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposDocumentos: ~4 rows (aproximadamente)
DELETE FROM `tiposDocumentos`;
INSERT INTO `tiposDocumentos` (`id`, `tipo`, `valor`, `reg`, `isActive`, `chr`) VALUES
	(16, 'Cédula de ciudadanía', 'CC', '2023-03-15 01:33:21', b'1', NULL),
	(17, 'Cédula de extranjería', 'CE', '2023-03-15 01:33:21', b'1', NULL),
	(18, 'Pasaporte', 'PP', '2023-03-15 01:33:21', b'1', NULL),
	(19, 'Carné Diplomático', 'CD', '2023-03-15 01:33:21', b'1', NULL),
	(20, 'NIT', 'NI', '2023-03-15 01:33:21', b'1', NULL);

-- Volcando estructura para tabla residentex.tiposGruposResidenciales
DROP TABLE IF EXISTS `tiposGruposResidenciales`;
CREATE TABLE IF NOT EXISTS `tiposGruposResidenciales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposGruposResidenciales: ~9 rows (aproximadamente)
DELETE FROM `tiposGruposResidenciales`;
INSERT INTO `tiposGruposResidenciales` (`id`, `tipo`, `reg`, `isActive`) VALUES
	(-1, 'Otro', '2023-03-15 01:33:21', b'1'),
	(22, 'Barrio', '2023-03-15 01:33:21', b'1'),
	(23, 'Manzana', '2023-03-15 01:33:21', b'1'),
	(24, 'Conjunto', '2023-03-15 01:33:21', b'1'),
	(25, 'Etapa', '2023-03-15 01:33:21', b'1'),
	(26, 'Torre', '2023-03-15 01:33:21', b'1'),
	(27, 'Interior', '2023-03-15 01:33:21', b'1'),
	(28, 'Apartamento', '2023-03-15 01:33:21', b'1'),
	(29, 'Casa', '2023-03-15 01:33:21', b'1');

-- Volcando estructura para tabla residentex.tiposPersonas
DROP TABLE IF EXISTS `tiposPersonas`;
CREATE TABLE IF NOT EXISTS `tiposPersonas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposPersonas: ~2 rows (aproximadamente)
DELETE FROM `tiposPersonas`;
INSERT INTO `tiposPersonas` (`id`, `tipo`, `reg`, `isActive`) VALUES
	(12, 'Persona natural', '2023-03-15 01:33:21', b'1'),
	(13, 'Persona jurídica', '2023-03-15 01:33:21', b'1');

-- Volcando estructura para tabla residentex.tiposPropiedades
DROP TABLE IF EXISTS `tiposPropiedades`;
CREATE TABLE IF NOT EXISTS `tiposPropiedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposPropiedades: ~4 rows (aproximadamente)
DELETE FROM `tiposPropiedades`;
INSERT INTO `tiposPropiedades` (`id`, `tipo`, `reg`, `isActive`) VALUES
	(14, 'Conjunto residencial', '2023-03-15 01:33:21', b'1'),
	(15, 'Edificio de apartamentos', '2023-03-15 01:33:21', b'1'),
	(16, 'Conjunto comercial', '2023-03-15 01:33:21', b'1'),
	(17, 'Conjunto mixto', '2023-03-15 01:33:21', b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
