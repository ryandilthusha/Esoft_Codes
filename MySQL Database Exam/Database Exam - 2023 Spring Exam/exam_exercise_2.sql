-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fire_dept_db
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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `Employee_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Unit_Id` int(11) NOT NULL,
  `Employee_Name` varchar(30) NOT NULL,
  `Employee_Position` varchar(15) NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_Id`),
  KEY `FK_Unit_Id1_idx` (`Unit_Id`),
  CONSTRAINT `FK_Unit_Id1` FOREIGN KEY (`Unit_Id`) REFERENCES `units` (`Unit_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Information about employees of the Fire Department, including their position and designated unit, is kept in this table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'Samantha Silva','Officer',777123456,'samanthasilva@gmail.com'),(2,1,'Kamal Perera','Firefighter',771122334,'kamalperera@gmail.com'),(3,2,'Amali Fernando','Firefighter',754567890,'amalifernando@gmail.com'),(4,2,'Sampath Rajapaksa','Firefighter',777456789,'sampathrajapaksa@gmail.com'),(5,3,'Kavinda Jayawardena','Paramedic',767890123,'kavindajayawardena@gmail.com'),(6,3,'Nimasha Abeysekara','Paramedic',777678901,'nimashaabeysekara@gmail.com'),(7,4,'Saman Kumara','Firefighter',710123456,'samankumara@gmail.com'),(8,4,'Chathura Jayasinghe','Firefighter',779012345,'chathurajayasinghe@gmail.com'),(9,5,'Lakmini De Silva','Firefighter',777901234,'lakminidesilva@gmail.com'),(10,5,'Nalaka Weerasinghe','Officer',758901234,'nalakaweerasinghe@gmail.com');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission_types`
--

DROP TABLE IF EXISTS `mission_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission_types` (
  `Mission_Type_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mission_Type_Name` varchar(20) NOT NULL,
  `Mission_Type_Severity` varchar(30) NOT NULL,
  `Mission_Type_Description` varchar(100) NOT NULL,
  PRIMARY KEY (`Mission_Type_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table contains information about several types of missions, as well as a description of each type.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission_types`
--

LOCK TABLES `mission_types` WRITE;
/*!40000 ALTER TABLE `mission_types` DISABLE KEYS */;
INSERT INTO `mission_types` VALUES (1,'Building Fire','High','A fire in a building with structures.'),(2,'Medical Emergency','Low','Urgent situation that requires immediate attention.'),(3,'Gas Leak','Low','A kitchen where there is a gas leak.'),(4,'Water Rescue','High','A student and animal is in in the water.'),(5,'Car Accident','Medium','A situation where a car has been in an accident.'),(6,'Electrical Hazard','High','Situation where there is an wire short.'),(7,'Chemical Spill','High','University where there has been a acid spill.'),(8,'Car Fire','Medium','A fire in a car.'),(9,'Smoke Investigation','Low','An investigation into a report of smoke.'),(10,'Lad Fire','Medium','A fire involving a property.');
/*!40000 ALTER TABLE `mission_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission_units`
--

DROP TABLE IF EXISTS `mission_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission_units` (
  `Mission_Unit_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mission_Id` int(11) NOT NULL,
  `Unit_Id` int(11) NOT NULL,
  PRIMARY KEY (`Mission_Unit_Id`),
  KEY `FK_Mission_Id_idx` (`Mission_Id`),
  KEY `FK_Unit_Id3_idx` (`Unit_Id`),
  CONSTRAINT `FK_Mission_Id` FOREIGN KEY (`Mission_Id`) REFERENCES `missions` (`Mission_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Unit_Id3` FOREIGN KEY (`Unit_Id`) REFERENCES `units` (`Unit_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table was designed to store information about which units participated on a particular mission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission_units`
--

LOCK TABLES `mission_units` WRITE;
/*!40000 ALTER TABLE `mission_units` DISABLE KEYS */;
INSERT INTO `mission_units` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,4),(5,5,4),(6,6,5),(7,7,9),(8,8,8),(9,9,7),(10,10,10),(11,1,2),(12,2,1),(13,1,3);
/*!40000 ALTER TABLE `mission_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missions`
--

DROP TABLE IF EXISTS `missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missions` (
  `Mission_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mission_Type_Id` int(11) NOT NULL,
  `Mission_Date` date NOT NULL,
  `Start_Time` time NOT NULL,
  `Mission_Duration` time NOT NULL,
  `Location` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Mission_Id`),
  KEY `FK_Mission_Type_Id_idx` (`Mission_Type_Id`),
  CONSTRAINT `FK_Mission_Type_Id` FOREIGN KEY (`Mission_Type_Id`) REFERENCES `mission_types` (`Mission_Type_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table contains information about each mission carried out by the Fire Department.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missions`
--

LOCK TABLES `missions` WRITE;
/*!40000 ALTER TABLE `missions` DISABLE KEYS */;
INSERT INTO `missions` VALUES (1,1,'2021-01-20','09:15:00','00:45:00','No. 15, Main Street, Pettah, Colombo'),(2,2,'2021-09-21','11:30:00','01:22:00','No. 78, 1st Lane, Kotahena, Colombo'),(3,3,'2021-08-12','14:00:00','00:33:00','No. 52, Galle Road, Wellawatte, Colombo'),(4,4,'2022-02-11','08:00:00','02:07:00','No. 25, Main Street, Mirigama, Gampaha'),(5,5,'2022-07-21','11:30:00','01:30:00','No. 87, Negombo Road, Negombo, Gampaha'),(6,6,'2022-03-22','15:00:00','06:25:00','No. 96, Kandy Road, Kadawatha, Gampaha'),(7,7,'2023-05-27','07:45:00','02:15:00','No. 63, Peradeniya Road, Peradeniya, Kandy'),(8,8,'2023-03-29','11:00:00','01:20:00','No. 32, Main Street, Gampola, Kandy'),(9,9,'2023-02-26','14:30:00','07:45:00','No. 78, Kandy Road, Katugastota, Kandy'),(10,10,'2023-03-19','08:30:00','04:20:00','No. 105, Hospital Road, Jaffna Town, Jaffna');
/*!40000 ALTER TABLE `missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `Unit_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Unit_Name` varchar(20) NOT NULL,
  `Station_Number` int(11) DEFAULT NULL,
  `Station_Address` varchar(60) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Unit_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='For each of the Fire Department''s 10 units, information is kept in this table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Colombo Central',1,'No. 15, Station Road, Colombo 02',11223344,'ccfd@gmail.com'),(2,'Colombo North',2,'No. 25, Kandy Road, Colombo 05',55667788,'cnfd@gmail.com'),(3,'Colombo South',3,'No. 78, School Road, Colombo 06',99887766,'csfd@gmail.com'),(4,'Gampaha Central',4,'No. 96, Campus Road, Gampaha',71234567,'gcfd@gmail.com'),(5,'Gampaha North',5,'No. 76, Ryan Avenue, Gampaha',89898989,'gnfd@gmail.com'),(6,'Gampaha South',6,'No. 12, Gampaha Road, Gampaha',77889900,'gsfd@gmail.com'),(7,'Kandy Central',7,'No. 3, Hamilton Avenue, Kandy',81122334,'kcfd@gmail.com'),(8,'Kandy North',8,'No. 5, Siripathi Road, Kandy',99887766,'knfd@gmail.com'),(9,'Kandy South',9,'No. 7, Kelaniya Road, Kandy',55443322,'ksfd@gmail.com'),(10,'Jaffna Central',10,'No. 105, Negombo Road, Jaffna',22446688,'jcfd@gmail.com');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `Vehicle_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Unit_Id` int(11) NOT NULL,
  `Vehicle_Type` varchar(45) NOT NULL,
  `Capacity` varchar(45) DEFAULT NULL,
  `Vehicle_Year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Id`),
  KEY `FK_Unit_Id2_idx` (`Unit_Id`),
  CONSTRAINT `FK_Unit_Id2` FOREIGN KEY (`Unit_Id`) REFERENCES `units` (`Unit_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table contains information about the Fire Department''s vehicles as well as the unit to which the vehicle is allocated.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,'Fire Engine','100 litres','2013'),(2,1,'Ambulance','6 people','2020'),(3,2,'Fire Truck','2000 litres','2019'),(4,2,'Utility Vehicle','15 people','2016'),(5,3,'Ambulance','4 people','2015'),(6,3,'Fire Engine','150 litres','2017'),(7,4,'Fire Truck','2730 litres','2020'),(8,4,'Utility Vehicle','12 people','2015'),(9,5,'Fire Engine','120 litres','2019'),(10,5,'Ambulance','8 stretchers','2023');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 15:13:40
