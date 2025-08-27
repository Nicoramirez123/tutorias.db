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
-- Table structure for table `solicitudtutorias`
--

DROP TABLE IF EXISTS `solicitudtutorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudtutorias` (
  `codigoTutoria` int NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `tema` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `codigoEstudiante` int NOT NULL,
  `codigoMateria` int NOT NULL,
  PRIMARY KEY (`codigoTutoria`),
  KEY `solicitudTutorias_index_0` (`codigoTutoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudtutorias`
--

LOCK TABLES `solicitudtutorias` WRITE;
/*!40000 ALTER TABLE `solicitudtutorias` DISABLE KEYS */;
INSERT INTO `solicitudtutorias` VALUES (16,'Refuerzo Programación I','2025-09-01 10:00:00','Condicionales y bucles',1,1),(17,'Ayuda en Bases de Datos','2025-09-02 14:00:00','Consultas SQL básicas',5,3),(18,'Tutoría Matemáticas I','2025-09-03 09:00:00','Límites y derivadas',10,4),(19,'Apoyo en Psicología','2025-09-03 15:30:00','Introducción a teorías',12,6),(20,'Refuerzo Derecho Civil','2025-09-04 11:00:00','Obligaciones y contratos',15,8),(21,'Tutoría Economía I','2025-09-05 16:00:00','Oferta y demanda',20,10),(22,'Asesoría Contabilidad','2025-09-06 09:30:00','Principios contables básicos',22,11),(23,'Apoyo en Anatomía','2025-09-06 14:00:00','Sistema óseo y muscular',25,13),(24,'Tutoría Arte Moderno','2025-09-07 08:30:00','Vanguardias del siglo XX',30,15),(25,'Apoyo en Escultura','2025-09-07 17:00:00','Escultura en barro',32,17),(26,'Tutoría Sociología','2025-09-08 10:00:00','Sociología clásica',35,18),(27,'Refuerzo Comunicación Oral','2025-09-08 15:00:00','Presentaciones orales',38,20),(28,'Apoyo Microbiología','2025-09-09 09:30:00','Bacterias y virus',40,14),(29,'Tutoría Programación II','2025-09-09 13:00:00','Listas y arreglos',42,2),(30,'Asesoría Filosofía','2025-09-10 11:00:00','Platón y Aristóteles',45,19);
/*!40000 ALTER TABLE `solicitudtutorias` ENABLE KEYS */;
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
