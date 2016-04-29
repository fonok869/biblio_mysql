-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `pk_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_title_id` int(11) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_theme_id` int(11) DEFAULT NULL,
  `fk_language_id` int(11) DEFAULT NULL,
  `fk_location_id` int(11) DEFAULT NULL,
  `fk_publication_year_id` int(11) DEFAULT NULL,
  `fk_edition_id` int(11) DEFAULT NULL,
  `fk_status_id` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `fk_borrower_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`pk_book_id`),
  KEY `fk_themes_id_idx` (`fk_theme_id`),
  KEY `fk_titles_id_idx` (`fk_title_id`),
  KEY `fk_languages_id_idx` (`fk_language_id`),
  KEY `fk_locations_id_idx` (`fk_location_id`),
  KEY `fk_publication_years_id_idx` (`fk_publication_year_id`),
  KEY `fk_editions_id_idx` (`fk_edition_id`),
  KEY `fk_status_id_idx` (`fk_status_id`),
  KEY `fk_borrower_id_idx` (`fk_borrower_id`),
  KEY `fk_authors_id_idx` (`fk_author_id`),
  CONSTRAINT `fk_authors_id` FOREIGN KEY (`fk_author_id`) REFERENCES `authors` (`pk_author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_borrower_id` FOREIGN KEY (`fk_borrower_id`) REFERENCES `users` (`pk_library_card_number`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_editions_id` FOREIGN KEY (`fk_edition_id`) REFERENCES `editions` (`pk_edition_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_languages_id` FOREIGN KEY (`fk_language_id`) REFERENCES `languages` (`pk_language_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_locations_id` FOREIGN KEY (`fk_location_id`) REFERENCES `locations` (`pk_location_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_publication_years_id` FOREIGN KEY (`fk_publication_year_id`) REFERENCES `publication_years` (`pk_publication_year_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_status_id` FOREIGN KEY (`fk_status_id`) REFERENCES `status` (`pk_status_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_themes_id` FOREIGN KEY (`fk_theme_id`) REFERENCES `themes` (`pk_theme_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_titles_id` FOREIGN KEY (`fk_title_id`) REFERENCES `titles` (`pk_title_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (10,7,1,1,1,1,1,1,1,0.5,1,NULL),(11,8,2,2,1,2,2,2,2,0.5,NULL,NULL),(12,9,3,3,2,3,3,2,2,0.5,NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-29 15:01:08
