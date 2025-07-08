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
-- Table structure for table `cittadino`
--

DROP TABLE IF EXISTS `cittadino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cittadino` (
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `data_nascita` varchar(20) DEFAULT NULL,
  `luogo_nascita` varchar(20) DEFAULT 'Messina',
  `provincia_nasc` varchar(2) DEFAULT 'ME',
  `residenza` varchar(30) DEFAULT NULL,
  `n_civico` int(11) DEFAULT NULL,
  `città_res` varchar(20) DEFAULT 'Messina',
  `provincia` varchar(2) DEFAULT 'ME',
  `cap` int(11) DEFAULT '98100',
  `cod_fiscale` varchar(16) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `psw` varchar(20) DEFAULT NULL,
  `telefono` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `privacy` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`username`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `cod_fiscale` (`cod_fiscale`),
  UNIQUE KEY `nome` (`nome`,`cognome`,`data_nascita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cittadino`
--

LOCK TABLES `cittadino` WRITE;
/*!40000 ALTER TABLE `cittadino` DISABLE KEYS */;
/*!40000 ALTER TABLE `cittadino` ENABLE KEYS */;
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
