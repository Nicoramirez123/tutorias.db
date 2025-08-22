-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tutorias
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
  `codigoComentario` int(11) NOT NULL AUTO_INCREMENT,
  `codigoTutoria` int(11) NOT NULL,
  `codigoMateria` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
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

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(20) NOT NULL,
  `segundoNombre` varchar(20) DEFAULT NULL,
  `primerApellido` varchar(20) NOT NULL,
  `segundoApellido` varchar(20) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `facultad` varchar(100) NOT NULL,
  `tipoDocumento` int(11) NOT NULL,
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

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(20) NOT NULL,
  `segundoNombre` varchar(20) DEFAULT NULL,
  `primerApellido` varchar(50) NOT NULL,
  `segundoApellido` varchar(20) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `planEstudio` varchar(100) NOT NULL,
  `tipoDocumento` int(11) NOT NULL,
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

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `codigoMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(100) NOT NULL,
  `facultad` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `docenteAsignado` int(11) NOT NULL,
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

--
-- Table structure for table `solicitudtutorias`
--

DROP TABLE IF EXISTS `solicitudtutorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudtutorias` (
  `codigoTutoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `tema` varchar(500) NOT NULL,
  `codigoEstudiante` int(11) NOT NULL,
  `codigoMateria` int(11) NOT NULL,
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

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'Cédula de Ciudadanía'),(2,'Pasaporte'),(3,'Tarjeta de Identidad');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22  1:30:33
