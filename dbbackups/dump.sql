-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: publicwall
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `countrytable`
--

DROP TABLE IF EXISTS `countrytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrytable` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(255) NOT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrytable`
--

LOCK TABLES `countrytable` WRITE;
/*!40000 ALTER TABLE `countrytable` DISABLE KEYS */;
/*!40000 ALTER TABLE `countrytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `idgender` int(11) NOT NULL AUTO_INCREMENT,
  `genderValue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numberoflikes`
--

DROP TABLE IF EXISTS `numberoflikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numberoflikes` (
  `numberoflikes_logid` int(11) NOT NULL AUTO_INCREMENT,
  `idusers` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `remarks` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`numberoflikes_logid`),
  KEY `fk_idusers_idx` (`idusers`),
  KEY `fkey_postid_idx` (`postid`),
  CONSTRAINT `fkey_idusers` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkey_postid` FOREIGN KEY (`postid`) REFERENCES `posttable` (`postid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numberoflikes`
--

LOCK TABLES `numberoflikes` WRITE;
/*!40000 ALTER TABLE `numberoflikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `numberoflikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postkeywords`
--

DROP TABLE IF EXISTS `postkeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postkeywords` (
  `postkeywords` varchar(455) NOT NULL,
  `postid` int(11) NOT NULL,
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`),
  KEY `fk_postid_idx` (`postid`),
  CONSTRAINT `fk_postid` FOREIGN KEY (`postid`) REFERENCES `posttable` (`postid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postkeywords`
--

LOCK TABLES `postkeywords` WRITE;
/*!40000 ALTER TABLE `postkeywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `postkeywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posttable`
--

DROP TABLE IF EXISTS `posttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posttable` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4500) NOT NULL,
  `postdatetime` datetime NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `posttype` tinyint(2) NOT NULL DEFAULT '1',
  `subject` varchar(255) NOT NULL,
  `idofuser` int(11) NOT NULL,
  `Postedby` int(11) NOT NULL,
  PRIMARY KEY (`postid`),
  KEY `fk_posttable_users1_idx` (`Postedby`),
  CONSTRAINT `fk_posttable_users1` FOREIGN KEY (`Postedby`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posttable`
--

LOCK TABLES `posttable` WRITE;
/*!40000 ALTER TABLE `posttable` DISABLE KEYS */;
/*!40000 ALTER TABLE `posttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `rolediscription` varchar(255) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `roleid` int(11) NOT NULL,
  `idusers` int(11) NOT NULL,
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`),
  UNIQUE KEY `logid_UNIQUE` (`logid`),
  KEY `fk_idusers_idx` (`idusers`),
  KEY `fk_roleid` (`roleid`),
  CONSTRAINT `fk_idusers` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(555) NOT NULL,
  `email` varchar(1005) NOT NULL,
  `photo` blob,
  `state` tinyint(2) DEFAULT NULL,
  `refid` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `countrytable_logid` int(11) NOT NULL,
  `gender_idgender` int(11) NOT NULL,
  PRIMARY KEY (`idusers`),
  KEY `fk_users_countrytable1_idx` (`countrytable_logid`),
  KEY `fk_users_gender1_idx` (`gender_idgender`),
  CONSTRAINT `fk_users_countrytable1` FOREIGN KEY (`countrytable_logid`) REFERENCES `countrytable` (`logid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_gender1` FOREIGN KEY (`gender_idgender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersandpost`
--

DROP TABLE IF EXISTS `usersandpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersandpost` (
  `userspost_logid` int(11) NOT NULL,
  `userspost_idusers` int(11) NOT NULL,
  `userspost_postid` int(11) NOT NULL,
  `comment` varchar(455) NOT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`userspost_logid`),
  KEY `fokey_idusers_idx` (`userspost_idusers`),
  KEY `fokey_postid_idx` (`userspost_postid`),
  CONSTRAINT `fokey_idusers` FOREIGN KEY (`userspost_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fokey_postid` FOREIGN KEY (`userspost_postid`) REFERENCES `posttable` (`postid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersandpost`
--

LOCK TABLES `usersandpost` WRITE;
/*!40000 ALTER TABLE `usersandpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersandpost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 20:13:45
