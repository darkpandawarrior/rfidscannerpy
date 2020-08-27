-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: rfidreader
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `carddetails`
--

DROP TABLE IF EXISTS `carddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carddetails` (
  `datestamp` datetime NOT NULL,
  `uid` varchar(45) DEFAULT NULL,
  `authmessage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`datestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carddetails`
--

LOCK TABLES `carddetails` WRITE;
/*!40000 ALTER TABLE `carddetails` DISABLE KEYS */;
INSERT INTO `carddetails` VALUES ('2020-02-02 11:52:32',' CB FD 58 89','Authorized access'),('2020-02-02 11:52:35',' CB FD 58 89','Authorized access'),('2020-02-02 11:52:37',' CB FD 58 89','Authorized access'),('2020-02-02 11:52:40',' CB FD 58 89','Authorized access'),('2020-02-02 11:52:43',' E0 34 81 18','Access denied'),('2020-02-02 11:52:44',' E0 34 81 18','Access denied'),('2020-02-02 11:52:45',' E0 34 81 18','Access denied'),('2020-02-02 11:54:32',' CB FD 58 89','Authorized access'),('2020-02-02 11:54:43',' CB FD 58 89','Authorized access'),('2020-02-02 11:54:45',' CB FD 58 89','Authorized access'),('2020-02-02 11:55:08',' E0 34 81 18','Access denied'),('2020-02-02 11:55:09',' E0 34 81 18','Access denied'),('2020-02-02 11:55:10',' E0 34 81 18','Access denied'),('2020-02-02 11:55:11',' E0 34 81 18','Access denied'),('2020-02-02 11:55:14',' CB FD 58 89','Authorized access'),('2020-02-02 11:55:16',' CB FD 58 89','Authorized access'),('2020-02-02 11:55:19',' CB FD 58 89','Authorized access'),('2020-02-02 11:55:21',' E0 34 81 18','Access denied'),('2020-02-02 11:55:22',' E0 34 81 18','Access denied'),('2020-02-02 11:55:23',' E0 34 81 18','Access denied'),('2020-02-02 11:55:24',' E0 34 81 18','Access denied');
/*!40000 ALTER TABLE `carddetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-18 15:38:50
