-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: warehousedb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `automobilebrands`
--

DROP TABLE IF EXISTS `automobilebrands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automobilebrands` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobilebrands`
--

LOCK TABLES `automobilebrands` WRITE;
/*!40000 ALTER TABLE `automobilebrands` DISABLE KEYS */;
INSERT INTO `automobilebrands` VALUES (1,'Mercedes-Benz'),(2,'Ford'),(3,'Iveco'),(4,'Volkswagen'),(5,'Renault');
/*!40000 ALTER TABLE `automobilebrands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automobiles`
--

DROP TABLE IF EXISTS `automobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automobiles` (
  `AutoId` int NOT NULL AUTO_INCREMENT,
  `LoadValue` decimal(10,2) DEFAULT NULL,
  `AutomobileBrandId` int DEFAULT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `WorkerId` int DEFAULT NULL,
  `StoreId` int DEFAULT NULL,
  `RegisterNr` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`AutoId`),
  KEY `AutomobileBrandId` (`AutomobileBrandId`),
  KEY `WorkerId` (`WorkerId`),
  KEY `StoreId` (`StoreId`),
  CONSTRAINT `automobiles_ibfk_1` FOREIGN KEY (`AutomobileBrandId`) REFERENCES `automobilebrands` (`Id`),
  CONSTRAINT `automobiles_ibfk_2` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`),
  CONSTRAINT `automobiles_ibfk_3` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobiles`
--

LOCK TABLES `automobiles` WRITE;
/*!40000 ALTER TABLE `automobiles` DISABLE KEYS */;
INSERT INTO `automobiles` VALUES (1,1500.00,1,'Sprinter','Малък товарен бус за градски доставки',11,1,'CB1234AB'),(2,1800.00,1,'Sprinter XL','Удължен бус за средни доставки',12,1,'CB5678CD'),(3,2000.00,2,'Transit','Стандартен товарен ван',13,1,'CB9012EF'),(4,1700.00,2,'Transit Custom','Комбиниран транспорт',11,1,'CB3456GH'),(5,2200.00,3,'Daily 35S','Тежкотоварен автомобил',12,1,'CB7890IJ'),(6,2500.00,3,'Daily 50C','Усилен товарен камион',13,1,'CB1122KL'),(7,1600.00,4,'Crafter','Голям бус за дистрибуция',11,1,'CB3344MN'),(8,1400.00,4,'Transporter','Лек транспортен ван',12,1,'CB5566OP'),(9,1900.00,5,'Master L3H2','Среден клас доставки',13,1,'CB7788QR'),(10,2100.00,5,'Master L4H3','Висок товарен капацитет',11,1,'CB9900ST');
/*!40000 ALTER TABLE `automobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `CityId` int NOT NULL AUTO_INCREMENT,
  `Ekatte` varchar(10) DEFAULT NULL,
  `CityName` varchar(80) DEFAULT NULL,
  `MunicipalityId` int DEFAULT NULL,
  PRIMARY KEY (`CityId`),
  KEY `MunicipalityId` (`MunicipalityId`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`MunicipalityId`) REFERENCES `municipalities` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'68134','София',1),(2,'4000','Пловдив',2),(3,'9000','Варна',3),(4,'8000','Бургас',4),(5,'7000','Русе',5),(6,'6000','Стара Загора',6),(7,'5800','Плевен',7),(8,'2700','Благоевград',8),(9,'5000','Велико Търново',9),(10,'9700','Шумен',10),(11,'4700','Смолян',11),(12,'6600','Кърджали',12),(13,'6300','Хасково',13),(14,'9300','Добрич',14),(15,'3700','Видин',15),(16,'5800','Плевен села',7),(17,'4001','Пловдив район',2),(18,'9001','Варна район',3),(19,'8001','Бургас район',4),(20,'68135','София област',1);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ClientId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Bulstat` varchar(20) DEFAULT NULL,
  `RegistryNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Mol` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `CityId` int DEFAULT NULL,
  PRIMARY KEY (`ClientId`),
  KEY `fk_clients_city` (`CityId`),
  CONSTRAINT `fk_clients_city` FOREIGN KEY (`CityId`) REFERENCES `cities` (`CityId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Бебе Маркет ООД','BG123456789','175000123','София, бул. Витоша 10','Иван Петров','0888123001','office@bebemarket.bg','Верига магазини за бебешки стоки','2026-04-20 14:18:43',1),(2,'Kids World Ltd','BG223456789','175000124','Пловдив, ул. Главна 25','Мария Николова','0888123002','info@kidsworld.bg','Магазини за детски продукти','2026-04-20 14:18:43',2),(3,'Мама и Бебе ЕООД','BG323456789','175000125','Варна, бул. Сливница 44','Георги Димитров','0888123003','contact@mamabebe.bg','Търговия с бебешки стоки','2026-04-20 14:18:43',3),(4,'Happy Baby Store','BG423456789','175000126','Бургас, ул. Александровска 8','Елена Иванова','0888123004','sales@happybaby.bg','Онлайн и физически магазин','2026-04-20 14:18:43',4),(5,'Tiny Angels Shop','BG523456789','175000127','Русе, бул. Липник 15','Петър Стоянов','0888123005','info@tinyangels.bg','Детски и бебешки продукти','2026-04-20 14:18:43',5),(6,'Baby Land Bulgaria','BG623456789','175000128','Стара Загора, ул. Централна 3','Николай Георгиев','0888123006','office@babyland.bg','Магазин за бебешки стоки','2026-04-20 14:18:43',6),(7,'Sweet Kids BG','BG723456789','175000129','Плевен, ул. Стоян Заимов 14','Радослав Петров','0888123007','sales@sweetkids.bg','Търговия на едро','2026-04-20 14:18:43',7),(8,'Mini World Trading','BG823456789','175000130','Благоевград, бул. Кирил и Методий 9','Стефан Иванов','0888123008','info@miniworld.bg','Внос и дистрибуция','2026-04-20 14:18:43',8),(9,'Little Stars Commerce','BG923456789','175000131','Велико Търново, ул. Мария Луиза 20','Тодор Николов','0888123009','contact@littlestars.bg','Бебешки стоки и аксесоари','2026-04-20 14:18:43',9),(10,'Baby House Group','BG103456789','175000132','Шумен, ул. Дружба 7','Калоян Димитров','0888123010','info@babyhouse.bg','Вериги магазини','2026-04-20 14:18:43',10),(12,'Детски Свят ','BG200720065','452478931','Смолян, Бул. България 1','Димитър Илиев ','0879745612','detskisvyat@abv.bg','Магазин за детски стоки ','2026-06-27 11:39:52',11);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientstores`
--

DROP TABLE IF EXISTS `clientstores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientstores` (
  `ClientStoreId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `CityId` int DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ClientId` int DEFAULT NULL,
  PRIMARY KEY (`ClientStoreId`),
  KEY `CityId` (`CityId`),
  KEY `ClientId` (`ClientId`),
  CONSTRAINT `clientstores_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `cities` (`CityId`),
  CONSTRAINT `clientstores_ibfk_2` FOREIGN KEY (`ClientId`) REFERENCES `clients` (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientstores`
--

LOCK TABLES `clientstores` WRITE;
/*!40000 ALTER TABLE `clientstores` DISABLE KEYS */;
INSERT INTO `clientstores` VALUES (1,'Бебе Маркет София Център',1,'бул. Витоша 10','Флагман магазин',1),(2,'Бебе Маркет Пловдив',2,'ул. Главна 25','Филиал',1),(3,'Kids World Варна',3,'бул. Сливница 44','Основен магазин',2),(4,'Kids World Бургас',4,'ул. Александровска 8','Южен клон',2),(5,'Мама и Бебе Русе',5,'бул. Липник 15','Северен магазин',3),(6,'Мама и Бебе Плевен',7,'ул. Централна 3','Филиал',3),(7,'Happy Baby София',1,'бул. България 55','Основен',4),(8,'Happy Baby Пловдив',2,'ул. Коматевско шосе 12','Филиал',4),(9,'Tiny Angels Варна',3,'бул. Владислав 22','Магазин',5),(10,'Tiny Angels Бургас',4,'ул. Индустриална 5','Филиал',5);
/*!40000 ALTER TABLE `clientstores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactpersons`
--

DROP TABLE IF EXISTS `contactpersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactpersons` (
  `ContactPersonId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `PositionId` int NOT NULL,
  `Telephone` varchar(15) DEFAULT NULL,
  `Mail` varchar(40) DEFAULT NULL,
  `ClientId` int NOT NULL,
  PRIMARY KEY (`ContactPersonId`),
  KEY `PositionId` (`PositionId`),
  KEY `ClientId` (`ClientId`),
  CONSTRAINT `contactpersons_ibfk_1` FOREIGN KEY (`PositionId`) REFERENCES `positions` (`PositionId`),
  CONSTRAINT `contactpersons_ibfk_2` FOREIGN KEY (`ClientId`) REFERENCES `clients` (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactpersons`
--

LOCK TABLES `contactpersons` WRITE;
/*!40000 ALTER TABLE `contactpersons` DISABLE KEYS */;
INSERT INTO `contactpersons` VALUES (1,'Иван','Петров',1,'0888111001','ivan.petrov@bebemarket.bg',1),(2,'Мария','Георгиева',2,'0888111002','m.georgieva@kidsworld.bg',2),(3,'Георги','Димитров',3,'0888111003','georgi.dim@mamabebe.bg',3),(4,'Елена','Иванова',4,'0888111004','elena.ivanova@happybaby.bg',4),(5,'Николай','Стоянов',2,'0888111005','nikolay@tinyangels.bg',5),(6,'Десислава','Петрова',1,'0888111006','desi@babyland.bg',6),(7,'Стефан','Колев',3,'0888111007','stefan@sweetkids.bg',7),(8,'Радослав','Николов',2,'0888111008','rado@miniworld.bg',8),(9,'Тодор','Георгиев',4,'0888111009','todor@littlestars.bg',9),(10,'Калоян','Иванов',1,'0888111010','kaloyan@babyhouse.bg',10);
/*!40000 ALTER TABLE `contactpersons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverydetail`
--

DROP TABLE IF EXISTS `deliverydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverydetail` (
  `DeliveryDId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int NOT NULL,
  `Quantity` float NOT NULL,
  `Price` float NOT NULL,
  `DeliveryMId` int NOT NULL,
  PRIMARY KEY (`DeliveryDId`),
  KEY `fk_deliverydetail_master` (`DeliveryMId`),
  KEY `fk_deliverydetail_product` (`ProductId`),
  CONSTRAINT `fk_deliverydetail_master` FOREIGN KEY (`DeliveryMId`) REFERENCES `deliverymaster` (`DeliveryMId`) ON DELETE CASCADE,
  CONSTRAINT `fk_deliverydetail_product` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverydetail`
--

LOCK TABLES `deliverydetail` WRITE;
/*!40000 ALTER TABLE `deliverydetail` DISABLE KEYS */;
INSERT INTO `deliverydetail` VALUES (17,36,80,4.2,18),(18,30,70,24.9,18),(19,37,70,5.99,19),(20,38,30,15,19),(21,32,150,6.99,20),(22,41,80,4.8,20),(23,34,30,199.99,21),(24,41,40,4.8,21),(25,38,15,15,21),(26,32,100,6.99,22),(27,29,40,22.5,23),(28,33,50,7.5,24),(29,37,25,5.99,25),(30,35,10,129.99,26),(31,31,60,3.49,27),(32,39,25,19.99,28),(33,28,170,14.99,29),(34,37,20,5.99,30),(35,31,100,3.49,30),(36,34,10,199.99,31),(37,38,25,15,31),(38,28,50,14.99,31),(39,27,200,12.99,32),(40,40,80,9.99,33),(41,36,50,4.2,34),(42,32,50,6.99,35),(43,43,80,30,36),(44,43,60,30,37);
/*!40000 ALTER TABLE `deliverydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverymaster`
--

DROP TABLE IF EXISTS `deliverymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverymaster` (
  `DeliveryMId` int NOT NULL AUTO_INCREMENT,
  `StoreId` int NOT NULL,
  `Number` int NOT NULL,
  `ClientStoreId` int NOT NULL,
  `WorkerId` int NOT NULL,
  `DeliveryDate` date NOT NULL,
  PRIMARY KEY (`DeliveryMId`),
  KEY `fk_delivery_store` (`StoreId`),
  KEY `fk_delivery_client_store` (`ClientStoreId`),
  KEY `fk_delivery_worker` (`WorkerId`),
  CONSTRAINT `fk_delivery_client_store` FOREIGN KEY (`ClientStoreId`) REFERENCES `clientstores` (`ClientStoreId`) ON DELETE RESTRICT,
  CONSTRAINT `fk_delivery_store` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_delivery_worker` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverymaster`
--

LOCK TABLES `deliverymaster` WRITE;
/*!40000 ALTER TABLE `deliverymaster` DISABLE KEYS */;
INSERT INTO `deliverymaster` VALUES (18,3,18,3,13,'2026-05-28'),(19,2,19,8,9,'2026-05-20'),(20,1,20,1,14,'2026-05-16'),(21,3,21,3,9,'2026-06-08'),(22,5,22,5,7,'2026-06-18'),(23,1,23,1,14,'2026-06-10'),(24,1,24,1,7,'2026-06-04'),(25,2,25,2,6,'2026-06-06'),(26,5,26,5,2,'2026-06-09'),(27,3,27,9,3,'2026-06-11'),(28,4,28,10,10,'2026-06-12'),(29,2,29,2,1,'2026-06-20'),(30,4,30,10,3,'2026-06-20'),(31,1,31,1,12,'2026-06-20'),(32,3,32,3,4,'2026-06-20'),(33,2,33,8,11,'2026-06-20'),(34,2,34,2,7,'2026-06-25'),(35,4,35,10,2,'2026-06-26'),(36,5,36,5,15,'2026-06-27'),(37,4,37,10,15,'2026-06-27');
/*!40000 ALTER TABLE `deliverymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetails` (
  `InvoiceDId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int DEFAULT NULL,
  `Quantity` decimal(10,2) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `InvoiceMId` int DEFAULT NULL,
  PRIMARY KEY (`InvoiceDId`),
  KEY `ProductId` (`ProductId`),
  KEY `InvoiceMId` (`InvoiceMId`),
  CONSTRAINT `invoicedetails_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`),
  CONSTRAINT `invoicedetails_ibfk_2` FOREIGN KEY (`InvoiceMId`) REFERENCES `invoicemasters` (`InvoiceMId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` VALUES (15,32,70.00,6.99,29),(16,29,100.00,22.50,30),(17,37,40.00,5.99,33),(18,40,20.00,9.99,34),(19,31,80.00,3.49,35),(20,35,20.00,129.99,36),(21,28,40.00,14.99,37),(22,40,40.00,9.99,38),(23,40,40.00,9.99,39),(24,28,150.00,14.99,40),(25,33,20.00,7.50,42),(26,35,10.00,129.99,43),(27,27,30.00,12.99,44),(28,27,30.00,12.99,46);
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicemasters`
--

DROP TABLE IF EXISTS `invoicemasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicemasters` (
  `InvoiceMId` int NOT NULL AUTO_INCREMENT,
  `WorkerId` int DEFAULT NULL,
  `Receiver` varchar(40) DEFAULT NULL,
  `Number` int DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `ClientId` int DEFAULT NULL,
  PRIMARY KEY (`InvoiceMId`),
  KEY `WorkerId` (`WorkerId`),
  KEY `ClientId` (`ClientId`),
  CONSTRAINT `invoicemasters_ibfk_1` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`),
  CONSTRAINT `invoicemasters_ibfk_2` FOREIGN KEY (`ClientId`) REFERENCES `clients` (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicemasters`
--

LOCK TABLES `invoicemasters` WRITE;
/*!40000 ALTER TABLE `invoicemasters` DISABLE KEYS */;
INSERT INTO `invoicemasters` VALUES (29,11,NULL,29,'2026-05-27',4),(30,9,NULL,30,'2026-05-28',7),(33,5,NULL,33,'2026-06-14',8),(34,2,NULL,34,'2026-06-14',6),(35,1,NULL,35,'2026-06-16',2),(36,5,NULL,36,'2026-06-10',5),(37,5,NULL,37,'2026-06-03',10),(38,1,NULL,38,'2026-06-15',5),(39,1,NULL,39,'2026-06-15',5),(40,9,NULL,40,'2026-06-18',4),(41,5,NULL,41,'2026-06-09',2),(42,1,NULL,42,'2026-06-20',9),(43,10,NULL,43,'2026-06-20',9),(44,1,NULL,44,'2026-06-27',9),(46,1,NULL,46,'2026-06-27',9);
/*!40000 ALTER TABLE `invoicemasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measures` (
  `MeasureId` int NOT NULL AUTO_INCREMENT,
  `MeasureName` varchar(30) DEFAULT NULL,
  `Description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MeasureId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
INSERT INTO `measures` VALUES (1,'брой',NULL),(2,'опаковка',NULL),(3,'мл',NULL),(4,'грам',NULL),(5,'комплект',NULL);
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipalities`
--

DROP TABLE IF EXISTS `municipalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipalities` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MunicipNr` int DEFAULT NULL,
  `MunicipName` varchar(50) DEFAULT NULL,
  `RegionId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `RegionId` (`RegionId`),
  CONSTRAINT `municipalities_ibfk_1` FOREIGN KEY (`RegionId`) REFERENCES `regions` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipalities`
--

LOCK TABLES `municipalities` WRITE;
/*!40000 ALTER TABLE `municipalities` DISABLE KEYS */;
INSERT INTO `municipalities` VALUES (1,101,'София',23),(2,102,'Пловдив',16),(3,103,'Варна',3),(4,104,'Бургас',2),(5,105,'Русе',18),(6,106,'Стара Загора',24),(7,107,'Плевен',15),(8,108,'Благоевград',1),(9,109,'Велико Търново',4),(10,110,'Шумен',27),(11,111,'Смолян',21),(12,112,'Кърджали',9),(13,113,'Хасково',26),(14,114,'Добрич',8),(15,115,'Видин',5);
/*!40000 ALTER TABLE `municipalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outgoingorderdetails`
--

DROP TABLE IF EXISTS `outgoingorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outgoingorderdetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `OutgoingOrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `Quantity` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_outdet_product` (`ProductId`),
  KEY `fk_outdet_outgoingorder` (`OutgoingOrderId`),
  CONSTRAINT `fk_outdet_outgoingorder` FOREIGN KEY (`OutgoingOrderId`) REFERENCES `outgoingorders` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `fk_outdet_product` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outgoingorderdetails`
--

LOCK TABLES `outgoingorderdetails` WRITE;
/*!40000 ALTER TABLE `outgoingorderdetails` DISABLE KEYS */;
INSERT INTO `outgoingorderdetails` VALUES (4,26,41,5.00),(5,28,27,20.00),(6,29,32,20.00),(7,30,36,100.00),(8,31,40,40.00),(9,32,28,150.00),(10,35,33,20.00),(11,36,33,50.00),(12,37,28,10.00),(13,39,28,40.00),(14,41,37,10.00),(15,43,27,30.00);
/*!40000 ALTER TABLE `outgoingorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outgoingorders`
--

DROP TABLE IF EXISTS `outgoingorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outgoingorders` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Number` int DEFAULT NULL,
  `ClientStoreId` int DEFAULT NULL,
  `StoreId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_out_clientstore` (`ClientStoreId`),
  KEY `fk_out_store` (`StoreId`),
  CONSTRAINT `fk_out_clientstore` FOREIGN KEY (`ClientStoreId`) REFERENCES `clientstores` (`ClientStoreId`),
  CONSTRAINT `fk_out_store` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outgoingorders`
--

LOCK TABLES `outgoingorders` WRITE;
/*!40000 ALTER TABLE `outgoingorders` DISABLE KEYS */;
INSERT INTO `outgoingorders` VALUES (26,'2026-05-18 12:51:01',1,8,2),(28,'2026-06-07 15:04:53',2,5,5),(29,'2026-05-28 20:00:21',3,10,4),(30,'2026-06-07 16:11:40',4,10,4),(31,'2026-06-16 10:53:00',5,5,5),(32,'2026-06-16 11:46:00',32,8,2),(35,'2026-06-20 03:10:00',35,9,3),(36,'2026-06-25 14:18:00',36,7,1),(37,'2026-06-25 23:41:00',37,2,2),(39,'2026-06-25 23:44:00',39,1,1),(41,'2026-06-27 12:02:00',41,10,4),(43,'2026-06-27 15:28:00',43,9,3);
/*!40000 ALTER TABLE `outgoingorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `PositionId` int NOT NULL AUTO_INCREMENT,
  `PositionName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Мениджър склад'),(2,'Складов оператор'),(3,'Шофьор доставка'),(4,'Администратор');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Description` text,
  `MeasureId` int DEFAULT NULL,
  `DiscountQuantity` decimal(10,2) DEFAULT '0.00',
  `DiscountPercent` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`Id`),
  KEY `fk_products_measure` (`MeasureId`),
  CONSTRAINT `fk_products_measure` FOREIGN KEY (`MeasureId`) REFERENCES `measures` (`MeasureId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (27,'Бебешки пелени размер 1 (2-5 кг)',12.99,'Меки пелени за новородени',1,100.00,10.00),(28,'Бебешки пелени размер 3 (6-10 кг)',14.99,'Комфортни пелени с добра абсорбация',1,100.00,100.00),(29,'Бебешко мляко 0-6 месеца',22.50,'Адаптирано мляко за новородени',2,30.00,9.00),(30,'Бебешко мляко 6-12 месеца',24.90,'Последваща формула за бебета',2,60.00,7.00),(31,'Бебешки мокри кърпички',3.49,'Без алкохол и парфюми',1,20.00,10.00),(32,'Бебешки шампоан',6.99,'Без сълзи формула',3,30.00,5.00),(33,'Бебешки лосион с алое вера',7.50,'Хидратиращ лосион за чувствителна кожа',3,60.00,7.00),(34,'Бебешка количка премиум',199.99,'Лека и удобна количка със защита',1,50.00,15.00),(35,'Столче за кола група 0+',129.99,'Сертифицирано столче за безопасност',1,50.00,15.00),(36,'Бебешко шише 250 мл',4.20,'Антиколик система',3,30.00,5.00),(37,'Биберони комплект',5.99,'Силиконови биберони комплект',3,25.00,5.00),(38,'Бебешко одеяло памук',15.00,'Меко и топло одеяло',1,20.00,5.00),(39,'Бебешки дрешки комплект 0-3 месеца',19.99,'Памучен комплект дрехи',1,50.00,9.00),(40,'Дигитален бебешки термометър',9.99,'Бързо измерване на температура',1,70.00,9.00),(41,'Бебешка пудра натурална',4.80,'Защита на чувствителната кожа',3,60.00,10.00),(43,'Бебешки пелени размер 5 (11-17 кг.)',30.00,'Комфортни пелени с добра абсорбация',1,50.00,10.00),(45,'Мокри кърпи Бебо',2.50,'Мокри кърпички 99% вода',1,50.00,5.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `PromotionId` int NOT NULL AUTO_INCREMENT,
  `StoreId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT NULL,
  `Validity` date DEFAULT NULL,
  PRIMARY KEY (`PromotionId`),
  KEY `StoreId` (`StoreId`),
  KEY `ProductId` (`ProductId`),
  CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`),
  CONSTRAINT `promotions_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (2,4,33,10.00,'2026-06-20'),(3,5,32,5.00,'2026-06-20'),(4,3,30,5.00,'2026-06-20'),(5,2,32,5.00,'2026-06-30');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Благоевград'),(2,'Бургас'),(3,'Варна'),(4,'Велико Търново'),(5,'Видин'),(6,'Враца'),(7,'Габрово'),(8,'Добрич'),(9,'Кърджали'),(10,'Кюстендил'),(11,'Ловеч'),(12,'Монтана'),(13,'Пазарджик'),(14,'Перник'),(15,'Плевен'),(16,'Пловдив'),(17,'Разград'),(18,'Русе'),(19,'Силистра'),(20,'Сливен'),(21,'Смолян'),(22,'София област'),(23,'София град'),(24,'Стара Загора'),(25,'Търговище'),(26,'Хасково'),(27,'Шумен'),(28,'Ямбол');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `RevisionId` int NOT NULL AUTO_INCREMENT,
  `StoreId` int DEFAULT NULL,
  `RevisionDate` date DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `Quantity` decimal(10,2) DEFAULT NULL,
  `WorkerId` int DEFAULT NULL,
  PRIMARY KEY (`RevisionId`),
  KEY `StoreId` (`StoreId`),
  KEY `ProductId` (`ProductId`),
  KEY `WorkerId` (`WorkerId`),
  CONSTRAINT `revisions_ibfk_1` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`),
  CONSTRAINT `revisions_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`),
  CONSTRAINT `revisions_ibfk_3` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (2,3,'2026-05-04',29,25.00,7),(3,4,'2026-06-13',32,50.00,13),(4,2,'2026-06-10',31,70.00,14);
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `ScheduleId` int NOT NULL AUTO_INCREMENT,
  `InvoiceMId` int DEFAULT NULL,
  `OrderMId` int DEFAULT NULL,
  `AutomobileId` int DEFAULT NULL,
  `Km` decimal(10,2) DEFAULT NULL,
  `WorkerId` int DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryHour` time DEFAULT NULL,
  `ClientStoreId` int DEFAULT NULL,
  `Status` char(1) DEFAULT NULL,
  PRIMARY KEY (`ScheduleId`),
  KEY `InvoiceMId` (`InvoiceMId`),
  KEY `OrderMId` (`OrderMId`),
  KEY `AutomobileId` (`AutomobileId`),
  KEY `WorkerId` (`WorkerId`),
  KEY `ClientStoreId` (`ClientStoreId`),
  CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`InvoiceMId`) REFERENCES `invoicemasters` (`InvoiceMId`),
  CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`OrderMId`) REFERENCES `outgoingorders` (`Id`),
  CONSTRAINT `schedules_ibfk_3` FOREIGN KEY (`AutomobileId`) REFERENCES `automobiles` (`AutoId`),
  CONSTRAINT `schedules_ibfk_4` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`),
  CONSTRAINT `schedules_ibfk_5` FOREIGN KEY (`ClientStoreId`) REFERENCES `clientstores` (`ClientStoreId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (9,36,28,4,90.00,11,'2026-06-01','11:20:00',4,'D'),(12,37,30,9,190.00,11,'2026-06-13','16:44:00',4,'D'),(13,40,32,6,100.00,12,'2026-06-19','09:00:00',8,'D'),(15,42,43,2,120.00,11,'2026-06-27','20:00:00',2,'P');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `CityId` int DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `cities` (`CityId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Склад София Център',1,'бул. България 45','Основен централен склад'),(2,'Склад Пловдив',2,'ул. Коматевско шосе 12','Регионален склад'),(3,'Склад Варна',3,'бул. Владислав Варненчик 88','Склад за Североизточна България'),(4,'Склад Бургас',4,'ул. Индустриална 5','Югоизточен склад'),(5,'Склад Русе',5,'бул. Липник 20','Северен логистичен център');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(20) NOT NULL DEFAULT 'Employee',
  `WorkerId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `unique_username` (`Username`),
  KEY `fk_user_worker` (`WorkerId`),
  KEY `idx_username` (`Username`),
  CONSTRAINT `fk_user_worker` FOREIGN KEY (`WorkerId`) REFERENCES `workers` (`WorkerId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin','$2a$11$pdRml/Ah8YL0ixN8wrEerufbYFy/5tiUpC9RLNeQGkXLGBam8G97K','Admin',NULL),(5,'employee','$2a$11$RRD0bH56aAbhNR6rfzyuRuprKgQvVaJyVg064gLZH9/QJMN0ZMRky','Employee',NULL),(7,'ivan.ivanov','$2a$11$AqvVMgv37WPoLMrpaWnvUe2XuoNUY0REya7vEPI.MiWRZKvVSpwvm','Employee',1),(8,'kaloyan.petrov','$2a$11$3CuV7bWGz40MeQ55Bk.eoumbsESBX9ukyahscF7RmkzpMXmanFY06','Employee',10);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `WorkerId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) DEFAULT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `EGN` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `StoreId` int DEFAULT NULL,
  `PositionId` int DEFAULT NULL,
  PRIMARY KEY (`WorkerId`),
  KEY `StoreId` (`StoreId`),
  KEY `PositionId` (`PositionId`),
  CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`StoreId`) REFERENCES `stores` (`Id`),
  CONSTRAINT `workers_ibfk_2` FOREIGN KEY (`PositionId`) REFERENCES `positions` (`PositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Иван','Петров','Иванов','9001011234','София Люлин','0888111111',1,1),(2,'Георги','Николов','Димитров','9102022345','София Надежда','0888111112',1,2),(3,'Петър','Стоянов','Петров','9203033456','София Младост','0888111113',1,2),(4,'Николай','Иванов','Георгиев','9304044567','София Овча купел','0888111114',1,2),(5,'Стефан','Кирилов','Стоянов','9405055678','София Дружба','0888111115',1,2),(6,'Александър','Петров','Николов','9506066789','София Лозенец','0888111116',1,2),(7,'Виктор','Димитров','Иванов','9607077890','София Център','0888111117',1,2),(8,'Радослав','Стоянов','Петров','9708088901','София Борово','0888111118',1,2),(9,'Тодор','Георгиев','Иванов','9809099012','София Хаджи Димитър','0888111119',1,2),(10,'Калоян','Николов','Петров','9901010123','София Илиянци','0888111120',1,2),(11,'Димитър','Василев','Георгиев','8505055678','София','0888222211',1,3),(12,'Ивайло','Петров','Николов','8606066789','София','0888222212',1,3),(13,'Симеон','Стоянов','Иванов','8707077890','София','0888222213',1,3),(14,'Елена','Георгиева','Петрова','8808088901','София','0888333311',1,4),(15,'Мартин','Иванов','Стоянов','9009099012','София','0888111121',1,2);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-30 10:07:11
