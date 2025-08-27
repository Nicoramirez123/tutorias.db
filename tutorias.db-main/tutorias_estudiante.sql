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
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `segundoNombre` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primerApellido` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `segundoApellido` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `genero` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `planEstudio` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tipoDocumento` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `estudiante_index_0` (`codigo`),
  KEY `fk_estudiante_tipoDocumento` (`tipoDocumento`),
  CONSTRAINT `fk_estudiante_tipoDocumento` FOREIGN KEY (`tipoDocumento`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (101,'Carlos','Andrés','Ramírez','Gómez','carlos.ramirez1@mail.com','2147483647','M','Ingeniería de Sistemas',1),(102,'María','Camila','Pérez','Lopez','maria.perez2@mail.com','2147483647','F','Medicina',2),(103,'Juan','David','González','Martínez','juan.gonzalez3@mail.com','2147483647','M','Derecho',3),(104,'Ana','Isabel','Rodríguez','Castro','ana.rodriguez4@mail.com','2147483647','F','Psicología',1),(105,'Santiago','Julián','Fernández','Morales','santiago.fernandez5@mail.com','2147483647','M','Ingeniería Civil',2),(106,'Valentina','Sofía','Gómez','Torres','valentina.gomez6@mail.com','2147483647','F','Arquitectura',3),(107,'Andrés','Felipe','Díaz','Romero','andres.diaz7@mail.com','2147483647','M','Enfermería',1),(108,'Laura','Marcela','Moreno','Ruiz','laura.moreno8@mail.com','2147483647','F','Administración',2),(109,'Felipe','Alonso','Jiménez','Reyes','felipe.jimenez9@mail.com','2147483647','M','Contaduría',3),(110,'Juliana','Paola','Castaño','Ríos','juliana.castano10@mail.com','2147483647','F','Ingeniería Electrónica',1),(111,'David','Esteban','Mendoza','Vargas','david.mendoza11@mail.com','2147483647','M','Odontología',2),(112,'Camila','Fernanda','Ruiz','Sánchez','camila.ruiz12@mail.com','2147483647','F','Diseño Gráfico',3),(113,'Julián','Alejandro','Ortega','Mora','julian.ortega13@mail.com','2147483647','M','Ingeniería Mecánica',1),(114,'Paula','Andrea','Torres','García','paula.torres14@mail.com','2147483647','F','Comunicación Social',2),(115,'Mateo','Ignacio','Cruz','Guerrero','mateo.cruz15@mail.com','2147483647','M','Ciencias Políticas',3),(116,'Isabella','Lucía','Castillo','Herrera','isabella.castillo16@mail.com','2147483647','F','Trabajo Social',1),(117,'Sebastián','Mauricio','Rojas','Cárdenas','sebastian.rojas17@mail.com','2147483647','M','Biología',2),(118,'Daniela','Patricia','Vega','Salazar','daniela.vega18@mail.com','2147483647','F','Química',3),(119,'Tomás','Iván','Álvarez','Camacho','tomas.alvarez19@mail.com','2147483647','M','Filosofía',1),(120,'Natalia','Estefanía','Suárez','Beltrán','natalia.suarez20@mail.com','2147483647','F','Ingeniería Industrial',2),(121,'Jorge','Luis','Martínez','Navarro','jorge.martinez21@mail.com','2147483647','M','Economía',3),(122,'Mariana','Alejandra','Pardo','León','mariana.pardo22@mail.com','2147483647','F','Antropología',1),(123,'Cristian','Eduardo','Reyes','Campos','cristian.reyes23@mail.com','2147483647','M','Matemáticas',2),(124,'Sara','Gabriela','Santos','Ávila','sara.santos24@mail.com','2147483647','F','Ingeniería Química',3),(125,'Leonardo','Miguel','Peña','Córdoba','leonardo.pena25@mail.com','2147483647','M','Música',1),(126,'Manuela','Teresa','López','Forero','manuela.lopez26@mail.com','2147483647','F','Historia',2),(127,'Samuel','Antonio','Rivera','Perdomo','samuel.rivera27@mail.com','2147483647','M','Cine y TV',3),(128,'Gabriela','Elena','Mejía','Hoyos','gabriela.mejia28@mail.com','2147483647','F','Ingeniería Biomédica',1),(129,'Ricardo','Ángel','Ramírez','Bonilla','ricardo.ramirez29@mail.com','2147483647','M','Geología',2),(130,'Adriana','Patricia','Acosta','Villamil','adriana.acosta30@mail.com','2147483647','F','Lingüística',3),(131,'Diego','Fernando','Vargas','Correa','diego.vargas31@mail.com','2147483647','M','Educación Física',1),(132,'Claudia','Lorena','Morales','Buitrago','claudia.morales32@mail.com','2147483647','F','Enfermería',2),(133,'Esteban','Camilo','Martínez','Holguín','esteban.martinez33@mail.com','2147483647','M','Medicina',3),(134,'Alejandra','Rocío','Peralta','Quintero','alejandra.peralta34@mail.com','2147483647','F','Derecho',1),(135,'Mauricio','Orlando','Guerra','Salinas','mauricio.guerra35@mail.com','2147483647','M','Ingeniería de Software',2),(136,'Luisa','Carolina','Ortiz','Cabrera','luisa.ortiz36@mail.com','2147483647','F','Arquitectura',3),(137,'Álvaro','Enrique','Cárdenas','Molina','alvaro.cardenas37@mail.com','2147483647','M','Psicología',1),(138,'Nicole','Julieta','Serrano','Patiño','nicole.serrano38@mail.com','2147483647','F','Ingeniería Civil',2),(139,'Héctor','Javier','Quiroga','Martín','hector.quiroga39@mail.com','2147483647','M','Derecho',3),(140,'Diana','Cecilia','Bermúdez','Solano','diana.bermudez40@mail.com','2147483647','F','Trabajo Social',1),(141,'Oscar','Alfonso','Valencia','Rico','oscar.valencia41@mail.com','2147483647','M','Biología',2),(142,'Verónica','Tatiana','Fuentes','Gómez','veronica.fuentes42@mail.com','2147483647','F','Administración',3),(143,'Pablo','Esteban','Jiménez','Torres','pablo.jimenez43@mail.com','2147483647','M','Contaduría',1),(144,'Lucía','Beatriz','Martín','Rincón','lucia.martin44@mail.com','2147483647','F','Ingeniería de Sistemas',2),(145,'Rodrigo','José','Herrera','Santos','rodrigo.herrera45@mail.com','2147483647','M','Economía',3),(146,'Carmen','Victoria','Navarro','Parra','carmen.navarro46@mail.com','2147483647','F','Matemáticas',1),(147,'Martín','Eduardo','Salazar','Ruiz','martin.salazar47@mail.com','2147483647','M','Ingeniería Eléctrica',2),(148,'Patricia','Elisa','Cortés','Mejía','patricia.cortes48@mail.com','2147483647','F','Filosofía',3),(149,'Nelson','Camilo','Mora','Ramírez','nelson.mora49@mail.com','2147483647','M','Química',1),(150,'Mónica','Liliana','Gallego','Reina','monica.gallego50@mail.com','2147483647','F','Ciencias Políticas',2);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
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
