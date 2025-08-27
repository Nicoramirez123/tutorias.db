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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `codigoComentario` int NOT NULL AUTO_INCREMENT,
  `codigoTutoria` int NOT NULL,
  `codigoMateria` int NOT NULL,
  `comentario` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`codigoComentario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'El docente explicó muy bien el tema.'),(2,2,2,'Necesito más ejemplos prácticos.'),(3,3,3,'La sesión fue clara y organizada.'),(4,4,4,'Me gustaría profundizar más en este tema.'),(5,5,5,'Muy buena tutoría, resolvió mis dudas.'),(6,6,6,'El tema quedó más claro después de la tutoría.'),(7,7,7,'La explicación fue un poco rápida.'),(8,8,8,'Excelente acompañamiento del profesor.'),(9,9,9,'Me gustaría que la tutoría fuera más larga.'),(10,10,10,'El docente fue muy paciente al explicar.'),(11,11,11,'La tutoría me ayudó bastante.'),(12,12,12,'Requiere mejorar la presentación del tema.'),(13,13,13,'Muy dinámico el desarrollo de la tutoría.'),(14,14,14,'El profesor resolvió todas mis inquietudes.'),(15,15,15,'Excelente dominio del tema.'),(16,16,16,'La tutoría cumplió mis expectativas.'),(17,17,17,'Necesito más material de apoyo.'),(18,18,18,'El profesor motivó la participación.'),(19,19,19,'La tutoría fue corta para la complejidad del tema.'),(20,20,20,'Me ayudó a comprender conceptos difíciles.');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
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
