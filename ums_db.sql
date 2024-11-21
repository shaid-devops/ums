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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `lm_id` int(9) DEFAULT NULL,
  `book_name` char(30) DEFAULT NULL,
  `lend_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `lm_id` (`lm_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`lm_id`) REFERENCES `lm_reg` (`lm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_names`
--

DROP TABLE IF EXISTS `dept_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_names` (
  `dept_id` int(9) NOT NULL AUTO_INCREMENT,
  `dept_name` char(40) NOT NULL,
  `stu_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `dept_names_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `stu_reg` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dept_names_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_names`
--

LOCK TABLES `dept_names` WRITE;
/*!40000 ALTER TABLE `dept_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lend_books`
--

DROP TABLE IF EXISTS `lend_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lend_books` (
  `lend_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `stu_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`lend_book_id`),
  KEY `stu_id` (`stu_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `lend_books_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lend_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lend_books`
--

LOCK TABLES `lend_books` WRITE;
/*!40000 ALTER TABLE `lend_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `lend_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lm_reg`
--

DROP TABLE IF EXISTS `lm_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lm_reg` (
  `lm_id` int(9) NOT NULL AUTO_INCREMENT,
  `mem_name` char(30) DEFAULT NULL,
  PRIMARY KEY (`lm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lm_reg`
--

LOCK TABLES `lm_reg` WRITE;
/*!40000 ALTER TABLE `lm_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lm_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `months` (
  `months_id` int(2) NOT NULL AUTO_INCREMENT,
  `months_name` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`months_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `months_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `notice_id` int(9) NOT NULL AUTO_INCREMENT,
  `notice_details` varchar(200) NOT NULL,
  `dept_name` char(40) NOT NULL,
  `dept_id` int(9) NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `notices_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept_names` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(9) DEFAULT NULL,
  `months` char(16) DEFAULT NULL,
  `semester` enum('Summer','Fall','Winter') DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `pay_method` enum('Cash','Bank','MFS') DEFAULT NULL,
  `bank_txn` varchar(20) DEFAULT NULL,
  `months_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `stu_id` (`stu_id`),
  KEY `months_id` (`months_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`months_id`) REFERENCES `months` (`months_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,6,'January','Winter',14000,'Cash','',NULL),(2,6,'February','Winter',16000,'Cash','',NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_dept`
--

DROP TABLE IF EXISTS `stu_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_dept` (
  `stu_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(9) DEFAULT NULL,
  `dept_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`stu_dept_id`),
  KEY `dept_id` (`dept_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `stu_dept_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_dept_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `dept_names` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_dept`
--

LOCK TABLES `stu_dept` WRITE;
/*!40000 ALTER TABLE `stu_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_lm_reg`
--

DROP TABLE IF EXISTS `stu_lm_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_lm_reg` (
  `stu_lm_reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `lm_id` int(9) DEFAULT NULL,
  `stu_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`stu_lm_reg_id`),
  KEY `stu_id` (`stu_id`),
  KEY `lm_id` (`lm_id`),
  CONSTRAINT `stu_lm_reg_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_lm_reg_ibfk_2` FOREIGN KEY (`lm_id`) REFERENCES `lm_reg` (`lm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_lm_reg`
--

LOCK TABLES `stu_lm_reg` WRITE;
/*!40000 ALTER TABLE `stu_lm_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_lm_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_pay`
--

DROP TABLE IF EXISTS `stu_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_pay` (
  `stu_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(9) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_pay_id`),
  KEY `payment_id` (`payment_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `stu_pay_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_reg` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_pay_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_pay`
--

LOCK TABLES `stu_pay` WRITE;
/*!40000 ALTER TABLE `stu_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_reg`
--

DROP TABLE IF EXISTS `stu_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_reg` (
  `stu_id` int(9) NOT NULL AUTO_INCREMENT,
  `f_name` char(20) NOT NULL,
  `l_name` char(20) NOT NULL,
  `father_name` char(20) NOT NULL,
  `mother_name` char(20) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` date NOT NULL,
  `blood_group` varchar(2) DEFAULT NULL,
  `nid` char(17) DEFAULT NULL,
  `passport` char(20) DEFAULT NULL,
  `pre_state` char(30) DEFAULT NULL,
  `pre_city` varchar(30) DEFAULT NULL,
  `pre_address` varchar(100) DEFAULT NULL,
  `per_state` char(30) DEFAULT NULL,
  `per_city` varchar(30) DEFAULT NULL,
  `per_address` varchar(100) DEFAULT NULL,
  `dept_name` char(40) NOT NULL,
  `dept_id` int(9) DEFAULT NULL,
  `passwd` varchar(40) NOT NULL,
  `SSC` varchar(100) DEFAULT NULL,
  `HSC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_reg`
--

LOCK TABLES `stu_reg` WRITE;
/*!40000 ALTER TABLE `stu_reg` DISABLE KEYS */;
INSERT INTO `stu_reg` VALUES (1,'siyam','IBN Nahid','test','tset','32','siyam@test.com','2024-08-08','A+','3313449','','test','test','test','test','tset','tse','CSE',NULL,'test','test 20212 4.2','test 20212 4.2'),(2,'Hasibun Nahar','Tuli','test','tset','32','tuli@test.com','2024-08-08','A+','331344943','','test','test','test','test','tset','tse','CSE',NULL,'test','test 20212 4.2','test 20212 4.2'),(3,'Enamul','Hassan','test','tset','32','test@test.com','2024-08-08','A+','331344943','','test','test','test','test','tset','tse','EEE',NULL,'test','test 20212 4.2','test 20212 4.2'),(4,'Shamim','Hassan','test','tset','32','shamim@test.com','2024-08-08','A+','0000331344943201','','test','test','test','test','tset','tse','ENGLISH',NULL,'test','test 20212 4.2','test 20212 4.2'),(5,'Tanvir','Hassan','test','tset','32','test@test.com','2024-08-08','A+','00003313449432018','','test','test','test','test','tset','tse','LAW',NULL,'test','test 20212 4.2','test 20212 4.2'),(6,'ilhan','khondokar','ABC','XYZ','23423','test@mail.com','2012-12-12','A+','234642123','','Dhaka','Dhaka','dhaka','Bangladesh','Bangladesh','Bangladesh','CSE',NULL,'test','2020','2022');
/*!40000 ALTER TABLE `stu_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_dept`
--

DROP TABLE IF EXISTS `teacher_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_dept` (
  `teacher_dept_id` int(9) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(9) DEFAULT NULL,
  `dept_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`teacher_dept_id`),
  KEY `dept_id` (`dept_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `teacher_dept_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept_names` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacher_dept_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_dept`
--

LOCK TABLES `teacher_dept` WRITE;
/*!40000 ALTER TABLE `teacher_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `teacher_id` int(9) NOT NULL AUTO_INCREMENT,
  `teacher_name` char(30) DEFAULT NULL,
  `dept_name` char(9) DEFAULT NULL,
  `salary` int(6) DEFAULT NULL,
  `dept_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept_names` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Assistant professor','CSE',100000,NULL),(2,'Senior lecturere','EEE',70000,NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 10:28:15
