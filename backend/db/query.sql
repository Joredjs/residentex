-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.32 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET NAMES utf8 */
;

/*!50503 SET NAMES utf8mb4 */
;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;

/*!40103 SET TIME_ZONE='+00:00' */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

-- #region DB
-- Volcando estructura de base de datos para residentex
CREATE DATABASE IF NOT EXISTS `residentex`
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */
/*!80016 DEFAULT ENCRYPTION='N' */
;

USE `residentex`;

-- #endregion
-- #region tiposDocumentos
-- Volcando estructura para tabla residentex.tiposDocumentos
CREATE TABLE IF NOT EXISTS `tiposDocumentos` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(50) NOT NULL,
	`valor` varchar(10) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposDocumentos:
DELETE FROM
	`tiposDocumentos`;

INSERT INTO
	`tiposDocumentos` (`tipo`, `valor`)
VALUES
	('Cédula de ciudadanía', 'CC'),
	('Cédula de extranjería', 'CE'),
	('Pasaporte', 'PP'),
	('Carné Diplomático', 'CD'),
	('NIT', 'NI');

-- #endregion
-- #region tiposPersonas
-- Volcando estructura para tabla residentex.tiposPersonas
CREATE TABLE IF NOT EXISTS `tiposPersonas` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(50) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposPersonas:
DELETE FROM
	`tiposPersonas`;

INSERT INTO
	`tiposPersonas` (`tipo`)
VALUES
	('Persona natural'),
	('Persona jurídica');

-- #endregion
-- #region tiposPropiedades
-- Volcando estructura para tabla residentex.tiposPropiedades
CREATE TABLE IF NOT EXISTS `tiposPropiedades` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(50) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposPropiedades:
DELETE FROM
	`tiposPropiedades`;

INSERT INTO
	`tiposPropiedades` (`tipo`)
VALUES
	('Conjunto residencial'),
	('Edificio de apartamentos'),
	('Conjunto comercial'),
	('Conjunto mixto');

-- #endregion
-- #region propiedades
-- Volcando estructura para tabla residentex.propiedades
CREATE TABLE IF NOT EXISTS `propiedades` (
	`id` int NOT NULL AUTO_INCREMENT,
	`idTipoPropiedad` int NOT NULL,
	`idTipoDocumento` int NOT NULL,
	`documento` varchar(30) NOT NULL,
	`hash` text NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`direccion` varchar(150) NOT NULL,
	`correo` varchar(30) NOT NULL,
	`telefono` varchar(20),
	`web` varchar(50),
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.propiedades:
DELETE FROM
	`propiedades`;

INSERT INTO
	`propiedades` (
		`idTipoPropiedad`,
		`idTipoDocumento`,
		`documento`,
		`hash`,
		`nombre`,
		`direccion`,
		`correo`
	)
VALUES
	(
		(
			SELECT
				id
			FROM
				tiposPropiedades
			WHERE
				tipo = 'Conjunto residencial'
		),
		(
			SELECT
				id
			FROM
				tiposDocumentos
			WHERE
				valor = 'NI'
		),
		'800987654-1',
		'U2FsdGVkX1/U/yiOkgPiE88wumdsSqUTnfcOJ6K/+KJ9e3pNatQrcIMMNi4G4UMWXd4tDUFshQRb3r9LyN3D3AqaYGE8jK6nGvyF9pYSes4Vag9TvdR5V5my3linpaCfH2KEpDw9kNfeKmSaaVsndHwwaK65Llhn8Dgk3VhijBPa3LSuMn3JaldjxwPZzXajwMhcEkfDZ56F1wOg+KQ0w0n2U6E5mTHlS5aFhwx0tuOFbeVpPK3Wo2DaKOrk0eAVhm3QtqavZOTl+611plq4qPa/4RlbWtisFHTUUlbWWBuEFoaonbXszlKV2XROmf4bdDYuvRqXBz0iE4YJrg5HZToaejjtk0KkCX2RzJWJnpRYi61Srhm6ZGBOptoA+R6PWpUIBFBch1ty6jCu2kzmXESu37HxeeGfRDD1lU08TMsJHUH+Qa1aW3ZLbIhNBGfP59Mo6B6iDjmG0DaZTtAExsefctRI0O06kt+RPgRPWh10+vIcazIhTxb+NpOzZXdfXirVEY88rF4OltceW6/JPqGwjOk4x3x94unIkLjUV4bqnBlKbNPuJvyCPngB0+REqGlpu8RIEkMjdnkNVnO9ZL4n49wSMVxLLXIK9ZQr+57WrYyPf3OrHrdjbi5NwhBXZnP4Kn29MEphnO+Ffv8jI0FPFjCSZd22deMrwupESG+l2hZMP1p7qitOmQKnwDmaC3sNjSzqZWzPLHiF8LlBr9X88PkR9T6gqwD5L8E7b0PCXl9crL8AoDcbRi68OrM9YDGSSX1PgZGfX0/Bf9ZJ5GFmNS+fBcVpe3FeHKq3/AaaGVy1v4+L1oP9Q/xaDqrfUWmIMKYniSBzRZWzfW5HPt1MYtCEWS1njoy7m0loN+ReGkuAuYD/lV7g3GYXLdUPo3O3ccMQp4ddqPoG3gIajA==',
		'Conjunto residencial los robles primer sector - San isidro 2',
		'calle 12 # 45-85 sur edificio amariillo al frente de la caseta de postobon, barrio los laureles tercer sector localidad octava',
		'jgaray@wigilabs.com'
	),
	(
		(
			SELECT
				id
			FROM
				tiposPropiedades
			WHERE
				tipo = 'Edificio de apartamentos'
		),
		(
			SELECT
				id
			FROM
				tiposDocumentos
			WHERE
				valor = 'CC'
		),
		'1030576611',
		'U2FsdGVkX1/U/yiOkgPiE88wumdsSqUTnfcOJ6K/+KJ9e3pNatQrcIMMNi4G4UMWXd4tDUFshQRb3r9LyN3D3AqaYGE8jK6nGvyF9pYSes4Vag9TvdR5V5my3linpaCfH2KEpDw9kNfeKmSaaVsndHwwaK65Llhn8Dgk3VhijBPa3LSuMn3JaldjxwPZzXajwMhcEkfDZ56F1wOg+KQ0w0n2U6E5mTHlS5aFhwx0tuOFbeVpPK3Wo2DaKOrk0eAVhm3QtqavZOTl+611plq4qPa/4RlbWtisFHTUUlbWWBuEFoaonbXszlKV2XROmf4bdDYuvRqXBz0iE4YJrg5HZToaejjtk0KkCX2RzJWJnpRYi61Srhm6ZGBOptoA+R6PWpUIBFBch1ty6jCu2kzmXESu37HxeeGfRDD1lU08TMsJHUH+Qa1aW3ZLbIhNBGfP59Mo6B6iDjmG0DaZTtAExsefctRI0O06kt+RPgRPWh10+vIcazIhTxb',
		'Conjunto residencial Las Margaritas Etapa 4',
		'Carrera 90A #45A - 05 sur',
		'jgaray@wigilabs.com'
	);

-- #endregion
-- #region tiposGruposResidenciales
-- Volcando estructura para tabla residentex.tiposGruposResidenciales
CREATE TABLE IF NOT EXISTS `tiposGruposResidenciales` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(50) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposGruposResidenciales:
DELETE FROM
	`tiposGruposResidenciales`;

INSERT INTO
	`tiposGruposResidenciales` (`id`, `tipo`)
VALUES
	(-1, 'Otro');

INSERT INTO
	`tiposGruposResidenciales` (`tipo`)
VALUES
	('Barrio'),
	('Manzana'),
	('Conjunto'),
	('Etapa'),
	('Torre'),
	('Interior'),
	('Apartamento'),
	('Casa');

-- #endregion
-- #region gruposResidenciales
-- Volcando estructura para tabla residentex.gruposResidenciales
CREATE TABLE IF NOT EXISTS `gruposResidenciales` (
	`id` int NOT NULL AUTO_INCREMENT,
	`idPropiedad` int NOT NULL,
	`idTipoGrupoResidencial` int NOT NULL,
	`idGrupoResidencialPadre` int DEFAULT -1,
	`nombre` varchar(50) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.gruposResidenciales:
DELETE FROM
	`gruposResidenciales`;

INSERT INTO
	`gruposResidenciales` (
		`idPropiedad`,
		`idTipoGrupoResidencial`,
		`nombre`
	)
VALUES
	(
		(
			SELECT
				id
			FROM
				propiedades
			WHERE
				documento = '800987654-1'
		),
		(
			SELECT
				id
			FROM
				tiposGruposResidenciales
			WHERE
				tipo = 'barrio'
		),
		'San benito'
	);

;

-- #endregion
-- #region tiposResidentes
-- Volcando estructura para tabla residentex.tiposResidentes
CREATE TABLE IF NOT EXISTS `tiposResidentes` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(50) NOT NULL,
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.tiposResidentes:
DELETE FROM
	`tiposResidentes`;

INSERT INTO
	`tiposResidentes` (`tipo`)
VALUES
	('Propietario'),
	('Arrendatario'),
	('Residente');

-- #endregion
-- #region residentes
-- Volcando estructura para tabla residentex.residentes
CREATE TABLE IF NOT EXISTS `residentes` (
	`id` int NOT NULL AUTO_INCREMENT,
	`idTipoResidente` int NOT NULL,
	`idTipoDocumento` int NOT NULL,
	`idGrupoResidencial` int NOT NULL,
	`documento` varchar(30) NOT NULL,
	`hash` text NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`apellido` varchar(50) NOT NULL,
	`correo` varchar(30) NOT NULL,
	`telefono` varchar(20),
	`reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`isActive` bit(1) NOT NULL DEFAULT b'1',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla residentex.residentes:
DELETE FROM
	`residentes`;

INSERT INTO
	`residentes` (
		`idTipoResidente`,
		`idTipoDocumento`,
		`idGrupoResidencial`,
		`documento`,
		`hash`,
		`nombre`,
		`apellido`,
		`correo`
	)
VALUES
	(
		(
			SELECT
				id
			FROM
				tiposResidentes
			WHERE
				tipo = 'Propietario'
		),
		(
			SELECT
				id
			FROM
				tiposDocumentos
			WHERE
				valor = 'CC'
		),
		(
			SELECT
				id
			FROM
				gruposResidenciales AS g
			WHERE
				g.idTipoGrupoResidencial = 28
			LIMIT
				1
		), '00000001', 'asdf', 'Juan', 'Perez', 'jprez@gmail.com'
	);

-- #endregion
