-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acosta`
--

DROP TABLE IF EXISTS `acosta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acosta` (
  `Salidas Acosta` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de Acosta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acosta`
--

LOCK TABLES `acosta` WRITE;
/*!40000 ALTER TABLE `acosta` DISABLE KEYS */;
INSERT INTO `acosta` VALUES ('05:30 am','05:10 pm'),('11:25 am','09:30 pm');
/*!40000 ALTER TABLE `acosta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alajuela`
--

DROP TABLE IF EXISTS `alajuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alajuela` (
  `Salidas Alajuela` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de Alajuela.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alajuela`
--

LOCK TABLES `alajuela` WRITE;
/*!40000 ALTER TABLE `alajuela` DISABLE KEYS */;
INSERT INTO `alajuela` VALUES ('05:50 am','09:00 am'),('06:30 am','10:00 am'),('07:40 am','11:00 am'),('08:50 am','12:00 md'),('09:50 am','01:00 pm'),('11:50 md','02:00 pm'),('12:50 md','03:00 pm'),('01:50 pm','04:00 pm'),('02:50 pm','05:00 pm'),('03:50 pm','06:00 pm'),('04:50 pm','07:00 pm'),('05:50 pm','08:00 pm'),('','09:00 pm'),('','10:00 pm');
/*!40000 ALTER TABLE `alajuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alajuelita`
--

DROP TABLE IF EXISTS `alajuelita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alajuelita` (
  `Salidas Alajuelita` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Salidas UCR` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tabla de horarios de buses de alajuelita.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alajuelita`
--

LOCK TABLES `alajuelita` WRITE;
/*!40000 ALTER TABLE `alajuelita` DISABLE KEYS */;
INSERT INTO `alajuelita` VALUES ('06:05 am','04:15 pm'),('07:05 am','05:15 pm'),('08:15 am','06:35 pm'),('04:45 pm','08:15 pm'),('05:50 pm','09:15 pm');
/*!40000 ALTER TABLE `alajuelita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aserrí`
--

DROP TABLE IF EXISTS `aserrí`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aserrí` (
  `Salidas Aserrí` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aserrí`
--

LOCK TABLES `aserrí` WRITE;
/*!40000 ALTER TABLE `aserrí` DISABLE KEYS */;
INSERT INTO `aserrí` VALUES ('05:50 am','05:15 pm'),('07:00 am','');
/*!40000 ALTER TABLE `aserrí` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Ruta` varchar(50) NOT NULL,
  `Tarifa` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Tabla de busus y precios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'Acosta','₡1120,00'),(2,'Alajuela','₡780,00'),(3,'Alajuelita','₡460,00'),(4,'Calle Blancos','₡360,00'),(5,'Cartago','₡550,00'),(6,'Coronado','₡480,00'),(7,'Desamparados','₡475,00'),(8,'Aserrí','₡510,00'),(9,'El Carmen de Guadalupe','₡435,00'),(10,'Grecia','₡1320,00'),(11,'Heredia','₡510,00'),(12,'Pavas','₡505,00'),(13,'San Rafael Abajo-San Juan de Dios-Desamparados','₡485,00'),(14,'San Carlos','₡1785,00'),(15,'San Ramón','₡1650,00'),(16,'Santa Ana - Escazú','₡600,00'),(17,'Tibás','₡420,00');
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calle_blancos`
--

DROP TABLE IF EXISTS `calle_blancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `calle_blancos` (
  `Salidas Calle Blancos` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calle_blancos`
--

LOCK TABLES `calle_blancos` WRITE;
/*!40000 ALTER TABLE `calle_blancos` DISABLE KEYS */;
INSERT INTO `calle_blancos` VALUES ('06:20 am','07:05 am'),('07:20 am','08:05 am'),('08:25 am','09:05 am'),('09:30 am','10:05 am'),('10:30 am','11:05 am'),('11:30 md','12:05 md'),('12:30 md','01:05 pm'),('02:30 pm','03:05 pm'),('03:30 pm','04:05 pm'),('04:25 pm','05:05 am'),('05:25 pm','06:05 pm'),('06:30 pm','07:05 pm'),('07:30 pm','08:05 pm'),('08:30 pm','09:05 pm');
/*!40000 ALTER TABLE `calle_blancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartago`
--

DROP TABLE IF EXISTS `cartago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartago` (
  `Salidas Cartago` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartago`
--

LOCK TABLES `cartago` WRITE;
/*!40000 ALTER TABLE `cartago` DISABLE KEYS */;
INSERT INTO `cartago` VALUES ('05:25 am','08:10 am'),('05:40 am','09:10 am'),('05:55 am','10:10 am'),('06:10 am','11:10 am'),('06:30 am','12:10 md'),('07:00 am','01:10 pm'),('08:00 am','02:10 pm'),('09:00 am','03:10 pm'),('10:00 am','04:00 pm'),('11:00 am','04:10 pm'),('12:00 md','05:00 pm'),('01:00 pm','05:10 pm'),('02:00 pm','06:10 pm'),('03:00 pm','07:00 pm'),('04:00 pm','07:10 pm'),('05:00 pm','08:00 pm'),('06:00 pm','08:10 pm'),('','09:00 pm'),('','09:10 pm'),('','10:10 pm');
/*!40000 ALTER TABLE `cartago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coronado`
--

DROP TABLE IF EXISTS `coronado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coronado` (
  `Salidas Coronado` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coronado`
--

LOCK TABLES `coronado` WRITE;
/*!40000 ALTER TABLE `coronado` DISABLE KEYS */;
INSERT INTO `coronado` VALUES ('06:00 am','08:00 am'),('06:10 am','09:10 am'),('06:15 am','10:10 am'),('06:50 am','11:10 am'),('07:05 am','12:10 md'),('08:20 am','1:10 pm'),('09:20 am','02:10 pm'),('10:20 am','03:10 pm'),('11:20 am','04:10 pm'),('12:20 md','05:00 pm'),('01:20 pm','05:10 pm'),('02:20 pm','06:10 pm'),('03:20 pm','07:10 pm'),('04:05 pm','08:10 pm'),('05:05 pm','09:10 pm'),('06:05 pm','10:00 pm');
/*!40000 ALTER TABLE `coronado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desamparados`
--

DROP TABLE IF EXISTS `desamparados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `desamparados` (
  `Salidas Desamparados` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desamparados`
--

LOCK TABLES `desamparados` WRITE;
/*!40000 ALTER TABLE `desamparados` DISABLE KEYS */;
INSERT INTO `desamparados` VALUES ('06:10 am','09:10 am'),('07:10 am','10:10 am'),('08:20 am','11:10 am'),('09:20 am','12:10 md'),('10:20 am','01:10 pm'),('12:20 md','02:10 pm'),('01:20 pm','03:10 pm'),('02:20 pm','04:10 pm'),('03:20 pm','04:55 pm'),('04:00 pm','06:10 pm'),('05:20 pm','07:10 pm'),('','08:10 pm'),('','09:10 pm'),('','10:00 pm');
/*!40000 ALTER TABLE `desamparados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_carmen_de_guadalupe`
--

DROP TABLE IF EXISTS `el_carmen_de_guadalupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `el_carmen_de_guadalupe` (
  `Salidas del Carmen` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses del Carmen de Guadalupe.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_carmen_de_guadalupe`
--

LOCK TABLES `el_carmen_de_guadalupe` WRITE;
/*!40000 ALTER TABLE `el_carmen_de_guadalupe` DISABLE KEYS */;
INSERT INTO `el_carmen_de_guadalupe` VALUES ('06:00 am','08:15 am'),('07:05 am','11:15 am'),('09:10 am','01:15 pm'),('12:10 md','05:15 pm'),('04:00 pm','07:15 pm'),('06:10 pm','08:15 pm'),('','09:15 pm');
/*!40000 ALTER TABLE `el_carmen_de_guadalupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grecia`
--

DROP TABLE IF EXISTS `grecia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grecia` (
  `Salidas Grecia` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grecia`
--

LOCK TABLES `grecia` WRITE;
/*!40000 ALTER TABLE `grecia` DISABLE KEYS */;
INSERT INTO `grecia` VALUES ('05:05 am','11:15 am'),('05:30 am','01:15 pm'),('05:45 am','05:10 pm'),('12:40 pm','07:10 pm'),('02:35 pm','08:40 pm');
/*!40000 ALTER TABLE `grecia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heredia`
--

DROP TABLE IF EXISTS `heredia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `heredia` (
  `Salidas Heredia` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de Heredia.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heredia`
--

LOCK TABLES `heredia` WRITE;
/*!40000 ALTER TABLE `heredia` DISABLE KEYS */;
INSERT INTO `heredia` VALUES ('05:20 am','06:45 am'),('05:40 am','07:00 am'),('05:50 am','08:00 am'),('06:00 am','09:00 am'),('06:05 am','10:00 am'),('06:30 am','11:00 am'),('07:00 am','12:00 md'),('08:00 am','01:00 pm'),('09:00 am','02:00 pm'),('10:00 am','03:00 pm'),('11:00 am','04:00 pm'),('12:00 md','05:00 pm'),('01:00 pm','06:00 pm'),('02:00 pm','07:00 pm'),('03:00 pm','08:00 pm'),('04:00 pm','09:00 pm'),('05:00 pm','10:00 pm'),('06:00 pm',''),('07:00 pm',''),('08:00 pm',''),('09:00 pm','');
/*!40000 ALTER TABLE `heredia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pavas`
--

DROP TABLE IF EXISTS `pavas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pavas` (
  `Salidas Pavas` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de Pavas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pavas`
--

LOCK TABLES `pavas` WRITE;
/*!40000 ALTER TABLE `pavas` DISABLE KEYS */;
INSERT INTO `pavas` VALUES ('06:05 am','07:15 am'),('06:15 am','10:10 am'),('07:05 am','11:10 am'),('08:05 am','12:10 md'),('09:05 am','01:10 pm'),('11:05 am','02:10 pm'),('12:10 md','03:10 pm'),('01:05 pm','04:10 pm'),('02:05 pm','05:15 pm'),('03:05 pm','06:15 pm'),('04:05 pm','07:15 pm'),('05:05 pm','08:15 pm'),('06:15 pm','09:15 pm');
/*!40000 ALTER TABLE `pavas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san rafael abajo-san juan de dios-desamparados`
--

DROP TABLE IF EXISTS `san rafael abajo-san juan de dios-desamparados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `san rafael abajo-san juan de dios-desamparados` (
  `Salidas San Rafael Abajo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Salidas San Juan de Dios` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Salidas UCR` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ujis COMMENT='Tabla de horarios de buses de San Rafael Abajo-San Juan de Dios-Desamparados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san rafael abajo-san juan de dios-desamparados`
--

LOCK TABLES `san rafael abajo-san juan de dios-desamparados` WRITE;
/*!40000 ALTER TABLE `san rafael abajo-san juan de dios-desamparados` DISABLE KEYS */;
INSERT INTO `san rafael abajo-san juan de dios-desamparados` VALUES ('08:17 am','06:00 am','10:10 am'),('09:17 am','07:00 am','12:10 md'),('12:17 md','','01:10 pm'),('02:17 pm','','03:10 pm'),('03:17 pm','','04:10 pm'),('04:10 pm','','05:10 pm'),('','','06:10 pm'),('','','07:10 pm'),('','','08:10 pm'),('','','09:15 pm');
/*!40000 ALTER TABLE `san rafael abajo-san juan de dios-desamparados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_carlos`
--

DROP TABLE IF EXISTS `san_carlos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `san_carlos` (
  `Salidas San Carlos` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de San Carlos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_carlos`
--

LOCK TABLES `san_carlos` WRITE;
/*!40000 ALTER TABLE `san_carlos` DISABLE KEYS */;
INSERT INTO `san_carlos` VALUES ('05:30 am','05:30 pm');
/*!40000 ALTER TABLE `san_carlos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_ramón`
--

DROP TABLE IF EXISTS `san_ramón`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `san_ramón` (
  `Salidas San Ramón` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de San Ramón.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_ramón`
--

LOCK TABLES `san_ramón` WRITE;
/*!40000 ALTER TABLE `san_ramón` DISABLE KEYS */;
/*!40000 ALTER TABLE `san_ramón` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `santa ana-escazú`
--

DROP TABLE IF EXISTS `santa ana-escazú`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `santa ana-escazú` (
  `Salidas Brasil` varchar(10) NOT NULL,
  `Salidas San Antonio` varchar(10) NOT NULL,
  `Salidas Parque de Escazú` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de horarios de buses de Santa Ana-Escazú.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `santa ana-escazú`
--

LOCK TABLES `santa ana-escazú` WRITE;
/*!40000 ALTER TABLE `santa ana-escazú` DISABLE KEYS */;
INSERT INTO `santa ana-escazú` VALUES ('05:45 am','06:00 am','08:00 am','11:10 am'),('06:45 am','','','01:10 pm'),('07:45 am','','','02:10 pm'),('11:45 am','','','03:10 pm'),('01:45 pm','','','04:10 pm'),('02:45 pm','','','05:10 pm'),('','','','06:10 pm'),('','','','07:10 pm'),('','','','08:10 pm'),('','','','09:10 pm'),('','','','10:00 pm');
/*!40000 ALTER TABLE `santa ana-escazú` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tibás`
--

DROP TABLE IF EXISTS `tibás`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tibás` (
  `Salidas Cuatro Reinas` varchar(10) NOT NULL,
  `Salidas Llorente` varchar(10) NOT NULL,
  `Salidas UCR` varchar(10) NOT NULL,
  `Salidas UCR por Llorente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tibás`
--

LOCK TABLES `tibás` WRITE;
/*!40000 ALTER TABLE `tibás` DISABLE KEYS */;
INSERT INTO `tibás` VALUES ('06:05 am','06:05 am','07:05 am','05:05 pm'),('07:05 am','','08:05 am','07:05 pm'),('08:05 am','','09:05 am',''),('09:05 am','','10:05 am',''),('10:05 am','','11:05 am',''),('11:05 am','','12:05 md',''),('12:05 md','','01:05 pm',''),('01:05 pm','','02:05 pm',''),('02:05 pm','','03:05 pm',''),('03:05 pm','','04:05 pm',''),('04:05 pm','','05:05 pm',''),('05:05 pm','','06:05 pm',''),('06:05 pm','','07:05 pm',''),('','','08:05 pm',''),('','','09:05 pm',''),('','','10:00 pm','');
/*!40000 ALTER TABLE `tibás` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 17:19:39
