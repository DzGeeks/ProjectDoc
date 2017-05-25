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
  PRIMARY KEY (`actorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor`
--

LOCK TABLES `Actor` WRITE;
/*!40000 ALTER TABLE `Actor` DISABLE KEYS */;
INSERT INTO `Actor` VALUES (1,'Lin');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinema`
--

LOCK TABLES `Cinema` WRITE;
/*!40000 ALTER TABLE `Cinema` DISABLE KEYS */;
INSERT INTO `Cinema` VALUES (1,3,'mko','1222'),(2,2,'xcd','1244');
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
  PRIMARY KEY (`filmId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Film`
--

LOCK TABLES `Film` WRITE;
/*!40000 ALTER TABLE `Film` DISABLE KEYS */;
INSERT INTO `Film` VALUES (1,'qwe','qwe',344,'mkmk',9.9,2013),(2,'ad','sd',12,'sds',10,2003),(3,'q','sd',1232,'zxzc',3.5,2012),(4,'qwe','we',12,'th',2.4,2010),(5,'asd','yh',3,'th',5.8,2020),(6,'zx','retg',4,'thrr',9.5,1992),(7,'qd','wtg',4,'rth',10,1995),(8,'v','eqv',4,'rbrbrb',8.7,2004),(9,'gebwr','evf',12,'bdsw',9.2,2003);
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
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmType`
--

LOCK TABLES `FilmType` WRITE;
/*!40000 ALTER TABLE `FilmType` DISABLE KEYS */;
INSERT INTO `FilmType` VALUES (1,'dongzuo'),(2,'xiju');
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
INSERT INTO `HasType` VALUES (1,1),(2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
INSERT INTO `OrderItem` VALUES (1,1,3,21),(2,1,3,2),(3,1,3,32),(4,1,2,3),(5,2,3,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlaySession`
--

LOCK TABLES `PlaySession` WRITE;
/*!40000 ALTER TABLE `PlaySession` DISABLE KEYS */;
INSERT INTO `PlaySession` VALUES (1,1,'2013-02-03 00:00:00',2,0.9,'12:23',1,'en',12,'E121','10:23'),(2,2,'2015-12-01 00:00:00',3,1,'12:43',1,'34',11,'D123','12:3'),(3,1,'2014-03-04 00:00:00',2,0.95,'123:!@3',1,'23',34,'d23','12:!2');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seat`
--

LOCK TABLES `Seat` WRITE;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
INSERT INTO `Seat` VALUES (1,12,1,12,'001000');
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
  `timeStamp` bigint(20) NOT NULL,
  `totalPrice` double NOT NULL,
  `finished` int(11) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myOrder`
--

LOCK TABLES `myOrder` WRITE;
/*!40000 ALTER TABLE `myOrder` DISABLE KEYS */;
INSERT INTO `myOrder` VALUES (1,'123',1233,12.2,0),(2,'123',3546,34,0);
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

-- Dump completed on 2017-05-25 12:36:10
