CREATE DATABASE  IF NOT EXISTS `resnew` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `resnew`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: resnew
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `ID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cus_name` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cus_Fname` varchar(30) DEFAULT NULL,
  `Cus_Lname` varchar(60) DEFAULT NULL,
  `Cus_Address` varchar(100) DEFAULT NULL,
  `Cus_Tel` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `Emp_Fname` varchar(30) DEFAULT NULL,
  `Emp_Lname` varchar(60) DEFAULT NULL,
  `Emp_sex` varchar(1) DEFAULT NULL,
  `Emp_Address` varchar(100) DEFAULT NULL,
  `Emp_salary` float DEFAULT NULL,
  `Emp_Tel` varchar(25) DEFAULT NULL,
  `Emp_Email` varchar(25) DEFAULT NULL,
  `emp_Mgr_id` varchar(10) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_employee_employee_idx` (`emp_Mgr_id`),
  CONSTRAINT `fk_employee_employee` FOREIGN KEY (`emp_Mgr_id`) REFERENCES `employee` (`emp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1','Pawarisa','Chuenchupol','F','15/2',15000,'0851512557','sand@what.com','1'),('2','panupong','prueksa','M','17/3',1200,'0838479383','panupong_pruk@hotmail.com','2'),('3','Sexton','Malee','M','16/3',20000,'0853508601','sex@gee.com','3'),('4','chayanis','tunterapong','F','12/4',NULL,'0835112131','nan@kmitl.ac.th','4');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `Food_id` int(11) NOT NULL AUTO_INCREMENT,
  `Food_name` varchar(100) NOT NULL,
  `Food_price` int(11) NOT NULL,
  `Food_type` varchar(10) NOT NULL,
  PRIMARY KEY (`Food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Mushroom Butter',60,'Appetizer'),(2,'Grilled Octopus Balls',75,'Appetizer'),(3,'Prawn Tempura',200,'Appetizer'),(4,'Vegetable Tempura',130,'Appetizer'),(5,'Fish Tempura',160,'Appetizer'),(6,'Potato Coroquette',100,'Appetizer'),(7,'Salmon Salad',200,'Appetizer'),(8,'Chawan Mushi',70,'Appetizer'),(9,'Japanese-style Pizza',120,'Appetizer'),(10,'Orinji Mushroon StirField with Butter',100,'Appetizer'),(11,'Japanese Pizza with Cheese and Crab Stick Topping',169,'Appetizer'),(12,'Sushi Full Set',500,'Set menu'),(13,'Sushi mini set',250,'Set menu'),(14,'Roasted pork on hot plate set',129,'Set menu'),(15,'Simmered pork cutlet in miso sauce set',145,'Set menu'),(16,'sashimi mini set',400,'Set menu'),(17,'sashimi boat set',700,'Set menu'),(18,'Diced cut pork steak set',145,'Set menu'),(19,'Diced cut beef steak set',155,'Set menu'),(20,'Hamburger steak with demiglace sauce set',169,'Set menu'),(21,'Deep-fried marinated chicken set',149,'Set menu'),(22,'French – fried chicken set',139,'Set menu'),(23,'Pork Cheese burger set',155,'Set menu'),(24,'Chicky Bento',250,'Set menu'),(25,'Sakana Bento',250,'Set menu'),(26,'Chicken Teriyaki Set',135,'Set menu'),(27,'Japanese Curry and Rice with Deep Fried Chicken Set',155,'Set menu'),(28,'Suki yaki Beef Set',200,'Set menu'),(29,'Suki yaki Porkf Set',200,'Set menu'),(30,'Suki yaki Seafood Set',250,'Set menu'),(31,'Grilled Salmon with Teriyaki Sauce Set',300,'Set menu'),(32,'Grilled Mackerel Streak Set',250,'Set menu'),(33,'Unagi Donburi',400,'Donburi'),(34,'Chyashu Don',160,'Donburi'),(35,'Salmon Donburi',230,'Donburi'),(36,'Dolly Donburi',200,'Donburi'),(37,'Spicy Buta Donburi',180,'Donburi'),(38,'Sukiyaki Donburi',200,'Donburi'),(39,'Zaru Soba',150,'noodle'),(40,'Ramen noodle in pork flavored soup',169,'noodle'),(41,'Somen noodle in Japanese soup',129,'noodle'),(42,'Somen noodle in Japanese soup topped with prawn tempura',139,'noodle'),(43,'Sukiyaki Pork Udon',139,'noodle'),(44,'Tempura Udon',129,'noodle'),(45,'Yakisoba on Hot Plate',109,'noodle'),(46,'Kara Ramen Champion',149,'noodle'),(47,'Hamichi Sushi',300,'sushi'),(48,'Aji Sushi',200,'sushi'),(49,'Hotate Sushi',230,'sushi'),(50,'Botan Ebi Sushi',210,'sushi'),(51,'Maguro Sushi',230,'sushi'),(52,'Unagi Sushi',350,'sushi'),(53,'Fresh Salmon Sushi',250,'sushi'),(54,'Flying fish roe Sushi',150,'sushi'),(55,'Gobe beef Sushi',250,'sushi'),(56,'white Tuna Sushi',200,'sushi'),(57,'Fresh Octopus Sushi',190,'sushi'),(58,'Soba Sushi',150,'sushi'),(59,'Smoke Salmon Sushi',200,'sushi'),(60,'Sweet egg sushi',100,'sushi'),(61,'California roll',200,'sushi'),(62,'Salmon roll',200,'sushi'),(63,'Tuna salad roll',250,'sushi'),(64,'Avocado roll',200,'sushi'),(65,'Tuna roll',200,'sushi'),(66,'Salmon egg sushi',160,'sushi'),(67,'Namagashi',230,'dessert'),(68,'Sakuramochi',300,'dessert'),(69,'japanese Cheese Cake',160,'dessert'),(70,'green tea ice cream',100,'dessert'),(71,'Teramisu',150,'dessert'),(72,'Dango',120,'dessert'),(73,'Yokan',130,'dessert'),(74,'Mochi',300,'dessert'),(75,'Daifuku mochi',140,'dessert'),(76,'Asahi Beer',250,'drink'),(77,'water',20,'drink'),(78,'hot green tea',80,'drink'),(79,'Coke refill',49,'drink'),(80,'Coke can',15,'drink'),(81,'Shochu',300,'drink'),(82,'Matcha latte',70,'drink'),(83,'lemonade',50,'drink'),(84,'Miso soup',60,'Appetizer'),(85,'root juice',70,'drink'),(86,'Sake',200,'drink'),(87,'Masha ice cream',500,'Appetizer');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Cus_id` int(11) DEFAULT NULL,
  `employee_emp_id` varchar(10) DEFAULT NULL,
  `table_Table_id` int(11) NOT NULL,
  `Food_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Order_status` varchar(15) DEFAULT 'Pending',
  `Payment_pay_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_employee1_idx` (`employee_emp_id`),
  KEY `fk_order_table1_idx` (`table_Table_id`),
  KEY `fk_customer1_idx` (`Customer_Cus_id`),
  KEY `fk_pay_payment_idx` (`Payment_pay_id`),
  CONSTRAINT `fk_customer1` FOREIGN KEY (`Customer_Cus_id`) REFERENCES `customer` (`Cus_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_employee1` FOREIGN KEY (`employee_emp_id`) REFERENCES `employee` (`emp_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_table1` FOREIGN KEY (`table_Table_id`) REFERENCES `table` (`Table_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pay_payment` FOREIGN KEY (`Payment_pay_id`) REFERENCES `payment` (`idPayment`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `order_order_id` int(11) NOT NULL,
  `Food_amount` int(11) NOT NULL,
  `Food_Food_id` int(11) NOT NULL,
  `check` int(11) NOT NULL,
  PRIMARY KEY (`check`),
  KEY `fk__idx` (`Food_Food_id`),
  KEY `fk_order_has_Food_order1_idx` (`order_order_id`),
  CONSTRAINT `fk_` FOREIGN KEY (`Food_Food_id`) REFERENCES `food` (`Food_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `idPayment` int(10) NOT NULL AUTO_INCREMENT,
  `Payment_amount` float NOT NULL,
  `Payment_type` varchar(45) NOT NULL,
  `Pyment_dept` varchar(200) DEFAULT NULL,
  `payment_status` varchar(45) NOT NULL,
  PRIMARY KEY (`idPayment`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (5,75,'ATM',NULL,'w');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table` (
  `Table_id` int(11) NOT NULL,
  `Seat_amount` int(11) DEFAULT NULL,
  `Zone` varchar(20) DEFAULT NULL,
  `Table_Status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (1,6,'outdoor','no'),(2,4,'outdoor','no'),(3,4,'outdoor','no'),(4,4,'outdoor','no'),(5,4,'outdoor','no'),(6,4,'outdoor','no'),(7,4,'outdoor','no'),(8,4,'outdoor','no'),(9,4,'outdoor','no'),(10,4,'outdoor','no'),(11,4,'outdoor','no'),(12,4,'outdoor','no'),(13,4,'outdoor','no'),(14,4,'outdoor','no'),(15,5,'outdoor','no'),(16,5,'outdoor','no'),(17,5,'outdoor','no'),(18,4,'outdoor','no'),(19,4,'outdoor','no'),(20,4,'outdoor','no'),(21,4,'outdoor','no'),(22,4,'outdoor','no'),(23,4,'cassic','no'),(24,4,'cassic','no'),(25,4,'cassic','no'),(26,4,'cassic','no'),(27,4,'cassic','no'),(28,4,'cassic','no'),(29,4,'cassic','no'),(30,4,'cassic','no'),(31,8,'modern','no'),(32,8,'modern','no'),(33,6,'modern','no'),(34,6,'modern','no'),(35,4,'modern','no'),(36,4,'modern','no'),(37,4,'modern','no'),(38,4,'modern','no'),(39,4,'modern','no'),(40,4,'modern','no'),(41,4,'modern','no'),(42,4,'modern','no'),(43,4,'modern','no');
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username`
--

DROP TABLE IF EXISTS `username`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `username` (
  `username` varchar(10) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` varchar(1) DEFAULT NULL,
  `employee_emp_id` int(11) DEFAULT NULL,
  `Customer_Cus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`,`password`),
  KEY `fk_username_employee1_idx` (`employee_emp_id`),
  KEY `fk_cus_id_idx` (`Customer_Cus_id`),
  CONSTRAINT `fk_cus_id` FOREIGN KEY (`Customer_Cus_id`) REFERENCES `customer` (`Cus_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username`
--

LOCK TABLES `username` WRITE;
/*!40000 ALTER TABLE `username` DISABLE KEYS */;
INSERT INTO `username` VALUES ('malee',NULL,'55070108','2014-03-11 12:16:17','E',3,NULL),('nunan',NULL,'555','2014-03-11 12:52:50','E',4,NULL),('phai',NULL,'55070089','2014-03-11 12:16:33','A',2,NULL),('sand',NULL,'55070071','2014-03-11 12:16:33','A',1,NULL);
/*!40000 ALTER TABLE `username` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-11 21:58:41
