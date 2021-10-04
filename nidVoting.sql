-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: nid
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bid` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `union_city` varchar(255) DEFAULT NULL,
  `upazila` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (15,'111114','Mymensingh','Mymensingh','2021-09-04','Honors','Saju Ahmed','Male','Sujana Begum','0178899554','Sajib Khan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','/assets/images/headshotsr.jpg'),(20,'111118','Munshigonj','Barisal','2021-09-08','MA','Talukdar','Male','Tamanna','0178899554','Tamim Ahmed','Mazidpur Dayhata','1541','Islam','Birtara','Sreenagar','Birtara','2','/assets/images/lynch.jpg'),(23,'111121','Rangpur','Barisal','','MA','Tapan Hossain','Female','Tonni Begum','0178899554','Tania Begum','Mazidpur Dayhata','1541','Islam','Birtara','Sirajdikhan','Birtara','4','/assets/images/attire.png'),(25,'1234','Chattogram','Chattogram','2021-09-01','HSC','asdf','Male','fsa','01347872364','dsf','dasd','4343','Hindu','dsaf','Sirajdikhan','asdf','4','/assets/images/istockphoto.jpg');
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `voting_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Jatrabari','Sujan','Awami League','MP','/assets/partySymbol/awm.jpg','npe2021'),(3,'Jatrabari','Kamal','BNP','MP','/assets/partySymbol/bnp.jpg','npe2021'),(4,'Dhaka-1','Habib','Bangladesh Nationalism Party','MP','/assets/partySymbol/rsz_workersparty.jpg','npe2021'),(7,'Dhaka','G.M. Kader','Jatiya Party','MP','/assets/partySymbol/japa.jpg','npe2021'),(8,'dsdas','sdf','Jatiya Party','MP','/assets/partySymbol/japa.jpg','np2022');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (32);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `id` int NOT NULL AUTO_INCREMENT,
  `party_code` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `party_symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (7,'aaa','AAA','/assets/partySymbol/awm.jpg'),(16,'bbb','BBB','/assets/partySymbol/bnp.jpg'),(17,'BNP','Bangladesh Nationalist Party','/assets/partySymbol/download.jpg'),(19,'JAPA','Jatiya Party','/assets/partySymbol/japa.jpg'),(20,'WP','Workers Party','/assets/partySymbol/rsz_workersparty.jpg'),(21,'AWML','Awami League','/assets/partySymbol/awm.jpg'),(22,'werw','werwe','/assets/partySymbol/awm.jpg');
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bid` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `union_city` varchar(255) DEFAULT NULL,
  `upazila` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'123456','Munshigonj','Dhaka','2021-09-14','Honors','Mr. A','Male','Mrs. B','0178899554','AA','Mazidpur Dayhata','1541','Islam','Mazidpur Dayhata','Sreenagar','Birtara','5','',0),(2,'123456','Chattogram','Chattogram','2021-09-29','Honors','Mr. A','Female','Mrs. B','0178899554','Sujana','Mazidpur Dayhata','1541','Hindu','Mazidpur Dayhata','Gojaria','Birtara','5',NULL,1),(3,'123456','Munshigonj','Dhaka','2021-09-15','Honors','Mr. A','Male','Mrs. B','0178899554','Al-Amin','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Sreenagar','Birtara','5',NULL,1),(4,'123456','Munshigonj','Dhaka','2021-09-15','Honors','Mr. A','Male','Mrs. B','0178899554','Al-Amin','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Sreenagar','Birtara','5',NULL,1),(5,'123456','Munshigonj','Dhaka','2021-09-15','Honors','Mr. A','Male','Mrs. B','0178899554','Al-Amin','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Sreenagar','Birtara','5',NULL,1),(6,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','Kamal Hossain','Mazidpur Dayhata','1541','Islam','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(7,'123456','Munshigonj','Dhaka','2021-09-15','Honors','Mr. A','Male','Mrs. B','0178899554','Al-Amin','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Sreenagar','Birtara','5',NULL,1),(8,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','Hasan','Mazidpur Dayhata','1541','Islam','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(9,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','Monir','Mazidpur Dayhata','1541','Islam','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(10,'21312142','Rangpur','Dhaka','2021-09-23','HSC','Mr. A','Other','sdf','0178899554','Tesla','wrewqr','1233','Christ','MAJIDPUR DAYHATA','Sirajdikhan','rwrew','4',NULL,1),(11,'123456','Munshigonj','Dhaka','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','AA','Mazidpur Dayhata','1541','Other','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(12,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','AA','Mazidpur Dayhata','1541','Buddist','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(13,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','AA','Mazidpur Dayhata','1541','Buddist','Mazidpur Dayhata','Sreenagar','Birtara','5',NULL,1),(14,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','AA','Mazidpur Dayhata','1541','Buddist','Mazidpur Dayhata','Sreenagar','Birtara','5','',0),(15,'123456','Munshigonj','Khulna','2021-09-14','MA','Mr. A','Male','Mrs. B','0178899554','Topu','Mazidpur Dayhata','1541','Islam','Mazidpur Dayhata','Sreenagar','Birtara','5','',0),(16,'123456','Munshigonj','Dhaka','1996-02-21','HSC','Mr. A','Male','Mrs. B','0178899554','Abdul Salam','Mazidpur Dayhata','1541','Islam','Birtara','Sreenagar','Birtara','7',NULL,1),(17,'123456789','Munshigonj','Dhaka','2021-09-01','Honors','Abdul Ahmed','Male','Rokeya Begum','0178899554','Md. Abdul Ahad','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Lauhajang','Birtara','4','',1),(18,'123456','Bandarban','Chattogram','2021-09-01','Honors','ddd','Female','ddd','0178899554','DDDD','Mazidpur Dayhata','1541','Buddist','MAJIDPUR DAYHATA','Gojaria','Birtara','5','/assets/images/pexels-photo-220453.jpeg',1),(19,'111111','Rajshahi','Rajshahi','2021-09-01','Honors','Tapan Ahmed','Male','Tahmina begum','0178899554','Topu Raihan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','7','/assets/images/Dark.jpg',1),(20,'111112','Khulna','Khulna','2021-09-02','Honors','Billal Hossain','Male','Bushra Begum','0178899554','Bashir Hossain','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Gojaria','Birtara','5','/assets/images/derek.jpg',1),(21,'111114','Mymensingh','Mymensingh','2021-09-04','Honors','Saju Ahmed','Male','Sujana Begum','0178899554','Sajib Khan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','/assets/images/headshotsr.jpg',1),(22,'21312142','Chattogram','Dhaka','2021-09-29','Honors','Mr. A','Male','Mrs. B','0178899554','sujan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Sreenagar','Birtara','5','',1),(23,'111114','Mymensingh','Mymensingh','2021-09-04','Honors','Saju Ahmed','Male','Sujana Begum','0178899554','Sajib Khan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','/assets/images/headshotsr.jpg',1),(24,'111114','Mymensingh','Mymensingh','2021-09-04','Honors','Saju Ahmed','Male','Sujana Begum','0178899554','Sajib Khan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','/assets/images/headshotsr.jpg',1),(25,'111117','Rangpur','Rangpur','2021-09-07','Honors','Taimur Ahmed','Male','Tamanna Begum','0178899554','Kazi Tuhin','Mazidpur Dayhata','1541','Islam','Birtara','Gojaria','Birtara','6','/assets/images/karine.jpg',1),(26,'111115','Barisal','Barisal','2021-09-05','Honors','Rahim Ahmed','Female','Rehana Begum','0178899554','Rasheda Akter','Mazid Dayhata','1541','Islam','Birtara','Gojaria','Birtara','3','/assets/images/attire.png',1),(27,'111110','Bandarban','Rajshahi','2021-09-10','Honors','Habibur Rahman','Male','Sanjana Begum','0178899554','Sujan Khan','Mazidpur Dayhata','1541','Islam','Birtara','Gojaria','Birtara','5','/assets/images/minho.png',1),(28,'111119','Rangpur','Rangpur','2021-09-09','MA','Tapan Ahmed','Male','Tonni Begum','0178899554','Tahsin Rono','Mazidpur Dayhata','1541','Islam','Birtara','Sirajdikhan','Birtara','3','/assets/images/zheng.jpg',1),(29,'111116','Khulna','Khulna','2021-09-06','Honors','Nahid Ahmed','Female','Nahida Begum','0178899554','Nadia Sultana','Mazidpur Dayhata','1541','Islam','Birtara','Sirajdikhan','Birtara','1','/assets/images/getty.jpg',1),(30,'111113','Satkhira','Rangpur','2021-09-03','Honors','Monir Hossain','Male','Rokeya Begum','0178899554','Md. Mynuddin','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Lauhajang','Birtara','5','/assets/images/gerard.jpg',1);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `total_vote` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `voting_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (27,'Sujan','75.00','39','/assets/partySymbol/awm.jpg','Awami League','npe2021'),(28,'Kamal','15.38','8','/assets/partySymbol/rsz_workersparty.jpg','WP','npe2021'),(29,'Habib','7.69','4','/assets/partySymbol/bnp.jpg','BNP','npe2021'),(30,'G.M. Kader','1.92','1','/assets/partySymbol/japa.jpg','Jatiya Party','npe2021');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_apply`
--

DROP TABLE IF EXISTS `update_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_apply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bid` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `union_city` varchar(255) DEFAULT NULL,
  `upazila` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `rid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_apply`
--

LOCK TABLES `update_apply` WRITE;
/*!40000 ALTER TABLE `update_apply` DISABLE KEYS */;
INSERT INTO `update_apply` VALUES (17,'111111','Rajshahi','Rajshahi','2021-09-01','Honors','Tapan Ahmed','Male','Tahmina begum','0178899554','Topu Raihan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','7','19','/assets/images/Dark.jpg'),(18,'111112','Khulna','Khulna','2021-09-02','Honors','Billal Hossain','Male','Bushra Begum','0178899554','Bashir Hossain','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Gojaria','Birtara','5','20','/assets/images/derek.jpg'),(19,'111114','Mymensingh','Mymensingh','2021-09-04','Honors','Saju Ahmed','Male','Sujana Begum','0178899554','Sajib Khan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','21','/assets/images/headshotsr.jpg'),(20,'111111','Rajshahi','Rajshahi','2021-09-01','Honors','Tapan Ahmed','Male','Tahmina begum','0178899554','Topu Raihan','Mazidpur Dayhata','1541','Islam','MAJIDPUR DAYHATA','Tongibari','Birtara','5','19','/assets/images/Dark.jpg');
/*!40000 ALTER TABLE `update_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (13,'123','user'),(15,'123','admin'),(16,NULL,NULL),(17,NULL,NULL),(31,'123','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting`
--

DROP TABLE IF EXISTS `voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_post` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `voternid` varchar(255) DEFAULT NULL,
  `voting_code` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting`
--

LOCK TABLES `voting` WRITE;
/*!40000 ALTER TABLE `voting` DISABLE KEYS */;
INSERT INTO `voting` VALUES (1,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(3,'Kamal','MP','/assets/partySymbol/bnp.jpg',NULL,'npe2021','Dhaka-1','BNP',1),(4,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(5,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(6,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(7,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(8,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(9,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(10,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(11,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(12,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(13,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(14,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(15,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(16,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(17,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(18,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(19,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(20,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(21,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(22,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(23,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(24,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(25,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(26,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(27,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(28,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(29,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(30,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(31,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(32,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(33,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(34,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(35,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(36,'Sujan','MP','/assets/partySymbol/awm.jpg',NULL,'npe2021','Jatrabari','Awami League',1),(37,'Sujan','MP','/assets/partySymbol/awm.jpg','14','npe2021','Jatrabari','Awami League',1),(38,'Sujan','MP','/assets/partySymbol/awm.jpg','14','npe2021','Jatrabari','Awami League',1),(39,'Sujan','MP','/assets/partySymbol/awm.jpg','14','npe2021','Jatrabari','Awami League',1),(40,'Sujan','MP','/assets/partySymbol/awm.jpg','14','npe2021','Jatrabari','Awami League',1),(41,'Sujan','MP','/assets/partySymbol/awm.jpg','14','npe2021','Jatrabari','Awami League',1),(42,'Kamal','MP','/assets/partySymbol/bnp.jpg','14','npe2021','Jatrabari','BNP',1),(43,'Kamal','MP','/assets/partySymbol/bnp.jpg','14','npe2021','Jatrabari','BNP',1),(44,'Kamal','MP','/assets/partySymbol/bnp.jpg','14','npe2021','Jatrabari','BNP',1),(45,'Kamal','MP','/assets/partySymbol/bnp.jpg','14','npe2021','Jatrabari','BNP',1),(46,'Jamal','MP','/assets/partySymbol/bnp.jpg','15','npe2021','Dhaka-1','BNP',1),(47,'Jamal','MP','/assets/partySymbol/bnp.jpg','15','npe2021','Dhaka-1','BNP',1),(48,'Jamal','MP','/assets/partySymbol/bnp.jpg','15','npe2021','Dhaka-1','BNP',1),(49,'Jamal','MP','/assets/partySymbol/bnp.jpg','15','npe2021','Dhaka-1','BNP',1),(50,'Jamal','MP','/assets/partySymbol/bnp.jpg','15','npe2021','Dhaka-1','BNP',1),(51,'Jamal','MP','/assets/partySymbol/bnp.jpg','16','npe2021','Dhaka-1','BNP',1),(52,'Jamal','MP','/assets/partySymbol/bnp.jpg','16','npe2021','Dhaka-1','BNP',1),(53,'G.M. Kader','MP','/assets/partySymbol/japa.jpg','19','npe2021','Dhaka','Jatiya Party',1),(54,'Habib','MP','/assets/partySymbol/rsz_workersparty.jpg','20','npe2021','Dhaka-1','WP',1),(55,'Sujan','MP','/assets/partySymbol/awm.jpg','28','npe2021','Jatrabari','Awami League',1);
/*!40000 ALTER TABLE `voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votting_type`
--

DROP TABLE IF EXISTS `votting_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votting_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votting_type`
--

LOCK TABLES `votting_type` WRITE;
/*!40000 ALTER TABLE `votting_type` DISABLE KEYS */;
INSERT INTO `votting_type` VALUES (1,'2021-12-30','National','npe2021'),(2,'2021-09-01','City-Corporation','ce2021'),(3,'2021-09-01','City-Corporation','dscce2021'),(4,'2021-09-08','National','np2022');
/*!40000 ALTER TABLE `votting_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01  9:03:54
