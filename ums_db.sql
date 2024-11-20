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
  PRIMARY KEY (`book_id`)
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
  `stu_id` int(9) NOT NULL,
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
-- Table structure for table `lend_books`
--

DROP TABLE IF EXISTS `lend_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lend_books` (
  `lend_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `stu_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`lend_book_id`)
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
  `lm_reg_id` int(9) NOT NULL AUTO_INCREMENT,
  `mem_name` char(30) DEFAULT NULL,
  PRIMARY KEY (`lm_reg_id`)
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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(9) DEFAULT NULL,
  `pay_month` enum('January','February','March','April','May','June','July','Auguest','September','October','November','December') DEFAULT NULL,
  `semester` enum('Summer','Fall','Winter') DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `pay_method` enum('Cash','Bank','MFS') DEFAULT NULL,
  `bank_txn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_name`
--

DROP TABLE IF EXISTS `state_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_name` (
  `state_id` int(3) NOT NULL AUTO_INCREMENT,
  `state_name` char(40) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_name`
--

LOCK TABLES `state_name` WRITE;
/*!40000 ALTER TABLE `state_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `state_name` ENABLE KEYS */;
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
  PRIMARY KEY (`stu_dept_id`)
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
  PRIMARY KEY (`stu_lm_reg_id`)
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
  PRIMARY KEY (`stu_pay_id`)
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
  `nid` int(17) DEFAULT NULL,
  `passport` char(20) DEFAULT NULL,
  `pre_state` char(30) DEFAULT NULL,
  `pre_city` varchar(30) DEFAULT NULL,
  `pre_address` varchar(100) DEFAULT NULL,
  `per_state` char(30) DEFAULT NULL,
  `per_city` varchar(30) DEFAULT NULL,
  `per_address` varchar(100) DEFAULT NULL,
  `dept_name` char(40) NOT NULL,
  `edu_qualification` varchar(30) DEFAULT NULL,
  `dept_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_reg`
--

LOCK TABLES `stu_reg` WRITE;
/*!40000 ALTER TABLE `stu_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_state`
--

DROP TABLE IF EXISTS `stu_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_state` (
  `stu_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(3) DEFAULT NULL,
  `stu_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`stu_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_state`
--

LOCK TABLES `stu_state` WRITE;
/*!40000 ALTER TABLE `stu_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_state` ENABLE KEYS */;
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
  PRIMARY KEY (`teacher_dept_id`)
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
  `dept_name` int(9) DEFAULT NULL,
  `dept_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `u_id` int(9) NOT NULL AUTO_INCREMENT,
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

-- Dump completed on 2024-11-20 10:08:12
