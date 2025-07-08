CREATE DATABASE  IF NOT EXISTS `prog_ingegneria` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prog_ingegneria`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: prog_ingegneria
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `passi_carrai`
--

DROP TABLE IF EXISTS `passi_carrai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passi_carrai` (
  `passo_n` int(11) NOT NULL AUTO_INCREMENT,
  `proprietario` varchar(20) DEFAULT NULL,
  `località_passo` varchar(20) DEFAULT NULL,
  `n_civico` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT '1',
  `cauzione_annuale` float DEFAULT '29.2',
  `validità` varchar(10) DEFAULT NULL,
  `multa_illecito` float DEFAULT '28.5',
  `fornitore` int(11) DEFAULT NULL,
  PRIMARY KEY (`passo_n`),
  UNIQUE KEY `proprietario` (`proprietario`,`località_passo`,`n_civico`),
  KEY `fornitore` (`fornitore`),
  CONSTRAINT `fornitore` FOREIGN KEY (`fornitore`) REFERENCES `fornitori` (`id_forn`),
  CONSTRAINT `utente` FOREIGN KEY (`proprietario`) REFERENCES `cittadino` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passi_carrai`
--

LOCK TABLES `passi_carrai` WRITE;
/*!40000 ALTER TABLE `passi_carrai` DISABLE KEYS */;
/*!40000 ALTER TABLE `passi_carrai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-30 17:03:43
