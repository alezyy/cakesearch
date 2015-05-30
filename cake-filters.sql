-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cake-filters
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Alfred Hitchcock'),(2,'Otto Preminger'),(3,'Stanley Kubrick');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Horror'),(2,'Thriller'),(3,'Mystery'),(4,'Romance'),(5,'Drama'),(6,'Crime'),(7,'Sci-FI'),(8,'War');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `fk_movies_genres` (`genre_id`),
  KEY `fk_movies_directors1` (`director_id`),
  CONSTRAINT `fk_movies_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_movies_directors1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,1,1,'The Birds','A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people there in increasing numbers and with increasing viciousness.'),(2,1,1,'Psycho','A thirty-something secretary steals $40,000 from her employer\'s client, and subsequently encounters a young motel proprietor too long under the domination of his mother.'),(3,3,1,'Vertigo','A retired San Francisco detective suffering from acrophobia investigates the strange activities of an old friend\'s much-younger wife, all the while becoming dangerously obsessed with her.'),(4,6,2,'Anatomy of a Murder','In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case? '),(5,7,3,'2001: A Space Odyssey','Humanity finds a mysterious, obviously artificial, object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest. '),(6,5,3,'A Clockwork Orange','In future Britain, charismatic delinquent Alex DeLarge is jailed and volunteers for an experimental aversion therapy developed by the government in an effort to solve society\'s crime problem... but not all goes to plan. '),(7,8,3,'Full Metal Jacket','A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow Marine recruits from their brutal boot camp training to the bloody street fighting set in 1968 in Hue, Vietnam. '),(8,1,3,'The shining','A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.'),(9,4,3,'Barry Lyndon','An Irish rogue wins the heart of a rich widow and assumes her dead husband\'s position in 18th Century aristocracy. '),(10,4,2,'Carmen Jones','Contemporary version of the Bizet opera, with new lyrics and an African-American cast. '),(11,5,2,'A royal scandal','In 19th century Russia,the idealistic officer Chernov is appointed chief of the Imperial Guard by the Empress Catherine the Great and navigates between the diplomacy of Grand Chancellor Nicolai Liyitch and the plots of the generals.'),(12,5,2,'Daisy Kenyon','Commercial artist Daisy Kenyon is involved with married lawyer Dan O\'Mara, and hopes someday to marry him, if he ever divorces his wife Lucille.'),(13,5,1,'The wrong man','True story of an innocent man mistaken for a criminal.'),(14,2,1,'The man who knew too much','A family vacationing in Morocco accidentally stumble on to an assassination plot and the conspirators are determined to prevent them from interfering. '),(15,3,1,'The trouble with Harry','The trouble with Harry is that he\'s dead, and everyone seems to have a different idea of what needs to be done with his body'),(16,3,1,'Rear Window','A wheelchair bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.'),(17,2,1,'Strangers on a train','A psychotic socialite confronts a pro tennis star with a theory on how two complete strangers can get away with murder...a theory that he plans to implement.'),(18,5,1,'The Paradine Case','A happily married London barrister falls in love with the accused poisoner he is defending. '),(19,5,1,'Rope','Two young men strangle their \"inferior\" classmate, hide his body in their apartment, and invite his friends and family to a dinner party as a means to challenge the \"perfection\" of their crime. '),(20,3,1,'Notorious','A woman is asked to spy on a group of Nazi friends in South America. How far will she have to go to ingratiate herself with them?'),(21,8,1,'Lifeboat','Several survivors of a torpedoed ship find themselves in the same boat with one of the men who sunk it. '),(22,2,1,'Saboteur','Aircraft factory worker Barry Kane goes on the run across the United States when he is wrongly accused of starting a fire that killed his best friend.');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-29 22:23:51
