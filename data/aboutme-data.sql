-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aboutme-data
-- ------------------------------------------------------
-- Server version	9.0.1-commercial

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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` bigint unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'FUNNYTSHIRTS','Full-Stack Web Application','Team Lead, Full-Stack Developer','Collaborated with a team to develop a web application using React, Node.js, and MySQL, deployed on AWS with Apache2|Established protected routes for secure user access using integrated cookies/sessions for data management|Implemented Redux store for state management|Implemented Dynamic navigation bar depending on user\'s login status'),(2,'GAMEGRID','Full-Stack Web Application','Full-Stack Developer','Collaborated with a team to develop a MERN (MongoDB, Express, React, Node) stack web application|Implemented user authentication features|Implemented user role-based access control, enabling users to have distinct capabilities based on their assigned roles'),(3,'WAV Audio Steganalysis Program','Python Program','Python Developer','Collaborated with peer to develop Python application using machine learning to detect hidden data using LSB algorithm within WAV audio files|Developed additional support scripts in Python'),(4,'RowdE-Books','Full-Stack Web Application','Front-end Developer','Collaborated with a team to develop a web application using React and hosted by Google’s Firebase|Implemented handing of search and sorting functionalities');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aboutme-data'
--

--
-- Dumping routines for database 'aboutme-data'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 17:24:21
