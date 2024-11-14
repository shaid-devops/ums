/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ums_db
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `dept_names`
--

DROP TABLE IF EXISTS `dept_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_names` (
  `dept_id` int(2) NOT NULL AUTO_INCREMENT,
  `dept_name` char(40) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_names`
--

LOCK TABLES `dept_names` WRITE;
/*!40000 ALTER TABLE `dept_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lm_reg`
--

DROP TABLE IF EXISTS `lm_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lm_reg` (
  `stu_id` int(11) NOT NULL,
  `mem_name` char(40) NOT NULL,
  `dept_name` char(20) DEFAULT NULL,
  `contact_num` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lm_reg`
--

LOCK TABLES `lm_reg` WRITE;
/*!40000 ALTER TABLE `lm_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lm_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_reg`
--

DROP TABLE IF EXISTS `stu_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_reg` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` char(20) NOT NULL,
  `l_name` char(20) NOT NULL,
  `dept_name` char(30) NOT NULL,
  `email` char(40) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_reg`
--

LOCK TABLES `stu_reg` WRITE;
/*!40000 ALTER TABLE `stu_reg` DISABLE KEYS */;
INSERT INTO `stu_reg` VALUES (1,'shaid','hassan','cse','shaid@mail.com','shaid'),(2,'ekramul','hossain','EEE','ekram@mail.com','ekram'),(3,'ilhan','khondakar','cse','ilhan@mail.com','ilhan'),(4,'siyam','fahim','cse','siyam@mail.com','siyam'),(5,'Tuly','akter','CSE','tuli@mail.com','tuli');
/*!40000 ALTER TABLE `stu_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14  9:09:13
