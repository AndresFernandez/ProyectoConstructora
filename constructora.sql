-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: constructora
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `actasdeingreso`
--

DROP TABLE IF EXISTS `actasdeingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actasdeingreso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `fechaDeLLegada` datetime DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `pagado?` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actasdeingreso`
--

LOCK TABLES `actasdeingreso` WRITE;
/*!40000 ALTER TABLE `actasdeingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `actasdeingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `localizacion` varchar(100) NOT NULL,
  `fechaInicio` date NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2017-05-25 06:30:34',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-25 16:15:48',NULL),(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 02:10:13',NULL),(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/contadores/add-save','Add New Data Pedro at contadores',1,'2017-05-30 04:18:27',NULL),(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/directoresdepresupuesto/add-save','Add New Data mario at directoresDePresupuesto',1,'2017-05-30 04:29:56',NULL),(5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/contadores/edit-save/1','Update data Pedro at contadores',1,'2017-05-30 04:30:12',NULL),(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/obras/add-save','Add New Data Torre Cibeles at obras',1,'2017-05-30 05:07:54',NULL),(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/users/add-save','Add New Data luis at Users',1,'2017-05-30 05:26:36',NULL),(8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 05:26:45',NULL),(9,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:26:54',NULL),(10,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:27:19',NULL),(11,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:27:47',NULL),(12,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:28:19',NULL),(13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:28:46',NULL),(14,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:28:54',NULL),(15,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 05:29:24',NULL),(16,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data directoresdeobra at Menu Management',1,'2017-05-30 05:31:49',NULL),(17,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 05:32:04',NULL),(18,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:32:14',NULL),(19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:32:28',NULL),(20,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 05:32:34',NULL),(21,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data actasDeIngreso at Menu Management',1,'2017-05-30 05:33:16',NULL),(22,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/28','Update data actasDeIngreso at Menu Management',1,'2017-05-30 05:33:51',NULL),(23,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 05:34:05',NULL),(24,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:34:11',NULL),(25,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:35:08',NULL),(26,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 05:35:15',NULL),(27,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data residentesDeObra at Menu Management',1,'2017-05-30 05:50:33',NULL),(28,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data practicantes at Menu Management',1,'2017-05-30 05:51:04',NULL),(29,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data obreros at Menu Management',1,'2017-05-30 05:51:34',NULL),(30,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data obras at Menu Management',1,'2017-05-30 05:52:57',NULL),(31,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data materiales at Menu Management',1,'2017-05-30 05:53:40',NULL),(32,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data maestros at Menu Management',1,'2017-05-30 05:54:11',NULL),(33,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data directoresDePresupuesto at Menu Management',1,'2017-05-30 05:54:31',NULL),(34,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data cuadrillas at Menu Management',1,'2017-05-30 05:54:51',NULL),(35,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/add-save','Add New Data contadores at Menu Management',1,'2017-05-30 05:55:21',NULL),(36,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 05:56:28',NULL),(37,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 05:56:33',NULL),(38,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 05:57:24',NULL),(39,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 05:57:27',NULL),(40,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/34','Update data maestros at Menu Management',1,'2017-05-30 05:57:53',NULL),(41,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/delete/34','Delete data maestros at Menu Management',1,'2017-05-30 06:02:15',NULL),(42,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 06:05:31',NULL),(43,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 06:05:35',NULL),(44,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 06:05:50',NULL),(45,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 06:05:53',NULL),(46,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/18','Delete data maestros at Module Generator',1,'2017-05-30 06:06:53',NULL),(47,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 06:07:03',NULL),(48,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 06:07:07',NULL),(49,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 06:07:15',NULL),(50,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 06:07:20',NULL),(51,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 06:08:28',NULL),(52,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 06:08:31',NULL),(53,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 06:08:54',NULL),(54,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-05-30 06:08:57',NULL),(55,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/15','Update data actasDeIngreso at Menu Management',1,'2017-05-30 06:11:25',NULL),(56,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/16','Update data cuadrillas at Menu Management',1,'2017-05-30 06:11:53',NULL),(57,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/18','Update data materiales at Menu Management',1,'2017-05-30 06:14:41',NULL),(58,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/19','Update data obras at Menu Management',1,'2017-05-30 06:14:58',NULL),(59,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/20','Update data obreros at Menu Management',1,'2017-05-30 06:15:14',NULL),(60,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/21','Update data practicantes at Menu Management',1,'2017-05-30 06:15:35',NULL),(61,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/22','Update data residentesDeObra at Menu Management',1,'2017-05-30 06:16:53',NULL),(62,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-05-30 06:17:03',NULL),(63,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-05-30 06:17:06',NULL),(64,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-05-30 06:24:22',NULL),(65,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-06-01 23:16:03',NULL),(66,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-06-02 00:20:54',NULL),(67,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-06-02 00:21:35',NULL),(68,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-06-05 21:21:08',NULL),(69,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/cuadrillas/add-save','Add New Data cuadrilla acabados at cuadrillas',2,'2017-06-05 21:25:21',NULL),(70,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/obras/edit/1','Try edit the data Torre Cibeles at obras',2,'2017-06-05 21:26:35',NULL),(71,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/logout','luis@aia.com logout',2,'2017-06-05 21:27:29',NULL),(72,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-06-05 21:27:34',NULL),(73,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-06-07 03:25:03',NULL),(74,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-07-08 01:57:50',NULL),(75,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/36','Update data cuadrillas at Menu Management',1,'2017-07-08 02:22:22',NULL),(76,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/36','Update data cuadrillas at Menu Management',1,'2017-07-08 02:22:39',NULL),(77,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/cuadrillas/delete/1','Delete data cuadrilla acabados at cuadrillas',1,'2017-07-08 04:56:23',NULL),(78,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/cuadrillas/delete/13','Delete data estructura4 at cuadrillas',1,'2017-07-08 04:56:42',NULL),(79,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/30','Update data practicantes at Menu Management',1,'2017-07-08 05:13:17',NULL),(80,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/14','Delete data practicantes at Module Generator',1,'2017-07-08 05:13:41',NULL),(81,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/edit-save/30','Update data practicantes at Menu Management',1,'2017-07-08 05:14:47',NULL),(82,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/24','Delete data practicantes at Module Generator',1,'2017-07-08 05:18:58',NULL),(83,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/15','Delete data obreros at Module Generator',1,'2017-07-08 05:26:13',NULL),(84,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/delete/30','Delete data practicantes at Menu Management',1,'2017-07-08 05:26:28',NULL),(85,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/delete/31','Delete data obreros at Menu Management',1,'2017-07-08 05:26:33',NULL),(86,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/practicantes/add-save','Add New Data 1 at practicantes',1,'2017-07-08 05:29:48',NULL),(87,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/practicantes/add-save','Add New Data 2 at practicantes',1,'2017-07-08 05:30:58',NULL),(88,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/practicantes/add-save','Add New Data 3 at practicantes',1,'2017-07-08 05:32:39',NULL),(89,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/13','Delete data residentesDeObra at Module Generator',1,'2017-07-08 05:39:21',NULL),(90,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/delete/29','Delete data residentesDeObra at Menu Management',1,'2017-07-08 05:39:39',NULL),(91,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/residentesdeobra/add-save','Add New Data 1 at residentesDeObra',1,'2017-07-08 05:41:51',NULL),(92,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/residentesdeobra/add-save','Add New Data 2 at residentesDeObra',1,'2017-07-08 05:42:43',NULL),(93,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/directoresdeobra/add-save','Add New Data Ernesto at directoresdeobra',1,'2017-07-08 05:43:31',NULL),(94,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/contadores/edit-save/1','Update data Santiago at contadores',1,'2017-07-08 05:44:54',NULL),(95,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/directoresdepresupuesto/edit-save/1','Update data Fernando at directoresDePresupuesto',1,'2017-07-08 05:46:06',NULL),(96,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 1 at obreros',1,'2017-07-08 05:47:28',NULL),(97,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 2 at obreros',1,'2017-07-08 05:48:16',NULL),(98,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 3 at obreros',1,'2017-07-08 05:49:46',NULL),(99,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 4 at obreros',1,'2017-07-08 05:50:25',NULL),(100,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 5 at obreros',1,'2017-07-08 05:51:16',NULL),(101,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 6 at obreros',1,'2017-07-08 05:51:57',NULL),(102,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 7 at obreros',1,'2017-07-08 05:52:51',NULL),(103,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 8 at obreros',1,'2017-07-08 05:54:43',NULL),(104,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 9 at obreros',1,'2017-07-08 05:55:24',NULL),(105,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/obreros/add-save','Add New Data 10 at obreros',1,'2017-07-08 05:56:07',NULL),(106,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/23','Delete data maestros at Module Generator',1,'2017-07-08 06:01:23',NULL),(107,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-07-08 20:57:10',NULL),(108,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-07-21 03:42:43',NULL),(109,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/28','Delete data actividades at Module Generator',1,'2017-07-21 04:53:10',NULL),(110,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-07-21 23:24:33',NULL),(111,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/menu_management/delete/28','Delete data actasDeIngreso at Menu Management',1,'2017-07-21 23:50:09',NULL),(112,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/module_generator/delete/22','Delete data actasDeIngreso at Module Generator',1,'2017-07-21 23:50:24',NULL),(113,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-07-22 00:37:01',NULL),(114,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-07-22 00:51:38',NULL),(115,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/logout','admin@crudbooster.com logout',1,'2017-07-22 00:53:40',NULL),(116,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','http://127.0.0.1:8000/admin/login','luis@aia.com login with IP Address 127.0.0.1',2,'2017-07-22 00:53:59',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,'directoresdeobra','Route','AdminDirectoresdeobraControllerGetIndex',NULL,'fa fa-glass',0,0,0,1,1,'2017-05-30 02:10:44',NULL),(5,'obras','Route','AdminObrasControllerGetIndex',NULL,'fa fa-glass',1,0,0,1,1,'2017-05-30 02:18:22',NULL),(6,'materiales','Route','AdminMaterialesControllerGetIndex',NULL,'fa fa-glass',1,0,0,1,2,'2017-05-30 02:18:51',NULL),(8,'directoresDePresupuesto','Route','AdminDirectoresdepresupuestoControllerGetIndex',NULL,'fa fa-glass',11,0,0,1,1,'2017-05-30 02:19:57',NULL),(9,'cuadrillas','Route','AdminCuadrillasControllerGetIndex',NULL,'fa fa-glass',1,0,0,1,3,'2017-05-30 02:20:28',NULL),(10,'contadores','Route','AdminContadoresControllerGetIndex',NULL,'fa fa-glass',1,0,0,1,1,'2017-05-30 02:20:52',NULL),(13,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-glass',0,1,0,2,2,'2017-05-30 04:33:23',NULL),(14,'obras','Route','AdminObrasControllerGetIndex','normal','fa fa-glass',0,1,0,2,3,'2017-05-30 04:33:23',NULL),(16,'cuadrillas','Route','AdminCuadrillasControllerGetIndex','normal','fa fa-chain',0,1,0,3,2,'2017-05-30 04:37:40','2017-05-30 06:11:52'),(18,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-cube',0,1,0,3,4,'2017-05-30 04:37:40','2017-05-30 06:14:41'),(19,'obras','Route','AdminObrasControllerGetIndex','normal','fa fa-road',0,1,0,3,5,'2017-05-30 04:37:40','2017-05-30 06:14:58'),(23,'cuadrillas','Route','AdminCuadrillasControllerGetIndex','normal','fa fa-glass',0,1,0,4,1,'2017-05-30 05:04:26',NULL),(24,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-glass',0,1,0,4,2,'2017-05-30 05:04:26',NULL),(27,'directoresdeobra','Module','directoresdeobra','normal','fa fa-users',0,1,0,1,10,'2017-05-30 05:31:49',NULL),(32,'obras','Module','obras','normal','fa fa-map-o',0,1,0,1,4,'2017-05-30 05:52:57',NULL),(33,'materiales','Module','materiales','normal','fa fa-check-square-o',0,1,0,1,5,'2017-05-30 05:53:40',NULL),(35,'directoresDePresupuesto','Module','directoresdepresupuesto','normal','fa fa-money',0,1,0,1,7,'2017-05-30 05:54:31',NULL),(36,'cuadrillas','Module','cuadrillas','normal','fa fa-glass',0,1,0,1,8,'2017-05-30 05:54:51','2017-07-08 02:22:39'),(37,'contadores','Module','contadores','normal','fa fa-edit',0,1,0,1,9,'2017-05-30 05:55:21',NULL),(41,'practicantes','Route','AdminPracticantesControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,13,'2017-07-08 05:27:03',NULL),(42,'obreros','Route','AdminObrerosControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,14,'2017-07-08 05:27:35',NULL),(43,'residentesDeObra','Route','AdminResidentesdeobraControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,15,'2017-07-08 05:39:56',NULL),(44,'maestros','Route','AdminMaestrosControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,16,'2017-07-08 06:01:48',NULL),(45,'actividades','Route','AdminActividadesControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,17,'2017-07-21 04:55:40',NULL),(46,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,18,'2017-07-21 23:50:45',NULL),(47,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,2,4,'2017-07-21 23:53:52',NULL),(48,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,3,6,'2017-07-21 23:55:59',NULL),(49,'actividades','Route','AdminActividadesControllerGetIndex','normal','fa fa-glass',0,1,0,3,7,'2017-07-21 23:55:59',NULL),(50,'contadores','Route','AdminContadoresControllerGetIndex','normal','fa fa-glass',0,1,0,3,8,'2017-07-21 23:56:00',NULL),(51,'maestros','Route','AdminMaestrosControllerGetIndex','normal','fa fa-glass',0,1,0,3,9,'2017-07-21 23:56:00',NULL),(52,'obreros','Route','AdminObrerosControllerGetIndex','normal','fa fa-glass',0,1,0,3,10,'2017-07-21 23:56:00',NULL),(53,'practicantes','Route','AdminPracticantesControllerGetIndex','normal','fa fa-glass',0,1,0,3,11,'2017-07-21 23:56:00',NULL),(54,'residentesDeObra','Route','AdminResidentesdeobraControllerGetIndex','normal','fa fa-glass',0,1,0,3,12,'2017-07-21 23:56:00',NULL),(55,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,4,3,'2017-07-22 00:09:51',NULL),(56,'actividades','Route','AdminActividadesControllerGetIndex','normal','fa fa-glass',0,1,0,4,4,'2017-07-22 00:09:51',NULL),(57,'maestros','Route','AdminMaestrosControllerGetIndex','normal','fa fa-glass',0,1,0,4,5,'2017-07-22 00:09:51',NULL),(58,'obreros','Route','AdminObrerosControllerGetIndex','normal','fa fa-glass',0,1,0,4,6,'2017-07-22 00:09:51',NULL),(59,'practicantes','Route','AdminPracticantesControllerGetIndex','normal','fa fa-glass',0,1,0,4,7,'2017-07-22 00:09:51',NULL),(60,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,5,1,'2017-07-22 00:14:14',NULL),(61,'actividades','Route','AdminActividadesControllerGetIndex','normal','fa fa-glass',0,1,0,5,2,'2017-07-22 00:14:14',NULL),(62,'contadores','Route','AdminContadoresControllerGetIndex','normal','fa fa-glass',0,1,0,5,3,'2017-07-22 00:14:14',NULL),(63,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-glass',0,1,0,5,4,'2017-07-22 00:14:14',NULL),(64,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,6,1,'2017-07-22 00:15:41',NULL),(65,'actividades','Route','AdminActividadesControllerGetIndex','normal','fa fa-glass',0,1,0,6,2,'2017-07-22 00:15:41',NULL),(66,'cuadrillas','Route','AdminCuadrillasControllerGetIndex','normal','fa fa-glass',0,1,0,6,3,'2017-07-22 00:15:41',NULL),(67,'maestros','Route','AdminMaestrosControllerGetIndex','normal','fa fa-glass',0,1,0,6,4,'2017-07-22 00:15:41',NULL),(68,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-glass',0,1,0,6,5,'2017-07-22 00:15:41',NULL),(69,'obreros','Route','AdminObrerosControllerGetIndex','normal','fa fa-glass',0,1,0,6,6,'2017-07-22 00:15:41',NULL),(70,'actasDeIngreso','Route','AdminActasdeingresoControllerGetIndex','normal','fa fa-glass',0,1,0,7,1,'2017-07-22 00:17:44',NULL),(71,'actividades','Route','AdminActividadesControllerGetIndex','normal','fa fa-glass',0,1,0,7,2,'2017-07-22 00:17:44',NULL),(72,'cuadrillas','Route','AdminCuadrillasControllerGetIndex','normal','fa fa-glass',0,1,0,7,3,'2017-07-22 00:17:44',NULL),(73,'materiales','Route','AdminMaterialesControllerGetIndex','normal','fa fa-glass',0,1,0,7,4,'2017-07-22 00:17:44',NULL),(74,'obreros','Route','AdminObrerosControllerGetIndex','normal','fa fa-glass',0,1,0,7,5,'2017-07-22 00:17:44',NULL),(75,'practicantes','Route','AdminPracticantesControllerGetIndex','normal','fa fa-glass',0,1,0,7,6,'2017-07-22 00:17:44',NULL),(76,'residentesDeObra','Route','AdminResidentesdeobraControllerGetIndex','normal','fa fa-glass',0,1,0,7,7,'2017-07-22 00:17:44',NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2017-05-25 06:30:32',NULL),(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2017-05-25 06:30:32',NULL),(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2017-05-25 06:30:32',NULL),(4,'Users','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2017-05-25 06:30:32',NULL),(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2017-05-25 06:30:32',NULL),(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2017-05-25 06:30:32',NULL),(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2017-05-25 06:30:32',NULL),(8,'Email Template','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2017-05-25 06:30:32',NULL),(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2017-05-25 06:30:32',NULL),(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2017-05-25 06:30:32',NULL),(11,'Logs','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2017-05-25 06:30:32',NULL),(12,'directoresdeobra','fa fa-glass','directoresdeobra','directoresdeobra','AdminDirectoresdeobraController',0,0,'2017-05-30 02:10:44',NULL),(16,'obras','fa fa-glass','obras','obras','AdminObrasController',0,0,'2017-05-30 02:18:22',NULL),(17,'materiales','fa fa-glass','materiales','materiales','AdminMaterialesController',0,0,'2017-05-30 02:18:51',NULL),(19,'directoresDePresupuesto','fa fa-glass','directoresdepresupuesto','directoresdepresupuesto','AdminDirectoresdepresupuestoController',0,0,'2017-05-30 02:19:57',NULL),(20,'cuadrillas','fa fa-glass','cuadrillas','cuadrillas','AdminCuadrillasController',0,0,'2017-05-30 02:20:28',NULL),(21,'contadores','fa fa-glass','contadores','contadores','AdminContadoresController',0,0,'2017-05-30 02:20:52',NULL),(24,'practicantes','fa fa-glass','practicantes','practicantes','AdminPracticantesController',0,0,'2017-07-08 05:27:03',NULL),(25,'obreros','fa fa-glass','obreros','obreros','AdminObrerosController',0,0,'2017-07-08 05:27:35',NULL),(26,'residentesDeObra','fa fa-glass','residentesdeobra','residentesdeobra','AdminResidentesdeobraController',0,0,'2017-07-08 05:39:56',NULL),(27,'maestros','fa fa-glass','maestros','maestros','AdminMaestrosController',0,0,'2017-07-08 06:01:48',NULL),(28,'actividades','fa fa-glass','actividades','actividades','AdminActividadesController',0,0,'2017-07-21 04:55:40',NULL),(29,'actasDeIngreso','fa fa-glass','actasdeingreso','actasdeingreso','AdminActasdeingresoController',0,0,'2017-07-21 23:50:45',NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-red','2017-05-25 06:30:32',NULL),(2,'contador',0,'skin-blue',NULL,NULL),(3,'directordeobra',0,'skin-yellow',NULL,NULL),(4,'residentesDeObra',0,'skin-green',NULL,NULL),(5,'directoresDePresupuesto',0,'skin-red',NULL,NULL),(6,'practicante',0,'skin-purple',NULL,NULL),(7,'maestro',0,'skin-yellow',NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (1,1,0,0,0,0,1,1,'2017-05-25 06:30:32',NULL),(2,1,1,1,1,1,1,2,'2017-05-25 06:30:33',NULL),(3,0,1,1,1,1,1,3,'2017-05-25 06:30:33',NULL),(4,1,1,1,1,1,1,4,'2017-05-25 06:30:33',NULL),(5,1,1,1,1,1,1,5,'2017-05-25 06:30:33',NULL),(6,1,1,1,1,1,1,6,'2017-05-25 06:30:33',NULL),(7,1,1,1,1,1,1,7,'2017-05-25 06:30:33',NULL),(8,1,1,1,1,1,1,8,'2017-05-25 06:30:33',NULL),(9,1,1,1,1,1,1,9,'2017-05-25 06:30:33',NULL),(10,1,1,1,1,1,1,10,'2017-05-25 06:30:33',NULL),(11,1,0,1,0,1,1,11,'2017-05-25 06:30:33',NULL),(12,1,1,1,1,1,1,12,NULL,NULL),(13,1,1,1,1,1,1,13,NULL,NULL),(14,1,1,1,1,1,1,14,NULL,NULL),(15,1,1,1,1,1,1,15,NULL,NULL),(16,1,1,1,1,1,1,16,NULL,NULL),(17,1,1,1,1,1,1,17,NULL,NULL),(18,1,1,1,1,1,1,18,NULL,NULL),(19,1,1,1,1,1,1,19,NULL,NULL),(20,1,1,1,1,1,1,20,NULL,NULL),(21,1,1,1,1,1,1,21,NULL,NULL),(22,1,1,1,1,1,1,22,NULL,NULL),(23,1,0,0,0,0,2,22,NULL,NULL),(24,1,0,1,1,0,2,17,NULL,NULL),(25,1,0,0,0,0,2,16,NULL,NULL),(26,1,0,0,0,0,3,22,NULL,NULL),(27,1,1,1,1,1,3,20,NULL,NULL),(28,1,1,1,1,1,3,18,NULL,NULL),(29,1,1,1,1,1,3,17,NULL,NULL),(30,1,1,0,1,0,3,16,NULL,NULL),(31,1,1,1,1,1,3,15,NULL,NULL),(32,1,1,1,1,1,3,14,NULL,NULL),(33,1,1,1,1,1,3,13,NULL,NULL),(34,1,0,1,0,0,4,20,NULL,NULL),(35,1,1,1,1,1,4,17,NULL,NULL),(36,1,1,1,1,1,4,15,NULL,NULL),(37,1,1,1,1,1,4,14,NULL,NULL),(38,1,1,1,1,1,1,23,NULL,NULL),(39,1,1,1,1,1,3,23,NULL,NULL),(40,1,1,1,1,1,4,23,NULL,NULL),(41,1,1,1,1,1,1,24,NULL,NULL),(42,1,1,1,1,1,1,24,NULL,NULL),(43,1,1,1,1,1,1,25,NULL,NULL),(44,1,1,1,1,1,1,26,NULL,NULL),(45,1,1,1,1,1,1,27,NULL,NULL),(46,1,1,1,1,1,1,28,NULL,NULL),(47,1,1,1,1,1,1,28,NULL,NULL),(48,1,1,1,1,1,1,29,NULL,NULL),(49,1,0,1,0,0,2,29,NULL,NULL),(50,1,0,1,0,0,3,29,NULL,NULL),(51,1,1,1,1,1,3,28,NULL,NULL),(52,1,0,1,0,0,3,21,NULL,NULL),(53,1,1,1,1,1,3,27,NULL,NULL),(54,1,1,1,1,1,3,25,NULL,NULL),(55,1,1,1,1,1,3,24,NULL,NULL),(56,1,1,1,1,1,3,26,NULL,NULL),(57,1,0,1,0,0,4,29,NULL,NULL),(58,1,1,1,1,0,4,28,NULL,NULL),(59,1,1,1,1,0,4,27,NULL,NULL),(60,1,1,1,1,1,4,25,NULL,NULL),(61,1,1,1,1,0,4,24,NULL,NULL),(62,1,1,1,1,1,5,29,NULL,NULL),(63,1,0,1,0,0,5,28,NULL,NULL),(64,1,1,1,1,1,5,21,NULL,NULL),(65,1,1,1,1,0,5,17,NULL,NULL),(66,1,0,1,0,0,6,29,NULL,NULL),(67,1,1,1,1,0,6,28,NULL,NULL),(68,1,1,1,1,0,6,20,NULL,NULL),(69,1,1,1,1,0,6,27,NULL,NULL),(70,1,1,1,0,0,6,17,NULL,NULL),(71,1,1,1,1,0,6,25,NULL,NULL),(72,1,0,1,0,0,7,29,NULL,NULL),(73,1,1,1,1,0,7,28,NULL,NULL),(74,1,1,1,1,0,7,20,NULL,NULL),(75,1,1,1,0,0,7,17,NULL,NULL),(76,1,1,1,1,1,7,25,NULL,NULL),(77,1,0,1,0,0,7,24,NULL,NULL),(78,1,0,1,0,0,7,26,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2017-05-25 06:30:33',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2017-05-25 06:30:33',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2017-05-25 06:30:33',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2017-05-25 06:30:33',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2017-05-25 06:30:33',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Email Setting','SMTP Password'),(10,'appname','Constructora AIA S.A','text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Application Setting','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2017-05-25 06:30:33',NULL,'Application Setting','Default Paper Print Size'),(12,'logo','uploads/2017-05/466e148636b83f5b51d7d94916e8146e.jpg','upload_image',NULL,NULL,'2017-05-25 06:30:33',NULL,'Application Setting','Logo'),(13,'favicon','uploads/2017-05/5e7fa1f451620c69b22d2a4bfcee544b.jpg','upload_image',NULL,NULL,'2017-05-25 06:30:33',NULL,'Application Setting','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2017-05-25 06:30:33',NULL,'Application Setting','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Application Setting','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2017-05-25 06:30:33',NULL,'Application Setting','Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Super Admin',NULL,'admin@crudbooster.com','$2y$10$4kqVgWIPCxPKWHpCWmOOVuEa6KInj1kGNl/Ttrut.XHCKGHl0sYQC',1,'2017-05-25 06:30:32',NULL,'Active'),(2,'luis','uploads/2017-05/bean.jpg','luis@aia.com','$2y$10$n6K8z47E5EYKpq/w9BHkUO6wNg3IyAzSvh514lquN.eXIJZTTeTA.',3,'2017-05-30 05:26:35',NULL,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumoinsumos`
--

DROP TABLE IF EXISTS `consumoinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumoinsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idactividadconsumo` int(11) NOT NULL,
  `idmaterial` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idactividad` (`idactividadconsumo`),
  KEY `idmaterial` (`idmaterial`),
  CONSTRAINT `idactividadconsumo` FOREIGN KEY (`idactividadconsumo`) REFERENCES `actividades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idmaterial` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumoinsumos`
--

LOCK TABLES `consumoinsumos` WRITE;
/*!40000 ALTER TABLE `consumoinsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumoinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contadores`
--

DROP TABLE IF EXISTS `contadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `cedula` int(11) NOT NULL,
  `correo` varchar(400) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contadores`
--

LOCK TABLES `contadores` WRITE;
/*!40000 ALTER TABLE `contadores` DISABLE KEYS */;
INSERT INTO `contadores` VALUES (1,'Santiago','López',782379848,'santiago@aia.com','09234234');
/*!40000 ALTER TABLE `contadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuadrillas`
--

DROP TABLE IF EXISTS `cuadrillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadrillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `encargadaDe` varchar(200) NOT NULL,
  `rendimiento` varchar(60) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `TipoContrato` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuadrillas`
--

LOCK TABLES `cuadrillas` WRITE;
/*!40000 ALTER TABLE `cuadrillas` DISABLE KEYS */;
INSERT INTO `cuadrillas` VALUES (2,'pileros1','Perforaciones-Cimentaciones pila 1 a 20','3 metros/dia','1','tercerizado'),(4,'pileros2','Perforaciones-Cimentaciones pila 21 a 40','2.5 metros/dia','2','propio'),(6,'estructura1','vaciado losas','70 metros cuadrados/día','3','propio'),(8,'estructura2','linea de Columnas 1 a 20/día','24 metros lineales','4','propio'),(10,'estructura3','vaciado de losas ','60 metros cuadrados por día','5','tercerizado'),(12,'estructura4','linea de columnas 21 a 40','21 metros lineales /día','6','tercerizado'),(14,'acabadosmuros','nivelacion  muros ','15 metros lineales/dia','7','tercirizado'),(15,'acabados2','nivelacion de losas','40 metros cuadrados /día','8','propio'),(16,'mamposteria1','mamposteria inicial-resanado','20 metros cuadrados/día','9','propio'),(17,'mamposteria2','pintura','30 metros cuadrados/día','10','tercerizado');
/*!40000 ALTER TABLE `cuadrillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directoresdeobra`
--

DROP TABLE IF EXISTS `directoresdeobra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directoresdeobra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `correo` varchar(400) NOT NULL,
  `cedula` int(11) NOT NULL,
  `obras_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`obras_id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  KEY `fk_directoresDeObra_obras_idx` (`obras_id`),
  CONSTRAINT `fk_directoresDeObra_obras` FOREIGN KEY (`obras_id`) REFERENCES `obras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directoresdeobra`
--

LOCK TABLES `directoresdeobra` WRITE;
/*!40000 ALTER TABLE `directoresdeobra` DISABLE KEYS */;
INSERT INTO `directoresdeobra` VALUES (1,'Ernesto','Villa','ernesto.villa@gmail,com',1037644745,1);
/*!40000 ALTER TABLE `directoresdeobra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directoresdepresupuesto`
--

DROP TABLE IF EXISTS `directoresdepresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directoresdepresupuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `correo` varchar(400) NOT NULL,
  `cedula` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directoresdepresupuesto`
--

LOCK TABLES `directoresdepresupuesto` WRITE;
/*!40000 ALTER TABLE `directoresdepresupuesto` DISABLE KEYS */;
INSERT INTO `directoresdepresupuesto` VALUES (1,'Fernando','Contrera','fernandocon@yahoo.com',839356325);
/*!40000 ALTER TABLE `directoresdepresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `cedula` int(11) NOT NULL,
  `obras_id` int(11) NOT NULL,
  `cuadrillas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`obras_id`,`cuadrillas_id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  KEY `fk_maestros_obras1_idx` (`obras_id`),
  KEY `fk_maestros_cuadrillas1_idx` (`cuadrillas_id`),
  CONSTRAINT `fk_maestros_cuadrillas1` FOREIGN KEY (`cuadrillas_id`) REFERENCES `cuadrillas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_maestros_obras1` FOREIGN KEY (`obras_id`) REFERENCES `obras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestros`
--

LOCK TABLES `maestros` WRITE;
/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `identificacion` varchar(45) NOT NULL,
  `costo` int(11) NOT NULL,
  `proveedor` varchar(200) NOT NULL,
  `actasDeIngreso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`actasDeIngreso_id`),
  KEY `fk_materiales_actasDeIngreso1_idx` (`actasDeIngreso_id`),
  CONSTRAINT `fk_materiales_actasDeIngreso1` FOREIGN KEY (`actasDeIngreso_id`) REFERENCES `actasdeingreso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialutilizado`
--

DROP TABLE IF EXISTS `materialutilizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialutilizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmaterialutilizado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idmaterialutilizado` (`idmaterialutilizado`),
  CONSTRAINT `idmaterialusado` FOREIGN KEY (`idmaterialutilizado`) REFERENCES `materiales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialutilizado`
--

LOCK TABLES `materialutilizado` WRITE;
/*!40000 ALTER TABLE `materialutilizado` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialutilizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_152014_add_table_cms_privileges',1),(5,'2016_08_07_152214_add_table_cms_privileges_roles',1),(6,'2016_08_07_152320_add_table_cms_settings',1),(7,'2016_08_07_152421_add_table_cms_users',1),(8,'2016_08_07_154624_add_table_cms_moduls',1),(9,'2016_08_17_225409_add_status_cms_users',1),(10,'2016_08_20_125418_add_table_cms_notifications',1),(11,'2016_09_04_033706_add_table_cms_email_queues',1),(12,'2016_09_16_035347_add_group_setting',1),(13,'2016_09_16_045425_add_label_setting',1),(14,'2016_09_17_104728_create_nullable_cms_apicustom',1),(15,'2016_10_01_141740_add_method_type_apicustom',1),(16,'2016_10_01_141846_add_parameters_apicustom',1),(17,'2016_10_01_141934_add_responses_apicustom',1),(18,'2016_10_01_144826_add_table_apikey',1),(19,'2016_11_14_141657_create_cms_menus',1),(20,'2016_11_15_132350_create_cms_email_templates',1),(21,'2016_11_15_190410_create_cms_statistics',1),(22,'2016_11_17_102740_create_cms_statistic_components',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `identificacion` varchar(45) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `fechaDeInicio` date NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `fechaEstimadaFinal` date NOT NULL,
  `directoresDePresupuesto_id` int(11) NOT NULL,
  `contadores_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`directoresDePresupuesto_id`,`contadores_id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`),
  KEY `fk_obras_directoresDePresupuesto1_idx` (`directoresDePresupuesto_id`),
  KEY `fk_obras_contadores1_idx` (`contadores_id`),
  CONSTRAINT `fk_obras_contadores1` FOREIGN KEY (`contadores_id`) REFERENCES `contadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_obras_directoresDePresupuesto1` FOREIGN KEY (`directoresDePresupuesto_id`) REFERENCES `directoresdepresupuesto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'Torre Cibeles','T-429304','Envigado','2017-05-16','Única torre residencial','2018-04-26',1,1);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obreros`
--

DROP TABLE IF EXISTS `obreros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obreros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `cuadrillas_id` int(11) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `salario` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`cuadrillas_id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  KEY `fk_obreros_cuadrillas1_idx` (`cuadrillas_id`),
  CONSTRAINT `fk_obreros_cuadrillas1` FOREIGN KEY (`cuadrillas_id`) REFERENCES `cuadrillas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obreros`
--

LOCK TABLES `obreros` WRITE;
/*!40000 ALTER TABLE `obreros` DISABLE KEYS */;
INSERT INTO `obreros` VALUES (1,'Juan','Gómez',657283566,'4365786',2,'Nada',874957),(2,'Francisco','Mesa',1037644246,'9684632',4,'Nada',737717),(3,'Diego','Pérez',1037644376,'1374747',6,'Sólo viene los viernes',200000),(4,'Hector','Suárez',184659466,'7593659',8,'Ninguno',737717),(5,'Jorge','Martínez',84629046,'749274854',10,'Ninguno',800000),(6,'Arturo','Calle',574034734,'7593756',12,'Ninguno',1000000),(7,'Gabriel','Buendía',746956352,'75983758',14,'Ninguno',737717),(8,'Ramiro','Casas',749756361,'7483956',15,'Subcontratado Perforacion y Suelos S.A.S',1200000),(9,'Manuel','Delgado',83649365,'736493645',16,'Subcontratado Perforacion y Suelos S.A.S',1200000),(10,'David','García',537456594,'64846493',17,'Ninguno',737717);
/*!40000 ALTER TABLE `obreros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practicantes`
--

DROP TABLE IF EXISTS `practicantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practicantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `correo` varchar(400) NOT NULL,
  `cedula` int(11) NOT NULL,
  `universidad` varchar(500) NOT NULL,
  `fechaDeIngreso` date NOT NULL,
  `fechaDeSalida` date DEFAULT NULL,
  `obras_id` int(11) NOT NULL,
  `Asignado a` varchar(400) NOT NULL,
  `salario` int(10) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`,`obras_id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  KEY `fk_practicantes_obras1_idx` (`obras_id`),
  CONSTRAINT `fk_practicantes_obras1` FOREIGN KEY (`obras_id`) REFERENCES `obras` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practicantes`
--

LOCK TABLES `practicantes` WRITE;
/*!40000 ALTER TABLE `practicantes` DISABLE KEYS */;
INSERT INTO `practicantes` VALUES (1,'Andrés','Fernández','afernandez@hotmail.com',1037644930,'Universidad EIA','2017-07-17','2017-12-22',1,'',737717,'Ninguno'),(2,'Juan Carlos','Ardila','juan.ardila@hotmail.com',1037644931,'Universidad EIA','2017-07-17','2017-12-22',1,'',737717,'Ninguno'),(3,'Lucia','Ocampo','locampo@gmail.com',1037644932,'Universidad Nacional Medellín','2017-07-17','2017-12-22',1,'',737717,'Ninguno');
/*!40000 ALTER TABLE `practicantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rendimientos`
--

DROP TABLE IF EXISTS `rendimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rendimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rendimiento` int(11) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  `idactividad` int(11) NOT NULL,
  `idcuadrilla` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idactividad` (`idactividad`),
  KEY `idcuadrilla` (`idcuadrilla`),
  CONSTRAINT `idactividad` FOREIGN KEY (`idactividad`) REFERENCES `actividades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idcuadrilla` FOREIGN KEY (`idcuadrilla`) REFERENCES `cuadrillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rendimientos`
--

LOCK TABLES `rendimientos` WRITE;
/*!40000 ALTER TABLE `rendimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rendimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residentesdeobra`
--

DROP TABLE IF EXISTS `residentesdeobra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residentesdeobra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `correo` varchar(400) NOT NULL,
  `dependencia` varchar(200) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `obras_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`obras_id`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  KEY `fk_residentesDeObra_obras1_idx` (`obras_id`),
  CONSTRAINT `fk_residentesDeObra_obras1` FOREIGN KEY (`obras_id`) REFERENCES `obras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residentesdeobra`
--

LOCK TABLES `residentesdeobra` WRITE;
/*!40000 ALTER TABLE `residentesdeobra` DISABLE KEYS */;
INSERT INTO `residentesdeobra` VALUES (1,'Mario','Cardenas','mario@gmail.com','Estructura y Perforaciones',1037644985,'8466936',1),(2,'Pedro','Cifuentes','pedroc@yahoo.com','Momposteria',1037644573,'6583953',1);
/*!40000 ALTER TABLE `residentesdeobra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-30 20:18:24
