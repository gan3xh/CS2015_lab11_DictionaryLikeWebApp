-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: webDB
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meaning`
--

DROP TABLE IF EXISTS `meaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meaning` (
  `spid` varchar(10) DEFAULT NULL,
  `wid` varchar(10) DEFAULT NULL,
  `meaning` varchar(15000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meaning`
--

LOCK TABLES `meaning` WRITE;
/*!40000 ALTER TABLE `meaning` DISABLE KEYS */;
INSERT INTO `meaning` VALUES
('s1', '1', 'a large carnivorous feline'),
('s1', '2', 'a programmable electronic device designed to perform operations'),
('s2', '2', 'the act of communicating with someone over a telephone network'),
('s1', '3', 'a herbivore animal'),
('s1', '4', 'a set of written or printed pages bound together'),
('s2', '4', 'to secure or set aside for future use'),
('s1', '5', 'a sweet, edible fruit that grows on a vine'),
('s1', '6', 'a motor vehicle with four wheels designed for transporting people or goods'),
('s1', '7', 'a product or item that can be bought or sold'),
('s3', '7', 'pleasant or agreeable'),
('s1', '8', 'a view or judgment formed about something'),
('s2', '8', 'to speak or call out with sudden intensity'),
('s3', '9', 'appealing or desirable'),
('s1', '10', 'an effort to achieve something'),
('s2', '10', 'to change position or location')
/*!40000 ALTER TABLE `meaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psp`
--

DROP TABLE IF EXISTS `psp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psp` (
  `spid` varchar(10) DEFAULT NULL,
  `psp` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psp`
--

LOCK TABLES `psp` WRITE;
/*!40000 ALTER TABLE `psp` DISABLE KEYS */;
INSERT INTO `psp` VALUES
('s1','Noun'),
('s2','Verb'),
('s3','Adjective');
/*!40000 ALTER TABLE `psp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps`
--

DROP TABLE IF EXISTS `ps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps` (
  `spid` varchar(10) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps`
--

LOCK TABLES `ps` WRITE;
/*!40000 ALTER TABLE `ps` DISABLE KEYS */;
INSERT INTO `ps` VALUES
('s1',1),
('s1',2),
('s2',2),
('s1',3),
('s1',4),
('s2',4),
('s1',5),
('s1',6),
('s1',7),
('s3',7),
('s1',8),
('s2',8),
('s3',9),
('s1',10),
('s2',10);
/*!40000 ALTER TABLE `ps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sci_n`
--

DROP TABLE IF EXISTS `sci_n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sci_n` (
  `wid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sci_n`
--

LOCK TABLES `sci_n` WRITE;
/*!40000 ALTER TABLE `sci_n` DISABLE KEYS */;
INSERT INTO `sci_n` VALUES
(1,'Panthera tigris'),
(3,'Equus caballus'),
(5,'Malus pumila');
/*!40000 ALTER TABLE `sci_n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `wid` int(11) DEFAULT NULL,
  `word` varchar(100) DEFAULT NULL,
  `syll` varchar(100) DEFAULT NULL,
  `Maithili` varchar(100) DEFAULT NULL,
  `Hindi` varchar(100) DEFAULT NULL,
  `French` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES
(1,'Tiger','taɪɡə(r)','बाघ','बाघ','Tigre'),
(2,'Phone','fəʊn','मोबाइल','फ़ोन','Téléphone'),
(3,'Horse','hɔːrs','घोड़ा','घोड़ा','Cheval'),
(4,'Book','bʊk','पुस्तक','किताब','Livre'),
(5,'Apple','ˈæp.əl','सेब','सेब','Pomme'),
(6,'Car','kɑːr','गाड़ी ','कार','Voiture'),
(7,'Good','ɡʊd','नीक','अच्छा','Bien'),
(8,'Say','seɪ','कहू','बोलना','Dire'),
(9,'Pretty','ˈprɪt.i','सुन्नरता','सुंदर','Joli'),
(10,'Go','ɡəʊ','जाउ','जाओ','Aller');
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 11:25:29