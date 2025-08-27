-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tutorias
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `segundoNombre` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primerApellido` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `segundoApellido` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `facultad` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tipoDocumento` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_docente_tipoDocumento` (`tipoDocumento`),
  CONSTRAINT `fk_docente_tipoDocumento` FOREIGN KEY (`tipoDocumento`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'José','Antonio','Ramírez','García','jose.ramirez1@uni.com','3102000001','M','Facultad de Ingeniería',1),(2,'Martha','Lucía','Pérez','Torres','martha.perez2@uni.com','3102000002','F','Facultad de Ciencias de la Salud',2),(3,'Luis','Eduardo','Martínez','Castillo','luis.martinez3@uni.com','3102000003','M','Facultad de Ciencias Sociales',3),(4,'Claudia','Patricia','Rodríguez','Gómez','claudia.rodriguez4@uni.com','3102000004','F','Facultad de Artes',1),(5,'Andrés','Felipe','González','Ríos','andres.gonzalez5@uni.com','3102000005','M','Facultad de Ingeniería',2),(6,'Paola','Andrea','Moreno','Suárez','paola.moreno6@uni.com','3102000006','F','Facultad de Ciencias Económicas',3),(7,'Jorge','Alberto','Fernández','Córdoba','jorge.fernandez7@uni.com','3102000007','M','Facultad de Derecho',1),(8,'Natalia','Sofía','Díaz','Martínez','natalia.diaz8@uni.com','3102000008','F','Facultad de Psicología',2),(9,'Camilo','Esteban','Ruiz','Vargas','camilo.ruiz9@uni.com','3102000009','M','Facultad de Ingeniería',3),(10,'Marcela','Isabel','Salazar','Mejía','marcela.salazar10@uni.com','3102000010','F','Facultad de Ciencias de la Salud',1),(11,'Ricardo','Julián','Ortega','Castaño','ricardo.ortega11@uni.com','3102000011','M','Facultad de Ciencias Sociales',2),(12,'Adriana','Carolina','Cruz','Ramírez','adriana.cruz12@uni.com','3102000012','F','Facultad de Artes',3),(13,'Felipe','Ignacio','Rojas','Gutiérrez','felipe.rojas13@uni.com','3102000013','M','Facultad de Ingeniería',1),(14,'María','Alejandra','Herrera','Naranjo','maria.herrera14@uni.com','3102000014','F','Facultad de Ciencias Económicas',2),(15,'Fernando','Javier','Vega','Beltrán','fernando.vega15@uni.com','3102000015','M','Facultad de Derecho',3),(16,'Catalina','Teresa','Santos','Morales','catalina.santos16@uni.com','3102000016','F','Facultad de Psicología',1),(17,'Hernán','Mauricio','Álvarez','Villamil','hernan.alvarez17@uni.com','3102000017','M','Facultad de Ingeniería',2),(18,'Diana','Gabriela','Jiménez','Forero','diana.jimenez18@uni.com','3102000018','F','Facultad de Ciencias de la Salud',3),(19,'Oscar','Iván','Peña','Serrano','oscar.pena19@uni.com','3102000019','M','Facultad de Ciencias Sociales',1),(20,'Laura','Marcela','Mendoza','Torres','laura.mendoza20@uni.com','3102000020','F','Facultad de Artes',2),(21,'Carlos','Fernando','Ramírez','Hoyos','carlos.ramirez21@uni.com','3102000021','M','Facultad de Ingeniería',3),(22,'Verónica','Patricia','Ortiz','Pardo','veronica.ortiz22@uni.com','3102000022','F','Facultad de Ciencias Económicas',1),(23,'Héctor','Andrés','Reyes','Camacho','hector.reyes23@uni.com','3102000023','M','Facultad de Derecho',2),(24,'Carolina','Estefanía','Navarro','Ruiz','carolina.navarro24@uni.com','3102000024','F','Facultad de Psicología',3),(25,'Rodrigo','Antonio','Suárez','López','rodrigo.suarez25@uni.com','3102000025','M','Facultad de Ingeniería',1),(26,'Gloria','Cecilia','Cárdenas','León','gloria.cardenas26@uni.com','3102000026','F','Facultad de Ciencias de la Salud',2),(27,'Samuel','Eduardo','Rivera','Patiño','samuel.rivera27@uni.com','3102000027','M','Facultad de Ciencias Sociales',3),(28,'Isabel','Victoria','Acosta','Gómez','isabel.acosta28@uni.com','3102000028','F','Facultad de Artes',1),(29,'Miguel','Ángel','Quiroga','Ruiz','miguel.quiroga29@uni.com','3102000029','M','Facultad de Ingeniería',2),(30,'Sandra','Liliana','Cortés','Ramírez','sandra.cortes30@uni.com','3102000030','F','Facultad de Ciencias Económicas',3);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:27:02
