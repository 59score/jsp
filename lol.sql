-- MySQL dump 10.13  Distrib 5.6.28, for Win64 (x86_64)
--
-- Host: localhost    Database: lol
-- ------------------------------------------------------
-- Server version	5.6.28-log

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
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `nick_name` varchar(45) DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero`
--

LOCK TABLES `hero` WRITE;
/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES (0000000001,'1','1','1','1','1'),(0000000009,'盖伦','德玛西亚之力','sadf','/hero_image/big86000.jpg','/hero_image/big86000.jpg'),(0000000012,'艾希','寒冰射手','/hero_image/big86000.jpg','/hero_image/big86000.jpg','asdfjkad~~'),(0000000013,'亚索','击风剑豪','/hero_image/big86000.jpg','亚索','过生日太难'),(0000000014,'亚索','击风剑豪','/hero_image/big86000.jpg','亚索','过生日太难'),(0000000015,'盖伦','德玛西亚之力','sadf','盖伦','/hero_image/big86000.jpg'),(0000000016,'盖伦','德玛西亚之力','/hero_image/big86000.jpg','盖伦',''),(0000000017,'盖伦','德玛西亚之力','/hero_image/big86000.jpg','盖伦',''),(0000000018,'亚索','击风剑豪','/hero_image/big86000.jpg','亚索','过生日太难'),(0000000019,'盖伦','德玛西亚之力~~','sadf','盖伦','/hero_image/big86000.jpg'),(0000000021,'盖伦','德玛西亚',NULL,NULL,NULL),(0000000022,'盖伦','德玛西亚',NULL,NULL,NULL);
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-08 11:00:28
