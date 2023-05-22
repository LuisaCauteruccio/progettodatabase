-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: prognuov
-- ------------------------------------------------------
-- Server version	8.0.19
create database musicland; 
use musicland;
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
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES ('e.calcutta@gmail.com','paracetamolo1','Calcutta','indie-pop','voce-chitarra',24),('f.tarducci@gmail.com','fragile','Nesli','pop','voce',18),('g.gazzelle@libero.it','artista1','Gazzelle','indie','voce',11),('g.limongi@gmail.com','artista2','Giulia Limo','indie-rock','voce-chitarra-ukulele',2),('galeffi01@tiscali.it','artista3','Galeffi','indie','voce-chitarra',0),('gigino@gmail.com','artista4','Giovanni','trap','autotune',25),('grandetrollo@libero.it','artista5','Trullalero','musica popolare','chitarra',14),('ilcile@hotmail.it','artista6','Il Cile','pop/pop-rock','voce-chitarra',0),('p.chain@tiscali.it','artista7','Paul Chain','metal','chitarra ',0),('p.pelu@gmail.com','artista8','Piero Pelù','rock alternativo','voce',15),('phobebuffet@gmail.com','artista9','Phobe Buffet','trap','chitarra',10),('r.starr@gmail.com','artista10','Ringo Starr','pop-rock','batteria',9),('rinogaetano@libero.it','artista11','Rino Gaetano','rock','chitarra',7),('sesserini@gmail.com','artista12','Il violinista','musica classica','violino',4),('tirociniomentoris@gmail.com','artista13','Marco Marchi','pop-rock','voce-chitarra',3),('tirocorto@gmail.com','artista15','The Fantasy','pop-rock','chitarra',22),('tritomania@libero.com','artista16','I tritomania','pop-rock','chiattarra-classica, chitarra elettrica',5),('v.pascucci@gmail.com','artista17','Valentina','rock-metal','basso elettrico',7);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES ('31articolo@tiscali.it','senzafiltro','Articolo31','rock','chitarra elettrica',2,9),('beatles@libero.it','jhon lennon','The Beatlse','rock pop-rock beat','vocce-chitarra-batteria-bassi',4,4),('birocchi@gmail.com','band1','The Birock','rock-metal','voce-chitarra-tastiera-batteria',4,3),('diritti@gmail.com','band2','I Diritti','heavy metal','voce-chitarra-batteria-basso',5,8),('eugenio@gmail.com','band3','Eugenio In Via Di Gioia','indie-pop','voce-chitarra-tastiera-batteria-basso',4,8),('glisbiaditi@gmail.com','band4','Gli Sbiaditini','hip-hop','vario',3,17),('iCricetini@libero.it','band5','I Cricetini','rock','chiattarra-voce-batteria',3,15),('litfiba@tiscali.it','band6','Litfiba','rock alternativo','voce-chitarra-batteria-basso-tastiera',5,24),('para@gmail.com','band7','Paramore','rock alternativo- emo pop','voce-chitarra-batteria-basso',5,20),('sbarbatellos@tiscali.it','band8','Gli Sbarbati','pop','voce-chitarra-tastiera-batteria',4,19),('storti@gmail.com','band10','Gli Storti','metal','voce-chitarra-batteria-basso',3,18),('theglobe@tiscali.it','band9','The Globe','hip-hop','chitarra',2,2),('theguns@libero.it','band11','Guns n\' Roses','hard rock','voce-chitarra-batteria-basso',4,44),('themachines@tiscali.it','macchines','The Machines','rock','voce-chiatarra-',3,2),('theringo@gmail.com','band12','The Ringo','rock','voce-chitarra',2,7),('theScipt@gmail.com','band13','The Script ','rock','voce',1,5),('zen@libero.it','band14','The Zen Circus','punk rock-indie pop','voce-chitarra-basso-batteria',4,2);
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1111,'l.mari@gmail.com','Indieficio','Bishop','Via Carlo Levi, 8, Padova','11-04-2020','22:00:00','indie'),(1112,'marco.mostra@gmail.com','Aperitivo rock','Da Antonio','Piazza Del Popolo, 8,Lagonegro','11-06-2020','19:30:00','rock'),(1113,'a.grappolo@tiscali.it','Note blues','Bishiop','Via Delle Meraviglie,5,Fisciano','4-04-2020','22:00:00','jazz'),(1114,'a.grappolo@tiscali.it','Beer pong','Rolling steack','Via Dei Fiori Blu, 2,Padova','12-1-2020','22:30:00','pop'),(1115,'c.valiante@libero.it','Sono solo canzoni','Lanificio','Via Dei Tulipani,6, Roma','13-08-2020','22:45:00','pop'),(1116,'e.cesarelli@libero.it','Mare di notte','Spiaggia Nera','Via La Luna,7,Maratea','15-08-2020','22:30:00','indie'),(1117,'e.lotti@gmail.com','Sapore di sale','Fiumicello','Via San Nicola,9,Maratea','16-08-2021','19:30:00','indie-pop');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `partecipazione_artista`
--

LOCK TABLES `partecipazione_artista` WRITE;
/*!40000 ALTER TABLE `partecipazione_artista` DISABLE KEYS */;
INSERT INTO `partecipazione_artista` VALUES ('f.tarducci@gmail.com',1113),('f.tarducci@gmail.com',1114),('tirocorto@gmail.com',1114),('g.gazzelle@libero.it',1112),('g.gazzelle@libero.it',1114),('gigino@gmail.com',1113),('e.calcutta@gmail.com',1111);
/*!40000 ALTER TABLE `partecipazione_artista` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `partecipazione_band`
--

LOCK TABLES `partecipazione_band` WRITE;
/*!40000 ALTER TABLE `partecipazione_band` DISABLE KEYS */;
INSERT INTO `partecipazione_band` VALUES ('birocchi@gmail.com',1114),('eugenio@gmail.com',1115);
/*!40000 ALTER TABLE `partecipazione_band` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `promotore`
--

LOCK TABLES `promotore` WRITE;
/*!40000 ALTER TABLE `promotore` DISABLE KEYS */;
INSERT INTO `promotore` VALUES ('a.grappolo@tiscali.it','lunarossa','Ross','Cerruti',44),('alessandra_rullo@gmail.com','promotore0','Alessadra','Rullo',20),('antoniotonio@gmail.com','promotore1','Antonio','Antoniettini',1),('biagio.antonacci@libero.it','biagio','Biagio','Antonacci',52),('c.valiante@libero.it','promotore2','Chiara','Valiante',21),('e.cesarelli@libero.it','promotore3','Antonio','Cesarelli',32),('e.lotti@gmail.com','promotore4','Enricoa','Lotti',22),('g.quinto@gmail.com','promotore5','Giovanni','Quinto',42),('giovannimusicale@gmail.com','promotore6','Giovanni','Musichino',34),('gugliemo5@libero.it','promotore7','Gugliemo','Antonietti',32),('l.mari@gmail.com','promotore8','Luca','Mari',40),('luisacauteru@gmail.com','luisa','Luisa','Cauteruccio',23),('m.caut@gmail.com','promotore9','Marina','Cauteruccio',32),('m.sorgi@tiscali.it','promotore10','Michela ','Sorgi',21),('marco.mostra@gmail.com','promotore11','Marco','Mostra',23),('marioseriettini@tiscali.it','promotore12','Mario','Seriettini',34),('p.chieti@hotmail.it','pormotore13','Paola','Chieti',38),('rachelfriends@tiscali.it','promotore14','Rachel ','Friends ',23),('s.ottavi@tiscali.it','promotore15','Susanna','Ottavi',24),('sblofer@tiscali.it','marilu','Gaetano','Cauteruccio',27),('troppotrogi@gmail.com','troppotrogi','Antonio','Trottolino',23),('trottola@libero.it','trot','Gerardo','Trotta',34);
/*!40000 ALTER TABLE `promotore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 20:03:35
