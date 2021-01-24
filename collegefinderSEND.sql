-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: collegefinder
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add college',7,'add_college'),(26,'Can change college',7,'change_college'),(27,'Can delete college',7,'delete_college'),(28,'Can view college',7,'view_college'),(29,'Can add faculties',8,'add_faculties'),(30,'Can change faculties',8,'change_faculties'),(31,'Can delete faculties',8,'delete_faculties'),(32,'Can view faculties',8,'view_faculties'),(33,'Can add degrees',9,'add_degrees'),(34,'Can change degrees',9,'change_degrees'),(35,'Can delete degrees',9,'delete_degrees'),(36,'Can view degrees',9,'view_degrees'),(37,'Can add jobs',10,'add_jobs'),(38,'Can change jobs',10,'change_jobs'),(39,'Can delete jobs',10,'delete_jobs'),(40,'Can view jobs',10,'view_jobs'),(41,'Can add degree',11,'add_degree'),(42,'Can change degree',11,'change_degree'),(43,'Can delete degree',11,'delete_degree'),(44,'Can view degree',11,'view_degree'),(45,'Can add facultie',8,'add_facultie'),(46,'Can change facultie',8,'change_facultie'),(47,'Can delete facultie',8,'delete_facultie'),(48,'Can view facultie',8,'view_facultie'),(49,'Can add job',10,'add_job'),(50,'Can change job',10,'change_job'),(51,'Can delete job',10,'delete_job'),(52,'Can view job',10,'view_job'),(53,'Can add site',12,'add_site'),(54,'Can change site',12,'change_site'),(55,'Can delete site',12,'delete_site'),(56,'Can view site',12,'view_site'),(57,'Can add dean',13,'add_dean'),(58,'Can change dean',13,'change_dean'),(59,'Can delete dean',13,'delete_dean'),(60,'Can view dean',13,'view_dean'),(61,'Can add c user',14,'add_cuser'),(62,'Can change c user',14,'change_cuser'),(63,'Can delete c user',14,'delete_cuser'),(64,'Can view c user',14,'view_cuser'),(65,'Can add contact',15,'add_contact'),(66,'Can change contact',15,'change_contact'),(67,'Can delete contact',15,'delete_contact'),(68,'Can view contact',15,'view_contact'),(69,'Can add contact f',15,'add_contactf'),(70,'Can change contact f',15,'change_contactf'),(71,'Can delete contact f',15,'delete_contactf'),(72,'Can view contact f',15,'view_contactf'),(73,'Can add contact fm',15,'add_contactfm'),(74,'Can change contact fm',15,'change_contactfm'),(75,'Can delete contact fm',15,'delete_contactfm'),(76,'Can view contact fm',15,'view_contactfm');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$IWTNGzcCtkCN$OzeKbGng4At4klnNEPbrofKb7wWr1kIaqdEZ3d+p5tU=','2021-01-23 10:00:17.368451',1,'aboude','','','aboudeh003@gmail.com',1,1,'2021-01-23 09:59:59.697542');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-23 10:40:01.367870','1','t',1,'[{\"added\": {}}]',8,1),(2,'2021-01-23 10:44:36.087233','1','a',1,'[{\"added\": {}}]',7,1),(3,'2021-01-23 11:16:23.828378','1','aaa',1,'[{\"added\": {}}]',11,1),(4,'2021-01-23 11:18:30.474578','1','a',3,'',7,1),(5,'2021-01-23 11:18:37.110506','1','aaa',3,'',11,1),(6,'2021-01-23 11:18:45.026852','1','t',3,'',8,1),(7,'2021-01-23 12:19:52.557809','2','Science',1,'[{\"added\": {}}]',8,1),(8,'2021-01-23 12:19:55.614961','2','LU',1,'[{\"added\": {}}]',7,1),(9,'2021-01-23 12:22:45.992889','2','LU',2,'[{\"changed\": {\"fields\": [\"Website\"]}}]',7,1),(10,'2021-01-23 12:28:43.393433','2','LU',2,'[{\"changed\": {\"fields\": [\"Website\"]}}]',7,1),(11,'2021-01-23 12:30:46.221353','2','LU',2,'[{\"changed\": {\"fields\": [\"Website\", \"Number\"]}}]',7,1),(12,'2021-01-23 12:54:03.160375','3','LITERATURE',1,'[{\"added\": {}}]',8,1),(13,'2021-01-23 12:54:14.564315','2','LU',2,'[{\"changed\": {\"fields\": [\"Faculties\"]}}]',7,1),(14,'2021-01-23 13:00:43.015052','3','wf',1,'[{\"added\": {}}]',7,1),(15,'2021-01-23 13:01:00.310565','4','AAAAAAAAAAAA',1,'[{\"added\": {}}]',7,1),(16,'2021-01-23 16:01:51.141928','1','Bob duncan',1,'[{\"added\": {}}]',13,1),(17,'2021-01-23 16:01:56.493697','5','sexy mama',1,'[{\"added\": {}}]',7,1),(18,'2021-01-23 16:02:03.503622','2','LU',2,'[{\"changed\": {\"fields\": [\"Deans\"]}}]',7,1),(19,'2021-01-23 16:05:16.296744','6','idk',1,'[{\"added\": {}}]',7,1),(20,'2021-01-23 18:18:33.478850','2','a',1,'[{\"added\": {}}]',11,1),(21,'2021-01-23 18:18:51.942351','1','aboude',1,'[{\"added\": {}}]',10,1),(22,'2021-01-23 18:21:19.820194','2','a',2,'[]',11,1),(23,'2021-01-23 18:24:44.882133','2','a',2,'[]',11,1),(24,'2021-01-23 23:42:46.277773','2','LU',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(25,'2021-01-24 11:15:01.542757','12','mm',3,'',7,1),(26,'2021-01-24 11:15:01.551701','11','idk',3,'',7,1),(27,'2021-01-24 11:15:01.559307','10','LU',3,'',7,1),(28,'2021-01-24 11:15:10.578764','2','A',3,'',15,1),(29,'2021-01-24 11:15:10.584852','1','A',3,'',15,1),(30,'2021-01-24 11:15:19.548635','4','WWWWWWWWWWWWWWWWWWW',3,'',11,1),(31,'2021-01-24 11:15:25.121399','3','>>',3,'',8,1),(32,'2021-01-24 11:15:25.147936','2','MOOOO',3,'',8,1),(33,'2021-01-24 11:18:36.207494','4','Science and Technologies',1,'[{\"added\": {}}]',8,1),(34,'2021-01-24 11:18:46.967610','5','Literature',1,'[{\"added\": {}}]',8,1),(35,'2021-01-24 11:31:26.350091','6','Medicine',1,'[{\"added\": {}}]',8,1),(36,'2021-01-24 11:33:35.304681','7','none',1,'[{\"added\": {}}]',8,1),(37,'2021-01-24 11:34:36.684974','5','Medical',1,'[{\"added\": {}}]',11,1),(38,'2021-01-24 11:36:04.629901','6','Computer Science',1,'[{\"added\": {}}]',11,1),(39,'2021-01-24 11:36:21.398884','7','Highschool',1,'[{\"added\": {}}]',11,1),(40,'2021-01-24 11:36:30.234738','6','Computer Science',2,'[{\"changed\": {\"fields\": [\"PreReq\"]}}]',11,1),(41,'2021-01-24 11:36:52.751853','8','Biology',1,'[{\"added\": {}}]',11,1),(42,'2021-01-24 11:36:59.902693','5','Medical',2,'[{\"changed\": {\"fields\": [\"PreReq\"]}}]',11,1),(43,'2021-01-24 11:37:49.288825','5','Doctor',1,'[{\"added\": {}}]',10,1),(44,'2021-01-24 11:38:08.794244','6','Software engineer',1,'[{\"added\": {}}]',10,1),(45,'2021-01-24 11:38:41.117512','7','McDonald',1,'[{\"added\": {}}]',10,1),(46,'2021-01-24 11:41:45.170435','13','Lebanese University- Beirut',1,'[{\"added\": {}}]',7,1),(47,'2021-01-24 11:42:27.951331','8','John st Doe',1,'[{\"added\": {}}]',13,1),(48,'2021-01-24 11:43:30.157584','13','Lebanese University- Beirut',2,'[{\"changed\": {\"fields\": [\"Deans\"]}}]',7,1),(49,'2021-01-24 11:45:32.821499','14','USJ',1,'[{\"added\": {}}]',7,1),(50,'2021-01-24 11:47:59.152422','5','Medical',2,'[{\"changed\": {\"fields\": [\"Jobs\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'project','college'),(15,'project','contactfm'),(14,'project','cuser'),(13,'project','dean'),(11,'project','degree'),(9,'project','degrees'),(8,'project','facultie'),(10,'project','job'),(6,'sessions','session'),(12,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-23 09:56:37.637974'),(2,'auth','0001_initial','2021-01-23 09:56:38.166331'),(3,'admin','0001_initial','2021-01-23 09:56:39.813810'),(4,'admin','0002_logentry_remove_auto_add','2021-01-23 09:56:40.274852'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-23 09:56:40.292823'),(6,'contenttypes','0002_remove_content_type_name','2021-01-23 09:56:40.669834'),(7,'auth','0002_alter_permission_name_max_length','2021-01-23 09:56:40.842264'),(8,'auth','0003_alter_user_email_max_length','2021-01-23 09:56:40.892666'),(9,'auth','0004_alter_user_username_opts','2021-01-23 09:56:40.909812'),(10,'auth','0005_alter_user_last_login_null','2021-01-23 09:56:41.100438'),(11,'auth','0006_require_contenttypes_0002','2021-01-23 09:56:41.109748'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-23 09:56:41.127884'),(13,'auth','0008_alter_user_username_max_length','2021-01-23 09:56:41.389040'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-23 09:56:41.552724'),(15,'auth','0010_alter_group_name_max_length','2021-01-23 09:56:41.598608'),(16,'auth','0011_update_proxy_permissions','2021-01-23 09:56:41.622599'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-23 09:56:41.789453'),(18,'project','0001_initial','2021-01-23 09:56:41.857918'),(19,'sessions','0001_initial','2021-01-23 09:56:41.916165'),(20,'project','0002_auto_20210123_1218','2021-01-23 10:18:37.763058'),(21,'project','0003_auto_20210123_1224','2021-01-23 10:24:10.545426'),(22,'project','0004_faculties','2021-01-23 10:28:54.734638'),(23,'project','0005_auto_20210123_1239','2021-01-23 10:39:28.361247'),(24,'project','0006_auto_20210123_1303','2021-01-23 11:03:44.833138'),(25,'project','0007_auto_20210123_1309','2021-01-23 11:09:32.020159'),(26,'project','0008_auto_20210123_1311','2021-01-23 11:11:28.467327'),(27,'project','0009_auto_20210123_1313','2021-01-23 11:13:24.359238'),(28,'project','0010_degree_prereq','2021-01-23 11:15:46.055061'),(29,'project','0011_auto_20210123_1428','2021-01-23 12:28:10.796390'),(30,'project','0012_auto_20210123_1429','2021-01-23 12:29:31.524710'),(31,'project','0013_auto_20210123_1500','2021-01-23 13:00:16.914412'),(32,'sites','0001_initial','2021-01-23 13:09:21.825441'),(33,'sites','0002_alter_domain_unique','2021-01-23 13:09:21.870062'),(34,'project','0014_auto_20210123_1524','2021-01-23 13:25:02.111080'),(35,'project','0015_college_degrees','2021-01-23 16:09:21.675226'),(36,'project','0016_auto_20210123_2016','2021-01-23 18:16:33.474534'),(37,'project','0017_auto_20210123_2018','2021-01-23 18:18:23.852931'),(38,'project','0018_auto_20210123_2019','2021-01-23 18:20:14.463238'),(39,'project','0019_auto_20210123_2020','2021-01-23 18:20:45.143060'),(40,'project','0020_auto_20210123_2022','2021-01-23 18:22:36.291671'),(41,'project','0021_auto_20210123_2023','2021-01-23 18:23:24.428802'),(42,'project','0022_auto_20210123_2225','2021-01-23 20:25:18.673609'),(43,'project','0023_cuser','2021-01-24 01:06:30.960886'),(44,'project','0024_cuser_isadmin','2021-01-24 01:08:32.277604'),(45,'project','0025_auto_20210124_0405','2021-01-24 02:05:58.029134'),(46,'project','0026_auto_20210124_0417','2021-01-24 02:17:26.783083'),(47,'project','0027_auto_20210124_0434','2021-01-24 02:34:25.992265'),(48,'project','0028_auto_20210124_1124','2021-01-24 09:24:48.705886'),(49,'project','0029_auto_20210124_1317','2021-01-24 11:18:01.460325'),(50,'project','0030_auto_20210124_1317','2021-01-24 11:18:01.824142'),(51,'project','0031_auto_20210124_1332','2021-01-24 11:32:38.907716'),(52,'project','0032_auto_20210124_1341','2021-01-24 11:41:37.372903');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1f1pr7sr65hi1qsuph30lak9s665ibee','.eJxVjMEOwiAQBf-FsyFABRaP3vsNZIFFqgaS0p5M_7026UGvb2beh3lcl-LXTrOfErsxyS6_W8D4onqA9MT6aDy2usxT4IfCT9r52BK976f7d1Cwl2-tndPBgAFIkRA1KWVQhgQanVDZCUsCrjlaqSMZktkhwkAiDyobsIFtO-VCOBw:1l3FiL:iLEhNC9RC-UESKh-sM3fY_ZfAD5L5D-Ka9h3JPulxww','2021-02-06 10:00:17.376264');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_college`
--

DROP TABLE IF EXISTS `project_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_college` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `acceptanceRate` decimal(5,2) DEFAULT NULL,
  `graduationRate` decimal(5,2) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_college`
--

LOCK TABLES `project_college` WRITE;
/*!40000 ALTER TABLE `project_college` DISABLE KEYS */;
INSERT INTO `project_college` VALUES (13,'Lebanese University- Beirut','Beirut',90.00,30.00,'01 612 831','http://www.ul.edu.lb/'),(14,'USJ','Beirut',90.30,67.00,'01 421 000','https://www.usj.edu.lb/'),(15,'Test College','Tripoli',50.00,40.00,'03111111','http://127.0.0.1:8000/#');
/*!40000 ALTER TABLE `project_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_college_deans`
--

DROP TABLE IF EXISTS `project_college_deans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_college_deans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `college_id` int NOT NULL,
  `dean_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_college_deans_college_id_dean_id_49600a8d_uniq` (`college_id`,`dean_id`),
  KEY `project_college_deans_dean_id_6fdbfd28_fk_project_dean_id` (`dean_id`),
  CONSTRAINT `project_college_deans_college_id_2a81f293_fk_project_college_id` FOREIGN KEY (`college_id`) REFERENCES `project_college` (`id`),
  CONSTRAINT `project_college_deans_dean_id_6fdbfd28_fk_project_dean_id` FOREIGN KEY (`dean_id`) REFERENCES `project_dean` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_college_deans`
--

LOCK TABLES `project_college_deans` WRITE;
/*!40000 ALTER TABLE `project_college_deans` DISABLE KEYS */;
INSERT INTO `project_college_deans` VALUES (15,13,8),(16,14,8),(17,15,8);
/*!40000 ALTER TABLE `project_college_deans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_college_degrees`
--

DROP TABLE IF EXISTS `project_college_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_college_degrees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `college_id` int NOT NULL,
  `degree_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_college_degrees_college_id_degree_id_211c6722_uniq` (`college_id`,`degree_id`),
  KEY `project_college_degrees_degree_id_9d449d37_fk_project_degree_id` (`degree_id`),
  CONSTRAINT `project_college_degr_college_id_1dae1903_fk_project_c` FOREIGN KEY (`college_id`) REFERENCES `project_college` (`id`),
  CONSTRAINT `project_college_degrees_degree_id_9d449d37_fk_project_degree_id` FOREIGN KEY (`degree_id`) REFERENCES `project_degree` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_college_degrees`
--

LOCK TABLES `project_college_degrees` WRITE;
/*!40000 ALTER TABLE `project_college_degrees` DISABLE KEYS */;
INSERT INTO `project_college_degrees` VALUES (13,13,5),(14,13,6),(15,13,7),(12,13,8),(17,14,5),(18,14,6),(19,14,7),(16,14,8),(20,15,5),(21,15,6),(22,15,7);
/*!40000 ALTER TABLE `project_college_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_college_faculties`
--

DROP TABLE IF EXISTS `project_college_faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_college_faculties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `college_id` int NOT NULL,
  `facultie_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_college_faculties_college_id_faculties_id_d8eeaf34_uniq` (`college_id`,`facultie_id`),
  KEY `project_college_facu_facultie_id_31681c70_fk_project_f` (`facultie_id`),
  CONSTRAINT `project_college_facu_college_id_3201b454_fk_project_c` FOREIGN KEY (`college_id`) REFERENCES `project_college` (`id`),
  CONSTRAINT `project_college_facu_facultie_id_31681c70_fk_project_f` FOREIGN KEY (`facultie_id`) REFERENCES `project_facultie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_college_faculties`
--

LOCK TABLES `project_college_faculties` WRITE;
/*!40000 ALTER TABLE `project_college_faculties` DISABLE KEYS */;
INSERT INTO `project_college_faculties` VALUES (15,13,4),(16,13,5),(17,13,6),(18,14,4),(19,14,5),(20,14,6),(21,15,4),(22,15,5);
/*!40000 ALTER TABLE `project_college_faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contactfm`
--

DROP TABLE IF EXISTS `project_contactfm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contactfm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `questions` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contactfm`
--

LOCK TABLES `project_contactfm` WRITE;
/*!40000 ALTER TABLE `project_contactfm` DISABLE KEYS */;
INSERT INTO `project_contactfm` VALUES (3,'aboude','JohnDoe@gmail.com','2355','hi?');
/*!40000 ALTER TABLE `project_contactfm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_dean`
--

DROP TABLE IF EXISTS `project_dean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_dean` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `collegeWork_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_dean_collegeWork_id_cc33deb3_fk_project_college_id` (`collegeWork_id`),
  KEY `project_dean_faculty_id_e6dd7ff6_fk_project_facultie_id` (`faculty_id`),
  CONSTRAINT `project_dean_collegeWork_id_cc33deb3_fk_project_college_id` FOREIGN KEY (`collegeWork_id`) REFERENCES `project_college` (`id`),
  CONSTRAINT `project_dean_faculty_id_e6dd7ff6_fk_project_facultie_id` FOREIGN KEY (`faculty_id`) REFERENCES `project_facultie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_dean`
--

LOCK TABLES `project_dean` WRITE;
/*!40000 ALTER TABLE `project_dean` DISABLE KEYS */;
INSERT INTO `project_dean` VALUES (8,'John st Doe','JohnstDoe@gmail.com',13,4);
/*!40000 ALTER TABLE `project_dean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_degree`
--

DROP TABLE IF EXISTS `project_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_degree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `faculty_id` int NOT NULL,
  `preReq_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_degree_preReq_id_95310901_fk_project_degree_id` (`preReq_id`),
  KEY `project_degree_faculty_id_18a26ea6_fk_project_facultie_id` (`faculty_id`),
  CONSTRAINT `project_degree_faculty_id_18a26ea6_fk_project_facultie_id` FOREIGN KEY (`faculty_id`) REFERENCES `project_facultie` (`id`),
  CONSTRAINT `project_degree_preReq_id_95310901_fk_project_degree_id` FOREIGN KEY (`preReq_id`) REFERENCES `project_degree` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_degree`
--

LOCK TABLES `project_degree` WRITE;
/*!40000 ALTER TABLE `project_degree` DISABLE KEYS */;
INSERT INTO `project_degree` VALUES (5,'Medical',4,8),(6,'Computer Science',4,7),(7,'Highschool',7,NULL),(8,'Biology',4,7);
/*!40000 ALTER TABLE `project_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_degree_jobs`
--

DROP TABLE IF EXISTS `project_degree_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_degree_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `degree_id` int NOT NULL,
  `job_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_degree_jobs_degree_id_job_id_72dafcb9_uniq` (`degree_id`,`job_id`),
  KEY `project_degree_jobs_job_id_2bb98e68_fk_project_job_id` (`job_id`),
  CONSTRAINT `project_degree_jobs_degree_id_31bd3c09_fk_project_degree_id` FOREIGN KEY (`degree_id`) REFERENCES `project_degree` (`id`),
  CONSTRAINT `project_degree_jobs_job_id_2bb98e68_fk_project_job_id` FOREIGN KEY (`job_id`) REFERENCES `project_job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_degree_jobs`
--

LOCK TABLES `project_degree_jobs` WRITE;
/*!40000 ALTER TABLE `project_degree_jobs` DISABLE KEYS */;
INSERT INTO `project_degree_jobs` VALUES (1,5,5);
/*!40000 ALTER TABLE `project_degree_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_facultie`
--

DROP TABLE IF EXISTS `project_facultie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_facultie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_facultie`
--

LOCK TABLES `project_facultie` WRITE;
/*!40000 ALTER TABLE `project_facultie` DISABLE KEYS */;
INSERT INTO `project_facultie` VALUES (4,'Science and Technologies'),(5,'Literature'),(6,'Medicine'),(7,'none');
/*!40000 ALTER TABLE `project_facultie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_facultie_degrees`
--

DROP TABLE IF EXISTS `project_facultie_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_facultie_degrees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `facultie_id` int NOT NULL,
  `degree_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_facultie_degrees_facultie_id_degree_id_8e86fab8_uniq` (`facultie_id`,`degree_id`),
  KEY `project_facultie_degrees_degree_id_829f5aa2_fk_project_degree_id` (`degree_id`),
  CONSTRAINT `project_facultie_deg_facultie_id_390b3fee_fk_project_f` FOREIGN KEY (`facultie_id`) REFERENCES `project_facultie` (`id`),
  CONSTRAINT `project_facultie_degrees_degree_id_829f5aa2_fk_project_degree_id` FOREIGN KEY (`degree_id`) REFERENCES `project_degree` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_facultie_degrees`
--

LOCK TABLES `project_facultie_degrees` WRITE;
/*!40000 ALTER TABLE `project_facultie_degrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_facultie_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_job`
--

DROP TABLE IF EXISTS `project_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `avgSalary` int DEFAULT NULL,
  `reqDegree_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_job_reqDegree_id_2c27b18d_fk_project_degree_id` (`reqDegree_id`),
  CONSTRAINT `project_job_reqDegree_id_2c27b18d_fk_project_degree_id` FOREIGN KEY (`reqDegree_id`) REFERENCES `project_degree` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_job`
--

LOCK TABLES `project_job` WRITE;
/*!40000 ALTER TABLE `project_job` DISABLE KEYS */;
INSERT INTO `project_job` VALUES (5,'Doctor',100000,5),(6,'Software engineer',60000,6),(7,'McDonald',10000,7);
/*!40000 ALTER TABLE `project_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 16:29:45
