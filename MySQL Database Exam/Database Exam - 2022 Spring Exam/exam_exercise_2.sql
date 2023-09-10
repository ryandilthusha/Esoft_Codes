-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: ralph_racing_db
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `Car_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(45) NOT NULL,
  `Car_Year` year(4) NOT NULL,
  `Weight` float DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Top_Speed` int(11) DEFAULT NULL,
  PRIMARY KEY (`Car_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The Cars table stores information about the cars.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'BMW',2015,1200,'Red',300),(2,'Mercedes',2016,1300,'Blue',320),(3,'Ferrari',2017,1100,'Yellow',340),(4,'Lamborghini',2018,1400,'Green',360),(5,'Bugatti',2019,1500,'Black',380),(6,'McLaren',2020,1250,'White',310),(7,'Porsche',2021,1350,'Silver',330),(8,'Audi',2015,1250,'Red',300),(9,'Ford',2016,1300,'Blue',320),(10,'Chevrolet',2017,1100,'Yellow',340);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_events`
--

DROP TABLE IF EXISTS `race_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_events` (
  `Race_Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(45) NOT NULL,
  `Event_Type` varchar(45) NOT NULL,
  `Laps` int(11) NOT NULL,
  `Event_Date` date NOT NULL,
  `Track_ID` int(11) NOT NULL,
  PRIMARY KEY (`Race_Event_ID`),
  KEY `FK_Track_ID_idx` (`Track_ID`),
  CONSTRAINT `FK_Track_ID` FOREIGN KEY (`Track_ID`) REFERENCES `tracks` (`Track_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The RaceEvents table stores information about the race events, including the type, number of laps, and the date.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_events`
--

LOCK TABLES `race_events` WRITE;
/*!40000 ALTER TABLE `race_events` DISABLE KEYS */;
INSERT INTO `race_events` VALUES (1,'Sri Lanka Grand Prix','Long',6,'2023-03-19',1),(2,'Galle Street Race','Intermediate',4,'2023-04-02',2),(3,'Kandy Speed Challenge','Short',2,'2023-05-21',3),(4,'Colombo Circuit Challenge','Long',6,'2023-06-18',4),(5,'Hambantota Grand Prix','Intermediate',4,'2023-07-02',5),(6,'Matara Speedway Sprint','Short',2,'2023-08-13',6),(7,'Anuradhapura Endurance Race','Long',6,'2023-09-10',7),(8,'Jaffna Street Race','Intermediate',4,'2023-10-08',8),(9,'Trincomalee Speed Challenge','Short',2,'2023-11-05',9),(10,'Polonnaruwa Circuit Sprint','Short',2,'2023-12-03',10),(11,'Hello World','Long',6,'2023-03-19',1);
/*!40000 ALTER TABLE `race_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_results`
--

DROP TABLE IF EXISTS `race_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_results` (
  `Race_Result_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Race_Event_ID` int(11) NOT NULL,
  `Racer_Car_ID` int(11) NOT NULL,
  `Position` int(11) DEFAULT NULL,
  `Total_Race_Time` time NOT NULL,
  `Average_Speed` float DEFAULT NULL,
  `Best_Lap_Time` time DEFAULT NULL,
  PRIMARY KEY (`Race_Result_ID`),
  KEY `FK_Race_Event_ID_idx` (`Race_Event_ID`),
  KEY `FK_Racer_Car_ID_idx` (`Racer_Car_ID`),
  CONSTRAINT `FK_Race_Event_ID` FOREIGN KEY (`Race_Event_ID`) REFERENCES `race_events` (`Race_Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Racer_Car_ID` FOREIGN KEY (`Racer_Car_ID`) REFERENCES `racer_and_cars` (`Racer_Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The RaceResults table stores the race results, including the total race time for each racer in each event.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_results`
--

LOCK TABLES `race_results` WRITE;
/*!40000 ALTER TABLE `race_results` DISABLE KEYS */;
INSERT INTO `race_results` VALUES (1,1,1,1,'00:29:32',78.5,'00:04:53'),(2,1,2,2,'00:29:45',78.1,'00:04:57'),(3,1,3,3,'00:30:01',77.4,'00:04:59'),(4,1,4,4,'00:30:17',76.8,'00:05:01'),(5,1,5,5,'00:30:32',76.2,'00:05:05'),(6,1,6,6,'00:30:49',75.6,'00:05:09'),(7,1,7,7,'00:31:06',75,'00:05:13'),(8,1,8,8,'00:31:23',74.4,'00:05:17'),(9,1,9,9,'00:31:40',73.8,'00:05:21'),(10,1,10,10,'00:31:57',73.2,'00:05:25'),(11,1,1,1,'00:29:32',78.5,'00:04:53'),(12,2,1,2,'00:30:45',78.1,'00:05:57'),(13,3,1,3,'00:31:01',77.4,'00:05:59');
/*!40000 ALTER TABLE `race_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racer_and_cars`
--

DROP TABLE IF EXISTS `racer_and_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racer_and_cars` (
  `Racer_Car_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Racer_ID` int(11) NOT NULL,
  `Car_ID` int(11) NOT NULL,
  `Racing_Team` varchar(45) DEFAULT NULL,
  `Sponsor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Racer_Car_ID`),
  KEY `FK_Racer_ID_idx` (`Racer_ID`),
  KEY `FK_Car_ID_idx` (`Car_ID`),
  CONSTRAINT `FK_Car_ID` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Racer_ID` FOREIGN KEY (`Racer_ID`) REFERENCES `racers` (`Racer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The RacerCars table is a junction table that links racers to the cars they drive.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racer_and_cars`
--

LOCK TABLES `racer_and_cars` WRITE;
/*!40000 ALTER TABLE `racer_and_cars` DISABLE KEYS */;
INSERT INTO `racer_and_cars` VALUES (1,1,1,'Team BMW','BMW'),(2,2,2,'Team Mercedes','Mercedes'),(3,3,3,'Team Ferrari','Ferrari'),(4,4,4,'Team Lamborghini','Lamborghini'),(5,5,5,'Team Bugatti','Bugatti'),(6,6,6,'Team McLaren','McLaren'),(7,7,7,'Team Porsche','Porsche'),(8,8,8,'Team Audi','Audi'),(9,9,9,'Team Ford','Ford'),(10,10,10,'Team Chevrolet','Chevrolet');
/*!40000 ALTER TABLE `racer_and_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racers`
--

DROP TABLE IF EXISTS `racers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racers` (
  `Racer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Racer_First_Name` varchar(45) NOT NULL,
  `Racer_Last_Name` varchar(45) NOT NULL,
  `Racer_DOB` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Phone_Num` varchar(45) NOT NULL,
  PRIMARY KEY (`Racer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The Racers table stores each racer''s personal information.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racers`
--

LOCK TABLES `racers` WRITE;
/*!40000 ALTER TABLE `racers` DISABLE KEYS */;
INSERT INTO `racers` VALUES (1,'Nimal','Fernando','1990-01-01','Male','0711234567'),(2,'Jane','Costa','1993-05-25','Female','0779876543'),(3,'Ryan','Wickramaratne','1995-08-03','Male','0723456789'),(4,'Ryan','Fernando','1991-12-21','Male','0764567890'),(5,'Lara','Michelle','1994-09-08','Female','0782345678'),(6,'Judith','Michelle','1996-04-15','Female','0717894563'),(7,'Michael','Lee','1993-07-02','Male','0763456789'),(8,'Sanduni','Silva','1992-11-12','Female','0714567890'),(9,'Lasith','Wilson','1995-03-29','Male','0772345678'),(10,'Sandun','Jones','1996-06-30','Male','0727894563'),(11,'Nimal','Bro','1990-01-01','Male','0711234567');
/*!40000 ALTER TABLE `racers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `Track_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Track_Name` varchar(45) NOT NULL,
  `Location` varchar(45) NOT NULL,
  `Length` float NOT NULL,
  `Suraface_Type` varchar(45) DEFAULT NULL,
  `Track_Owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Track_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The Tracks table stores information about the tracks where the races are held.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (1,'Nuwara Eliya Circuit','Nuwara Eliya',5.6,'Asphalt','Genome Racing Company'),(2,'Galle Street Circuit','Galle',3.8,'Concrete','Trevor Racing Company'),(3,'Kandy Speedway','Kandy',4.2,'Asphalt','Mike Racing Company'),(4,'Colombo City Circuit','Colombo',4,'Asphalt','Ryan Racing Company'),(5,'Hambantota Circuit','Hambantota',3.2,'Concrete','Ryan Racing Company'),(6,'Matara Speedway','Matara',4.5,'Asphalt','Ryan Racing Company'),(7,'Anuradhapura Raceway','Anuradhapura',4.8,'Asphalt','Decimal Racing Company'),(8,'Jaffna Street Circuit','Jaffna',3.6,'Concrete','Mike Racing Company'),(9,'Trincomalee Speedway','Trincomalee',3.2,'Asphalt','Ralph Racing Company'),(10,'Polonnaruwa Circuit','Polonnaruwa',5,'Asphalt','Ralph Racing Company');
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 21:40:25
