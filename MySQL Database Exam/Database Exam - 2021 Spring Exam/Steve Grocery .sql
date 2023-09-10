-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: steve_grocery
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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Customer data is kept in the Customers table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Kamal','Perera','kamal.perera@gmail.com',771234567,'No. 12, Galle Road, Colombo 03'),(2,'Saman','Silva','saman.silva@yahoo.com',712345678,'No. 34, Kandy Road, Kadawatha'),(3,'Nuwan','Fernando','nuwan.fernando@hotmail.com',763456789,'No. 56, High Level Road, Nugegoda'),(4,'Chamara','Ratnayake','chamara.ratnayake@gmail.com',774567890,'No. 78, Negombo Road, Wattala'),(5,'Nadeesha','Bandara','nadeesha.bandara@yahoo.com',715678901,'No. 90, Galle Road, Mount Lavinia'),(6,'Janaka','Jayawardena','janaka.jayawardena@hotmail.com',776789012,'No. 112, Kandy Road, Kiribathgoda'),(7,'Rashmi','Fonseka','rashmi.fonseka@gmail.com',717890123,'No. 134, Galle Road, Dehiwala'),(8,'Prasad','Kumarasinghe','prasad.kumarasinghe@yahoo.com',768901234,'No. 156, High Level Road, Maharagama'),(9,'Anjana','Rajapaksa','anjana.rajapaksa@hotmail.com',779012345,'No. 178, Negombo Road, Peliyagoda'),(10,'Dilrukshi','Gamage','dilrukshi.gamage@gmail.com',710123456,'No. 200, Galle Road, Ratmalana');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Pick_Date` date NOT NULL,
  `Total_Amount` float NOT NULL,
  `Payment_Method` varchar(45) DEFAULT NULL,
  `Order_Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `FK_Customer_ID_idx` (`Customer_ID`),
  KEY `FK_Store_ID_idx` (`Store_ID`),
  CONSTRAINT `FK_Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Store_ID3` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Each order''s details is kept in the Orders table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2023-03-21','2023-03-25',1500,'Cash on Delivery','Pending'),(2,2,2,'2023-03-21','2023-03-24',2000,'Credit Card','Confirmed'),(3,3,3,'2023-03-22','2023-03-26',5000,'Online Payment','Delivered'),(4,4,4,'2023-03-23','2023-03-27',2500,'Cash on Delivery','Pending'),(5,5,5,'2023-03-23','2023-03-28',8000,'Credit Card','Confirmed'),(6,6,6,'2023-03-24','2023-03-30',12000,'Online Payment','Delivered'),(7,7,7,'2023-03-25','2023-03-29',5000,'Cash on Delivery','Pending'),(8,8,8,'2023-03-25','2023-03-31',6400,'Credit Card','Confirmed'),(9,9,9,'2023-03-26','2023-04-01',15000,'Online Payment','Delivered'),(10,10,10,'2023-03-27','2023-04-02',12800,'Cash on Delivery','Pending'),(11,3,2,'2023-03-22','2023-03-25',50,'Online Payment','Pending'),(12,1,3,'2023-03-22','2023-03-25',5000,'Online Payment','Pending'),(13,1,4,'2023-03-01','2023-03-25',5000,'Online Payment','Pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_order`
--

DROP TABLE IF EXISTS `product_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_in_order` (
  `Order_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  KEY `FK_Order_ID_idx` (`Order_ID`),
  KEY `FK_Product_ID_idx` (`Product_ID`),
  KEY `FK_Store_ID_idx` (`Store_ID`),
  CONSTRAINT `FK_Order_ID` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Product_ID2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Store_ID2` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The Product In Order table contains data about each order''s details.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_order`
--

LOCK TABLES `product_in_order` WRITE;
/*!40000 ALTER TABLE `product_in_order` DISABLE KEYS */;
INSERT INTO `product_in_order` VALUES (1,1,1,2),(1,2,1,3),(2,2,2,4),(2,3,2,2),(3,4,3,1),(3,5,3,2),(4,6,4,3),(4,7,4,1),(5,8,5,5),(5,9,5,3);
/*!40000 ALTER TABLE `product_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Product_Category` varchar(45) DEFAULT NULL,
  `Product_Price` varchar(45) DEFAULT NULL,
  `Product_Brand` varchar(45) DEFAULT NULL,
  `Expire_Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Product details are kept in the Products table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Coca-Cola','Beverages','120.00','Coca-Cola Company','2023-06-01'),(2,'Sprite','Beverages','110.00','The Coca-Cola Company','2023-07-01'),(3,'Bread','Bakery','70.00','Sunrise Bakery','2023-03-25'),(4,'Milk','Dairy','90.00','Anchor','2023-03-29'),(5,'Butter','Dairy','200.00','Anchor','2023-04-05'),(6,'Cheese','Dairy','300.00','Kraft','2023-05-01'),(7,'Rice','Grains','150.00','Red Dragon','2024-01-01'),(8,'Pasta','Pasta','80.00','Rupavahini','2024-03-01'),(9,'Chicken','Meat','500.00','Cargills','2023-03-24'),(10,'Beef','Meat','800.00','Keells','2023-03-22');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `Store_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Cost` float NOT NULL,
  KEY `FK_Store_ID_idx` (`Store_ID`),
  KEY `FK_Product_ID_idx` (`Product_ID`),
  CONSTRAINT `FK_Product_ID1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Store_ID1` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The Stocks table keeps track of how many of each product are currently on hand in each store.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,1,100,10000),(2,2,150,15000),(3,3,200,14000),(4,4,300,27000),(5,5,400,80000),(6,6,500,150000),(7,7,1000,50000),(8,8,800,64000),(9,9,600,300000),(10,10,400,320000),(1,3,1000,1.5);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `Store_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store_Name` varchar(45) NOT NULL,
  `Store_Address` varchar(45) NOT NULL,
  `Store_Phone` int(11) NOT NULL,
  `Store_Email` varchar(45) DEFAULT NULL,
  `Store_Manager` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Store_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Data about stores is kept in the Stores table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Cargills Food City','No. 123, Galle Road, Colombo 06',112345678,'cargills.colombo06@cargillsceylon.com','Roshan Silva'),(2,'Keells Super','No. 456, Kandy Road, Kadawatha',113456789,'keells.kadawatha@keells.com','Dinesh Perera'),(3,'Arpico Super Center','No. 789, High Level Road, Nugegoda',114567890,'arpico.nugegoda@arpico.com','Chaminda Fernando'),(4,'Food City','No. 101, Negombo Road, Wattala',115678901,'foodcity.wattala@foodcity.lk','Anusha Rajapakse'),(5,'Laugfs Supermarket','No. 121, Galle Road, Mount Lavinia',116789012,'laugfs.mountlavinia@laugfs.com','Sanjeewa De Silva'),(6,'Keells Super','No. 222, Kandy Road, Kiribathgoda',117890123,'keells.kiribathgoda@keells.com','Nishantha Rajapakse'),(7,'Cargills Food City','No. 333, Galle Road, Dehiwala',118901234,'cargills.dehiwala@cargillsceylon.com','Aruna Kumara'),(8,'Arpico Super Center','No. 444, High Level Road, Maharagama',119012345,'arpico.maharagama@arpico.com','Ranjith Perera'),(9,'Laugfs Supermarket','No. 555, Negombo Road, Peliyagoda',110123456,'laugfs.peliyagoda@laugfs.com','Sampath Kumara'),(10,'Food City','No. 666, Galle Road, Ratmalana',111234567,'foodcity.ratmalana@foodcity.lk','Amila Gunasekara');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-22 22:48:54
