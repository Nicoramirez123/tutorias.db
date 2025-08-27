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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `codigoMateria` int NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `facultad` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `docenteAsignado` int NOT NULL,
  PRIMARY KEY (`codigoMateria`),
  CONSTRAINT `fk_materias_codigoMaterias` FOREIGN KEY (`codigoMateria`) REFERENCES `docente` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Programación I','Facultad de Ingeniería','Introducción a la programación',1),(2,'Programación II','Facultad de Ingeniería','Estructuras de datos',5),(3,'Bases de Datos','Facultad de Ingeniería','Modelado y SQL',9),(4,'Matemáticas I','Facultad de Ciencias Económicas','Cálculo diferencial',22),(5,'Matemáticas II','Facultad de Ciencias Económicas','Cálculo integral',30),(6,'Psicología General','Facultad de Psicología','Fundamentos de psicología',8),(7,'Neuropsicología','Facultad de Psicología','Bases cerebrales de la conducta',24),(8,'Derecho Civil','Facultad de Derecho','Normas civiles básicas',7),(9,'Derecho Penal','Facultad de Derecho','Principios del derecho penal',23),(10,'Economía I','Facultad de Ciencias Económicas','Introducción a la economía',6),(11,'Contabilidad Básica','Facultad de Ciencias Económicas','Principios contables',10),(12,'Fisiología Humana','Facultad de Ciencias de la Salud','Funciones del cuerpo humano',2),(13,'Anatomía','Facultad de Ciencias de la Salud','Estructura del cuerpo humano',18),(14,'Microbiología','Facultad de Ciencias de la Salud','Estudio de microorganismos',26),(15,'Arte Moderno','Facultad de Artes','Historia del arte moderno',4),(16,'Pintura I','Facultad de Artes','Técnicas básicas de pintura',12),(17,'Escultura I','Facultad de Artes','Escultura en arcilla',28),(18,'Sociología','Facultad de Ciencias Sociales','Estudio de la sociedad',3),(19,'Antropología','Facultad de Ciencias Sociales','Culturas y costumbres humanas',19),(20,'Comunicación Oral','Facultad de Ciencias Sociales','Expresión oral efectiva',27);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
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
