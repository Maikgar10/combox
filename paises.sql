CREATE DATABASE  IF NOT EXISTS `compras` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `compras`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: compras
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `idpaises` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idpaises`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (2,'Colombia'),(3,'Peru'),(4,'Estados Unidos'),(5,'Argentina'),(6,'Brasil'),(7,'Canada');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `idCiud` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `idEstado` int(11) NOT NULL,
  PRIMARY KEY (`idCiud`),
  KEY `idEstado` (`idEstado`),
  CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `estados` (`idEstados`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `idEstados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `idPaises` int(11) NOT NULL,
  PRIMARY KEY (`idEstados`),
  KEY `idPaises` (`idPaises`),
  CONSTRAINT `estados_ibfk_1` FOREIGN KEY (`idPaises`) REFERENCES `paises` (`idpaises`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Lima',3),(2,'Ancash',3),(3,'Arizona',4),(4,'Texas',4),(5,'Nevada',4),(6,'Buenos Aires',5),(7,'Catamarca',5),(8,'Chaco',5),(9,'Chubut',5),(10,'Cordova',5),(11,'Corrientes',5),(12,'Amazonas',2),(13,'Antioquia',2),(14,'Arauca',2),(15,'Caldas',2),(16,'Casanares',2),(17,'Acre',6),(18,'Amapa',6),(19,'Amazonas',6),(20,'Bahia',6),(21,'Alabama',4),(22,'Alazca',4),(23,'American Samoa',4),(24,'Arkansas',4),(25,'Colorado',4),(26,'Piura',3),(27,'Tumbes',3),(28,'Tacna',3),(29,'Moquegua',3),(30,'Ica',3),(31,'La Libertad',3),(32,'Amazonas',3),(33,'Madre de Dios',3),(34,'Pucallpa',3),(35,'Puno',3),(36,'Cuzco',3),(37,'Junin',3),(38,'Pasco',3),(39,'Connecticut',4),(40,'Delaware',4),(41,'Columbia',4),(42,'Florida',4),(43,'Giorgia',4),(44,'Hawaii',4),(45,'New York',4),(46,'New Mexico',4),(47,'Idaho',4),(48,'California',4),(49,'Mendoza',5),(50,'Quebec',7),(51,'Alberta',7),(52,'Ontario',7),(53,'Nueva Escocia',7),(54,'Columbia Britanica',7),(55,'Manitoba',7),(56,'Terranova',7),(57,'Isla del Principe',7),(58,'Saskatchevan',7),(59,'Matto Groso',6),(60,'Ceara',6),(61,'Distrito Federal',6),(62,'Espirito Santo',6),(63,'Minas Gerais',6),(64,'Para',6),(65,'Paraiba',6),(66,'Parana',6),(67,'Pernanbuco',6),(68,'Rio de Janeiro',6),(69,'Sao Paulo',6),(70,'Bogota',2);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-25  7:10:30
