-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	5.7.13

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
-- Table structure for table `ActIn`
--

DROP TABLE IF EXISTS `ActIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActIn` (
  `filmId` int(11) NOT NULL,
  `actorId` int(11) NOT NULL,
  PRIMARY KEY (`actorId`,`filmId`),
  KEY `FK_gv75nsmh6b9v7pql4o6r4rhhl` (`actorId`),
  KEY `FK_nmk71fdw6t98o3chhlw5vfqgn` (`filmId`),
  CONSTRAINT `FK_gv75nsmh6b9v7pql4o6r4rhhl` FOREIGN KEY (`actorId`) REFERENCES `Actor` (`actorId`),
  CONSTRAINT `FK_nmk71fdw6t98o3chhlw5vfqgn` FOREIGN KEY (`filmId`) REFERENCES `Film` (`filmId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActIn`
--

LOCK TABLES `ActIn` WRITE;
/*!40000 ALTER TABLE `ActIn` DISABLE KEYS */;
INSERT INTO `ActIn` VALUES (6,8),(11,12),(11,13),(11,14),(12,15),(12,16),(12,17);
/*!40000 ALTER TABLE `ActIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Actor`
--

DROP TABLE IF EXISTS `Actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor` (
  `actorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`actorId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor`
--

LOCK TABLES `Actor` WRITE;
/*!40000 ALTER TABLE `Actor` DISABLE KEYS */;
INSERT INTO `Actor` VALUES (16,'asd'),(8,'dan'),(13,'dandan'),(7,'guo'),(14,'guoguo'),(1,'Lin'),(12,'linlin'),(17,'qwe'),(15,'zxc');
/*!40000 ALTER TABLE `Actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cinema`
--

DROP TABLE IF EXISTS `Cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cinema` (
  `cinemaId` int(11) NOT NULL AUTO_INCREMENT,
  `addressId` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`cinemaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinema`
--

LOCK TABLES `Cinema` WRITE;
/*!40000 ALTER TABLE `Cinema` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Film`
--

DROP TABLE IF EXISTS `Film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Film` (
  `filmId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `director` varchar(45) NOT NULL,
  `duration` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `score` double NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`filmId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Film`
--

LOCK TABLES `Film` WRITE;
/*!40000 ALTER TABLE `Film` DISABLE KEYS */;
INSERT INTO `Film` VALUES (1,'qwe','lin',120,'qwe',9.8,2015),(2,'asd','guo',118,'asd',10,2017),(4,'haokan','linlin',45,'hehe',5.6,2012),(6,'haokan','linlin',45,'hehfe',5.6,2012),(10,'haokan','linlin',45,'hehfe123',5.6,2012),(11,'haokan','linlin',45,'hehfeada',5.6,2012),(12,'haokan','linlin',45,'bucuo',5.6,2012);
/*!40000 ALTER TABLE `Film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilmType`
--

DROP TABLE IF EXISTS `FilmType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilmType` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`typeId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmType`
--

LOCK TABLES `FilmType` WRITE;
/*!40000 ALTER TABLE `FilmType` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilmType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HasType`
--

DROP TABLE IF EXISTS `HasType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HasType` (
  `typeId` int(11) NOT NULL,
  `filmId` int(11) NOT NULL,
  PRIMARY KEY (`filmId`,`typeId`),
  KEY `FK_2a2lo88ej9meaxa6aokkfa2qj` (`filmId`),
  KEY `FK_igw017ii28gs17m1kmbfiu6pt` (`typeId`),
  CONSTRAINT `FK_2a2lo88ej9meaxa6aokkfa2qj` FOREIGN KEY (`filmId`) REFERENCES `Film` (`filmId`),
  CONSTRAINT `FK_igw017ii28gs17m1kmbfiu6pt` FOREIGN KEY (`typeId`) REFERENCES `FilmType` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HasType`
--

LOCK TABLES `HasType` WRITE;
/*!40000 ALTER TABLE `HasType` DISABLE KEYS */;
/*!40000 ALTER TABLE `HasType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderItem` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `playSessionId` int(11) NOT NULL,
  `seatIndex` int(11) NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `FK_8of0v88yrp7p3ksvsvroh9j0l` (`orderId`),
  CONSTRAINT `FK_8of0v88yrp7p3ksvsvroh9j0l` FOREIGN KEY (`orderId`) REFERENCES `myOrder` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlaySession`
--

DROP TABLE IF EXISTS `PlaySession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlaySession` (
  `playSessionId` int(11) NOT NULL AUTO_INCREMENT,
  `cinemaId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `dimension` int(11) NOT NULL,
  `discount` double NOT NULL,
  `endTime` varchar(45) NOT NULL,
  `filmId` int(11) NOT NULL,
  `language` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `roomId` varchar(45) NOT NULL,
  `startTime` varchar(45) NOT NULL,
  PRIMARY KEY (`playSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlaySession`
--

LOCK TABLES `PlaySession` WRITE;
/*!40000 ALTER TABLE `PlaySession` DISABLE KEYS */;
/*!40000 ALTER TABLE `PlaySession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seat`
--

DROP TABLE IF EXISTS `Seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seat` (
  `seatId` int(11) NOT NULL AUTO_INCREMENT,
  `mycolumn` int(11) NOT NULL,
  `playSessionId` int(11) NOT NULL,
  `myrow` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`seatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seat`
--

LOCK TABLES `Seat` WRITE;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myOrder`
--

DROP TABLE IF EXISTS `myOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myOrder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) NOT NULL,
  `totalPrice` double NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myOrder`
--

LOCK TABLES `myOrder` WRITE;
/*!40000 ALTER TABLE `myOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `myOrder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 23:51:29
