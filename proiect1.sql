CREATE DATABASE  IF NOT EXISTS `proiect1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proiect1`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proiect1
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festival` (
  `idfestival` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `data` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `pret_bilet` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`idfestival`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (9,'The five','2025-10-15','200');
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista`
--

DROP TABLE IF EXISTS `lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista` (
  `idlista` bigint NOT NULL AUTO_INCREMENT,
  `idtrupa` int DEFAULT NULL,
  `idfestival` int DEFAULT NULL,
  `ora_trupa` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `dansatori` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `scena` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`idlista`),
  KEY `fk_link_1_idx` (`idfestival`),
  KEY `fk_link_2_idx` (`idtrupa`),
  CONSTRAINT `fk_link_1` FOREIGN KEY (`idfestival`) REFERENCES `festival` (`idfestival`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_link_2` FOREIGN KEY (`idtrupa`) REFERENCES `trupa` (`idtrupa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista`
--

LOCK TABLES `lista` WRITE;
/*!40000 ALTER TABLE `lista` DISABLE KEYS */;
INSERT INTO `lista` VALUES (17,13,9,'17:50','Claudia','B');
/*!40000 ALTER TABLE `lista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trupa`
--

DROP TABLE IF EXISTS `trupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trupa` (
  `idtrupa` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) COLLATE latin1_bin NOT NULL,
  `gen_muzical` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `nr_membrii` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`idtrupa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trupa`
--

LOCK TABLES `trupa` WRITE;
/*!40000 ALTER TABLE `trupa` DISABLE KEYS */;
INSERT INTO `trupa` VALUES (12,'Carla\'s D','pop','6'),(13,'Justin Timperlake','pop','1');
/*!40000 ALTER TABLE `trupa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-27 12:10:02
