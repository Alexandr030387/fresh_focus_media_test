-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fresh_focus_media
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `customer_job`
--

DROP TABLE IF EXISTS `customer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_job` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `job_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_job_customer_id_foreign` (`customer_id`),
  KEY `customer_job_job_id_foreign` (`job_id`),
  CONSTRAINT `customer_job_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE SET NULL,
  CONSTRAINT `customer_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_job`
--

LOCK TABLES `customer_job` WRITE;
/*!40000 ALTER TABLE `customer_job` DISABLE KEYS */;
INSERT INTO `customer_job` VALUES (1,1,29),(2,1,2),(3,1,30),(4,1,24),(5,1,7),(6,1,26),(7,1,19),(8,1,3),(9,1,25),(10,1,5),(11,1,16),(12,1,22),(13,1,14),(14,1,9),(15,1,11),(16,1,10),(17,1,1),(18,1,23),(19,1,28),(20,1,18),(21,2,23),(22,2,1),(23,2,8),(24,2,14),(25,2,18),(26,2,19),(27,2,4),(28,2,21),(29,2,2),(30,2,15),(31,2,20),(32,2,29),(33,2,24),(34,2,13),(35,2,6),(36,2,27),(37,2,5),(38,2,28),(39,2,9),(40,2,16),(41,3,22),(42,3,30),(43,3,14),(44,3,2),(45,3,25),(46,3,15),(47,3,11),(48,3,21),(49,3,28),(50,3,1),(51,3,29),(52,3,20),(53,3,12),(54,3,18),(55,3,13),(56,3,19),(57,3,10),(58,3,23),(59,3,8),(60,3,27),(61,4,25),(62,4,21),(63,4,30),(64,4,12),(65,4,22),(66,4,13),(67,4,5),(68,4,17),(69,4,27),(70,4,8),(71,4,28),(72,4,4),(73,4,15),(74,4,23),(75,4,20),(76,4,14),(77,4,1),(78,4,24),(79,4,19),(80,4,9),(81,5,1),(82,5,7),(83,5,20),(84,5,21),(85,5,24),(86,5,29),(87,5,16),(88,5,15),(89,5,13),(90,5,23),(91,5,9),(92,5,14),(93,5,17),(94,5,11),(95,5,5),(96,5,22),(97,5,2),(98,5,18),(99,5,30),(100,5,27),(101,6,4),(102,6,30),(103,6,28),(104,6,7),(105,6,22),(106,6,11),(107,6,9),(108,6,14),(109,6,2),(110,6,5),(111,6,21),(112,6,15),(113,6,16),(114,6,18),(115,6,20),(116,6,3),(117,6,12),(118,6,13),(119,6,6),(120,6,23),(121,7,20),(122,7,21),(123,7,6),(124,7,5),(125,7,11),(126,7,7),(127,7,29),(128,7,22),(129,7,10),(130,7,26),(131,7,1),(132,7,25),(133,7,17),(134,7,3),(135,7,4),(136,7,30),(137,7,23),(138,7,14),(139,7,13),(140,7,24),(141,8,11),(142,8,26),(143,8,10),(144,8,16),(145,8,2),(146,8,6),(147,8,30),(148,8,3),(149,8,29),(150,8,21),(151,8,15),(152,8,22),(153,8,20),(154,8,27),(155,8,5),(156,8,14),(157,8,1),(158,8,4),(159,8,18),(160,8,13),(161,9,3),(162,9,15),(163,9,5),(164,9,19),(165,9,18),(166,9,9),(167,9,17),(168,9,14),(169,9,20),(170,9,26),(171,9,12),(172,9,1),(173,9,29),(174,9,24),(175,9,23),(176,9,25),(177,9,6),(178,9,11),(179,9,2),(180,9,13),(181,10,27),(182,10,22),(183,10,25),(184,10,9),(185,10,11),(186,10,15),(187,10,21),(188,10,12),(189,10,19),(190,10,3),(191,10,5),(192,10,18),(193,10,6),(194,10,2),(195,10,23),(196,10,20),(197,10,14),(198,10,4),(199,10,29),(200,10,28),(201,11,24),(202,11,10),(203,11,13),(204,11,16),(205,11,7),(206,11,1),(207,11,25),(208,11,5),(209,11,18),(210,11,9),(211,11,30),(212,11,12),(213,11,23),(214,11,28),(215,11,14),(216,11,19),(217,11,11),(218,11,17),(219,11,26),(220,11,15),(221,12,16),(222,12,21),(223,12,13),(224,12,26),(225,12,25),(226,12,27),(227,12,19),(228,12,18),(229,12,7),(230,12,20),(231,12,22),(232,12,12),(233,12,4),(234,12,5),(235,12,14),(236,12,9),(237,12,23),(238,12,24),(239,12,11),(240,12,2),(241,13,16),(242,13,22),(243,13,3),(244,13,10),(245,13,27),(246,13,24),(247,13,26),(248,13,1),(249,13,13),(250,13,25),(251,13,12),(252,13,28),(253,13,15),(254,13,21),(255,13,20),(256,13,14),(257,13,17),(258,13,5),(259,13,11),(260,13,18),(261,14,25),(262,14,7),(263,14,8),(264,14,20),(265,14,6),(266,14,9),(267,14,11),(268,14,13),(269,14,22),(270,14,23),(271,14,21),(272,14,15),(273,14,5),(274,14,3),(275,14,28),(276,14,30),(277,14,27),(278,14,19),(279,14,10),(280,14,12),(281,15,26),(282,15,21),(283,15,16),(284,15,8),(285,15,9),(286,15,11),(287,15,14),(288,15,3),(289,15,10),(290,15,12),(291,15,22),(292,15,28),(293,15,29),(294,15,7),(295,15,27),(296,15,1),(297,15,25),(298,15,24),(299,15,2),(300,15,5),(301,16,2),(302,16,17),(303,16,22),(304,16,3),(305,16,18),(306,16,6),(307,16,29),(308,16,13),(309,16,30),(310,16,27),(311,16,24),(312,16,23),(313,16,15),(314,16,4),(315,16,1),(316,16,14),(317,16,16),(318,16,7),(319,16,5),(320,16,19),(321,17,8),(322,17,15),(323,17,5),(324,17,23),(325,17,26),(326,17,18),(327,17,10),(328,17,29),(329,17,30),(330,17,20),(331,17,24),(332,17,19),(333,17,28),(334,17,12),(335,17,14),(336,17,1),(337,17,25),(338,17,21),(339,17,22),(340,17,6),(341,18,10),(342,18,15),(343,18,8),(344,18,6),(345,18,12),(346,18,13),(347,18,29),(348,18,7),(349,18,16),(350,18,21),(351,18,27),(352,18,18),(353,18,25),(354,18,17),(355,18,2),(356,18,20),(357,18,5),(358,18,22),(359,18,1),(360,18,11),(361,19,27),(362,19,25),(363,19,9),(364,19,7),(365,19,5),(366,19,20),(367,19,13),(368,19,11),(369,19,28),(370,19,29),(371,19,6),(372,19,17),(373,19,16),(374,19,1),(375,19,19),(376,19,23),(377,19,10),(378,19,30),(379,19,26),(380,19,2),(381,20,28),(382,20,1),(383,20,27),(384,20,12),(385,20,22),(386,20,15),(387,20,13),(388,20,20),(389,20,17),(390,20,19),(391,20,3),(392,20,21),(393,20,4),(394,20,18),(395,20,26),(396,20,2),(397,20,10),(398,20,9),(399,20,23),(400,20,11),(401,21,14),(402,21,7),(403,21,15),(404,21,27),(405,21,11),(406,21,6),(407,21,26),(408,21,16),(409,21,21),(410,21,10),(411,21,18),(412,21,20),(413,21,5),(414,21,25),(415,21,23),(416,21,22),(417,21,13),(418,21,9),(419,21,30),(420,21,29),(421,22,27),(422,22,16),(423,22,26),(424,22,17),(425,22,4),(426,22,12),(427,22,22),(428,22,11),(429,22,5),(430,22,18),(431,22,13),(432,22,15),(433,22,3),(434,22,25),(435,22,1),(436,22,9),(437,22,7),(438,22,10),(439,22,8),(440,22,14),(441,23,26),(442,23,6),(443,23,3),(444,23,18),(445,23,1),(446,23,12),(447,23,23),(448,23,28),(449,23,2),(450,23,20),(451,23,16),(452,23,4),(453,23,10),(454,23,30),(455,23,11),(456,23,7),(457,23,21),(458,23,17),(459,23,13),(460,23,8),(461,24,6),(462,24,26),(463,24,12),(464,24,5),(465,24,30),(466,24,8),(467,24,13),(468,24,2),(469,24,19),(470,24,17),(471,24,7),(472,24,14),(473,24,24),(474,24,23),(475,24,18),(476,24,3),(477,24,28),(478,24,22),(479,24,15),(480,24,9),(481,25,28),(482,25,12),(483,25,22),(484,25,17),(485,25,9),(486,25,30),(487,25,15),(488,25,24),(489,25,3),(490,25,16),(491,25,21),(492,25,19),(493,25,29),(494,25,1),(495,25,5),(496,25,23),(497,25,27),(498,25,14),(499,25,26),(500,25,10),(501,26,2),(502,26,6),(503,26,26),(504,26,16),(505,26,22),(506,26,24),(507,26,9),(508,26,30),(509,26,13),(510,26,19),(511,26,4),(512,26,7),(513,26,15),(514,26,8),(515,26,29),(516,26,27),(517,26,21),(518,26,1),(519,26,23),(520,26,10),(521,27,3),(522,27,28),(523,27,9),(524,27,27),(525,27,14),(526,27,25),(527,27,21),(528,27,30),(529,27,12),(530,27,18),(531,27,20),(532,27,10),(533,27,5),(534,27,8),(535,27,11),(536,27,15),(537,27,29),(538,27,24),(539,27,22),(540,27,4),(541,28,3),(542,28,26),(543,28,7),(544,28,4),(545,28,17),(546,28,25),(547,28,12),(548,28,18),(549,28,8),(550,28,14),(551,28,30),(552,28,28),(553,28,10),(554,28,9),(555,28,27),(556,28,21),(557,28,1),(558,28,13),(559,28,20),(560,28,22),(561,29,3),(562,29,28),(563,29,29),(564,29,4),(565,29,14),(566,29,6),(567,29,8),(568,29,18),(569,29,30),(570,29,23),(571,29,12),(572,29,11),(573,29,27),(574,29,16),(575,29,9),(576,29,19),(577,29,24),(578,29,5),(579,29,21),(580,29,10),(581,30,10),(582,30,27),(583,30,5),(584,30,30),(585,30,16),(586,30,1),(587,30,3),(588,30,7),(589,30,21),(590,30,12),(591,30,11),(592,30,18),(593,30,13),(594,30,25),(595,30,29),(596,30,26),(597,30,24),(598,30,4),(599,30,19),(600,30,9);
/*!40000 ALTER TABLE `customer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Wilderman-Skiles'),(2,'Langworth-Trantow'),(3,'Bergnaum-Lubowitz'),(4,'Williamson LLC'),(5,'Wilkinson, Altenwerth and Auer'),(6,'Hahn, Beatty and Quitzon'),(7,'Langosh-Torphy'),(8,'VonRueden-Harvey'),(9,'Moore and Sons'),(10,'Wilderman, Zieme and Lynch'),(11,'Bogan-Friesen'),(12,'Durgan Group'),(13,'O\'Connell-Lockman'),(14,'Daugherty-Connelly'),(15,'Wolff, Kemmer and Greenholt'),(16,'Bergstrom, Ebert and Pacocha'),(17,'Kertzmann-Kreiger'),(18,'Hills, Bode and Orn'),(19,'Jakubowski-Stark'),(20,'Wyman LLC'),(21,'Reichel LLC'),(22,'VonRueden-Jacobi'),(23,'Hauck-Reichert'),(24,'Schowalter, Streich and Hegmann'),(25,'Tillman PLC'),(26,'Blick, Erdman and Erdman'),(27,'McLaughlin Ltd'),(28,'Reynolds, Medhurst and Stracke'),(29,'Vandervort-Monahan'),(30,'Murphy, Harris and Koepp');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_location`
--

DROP TABLE IF EXISTS `job_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_location` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned DEFAULT NULL,
  `location_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_location_job_id_foreign` (`job_id`),
  KEY `job_location_location_id_foreign` (`location_id`),
  CONSTRAINT `job_location_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE SET NULL,
  CONSTRAINT `job_location_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_location`
--

LOCK TABLES `job_location` WRITE;
/*!40000 ALTER TABLE `job_location` DISABLE KEYS */;
INSERT INTO `job_location` VALUES (1,1,9),(2,1,11),(3,1,7),(4,1,6),(5,1,10),(6,1,16),(7,1,18),(8,1,1),(9,1,28),(10,1,2),(11,1,25),(12,1,15),(13,1,22),(14,1,26),(15,1,12),(16,1,27),(17,1,8),(18,1,5),(19,1,13),(20,1,14),(21,2,9),(22,2,1),(23,2,17),(24,2,15),(25,2,6),(26,2,13),(27,2,19),(28,2,27),(29,2,26),(30,2,4),(31,2,21),(32,2,7),(33,2,25),(34,2,29),(35,2,16),(36,2,30),(37,2,12),(38,2,22),(39,2,8),(40,2,23),(41,3,2),(42,3,28),(43,3,5),(44,3,6),(45,3,1),(46,3,17),(47,3,12),(48,3,7),(49,3,23),(50,3,15),(51,3,4),(52,3,13),(53,3,19),(54,3,21),(55,3,22),(56,3,29),(57,3,30),(58,3,16),(59,3,3),(60,3,24),(61,4,27),(62,4,24),(63,4,1),(64,4,23),(65,4,2),(66,4,11),(67,4,22),(68,4,7),(69,4,26),(70,4,4),(71,4,5),(72,4,29),(73,4,16),(74,4,15),(75,4,10),(76,4,12),(77,4,14),(78,4,13),(79,4,21),(80,4,30),(81,5,22),(82,5,13),(83,5,15),(84,5,10),(85,5,30),(86,5,6),(87,5,7),(88,5,29),(89,5,17),(90,5,24),(91,5,12),(92,5,26),(93,5,5),(94,5,23),(95,5,25),(96,5,28),(97,5,18),(98,5,21),(99,5,11),(100,5,1),(101,6,12),(102,6,30),(103,6,11),(104,6,21),(105,6,3),(106,6,16),(107,6,4),(108,6,19),(109,6,7),(110,6,17),(111,6,8),(112,6,29),(113,6,20),(114,6,1),(115,6,23),(116,6,25),(117,6,5),(118,6,14),(119,6,15),(120,6,22),(121,7,25),(122,7,26),(123,7,5),(124,7,22),(125,7,27),(126,7,4),(127,7,9),(128,7,21),(129,7,16),(130,7,15),(131,7,20),(132,7,3),(133,7,1),(134,7,14),(135,7,11),(136,7,17),(137,7,30),(138,7,6),(139,7,19),(140,7,28),(141,8,25),(142,8,4),(143,8,29),(144,8,13),(145,8,12),(146,8,28),(147,8,14),(148,8,23),(149,8,20),(150,8,24),(151,8,26),(152,8,2),(153,8,6),(154,8,10),(155,8,8),(156,8,5),(157,8,7),(158,8,19),(159,8,3),(160,8,22),(161,9,24),(162,9,12),(163,9,21),(164,9,15),(165,9,4),(166,9,14),(167,9,22),(168,9,16),(169,9,7),(170,9,19),(171,9,1),(172,9,27),(173,9,3),(174,9,10),(175,9,5),(176,9,8),(177,9,29),(178,9,26),(179,9,2),(180,9,28),(181,10,15),(182,10,24),(183,10,28),(184,10,16),(185,10,27),(186,10,4),(187,10,22),(188,10,12),(189,10,29),(190,10,14),(191,10,9),(192,10,18),(193,10,23),(194,10,5),(195,10,7),(196,10,25),(197,10,2),(198,10,20),(199,10,3),(200,10,8),(201,11,17),(202,11,19),(203,11,29),(204,11,28),(205,11,16),(206,11,1),(207,11,30),(208,11,27),(209,11,13),(210,11,5),(211,11,26),(212,11,18),(213,11,11),(214,11,23),(215,11,9),(216,11,15),(217,11,2),(218,11,24),(219,11,14),(220,11,7),(221,12,2),(222,12,7),(223,12,28),(224,12,13),(225,12,16),(226,12,19),(227,12,25),(228,12,4),(229,12,9),(230,12,18),(231,12,27),(232,12,24),(233,12,22),(234,12,30),(235,12,10),(236,12,5),(237,12,11),(238,12,6),(239,12,23),(240,12,29),(241,13,14),(242,13,26),(243,13,11),(244,13,16),(245,13,28),(246,13,17),(247,13,5),(248,13,23),(249,13,13),(250,13,27),(251,13,9),(252,13,6),(253,13,1),(254,13,30),(255,13,18),(256,13,15),(257,13,21),(258,13,4),(259,13,10),(260,13,2),(261,14,30),(262,14,17),(263,14,27),(264,14,7),(265,14,13),(266,14,5),(267,14,19),(268,14,21),(269,14,2),(270,14,3),(271,14,24),(272,14,26),(273,14,6),(274,14,8),(275,14,11),(276,14,28),(277,14,18),(278,14,12),(279,14,14),(280,14,10),(281,15,8),(282,15,5),(283,15,20),(284,15,27),(285,15,10),(286,15,30),(287,15,13),(288,15,29),(289,15,26),(290,15,25),(291,15,9),(292,15,4),(293,15,2),(294,15,6),(295,15,16),(296,15,19),(297,15,3),(298,15,14),(299,15,7),(300,15,24),(301,16,29),(302,16,15),(303,16,1),(304,16,9),(305,16,19),(306,16,18),(307,16,11),(308,16,22),(309,16,30),(310,16,20),(311,16,12),(312,16,3),(313,16,2),(314,16,27),(315,16,6),(316,16,26),(317,16,4),(318,16,16),(319,16,17),(320,16,8),(321,17,5),(322,17,28),(323,17,1),(324,17,22),(325,17,26),(326,17,8),(327,17,9),(328,17,17),(329,17,7),(330,17,21),(331,17,29),(332,17,18),(333,17,6),(334,17,10),(335,17,2),(336,17,14),(337,17,4),(338,17,20),(339,17,3),(340,17,19),(341,18,19),(342,18,7),(343,18,29),(344,18,25),(345,18,4),(346,18,8),(347,18,5),(348,18,24),(349,18,1),(350,18,20),(351,18,28),(352,18,18),(353,18,21),(354,18,16),(355,18,23),(356,18,27),(357,18,2),(358,18,17),(359,18,3),(360,18,9),(361,19,12),(362,19,30),(363,19,27),(364,19,29),(365,19,3),(366,19,5),(367,19,11),(368,19,9),(369,19,2),(370,19,26),(371,19,23),(372,19,22),(373,19,28),(374,19,25),(375,19,13),(376,19,7),(377,19,21),(378,19,6),(379,19,17),(380,19,14),(381,20,6),(382,20,1),(383,20,12),(384,20,5),(385,20,28),(386,20,20),(387,20,10),(388,20,26),(389,20,25),(390,20,14),(391,20,24),(392,20,22),(393,20,17),(394,20,19),(395,20,27),(396,20,18),(397,20,3),(398,20,13),(399,20,4),(400,20,30),(401,21,18),(402,21,9),(403,21,16),(404,21,4),(405,21,10),(406,21,6),(407,21,24),(408,21,2),(409,21,25),(410,21,5),(411,21,19),(412,21,20),(413,21,28),(414,21,8),(415,21,11),(416,21,27),(417,21,30),(418,21,22),(419,21,29),(420,21,23),(421,22,29),(422,22,30),(423,22,26),(424,22,8),(425,22,13),(426,22,19),(427,22,14),(428,22,5),(429,22,23),(430,22,28),(431,22,25),(432,22,2),(433,22,17),(434,22,10),(435,22,11),(436,22,20),(437,22,6),(438,22,27),(439,22,15),(440,22,22),(441,23,12),(442,23,29),(443,23,18),(444,23,30),(445,23,21),(446,23,11),(447,23,9),(448,23,23),(449,23,3),(450,23,16),(451,23,8),(452,23,1),(453,23,25),(454,23,4),(455,23,14),(456,23,17),(457,23,15),(458,23,27),(459,23,5),(460,23,20),(461,24,5),(462,24,13),(463,24,20),(464,24,29),(465,24,18),(466,24,24),(467,24,10),(468,24,12),(469,24,1),(470,24,4),(471,24,15),(472,24,23),(473,24,2),(474,24,21),(475,24,6),(476,24,30),(477,24,22),(478,24,16),(479,24,8),(480,24,25),(481,25,22),(482,25,16),(483,25,27),(484,25,6),(485,25,23),(486,25,28),(487,25,20),(488,25,12),(489,25,25),(490,25,9),(491,25,24),(492,25,26),(493,25,30),(494,25,17),(495,25,1),(496,25,10),(497,25,14),(498,25,29),(499,25,13),(500,25,2),(501,26,22),(502,26,27),(503,26,16),(504,26,25),(505,26,19),(506,26,28),(507,26,5),(508,26,4),(509,26,1),(510,26,30),(511,26,6),(512,26,18),(513,26,9),(514,26,11),(515,26,23),(516,26,29),(517,26,3),(518,26,15),(519,26,14),(520,26,10),(521,27,12),(522,27,14),(523,27,20),(524,27,5),(525,27,4),(526,27,27),(527,27,3),(528,27,6),(529,27,10),(530,27,17),(531,27,13),(532,27,28),(533,27,19),(534,27,24),(535,27,11),(536,27,25),(537,27,22),(538,27,1),(539,27,21),(540,27,30),(541,28,22),(542,28,2),(543,28,28),(544,28,4),(545,28,7),(546,28,1),(547,28,6),(548,28,8),(549,28,19),(550,28,24),(551,28,26),(552,28,21),(553,28,16),(554,28,12),(555,28,17),(556,28,29),(557,28,9),(558,28,13),(559,28,20),(560,28,11),(561,29,9),(562,29,24),(563,29,17),(564,29,14),(565,29,18),(566,29,15),(567,29,2),(568,29,26),(569,29,10),(570,29,4),(571,29,16),(572,29,1),(573,29,3),(574,29,12),(575,29,20),(576,29,5),(577,29,19),(578,29,22),(579,29,25),(580,29,6),(581,30,8),(582,30,14),(583,30,4),(584,30,18),(585,30,22),(586,30,30),(587,30,29),(588,30,6),(589,30,9),(590,30,27),(591,30,26),(592,30,16),(593,30,7),(594,30,25),(595,30,3),(596,30,12),(597,30,28),(598,30,1),(599,30,10),(600,30,11);
/*!40000 ALTER TABLE `job_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Explosives Expert'),(2,'Elementary School Teacher'),(3,'Manufactured Building Installer'),(4,'Pressure Vessel Inspector'),(5,'Kindergarten Teacher'),(6,'Chemical Equipment Tender'),(7,'Technical Program Manager'),(8,'Cartographer'),(9,'Government Service Executive'),(10,'Opticians'),(11,'Percussion Instrument Repairer'),(12,'Numerical Control Machine Tool Operator'),(13,'Ship Pilot'),(14,'Punching Machine Setters'),(15,'Real Estate Broker'),(16,'Transportation Attendant'),(17,'Fish Game Warden'),(18,'Railroad Yard Worker'),(19,'House Cleaner'),(20,'Emergency Management Specialist'),(21,'Mapping Technician'),(22,'Interior Designer'),(23,'Mathematician'),(24,'Mental Health Counselor'),(25,'Casting Machine Operator'),(26,'Electrical Parts Reconditioner'),(27,'Stonemason'),(28,'Umpire and Referee'),(29,'Boilermaker'),(30,'Technical Director');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'785 Shanahan Street'),(2,'5509 Bosco Mall Apt. 441'),(3,'221 Wiza Forge Apt. 472'),(4,'156 Roberta Mountains Apt. 835'),(5,'4482 Bell Rapids Suite 802'),(6,'7197 Hintz Ridge Apt. 798'),(7,'741 Etha Meadow'),(8,'7067 Catalina Wall'),(9,'2319 Amely Cape'),(10,'83436 Danial Oval Suite 860'),(11,'83612 Runolfsson Mission Apt. 141'),(12,'15787 Trenton Port Apt. 580'),(13,'423 O\'Reilly Extension Apt. 803'),(14,'9351 Lueilwitz Ferry Suite 596'),(15,'61633 John Villages'),(16,'2426 Collier Park'),(17,'162 Major Brook Suite 739'),(18,'44170 Batz Terrace'),(19,'89642 Connelly Mission'),(20,'44537 Wolf Valley Suite 938'),(21,'60503 Waelchi Plaza Apt. 633'),(22,'855 Alfred Well Apt. 080'),(23,'392 Balistreri Vista'),(24,'535 Eloisa Green'),(25,'971 Kutch Viaduct Apt. 830'),(26,'166 Glover Isle Suite 471'),(27,'15622 Ryan Road'),(28,'56152 Little Run'),(29,'4677 Little Drive'),(30,'90145 Sylvester Crescent Apt. 164');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2024_02_10_003903_create_customers_table',2),(17,'2024_02_10_004021_create_jobs_table',2),(18,'2024_02_10_004034_create_locations_table',2),(19,'2024_02_10_004834_create_customer_job_table',2),(20,'2024_02_10_004851_create_job_location_table',2),(21,'2024_02_10_172208_create_trucks_table',2),(22,'2024_02_10_172225_create_truck_rates_table',2),(23,'2024_02_10_172825_create_staffs_table',2),(24,'2024_02_10_172835_create_positions_table',2),(25,'2024_02_10_172841_create_staff_positions_table',2),(26,'2024_02_10_173545_create_position_rates_table',2),(52,'2024_02_14_035392_create_tasks_table',3),(53,'2024_02_14_035652_create_task_projects_table',3),(54,'2024_02_14_041257_create_task_labours_table',3),(55,'2024_02_14_041830_create_task_trucks_table',3),(56,'2024_02_14_043423_create_task_miscellaneous_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_rates`
--

DROP TABLE IF EXISTS `position_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `position_id` bigint NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular` double(8,2) NOT NULL,
  `overtime` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_rates`
--

LOCK TABLES `position_rates` WRITE;
/*!40000 ALTER TABLE `position_rates` DISABLE KEYS */;
INSERT INTO `position_rates` VALUES (1,1,'hourly',49.00,153.00),(2,1,'fixed',62.00,170.00),(3,2,'hourly',38.00,148.00),(4,2,'fixed',35.00,138.00),(5,3,'hourly',91.00,125.00),(6,3,'fixed',62.00,156.00),(7,4,'hourly',87.00,140.00),(8,4,'fixed',74.00,151.00),(9,5,'hourly',90.00,188.00),(10,5,'fixed',36.00,138.00);
/*!40000 ALTER TABLE `position_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Database Manager'),(2,'Rotary Drill Operator'),(3,'Therapist'),(4,'Tire Changer'),(5,'Ceiling Tile Installer');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_positions`
--

DROP TABLE IF EXISTS `staff_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_positions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` bigint unsigned DEFAULT NULL,
  `position_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_positions_staff_id_foreign` (`staff_id`),
  KEY `staff_positions_position_id_foreign` (`position_id`),
  CONSTRAINT `staff_positions_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE SET NULL,
  CONSTRAINT `staff_positions_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`id`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_positions`
--

LOCK TABLES `staff_positions` WRITE;
/*!40000 ALTER TABLE `staff_positions` DISABLE KEYS */;
INSERT INTO `staff_positions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,3,5),(16,4,1),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,1),(22,5,2),(23,5,3),(24,5,4),(25,5,5),(26,6,1),(27,6,2),(28,6,3),(29,6,4),(30,6,5),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,8,1),(37,8,2),(38,8,3),(39,8,4),(40,8,5),(41,9,1),(42,9,2),(43,9,3),(44,9,4),(45,9,5),(46,10,1),(47,10,2),(48,10,3),(49,10,4),(50,10,5),(51,11,1),(52,11,2),(53,11,3),(54,11,4),(55,11,5),(56,12,1),(57,12,2),(58,12,3),(59,12,4),(60,12,5),(61,13,1),(62,13,2),(63,13,3),(64,13,4),(65,13,5),(66,14,1),(67,14,2),(68,14,3),(69,14,4),(70,14,5),(71,15,1),(72,15,2),(73,15,3),(74,15,4),(75,15,5),(76,16,1),(77,16,2),(78,16,3),(79,16,4),(80,16,5),(81,17,1),(82,17,2),(83,17,3),(84,17,4),(85,17,5),(86,18,1),(87,18,2),(88,18,3),(89,18,4),(90,18,5),(91,19,1),(92,19,2),(93,19,3),(94,19,4),(95,19,5),(96,20,1),(97,20,2),(98,20,3),(99,20,4),(100,20,5);
/*!40000 ALTER TABLE `staff_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,'Wyman, Blanda and Langworth'),(2,'Hane-Monahan'),(3,'Hegmann, Lueilwitz and Johns'),(4,'Rodriguez, Parisian and Towne'),(5,'O\'Reilly-Smitham'),(6,'Auer, Kreiger and Breitenberg'),(7,'Schultz, Lemke and Davis'),(8,'Breitenberg-Buckridge'),(9,'Mann LLC'),(10,'Farrell, Wiegand and Hamill'),(11,'Schulist-Ernser'),(12,'Gutkowski-Ferry'),(13,'Leannon-Von'),(14,'Quitzon-Dach'),(15,'Lang, Larson and Beatty'),(16,'Gislason, Daugherty and Yost'),(17,'Collins-Sawayn'),(18,'Denesik-Kilback'),(19,'Gutmann-Emard'),(20,'Yundt-Beier');
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_labours`
--

DROP TABLE IF EXISTS `task_labours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_labours` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint NOT NULL,
  `staff_id` bigint NOT NULL,
  `position_id` bigint NOT NULL,
  `position_rate_id` bigint NOT NULL,
  `uom_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_rate` double(8,2) NOT NULL,
  `overtime_rate` double(8,2) NOT NULL,
  `regular_hours` double(8,2) NOT NULL,
  `overtime_hours` double(8,2) NOT NULL,
  `line_total` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_labours`
--

LOCK TABLES `task_labours` WRITE;
/*!40000 ALTER TABLE `task_labours` DISABLE KEYS */;
INSERT INTO `task_labours` VALUES (1,1,1,1,1,'hourly',49.00,153.00,200.00,150.00,32750.00),(2,1,2,2,4,'fixed',35.00,138.00,10.00,30.00,4490.00),(3,1,3,3,5,'hourly',91.00,125.00,10.00,4.00,1410.00),(4,1,4,4,8,'fixed',74.00,151.00,10.00,0.00,740.00),(5,2,1,1,1,'hourly',49.00,153.00,200.00,150.00,32750.00),(6,2,2,2,4,'fixed',35.00,138.00,10.00,30.00,4490.00),(7,3,1,1,1,'hourly',49.00,153.00,9.00,0.00,441.00),(8,4,4,5,9,'hourly',90.00,188.00,9.00,0.00,810.00),(9,5,4,4,8,'fixed',74.00,151.00,20.00,0.00,1480.00);
/*!40000 ALTER TABLE `task_labours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_miscellaneous`
--

DROP TABLE IF EXISTS `task_miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_miscellaneous` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` bigint NOT NULL,
  `line_total` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_miscellaneous`
--

LOCK TABLES `task_miscellaneous` WRITE;
/*!40000 ALTER TABLE `task_miscellaneous` DISABLE KEYS */;
INSERT INTO `task_miscellaneous` VALUES (1,1,'test detail 1',20.00,50.00,5,250.00),(2,1,'test detail 2',50.00,75.00,10,750.00),(3,2,'test detail 1',20.00,50.00,5,250.00),(4,2,'test detail 2',50.00,75.00,10,750.00),(5,3,'detail 3',10.00,20.00,30,600.00),(6,4,'detail 4',20.00,1000.00,6,6000.00),(7,5,'detail 5',30.00,50.00,100,5000.00);
/*!40000 ALTER TABLE `task_miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_projects`
--

DROP TABLE IF EXISTS `task_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint NOT NULL,
  `job_id` bigint NOT NULL,
  `location_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_projects`
--

LOCK TABLES `task_projects` WRITE;
/*!40000 ALTER TABLE `task_projects` DISABLE KEYS */;
INSERT INTO `task_projects` VALUES (1,1,'Active','test order','Chestermere','2024-02-14',4,5,6),(2,2,'Active','test order 2','Chestermere 2','2024-02-15',2,2,7),(3,3,'Active','test order 3','Chestermere 3','2024-02-14',1,2,1),(4,4,'Pending','test order 4','Chestermere 4','2024-02-27',6,4,2),(5,5,'Closed','test order 5','Chestermere 5','2024-02-27',18,17,2);
/*!40000 ALTER TABLE `task_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_trucks`
--

DROP TABLE IF EXISTS `task_trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_trucks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint NOT NULL,
  `truck_id` bigint NOT NULL,
  `truck_rate_id` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  `uom_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `line_total` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_trucks`
--

LOCK TABLES `task_trucks` WRITE;
/*!40000 ALTER TABLE `task_trucks` DISABLE KEYS */;
INSERT INTO `task_trucks` VALUES (1,1,1,1,1,'0',114.00,114.00),(2,1,2,2,2,'0',81.00,162.00),(3,1,4,4,2,'0',182.00,364.00),(4,1,6,6,3,'0',78.00,234.00),(5,2,1,1,1,'fixed',114.00,114.00),(6,3,1,1,10,'hourly',74.00,740.00),(7,4,6,6,10,'hourly',78.00,780.00),(8,5,3,3,10,'fixed',123.00,1230.00);
/*!40000 ALTER TABLE `task_trucks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'First description of the task'),(2,'Second description of the task'),(3,'test 3'),(4,'desc 4'),(5,'desc 5');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_rates`
--

DROP TABLE IF EXISTS `truck_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `truck_id` bigint unsigned DEFAULT NULL,
  `hourly` double(8,2) NOT NULL,
  `fixed` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `truck_rates_truck_id_foreign` (`truck_id`),
  CONSTRAINT `truck_rates_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_rates`
--

LOCK TABLES `truck_rates` WRITE;
/*!40000 ALTER TABLE `truck_rates` DISABLE KEYS */;
INSERT INTO `truck_rates` VALUES (1,1,74.00,114.00),(2,2,81.00,150.00),(3,3,61.00,123.00),(4,4,49.00,182.00),(5,5,93.00,200.00),(6,6,78.00,175.00),(7,7,76.00,159.00),(8,8,52.00,161.00),(9,9,72.00,198.00),(10,10,100.00,119.00),(11,11,76.00,144.00),(12,12,91.00,115.00),(13,13,68.00,164.00),(14,14,100.00,176.00),(15,15,68.00,164.00),(16,16,39.00,150.00),(17,17,90.00,129.00),(18,18,71.00,134.00);
/*!40000 ALTER TABLE `truck_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trucks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (1,'Ford Maverick'),(2,'Ford F-150'),(3,'Ford Ranger'),(4,'Ram 1500'),(5,'Ram 1500 Classic'),(6,'Nissan Frontier'),(7,'Nissan Titan'),(8,'Jeep Gladiator'),(9,'GMC Canyon'),(10,'GMC Sierra 1500'),(11,'GMC Sierra 1500 Limited'),(12,'Chevrolet Colorado'),(13,'Chevrolet Silverado 1500'),(14,'Chevrolet Silverado 1500 LTD'),(15,'Toyota Tundra'),(16,'Toyota Tacoma'),(17,'Honda Ridgeline'),(18,'Hyundai Santa Cruz');
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

-- Dump completed on 2024-02-14  1:27:39
