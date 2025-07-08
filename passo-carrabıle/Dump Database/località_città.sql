CREATE DATABASE  IF NOT EXISTS `località` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `località`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: località
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
-- Table structure for table `città`
--

DROP TABLE IF EXISTS `città`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `città` (
  `id_città` int(11) NOT NULL AUTO_INCREMENT,
  `nome_città` varchar(30) DEFAULT NULL,
  `nome_prov` varchar(2) DEFAULT NULL,
  `regione` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_città`),
  KEY `regione` (`regione`),
  CONSTRAINT `regione` FOREIGN KEY (`regione`) REFERENCES `regioni` (`id_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `città`
--

LOCK TABLES `città` WRITE;
/*!40000 ALTER TABLE `città` DISABLE KEYS */;
INSERT INTO `città` VALUES (1,'Aosta','AO',1),(2,'Trento','TN',2),(3,'Bolzano','BZ',2),(4,'Gorizia','GO',3),(5,'Pordenone','PN',3),(6,'Trieste','TS',3),(7,'Udine','UD',3),(8,'Belluno','BL',4),(9,'Padova','PD',4),(10,'Rovigo','RO',4),(11,'Treviso','TV',4),(12,'Venezia','VE',4),(13,'Verona','VR',4),(14,'Vicenza','VI',4),(15,'Bergamo','BG',5),(16,'Brescia','BS',5),(17,'Como','CO',5),(18,'Cremona','CR',5),(19,'Lecco','LC',5),(20,'Lodi','LO',5),(21,'Mantova','MN',5),(22,'Milano','MI',5),(23,'Monza e Brianza','MB',5),(24,'Pavia','PV',5),(25,'Sondrio','SO',5),(26,'Varese','VA',5),(27,'Alessandria','AL',6),(28,'Asti','AT',6),(29,'Biella','BI',6),(30,'Verbania','VB',6),(31,'Vercelli','VC',6),(32,'Genova','GE',7),(33,'Imperia','IM',7),(34,'La spezia','SP',7),(35,'Savona','SV',7),(36,'Bologna','BO',8),(37,'Ferrara','FE',8),(38,'Forlì-Cesena','FC',8),(39,'Modena','MO',8),(40,'Parma','PR',8),(41,'Piacenza','PC',8),(42,'Ravenna','RA',8),(43,'Reggio Emilia','RE',8),(44,'Rimini','RN',8),(45,'Arezzo','AR',9),(46,'Firenze','FI',9),(47,'Grosseto','GR',9),(48,'Livorno','LI',9),(49,'Lucca','LU',9),(50,'Massa-Carrara','MS',9),(51,'Pisa','PI',9),(52,'Pistoia','PT',9),(53,'Prato','PO',9),(54,'Siena','SI',9),(55,'Perugia','PG',10),(56,'Terni','TN',10),(57,'Ancona','AN',11),(58,'Ascoli Piceno','AP',11),(59,'Fermo','FM',11),(60,'Macerata','MC',11),(61,'Pesaro e Urbino','PU',11),(62,'Chieti','CH',12),(63,'L\'Aquila','AQ',12),(64,'Pescara','PE',12),(65,'Teramo','TE',12),(66,'Frosinone','FR',13),(67,'Latina','LT',13),(68,'Rieti','RI',13),(69,'Roma','RM',13),(70,'Viterbo','VT',13),(71,'Campobasso','CB',14),(72,'Isernia','IS',14),(73,'Matera','MT',15),(74,'Potenza','PZ',15),(75,'Bari','BA',16),(76,'Barlatta-Andria-Trani','BT',16),(77,'Brindisi','BR',16),(78,'Foggia','FG',16),(79,'Lecce','LE',16),(80,'Taranto','TA',16),(81,'Avellino','AV',17),(82,'Benevento','BN',17),(83,'Caserta','CE',17),(84,'Napoli','NA',17),(85,'Salerno','SA',17),(86,'Catanzaro','CZ',18),(87,'Cosenza','CS',18),(88,'Crotone','KR',18),(89,'Reggio Calabria','RC',18),(90,'Vibo Valentia','VV',18),(91,'Agrigento','AG',19),(92,'Caltanissetta','CL',19),(93,'Catania','CT',19),(94,'Enna','EN',19),(95,'Messina','ME',19),(96,'Palermo','PA',19),(97,'Ragusa','RG',19),(98,'Siracusa','SR',19),(99,'Trapani','TP',19),(100,'Cagliari','CA',20),(101,'Carbonia-Iglesias','CI',20),(102,'Nuoro','NU',20),(103,'Olbia-Tempio','OT',20),(104,'Oristano','OR',20),(105,'Medio Campidano','VS',20),(106,'Sassari','SS',20),(107,'Ogliastra','OG',20);
/*!40000 ALTER TABLE `città` ENABLE KEYS */;
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
