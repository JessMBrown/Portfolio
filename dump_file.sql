-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: Happy_Docs_Leeds
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Blood_Test_Results`
--

DROP TABLE IF EXISTS `Blood_Test_Results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Blood_Test_Results` (
  `Blood_Test_Results_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Blood_Tests_ID` int NOT NULL,
  `Date_Expected` date DEFAULT NULL,
  `Date_Recieved` date DEFAULT NULL,
  `Patient_Follow_Up_Needed` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Blood_Test_Results_ID`),
  KEY `FK_Blood_Test_Results` (`Patient_Blood_Tests_ID`),
  CONSTRAINT `FK_Blood_Test_Results` FOREIGN KEY (`Patient_Blood_Tests_ID`) REFERENCES `Patient_Blood_Tests` (`Patient_Blood_Tests_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood_Test_Results`
--

LOCK TABLES `Blood_Test_Results` WRITE;
/*!40000 ALTER TABLE `Blood_Test_Results` DISABLE KEYS */;
INSERT INTO `Blood_Test_Results` VALUES (1,1,'2023-05-15','2023-05-16','Y'),(2,2,'2023-05-15','2023-05-16','N'),(3,3,'2023-05-16','2023-05-16','N'),(4,4,'2023-05-16','2023-05-16','Y'),(5,5,'2023-05-16','2023-05-16','Y'),(6,6,'2023-05-17','2023-05-18','Y'),(7,7,'2023-05-17','2023-05-18','N'),(8,8,'2023-05-18','2023-05-18','Y'),(9,9,'2023-05-19','2023-05-18','N'),(10,10,'2023-05-19','2023-05-18','N');
/*!40000 ALTER TABLE `Blood_Test_Results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BMI_Tracking`
--

DROP TABLE IF EXISTS `BMI_Tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BMI_Tracking` (
  `BMI_Tracking_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `BMI` decimal(4,2) DEFAULT NULL,
  `Date_Of_Record` date DEFAULT NULL,
  `Date_Of_Contact` date DEFAULT NULL,
  PRIMARY KEY (`BMI_Tracking_ID`),
  KEY `FK_BMI_Tracking` (`Patient_Details_ID`),
  CONSTRAINT `FK_BMI_Tracking` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BMI_Tracking`
--

LOCK TABLES `BMI_Tracking` WRITE;
/*!40000 ALTER TABLE `BMI_Tracking` DISABLE KEYS */;
INSERT INTO `BMI_Tracking` VALUES (1,1,33.37,'2023-05-30',NULL),(2,2,25.76,'2023-05-30',NULL),(3,3,24.50,'2023-05-30',NULL),(4,4,34.41,'2023-05-30',NULL),(5,5,23.04,'2023-05-30',NULL),(6,6,27.69,'2023-05-30',NULL),(7,7,24.63,'2023-05-30',NULL),(8,8,45.14,'2023-05-30',NULL),(9,9,29.16,'2023-05-30',NULL),(10,10,24.77,'2023-05-30',NULL),(11,11,31.38,'2023-05-30',NULL),(12,12,35.59,'2023-05-30',NULL),(13,13,27.56,'2023-05-30',NULL),(14,14,34.73,'2023-05-30',NULL),(15,15,27.96,'2023-05-30',NULL),(16,16,24.19,'2023-05-30',NULL),(17,17,NULL,'2023-05-30',NULL),(18,18,22.36,'2023-05-30',NULL),(19,19,22.77,'2023-05-30',NULL),(20,20,23.25,'2023-05-30',NULL),(21,21,20.82,'2023-05-30',NULL),(22,22,22.26,'2023-05-30',NULL),(23,23,32.59,'2023-05-30',NULL),(24,24,22.95,'2023-05-30',NULL),(25,25,23.74,'2023-05-30',NULL),(26,26,NULL,'2023-05-30',NULL),(27,27,23.36,'2023-05-30',NULL),(28,28,22.44,'2023-05-30',NULL),(29,29,22.63,'2023-05-30',NULL),(30,30,23.42,'2023-05-30',NULL),(31,31,24.75,'2023-05-30',NULL),(32,32,27.11,'2023-05-30',NULL),(33,33,23.10,'2023-05-30',NULL),(34,34,23.56,'2023-05-30',NULL),(35,35,22.47,'2023-05-30',NULL),(36,36,NULL,'2023-05-30',NULL),(37,37,NULL,'2023-05-30',NULL),(38,38,NULL,'2023-05-30',NULL),(39,39,20.42,'2023-05-30',NULL),(40,40,NULL,'2023-05-30',NULL),(41,41,23.27,'2023-05-30',NULL),(42,42,NULL,'2023-05-30',NULL),(43,43,24.13,'2023-05-30',NULL),(44,44,22.41,'2023-05-30',NULL),(45,45,NULL,'2023-05-30',NULL),(46,46,NULL,'2023-05-30',NULL),(47,47,21.85,'2023-05-30',NULL),(48,48,NULL,'2023-05-30',NULL),(49,49,22.83,'2023-05-30',NULL),(50,50,22.13,'2023-05-30',NULL),(51,51,NULL,'2023-05-30',NULL),(52,52,22.74,'2023-05-30',NULL),(53,53,22.03,'2023-05-30',NULL),(54,54,22.91,'2023-05-30',NULL),(55,55,22.59,'2023-05-30',NULL),(56,56,22.76,'2023-05-30',NULL),(57,57,22.47,'2023-05-30',NULL),(58,58,22.73,'2023-05-30',NULL),(59,59,22.91,'2023-05-30',NULL),(60,60,23.63,'2023-05-30',NULL),(61,61,22.44,'2023-05-30',NULL),(62,62,24.69,'2023-05-30',NULL),(63,63,23.47,'2023-05-30',NULL);
/*!40000 ALTER TABLE `BMI_Tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deceased`
--

DROP TABLE IF EXISTS `Deceased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Deceased` (
  `Deceased_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `DOB` date DEFAULT NULL,
  `DOD` date DEFAULT NULL,
  `Cause` varchar(60) DEFAULT NULL,
  `Removed_From_System` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Deceased_ID`),
  KEY `FK_Deceased` (`Patient_Details_ID`),
  CONSTRAINT `FK_Deceased` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deceased`
--

LOCK TABLES `Deceased` WRITE;
/*!40000 ALTER TABLE `Deceased` DISABLE KEYS */;
INSERT INTO `Deceased` VALUES (1,12,'1975-04-17','2023-05-15','Explosion','Y'),(2,14,'1980-07-28','2023-05-17','Gun Shot','Y'),(3,24,'1980-11-24','2023-05-17','Gun Shot','Y'),(4,16,'1965-02-16','2023-05-19','Gun Shot','Y'),(5,18,'1990-05-18','2023-05-19','Drug_Overdose','Y'),(6,27,'1942-02-01','2023-05-20','Dementia_Complications','Y'),(7,29,'1941-01-08','2023-05-20','Cancer','Y'),(8,53,'1942-06-21','2023-05-20','Fall','Y');
/*!40000 ALTER TABLE `Deceased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient_Address`
--

DROP TABLE IF EXISTS `Patient_Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient_Address` (
  `Patient_Address_ID` int NOT NULL AUTO_INCREMENT,
  `Address_Line_1` varchar(60) DEFAULT NULL,
  `County` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Postcode` varchar(20) DEFAULT NULL,
  `Patient_Contact_ID` int NOT NULL,
  PRIMARY KEY (`Patient_Address_ID`),
  KEY `FK_Patient_Address` (`Patient_Contact_ID`),
  CONSTRAINT `FK_Patient_Address` FOREIGN KEY (`Patient_Contact_ID`) REFERENCES `Patient_Contact` (`Patient_Contact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_Address`
--

LOCK TABLES `Patient_Address` WRITE;
/*!40000 ALTER TABLE `Patient_Address` DISABLE KEYS */;
INSERT INTO `Patient_Address` VALUES (1,'4 milwalk place','Morley','Leeds','LS270QY',1),(2,'7 Victoria Road','Morley','Leeds','LS273JO',2),(3,'22 Rein Road','Morley','Leeds','LS27OPQ',3),(4,'14 Westerton Road','Morley','Leeds','LS279JP',4),(5,'79 Dewsbury Road','Morley','Leeds','LS27Y0P',5),(6,'53 Norway Close','Morley','Leeds','LS278GB',6),(7,'36 Waterloo Road','Morley','Leeds','LS27D7G',7),(8,'1 Mayfair Way','Morley','Leeds','LS276TV',8),(9,'52 Magpie Line','Morley','Leeds','LS277BZ',9),(10,'17 westleigh drive','Morley','Leeds','LS276WP',10),(11,'5 Baghill Road','Morley','Leeds','LS27TUP',11),(12,'19 Maidens Way','Morley','Leeds','LS279IV',12),(13,'12 Linfoot Drive','Morley','Leeds','LS270GO',13),(14,'1 Riverside View','Morley','Leeds','LS276TT',14),(15,'17 Westleigh drive','Morley','Leeds','LS276WP',15),(16,'4 Runners Way','Morley','Leeds','LS276MR',16),(17,'17 westleigh drive','Morley','Leeds','LS276WP',17),(18,'13 Natures Way','Morley','Leeds','LS276TC',18),(19,'91 Conners Walk','Morley','Leeds','LS270NZ',19),(20,'The Nook','Morley','Leeds','LS278QA',20),(21,'1 Riverside View','Morley','Leeds','LS276TT',21),(22,'464 Walkers Road','Morley','Leeds','LS278YA',22),(23,'62 Ridings Road','Morley','Leeds','LS270DV',23),(24,'474 Walkers Road','Morley','Leeds','LS279FX',24),(25,'The Nook','Morley','Leeds','LS278QA',25),(26,'17 westleigh drive','Morley','Leeds','LS276WP',26),(27,'32 Laymans Walk','Morley','Leeds','LS278AQ',27),(28,'61 Harrop Avenue','Morley','Leeds','LS276DN',28),(29,'12 Askey Avenue','Morley','Leeds','LS275YP',29),(30,'28 Shire Road','Morley','Leeds','LS276AM',30),(31,'1 The Gallops','Morley','Leeds','LS273WB',31),(32,'867 Britannia Road','Morley','Leeds','LS270XX',32),(33,'84 Sycomore Grove','Morley','Leeds','LS27 4TB',33),(34,'84 Sycomore Grove','Morley','Leeds','LS274TB',34),(35,'84 Sycomore Grove','Morley','Leeds','LS274TB',35),(36,'84 Sycomore Grove','Morley','Leeds','LS274TB',36),(37,'84 Sycomore Grove','Morley','Leeds','LS274TB',37),(38,'84 Sycomore Grove','Morley','Leeds','LS274TB',38),(39,'7 Chase avenue','Morley','Leeds','LS278QN',39),(40,'7 Chase avenue','Morley','Leeds','LS278QN',40),(41,'7 Chase avenue','Morley','Leeds','LS278QN',41),(42,'7 Chase avenue','Morley','Leeds','LS278QN',42),(43,'7 Chase avenue','Morley','Leeds','LS278QN',43),(44,'18 Marchant Way','Morley','Leeds','LS272AL',44),(45,'18 Marchant Way','Morley','Leeds','LS272AL',45),(46,'18 Marchant Way','Morley','Leeds','LS272AL',46),(47,'4 Cosmos Drive','Morley','Leeds','LS278UG',47),(48,'4 Cosmos Drive','Morley','Leeds','LS278UG',48),(49,'4 Cosmos Drive','Morley','Leeds','LS278UG',49),(50,'4 Cosmos Drive','Morley','Leeds','LS278UG',50),(51,'4 Cosmos Drive','Morley','Leeds','LS278UG',51),(52,'4 Cosmos Drive','Morley','Leeds','LS278UG',52),(53,'42 Poplar Crescent','Morley','Leeds','LS27TUP',53),(54,'12 Woodkirk Grove','Morley','Leeds','LS270GC',54),(55,'17 Turnberry Gardens','Morley','Leeds','LS270SA',55),(56,'29 Syke Avenue','Morley','Leeds','LS279SN',56),(57,'62 St Marys Close','Morley','Leeds','LS279VT',57),(58,'6 Meadows Way','Morley','Leeds','LS276FG',58),(59,'65 Ryedale Way','Morley','Leeds','LS270CM',59),(60,'8 Lonsdale Drive','Morley','Leeds','LS276JA',60),(61,'17 Broadcroft Drive','Morley','Leeds','LS278DJ',61),(62,'22 Constable Road','Morley','Leeds','LS276DH',62),(63,'17 Balmoral Crescent','Morley','Leeds','LS273DP',63);
/*!40000 ALTER TABLE `Patient_Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient_Blood_Tests`
--

DROP TABLE IF EXISTS `Patient_Blood_Tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient_Blood_Tests` (
  `Patient_Blood_Tests_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `Blood_Test_Needed` varchar(60) DEFAULT NULL,
  `Blood_Test_Date` date DEFAULT NULL,
  `Bloods_Taken` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Patient_Blood_Tests_ID`),
  KEY `FK_Patient_Blood_Tests` (`Patient_Details_ID`),
  CONSTRAINT `FK_Patient_Blood_Tests` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_Blood_Tests`
--

LOCK TABLES `Patient_Blood_Tests` WRITE;
/*!40000 ALTER TABLE `Patient_Blood_Tests` DISABLE KEYS */;
INSERT INTO `Patient_Blood_Tests` VALUES (1,1,'FBC','2023-05-08','Y'),(2,4,'TFT','2023-05-08','Y'),(3,5,'PSA','2023-05-09','Y'),(4,10,'FBC','2023-05-09','Y'),(5,23,'INR','2023-05-09','Y'),(6,30,'FBC','2023-05-10','Y'),(7,31,'TFT','2023-05-10','Y'),(8,35,'CRP','2023-05-11','Y'),(9,56,'TFT','2023-05-12','Y'),(10,63,'FBC','2023-05-12','Y');
/*!40000 ALTER TABLE `Patient_Blood_Tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient_Contact`
--

DROP TABLE IF EXISTS `Patient_Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient_Contact` (
  `Patient_Contact_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Home_Phone` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Patient_Address_ID` int NOT NULL,
  PRIMARY KEY (`Patient_Contact_ID`),
  KEY `FK_Patient_Contact` (`Patient_Details_ID`),
  CONSTRAINT `FK_Patient_Contact` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_Contact`
--

LOCK TABLES `Patient_Contact` WRITE;
/*!40000 ALTER TABLE `Patient_Contact` DISABLE KEYS */;
INSERT INTO `Patient_Contact` VALUES (1,1,'frankjob200@hotmail.co.uk','1132501200','7932980176',1),(2,2,'joshhoo@gmail.com','1138675678','7923789457',2),(3,3,'jellylake@gmail.com','1137653478','7956837541',3),(4,4,'huntingamy@hotmail.co.uk','1136873456','7528957913',4),(5,5,'lkilbride123@btinternet.com','1137893654','7194859275',5),(6,6,'peterparker@hotmail.co.uk','1136745123','7321432546',6),(7,7,'zachtech@gmail.com','1133291084','7108989675',7),(8,8,'lchampion20203@gmail.com','1136765556','7776789878',8),(9,9,'bwalters1999@hotmail.com','1131234512','7665577886',9),(10,10,'heisenberginc@gmail.com','1136765845','7990088976',10),(11,11,'jessepinkmaninc@gmail.com',NULL,'7776565321',11),(12,12,'lospolloshermanos@btinternet.com','1133243456','7989898765',12),(13,13,'bettercaulsaul@yahoo.com','1139896746','7123454321',13),(14,14,'dea.hank.albuquerque@gov.com','1135691049',NULL,14),(15,15,'carwashempire@yahoo.com','1136765845','7755442233',15),(16,16,NULL,NULL,'7529878967',16),(17,17,NULL,'1136765845','7556677445',17),(18,18,'partygirl@yahoo.com',NULL,'7123187678',18),(19,19,'toddyal@yahoo.com',NULL,'7500001325',19),(20,20,'tucoforever@btinternet.com',NULL,'7009890897',20),(21,21,'deawifeyjane@gov.com','1135691049','7110066845',21),(22,22,'bestlawyer4u@yahoo.com',NULL,'7500870089',22),(23,23,'bodyguardhuell@gmail.com','1133008000','7400578498',23),(24,24,'dea.steven.albuquerque@gov.com','1136009000','7811220979',24),(25,25,'marcomexicolove@gmail.com',NULL,'447980487679',25),(26,26,'carwashempire@yahoo.com','1136765845',NULL,26),(27,27,'mr.creosote@yahoo.com','1135897487',NULL,27),(28,28,'arthurnudge@hotmail.com','1135909876',NULL,28),(29,29,'briancohen@hotmail.com','1134562000',NULL,29),(30,30,'nudeorganisthire@yahoo.com','113707698',NULL,30),(31,31,'mrpraline@btinternet.co.uk','1133006000',NULL,31),(32,32,'iamlumberjack@gmail.com','1134089008',NULL,32),(33,33,'katefosterdesigns@hotmail.com',NULL,'7989895678',33),(34,34,'nfoster@gmail.com',NULL,'7366588670',34),(35,35,'granniefoster@hotmail.com',NULL,'7989895678',35),(36,36,'katefosterdesigns@hotmail.co.uk',NULL,'7366588670',36),(37,37,NULL,NULL,'7989895678',37),(38,38,NULL,NULL,'7989895678',38),(39,39,'acarlsonhealth@gmail.com','1135889000','7989895678',39),(40,40,'acarlsonhealth@gmail.com','1135889000','7561094976',40),(41,41,'kinglionel@gmail.com','1135889000','7561094976',41),(42,42,NULL,'1135889000','7561094940',42),(43,43,'granniecarlson@hotmail.com','1133900989',NULL,43),(44,44,'momzclub@yahoo.com','1135007000','447840989163',44),(45,45,NULL,NULL,'447840989163',45),(46,46,NULL,NULL,'447840989163',46),(47,47,NULL,NULL,'7854466243',47),(48,48,'summerrockz@yahoo.com','11376480091','7800500300',48),(49,49,'bsmithy@yahoo.com','11376480091','7800500300',49),(50,50,'jerrystrong@yahoo.com','11376480091','7800500300',50),(51,51,'ogmorty@yahoo.com','11376480091','7800500300',51),(52,52,'lsmith@yahoo.com','11376480091','7800500300',52),(53,53,'justflying@gmail.com',NULL,'77117098437',53),(54,54,'palickylife@btinternet.co.uk',NULL,'7600935576',54),(55,55,'scroopnoop@live.co.uk','1135089785',NULL,55),(56,56,'tammyhonestly@gmail.com',NULL,'7792760471',56),(57,57,'xenonok@gmail.com',NULL,'7799812654',57),(58,58,'kflippy@yahoo.com','1136092760',NULL,58),(59,59,'slimsom@btinternet.co.uk','1134006540','7222367654',59),(60,60,'vmaxlife@icloud.co.uk','1134006991','7762299974',60),(61,61,'krombopulos@live.co.uk',NULL,'7882544676',61),(62,62,'pshrimply@yahoo.com','1133009800',NULL,62),(63,63,'pgueterman@gmail.com','1134987601','7989980178',63);
/*!40000 ALTER TABLE `Patient_Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient_Details`
--

DROP TABLE IF EXISTS `Patient_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient_Details` (
  `Patient_Details_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Height_in_metres` decimal(4,2) DEFAULT NULL,
  `Weight_in_kilograms` decimal(4,1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Patient_Contact_ID` int NOT NULL,
  PRIMARY KEY (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_Details`
--

LOCK TABLES `Patient_Details` WRITE;
/*!40000 ALTER TABLE `Patient_Details` DISABLE KEYS */;
INSERT INTO `Patient_Details` VALUES (1,'Frank','Jobs',1.52,77.1,'1975-03-01',1),(2,'Joshua','Hooland',1.57,63.5,'1988-09-01',2),(3,'Jackie','Lake',1.49,54.4,'1997-06-03',3),(4,'Amy','Hunter',1.54,81.6,'2001-07-16',4),(5,'Linda','Kilbride',1.66,63.5,'1969-12-27',5),(6,'Peter','Parker',1.81,90.7,'1960-04-30',6),(7,'Zachery','Donovan',1.82,81.6,'1997-12-01',7),(8,'Lucy','Champs',1.52,104.3,'1987-03-28',8),(9,'Bernie','Walters',1.85,99.8,'1979-01-12',9),(10,'Walter','White',1.49,55.0,'1969-06-14',10),(11,'Jesse','Pinkman',1.70,90.7,'1990-01-30',11),(12,'Gus','Fring',1.55,85.5,'1975-04-17',2),(13,'Saul','Goodman',1.82,91.3,'1980-12-13',13),(14,'Hank','Schrader',1.77,108.8,'1980-07-28',14),(15,'Skyler','White',1.70,80.8,'1979-08-24',15),(16,'Mike','Ehrmantraut',1.70,69.9,'1965-02-16',16),(17,'Walter_jr','White',NULL,NULL,'2010-06-30',17),(18,'Jane','Margolis',1.74,67.7,'1990-05-18',18),(19,'Todd','Alquist',1.67,63.5,'1999-09-05',19),(20,'Tuco','Salamanca',1.82,77.0,'1976-06-09',20),(21,'Marie','Schrader',1.60,53.3,'1984-04-11',21),(22,'Ted','Beneke',1.71,65.1,'1982-11-30',22),(23,'Huell','Babineaux',1.80,105.6,'1985-02-19',23),(24,'Steven','Gomez',1.77,71.9,'1980-11-24',24),(25,'Marco','Salamanca',1.69,67.8,'2000-03-13',25),(26,'Holly','White',NULL,NULL,'2023-05-10',26),(27,'Terry','Jones',1.71,68.3,'1942-02-01',27),(28,'Eric','Idle',1.78,71.1,'1943-03-29',28),(29,'Graham','Chapman',1.75,69.3,'1941-01-08',29),(30,'Terry','Gilliam',1.73,70.1,'1940-11-22',30),(31,'John','Cleese',1.69,70.7,'1939-10-27',31),(32,'Michael','Palin',1.72,80.2,'1943-05-05',32),(33,'Kate','Foster',1.68,65.2,'1988-05-06',33),(34,'Nathan','Foster',1.73,70.5,'1987-11-07',34),(35,'Iyla','Foster',1.71,65.7,'1954-10-12',35),(36,'Nathan_Jr','Foster',NULL,NULL,'2018-01-12',36),(37,'Charlie','Foster',NULL,NULL,'2023-04-23',37),(38,'Ella','Foster',NULL,NULL,'2023-04-23',38),(39,'Anne','Carlson',1.65,55.6,'1986-09-16',39),(40,'Alice','Carlson',NULL,NULL,'2018-07-29',40),(41,'Lionel','Carlson',1.67,64.9,'1985-11-26',41),(42,'Jayme','Carlson',NULL,NULL,'2022-09-18',42),(43,'Jane','Carlson',1.65,65.7,'1956-02-19',43),(44,'Valarie','Szalinksky',1.72,66.3,'1979-07-17',44),(45,'Jacob','Szalinksky',NULL,NULL,'2010-12-25',45),(46,'Joseph','Szalinksky',NULL,NULL,'2011-10-27',46),(47,'Rick','Sanchez',1.71,63.9,'1954-02-02',47),(48,'Summer','Smith',NULL,NULL,'2012-11-29',48),(49,'Beth','Smith',1.66,62.9,'1985-10-07',49),(50,'Jerry','Smith',1.69,63.2,'1983-12-17',50),(51,'Morty_Jr','Smith',NULL,NULL,'2016-01-01',51),(52,'Leonard','Smith',1.81,74.5,'1952-01-07',52),(53,'Bird','Man',1.85,75.4,'1942-06-21',53),(54,'Frank','Palicky',1.79,73.4,'1976-09-28',54),(55,'Scroopy','Noopers',1.80,73.2,'1991-09-15',55),(56,'Tammy','Gueterman',1.78,72.1,'1999-11-15',56),(57,'Xenon','Bloom',1.78,71.2,'1966-01-31',57),(58,'King_Flippy','Nips',1.75,69.6,'1934-07-15',58),(59,'Glexo','Slimslom',1.78,72.6,'2002-09-08',59),(60,'Vance','Maximus',1.76,73.2,'1999-01-04',60),(61,'Krombopulos','Michael',1.79,71.9,'1980-11-17',61),(62,'Shrimply','Pibbles',1.75,75.6,'1982-10-27',62),(63,'Pat','Gueterman',1.76,72.7,'2001-06-22',63);
/*!40000 ALTER TABLE `Patient_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_pd` AFTER INSERT ON `patient_details` FOR EACH ROW BEGIN 
DECLARE bmi DECIMAL(4,2);
    SET bmi = NEW.Weight_in_kilograms / (NEW.Height_in_metres * NEW.Height_in_metres);
    INSERT INTO bmi_tracking(Patient_Details_ID, bmi, Date_Of_Record) VALUES (NEW.Patient_Details_ID, bmi, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Prescription_Orders`
--

DROP TABLE IF EXISTS `Prescription_Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prescription_Orders` (
  `Prescription_Orders_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Item_Amount` varchar(20) DEFAULT NULL,
  `Repeat_Prescription` varchar(1) DEFAULT NULL,
  `Dispense_Date` date DEFAULT NULL,
  PRIMARY KEY (`Prescription_Orders_ID`),
  KEY `FK_Prescription_Orders` (`Patient_Details_ID`),
  CONSTRAINT `FK_Prescription_Orders` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prescription_Orders`
--

LOCK TABLES `Prescription_Orders` WRITE;
/*!40000 ALTER TABLE `Prescription_Orders` DISABLE KEYS */;
INSERT INTO `Prescription_Orders` VALUES (1,3,'Mini_Pill','1M','Y','2023-05-11'),(2,4,'Omeprazol','1M','N','2023-05-11'),(3,7,'Omeprazol','1M','Y','2023-05-12'),(4,10,'Amlodipine','2W','N','2023-05-12'),(5,13,'Metformin','1M','Y','2023-05-12'),(6,19,'Albuterol','2W','Y','2023-05-13'),(7,20,'Lisinopril','2W','N','2023-05-14'),(8,25,'Metformin','1M','Y','2023-05-15'),(9,30,'Lisinopril','1M','N','2023-05-15'),(10,31,'Omeprazol','1M','N','2023-05-16'),(11,33,'Mini_Pill','1M','Y','2023-05-16'),(12,39,'Mini_Pill','1M','Y','2023-05-16'),(13,44,'Mini_Pill','1M','Y','2023-05-17'),(14,47,'Hydrocodone','1M','Y','2023-05-18'),(15,57,'Simvastatin','1M','Y','2023-05-18');
/*!40000 ALTER TABLE `Prescription_Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repeat_Prescriptions`
--

DROP TABLE IF EXISTS `Repeat_Prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Repeat_Prescriptions` (
  `Repeat_Prescriptions_ID` int NOT NULL AUTO_INCREMENT,
  `Prescription_Orders_ID` int NOT NULL,
  `Last_Dispensed` date DEFAULT NULL,
  `Next_Dispense_Due` date DEFAULT NULL,
  `Review_Date` date DEFAULT NULL,
  PRIMARY KEY (`Repeat_Prescriptions_ID`),
  KEY `FK_Repeat_Prescriptions` (`Prescription_Orders_ID`),
  CONSTRAINT `FK_Repeat_Prescriptions` FOREIGN KEY (`Prescription_Orders_ID`) REFERENCES `Prescription_Orders` (`Prescription_Orders_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repeat_Prescriptions`
--

LOCK TABLES `Repeat_Prescriptions` WRITE;
/*!40000 ALTER TABLE `Repeat_Prescriptions` DISABLE KEYS */;
INSERT INTO `Repeat_Prescriptions` VALUES (1,1,'2023-05-11','2023-06-11','2024-06-11'),(2,3,'2023-05-12','2023-06-12','2023-08-12'),(3,5,'2023-05-12','2023-06-12','2023-08-12'),(4,6,'2023-05-13','2023-05-26','2023-06-09'),(5,8,'2023-05-15','2023-06-15','2023-08-15'),(6,11,'2023-05-16','2023-06-16','2024-05-16'),(7,12,'2023-05-16','2023-06-16','2024-05-16'),(8,13,'2023-05-17','2023-06-17','2024-05-17'),(9,14,'2023-05-18','2023-05-18','2023-08-18'),(10,15,'2023-05-18','2023-05-18','2023-08-18');
/*!40000 ALTER TABLE `Repeat_Prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vaccinations`
--

DROP TABLE IF EXISTS `Vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vaccinations` (
  `Vaccinations_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Details_ID` int NOT NULL,
  `Vaccination_Name` varchar(50) DEFAULT NULL,
  `Vaccination_Date` date DEFAULT NULL,
  `Vaccine_Administered` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Vaccinations_ID`),
  KEY `FK_Vaccinations` (`Patient_Details_ID`),
  CONSTRAINT `FK_Vaccinations` FOREIGN KEY (`Patient_Details_ID`) REFERENCES `Patient_Details` (`Patient_Details_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vaccinations`
--

LOCK TABLES `Vaccinations` WRITE;
/*!40000 ALTER TABLE `Vaccinations` DISABLE KEYS */;
INSERT INTO `Vaccinations` VALUES (1,17,'6_In_1_Vaccine','2023-05-15','Y'),(2,26,'Rotavirus_Vaccine','2023-05-16','Y'),(3,36,'6_In_1_Vaccine','2023-05-17','N'),(4,37,'Rotavirus_Vaccine','2023-05-17','Y'),(5,38,'6_In_1_Vaccine','2023-05-17','Y'),(6,45,'6_In_1_Vaccine','2023-05-17','Y'),(7,46,'Hib_Menc Vaccine','2023-05-18','Y'),(8,48,'MMR_Vaccine','2023-05-18','N'),(9,51,'MMR_Vaccine','2023-05-18','Y');
/*!40000 ALTER TABLE `Vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_vaccine_not_received`
--

DROP TABLE IF EXISTS `vw_vaccine_not_received`;
/*!50001 DROP VIEW IF EXISTS `vw_vaccine_not_received`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vaccine_not_received` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Vaccination_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'Happy_Docs_Leeds'
--
/*!50003 DROP FUNCTION IF EXISTS `total_patients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_patients`() RETURNS int
    DETERMINISTIC
BEGIN
   DECLARE total INT;
   SELECT COUNT(*) INTO total FROM Patient_Details;
   RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_total_patients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_total_patients`(total INT)
BEGIN
   SELECT COUNT(*) 
   INTO @total 
   FROM Patient_Details;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_vaccine_not_received`
--

/*!50001 DROP VIEW IF EXISTS `vw_vaccine_not_received`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vaccine_not_received` AS select `pd`.`First_Name` AS `First_Name`,`pd`.`Last_Name` AS `Last_Name`,`v`.`Vaccination_Name` AS `Vaccination_Name` from (`patient_details` `pd` join `vaccinations` `v` on((`pd`.`Patient_Details_ID` = `v`.`Patient_Details_ID`))) where (`v`.`Vaccine_Administered` = 'N') */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 21:31:15