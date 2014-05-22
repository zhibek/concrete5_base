-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: concrete5base
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1-log

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
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,105,'Header',0,0,0),(2,105,'Column 1',0,0,0),(3,105,'Column 2',0,0,0),(4,105,'Column 3',0,0,0),(5,105,'Column 4',0,0,0),(6,104,'Primary',0,0,0),(7,104,'Secondary 1',0,0,0),(8,104,'Secondary 2',0,0,0),(9,104,'Secondary 3',0,0,0),(10,104,'Secondary 4',0,0,0),(11,104,'Secondary 5',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0),(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0),(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0),(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0),(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0),(12,'width','Width',1,1,0,0,0,1,6,3,0),(13,'height','Height',1,1,0,0,0,1,6,3,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(5,2,1),(6,2,2),(7,1,4),(8,2,3),(9,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2014-05-22 14:31:36',1,2),(2,4,'2014-05-22 14:31:36',1,2),(3,3,'2014-05-22 14:31:36',1,2),(4,4,'2014-05-22 14:31:36',1,2),(5,3,'2014-05-22 14:31:36',1,2),(6,4,'2014-05-22 14:31:36',1,2),(7,3,'2014-05-22 14:31:36',1,2),(8,3,'2014-05-22 14:31:36',1,2),(9,4,'2014-05-22 14:31:36',1,2),(10,3,'2014-05-22 14:31:36',1,2),(11,4,'2014-05-22 14:31:36',1,2),(12,3,'2014-05-22 14:31:36',1,2),(13,4,'2014-05-22 14:31:36',1,2),(14,3,'2014-05-22 14:31:36',1,2),(15,4,'2014-05-22 14:31:36',1,2),(16,3,'2014-05-22 14:31:36',1,2),(17,4,'2014-05-22 14:31:36',1,2),(18,3,'2014-05-22 14:31:36',1,2),(19,4,'2014-05-22 14:31:36',1,2),(20,5,'2014-05-22 14:31:36',1,3),(21,3,'2014-05-22 14:31:36',1,2),(22,4,'2014-05-22 14:31:36',1,2),(23,3,'2014-05-22 14:31:36',1,2),(24,3,'2014-05-22 14:31:36',1,2),(25,4,'2014-05-22 14:31:36',1,2),(26,3,'2014-05-22 14:31:37',1,2),(27,4,'2014-05-22 14:31:37',1,2),(28,3,'2014-05-22 14:31:37',1,2),(29,4,'2014-05-22 14:31:37',1,2),(30,3,'2014-05-22 14:31:37',1,2),(31,5,'2014-05-22 14:31:37',1,3),(32,4,'2014-05-22 14:31:37',1,2),(33,3,'2014-05-22 14:31:37',1,2),(34,5,'2014-05-22 14:31:37',1,3),(35,4,'2014-05-22 14:31:37',1,2),(36,3,'2014-05-22 14:31:37',1,2),(37,4,'2014-05-22 14:31:37',1,2),(38,3,'2014-05-22 14:31:37',1,2),(39,3,'2014-05-22 14:31:37',1,2),(40,4,'2014-05-22 14:31:37',1,2),(41,3,'2014-05-22 14:31:37',1,2),(42,4,'2014-05-22 14:31:37',1,2),(43,3,'2014-05-22 14:31:37',1,2),(44,4,'2014-05-22 14:31:37',1,2),(45,3,'2014-05-22 14:31:37',1,2),(46,4,'2014-05-22 14:31:37',1,2),(47,3,'2014-05-22 14:31:37',1,2),(48,4,'2014-05-22 14:31:37',1,2),(49,3,'2014-05-22 14:31:37',1,2),(50,3,'2014-05-22 14:31:37',1,2),(51,3,'2014-05-22 14:31:37',1,2),(52,3,'2014-05-22 14:31:37',1,2),(53,4,'2014-05-22 14:31:37',1,2),(54,3,'2014-05-22 14:31:38',1,2),(55,4,'2014-05-22 14:31:38',1,2),(56,3,'2014-05-22 14:31:38',1,2),(57,4,'2014-05-22 14:31:38',1,2),(58,3,'2014-05-22 14:31:38',1,2),(59,4,'2014-05-22 14:31:38',1,2),(60,4,'2014-05-22 14:31:38',1,2),(61,3,'2014-05-22 14:31:38',1,2),(62,4,'2014-05-22 14:31:38',1,2),(63,4,'2014-05-22 14:31:38',1,2),(64,5,'2014-05-22 14:31:38',1,3),(65,8,'2014-05-22 14:31:38',1,3),(66,3,'2014-05-22 14:31:38',1,2),(67,4,'2014-05-22 14:31:38',1,2),(68,5,'2014-05-22 14:31:38',1,3),(69,5,'2014-05-22 14:31:38',1,3),(70,3,'2014-05-22 14:31:38',1,2),(71,3,'2014-05-22 14:31:38',1,2),(72,3,'2014-05-22 14:31:38',1,2),(73,3,'2014-05-22 14:31:38',1,2),(74,3,'2014-05-22 14:31:38',1,2),(75,5,'2014-05-22 14:31:38',1,3),(76,3,'2014-05-22 14:31:38',1,2),(77,3,'2014-05-22 14:31:38',1,2),(78,3,'2014-05-22 14:31:38',1,2),(79,3,'2014-05-22 14:31:38',1,2),(80,3,'2014-05-22 14:31:38',1,2),(81,3,'2014-05-22 14:31:38',1,2),(82,3,'2014-05-22 14:31:38',1,2),(83,3,'2014-05-22 14:31:38',1,2),(84,3,'2014-05-22 14:31:39',1,2),(85,3,'2014-05-22 14:31:39',1,2),(86,3,'2014-05-22 14:31:39',1,2),(87,3,'2014-05-22 14:31:39',1,2),(88,3,'2014-05-22 14:31:39',1,2),(89,3,'2014-05-22 14:31:39',1,2),(90,3,'2014-05-22 14:31:39',1,2),(91,3,'2014-05-22 14:31:39',1,2),(92,3,'2014-05-22 14:31:39',1,2),(93,3,'2014-05-22 14:31:39',1,2),(94,3,'2014-05-22 14:31:39',1,2),(95,3,'2014-05-22 14:31:39',1,2),(96,3,'2014-05-22 14:31:39',1,2),(97,3,'2014-05-22 14:31:39',1,2),(98,3,'2014-05-22 14:31:39',1,2),(99,3,'2014-05-22 14:31:39',1,2),(100,3,'2014-05-22 14:31:39',1,2),(101,3,'2014-05-22 14:31:39',1,2),(102,3,'2014-05-22 14:31:39',1,2),(103,3,'2014-05-22 14:31:39',1,2),(104,3,'2014-05-22 14:31:39',1,2),(105,3,'2014-05-22 14:31:39',1,2),(106,3,'2014-05-22 14:31:39',1,2),(107,8,'2014-05-22 14:31:39',1,3),(108,3,'2014-05-22 14:31:39',1,2),(109,3,'2014-05-22 14:31:39',1,2),(110,3,'2014-05-22 14:31:39',1,2),(111,3,'2014-05-22 14:31:40',1,2),(112,3,'2014-05-22 14:31:40',1,2),(113,3,'2014-05-22 14:31:40',1,2),(114,3,'2014-05-22 14:31:40',1,2),(115,3,'2014-05-22 14:31:40',1,2),(116,5,'2014-05-22 14:31:40',1,3),(117,5,'2014-05-22 14:31:40',1,3),(118,8,'2014-05-22 14:31:40',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,3,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,4,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,5,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,6,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,7,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,8,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,9,350,480,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,10,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,11,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,12,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,13,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,14,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,15,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,16,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,17,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,18,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,19,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,20,400,210,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',9,1),(2,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',9,1),(3,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',9,1),(4,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',9,1),(5,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',9,1),(6,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',6,1),(7,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',7,1),(8,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',5,1),(9,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',5,1),(10,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',4,1),(11,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',3,1),(12,'','2014-05-22 14:31:40','2014-05-22 14:31:40',NULL,'1',5,1);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(3,1,4,2),(4,1,3,3),(4,1,4,4),(5,1,3,5),(5,1,4,6),(6,1,3,7),(7,1,3,8),(7,1,4,9),(8,1,3,10),(8,1,4,11),(9,1,3,12),(9,1,4,13),(11,1,3,14),(11,1,4,15),(12,1,3,16),(12,1,4,17),(13,1,3,18),(13,1,4,19),(14,1,3,21),(14,1,4,22),(14,1,5,20),(15,1,3,23),(16,1,3,24),(16,1,4,25),(17,1,3,26),(17,1,4,27),(18,1,3,28),(18,1,4,29),(19,1,3,30),(19,1,4,32),(19,1,5,31),(20,1,3,33),(20,1,4,35),(20,1,5,34),(21,1,3,36),(21,1,4,37),(22,1,3,38),(23,1,3,39),(23,1,4,40),(24,1,3,41),(24,1,4,42),(25,1,3,43),(25,1,4,44),(26,1,3,45),(26,1,4,46),(28,1,3,47),(28,1,4,48),(29,1,3,49),(30,1,3,50),(31,1,3,51),(32,1,3,52),(32,1,4,53),(34,1,3,54),(34,1,4,55),(35,1,3,56),(35,1,4,57),(36,1,3,58),(37,1,4,59),(38,1,4,60),(40,1,3,61),(40,1,4,62),(41,1,4,63),(42,1,5,64),(42,1,8,65),(43,1,3,66),(43,1,4,67),(44,1,5,68),(45,1,5,69),(46,1,3,70),(47,1,3,71),(48,1,3,72),(49,1,3,73),(50,1,3,74),(51,1,5,75),(53,1,3,76),(54,1,3,77),(55,1,3,78),(56,1,3,79),(57,1,3,80),(58,1,3,81),(60,1,3,82),(61,1,3,83),(62,1,3,84),(63,1,3,85),(64,1,3,86),(66,1,3,87),(67,1,3,88),(68,1,3,89),(70,1,3,90),(71,1,3,91),(72,1,3,92),(73,1,3,93),(76,1,3,94),(77,1,3,95),(78,1,3,96),(79,1,3,97),(81,1,3,98),(82,1,3,99),(83,1,3,100),(84,1,3,101),(85,1,3,102),(86,1,3,103),(87,1,3,104),(88,1,3,105),(89,1,3,106),(90,1,8,107),(91,1,3,108),(92,1,3,109),(93,1,3,110),(94,1,3,111),(95,1,3,112),(96,1,3,113),(98,1,3,114),(99,1,3,115),(104,1,5,117),(104,1,8,118),(105,1,5,116);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,NULL,0,0,NULL,0,0),(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0),(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0),(5,NULL,NULL,'blog drafts,composer','icon-book',0,0,NULL,0,0),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0),(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0),(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0),(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0),(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0),(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0),(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0),(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0),(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0),(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0),(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0),(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0),(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0),(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0),(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0),(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0),(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0),(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0),(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0),(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0),(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0),(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0),(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0),(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0),(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0),(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0),(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0),(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0),(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0),(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0),(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0),(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0),(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0),(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0),(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0),(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0),(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0),(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0),(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0),(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0),(55,NULL,NULL,'tinymce, content block, fonts, editor, tinymce, content, overlay',NULL,0,0,NULL,0,0),(56,NULL,NULL,'translate, translation, internationalization, multilingual, translate',NULL,0,0,NULL,0,0),(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0),(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0),(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0),(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0),(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0),(63,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0),(64,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0),(66,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0),(67,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0),(68,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0),(70,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0),(71,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0),(72,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0),(73,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0),(76,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0),(77,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0),(78,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0),(79,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0),(81,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0),(82,NULL,NULL,'member profile, member page,community, forums, social, avatar',NULL,0,0,NULL,0,0),(83,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0),(84,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0),(85,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0),(86,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0),(87,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0),(88,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0),(89,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0),(90,NULL,NULL,NULL,NULL,0,0,NULL,1,0),(91,NULL,NULL,'overrides, system info, debug, support,help',NULL,0,0,NULL,0,0),(92,NULL,NULL,'errors,exceptions, develop, support, help',NULL,0,0,NULL,0,0),(93,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, errors, log',NULL,0,0,NULL,0,0),(94,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0),(95,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0),(96,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0),(98,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0),(99,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0),(104,NULL,NULL,NULL,NULL,1,0,NULL,1,0),(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (104,1,6,'Primary',0,1,0,0),(104,1,7,'Primary',1,1,0,0),(104,1,8,'Secondary 1',0,1,0,0),(104,1,9,'Secondary 2',0,1,0,0),(104,1,10,'Secondary 3',0,1,0,0),(104,1,11,'Secondary 4',0,1,0,0),(104,1,12,'Secondary 5',0,1,0,0),(105,1,1,'Header',0,1,0,0),(105,1,2,'Column 1',0,1,0,0),(105,1,3,'Column 2',0,1,0,0),(105,1,4,'Column 3',0,1,0,0),(105,1,5,'Column 4',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2014-05-22 14:31:24','2014-05-22 14:31:24','Initial Version',1,0,1,NULL,1,4,NULL),(2,1,'Dashboard','dashboard','','2014-05-22 14:31:27','2014-05-22 14:31:27','Initial Version',1,0,1,NULL,1,0,NULL),(3,1,'Composer','composer','Write for your site.','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(4,1,'Write','write','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(5,1,'Drafts','drafts','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(7,1,'Full Sitemap','full','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(8,1,'Flat View','explore','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(9,1,'Page Search','search','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(10,1,'Files','files','All documents and images.','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(11,1,'File Manager','search','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(12,1,'Attributes','attributes','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(13,1,'File Sets','sets','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(14,1,'Add File Set','add_set','','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2014-05-22 14:31:28','2014-05-22 14:31:28','Initial Version',1,0,1,NULL,1,0,NULL),(16,1,'Search Users','search','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(17,1,'User Groups','groups','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(18,1,'Attributes','attributes','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(19,1,'Add User','add','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(20,1,'Add Group','add_group','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(21,1,'Group Sets','group_sets','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(22,1,'Reports','reports','Get data from forms and logs.','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(23,1,'Statistics','statistics','View your site activity.','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(24,1,'Form Results','forms','Get submission data.','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(25,1,'Surveys','surveys','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(26,1,'Logs','logs','','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(28,1,'Themes','themes','Reskin your site.','2014-05-22 14:31:29','2014-05-22 14:31:29','Initial Version',1,0,1,NULL,1,0,NULL),(29,1,'Add','add','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(30,1,'Inspect','inspect','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(31,1,'Customize','customize','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(32,1,'Page Types','types','What goes in your site.','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(33,1,'Add Page Type','add','Add page types to your site.','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(34,1,'Attributes','attributes','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(35,1,'Single Pages','single','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(36,1,'Workflow','workflow','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(37,1,'Workflow List','list','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(38,1,'Waiting for Me','me','','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(40,1,'Stacks','stacks','Share content across your site.','2014-05-22 14:31:30','2014-05-22 14:31:30','Initial Version',1,0,1,NULL,1,0,NULL),(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(42,1,'Stack List','list','','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(43,1,'Block Types','types','Manage the installed block types in your site.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(45,1,'Dashboard','news','','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(46,1,'Add Functionality','install','Install add-ons & themes.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(47,1,'Update Add-Ons','update','Update your installed packages.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(51,1,'System & Settings','system','Secure and setup your site.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(52,1,'Basics','basics','Basic information about your website.','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(53,1,'Site Name','site_name','','2014-05-22 14:31:31','2014-05-22 14:31:31','Initial Version',1,0,1,NULL,1,0,NULL),(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(55,1,'Rich Text Editor','editor','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(56,1,'Languages','multilingual','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(57,1,'Time Zone','timezone','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(58,1,'Interface Preferences','interface','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(60,1,'Pretty URLs','urls','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(61,1,'Bulk SEO Updater','bulk_seo_tool','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(62,1,'Tracking Codes','tracking_codes','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(63,1,'Statistics','statistics','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(64,1,'Search Index','search_index','','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(65,1,'Optimization','optimization','Keep your site running well.','2014-05-22 14:31:32','2014-05-22 14:31:32','Initial Version',1,0,1,NULL,1,0,NULL),(66,1,'Cache & Speed Settings','cache','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(67,1,'Clear Cache','clear_cache','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(68,1,'Automated Jobs','jobs','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(69,1,'Permissions & Access','permissions','Control who sees and edits your site.','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(70,1,'Site Access','site','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(71,1,'File Manager Permissions','files','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(72,1,'Allowed File Types','file_types','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(73,1,'Task Permissions','tasks','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(74,1,'User Permissions','users','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(75,1,'Advanced Permissions','advanced','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(76,1,'IP Blacklist','ip_blacklist','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(77,1,'Captcha Setup','captcha','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(78,1,'Spam Control','antispam','','2014-05-22 14:31:33','2014-05-22 14:31:33','Initial Version',1,0,1,NULL,1,0,NULL),(79,1,'Maintenance Mode','maintenance_mode','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(80,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(81,1,'Login Destination','postlogin','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(82,1,'Public Profiles','profiles','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(83,1,'Public Registration','public_registration','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(84,1,'Email','mail','Control how your site send and processes mail.','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(85,1,'SMTP Method','method','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(86,1,'Email Importers','importers','','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(87,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(88,1,'Sets','sets','Group attributes into sets for easier organization','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(89,1,'Types','types','Choose which attribute types are available for different items.','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(90,1,'Environment','environment','Advanced settings for web developers.','2014-05-22 14:31:34','2014-05-22 14:31:34','Initial Version',1,0,1,NULL,1,0,NULL),(91,1,'Environment Information','info','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(92,1,'Debug Settings','debug','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(93,1,'Logging Settings','logging','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(94,1,'File Storage Locations','file_storage_locations','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(95,1,'Proxy Server','proxy','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(96,1,'Backup & Restore','backup_restore','Backup or restore your website.','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(97,1,'Backup Database','backup','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(98,1,'Update concrete5','update','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(99,1,'Database XML','database','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(100,1,'Composer','composer','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,0,NULL),(101,1,'',NULL,NULL,'2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,NULL,NULL,0,1,NULL),(102,1,'',NULL,NULL,'2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,NULL,NULL,0,2,NULL),(103,1,'',NULL,NULL,'2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,NULL,NULL,0,3,NULL),(104,1,'Customize Dashboard Home','home','','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,2,NULL),(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2014-05-22 14:31:35','2014-05-22 14:31:35','Initial Version',1,0,1,NULL,1,3,NULL),(106,1,'Drafts','!drafts','','2014-05-22 14:31:40','2014-05-22 14:31:40','Initial Version',1,0,1,NULL,1,0,NULL),(107,1,'Trash','!trash','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(108,1,'Stacks','!stacks','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(109,1,'Login','login','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(110,1,'Register','register','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(111,1,'Profile','profile','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(112,1,'Edit','edit','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(113,1,'Avatar','avatar','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(114,1,'Messages','messages','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(115,1,'Friends','friends','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(116,1,'Page Not Found','page_not_found','','2014-05-22 14:31:41','2014-05-22 14:31:41','Initial Version',1,0,1,NULL,1,0,NULL),(117,1,'Page Forbidden','page_forbidden','','2014-05-22 14:31:42','2014-05-22 14:31:42','Initial Version',1,0,1,NULL,1,0,NULL),(118,1,'Download File','download_file','','2014-05-22 14:31:42','2014-05-22 14:31:42','Initial Version',1,0,1,NULL,1,0,NULL),(119,1,'Members','members','','2014-05-22 14:31:42','2014-05-22 14:31:42','Initial Version',1,0,1,NULL,1,0,NULL),(120,1,'',NULL,NULL,'2014-05-22 14:31:42','2014-05-22 14:31:42','Initial Version',1,0,NULL,NULL,0,4,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2014-05-22 14:31:24','2014-05-22 14:31:42','home'),(2,'2014-05-22 14:31:27','2014-05-22 14:31:28','dashboard'),(3,'2014-05-22 14:31:28','2014-05-22 14:31:28','composer'),(4,'2014-05-22 14:31:28','2014-05-22 14:31:28','write'),(5,'2014-05-22 14:31:28','2014-05-22 14:31:28','drafts'),(6,'2014-05-22 14:31:28','2014-05-22 14:31:28','sitemap'),(7,'2014-05-22 14:31:28','2014-05-22 14:31:28','full'),(8,'2014-05-22 14:31:28','2014-05-22 14:31:28','explore'),(9,'2014-05-22 14:31:28','2014-05-22 14:31:28','search'),(10,'2014-05-22 14:31:28','2014-05-22 14:31:28','files'),(11,'2014-05-22 14:31:28','2014-05-22 14:31:28','search'),(12,'2014-05-22 14:31:28','2014-05-22 14:31:28','attributes'),(13,'2014-05-22 14:31:28','2014-05-22 14:31:28','sets'),(14,'2014-05-22 14:31:28','2014-05-22 14:31:28','add_set'),(15,'2014-05-22 14:31:28','2014-05-22 14:31:29','users'),(16,'2014-05-22 14:31:29','2014-05-22 14:31:29','search'),(17,'2014-05-22 14:31:29','2014-05-22 14:31:29','groups'),(18,'2014-05-22 14:31:29','2014-05-22 14:31:29','attributes'),(19,'2014-05-22 14:31:29','2014-05-22 14:31:29','add'),(20,'2014-05-22 14:31:29','2014-05-22 14:31:29','add_group'),(21,'2014-05-22 14:31:29','2014-05-22 14:31:29','group_sets'),(22,'2014-05-22 14:31:29','2014-05-22 14:31:29','reports'),(23,'2014-05-22 14:31:29','2014-05-22 14:31:29','statistics'),(24,'2014-05-22 14:31:29','2014-05-22 14:31:29','forms'),(25,'2014-05-22 14:31:29','2014-05-22 14:31:29','surveys'),(26,'2014-05-22 14:31:29','2014-05-22 14:31:29','logs'),(27,'2014-05-22 14:31:29','2014-05-22 14:31:29','pages'),(28,'2014-05-22 14:31:29','2014-05-22 14:31:30','themes'),(29,'2014-05-22 14:31:30','2014-05-22 14:31:30','add'),(30,'2014-05-22 14:31:30','2014-05-22 14:31:30','inspect'),(31,'2014-05-22 14:31:30','2014-05-22 14:31:30','customize'),(32,'2014-05-22 14:31:30','2014-05-22 14:31:30','types'),(33,'2014-05-22 14:31:30','2014-05-22 14:31:30','add'),(34,'2014-05-22 14:31:30','2014-05-22 14:31:30','attributes'),(35,'2014-05-22 14:31:30','2014-05-22 14:31:30','single'),(36,'2014-05-22 14:31:30','2014-05-22 14:31:30','workflow'),(37,'2014-05-22 14:31:30','2014-05-22 14:31:30','list'),(38,'2014-05-22 14:31:30','2014-05-22 14:31:30','me'),(39,'2014-05-22 14:31:30','2014-05-22 14:31:30','blocks'),(40,'2014-05-22 14:31:30','2014-05-22 14:31:30','stacks'),(41,'2014-05-22 14:31:31','2014-05-22 14:31:31','permissions'),(42,'2014-05-22 14:31:31','2014-05-22 14:31:31','list'),(43,'2014-05-22 14:31:31','2014-05-22 14:31:31','types'),(44,'2014-05-22 14:31:31','2014-05-22 14:31:31','extend'),(45,'2014-05-22 14:31:31','2014-05-22 14:31:31','news'),(46,'2014-05-22 14:31:31','2014-05-22 14:31:31','install'),(47,'2014-05-22 14:31:31','2014-05-22 14:31:31','update'),(48,'2014-05-22 14:31:31','2014-05-22 14:31:31','connect'),(49,'2014-05-22 14:31:31','2014-05-22 14:31:31','themes'),(50,'2014-05-22 14:31:31','2014-05-22 14:31:31','add-ons'),(51,'2014-05-22 14:31:31','2014-05-22 14:31:31','system'),(52,'2014-05-22 14:31:31','2014-05-22 14:31:31','basics'),(53,'2014-05-22 14:31:31','2014-05-22 14:31:32','site_name'),(54,'2014-05-22 14:31:32','2014-05-22 14:31:32','icons'),(55,'2014-05-22 14:31:32','2014-05-22 14:31:32','editor'),(56,'2014-05-22 14:31:32','2014-05-22 14:31:32','multilingual'),(57,'2014-05-22 14:31:32','2014-05-22 14:31:32','timezone'),(58,'2014-05-22 14:31:32','2014-05-22 14:31:32','interface'),(59,'2014-05-22 14:31:32','2014-05-22 14:31:32','seo'),(60,'2014-05-22 14:31:32','2014-05-22 14:31:32','urls'),(61,'2014-05-22 14:31:32','2014-05-22 14:31:32','bulk_seo_tool'),(62,'2014-05-22 14:31:32','2014-05-22 14:31:32','tracking_codes'),(63,'2014-05-22 14:31:32','2014-05-22 14:31:32','statistics'),(64,'2014-05-22 14:31:32','2014-05-22 14:31:32','search_index'),(65,'2014-05-22 14:31:32','2014-05-22 14:31:32','optimization'),(66,'2014-05-22 14:31:33','2014-05-22 14:31:33','cache'),(67,'2014-05-22 14:31:33','2014-05-22 14:31:33','clear_cache'),(68,'2014-05-22 14:31:33','2014-05-22 14:31:33','jobs'),(69,'2014-05-22 14:31:33','2014-05-22 14:31:33','permissions'),(70,'2014-05-22 14:31:33','2014-05-22 14:31:33','site'),(71,'2014-05-22 14:31:33','2014-05-22 14:31:33','files'),(72,'2014-05-22 14:31:33','2014-05-22 14:31:33','file_types'),(73,'2014-05-22 14:31:33','2014-05-22 14:31:33','tasks'),(74,'2014-05-22 14:31:33','2014-05-22 14:31:33','users'),(75,'2014-05-22 14:31:33','2014-05-22 14:31:33','advanced'),(76,'2014-05-22 14:31:33','2014-05-22 14:31:33','ip_blacklist'),(77,'2014-05-22 14:31:33','2014-05-22 14:31:33','captcha'),(78,'2014-05-22 14:31:33','2014-05-22 14:31:34','antispam'),(79,'2014-05-22 14:31:34','2014-05-22 14:31:34','maintenance_mode'),(80,'2014-05-22 14:31:34','2014-05-22 14:31:34','registration'),(81,'2014-05-22 14:31:34','2014-05-22 14:31:34','postlogin'),(82,'2014-05-22 14:31:34','2014-05-22 14:31:34','profiles'),(83,'2014-05-22 14:31:34','2014-05-22 14:31:34','public_registration'),(84,'2014-05-22 14:31:34','2014-05-22 14:31:34','mail'),(85,'2014-05-22 14:31:34','2014-05-22 14:31:34','method'),(86,'2014-05-22 14:31:34','2014-05-22 14:31:34','importers'),(87,'2014-05-22 14:31:34','2014-05-22 14:31:34','attributes'),(88,'2014-05-22 14:31:34','2014-05-22 14:31:34','sets'),(89,'2014-05-22 14:31:34','2014-05-22 14:31:34','types'),(90,'2014-05-22 14:31:34','2014-05-22 14:31:34','environment'),(91,'2014-05-22 14:31:35','2014-05-22 14:31:35','info'),(92,'2014-05-22 14:31:35','2014-05-22 14:31:35','debug'),(93,'2014-05-22 14:31:35','2014-05-22 14:31:35','logging'),(94,'2014-05-22 14:31:35','2014-05-22 14:31:35','file_storage_locations'),(95,'2014-05-22 14:31:35','2014-05-22 14:31:35','proxy'),(96,'2014-05-22 14:31:35','2014-05-22 14:31:35','backup_restore'),(97,'2014-05-22 14:31:35','2014-05-22 14:31:35','backup'),(98,'2014-05-22 14:31:35','2014-05-22 14:31:35','update'),(99,'2014-05-22 14:31:35','2014-05-22 14:31:35','database'),(100,'2014-05-22 14:31:35','2014-05-22 14:31:35','composer'),(101,'2014-05-22 14:31:35','2014-05-22 14:31:35',NULL),(102,'2014-05-22 14:31:35','2014-05-22 14:31:35',NULL),(103,'2014-05-22 14:31:35','2014-05-22 14:31:35',NULL),(104,'2014-05-22 14:31:35','2014-05-22 14:31:35','home'),(105,'2014-05-22 14:31:35','2014-05-22 14:31:35','welcome'),(106,'2014-05-22 14:31:40','2014-05-22 14:31:41','!drafts'),(107,'2014-05-22 14:31:41','2014-05-22 14:31:41','!trash'),(108,'2014-05-22 14:31:41','2014-05-22 14:31:41','!stacks'),(109,'2014-05-22 14:31:41','2014-05-22 14:31:41','login'),(110,'2014-05-22 14:31:41','2014-05-22 14:31:41','register'),(111,'2014-05-22 14:31:41','2014-05-22 14:31:41','profile'),(112,'2014-05-22 14:31:41','2014-05-22 14:31:41','edit'),(113,'2014-05-22 14:31:41','2014-05-22 14:31:41','avatar'),(114,'2014-05-22 14:31:41','2014-05-22 14:31:41','messages'),(115,'2014-05-22 14:31:41','2014-05-22 14:31:41','friends'),(116,'2014-05-22 14:31:41','2014-05-22 14:31:41','page_not_found'),(117,'2014-05-22 14:31:42','2014-05-22 14:31:42','page_forbidden'),(118,'2014-05-22 14:31:42','2014-05-22 14:31:42','download_file'),(119,'2014-05-22 14:31:42','2014-05-22 14:31:42','members'),(120,'2014-05-22 14:31:42','2014-05-22 14:31:42',NULL);
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED','2014-05-22 14:31:27','1400769087',0,0),('ANTISPAM_LOG_SPAM','2014-05-22 14:31:42','1',0,0),('APP_VERSION_LATEST','2014-05-22 14:31:44','5.6.3.1',0,0),('ENABLE_CACHE','2014-05-22 14:31:42','1',0,0),('ENABLE_LOG_EMAILS','2014-05-22 14:31:42','1',0,0),('ENABLE_LOG_ERRORS','2014-05-22 14:31:42','1',0,0),('ENABLE_MARKETPLACE_SUPPORT','2014-05-22 14:31:42','1',0,0),('ENABLE_OVERRIDE_CACHE','2014-05-22 14:31:42','1',0,0),('ENVIRONMENT_CACHE','2014-05-22 14:31:42','O:11:\"Environment\":7:{s:16:\"\0*\0coreOverrides\";a:0:{}s:15:\"\0*\0corePackages\";a:0:{}s:25:\"\0*\0coreOverridesByPackage\";a:0:{}s:19:\"\0*\0overridesScanned\";b:1;s:18:\"\0*\0cachedOverrides\";a:46:{s:16:\"helpers/file.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/file.php\";s:3:\"url\";s:26:\"/concrete/helpers/file.php\";}}s:18:\"libraries/view.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:36:\"/var/www/concrete/libraries/view.php\";s:3:\"url\";s:28:\"/concrete/libraries/view.php\";}}s:15:\"models/page.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:33:\"/var/www/concrete/models/page.php\";s:3:\"url\";s:25:\"/concrete/models/page.php\";}}s:21:\"models/collection.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:39:\"/var/www/concrete/models/collection.php\";s:3:\"url\";s:31:\"/concrete/models/collection.php\";}}s:21:\"libraries/request.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:39:\"/var/www/concrete/libraries/request.php\";s:3:\"url\";s:31:\"/concrete/libraries/request.php\";}}s:36:\"libraries/3rdparty/mobile_detect.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:54:\"/var/www/concrete/libraries/3rdparty/mobile_detect.php\";s:3:\"url\";s:46:\"/concrete/libraries/3rdparty/mobile_detect.php\";}}s:20:\"libraries/events.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:38:\"/var/www/concrete/libraries/events.php\";s:3:\"url\";s:30:\"/concrete/libraries/events.php\";}}s:34:\"controllers/install/controller.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:52:\"/var/www/concrete/controllers/install/controller.php\";s:3:\"url\";s:44:\"/concrete/controllers/install/controller.php\";}}s:23:\"controllers/install.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:41:\"/var/www/concrete/controllers/install.php\";s:3:\"url\";s:33:\"/concrete/controllers/install.php\";}}s:24:\"libraries/controller.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:42:\"/var/www/concrete/libraries/controller.php\";s:3:\"url\";s:34:\"/concrete/libraries/controller.php\";}}s:16:\"helpers/form.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/form.php\";s:3:\"url\";s:26:\"/concrete/helpers/form.php\";}}s:16:\"helpers/text.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/text.php\";s:3:\"url\";s:26:\"/concrete/helpers/text.php\";}}s:16:\"helpers/html.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/html.php\";s:3:\"url\";s:26:\"/concrete/helpers/html.php\";}}s:24:\"libraries/file/types.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:42:\"/var/www/concrete/libraries/file/types.php\";s:3:\"url\";s:34:\"/concrete/libraries/file/types.php\";}}s:26:\"libraries/localization.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:44:\"/var/www/concrete/libraries/localization.php\";s:3:\"url\";s:36:\"/concrete/libraries/localization.php\";}}s:32:\"libraries/3rdparty/Zend/Date.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:50:\"/var/www/concrete/libraries/3rdparty/Zend/Date.php\";s:3:\"url\";s:42:\"/concrete/libraries/3rdparty/Zend/Date.php\";}}s:37:\"libraries/3rdparty/Zend/Translate.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:55:\"/var/www/concrete/libraries/3rdparty/Zend/Translate.php\";s:3:\"url\";s:47:\"/concrete/libraries/3rdparty/Zend/Translate.php\";}}s:28:\"helpers/validation/error.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:46:\"/var/www/concrete/helpers/validation/error.php\";s:3:\"url\";s:38:\"/concrete/helpers/validation/error.php\";}}s:33:\"models/package/starting_point.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:51:\"/var/www/concrete/models/package/starting_point.php\";s:3:\"url\";s:43:\"/concrete/models/package/starting_point.php\";}}s:18:\"models/package.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:36:\"/var/www/concrete/models/package.php\";s:3:\"url\";s:28:\"/concrete/models/package.php\";}}s:30:\"libraries/content/importer.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:48:\"/var/www/concrete/libraries/content/importer.php\";s:3:\"url\";s:40:\"/concrete/libraries/content/importer.php\";}}s:16:\"helpers/json.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/json.php\";s:3:\"url\";s:26:\"/concrete/helpers/json.php\";}}s:22:\"models/single_page.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:40:\"/var/www/concrete/models/single_page.php\";s:3:\"url\";s:32:\"/concrete/models/single_page.php\";}}s:30:\"helpers/concrete/interface.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:48:\"/var/www/concrete/helpers/concrete/interface.php\";s:3:\"url\";s:40:\"/concrete/helpers/concrete/interface.php\";}}s:15:\"models/user.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:33:\"/var/www/concrete/models/user.php\";s:3:\"url\";s:25:\"/concrete/models/user.php\";}}s:29:\"models/collection_version.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:47:\"/var/www/concrete/models/collection_version.php\";s:3:\"url\";s:39:\"/concrete/models/collection_version.php\";}}s:42:\"models/attribute/categories/collection.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:60:\"/var/www/concrete/models/attribute/categories/collection.php\";s:3:\"url\";s:52:\"/concrete/models/attribute/categories/collection.php\";}}s:24:\"models/attribute/key.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:42:\"/var/www/concrete/models/attribute/key.php\";s:3:\"url\";s:34:\"/concrete/models/attribute/key.php\";}}s:26:\"models/attribute/value.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:44:\"/var/www/concrete/models/attribute/value.php\";s:3:\"url\";s:36:\"/concrete/models/attribute/value.php\";}}s:22:\"models/permissions.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:40:\"/var/www/concrete/models/permissions.php\";s:3:\"url\";s:32:\"/concrete/models/permissions.php\";}}s:30:\"models/permission/response.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:48:\"/var/www/concrete/models/permission/response.php\";s:3:\"url\";s:40:\"/concrete/models/permission/response.php\";}}s:27:\"models/permission/cache.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:45:\"/var/www/concrete/models/permission/cache.php\";s:3:\"url\";s:37:\"/concrete/models/permission/cache.php\";}}s:30:\"models/permission/category.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:48:\"/var/www/concrete/models/permission/category.php\";s:3:\"url\";s:40:\"/concrete/models/permission/category.php\";}}s:49:\"models/permission/response/collection_version.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:67:\"/var/www/concrete/models/permission/response/collection_version.php\";s:3:\"url\";s:59:\"/concrete/models/permission/response/collection_version.php\";}}s:16:\"helpers/date.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:34:\"/var/www/concrete/helpers/date.php\";s:3:\"url\";s:26:\"/concrete/helpers/date.php\";}}s:26:\"models/page_statistics.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:44:\"/var/www/concrete/models/page_statistics.php\";s:3:\"url\";s:36:\"/concrete/models/page_statistics.php\";}}s:17:\"models/groups.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:35:\"/var/www/concrete/models/groups.php\";s:3:\"url\";s:27:\"/concrete/models/groups.php\";}}s:31:\"models/permission/keys/page.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:49:\"/var/www/concrete/models/permission/keys/page.php\";s:3:\"url\";s:41:\"/concrete/models/permission/keys/page.php\";}}s:25:\"models/permission/key.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:43:\"/var/www/concrete/models/permission/key.php\";s:3:\"url\";s:35:\"/concrete/models/permission/key.php\";}}s:47:\"models/permission/access/entity/types/group.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:65:\"/var/www/concrete/models/permission/access/entity/types/group.php\";s:3:\"url\";s:57:\"/concrete/models/permission/access/entity/types/group.php\";}}s:41:\"models/permission/access/entity/model.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:59:\"/var/www/concrete/models/permission/access/entity/model.php\";s:3:\"url\";s:51:\"/concrete/models/permission/access/entity/model.php\";}}s:40:\"models/permission/access/entity/type.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:58:\"/var/www/concrete/models/permission/access/entity/type.php\";s:3:\"url\";s:50:\"/concrete/models/permission/access/entity/type.php\";}}s:38:\"models/permission/assignments/page.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:56:\"/var/www/concrete/models/permission/assignments/page.php\";s:3:\"url\";s:48:\"/concrete/models/permission/assignments/page.php\";}}s:32:\"models/permission/assignment.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:50:\"/var/www/concrete/models/permission/assignment.php\";s:3:\"url\";s:42:\"/concrete/models/permission/assignment.php\";}}s:34:\"models/permission/access/model.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:52:\"/var/www/concrete/models/permission/access/model.php\";s:3:\"url\";s:44:\"/concrete/models/permission/access/model.php\";}}s:44:\"models/permission/access/categories/page.php\";a:1:{s:0:\"\";O:17:\"EnvironmentRecord\":3:{s:8:\"override\";b:0;s:4:\"file\";s:62:\"/var/www/concrete/models/permission/access/categories/page.php\";s:3:\"url\";s:54:\"/concrete/models/permission/access/categories/page.php\";}}}s:13:\"\0*\0autoLoaded\";b:0;s:14:\"\0*\0ignoreFiles\";a:1:{i:0;s:8:\"__MACOSX\";}}',0,0),('FULL_PAGE_CACHE_GLOBAL','2014-05-22 14:31:42','0',0,0),('NEWSFLOW_LAST_VIEWED','2014-05-22 14:31:43','FIRSTRUN',1,0),('SITE','2014-05-22 14:31:43','Concrete5 Base',0,0),('SITE_APP_VERSION','2014-05-22 14:31:43','5.6.0.2',0,0),('SITE_DEBUG_LEVEL','2014-05-22 14:31:42','1',0,0),('SITE_INSTALLED_APP_VERSION','2014-05-22 14:31:43','5.6.0.2',0,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DashboardHomepage`
--

DROP TABLE IF EXISTS `DashboardHomepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DashboardHomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DashboardHomepage`
--

LOCK TABLES `DashboardHomepage` WRITE;
/*!40000 ALTER TABLE `DashboardHomepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DashboardHomepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissions`
--

DROP TABLE IF EXISTS `FilePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissions`
--

LOCK TABLES `FilePermissions` WRITE;
/*!40000 ALTER TABLE `FilePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,36,34),(0,37,35),(0,38,36),(0,39,37),(0,40,38),(0,41,39),(0,42,41),(0,43,40),(0,44,42);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2014-05-22 14:31:27',NULL,0,NULL,0,'ENABLED','index_search',1),(2,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2014-05-22 14:31:27',NULL,0,NULL,0,'ENABLED','generate_sitemap',0),(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2014-05-22 14:31:27',NULL,0,NULL,0,'ENABLED','process_email',0),(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2014-05-22 14:31:27',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/users/group_sets','1'),(21,22,'/dashboard/reports','1'),(22,23,'/dashboard/reports/statistics','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/add','1'),(29,30,'/dashboard/pages/themes/inspect','1'),(30,31,'/dashboard/pages/themes/customize','1'),(31,32,'/dashboard/pages/types','1'),(32,33,'/dashboard/pages/types/add','1'),(33,34,'/dashboard/pages/attributes','1'),(34,35,'/dashboard/pages/single','1'),(35,36,'/dashboard/workflow','1'),(36,37,'/dashboard/workflow/list','1'),(37,38,'/dashboard/workflow/me','1'),(38,39,'/dashboard/blocks','1'),(39,40,'/dashboard/blocks/stacks','1'),(40,41,'/dashboard/blocks/permissions','1'),(41,42,'/dashboard/blocks/stacks/list','1'),(42,43,'/dashboard/blocks/types','1'),(43,44,'/dashboard/extend','1'),(44,45,'/dashboard/news','1'),(45,46,'/dashboard/extend/install','1'),(46,47,'/dashboard/extend/update','1'),(47,48,'/dashboard/extend/connect','1'),(48,49,'/dashboard/extend/themes','1'),(49,50,'/dashboard/extend/add-ons','1'),(50,51,'/dashboard/system','1'),(51,52,'/dashboard/system/basics','1'),(52,53,'/dashboard/system/basics/site_name','1'),(53,54,'/dashboard/system/basics/icons','1'),(54,55,'/dashboard/system/basics/editor','1'),(55,56,'/dashboard/system/basics/multilingual','1'),(56,57,'/dashboard/system/basics/timezone','1'),(57,58,'/dashboard/system/basics/interface','1'),(58,59,'/dashboard/system/seo','1'),(59,60,'/dashboard/system/seo/urls','1'),(60,61,'/dashboard/system/seo/bulk_seo_tool','1'),(61,62,'/dashboard/system/seo/tracking_codes','1'),(62,63,'/dashboard/system/seo/statistics','1'),(63,64,'/dashboard/system/seo/search_index','1'),(64,65,'/dashboard/system/optimization','1'),(65,66,'/dashboard/system/optimization/cache','1'),(66,67,'/dashboard/system/optimization/clear_cache','1'),(67,68,'/dashboard/system/optimization/jobs','1'),(68,69,'/dashboard/system/permissions','1'),(69,70,'/dashboard/system/permissions/site','1'),(70,71,'/dashboard/system/permissions/files','1'),(71,72,'/dashboard/system/permissions/file_types','1'),(72,73,'/dashboard/system/permissions/tasks','1'),(73,74,'/dashboard/system/permissions/users','1'),(74,75,'/dashboard/system/permissions/advanced','1'),(75,76,'/dashboard/system/permissions/ip_blacklist','1'),(76,77,'/dashboard/system/permissions/captcha','1'),(77,78,'/dashboard/system/permissions/antispam','1'),(78,79,'/dashboard/system/permissions/maintenance_mode','1'),(79,80,'/dashboard/system/registration','1'),(80,81,'/dashboard/system/registration/postlogin','1'),(81,82,'/dashboard/system/registration/profiles','1'),(82,83,'/dashboard/system/registration/public_registration','1'),(83,84,'/dashboard/system/mail','1'),(84,85,'/dashboard/system/mail/method','1'),(85,86,'/dashboard/system/mail/importers','1'),(86,87,'/dashboard/system/attributes','1'),(87,88,'/dashboard/system/attributes/sets','1'),(88,89,'/dashboard/system/attributes/types','1'),(89,90,'/dashboard/system/environment','1'),(90,91,'/dashboard/system/environment/info','1'),(91,92,'/dashboard/system/environment/debug','1'),(92,93,'/dashboard/system/environment/logging','1'),(93,94,'/dashboard/system/environment/file_storage_locations','1'),(94,95,'/dashboard/system/environment/proxy','1'),(95,96,'/dashboard/system/backup_restore','1'),(96,97,'/dashboard/system/backup_restore/backup','1'),(97,98,'/dashboard/system/backup_restore/update','1'),(98,99,'/dashboard/system/backup_restore/database','1'),(99,100,'/dashboard/pages/types/composer','1'),(100,104,'/dashboard/home','1'),(101,105,'/dashboard/welcome','1'),(102,106,'/!drafts','1'),(103,107,'/!trash','1'),(104,108,'/!stacks','1'),(105,109,'/login','1'),(106,110,'/register','1'),(107,111,'/profile','1'),(108,112,'/profile/edit','1'),(109,113,'/profile/avatar','1'),(110,114,'/profile/messages','1'),(111,115,'/profile/friends','1'),(112,116,'/page_not_found','1'),(113,117,'/page_forbidden','1'),(114,118,'/download_file','1'),(115,119,'/members','1');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,45),(1,2,46),(1,3,47),(1,4,48),(1,5,49),(1,6,50),(1,7,51),(1,8,52),(1,9,53),(1,10,54),(1,11,55),(1,12,56),(1,13,57),(1,14,58),(1,15,59),(2,1,18),(2,2,19),(2,3,24),(2,4,20),(2,5,21),(2,6,26),(2,7,28),(2,8,30),(2,9,27),(2,10,31),(2,11,32),(2,12,22),(2,13,25),(2,14,23),(2,15,29),(42,1,33),(109,1,34),(110,1,35);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(4,'','Write','','/dashboard/composer/write','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(11,'','File Manager','','/dashboard/files/search','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2014-05-22 14:31:28','2014-05-22 14:31:36',NULL,0),(16,'','Search Users','','/dashboard/users/search','2014-05-22 14:31:29','2014-05-22 14:31:36',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(19,'','Add User','','/dashboard/users/add','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(21,'','Group Sets','','/dashboard/users/group_sets','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2014-05-22 14:31:29','2014-05-22 14:31:37',NULL,0),(29,'','Add','','/dashboard/pages/themes/add','2014-05-22 14:31:30','2014-05-22 14:31:37',NULL,0),(30,'','Inspect','','/dashboard/pages/themes/inspect','2014-05-22 14:31:30','2014-05-22 14:31:37',NULL,0),(31,'','Customize','','/dashboard/pages/themes/customize','2014-05-22 14:31:30','2014-05-22 14:31:37',NULL,0),(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2014-05-22 14:31:30','2014-05-22 14:31:37',NULL,0),(34,'','Attributes','','/dashboard/pages/attributes','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(35,'','Single Pages','','/dashboard/pages/single','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(36,'','Workflow','','/dashboard/workflow','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(37,'','Workflow List','','/dashboard/workflow/list','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(38,'','Waiting for Me','','/dashboard/workflow/me','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2014-05-22 14:31:30','2014-05-22 14:31:38',NULL,0),(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(42,'','Stack List','','/dashboard/blocks/stacks/list','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(45,'','Dashboard','','/dashboard/news','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(53,'','Site Name','','/dashboard/system/basics/site_name','2014-05-22 14:31:31','2014-05-22 14:31:38',NULL,0),(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(56,'','Languages','','/dashboard/system/basics/multilingual','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(57,'','Time Zone','','/dashboard/system/basics/timezone','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(58,'','Interface Preferences','','/dashboard/system/basics/interface','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(60,'','Pretty URLs','','/dashboard/system/seo/urls','2014-05-22 14:31:32','2014-05-22 14:31:38',NULL,0),(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2014-05-22 14:31:32','2014-05-22 14:31:39',NULL,0),(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2014-05-22 14:31:32','2014-05-22 14:31:39',NULL,0),(63,'','Statistics','','/dashboard/system/seo/statistics','2014-05-22 14:31:32','2014-05-22 14:31:39',NULL,0),(64,'','Search Index','','/dashboard/system/seo/search_index','2014-05-22 14:31:32','2014-05-22 14:31:39',NULL,0),(66,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(67,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(68,'','Automated Jobs','','/dashboard/system/optimization/jobs','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(70,'','Site Access','','/dashboard/system/permissions/site','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(71,'','File Manager Permissions','','/dashboard/system/permissions/files','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(72,'','Allowed File Types','','/dashboard/system/permissions/file_types','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(73,'','Task Permissions','','/dashboard/system/permissions/tasks','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(76,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(77,'','Captcha Setup','','/dashboard/system/permissions/captcha','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(78,'','Spam Control','','/dashboard/system/permissions/antispam','2014-05-22 14:31:33','2014-05-22 14:31:39',NULL,0),(79,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(81,'','Login Destination','','/dashboard/system/registration/postlogin','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(82,'','Public Profiles','','/dashboard/system/registration/profiles','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(83,'','Public Registration','','/dashboard/system/registration/public_registration','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(84,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(85,'','SMTP Method','','/dashboard/system/mail/method','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(86,'','Email Importers','','/dashboard/system/mail/importers','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(87,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(88,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(89,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(90,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2014-05-22 14:31:34','2014-05-22 14:31:39',NULL,0),(91,'','Environment Information','','/dashboard/system/environment/info','2014-05-22 14:31:35','2014-05-22 14:31:39',NULL,0),(92,'','Debug Settings','','/dashboard/system/environment/debug','2014-05-22 14:31:35','2014-05-22 14:31:39',NULL,0),(93,'','Logging Settings','','/dashboard/system/environment/logging','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(94,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(95,'','Proxy Server','','/dashboard/system/environment/proxy','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(96,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(98,'','Update concrete5','','/dashboard/system/backup_restore/update','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(99,'','Database XML','','/dashboard/system/backup_restore/database','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(104,'','Customize Dashboard Home','','/dashboard/home','2014-05-22 14:31:35','2014-05-22 14:31:40',NULL,0),(1,'','Home','',NULL,'2014-05-22 14:31:24','2014-05-22 14:31:42',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,11,0,0,0,-1,'0',0,0),(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1),(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1),(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1),(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1),(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1),(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1),(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1),(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1),(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1),(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1),(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1),(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1),(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1),(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1),(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1),(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1),(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1),(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1),(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1),(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1),(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1),(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1),(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1),(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1),(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1),(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1),(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1),(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1),(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1),(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1),(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1),(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1),(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1),(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1),(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1),(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1),(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1),(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1),(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1),(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1),(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1),(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1),(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1),(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1),(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1),(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1),(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1),(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1),(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1),(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1),(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1),(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1),(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1),(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1),(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1),(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1),(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1),(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,1,51,0,-1,'0',0,1),(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1),(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1),(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1),(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1),(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1),(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1),(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,65,0,-1,'0',0,1),(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,65,0,-1,'0',0,1),(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,65,0,-1,'0',0,1),(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1),(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,69,0,-1,'0',0,1),(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,69,0,-1,'0',0,1),(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,69,0,-1,'0',0,1),(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,69,0,-1,'0',0,1),(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,69,0,-1,'0',0,1),(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,69,0,-1,'0',0,1),(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,69,0,-1,'0',0,1),(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,69,0,-1,'0',0,1),(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,69,0,-1,'0',0,1),(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,69,0,-1,'0',0,1),(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1),(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,80,0,-1,'0',0,1),(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,80,0,-1,'0',0,1),(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,80,0,-1,'0',0,1),(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1),(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,84,0,-1,'0',0,1),(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,84,0,-1,'0',0,1),(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1),(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,87,0,-1,'0',0,1),(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,87,0,-1,'0',0,1),(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1),(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,90,0,-1,'0',0,1),(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,90,0,-1,'0',0,1),(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,90,0,-1,'0',0,1),(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,90,0,-1,'0',0,1),(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,90,0,-1,'0',0,1),(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1),(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,96,0,-1,'0',0,1),(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,96,0,-1,'0',0,1),(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,96,0,-1,'0',0,1),(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1),(101,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(104,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1),(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1),(106,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(109,0,1,0,NULL,NULL,NULL,1,109,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(111,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1),(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,111,0,-1,'0',0,1),(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,111,0,-1,'0',0,1),(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,111,0,-1,'0',0,1),(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,111,0,-1,'0',0,1),(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1),(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1),(120,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`),
  KEY `paID_peID` (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,1),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,1),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(4,1),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(6,6),(6,7);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,2,0,10),(34,2,0,10),(34,3,0,10),(35,2,0,10),(36,1,0,10),(36,2,0,10),(37,1,0,10),(38,1,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,2,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,16),(2,17),(3,54),(4,55),(5,56),(6,57),(7,59),(8,60),(9,61),(10,62),(11,63),(12,65),(13,66),(14,67),(15,68),(16,69),(17,70);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'composer_page',NULL),(5,'user',NULL),(6,'file_set',NULL),(7,'file',NULL),(8,'area',NULL),(9,'block_type',NULL),(10,'block',NULL),(11,'admin',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(4,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(5,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(6,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(7,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(8,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0),(9,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(10,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(11,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(12,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(13,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(14,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(15,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(16,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0),(17,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0),(18,'view_area','View Area',0,0,'Can view the area and its contents.',8,0),(19,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0),(20,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0),(21,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0),(22,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0),(23,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0),(24,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0),(25,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0),(26,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0),(27,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0),(28,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0),(29,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0),(30,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0),(31,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0),(32,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0),(33,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0),(34,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0),(35,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0),(36,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(37,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0),(38,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0),(39,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0),(40,'delete_file_set','Delete File Set',0,0,'',6,0),(41,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0),(42,'add_file','Add File',0,1,'Can add files to set.',6,0),(43,'view_file','View Files',0,0,'Can view and download files.',7,0),(44,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0),(45,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0),(46,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0),(47,'copy_file','Copy File',0,0,'Can copy file.',7,0),(48,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0),(49,'delete_file','Delete File',0,0,'Can delete file.',7,0),(50,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(51,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(52,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(53,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(54,'access_user_search','Access User Search',0,1,'',5,0),(55,'edit_user_properties','Edit User Details',0,1,NULL,5,0),(56,'view_user_attributes','View User Attributes',0,1,NULL,5,0),(57,'activate_user','Activate/Deactivate User',0,0,NULL,5,0),(58,'sudo','Sign in as User',0,0,NULL,5,0),(59,'delete_user','Delete User',0,0,NULL,5,0),(60,'access_group_search','Access Group Search',0,0,'',5,0),(61,'edit_groups','Edit Groups',0,0,'',5,0),(62,'assign_user_groups','Assign Groups to User',0,1,'',5,0),(63,'backup','Perform Backups',0,0,NULL,11,0),(64,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0),(65,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(66,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0),(67,'empty_trash','Empty Trash',0,0,NULL,11,0),(68,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(69,'install_packages','Install Packages',0,0,NULL,13,0),(70,'view_newsflow','View Newsflow',0,0,NULL,13,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
INSERT INTO `SystemNotifications` VALUES (1,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-05-22 14:31:44',0,1,'A new version of concrete5 is now available.','','\n\n    <h2>Huge Maintenance and Performance Improvement Updates</h2>\n\n    <p>\n    Version 5.6.1 introduces a completely revampled caching system, and should dramatically improve performance on your concrete5 sites. It also fixes a number of bugs and is highly recommended for all users of concrete5.\n    </p>\n    <p>\n    Version 5.6.2 and 5.6.2.1 introduce a lot of bug fixes and a few feature improvements, including automated jobs, permissions bug fixes, lots of translation fixes, and more.\n    They are highly recommended for all users of concrete5.\n    </p>\n    <p>\n    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n    They are highly recommended for all users of concrete5.\n    </p>\n    <p>\n    As always, backup your data and site before running the upgrade live.\n    </p>\n\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-1/\" target=\"_blank\">Full 5.6.1 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-1-1-release-notes/\" target=\"_blank\">Full 5.6.1.1 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-1-2-release-notes/\" target=\"_blank\">Full 5.6.1.2 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-2-release-notes/\" target=\"_blank\">Full 5.6.2 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-2-1-release-notes/\" target=\"_blank\">Full 5.6.2.1 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n    <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n    ');
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (10,0,0,1,0,1,0,1,1),(11,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessList`
--

LOCK TABLES `UserPermissionAssignGroupAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessListCustom`
--

LOCK TABLES `UserPermissionAssignGroupAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessList`
--

LOCK TABLES `UserPermissionUserSearchAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessListCustom`
--

LOCK TABLES `UserPermissionUserSearchAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','noreply@camelcasetech.com','9c132bfac2f5e20760a739c3011f7de3','1',-1,1,'2014-05-22 14:31:22',0,0,1400769082,3232243969,0,1,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (20,1),(31,1),(34,1),(64,1),(65,1),(68,1),(69,1),(75,1),(107,1),(116,1),(117,1),(118,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(8,0),(9,0),(10,1),(11,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'icon-book'),(3,'new blog, write blog, blogging'),(4,'icon-pencil'),(5,'blog drafts,composer'),(6,'icon-book'),(7,'pages, add page, delete page, copy, move, alias'),(8,'pages, add page, delete page, copy, move, alias'),(9,'icon-home'),(10,'pages, add page, delete page, copy, move, alias, bulk'),(11,'icon-road'),(12,'find page, search page, search, find, pages, sitemap'),(13,'icon-search'),(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(15,'icon-picture'),(16,'file, file attributes, title, attribute, description, rename'),(17,'icon-cog'),(18,'files, category, categories'),(19,'icon-list-alt'),(21,'new file set'),(22,'icon-plus-sign'),(23,'users, groups, people, find, delete user, remove user, change password, password'),(24,'find, search, people, delete user, remove user, change password, password'),(25,'icon-user'),(26,'user, group, people, permissions, access, expire'),(27,'icon-globe'),(28,'user attributes, user data, gather data, registration data'),(29,'icon-cog'),(30,'new user, create'),(32,'icon-plus-sign'),(33,'new user group, new group, group, create'),(35,'icon-plus'),(36,'group set'),(37,'icon-list'),(38,'forms, log, error, email, mysql, exception, survey'),(39,'hits, pageviews, visitors, activity'),(40,'icon-signal'),(41,'forms, questions, response, data'),(42,'icon-briefcase'),(43,'questions, quiz, response'),(44,'icon-tasks'),(45,'forms, log, error, email, mysql, exception, survey, history'),(46,'icon-time'),(47,'new theme, theme, active theme, change theme, template, css'),(48,'icon-font'),(49,'theme'),(50,'page types'),(51,'custom theme, change theme, custom css, css'),(52,'page type defaults, global block, global area, starter, template'),(53,'icon-file'),(54,'page attributes, custom'),(55,'icon-cog'),(56,'single, page, custom, application'),(57,'icon-wrench'),(58,'add workflow, remove workflow'),(59,'icon-list'),(60,'icon-user'),(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(62,'icon-th'),(63,'icon-lock'),(66,'block, refresh, custom'),(67,'icon-wrench'),(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(71,'update, upgrade'),(72,'concrete5.org, my account, marketplace'),(73,'buy theme, new theme, marketplace, template'),(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(76,'website name, title'),(77,'logo, favicon, iphone, icon, bookmark'),(78,'tinymce, content block, fonts, editor, tinymce, content, overlay'),(79,'translate, translation, internationalization, multilingual, translate'),(80,'timezone, profile, locale'),(81,'interface, quick nav, dashboard background, background image'),(82,'vanity, pretty url, seo, pageview, view'),(83,'bulk, seo, change keywords, engine, optimization, search'),(84,'traffic, statistics, google analytics, quant, pageviews, hits'),(85,'turn off statistics, tracking, statistics, pageviews, hits'),(86,'configure search, site search, search option'),(87,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(88,'cache option, turn off cache, no cache, page cache, caching'),(89,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(90,'editors, hide site, offline, private, public, access'),(91,'file options, file manager, upload, modify'),(92,'security, files, media, extension, manager, upload'),(93,'security, actions, administrator, admin, package, marketplace, search'),(94,'security, lock ip, lock out, block ip, address, restrict, access'),(95,'security, registration'),(96,'antispam, block spam, security'),(97,'lock site, under construction, hide, hidden'),(98,'profile, login, redirect, specific, dashboard, administrators'),(99,'member profile, member page,community, forums, social, avatar'),(100,'signup, new user, community'),(101,'smtp, mail settings'),(102,'email server, mail settings, mail configuration, external, internal'),(103,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(104,'attribute configuration'),(105,'attributes, sets'),(106,'attributes, types'),(108,'overrides, system info, debug, support,help'),(109,'errors,exceptions, develop, support, help'),(110,'email, logging, logs, smtp, pop, errors, mysql, errors, log'),(111,'security, alternate storage, hide files'),(112,'network, proxy server'),(113,'export, backup, database, sql, mysql, encryption, restore'),(114,'upgrade, new version, update'),(115,'export, database, xml, starting, points, schema, refresh, custom, tables');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(4,''),(7,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-22 14:34:38
