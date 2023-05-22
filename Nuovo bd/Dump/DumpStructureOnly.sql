-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: prognuov
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `generiMusicali` varchar(100) NOT NULL,
  `strumentiMusicali` varchar(100) NOT NULL,
  `numeroEventiPartecipati` int DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `band` (
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `generiMusicali` varchar(100) NOT NULL,
  `strumentiMusicali` varchar(100) NOT NULL,
  `numeroComponenti` int NOT NULL,
  `numeroEventiPartecipati` int DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `idevento` int NOT NULL,
  `emailPromotore` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nomeLocale` varchar(100) DEFAULT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `data` varchar(45) NOT NULL,
  `ora` varchar(45) NOT NULL,
  `genereMusicale` varchar(100) NOT NULL,
  PRIMARY KEY (`idevento`),
  KEY `emailPromotore_idx` (`emailPromotore`),
  CONSTRAINT `emailPromotore` FOREIGN KEY (`emailPromotore`) REFERENCES `promotore` (`emailPromotore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partecipazione_artista`
--

DROP TABLE IF EXISTS `partecipazione_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partecipazione_artista` (
  `emailMusicista` varchar(100) NOT NULL,
  `idEvento` int NOT NULL,
  KEY `email_idx` (`emailMusicista`),
  KEY `idEvento_idx` (`idEvento`),
  CONSTRAINT `email` FOREIGN KEY (`emailMusicista`) REFERENCES `artista` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partecipazione_band`
--

DROP TABLE IF EXISTS `partecipazione_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partecipazione_band` (
  `emailMusic` varchar(100) NOT NULL,
  `idEvent` int NOT NULL,
  KEY `emailMusic` (`emailMusic`),
  KEY `idEvent` (`idEvent`),
  CONSTRAINT `partecipazione_band_ibfk_1` FOREIGN KEY (`emailMusic`) REFERENCES `band` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `partecipazione_band_ibfk_2` FOREIGN KEY (`idEvent`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promotore`
--

DROP TABLE IF EXISTS `promotore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotore` (
  `emailPromotore` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `eta` int NOT NULL,
  PRIMARY KEY (`emailPromotore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 20:04:38
