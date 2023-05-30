-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tienda
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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(100) DEFAULT NULL,
  `tabla` varchar(30) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'2023-03-02 02:47:15','root@localhost','clientes','ACTUALIZACION'),(2,'2023-03-02 02:49:23','root@localhost','clientes','ELIMINAR'),(3,'2023-03-02 02:50:47','root@localhost','clientes','ACTUALIZACION'),(4,'2023-03-02 03:56:49','root@localhost','clientes','ACTUALIZACION'),(5,'2023-03-02 04:06:04','qwd','proveedores','ACTUALIZACION'),(6,'2023-03-02 04:06:16','qwdqw','proveedores','ACTUALIZACION'),(7,'2023-03-02 04:06:22','qwdqw','proveedores','ELIMINAR'),(8,'2023-03-06 02:17:40','pizza','productos','INSERCION'),(9,'2023-03-06 03:36:53','root@localhost','productos','INSERCION'),(10,'2023-03-07 17:06:29','root@localhost','productos','ELIMINAR'),(11,'2023-03-07 17:06:29','root@localhost','productos','ELIMINAR'),(12,'2023-03-07 17:10:36','root@localhost','productos','INSERCION'),(13,'2023-03-11 20:52:52','root@localhost','proveedores','ELIMINAR'),(14,'2023-03-11 20:52:56','root@localhost','proveedores','ELIMINAR'),(15,'2023-03-11 20:53:01','root@localhost','proveedores','ELIMINAR'),(16,'2023-03-11 20:53:05','root@localhost','proveedores','ELIMINAR'),(17,'2023-03-11 20:53:12','root@localhost','proveedores','ELIMINAR'),(18,'2023-03-11 20:53:17','root@localhost','proveedores','ELIMINAR'),(19,'2023-03-11 20:53:20','root@localhost','proveedores','ELIMINAR'),(20,'2023-03-11 20:53:39','root@localhost','proveedores','ELIMINAR'),(21,'2023-03-11 20:54:18','root@localhost','productos','INSERCION'),(22,'2023-03-11 21:25:43','root@localhost','productos','ELIMINAR'),(23,'2023-03-11 22:05:19','root@localhost','productos','INSERCION'),(24,'2023-03-11 22:09:04','root@localhost','productos','ACTUALIZACION'),(25,'2023-03-11 22:09:09','root@localhost','productos','ACTUALIZACION'),(26,'2023-03-11 22:09:09','root@localhost','productos','ACTUALIZACION'),(27,'2023-03-11 22:09:10','root@localhost','productos','ACTUALIZACION'),(28,'2023-03-11 22:09:41','root@localhost','productos','ACTUALIZACION'),(29,'2023-03-11 22:09:42','root@localhost','productos','ACTUALIZACION'),(30,'2023-03-11 22:09:43','root@localhost','productos','ACTUALIZACION'),(31,'2023-03-11 22:10:12','root@localhost','productos','ACTUALIZACION'),(32,'2023-03-11 22:10:13','root@localhost','productos','ACTUALIZACION'),(33,'2023-03-11 22:10:14','root@localhost','productos','ACTUALIZACION'),(34,'2023-03-11 22:10:15','root@localhost','productos','ACTUALIZACION'),(35,'2023-03-11 22:10:15','root@localhost','productos','ACTUALIZACION'),(36,'2023-03-11 22:10:27','root@localhost','productos','ACTUALIZACION'),(37,'2023-03-11 22:13:06','root@localhost','productos','ACTUALIZACION'),(38,'2023-03-11 22:13:20','root@localhost','productos','ACTUALIZACION'),(39,'2023-03-11 22:13:26','root@localhost','productos','ACTUALIZACION'),(40,'2023-03-11 22:13:32','root@localhost','productos','ACTUALIZACION'),(41,'2023-03-11 22:13:38','root@localhost','productos','ACTUALIZACION'),(42,'2023-03-11 22:14:33','root@localhost','productos','ACTUALIZACION'),(43,'2023-03-11 22:14:52','root@localhost','productos','ACTUALIZACION'),(44,'2023-03-11 23:18:51','root@localhost','productos','INSERCION'),(45,'2023-03-11 23:29:06','root@localhost','proveedores','ELIMINAR'),(46,'2023-03-11 23:29:11','root@localhost','proveedores','ELIMINAR'),(47,'2023-03-11 23:29:15','root@localhost','proveedores','ELIMINAR'),(48,'2023-03-11 23:29:18','root@localhost','proveedores','ELIMINAR'),(49,'2023-03-11 23:29:20','root@localhost','proveedores','ELIMINAR'),(50,'2023-03-11 23:29:23','root@localhost','proveedores','ELIMINAR'),(51,'2023-03-11 23:29:26','root@localhost','proveedores','ELIMINAR'),(52,'2023-03-11 23:29:55','root@localhost','productos','ELIMINAR'),(53,'2023-03-11 23:30:01','root@localhost','proveedores','ELIMINAR'),(54,'2023-03-11 23:30:49','root@localhost','proveedores','INSERCION'),(55,'2023-03-11 23:31:22','root@localhost','proveedores','INSERCION'),(56,'2023-03-11 23:31:54','root@localhost','proveedores','INSERCION'),(57,'2023-03-11 23:36:41','root@localhost','proveedores','INSERCION'),(58,'2023-03-11 23:36:53','root@localhost','proveedores','ELIMINAR'),(59,'2023-03-13 17:41:32','root@localhost','proveedores','INSERCION'),(60,'2023-03-13 17:43:05','root@localhost','productos','ELIMINAR'),(61,'2023-03-13 17:44:35','root@localhost','productos','INSERCION'),(62,'2023-03-13 17:45:29','root@localhost','productos','ACTUALIZACION'),(63,'2023-03-13 19:14:32','root@localhost','clientes','INSERCION'),(64,'2023-03-13 19:15:05','root@localhost','clientes','ACTUALIZACION'),(65,'2023-03-13 19:44:51','root@localhost','clientes','ACTUALIZACION'),(66,'2023-03-13 20:37:41','root@localhost','clientes','ACTUALIZACION'),(67,'2023-03-13 20:38:01','root@localhost','clientes','ACTUALIZACION'),(68,'2023-03-13 20:40:14','root@localhost','clientes','ACTUALIZACION'),(69,'2023-03-13 20:40:32','root@localhost','clientes','ACTUALIZACION'),(70,'2023-03-13 20:40:41','root@localhost','clientes','ACTUALIZACION'),(71,'2023-03-13 20:42:42','root@localhost','proveedores','INSERCION'),(72,'2023-03-13 20:46:31','root@localhost','proveedores','ACTUALIZACION'),(73,'2023-03-13 20:48:09','root@localhost','productos','INSERCION'),(76,'2023-03-13 23:14:37','root@localhost','productos','ELIMINAR'),(77,'2023-03-13 23:15:13','root@localhost','productos','INSERCION'),(78,'2023-03-14 00:04:27','root@localhost','productos','ELIMINAR'),(79,'2023-03-14 00:04:30','root@localhost','productos','ELIMINAR'),(80,'2023-03-14 00:05:18','root@localhost','productos','INSERCION'),(81,'2023-03-14 00:05:58','root@localhost','productos','INSERCION'),(82,'2023-03-14 00:07:09','root@localhost','productos','ELIMINAR'),(83,'2023-03-14 00:07:12','root@localhost','productos','ELIMINAR'),(84,'2023-03-14 00:23:01','root@localhost','productos','INSERCION'),(85,'2023-03-14 00:23:25','root@localhost','productos','ACTUALIZACION'),(86,'2023-03-14 00:32:03','root@localhost','productos','ELIMINAR'),(87,'2023-03-14 02:46:14','root@localhost','productos','INSERCION'),(88,'2023-03-14 02:46:50','root@localhost','productos','INSERCION'),(89,'2023-03-14 02:47:11','root@localhost','productos','INSERCION'),(90,'2023-03-14 02:48:13','root@localhost','productos','ACTUALIZACION'),(91,'2023-03-14 02:48:20','root@localhost','productos','ACTUALIZACION'),(92,'2023-03-14 02:48:21','root@localhost','productos','ACTUALIZACION'),(93,'2023-03-14 04:01:35','root@localhost','productos','ACTUALIZACION'),(94,'2023-03-14 04:01:38','root@localhost','productos','ACTUALIZACION'),(95,'2023-03-14 04:01:40','root@localhost','productos','ACTUALIZACION'),(96,'2023-03-14 04:02:54','root@localhost','productos','ACTUALIZACION'),(97,'2023-03-14 04:21:15','root@localhost','productos','ACTUALIZACION'),(98,'2023-03-14 04:21:22','root@localhost','productos','ACTUALIZACION'),(99,'2023-03-14 04:22:00','root@localhost','productos','ACTUALIZACION'),(100,'2023-03-14 04:22:07','root@localhost','productos','ACTUALIZACION'),(101,'2023-03-14 04:22:14','root@localhost','productos','ACTUALIZACION'),(102,'2023-03-15 01:07:44','root@localhost','productos','INSERCION'),(103,'2023-03-15 01:12:16','root@localhost','productos','ACTUALIZACION'),(104,'2023-03-15 01:16:37','root@localhost','productos','INSERCION'),(105,'2023-03-15 01:44:59','root@localhost','productos','ACTUALIZACION'),(106,'2023-03-15 01:49:35','root@localhost','productos','INSERCION'),(107,'2023-03-15 01:53:28','root@localhost','proveedores','ACTUALIZACION'),(108,'2023-03-15 01:57:34','root@localhost','proveedores','INSERCION'),(109,'2023-03-15 01:59:05','root@localhost','productos','INSERCION'),(110,'2023-03-15 02:05:42','root@localhost','proveedores','INSERCION'),(111,'2023-03-15 02:06:42','root@localhost','productos','INSERCION'),(112,'2023-03-15 02:08:32','root@localhost','proveedores','INSERCION'),(113,'2023-03-15 02:09:21','root@localhost','productos','INSERCION'),(114,'2023-03-15 02:11:09','root@localhost','proveedores','INSERCION'),(115,'2023-03-15 02:12:26','root@localhost','productos','INSERCION'),(116,'2023-03-15 02:13:36','root@localhost','productos','ACTUALIZACION'),(117,'2023-03-15 03:11:25','root@localhost','productos','ACTUALIZACION'),(118,'2023-03-15 04:49:39','root@localhost','productos','INSERCION'),(119,'2023-03-15 05:21:42','root@localhost','productos','INSERCION'),(120,'2023-03-15 05:25:29','root@localhost','productos','ACTUALIZACION'),(121,'2023-03-15 05:25:47','root@localhost','productos','ACTUALIZACION'),(122,'2023-03-15 05:26:40','root@localhost','productos','INSERCION'),(123,'2023-03-15 05:27:41','root@localhost','productos','INSERCION'),(124,'2023-03-15 05:37:25','root@localhost','productos','INSERCION'),(125,'2023-03-15 05:38:44','root@localhost','productos','INSERCION'),(126,'2023-03-15 05:39:21','root@localhost','productos','INSERCION'),(127,'2023-03-15 05:43:09','root@localhost','productos','ACTUALIZACION'),(128,'2023-03-15 05:44:36','root@localhost','productos','INSERCION'),(129,'2023-03-15 05:46:12','root@localhost','productos','ACTUALIZACION'),(130,'2023-03-15 05:46:23','root@localhost','productos','ACTUALIZACION'),(131,'2023-03-15 05:47:01','root@localhost','productos','INSERCION'),(132,'2023-03-15 05:47:16','root@localhost','productos','ACTUALIZACION'),(133,'2023-03-15 05:47:40','root@localhost','productos','INSERCION'),(134,'2023-03-15 21:10:18','root@localhost','proveedores','INSERCION'),(135,'2023-03-15 21:10:25','root@localhost','proveedores','ELIMINAR'),(136,'2023-03-15 21:16:11','root@localhost','productos','INSERCION'),(137,'2023-03-15 21:16:41','root@localhost','productos','INSERCION'),(138,'2023-03-15 21:19:01','root@localhost','productos','ELIMINAR'),(139,'2023-03-15 22:03:27','root@localhost','productos','ELIMINAR'),(140,'2023-03-16 02:29:19','root@localhost','productos','ACTUALIZACION'),(141,'2023-03-16 02:29:40','root@localhost','productos','ACTUALIZACION'),(142,'2023-03-16 02:30:38','root@localhost','productos','ACTUALIZACION'),(143,'2023-03-16 02:35:09','root@localhost','productos','ACTUALIZACION'),(144,'2023-03-16 02:35:54','root@localhost','productos','ACTUALIZACION'),(145,'2023-03-16 17:52:16','root@localhost','clientes','ELIMINAR'),(146,'2023-03-16 21:57:11','root@localhost','clientes','ELIMINAR'),(147,'2023-03-16 22:08:18','root@localhost','proveedores','ELIMINAR'),(148,'2023-03-16 22:20:30','root@localhost','productos','ELIMINAR'),(149,'2023-03-16 22:23:36','root@localhost','productos','ELIMINAR'),(150,'2023-03-16 22:25:20','root@localhost','productos','ELIMINAR'),(151,'2023-03-16 22:25:33','root@localhost','productos','ACTUALIZACION'),(152,'2023-03-16 22:25:47','root@localhost','productos','ACTUALIZACION'),(153,'2023-03-16 22:25:52','root@localhost','productos','ACTUALIZACION'),(154,'2023-03-16 22:26:04','root@localhost','productos','ACTUALIZACION'),(155,'2023-03-16 22:26:16','root@localhost','productos','ACTUALIZACION'),(156,'2023-03-16 22:26:22','root@localhost','productos','ACTUALIZACION'),(157,'2023-03-16 22:29:01','root@localhost','productos','ACTUALIZACION'),(158,'2023-03-16 22:29:12','root@localhost','productos','ACTUALIZACION'),(159,'2023-03-16 22:29:17','root@localhost','productos','ACTUALIZACION'),(160,'2023-03-16 22:29:18','root@localhost','productos','ACTUALIZACION'),(161,'2023-03-16 22:29:23','root@localhost','productos','ACTUALIZACION'),(162,'2023-03-16 22:34:56','root@localhost','productos','ACTUALIZACION'),(163,'2023-03-16 22:34:58','root@localhost','productos','ACTUALIZACION'),(164,'2023-03-16 22:35:12','root@localhost','productos','ACTUALIZACION'),(165,'2023-03-16 22:35:13','root@localhost','productos','ACTUALIZACION'),(166,'2023-03-16 22:35:53','root@localhost','productos','ACTUALIZACION'),(167,'2023-03-16 22:35:55','root@localhost','productos','ACTUALIZACION'),(168,'2023-03-16 22:35:58','root@localhost','productos','ACTUALIZACION'),(169,'2023-03-16 22:39:04','root@localhost','productos','ACTUALIZACION'),(170,'2023-03-16 22:39:24','root@localhost','productos','ACTUALIZACION'),(171,'2023-03-16 22:39:38','root@localhost','productos','ACTUALIZACION'),(172,'2023-03-16 22:39:52','root@localhost','productos','ACTUALIZACION'),(173,'2023-03-16 22:40:19','root@localhost','productos','ACTUALIZACION'),(174,'2023-03-16 22:41:45','root@localhost','productos','ACTUALIZACION'),(175,'2023-03-16 22:41:50','root@localhost','productos','ACTUALIZACION'),(176,'2023-03-16 22:42:09','root@localhost','productos','ACTUALIZACION'),(177,'2023-03-16 22:42:20','root@localhost','productos','ACTUALIZACION'),(178,'2023-03-16 22:42:38','root@localhost','productos','ACTUALIZACION'),(179,'2023-03-16 22:42:49','root@localhost','productos','ACTUALIZACION'),(180,'2023-03-16 22:44:46','root@localhost','productos','ACTUALIZACION'),(181,'2023-03-16 22:44:54','root@localhost','productos','ACTUALIZACION'),(182,'2023-03-16 22:45:04','root@localhost','productos','ACTUALIZACION'),(183,'2023-03-16 22:48:55','root@localhost','productos','ACTUALIZACION'),(184,'2023-03-16 22:48:56','root@localhost','productos','ACTUALIZACION'),(185,'2023-03-16 22:48:57','root@localhost','productos','ACTUALIZACION'),(186,'2023-03-16 22:48:57','root@localhost','productos','ACTUALIZACION'),(187,'2023-03-16 22:48:57','root@localhost','productos','ACTUALIZACION'),(188,'2023-03-16 22:48:58','root@localhost','productos','ACTUALIZACION'),(189,'2023-03-16 22:48:59','root@localhost','productos','ACTUALIZACION'),(190,'2023-03-16 22:48:59','root@localhost','productos','ACTUALIZACION'),(191,'2023-03-16 22:48:59','root@localhost','productos','ACTUALIZACION'),(192,'2023-03-16 22:49:00','root@localhost','productos','ACTUALIZACION'),(193,'2023-03-16 22:49:00','root@localhost','productos','ACTUALIZACION'),(194,'2023-03-16 22:49:01','root@localhost','productos','ACTUALIZACION'),(195,'2023-03-16 22:49:01','root@localhost','productos','ACTUALIZACION'),(196,'2023-03-16 22:49:01','root@localhost','productos','ACTUALIZACION'),(197,'2023-03-16 22:49:02','root@localhost','productos','ACTUALIZACION'),(198,'2023-03-16 22:49:03','root@localhost','productos','ACTUALIZACION'),(199,'2023-03-16 22:49:07','root@localhost','productos','ACTUALIZACION'),(200,'2023-03-16 22:49:17','root@localhost','productos','ACTUALIZACION'),(201,'2023-03-16 22:49:29','root@localhost','productos','ACTUALIZACION'),(202,'2023-03-16 23:38:05','root@localhost','clientes','INSERCION'),(203,'2023-03-16 23:39:04','root@localhost','clientes','INSERCION'),(204,'2023-03-16 23:40:02','root@localhost','clientes','INSERCION'),(205,'2023-03-16 23:40:51','root@localhost','clientes','INSERCION'),(206,'2023-03-16 23:44:05','root@localhost','clientes','INSERCION'),(207,'2023-03-17 02:13:34','root@localhost','clientes','ACTUALIZACION'),(208,'2023-03-17 06:14:18','root@localhost','usuarios','ACTUALIZACION'),(209,'2023-03-17 06:14:18','root@localhost','clientes','ACTUALIZACION'),(210,'2023-03-17 06:14:49','root@localhost','usuarios','ACTUALIZACION'),(211,'2023-03-17 06:14:49','root@localhost','clientes','ACTUALIZACION'),(212,'2023-03-17 06:18:02','root@localhost','usuarios','ACTUALIZACION'),(213,'2023-03-17 06:18:02','root@localhost','clientes','ACTUALIZACION'),(214,'2023-03-17 22:33:06','root@localhost','usuarios','INSERCION'),(215,'2023-03-17 22:33:06','root@localhost','clientes','INSERCION'),(216,'2023-03-17 23:10:08','root@localhost','usuarios','INSERCION'),(217,'2023-03-17 23:10:08','root@localhost','clientes','INSERCION'),(218,'2023-03-17 23:16:12','root@localhost','usuarios','INSERCION'),(219,'2023-03-17 23:16:12','root@localhost','clientes','INSERCION'),(220,'2023-03-17 23:16:12','root@localhost','clientes','INSERCION'),(221,'2023-03-17 23:34:14','root@localhost','usuarios','INSERCION'),(222,'2023-03-17 23:34:14','root@localhost','clientes','INSERCION'),(223,'2023-03-17 23:34:14','root@localhost','clientes','INSERCION'),(224,'2023-03-17 23:36:42','root@localhost','usuarios','INSERCION'),(225,'2023-03-17 23:36:42','root@localhost','clientes','INSERCION'),(226,'2023-03-17 23:36:42','root@localhost','clientes','INSERCION'),(227,'2023-03-17 23:38:53','root@localhost','usuarios','INSERCION'),(228,'2023-03-17 23:38:53','root@localhost','clientes','INSERCION'),(229,'2023-03-17 23:38:53','root@localhost','clientes','INSERCION'),(230,'2023-03-17 23:59:08','root@localhost','usuarios','ELIMINAR'),(231,'2023-03-17 23:59:08','root@localhost','clientes','ELIMINAR'),(232,'2023-03-17 23:59:39','root@localhost','usuarios','ELIMINAR'),(233,'2023-03-17 23:59:39','root@localhost','clientes','ELIMINAR'),(234,'2023-03-17 23:59:50','root@localhost','usuarios','ELIMINAR'),(235,'2023-03-17 23:59:50','root@localhost','clientes','ELIMINAR'),(236,'2023-03-18 00:02:27','root@localhost','clientes','ELIMINAR'),(237,'2023-03-18 00:02:45','root@localhost','clientes','ELIMINAR'),(238,'2023-03-18 00:02:48','root@localhost','clientes','ELIMINAR'),(239,'2023-03-18 00:02:51','root@localhost','clientes','ELIMINAR'),(240,'2023-03-18 00:04:07','root@localhost','usuarios','ELIMINAR'),(241,'2023-03-18 00:04:07','root@localhost','clientes','ELIMINAR'),(242,'2023-03-18 00:04:21','root@localhost','usuarios','ELIMINAR'),(243,'2023-03-18 00:04:21','root@localhost','clientes','ELIMINAR'),(244,'2023-03-18 00:04:23','root@localhost','usuarios','ELIMINAR'),(245,'2023-03-18 00:04:23','root@localhost','clientes','ELIMINAR'),(246,'2023-03-18 00:04:26','root@localhost','usuarios','ELIMINAR'),(247,'2023-03-18 00:04:26','root@localhost','clientes','ELIMINAR'),(248,'2023-03-18 00:07:38','root@localhost','usuarios','INSERCION'),(249,'2023-03-18 00:07:38','root@localhost','clientes','INSERCION'),(250,'2023-03-18 00:07:38','root@localhost','clientes','INSERCION'),(251,'2023-03-18 00:55:49','root@localhost','usuarios','INSERCION'),(252,'2023-03-18 00:55:49','root@localhost','clientes','INSERCION'),(253,'2023-03-18 00:55:49','root@localhost','clientes','INSERCION'),(254,'2023-03-18 02:36:05','root@localhost','usuarios','INSERCION'),(255,'2023-03-18 02:36:05','root@localhost','clientes','INSERCION'),(256,'2023-03-18 02:36:05','root@localhost','clientes','INSERCION'),(257,'2023-03-18 03:20:27','root@localhost','usuarios','INSERCION'),(258,'2023-03-18 03:20:27','root@localhost','clientes','INSERCION'),(259,'2023-03-18 03:20:27','root@localhost','clientes','INSERCION'),(260,'2023-03-18 07:40:56','root@localhost','usuarios','ACTUALIZACION'),(261,'2023-03-18 07:40:56','root@localhost','clientes','ACTUALIZACION'),(262,'2023-03-18 07:45:31','root@localhost','usuarios','ACTUALIZACION'),(263,'2023-03-18 07:45:31','root@localhost','clientes','ACTUALIZACION'),(264,'2023-03-18 07:45:31','root@localhost','empleados','INSERCION'),(265,'2023-03-19 01:46:31','root@localhost','clientes','ACTUALIZACION'),(266,'2023-03-19 01:46:46','root@localhost','clientes','ACTUALIZACION'),(267,'2023-03-19 03:21:42','root@localhost','productos','ACTUALIZACION'),(268,'2023-03-19 03:21:46','root@localhost','productos','ACTUALIZACION'),(269,'2023-03-19 03:22:02','root@localhost','productos','ACTUALIZACION'),(270,'2023-03-19 03:22:06','root@localhost','productos','ACTUALIZACION'),(271,'2023-03-19 03:22:07','root@localhost','productos','ACTUALIZACION'),(272,'2023-03-19 03:22:07','root@localhost','productos','ACTUALIZACION'),(273,'2023-03-19 03:22:08','root@localhost','productos','ACTUALIZACION'),(274,'2023-03-19 03:22:08','root@localhost','productos','ACTUALIZACION'),(275,'2023-03-19 03:22:08','root@localhost','productos','ACTUALIZACION'),(276,'2023-03-19 03:22:09','root@localhost','productos','ACTUALIZACION'),(277,'2023-03-19 03:22:09','root@localhost','productos','ACTUALIZACION'),(278,'2023-03-19 03:22:09','root@localhost','productos','ACTUALIZACION'),(279,'2023-03-19 03:22:09','root@localhost','productos','ACTUALIZACION'),(280,'2023-03-19 03:22:09','root@localhost','productos','ACTUALIZACION'),(281,'2023-03-19 03:27:01','root@localhost','productos','ACTUALIZACION'),(282,'2023-03-19 03:27:01','root@localhost','productos','ACTUALIZACION'),(283,'2023-03-19 03:27:05','root@localhost','productos','ACTUALIZACION'),(284,'2023-03-19 03:27:06','root@localhost','productos','ACTUALIZACION'),(285,'2023-03-19 03:27:07','root@localhost','productos','ACTUALIZACION'),(286,'2023-03-19 03:27:11','root@localhost','productos','ACTUALIZACION'),(287,'2023-03-19 03:28:18','root@localhost','productos','ACTUALIZACION'),(288,'2023-03-19 03:28:20','root@localhost','productos','ACTUALIZACION'),(289,'2023-03-19 03:28:21','root@localhost','productos','ACTUALIZACION'),(290,'2023-03-19 03:28:22','root@localhost','productos','ACTUALIZACION'),(291,'2023-03-19 03:28:22','root@localhost','productos','ACTUALIZACION'),(292,'2023-03-19 03:28:23','root@localhost','productos','ACTUALIZACION'),(293,'2023-03-19 03:28:23','root@localhost','productos','ACTUALIZACION'),(294,'2023-03-19 03:28:24','root@localhost','productos','ACTUALIZACION'),(295,'2023-03-19 03:28:26','root@localhost','productos','ACTUALIZACION'),(296,'2023-03-19 03:28:27','root@localhost','productos','ACTUALIZACION'),(297,'2023-03-19 03:28:27','root@localhost','productos','ACTUALIZACION'),(298,'2023-03-19 03:28:28','root@localhost','productos','ACTUALIZACION'),(299,'2023-03-19 03:31:19','root@localhost','productos','ACTUALIZACION'),(300,'2023-03-19 03:31:22','root@localhost','productos','ACTUALIZACION'),(301,'2023-03-19 03:31:25','root@localhost','productos','ACTUALIZACION'),(302,'2023-03-19 03:31:29','root@localhost','productos','ACTUALIZACION'),(303,'2023-03-19 04:13:10','root@localhost','clientes','ACTUALIZACION'),(304,'2023-03-19 04:13:19','root@localhost','clientes','ACTUALIZACION'),(305,'2023-03-19 04:13:36','root@localhost','clientes','ACTUALIZACION'),(306,'2023-03-19 04:29:22','root@localhost','clientes','ELIMINAR'),(307,'2023-03-19 04:34:03','root@localhost','clientes','ELIMINAR'),(308,'2023-03-19 04:51:45','root@localhost','clientes','INSERCION'),(309,'2023-03-19 04:55:23','root@localhost','proveedores','INSERCION'),(310,'2023-03-19 04:59:29','root@localhost','proveedores','ELIMINAR'),(311,'2023-03-19 05:01:09','root@localhost','proveedores','ACTUALIZACION'),(312,'2023-03-19 05:01:17','root@localhost','proveedores','ACTUALIZACION'),(313,'2023-03-19 05:05:00','root@localhost','proveedores','ACTUALIZACION'),(314,'2023-03-19 05:10:58','root@localhost','proveedores','ACTUALIZACION'),(315,'2023-03-19 05:11:16','root@localhost','proveedores','ACTUALIZACION'),(316,'2023-03-19 05:13:06','root@localhost','productos','ELIMINAR'),(317,'2023-03-19 05:20:30','root@localhost','productos','ACTUALIZACION'),(318,'2023-03-19 05:21:07','root@localhost','productos','INSERCION'),(319,'2023-03-19 05:37:32','root@localhost','proveedores','ACTUALIZACION'),(320,'2023-03-19 05:39:10','root@localhost','proveedores','ACTUALIZACION'),(321,'2023-03-19 05:40:58','root@localhost','proveedores','ACTUALIZACION'),(322,'2023-03-19 06:27:06','root@localhost','clientes','ELIMINAR'),(323,'2023-03-19 06:27:32','root@localhost','clientes','ELIMINAR'),(324,'2023-03-19 06:27:38','root@localhost','clientes','ELIMINAR'),(325,'2023-03-19 06:27:42','root@localhost','clientes','ELIMINAR'),(326,'2023-03-19 06:46:03','root@localhost','productos','ACTUALIZACION'),(327,'2023-03-19 06:46:15','root@localhost','productos','ACTUALIZACION'),(328,'2023-03-19 06:46:29','root@localhost','productos','ACTUALIZACION'),(329,'2023-03-19 06:46:32','root@localhost','productos','ACTUALIZACION'),(330,'2023-03-19 06:53:26','root@localhost','productos','ACTUALIZACION'),(331,'2023-03-19 06:53:33','root@localhost','productos','ACTUALIZACION'),(332,'2023-03-19 06:53:44','root@localhost','productos','ACTUALIZACION'),(333,'2023-03-19 06:53:48','root@localhost','productos','ACTUALIZACION'),(334,'2023-03-19 06:57:30','root@localhost','productos','ACTUALIZACION'),(335,'2023-03-19 07:10:10','root@localhost','productos','ACTUALIZACION'),(336,'2023-03-21 02:40:07','root@localhost','productos','ACTUALIZACION'),(337,'2023-03-21 02:40:15','root@localhost','productos','ACTUALIZACION'),(338,'2023-03-21 06:17:08','root@localhost','productos','ACTUALIZACION'),(339,'2023-03-24 18:49:34','root@localhost','productos','ACTUALIZACION'),(340,'2023-03-24 18:49:37','root@localhost','productos','ACTUALIZACION'),(341,'2023-03-24 19:13:42','root@localhost','productos','ACTUALIZACION'),(342,'2023-03-24 19:13:50','root@localhost','productos','ACTUALIZACION'),(343,'2023-03-24 19:14:17','root@localhost','productos','ACTUALIZACION'),(344,'2023-03-24 19:14:23','root@localhost','productos','ACTUALIZACION'),(345,'2023-03-25 17:08:47','root@localhost','productos','ACTUALIZACION'),(346,'2023-03-25 17:08:50','root@localhost','productos','ACTUALIZACION'),(347,'2023-03-25 17:09:01','root@localhost','productos','ACTUALIZACION'),(348,'2023-03-25 17:12:18','root@localhost','productos','ACTUALIZACION'),(349,'2023-03-25 17:12:19','root@localhost','productos','ACTUALIZACION'),(350,'2023-03-25 17:12:23','root@localhost','productos','ACTUALIZACION'),(351,'2023-03-25 17:16:06','root@localhost','ventas','INSERCION'),(352,'2023-03-25 19:10:48','root@localhost','productos','ACTUALIZACION'),(353,'2023-03-25 19:10:50','root@localhost','productos','ACTUALIZACION'),(354,'2023-03-25 19:11:00','root@localhost','productos','ACTUALIZACION'),(355,'2023-03-25 19:11:06','root@localhost','productos','ACTUALIZACION'),(356,'2023-03-25 19:11:10','root@localhost','productos','ACTUALIZACION'),(357,'2023-03-25 19:11:22','root@localhost','ventas','INSERCION'),(358,'2023-03-27 18:01:42','root@localhost','productos','ACTUALIZACION'),(359,'2023-03-27 18:01:49','root@localhost','productos','ACTUALIZACION'),(360,'2023-03-27 18:02:02','root@localhost','productos','ACTUALIZACION'),(361,'2023-03-27 18:02:12','root@localhost','productos','ACTUALIZACION'),(362,'2023-03-27 18:03:07','root@localhost','productos','ACTUALIZACION'),(363,'2023-03-27 18:03:20','root@localhost','ventas','INSERCION'),(364,'2023-03-27 18:06:30','root@localhost','productos','ACTUALIZACION'),(365,'2023-03-27 18:06:35','root@localhost','productos','ACTUALIZACION'),(366,'2023-03-27 18:06:46','root@localhost','productos','ACTUALIZACION'),(367,'2023-03-27 18:06:53','root@localhost','productos','ACTUALIZACION'),(368,'2023-03-27 18:06:59','root@localhost','productos','ACTUALIZACION'),(369,'2023-03-27 18:07:13','root@localhost','productos','ACTUALIZACION'),(370,'2023-03-27 18:07:31','root@localhost','ventas','INSERCION'),(371,'2023-03-27 18:09:01','root@localhost','ventas','INSERCION'),(372,'2023-03-27 18:10:17','root@localhost','ventas','INSERCION'),(373,'2023-03-27 20:38:05','root@localhost','ventas','INSERCION'),(374,'2023-03-27 20:45:18','root@localhost','ventas','INSERCION'),(375,'2023-03-27 21:28:46','root@localhost','productos','ACTUALIZACION'),(376,'2023-03-27 21:28:58','root@localhost','productos','ACTUALIZACION'),(377,'2023-03-27 21:38:52','root@localhost','productos','ACTUALIZACION'),(378,'2023-03-27 21:38:55','root@localhost','productos','ACTUALIZACION'),(379,'2023-03-27 22:08:44','root@localhost','productos','ACTUALIZACION'),(380,'2023-03-27 22:08:45','root@localhost','productos','ACTUALIZACION'),(381,'2023-03-27 22:08:59','root@localhost','productos','ACTUALIZACION'),(382,'2023-03-27 22:09:13','root@localhost','productos','ACTUALIZACION'),(383,'2023-03-27 22:09:23','root@localhost','productos','ACTUALIZACION'),(384,'2023-03-27 22:09:36','root@localhost','ventas','INSERCION'),(385,'2023-03-28 01:59:13','root@localhost','productos','ACTUALIZACION'),(386,'2023-03-28 01:59:15','root@localhost','productos','ACTUALIZACION'),(387,'2023-03-28 01:59:25','root@localhost','productos','ACTUALIZACION'),(388,'2023-03-28 01:59:32','root@localhost','productos','ACTUALIZACION'),(389,'2023-03-28 01:59:45','root@localhost','ventas','INSERCION'),(390,'2023-03-28 04:57:56','root@localhost','productos','ACTUALIZACION'),(391,'2023-03-28 04:57:59','root@localhost','productos','ACTUALIZACION'),(392,'2023-03-28 04:58:12','root@localhost','productos','ACTUALIZACION'),(393,'2023-03-28 04:59:50','root@localhost','ventas','INSERCION'),(394,'2023-03-28 05:00:50','root@localhost','productos','ACTUALIZACION'),(395,'2023-03-28 05:00:52','root@localhost','productos','ACTUALIZACION'),(396,'2023-03-28 05:22:22','root@localhost','productos','ACTUALIZACION'),(397,'2023-03-28 05:22:23','root@localhost','productos','ACTUALIZACION'),(398,'2023-03-28 05:22:28','root@localhost','productos','ACTUALIZACION'),(399,'2023-03-28 05:22:52','root@localhost','productos','ACTUALIZACION'),(400,'2023-03-28 05:22:52','root@localhost','productos','ACTUALIZACION'),(401,'2023-03-28 05:23:06','root@localhost','productos','ACTUALIZACION'),(402,'2023-03-29 01:20:23','root@localhost','productos','ACTUALIZACION'),(403,'2023-03-29 01:20:49','root@localhost','productos','ACTUALIZACION'),(404,'2023-03-29 01:21:15','root@localhost','ventas','INSERCION'),(405,'2023-03-29 01:24:07','root@localhost','productos','ACTUALIZACION'),(406,'2023-03-29 01:24:22','root@localhost','ventas','INSERCION'),(407,'2023-03-29 01:49:20','root@localhost','productos','ACTUALIZACION'),(408,'2023-03-29 01:49:30','root@localhost','ventas','INSERCION'),(409,'2023-03-29 01:59:55','root@localhost','productos','ACTUALIZACION'),(410,'2023-03-29 02:00:08','root@localhost','ventas','INSERCION'),(411,'2023-03-29 02:01:49','root@localhost','productos','ACTUALIZACION'),(412,'2023-03-29 02:01:59','root@localhost','ventas','INSERCION'),(413,'2023-03-29 02:04:02','root@localhost','productos','ACTUALIZACION'),(414,'2023-03-29 02:04:15','root@localhost','ventas','INSERCION'),(415,'2023-03-29 02:06:06','root@localhost','productos','ACTUALIZACION'),(416,'2023-03-29 02:06:09','root@localhost','ventas','INSERCION'),(417,'2023-03-29 02:09:31','root@localhost','productos','ACTUALIZACION'),(418,'2023-03-29 02:09:35','root@localhost','ventas','INSERCION'),(419,'2023-03-29 02:15:52','root@localhost','productos','ACTUALIZACION'),(420,'2023-03-29 02:15:56','root@localhost','ventas','INSERCION'),(421,'2023-03-29 02:17:06','root@localhost','productos','ACTUALIZACION'),(422,'2023-03-29 02:17:10','root@localhost','ventas','INSERCION'),(423,'2023-03-29 02:18:46','root@localhost','productos','ACTUALIZACION'),(424,'2023-03-29 02:18:50','root@localhost','ventas','INSERCION'),(425,'2023-03-29 02:23:17','root@localhost','productos','ACTUALIZACION'),(426,'2023-03-29 02:23:23','root@localhost','ventas','INSERCION'),(427,'2023-03-29 02:49:37','root@localhost','productos','ACTUALIZACION'),(428,'2023-03-29 02:49:55','root@localhost','productos','ACTUALIZACION'),(429,'2023-03-29 02:50:07','root@localhost','productos','ACTUALIZACION'),(430,'2023-03-29 02:50:13','root@localhost','productos','ACTUALIZACION'),(431,'2023-03-29 02:50:24','root@localhost','productos','ACTUALIZACION'),(432,'2023-03-29 02:50:31','root@localhost','productos','ACTUALIZACION'),(433,'2023-03-29 02:50:43','root@localhost','productos','ACTUALIZACION'),(434,'2023-03-29 02:50:55','root@localhost','ventas','INSERCION'),(435,'2023-03-29 03:34:37','root@localhost','productos','ACTUALIZACION'),(436,'2023-03-29 03:34:47','root@localhost','ventas','INSERCION'),(437,'2023-03-29 04:24:31','root@localhost','productos','ACTUALIZACION'),(438,'2023-03-29 04:24:37','root@localhost','productos','ACTUALIZACION'),(439,'2023-03-29 04:24:43','root@localhost','productos','ACTUALIZACION'),(440,'2023-03-29 04:24:52','root@localhost','productos','ACTUALIZACION'),(441,'2023-03-29 04:25:00','root@localhost','productos','ACTUALIZACION'),(442,'2023-03-29 04:25:07','root@localhost','productos','ACTUALIZACION'),(443,'2023-03-29 04:25:16','root@localhost','productos','ACTUALIZACION'),(444,'2023-03-29 04:25:26','root@localhost','productos','ACTUALIZACION'),(445,'2023-03-29 04:25:48','root@localhost','ventas','INSERCION'),(446,'2023-03-29 04:49:14','root@localhost','productos','ACTUALIZACION'),(447,'2023-03-29 04:49:24','root@localhost','ventas','INSERCION'),(448,'2023-03-29 04:52:38','root@localhost','productos','ACTUALIZACION'),(449,'2023-03-29 04:52:43','root@localhost','ventas','INSERCION'),(450,'2023-03-29 04:57:45','root@localhost','productos','ACTUALIZACION'),(451,'2023-03-29 04:57:51','root@localhost','ventas','INSERCION'),(452,'2023-03-29 05:00:42','root@localhost','productos','ACTUALIZACION'),(453,'2023-03-29 05:00:50','root@localhost','productos','ACTUALIZACION'),(454,'2023-03-29 05:00:54','root@localhost','productos','ACTUALIZACION'),(455,'2023-03-29 05:01:02','root@localhost','ventas','INSERCION'),(456,'2023-03-29 05:09:33','root@localhost','productos','ACTUALIZACION'),(457,'2023-03-29 05:09:43','root@localhost','ventas','INSERCION'),(458,'2023-03-29 05:24:48','root@localhost','productos','ACTUALIZACION'),(459,'2023-03-29 05:24:57','root@localhost','productos','ACTUALIZACION'),(460,'2023-03-29 05:25:05','root@localhost','productos','ACTUALIZACION'),(461,'2023-03-29 05:25:09','root@localhost','ventas','INSERCION'),(462,'2023-03-29 05:30:25','root@localhost','productos','ACTUALIZACION'),(463,'2023-03-29 05:30:31','root@localhost','productos','ACTUALIZACION'),(464,'2023-03-29 05:30:43','root@localhost','productos','ACTUALIZACION'),(465,'2023-03-29 05:31:18','root@localhost','ventas','INSERCION'),(466,'2023-03-29 20:42:21','root@localhost','productos','ACTUALIZACION'),(467,'2023-03-29 20:44:17','root@localhost','ventas','INSERCION'),(468,'2023-03-30 01:04:30','root@localhost','productos','ACTUALIZACION'),(469,'2023-03-30 04:36:55','root@localhost','usuarios','ACTUALIZACION'),(470,'2023-03-30 04:36:55','root@localhost','clientes','ACTUALIZACION'),(471,'2023-03-31 00:27:11','root@localhost','usuarios','ACTUALIZACION'),(472,'2023-03-31 00:27:11','root@localhost','clientes','ACTUALIZACION'),(473,'2023-03-31 00:28:48','root@localhost','usuarios','ACTUALIZACION'),(474,'2023-03-31 00:28:48','root@localhost','clientes','ACTUALIZACION'),(475,'2023-03-31 00:29:00','root@localhost','usuarios','ACTUALIZACION'),(476,'2023-03-31 00:29:00','root@localhost','clientes','ACTUALIZACION'),(477,'2023-03-31 00:29:32','root@localhost','usuarios','ACTUALIZACION'),(478,'2023-03-31 00:29:32','root@localhost','clientes','ACTUALIZACION'),(479,'2023-03-31 00:29:41','root@localhost','usuarios','ACTUALIZACION'),(480,'2023-03-31 00:29:41','root@localhost','clientes','ACTUALIZACION'),(481,'2023-03-31 00:30:08','root@localhost','usuarios','ACTUALIZACION'),(482,'2023-03-31 00:30:08','root@localhost','clientes','ACTUALIZACION'),(483,'2023-03-31 01:35:39','root@localhost','usuarios','ACTUALIZACION'),(484,'2023-03-31 01:35:39','root@localhost','clientes','ACTUALIZACION'),(485,'2023-03-31 01:36:33','root@localhost','usuarios','ACTUALIZACION'),(486,'2023-03-31 01:36:33','root@localhost','clientes','ACTUALIZACION'),(487,'2023-03-31 01:46:40','root@localhost','usuarios','ACTUALIZACION'),(488,'2023-03-31 01:46:40','root@localhost','clientes','ACTUALIZACION'),(489,'2023-03-31 01:46:40','root@localhost','empleados','INSERCION'),(490,'2023-03-31 04:03:29','root@localhost','usuarios','ACTUALIZACION'),(491,'2023-03-31 04:03:29','root@localhost','clientes','ACTUALIZACION'),(492,'2023-03-31 04:16:58','root@localhost','empleados','ELIMINAR'),(493,'2023-03-31 04:36:51','root@localhost','productos','ACTUALIZACION'),(494,'2023-03-31 04:36:57','root@localhost','productos','ACTUALIZACION'),(495,'2023-03-31 04:37:00','root@localhost','productos','ACTUALIZACION'),(496,'2023-03-31 04:41:42','root@localhost','productos','ACTUALIZACION'),(497,'2023-03-31 04:41:48','root@localhost','productos','ACTUALIZACION'),(498,'2023-03-31 04:41:58','root@localhost','productos','ACTUALIZACION'),(499,'2023-03-31 04:43:50','root@localhost','productos','ACTUALIZACION'),(500,'2023-03-31 04:43:56','root@localhost','productos','ACTUALIZACION'),(501,'2023-03-31 04:44:55','root@localhost','productos','ACTUALIZACION'),(502,'2023-03-31 04:45:05','root@localhost','productos','ACTUALIZACION'),(503,'2023-04-02 17:20:45','root@localhost','usuarios','ACTUALIZACION'),(504,'2023-04-02 17:20:45','root@localhost','clientes','ACTUALIZACION'),(505,'2023-04-02 18:06:07','root@localhost','productos','ACTUALIZACION'),(506,'2023-04-02 18:06:13','root@localhost','productos','ACTUALIZACION'),(507,'2023-04-02 18:06:19','root@localhost','productos','ACTUALIZACION'),(508,'2023-04-02 18:06:32','root@localhost','ventas','INSERCION'),(509,'2023-04-04 01:49:33','root@localhost','productos','ACTUALIZACION'),(510,'2023-04-04 01:49:38','root@localhost','productos','ACTUALIZACION'),(511,'2023-04-04 01:49:45','root@localhost','productos','ACTUALIZACION'),(512,'2023-04-04 01:49:53','root@localhost','productos','ACTUALIZACION'),(513,'2023-04-04 01:50:14','root@localhost','ventas','INSERCION'),(514,'2023-04-13 01:47:38','root@localhost','usuarios','INSERCION'),(515,'2023-04-13 01:47:38','root@localhost','clientes','INSERCION'),(516,'2023-04-13 01:47:38','root@localhost','usuarios','INSERCION'),(517,'2023-04-13 01:47:38','root@localhost','clientes','INSERCION'),(518,'2023-04-13 01:47:38','root@localhost','usuarios','INSERCION'),(519,'2023-04-13 01:47:38','root@localhost','clientes','INSERCION'),(520,'2023-04-13 23:18:33','root@localhost','usuarios','ACTUALIZACION'),(521,'2023-04-13 23:18:33','root@localhost','clientes','ACTUALIZACION'),(522,'2023-04-15 04:09:05','root@localhost','usuarios','ACTUALIZACION'),(523,'2023-04-15 04:09:05','root@localhost','clientes','ACTUALIZACION'),(524,'2023-04-15 04:10:12','root@localhost','productos','ACTUALIZACION'),(525,'2023-04-16 00:21:53','root@localhost','empleados','INSERCION'),(526,'2023-04-16 00:26:52','root@localhost','clientes','INSERCION'),(527,'2023-04-16 00:26:53','root@localhost','clientes','INSERCION'),(528,'2023-04-16 00:29:32','root@localhost','clientes','INSERCION'),(529,'2023-04-16 00:29:32','root@localhost','clientes','INSERCION'),(530,'2023-04-16 00:48:06','root@localhost','clientes','ELIMINAR'),(531,'2023-04-16 00:48:06','root@localhost','clientes','ELIMINAR'),(532,'2023-04-16 00:48:10','root@localhost','usuarios','ELIMINAR'),(533,'2023-04-16 00:48:10','root@localhost','clientes','ELIMINAR'),(534,'2023-04-16 00:49:14','root@localhost','clientes','ELIMINAR'),(535,'2023-04-16 00:53:48','root@localhost','usuarios','ACTUALIZACION'),(536,'2023-04-16 00:53:48','root@localhost','clientes','ACTUALIZACION'),(537,'2023-04-16 02:01:54','root@localhost','usuarios','ACTUALIZACION'),(538,'2023-04-16 02:01:54','root@localhost','clientes','ACTUALIZACION'),(539,'2023-04-16 02:14:57','root@localhost','clientes','ELIMINAR'),(540,'2023-04-16 02:14:57','root@localhost','usuarios','ELIMINAR'),(541,'2023-04-16 02:14:57','root@localhost','clientes','ELIMINAR'),(542,'2023-04-16 23:21:31','root@localhost','clientes','INSERCION'),(543,'2023-04-16 23:43:57','root@localhost','usuarios','INSERCION'),(544,'2023-04-16 23:43:57','root@localhost','clientes','INSERCION'),(545,'2023-04-16 23:43:57','root@localhost','clientes','ACTUALIZACION'),(546,'2023-04-17 00:52:38','root@localhost','usuarios','ACTUALIZACION'),(547,'2023-04-17 00:52:38','root@localhost','clientes','ACTUALIZACION'),(548,'2023-04-17 01:43:35','root@localhost','usuarios','ACTUALIZACION'),(549,'2023-04-17 01:43:35','root@localhost','clientes','ACTUALIZACION'),(550,'2023-04-17 01:43:35','root@localhost','empleados','INSERCION'),(551,'2023-04-17 01:52:25','root@localhost','usuarios','ACTUALIZACION'),(552,'2023-04-17 01:52:25','root@localhost','clientes','ACTUALIZACION'),(553,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(554,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(555,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(556,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(557,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(558,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(559,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(560,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(561,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(562,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(563,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(564,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(565,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(566,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(567,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(568,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(569,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(570,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(571,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(572,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(573,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(574,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(575,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(576,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(577,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(578,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(579,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(580,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(581,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(582,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(583,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(584,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(585,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(586,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(587,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(588,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(589,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(590,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(591,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(592,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(593,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(594,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(595,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(596,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(597,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(598,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(599,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(600,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(601,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(602,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(603,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(604,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(605,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(606,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(607,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(608,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(609,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(610,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(611,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(612,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(613,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(614,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(615,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(616,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(617,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(618,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(619,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(620,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(621,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(622,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(623,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(624,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(625,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(626,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(627,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(628,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(629,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(630,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(631,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(632,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(633,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(634,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(635,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(636,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(637,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(638,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(639,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(640,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(641,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(642,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(643,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(644,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(645,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(646,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(647,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(648,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(649,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(650,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(651,'2023-04-17 02:40:45','root@localhost','usuarios','INSERCION'),(652,'2023-04-17 02:40:45','root@localhost','clientes','INSERCION'),(653,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(654,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(655,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(656,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(657,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(658,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(659,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(660,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(661,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(662,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(663,'2023-04-17 02:58:00','root@localhost','clientes','INSERCION'),(664,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(665,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(666,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(667,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(668,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(669,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(670,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(671,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(672,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(673,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(674,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(675,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(676,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(677,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(678,'2023-04-17 03:06:00','root@localhost','clientes','INSERCION'),(679,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(680,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(681,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(682,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(683,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(684,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(685,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(686,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(687,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(688,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(689,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(690,'2023-04-17 03:13:12','root@localhost','clientes','INSERCION'),(691,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(692,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(693,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(694,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(695,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(696,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(697,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(698,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(699,'2023-04-17 03:23:01','root@localhost','clientes','INSERCION'),(700,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(701,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(702,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(703,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(704,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(705,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(706,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(707,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(708,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(709,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(710,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(711,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(712,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(713,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(714,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(715,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(716,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(717,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(718,'2023-04-17 03:33:14','root@localhost','usuarios','INSERCION'),(719,'2023-04-17 03:33:14','root@localhost','clientes','INSERCION'),(720,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(721,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(722,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(723,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(724,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(725,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(726,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(727,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(728,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(729,'2023-04-17 03:37:41','root@localhost','empleados','INSERCION'),(730,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(731,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(732,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(733,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(734,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(735,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(736,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(737,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(738,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(739,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(740,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(741,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(742,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(743,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(744,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(745,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(746,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(747,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(748,'2023-04-17 03:38:44','root@localhost','usuarios','INSERCION'),(749,'2023-04-17 03:38:44','root@localhost','clientes','INSERCION'),(750,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(751,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(752,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(753,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(754,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(755,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(756,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(757,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(758,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(759,'2023-04-17 03:39:28','root@localhost','empleados','INSERCION'),(760,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(761,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(762,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(763,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(764,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(765,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(766,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(767,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(768,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(769,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(770,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(771,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(772,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(773,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(774,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(775,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(776,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(777,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(778,'2023-04-17 03:41:38','root@localhost','usuarios','INSERCION'),(779,'2023-04-17 03:41:38','root@localhost','clientes','INSERCION'),(780,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(781,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(782,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(783,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(784,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(785,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(786,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(787,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(788,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(789,'2023-04-17 03:42:07','root@localhost','empleados','INSERCION'),(790,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(791,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(792,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(793,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(794,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(795,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(796,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(797,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(798,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(799,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(800,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(801,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(802,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(803,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(804,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(805,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(806,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(807,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(808,'2023-04-17 03:44:50','root@localhost','usuarios','INSERCION'),(809,'2023-04-17 03:44:50','root@localhost','clientes','INSERCION'),(810,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(811,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(812,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(813,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(814,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(815,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(816,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(817,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(818,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(819,'2023-04-17 03:45:18','root@localhost','empleados','INSERCION'),(820,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(821,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(822,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(823,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(824,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(825,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(826,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(827,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(828,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(829,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(830,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(831,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(832,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(833,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(834,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(835,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(836,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(837,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(838,'2023-04-17 03:46:22','root@localhost','usuarios','INSERCION'),(839,'2023-04-17 03:46:22','root@localhost','clientes','INSERCION'),(840,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(841,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(842,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(843,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(844,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(845,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(846,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(847,'2023-04-17 04:01:05','root@localhost','empleados','INSERCION'),(848,'2023-04-17 04:01:06','root@localhost','empleados','INSERCION'),(849,'2023-04-17 04:01:06','root@localhost','empleados','INSERCION'),(850,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(851,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(852,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(853,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(854,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(855,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(856,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(857,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(858,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(859,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(860,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(861,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(862,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(863,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(864,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(865,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(866,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(867,'2023-04-17 04:21:49','root@localhost','productos','ELIMINAR'),(868,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(869,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(870,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(871,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(872,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(873,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(874,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(875,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(876,'2023-04-17 04:30:24','root@localhost','proveedores','ELIMINAR'),(877,'2023-04-17 15:15:08','root@localhost','proveedores','INSERCION'),(878,'2023-04-17 15:15:08','root@localhost','proveedores','INSERCION'),(879,'2023-04-17 15:15:08','root@localhost','proveedores','INSERCION'),(880,'2023-04-17 15:15:08','root@localhost','proveedores','INSERCION'),(881,'2023-04-17 15:15:08','root@localhost','proveedores','INSERCION'),(882,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(883,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(884,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(885,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(886,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(887,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(888,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(889,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(890,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(891,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(892,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(893,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(894,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(895,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(896,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(897,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(898,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(899,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(900,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(901,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(902,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(903,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(904,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(905,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(906,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(907,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(908,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(909,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(910,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(911,'2023-04-17 15:15:30','root@localhost','proveedores','INSERCION'),(912,'2023-04-17 15:22:14','root@localhost','productos','INSERCION'),(913,'2023-04-17 15:23:52','root@localhost','productos','INSERCION'),(914,'2023-04-17 15:26:58','root@localhost','productos','ACTUALIZACION'),(915,'2023-04-17 15:37:12','root@localhost','productos','ACTUALIZACION'),(916,'2023-04-17 18:00:26','root@localhost','productos','ACTUALIZACION'),(917,'2023-04-17 21:30:39','root@localhost','empleados','ELIMINAR'),(918,'2023-04-17 21:30:39','root@localhost','usuarios','ACTUALIZACION'),(919,'2023-04-17 21:30:39','root@localhost','clientes','ACTUALIZACION'),(920,'2023-04-17 21:31:51','root@localhost','empleados','ELIMINAR'),(921,'2023-04-17 21:31:51','root@localhost','usuarios','ACTUALIZACION'),(922,'2023-04-17 21:31:51','root@localhost','clientes','ACTUALIZACION'),(923,'2023-04-17 21:36:17','root@localhost','clientes','ELIMINAR'),(924,'2023-04-17 21:38:39','root@localhost','clientes','INSERCION'),(925,'2023-04-17 21:38:47','root@localhost','clientes','ELIMINAR'),(926,'2023-04-18 00:19:36','root@localhost','clientes','ACTUALIZACION'),(927,'2023-04-18 00:19:45','root@localhost','clientes','ACTUALIZACION'),(928,'2023-04-18 00:20:12','root@localhost','clientes','INSERCION'),(929,'2023-04-18 00:21:30','root@localhost','usuarios','ACTUALIZACION'),(930,'2023-04-18 00:21:30','root@localhost','clientes','ACTUALIZACION'),(931,'2023-04-18 00:21:46','root@localhost','usuarios','ACTUALIZACION'),(932,'2023-04-18 00:21:46','root@localhost','clientes','ACTUALIZACION'),(933,'2023-04-18 00:21:55','root@localhost','empleados','ELIMINAR'),(934,'2023-04-18 00:21:55','root@localhost','usuarios','ACTUALIZACION'),(935,'2023-04-18 00:21:55','root@localhost','clientes','ACTUALIZACION'),(936,'2023-04-18 00:22:29','root@localhost','proveedores','ACTUALIZACION'),(937,'2023-04-18 00:28:08','root@localhost','productos','ACTUALIZACION'),(938,'2023-04-18 00:29:00','root@localhost','productos','ACTUALIZACION'),(939,'2023-04-18 00:30:29','root@localhost','clientes','ELIMINAR'),(940,'2023-04-18 03:23:32','root@localhost','clientes','ACTUALIZACION'),(941,'2023-04-18 03:23:38','root@localhost','clientes','ACTUALIZACION'),(942,'2023-04-18 03:24:01','root@localhost','clientes','INSERCION'),(943,'2023-04-18 03:24:07','root@localhost','clientes','ELIMINAR'),(944,'2023-04-18 03:56:26','root@localhost','proveedores','ACTUALIZACION'),(945,'2023-04-18 03:56:32','root@localhost','proveedores','ACTUALIZACION'),(946,'2023-04-18 03:56:52','root@localhost','proveedores','INSERCION'),(947,'2023-04-18 03:56:58','root@localhost','proveedores','ELIMINAR'),(948,'2023-04-18 04:06:59','root@localhost','productos','ACTUALIZACION'),(949,'2023-04-18 04:07:11','root@localhost','productos','ACTUALIZACION'),(950,'2023-04-18 04:08:13','root@localhost','productos','ACTUALIZACION'),(951,'2023-04-18 04:09:11','root@localhost','productos','INSERCION'),(952,'2023-04-18 04:10:23','root@localhost','productos','ELIMINAR'),(953,'2023-04-18 15:37:54','root@localhost','usuarios','ACTUALIZACION'),(954,'2023-04-18 15:37:54','root@localhost','clientes','ACTUALIZACION'),(955,'2023-04-18 15:39:26','root@localhost','usuarios','ACTUALIZACION'),(956,'2023-04-18 15:39:26','root@localhost','clientes','ACTUALIZACION'),(957,'2023-04-18 15:44:21','root@localhost','usuarios','ACTUALIZACION'),(958,'2023-04-18 15:44:21','root@localhost','clientes','ACTUALIZACION'),(959,'2023-04-18 16:12:20','root@localhost','usuarios','ACTUALIZACION'),(960,'2023-04-18 16:12:20','root@localhost','clientes','ACTUALIZACION'),(961,'2023-04-18 16:12:20','root@localhost','empleados','INSERCION'),(962,'2023-04-18 17:32:51','root@localhost','productos','INSERCION'),(963,'2023-04-18 17:33:09','root@localhost','productos','ACTUALIZACION'),(964,'2023-04-18 17:33:40','root@localhost','productos','ACTUALIZACION'),(965,'2023-04-18 18:48:19','root@localhost','clientes','ACTUALIZACION'),(966,'2023-04-18 18:48:27','root@localhost','clientes','ACTUALIZACION'),(967,'2023-04-18 18:49:34','root@localhost','clientes','ELIMINAR'),(968,'2023-04-18 18:54:54','root@localhost','productos','ACTUALIZACION'),(969,'2023-04-18 20:08:40','root@localhost','productos','ACTUALIZACION'),(970,'2023-04-18 20:14:09','root@localhost','productos','ACTUALIZACION'),(971,'2023-04-18 20:14:56','root@localhost','ventas','INSERCION'),(972,'2023-04-18 22:26:28','root@localhost','productos','ACTUALIZACION'),(973,'2023-04-19 14:32:34','root@localhost','clientes','INSERCION'),(974,'2023-04-19 14:53:09','root@localhost','clientes','ACTUALIZACION'),(975,'2023-04-19 15:08:11','root@localhost','clientes','ACTUALIZACION'),(976,'2023-04-19 15:28:34','root@localhost','clientes','ELIMINAR'),(977,'2023-04-19 15:28:40','root@localhost','clientes','ELIMINAR'),(978,'2023-04-19 16:24:23','root@localhost','proveedores','INSERCION'),(979,'2023-04-19 16:24:34','root@localhost','proveedores','ACTUALIZACION'),(980,'2023-04-19 16:27:28','root@localhost','proveedores','ELIMINAR'),(981,'2023-04-19 19:59:08','root@localhost','productos','INSERCION'),(982,'2023-04-19 20:01:53','root@localhost','productos','ACTUALIZACION'),(983,'2023-04-21 00:19:24','root@localhost','usuarios','INSERCION'),(984,'2023-04-21 00:19:24','root@localhost','clientes','INSERCION'),(985,'2023-04-21 00:27:49','root@localhost','usuarios','INSERCION'),(986,'2023-04-21 00:27:49','root@localhost','clientes','INSERCION'),(987,'2023-04-21 00:27:49','root@localhost','empleados','INSERCION'),(988,'2023-04-21 00:53:54','root@localhost','usuarios','ACTUALIZACION'),(989,'2023-04-21 00:53:54','root@localhost','clientes','ACTUALIZACION'),(990,'2023-04-21 00:54:48','root@localhost','usuarios','ACTUALIZACION'),(991,'2023-04-21 00:54:48','root@localhost','clientes','ACTUALIZACION'),(992,'2023-04-21 17:36:36','root@localhost','productos','ACTUALIZACION'),(993,'2023-04-21 17:36:36','root@localhost','productos','ACTUALIZACION'),(994,'2023-04-21 17:36:43','root@localhost','productos','ACTUALIZACION'),(995,'2023-04-21 17:36:45','root@localhost','productos','ACTUALIZACION'),(996,'2023-04-21 17:36:45','root@localhost','productos','ACTUALIZACION'),(997,'2023-04-21 17:38:44','root@localhost','productos','ACTUALIZACION'),(998,'2023-04-21 17:38:48','root@localhost','productos','ACTUALIZACION'),(999,'2023-04-21 17:38:51','root@localhost','productos','ACTUALIZACION'),(1000,'2023-04-21 17:38:53','root@localhost','productos','ACTUALIZACION'),(1001,'2023-04-21 17:40:53','root@localhost','productos','ACTUALIZACION'),(1002,'2023-04-21 17:47:50','root@localhost','productos','ACTUALIZACION'),(1003,'2023-04-21 17:47:53','root@localhost','ventas','INSERCION'),(1004,'2023-04-21 17:49:34','root@localhost','productos','ACTUALIZACION'),(1005,'2023-04-21 17:49:36','root@localhost','ventas','INSERCION'),(1006,'2023-04-21 17:52:20','root@localhost','productos','ACTUALIZACION'),(1007,'2023-04-21 17:52:23','root@localhost','ventas','INSERCION'),(1008,'2023-04-21 17:53:45','root@localhost','productos','ACTUALIZACION'),(1009,'2023-04-21 17:53:49','root@localhost','productos','ACTUALIZACION'),(1010,'2023-04-21 17:53:52','root@localhost','ventas','INSERCION'),(1011,'2023-04-21 17:58:32','root@localhost','productos','ACTUALIZACION'),(1012,'2023-04-21 17:58:36','root@localhost','productos','ACTUALIZACION'),(1013,'2023-04-21 17:58:40','root@localhost','productos','ACTUALIZACION'),(1014,'2023-04-21 17:58:42','root@localhost','ventas','INSERCION'),(1015,'2023-04-21 18:38:32','root@localhost','productos','ACTUALIZACION'),(1016,'2023-04-21 18:38:39','root@localhost','productos','ACTUALIZACION'),(1017,'2023-04-21 18:38:50','root@localhost','productos','ACTUALIZACION'),(1018,'2023-04-21 18:52:32','root@localhost','productos','ELIMINAR'),(1019,'2023-04-21 19:08:22','root@localhost','productos','ACTUALIZACION'),(1020,'2023-04-21 19:08:24','root@localhost','ventas','INSERCION'),(1021,'2023-04-21 19:09:44','root@localhost','productos','ACTUALIZACION'),(1022,'2023-04-21 19:09:45','root@localhost','ventas','INSERCION'),(1023,'2023-04-21 19:10:40','root@localhost','productos','ACTUALIZACION'),(1024,'2023-04-21 19:10:42','root@localhost','ventas','INSERCION'),(1025,'2023-04-21 19:11:36','root@localhost','productos','ACTUALIZACION'),(1026,'2023-04-21 19:11:41','root@localhost','ventas','INSERCION'),(1027,'2023-04-21 19:12:41','root@localhost','productos','ACTUALIZACION'),(1028,'2023-04-21 19:12:42','root@localhost','ventas','INSERCION'),(1029,'2023-04-21 19:13:20','root@localhost','productos','ACTUALIZACION'),(1030,'2023-04-21 19:13:23','root@localhost','ventas','INSERCION'),(1031,'2023-04-21 22:40:41','root@localhost','productos','ACTUALIZACION'),(1032,'2023-04-21 22:52:30','root@localhost','productos','ACTUALIZACION'),(1033,'2023-04-21 22:53:16','root@localhost','productos','ACTUALIZACION'),(1034,'2023-04-21 22:53:20','root@localhost','ventas','INSERCION'),(1035,'2023-04-21 23:29:42','root@localhost','ventas','INSERCION'),(1036,'2023-04-21 23:30:42','root@localhost','productos','ACTUALIZACION'),(1037,'2023-04-21 23:30:44','root@localhost','ventas','INSERCION'),(1038,'2023-04-21 23:45:43','root@localhost','productos','ACTUALIZACION'),(1039,'2023-04-21 23:45:46','root@localhost','ventas','INSERCION'),(1040,'2023-04-22 00:29:41','root@localhost','productos','ACTUALIZACION'),(1041,'2023-04-22 00:29:43','root@localhost','ventas','INSERCION'),(1042,'2023-04-22 00:32:03','root@localhost','productos','ACTUALIZACION'),(1043,'2023-04-22 00:32:11','root@localhost','productos','ACTUALIZACION'),(1044,'2023-04-22 00:32:18','root@localhost','productos','ACTUALIZACION'),(1045,'2023-04-22 00:39:15','root@localhost','productos','ACTUALIZACION'),(1046,'2023-04-22 00:39:40','root@localhost','productos','ACTUALIZACION'),(1047,'2023-04-22 00:52:58','root@localhost','productos','ACTUALIZACION'),(1048,'2023-04-22 00:53:25','root@localhost','productos','ACTUALIZACION'),(1049,'2023-04-22 00:53:57','root@localhost','productos','ACTUALIZACION'),(1050,'2023-04-22 00:54:03','root@localhost','productos','ACTUALIZACION'),(1051,'2023-04-22 00:54:32','root@localhost','productos','ACTUALIZACION'),(1052,'2023-04-22 00:54:38','root@localhost','productos','ACTUALIZACION'),(1053,'2023-04-22 00:54:53','root@localhost','productos','ACTUALIZACION'),(1054,'2023-04-22 00:54:55','root@localhost','productos','ACTUALIZACION'),(1055,'2023-04-22 00:56:17','root@localhost','productos','ACTUALIZACION'),(1056,'2023-04-22 00:56:25','root@localhost','productos','ACTUALIZACION'),(1057,'2023-04-22 00:56:41','root@localhost','productos','ACTUALIZACION'),(1058,'2023-04-22 00:57:13','root@localhost','productos','ACTUALIZACION'),(1059,'2023-04-22 00:57:20','root@localhost','productos','ACTUALIZACION'),(1060,'2023-04-22 01:04:18','root@localhost','productos','ACTUALIZACION'),(1061,'2023-04-22 01:04:33','root@localhost','productos','ACTUALIZACION'),(1062,'2023-04-22 01:04:37','root@localhost','productos','ACTUALIZACION'),(1063,'2023-04-22 01:04:49','root@localhost','productos','ACTUALIZACION'),(1064,'2023-04-22 01:05:03','root@localhost','productos','ACTUALIZACION'),(1065,'2023-04-22 01:05:06','root@localhost','productos','ACTUALIZACION'),(1066,'2023-04-22 01:06:30','root@localhost','productos','ACTUALIZACION'),(1067,'2023-04-22 01:06:34','root@localhost','productos','ACTUALIZACION'),(1068,'2023-04-22 01:29:08','root@localhost','productos','ACTUALIZACION'),(1069,'2023-04-22 01:29:19','root@localhost','productos','ACTUALIZACION'),(1070,'2023-04-22 01:37:08','root@localhost','productos','ACTUALIZACION'),(1071,'2023-04-22 01:37:10','root@localhost','productos','ACTUALIZACION'),(1072,'2023-04-22 01:37:12','root@localhost','productos','ACTUALIZACION'),(1073,'2023-04-22 01:37:23','root@localhost','productos','ACTUALIZACION'),(1074,'2023-04-22 01:37:41','root@localhost','productos','ACTUALIZACION'),(1075,'2023-04-22 01:37:49','root@localhost','productos','ACTUALIZACION'),(1076,'2023-04-22 01:38:38','root@localhost','productos','ACTUALIZACION'),(1077,'2023-04-22 02:30:15','root@localhost','productos','ACTUALIZACION'),(1078,'2023-04-22 02:30:23','root@localhost','productos','ACTUALIZACION'),(1079,'2023-04-22 02:30:38','root@localhost','productos','ACTUALIZACION'),(1080,'2023-04-22 02:31:51','root@localhost','clientes','ACTUALIZACION'),(1081,'2023-04-22 02:32:36','root@localhost','productos','ACTUALIZACION'),(1082,'2023-04-22 02:32:56','root@localhost','ventas','INSERCION'),(1083,'2023-04-22 22:36:42','root@localhost','productos','ACTUALIZACION'),(1084,'2023-04-22 22:36:55','root@localhost','productos','ACTUALIZACION'),(1085,'2023-04-22 22:36:56','root@localhost','ventas','INSERCION'),(1086,'2023-04-22 22:40:52','root@localhost','productos','ACTUALIZACION'),(1087,'2023-04-22 22:40:59','root@localhost','productos','ACTUALIZACION'),(1088,'2023-04-22 22:41:05','root@localhost','productos','ACTUALIZACION'),(1089,'2023-04-22 22:41:08','root@localhost','productos','ACTUALIZACION'),(1090,'2023-04-22 22:41:10','root@localhost','ventas','INSERCION'),(1091,'2023-04-22 22:41:54','root@localhost','productos','ACTUALIZACION'),(1092,'2023-04-22 22:41:57','root@localhost','ventas','INSERCION'),(1093,'2023-04-22 22:44:47','root@localhost','clientes','INSERCION'),(1094,'2023-04-22 22:45:07','root@localhost','clientes','INSERCION'),(1095,'2023-04-22 22:45:21','root@localhost','clientes','ACTUALIZACION'),(1096,'2023-04-22 22:45:25','root@localhost','clientes','ELIMINAR'),(1097,'2023-04-22 22:45:28','root@localhost','clientes','ELIMINAR'),(1098,'2023-04-22 22:45:41','root@localhost','proveedores','INSERCION'),(1099,'2023-04-22 22:45:58','root@localhost','proveedores','ACTUALIZACION'),(1100,'2023-04-22 22:46:02','root@localhost','proveedores','ELIMINAR'),(1101,'2023-04-22 22:46:23','root@localhost','productos','INSERCION'),(1102,'2023-04-22 22:46:29','root@localhost','productos','ACTUALIZACION'),(1103,'2023-04-22 22:46:34','root@localhost','productos','ELIMINAR'),(1104,'2023-04-22 22:47:12','root@localhost','usuarios','ACTUALIZACION'),(1105,'2023-04-22 22:47:12','root@localhost','clientes','ACTUALIZACION'),(1106,'2023-04-22 22:57:51','root@localhost','usuarios','ACTUALIZACION'),(1107,'2023-04-22 22:57:51','root@localhost','clientes','ACTUALIZACION'),(1108,'2023-04-22 22:59:15','root@localhost','productos','ACTUALIZACION'),(1109,'2023-04-22 22:59:44','root@localhost','ventas','INSERCION'),(1110,'2023-04-22 23:21:29','root@localhost','usuarios','INSERCION'),(1111,'2023-04-22 23:21:29','root@localhost','clientes','INSERCION'),(1112,'2023-04-22 23:21:29','root@localhost','empleados','INSERCION'),(1113,'2023-04-22 23:55:44','root@localhost','empleados','ELIMINAR'),(1114,'2023-04-22 23:55:49','root@localhost','empleados','ELIMINAR'),(1115,'2023-04-22 23:55:58','root@localhost','usuarios','INSERCION'),(1116,'2023-04-22 23:55:58','root@localhost','clientes','INSERCION'),(1117,'2023-04-22 23:55:58','root@localhost','empleados','INSERCION'),(1118,'2023-04-22 23:56:03','root@localhost','empleados','ELIMINAR'),(1119,'2023-04-23 00:58:35','root@localhost','productos','ACTUALIZACION'),(1120,'2023-04-23 00:58:40','root@localhost','ventas','INSERCION'),(1127,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1128,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1129,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1130,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1131,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1132,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1133,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1134,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1135,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1136,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1137,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1138,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1139,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1140,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1141,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1142,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1143,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1144,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1145,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1146,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1147,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1148,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1149,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1150,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1151,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1152,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1153,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1154,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1155,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1156,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1157,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1158,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1159,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1160,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1161,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1162,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1163,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1164,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1165,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1166,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1167,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1168,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1169,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1170,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1171,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1172,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1173,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1174,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1175,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1176,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1177,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1178,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1179,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1180,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1181,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1182,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1183,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1184,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1185,'2023-04-23 01:12:46','root@localhost','ventas','ELIMINAR'),(1186,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1187,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1188,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1189,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1190,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1191,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1192,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1193,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1194,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1195,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1196,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1197,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1198,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1199,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1200,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1201,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1202,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1203,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1204,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1205,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1206,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1207,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1208,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1209,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1210,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1211,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1212,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1213,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1214,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1215,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1216,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1217,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1218,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1219,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1220,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1221,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1222,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1223,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1224,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1225,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1226,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1227,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1228,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1229,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1230,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1231,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1232,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1233,'2023-04-23 01:12:52','root@localhost','clientes','ELIMINAR'),(1234,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1235,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1236,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1237,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1238,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1239,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1240,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1241,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1242,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1243,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1244,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1245,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1246,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1247,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1248,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1249,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1250,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1251,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1252,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1253,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1254,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1255,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1256,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1257,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1258,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1259,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1260,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1261,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1262,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1263,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1264,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1265,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1266,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1267,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1268,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1269,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1270,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1271,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1272,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1273,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1274,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1275,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1276,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1277,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1278,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1279,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1280,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1281,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1282,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1283,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1284,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1285,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1286,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1287,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1288,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1289,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1290,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1291,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1292,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1293,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1294,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1295,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1296,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1297,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1298,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1299,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1300,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1301,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1302,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1303,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1304,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1305,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1306,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1307,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1308,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1309,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1310,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1311,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1312,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1313,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1314,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1315,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1316,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1317,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1318,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1319,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1320,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1321,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1322,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1323,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1324,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1325,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1326,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1327,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1328,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1329,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1330,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1331,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1332,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1333,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1334,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1335,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1336,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1337,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1338,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1339,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1340,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1341,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1342,'2023-04-23 01:12:55','root@localhost','usuarios','ELIMINAR'),(1343,'2023-04-23 01:12:55','root@localhost','clientes','ELIMINAR'),(1344,'2023-04-23 01:20:58','root@localhost','productos','ACTUALIZACION'),(1345,'2023-04-23 01:21:00','root@localhost','productos','ACTUALIZACION'),(1346,'2023-04-23 01:21:03','root@localhost','ventas','INSERCION'),(1347,'2023-04-23 02:06:55','root@localhost','clientes','INSERCION'),(1348,'2023-04-23 02:09:31','root@localhost','clientes','ELIMINAR'),(1349,'2023-04-23 02:19:16','root@localhost','productos','ACTUALIZACION'),(1350,'2023-04-23 02:19:20','root@localhost','ventas','INSERCION'),(1351,'2023-04-23 02:20:02','root@localhost','productos','ACTUALIZACION'),(1352,'2023-04-23 02:20:20','root@localhost','ventas','INSERCION'),(1353,'2023-04-23 02:24:56','root@localhost','productos','ACTUALIZACION'),(1354,'2023-04-23 02:25:00','root@localhost','ventas','INSERCION'),(1355,'2023-04-23 02:33:59','root@localhost','productos','ACTUALIZACION'),(1356,'2023-04-23 02:34:07','root@localhost','ventas','INSERCION'),(1357,'2023-04-23 02:35:45','root@localhost','productos','ACTUALIZACION'),(1358,'2023-04-23 02:35:48','root@localhost','ventas','INSERCION'),(1359,'2023-04-23 02:36:35','root@localhost','productos','ACTUALIZACION'),(1360,'2023-04-23 02:36:36','root@localhost','ventas','INSERCION'),(1361,'2023-04-23 02:39:37','root@localhost','productos','ACTUALIZACION'),(1362,'2023-04-23 02:39:39','root@localhost','ventas','INSERCION'),(1363,'2023-04-23 02:42:23','root@localhost','productos','ACTUALIZACION'),(1364,'2023-04-23 02:42:25','root@localhost','ventas','INSERCION'),(1365,'2023-04-23 02:43:40','root@localhost','productos','ACTUALIZACION'),(1366,'2023-04-23 02:43:41','root@localhost','ventas','INSERCION'),(1367,'2023-04-23 02:45:14','root@localhost','productos','ACTUALIZACION'),(1368,'2023-04-23 02:45:16','root@localhost','ventas','INSERCION'),(1369,'2023-04-23 02:51:06','root@localhost','productos','ACTUALIZACION'),(1370,'2023-04-23 02:51:07','root@localhost','ventas','INSERCION'),(1371,'2023-04-23 02:55:39','root@localhost','productos','ACTUALIZACION'),(1372,'2023-04-23 02:55:45','root@localhost','ventas','INSERCION'),(1373,'2023-04-23 02:58:12','root@localhost','productos','ACTUALIZACION'),(1374,'2023-04-23 02:58:28','root@localhost','productos','ACTUALIZACION'),(1375,'2023-04-23 02:58:33','root@localhost','productos','ACTUALIZACION'),(1376,'2023-04-23 03:06:08','root@localhost','productos','ACTUALIZACION'),(1377,'2023-04-23 03:06:12','root@localhost','productos','ACTUALIZACION'),(1378,'2023-04-23 03:06:14','root@localhost','productos','ACTUALIZACION'),(1379,'2023-04-23 03:06:15','root@localhost','productos','ACTUALIZACION'),(1380,'2023-04-23 03:29:02','root@localhost','productos','ACTUALIZACION'),(1381,'2023-04-23 03:29:07','root@localhost','ventas','INSERCION'),(1382,'2023-04-23 03:29:26','root@localhost','productos','ACTUALIZACION'),(1383,'2023-04-23 03:29:29','root@localhost','ventas','INSERCION'),(1384,'2023-04-23 04:21:38','root@localhost','productos','ACTUALIZACION'),(1385,'2023-04-23 04:27:15','root@localhost','proveedores','INSERCION'),(1386,'2023-04-23 04:27:39','root@localhost','clientes','INSERCION'),(1387,'2023-04-23 04:27:55','root@localhost','clientes','ELIMINAR'),(1388,'2023-04-23 04:29:16','root@localhost','clientes','INSERCION'),(1389,'2023-04-23 04:29:24','root@localhost','clientes','ELIMINAR'),(1390,'2023-04-23 16:45:29','root@localhost','clientes','INSERCION'),(1391,'2023-04-23 16:45:41','root@localhost','clientes','ELIMINAR'),(1392,'2023-04-23 19:32:37','root@localhost','clientes','INSERCION'),(1393,'2023-04-23 22:31:48','root@localhost','empleados','ELIMINAR'),(1394,'2023-04-23 22:31:55','root@localhost','usuarios','ELIMINAR'),(1395,'2023-04-23 22:31:55','root@localhost','clientes','ELIMINAR'),(1396,'2023-04-23 22:40:11','root@localhost','usuarios','INSERCION'),(1397,'2023-04-23 22:40:11','root@localhost','clientes','INSERCION'),(1398,'2023-04-23 23:15:27','root@localhost','usuarios','INSERCION'),(1399,'2023-04-23 23:15:27','root@localhost','clientes','INSERCION'),(1400,'2023-04-23 23:15:27','root@localhost','empleados','INSERCION'),(1401,'2023-04-24 21:07:54','root@localhost','productos','ACTUALIZACION'),(1402,'2023-04-24 21:08:01','root@localhost','productos','ACTUALIZACION'),(1403,'2023-04-24 21:11:52','root@localhost','productos','ACTUALIZACION'),(1404,'2023-04-24 21:12:04','root@localhost','productos','ACTUALIZACION'),(1405,'2023-04-24 21:13:11','root@localhost','productos','ACTUALIZACION'),(1406,'2023-04-24 21:13:33','root@localhost','productos','ACTUALIZACION'),(1407,'2023-04-24 21:14:53','root@localhost','productos','INSERCION'),(1408,'2023-04-24 21:15:03','root@localhost','productos','ACTUALIZACION'),(1409,'2023-04-24 21:15:26','root@localhost','productos','ACTUALIZACION'),(1410,'2023-04-24 21:15:39','root@localhost','productos','ACTUALIZACION'),(1411,'2023-04-24 21:15:52','root@localhost','productos','ACTUALIZACION'),(1412,'2023-04-26 01:09:44','root@localhost','usuarios','ACTUALIZACION'),(1413,'2023-04-26 01:09:44','root@localhost','clientes','ACTUALIZACION'),(1414,'2023-04-26 01:09:57','root@localhost','productos','ACTUALIZACION'),(1415,'2023-04-26 01:34:25','root@localhost','usuarios','ELIMINAR'),(1416,'2023-04-26 01:34:25','root@localhost','clientes','ELIMINAR'),(1417,'2023-04-26 01:37:56','root@localhost','productos','ACTUALIZACION'),(1418,'2023-04-26 01:38:01','root@localhost','productos','ACTUALIZACION'),(1419,'2023-04-26 01:38:06','root@localhost','ventas','INSERCION'),(1420,'2023-04-26 01:44:29','root@localhost','productos','ACTUALIZACION'),(1421,'2023-04-26 01:44:31','root@localhost','ventas','INSERCION'),(1422,'2023-04-26 01:52:39','root@localhost','productos','ACTUALIZACION'),(1423,'2023-04-26 01:52:41','root@localhost','ventas','INSERCION'),(1424,'2023-04-26 01:58:55','root@localhost','productos','ACTUALIZACION'),(1425,'2023-04-26 01:58:57','root@localhost','ventas','INSERCION'),(1426,'2023-04-27 01:20:07','root@localhost','clientes','ACTUALIZACION'),(1427,'2023-04-27 18:51:16','root@localhost','productos','INSERCION'),(1428,'2023-04-27 19:01:10','root@localhost','productos','ACTUALIZACION'),(1429,'2023-04-27 19:01:24','root@localhost','productos','ACTUALIZACION'),(1430,'2023-04-27 19:04:05','root@localhost','productos','ACTUALIZACION'),(1431,'2023-04-27 19:04:33','root@localhost','productos','INSERCION'),(1432,'2023-04-27 19:05:06','root@localhost','productos','INSERCION'),(1433,'2023-04-27 19:05:36','root@localhost','productos','ACTUALIZACION'),(1434,'2023-04-27 19:05:44','root@localhost','productos','ACTUALIZACION'),(1435,'2023-04-27 19:06:00','root@localhost','productos','ACTUALIZACION'),(1436,'2023-04-27 19:06:06','root@localhost','productos','ACTUALIZACION'),(1437,'2023-04-27 19:06:13','root@localhost','productos','ACTUALIZACION'),(1438,'2023-04-27 19:10:09','root@localhost','productos','ACTUALIZACION'),(1439,'2023-04-27 19:11:29','root@localhost','productos','ACTUALIZACION'),(1440,'2023-04-27 19:30:56','root@localhost','productos','ACTUALIZACION'),(1441,'2023-04-27 19:31:03','root@localhost','productos','ACTUALIZACION'),(1442,'2023-04-27 19:31:15','root@localhost','productos','ACTUALIZACION'),(1443,'2023-04-27 19:31:17','root@localhost','productos','ACTUALIZACION'),(1444,'2023-04-27 19:31:17','root@localhost','productos','ACTUALIZACION'),(1445,'2023-04-27 19:31:19','root@localhost','productos','ACTUALIZACION'),(1446,'2023-04-27 19:31:19','root@localhost','productos','ACTUALIZACION'),(1447,'2023-04-27 19:31:28','root@localhost','productos','ACTUALIZACION'),(1448,'2023-04-27 19:31:29','root@localhost','productos','ACTUALIZACION'),(1449,'2023-04-27 19:31:29','root@localhost','productos','ACTUALIZACION'),(1450,'2023-04-27 19:31:29','root@localhost','productos','ACTUALIZACION'),(1451,'2023-04-27 19:31:30','root@localhost','productos','ACTUALIZACION'),(1452,'2023-04-27 19:31:30','root@localhost','productos','ACTUALIZACION'),(1453,'2023-04-27 19:31:30','root@localhost','productos','ACTUALIZACION'),(1454,'2023-04-27 19:31:30','root@localhost','productos','ACTUALIZACION'),(1455,'2023-04-27 20:08:15','root@localhost','productos','INSERCION'),(1456,'2023-04-27 20:13:40','root@localhost','productos','INSERCION'),(1457,'2023-04-27 23:46:28','root@localhost','productos','INSERCION'),(1458,'2023-04-27 23:49:02','root@localhost','proveedores','INSERCION'),(1459,'2023-04-27 23:49:07','root@localhost','proveedores','ELIMINAR'),(1460,'2023-04-27 23:54:10','root@localhost','productos','ACTUALIZACION'),(1461,'2023-04-27 23:59:43','root@localhost','proveedores','INSERCION'),(1462,'2023-04-28 00:12:01','root@localhost','productos','ACTUALIZACION'),(1463,'2023-04-28 00:12:33','root@localhost','productos','INSERCION'),(1464,'2023-04-28 00:13:20','root@localhost','proveedores','INSERCION'),(1465,'2023-04-28 00:13:58','root@localhost','productos','ACTUALIZACION'),(1466,'2023-04-28 00:14:13','root@localhost','productos','ACTUALIZACION'),(1467,'2023-04-28 00:14:17','root@localhost','productos','ACTUALIZACION'),(1468,'2023-04-28 00:14:25','root@localhost','productos','ELIMINAR'),(1469,'2023-04-28 00:14:30','root@localhost','productos','ELIMINAR'),(1470,'2023-04-28 00:14:34','root@localhost','productos','ELIMINAR'),(1471,'2023-04-28 00:14:38','root@localhost','productos','ELIMINAR'),(1472,'2023-04-28 00:15:14','root@localhost','proveedores','INSERCION'),(1473,'2023-04-28 00:15:20','root@localhost','proveedores','ELIMINAR'),(1474,'2023-04-28 00:15:28','root@localhost','proveedores','ELIMINAR'),(1475,'2023-04-28 00:15:31','root@localhost','proveedores','ELIMINAR'),(1476,'2023-04-28 00:16:03','root@localhost','productos','ACTUALIZACION'),(1477,'2023-04-28 00:18:18','root@localhost','proveedores','INSERCION'),(1478,'2023-04-28 00:18:39','root@localhost','productos','INSERCION'),(1479,'2023-04-28 00:19:33','root@localhost','proveedores','ELIMINAR'),(1480,'2023-04-28 00:19:36','root@localhost','proveedores','ELIMINAR'),(1481,'2023-04-28 00:19:39','root@localhost','proveedores','ELIMINAR'),(1482,'2023-04-28 00:19:43','root@localhost','proveedores','ELIMINAR'),(1483,'2023-04-28 00:19:46','root@localhost','proveedores','ELIMINAR'),(1484,'2023-04-28 00:19:49','root@localhost','proveedores','ELIMINAR'),(1485,'2023-04-28 00:19:53','root@localhost','proveedores','ELIMINAR'),(1486,'2023-04-28 00:19:56','root@localhost','proveedores','ELIMINAR'),(1487,'2023-04-28 00:22:16','root@localhost','productos','ACTUALIZACION'),(1488,'2023-04-28 00:22:20','root@localhost','productos','ACTUALIZACION'),(1489,'2023-04-28 00:26:14','root@localhost','proveedores','INSERCION'),(1490,'2023-04-28 00:30:50','root@localhost','productos','INSERCION'),(1491,'2023-04-28 00:32:27','root@localhost','proveedores','INSERCION'),(1492,'2023-04-28 00:32:36','root@localhost','productos','INSERCION'),(1493,'2023-04-28 00:34:02','root@localhost','proveedores','INSERCION'),(1494,'2023-04-28 00:36:07','root@localhost','productos','INSERCION'),(1495,'2023-04-28 00:36:32','root@localhost','productos','ACTUALIZACION'),(1496,'2023-04-28 00:37:06','root@localhost','proveedores','INSERCION'),(1497,'2023-04-28 00:37:11','root@localhost','proveedores','ELIMINAR'),(1498,'2023-04-28 00:37:14','root@localhost','proveedores','ELIMINAR'),(1499,'2023-04-28 00:37:17','root@localhost','proveedores','ELIMINAR'),(1500,'2023-04-28 00:37:20','root@localhost','proveedores','ELIMINAR'),(1501,'2023-04-28 00:37:24','root@localhost','proveedores','ELIMINAR'),(1502,'2023-04-28 00:38:39','root@localhost','productos','INSERCION'),(1503,'2023-04-28 00:40:44','root@localhost','proveedores','INSERCION'),(1504,'2023-04-28 00:40:49','root@localhost','proveedores','ELIMINAR'),(1505,'2023-04-28 00:41:27','root@localhost','productos','INSERCION'),(1506,'2023-04-28 00:45:30','root@localhost','proveedores','INSERCION'),(1507,'2023-04-28 00:45:35','root@localhost','proveedores','ELIMINAR'),(1508,'2023-04-28 00:45:56','root@localhost','productos','INSERCION'),(1509,'2023-04-28 00:52:33','root@localhost','proveedores','INSERCION'),(1510,'2023-04-28 00:53:02','root@localhost','productos','INSERCION'),(1511,'2023-04-28 00:57:30','root@localhost','proveedores','INSERCION'),(1512,'2023-04-28 00:57:42','root@localhost','productos','INSERCION'),(1513,'2023-04-28 00:58:53','root@localhost','proveedores','INSERCION'),(1514,'2023-04-28 00:59:06','root@localhost','productos','INSERCION'),(1515,'2023-04-28 01:01:41','root@localhost','proveedores','INSERCION'),(1516,'2023-04-28 01:02:39','root@localhost','productos','INSERCION'),(1517,'2023-04-28 01:04:50','root@localhost','productos','ACTUALIZACION'),(1518,'2023-04-28 01:05:50','root@localhost','productos','ACTUALIZACION'),(1519,'2023-04-28 01:05:54','root@localhost','productos','ACTUALIZACION'),(1520,'2023-04-28 01:06:05','root@localhost','productos','ACTUALIZACION'),(1521,'2023-04-28 01:06:17','root@localhost','productos','ACTUALIZACION'),(1522,'2023-04-28 01:20:57','root@localhost','productos','ACTUALIZACION'),(1523,'2023-04-28 01:21:00','root@localhost','productos','ACTUALIZACION'),(1524,'2023-04-28 01:21:02','root@localhost','productos','ACTUALIZACION'),(1525,'2023-04-28 01:23:41','root@localhost','proveedores','ELIMINAR'),(1526,'2023-04-28 01:23:47','root@localhost','proveedores','ELIMINAR'),(1527,'2023-04-28 01:23:51','root@localhost','proveedores','ELIMINAR'),(1528,'2023-04-28 01:25:41','root@localhost','proveedores','INSERCION'),(1529,'2023-04-28 01:25:47','root@localhost','proveedores','ELIMINAR'),(1530,'2023-04-28 01:26:15','root@localhost','productos','INSERCION'),(1531,'2023-04-28 01:28:26','root@localhost','proveedores','INSERCION'),(1532,'2023-04-28 01:28:37','root@localhost','proveedores','ELIMINAR'),(1533,'2023-04-28 01:28:41','root@localhost','proveedores','ELIMINAR'),(1534,'2023-04-28 01:30:44','root@localhost','productos','INSERCION'),(1535,'2023-04-28 01:32:19','root@localhost','proveedores','INSERCION'),(1536,'2023-04-28 01:32:28','root@localhost','proveedores','ELIMINAR'),(1537,'2023-04-28 01:33:03','root@localhost','proveedores','INSERCION'),(1538,'2023-04-28 01:33:16','root@localhost','proveedores','INSERCION'),(1539,'2023-04-28 01:33:21','root@localhost','proveedores','ELIMINAR'),(1540,'2023-04-28 01:33:23','root@localhost','proveedores','ELIMINAR'),(1541,'2023-04-28 01:34:52','root@localhost','productos','INSERCION'),(1542,'2023-04-28 01:41:06','root@localhost','proveedores','INSERCION'),(1543,'2023-04-28 01:41:12','root@localhost','proveedores','ELIMINAR'),(1544,'2023-04-28 02:21:59','root@localhost','proveedores','INSERCION'),(1545,'2023-04-28 02:22:51','root@localhost','productos','INSERCION'),(1546,'2023-04-28 02:24:06','root@localhost','proveedores','INSERCION'),(1547,'2023-04-28 02:25:27','root@localhost','proveedores','INSERCION'),(1548,'2023-04-28 02:25:56','root@localhost','productos','ACTUALIZACION'),(1549,'2023-04-28 02:26:09','root@localhost','productos','ACTUALIZACION'),(1550,'2023-04-28 02:26:25','root@localhost','productos','ACTUALIZACION'),(1551,'2023-04-28 02:26:36','root@localhost','productos','ACTUALIZACION'),(1552,'2023-04-28 02:27:16','root@localhost','productos','INSERCION'),(1553,'2023-04-28 02:28:25','root@localhost','productos','INSERCION'),(1554,'2023-04-28 02:31:31','root@localhost','proveedores','INSERCION'),(1555,'2023-04-28 02:31:35','root@localhost','proveedores','ELIMINAR'),(1556,'2023-04-28 02:31:38','root@localhost','proveedores','ELIMINAR'),(1557,'2023-04-28 02:31:41','root@localhost','proveedores','ELIMINAR'),(1558,'2023-04-28 02:31:44','root@localhost','proveedores','ELIMINAR'),(1559,'2023-04-28 02:31:47','root@localhost','proveedores','ELIMINAR'),(1560,'2023-04-28 02:31:51','root@localhost','proveedores','ELIMINAR'),(1561,'2023-04-28 02:31:53','root@localhost','proveedores','ELIMINAR'),(1562,'2023-04-28 02:31:57','root@localhost','proveedores','ELIMINAR'),(1563,'2023-04-28 02:32:37','root@localhost','productos','ACTUALIZACION'),(1564,'2023-04-28 02:33:49','root@localhost','productos','INSERCION'),(1565,'2023-04-28 02:35:22','root@localhost','productos','ACTUALIZACION'),(1566,'2023-04-28 02:35:22','root@localhost','productos','ACTUALIZACION'),(1567,'2023-04-28 02:35:23','root@localhost','productos','ACTUALIZACION'),(1568,'2023-04-28 02:35:24','root@localhost','productos','ACTUALIZACION'),(1569,'2023-04-28 02:35:27','root@localhost','productos','ACTUALIZACION'),(1570,'2023-04-28 02:35:27','root@localhost','productos','ACTUALIZACION'),(1571,'2023-04-28 02:35:28','root@localhost','productos','ACTUALIZACION'),(1572,'2023-04-28 02:35:33','root@localhost','productos','ACTUALIZACION'),(1573,'2023-04-28 02:35:37','root@localhost','productos','ACTUALIZACION'),(1574,'2023-04-28 02:35:54','root@localhost','productos','ACTUALIZACION'),(1575,'2023-04-28 02:35:56','root@localhost','productos','ACTUALIZACION'),(1576,'2023-04-28 02:35:56','root@localhost','productos','ACTUALIZACION'),(1577,'2023-04-28 02:35:57','root@localhost','productos','ACTUALIZACION'),(1578,'2023-04-28 02:35:58','root@localhost','productos','ACTUALIZACION'),(1579,'2023-04-28 02:35:59','root@localhost','productos','ACTUALIZACION'),(1580,'2023-04-28 02:35:59','root@localhost','productos','ACTUALIZACION'),(1581,'2023-04-28 02:36:03','root@localhost','productos','ACTUALIZACION'),(1582,'2023-04-28 02:36:03','root@localhost','productos','ACTUALIZACION'),(1583,'2023-04-28 02:36:10','root@localhost','productos','ACTUALIZACION'),(1584,'2023-04-28 02:36:11','root@localhost','productos','ACTUALIZACION'),(1585,'2023-04-28 02:36:12','root@localhost','productos','ACTUALIZACION'),(1586,'2023-04-28 02:36:12','root@localhost','productos','ACTUALIZACION'),(1587,'2023-04-28 02:36:13','root@localhost','productos','ACTUALIZACION'),(1588,'2023-04-28 02:36:23','root@localhost','productos','ACTUALIZACION'),(1589,'2023-04-28 02:36:24','root@localhost','productos','ACTUALIZACION'),(1590,'2023-04-28 02:36:24','root@localhost','productos','ACTUALIZACION'),(1591,'2023-04-28 02:36:25','root@localhost','productos','ACTUALIZACION'),(1592,'2023-04-28 02:36:26','root@localhost','productos','ACTUALIZACION'),(1593,'2023-04-28 02:36:29','root@localhost','productos','ACTUALIZACION'),(1594,'2023-04-28 02:36:29','root@localhost','productos','ACTUALIZACION'),(1595,'2023-04-28 02:36:30','root@localhost','productos','ACTUALIZACION'),(1596,'2023-04-28 02:37:18','root@localhost','productos','ACTUALIZACION'),(1597,'2023-04-28 02:37:19','root@localhost','productos','ACTUALIZACION'),(1598,'2023-04-28 02:37:19','root@localhost','productos','ACTUALIZACION'),(1599,'2023-04-28 02:37:20','root@localhost','productos','ACTUALIZACION'),(1600,'2023-04-28 02:37:35','root@localhost','productos','ACTUALIZACION'),(1601,'2023-04-28 02:37:35','root@localhost','productos','ACTUALIZACION'),(1602,'2023-04-28 02:37:36','root@localhost','productos','ACTUALIZACION'),(1603,'2023-04-28 02:37:40','root@localhost','productos','ACTUALIZACION'),(1604,'2023-04-28 02:38:00','root@localhost','productos','ACTUALIZACION'),(1605,'2023-04-28 02:38:00','root@localhost','productos','ACTUALIZACION'),(1606,'2023-04-28 02:38:01','root@localhost','productos','ACTUALIZACION'),(1607,'2023-04-28 02:38:01','root@localhost','productos','ACTUALIZACION'),(1608,'2023-04-28 02:38:02','root@localhost','productos','ACTUALIZACION'),(1609,'2023-04-28 02:38:06','root@localhost','productos','ACTUALIZACION'),(1610,'2023-04-28 02:38:14','root@localhost','productos','ACTUALIZACION'),(1611,'2023-04-28 02:38:15','root@localhost','productos','ACTUALIZACION'),(1612,'2023-04-28 02:38:16','root@localhost','productos','ACTUALIZACION'),(1613,'2023-04-28 02:38:17','root@localhost','productos','ACTUALIZACION'),(1614,'2023-04-28 02:38:18','root@localhost','productos','ACTUALIZACION'),(1615,'2023-04-28 02:38:27','root@localhost','productos','ACTUALIZACION'),(1616,'2023-04-28 02:38:28','root@localhost','productos','ACTUALIZACION'),(1617,'2023-04-28 02:38:28','root@localhost','productos','ACTUALIZACION'),(1618,'2023-04-28 02:48:07','root@localhost','productos','ACTUALIZACION'),(1619,'2023-04-28 02:48:07','root@localhost','productos','ACTUALIZACION'),(1620,'2023-04-28 02:48:08','root@localhost','productos','ACTUALIZACION'),(1621,'2023-04-28 02:48:08','root@localhost','productos','ACTUALIZACION'),(1622,'2023-04-28 02:48:09','root@localhost','productos','ACTUALIZACION'),(1623,'2023-04-28 02:48:12','root@localhost','productos','ACTUALIZACION'),(1624,'2023-04-28 02:48:27','root@localhost','productos','ACTUALIZACION'),(1625,'2023-04-28 02:48:28','root@localhost','productos','ACTUALIZACION'),(1626,'2023-04-28 02:48:30','root@localhost','productos','ACTUALIZACION'),(1627,'2023-04-28 02:48:30','root@localhost','productos','ACTUALIZACION'),(1628,'2023-04-28 02:48:31','root@localhost','productos','ACTUALIZACION'),(1629,'2023-04-28 02:48:41','root@localhost','productos','ACTUALIZACION'),(1630,'2023-04-28 02:48:41','root@localhost','productos','ACTUALIZACION'),(1631,'2023-04-28 02:48:41','root@localhost','productos','ACTUALIZACION'),(1632,'2023-04-28 02:48:42','root@localhost','productos','ACTUALIZACION'),(1633,'2023-04-28 02:48:42','root@localhost','productos','ACTUALIZACION'),(1634,'2023-04-28 02:48:46','root@localhost','productos','ACTUALIZACION'),(1635,'2023-04-28 02:49:08','root@localhost','productos','ACTUALIZACION'),(1636,'2023-04-28 02:49:09','root@localhost','productos','ACTUALIZACION'),(1637,'2023-04-28 02:49:09','root@localhost','productos','ACTUALIZACION'),(1638,'2023-04-28 02:49:10','root@localhost','productos','ACTUALIZACION'),(1639,'2023-04-28 02:49:10','root@localhost','productos','ACTUALIZACION'),(1640,'2023-04-28 02:49:10','root@localhost','productos','ACTUALIZACION'),(1641,'2023-04-28 02:49:11','root@localhost','productos','ACTUALIZACION'),(1642,'2023-04-28 02:49:11','root@localhost','productos','ACTUALIZACION'),(1643,'2023-04-28 02:49:12','root@localhost','productos','ACTUALIZACION'),(1644,'2023-04-28 02:49:13','root@localhost','productos','ACTUALIZACION'),(1645,'2023-04-28 02:49:20','root@localhost','productos','ACTUALIZACION'),(1646,'2023-04-28 02:49:21','root@localhost','productos','ACTUALIZACION'),(1647,'2023-04-28 02:49:22','root@localhost','productos','ACTUALIZACION'),(1648,'2023-04-28 02:49:22','root@localhost','productos','ACTUALIZACION'),(1649,'2023-04-28 02:49:23','root@localhost','productos','ACTUALIZACION'),(1650,'2023-04-28 02:49:33','root@localhost','ventas','INSERCION'),(1651,'2023-04-28 02:51:26','root@localhost','productos','ACTUALIZACION'),(1652,'2023-04-28 02:51:26','root@localhost','productos','ACTUALIZACION'),(1653,'2023-04-28 02:51:26','root@localhost','productos','ACTUALIZACION'),(1654,'2023-04-28 02:51:27','root@localhost','productos','ACTUALIZACION'),(1655,'2023-04-28 02:51:27','root@localhost','productos','ACTUALIZACION'),(1656,'2023-04-28 02:51:27','root@localhost','productos','ACTUALIZACION'),(1657,'2023-04-28 02:51:32','root@localhost','productos','ACTUALIZACION'),(1658,'2023-04-28 02:51:32','root@localhost','productos','ACTUALIZACION'),(1659,'2023-04-28 02:51:33','root@localhost','productos','ACTUALIZACION'),(1660,'2023-04-28 02:51:33','root@localhost','productos','ACTUALIZACION'),(1661,'2023-04-28 02:51:34','root@localhost','productos','ACTUALIZACION'),(1662,'2023-04-28 02:51:35','root@localhost','productos','ACTUALIZACION'),(1663,'2023-04-28 02:51:37','root@localhost','productos','ACTUALIZACION'),(1664,'2023-04-28 02:51:38','root@localhost','productos','ACTUALIZACION'),(1665,'2023-04-28 02:51:43','root@localhost','productos','ACTUALIZACION'),(1666,'2023-04-28 02:51:43','root@localhost','productos','ACTUALIZACION'),(1667,'2023-04-28 02:51:44','root@localhost','productos','ACTUALIZACION'),(1668,'2023-04-28 02:51:48','root@localhost','productos','ACTUALIZACION'),(1669,'2023-04-28 02:51:48','root@localhost','productos','ACTUALIZACION'),(1670,'2023-04-28 02:51:51','root@localhost','productos','ACTUALIZACION'),(1671,'2023-04-28 02:51:52','root@localhost','productos','ACTUALIZACION'),(1672,'2023-04-28 02:51:52','root@localhost','productos','ACTUALIZACION'),(1673,'2023-04-28 02:52:04','root@localhost','productos','ACTUALIZACION'),(1674,'2023-04-28 02:52:04','root@localhost','productos','ACTUALIZACION'),(1675,'2023-04-28 02:52:05','root@localhost','productos','ACTUALIZACION'),(1676,'2023-04-28 02:52:06','root@localhost','productos','ACTUALIZACION'),(1677,'2023-04-28 02:52:07','root@localhost','productos','ACTUALIZACION'),(1678,'2023-04-28 02:52:16','root@localhost','ventas','INSERCION'),(1679,'2023-04-28 02:54:00','root@localhost','productos','ACTUALIZACION'),(1680,'2023-04-28 02:54:00','root@localhost','productos','ACTUALIZACION'),(1681,'2023-04-28 02:54:01','root@localhost','productos','ACTUALIZACION'),(1682,'2023-04-28 02:54:01','root@localhost','productos','ACTUALIZACION'),(1683,'2023-04-28 02:54:02','root@localhost','productos','ACTUALIZACION'),(1684,'2023-04-28 02:54:02','root@localhost','productos','ACTUALIZACION'),(1685,'2023-04-28 02:54:02','root@localhost','productos','ACTUALIZACION'),(1686,'2023-04-28 02:54:02','root@localhost','productos','ACTUALIZACION'),(1687,'2023-04-28 02:54:05','root@localhost','productos','ACTUALIZACION'),(1688,'2023-04-28 02:54:05','root@localhost','productos','ACTUALIZACION'),(1689,'2023-04-28 02:54:05','root@localhost','productos','ACTUALIZACION'),(1690,'2023-04-28 02:54:06','root@localhost','productos','ACTUALIZACION'),(1691,'2023-04-28 02:54:06','root@localhost','productos','ACTUALIZACION'),(1692,'2023-04-28 02:54:09','root@localhost','productos','ACTUALIZACION'),(1693,'2023-04-28 02:54:09','root@localhost','productos','ACTUALIZACION'),(1694,'2023-04-28 02:54:10','root@localhost','productos','ACTUALIZACION'),(1695,'2023-04-28 02:54:10','root@localhost','productos','ACTUALIZACION'),(1696,'2023-04-28 02:54:11','root@localhost','productos','ACTUALIZACION'),(1697,'2023-04-28 02:54:11','root@localhost','productos','ACTUALIZACION'),(1698,'2023-04-28 02:54:17','root@localhost','productos','ACTUALIZACION'),(1699,'2023-04-28 02:54:18','root@localhost','productos','ACTUALIZACION'),(1700,'2023-04-28 02:54:18','root@localhost','productos','ACTUALIZACION'),(1701,'2023-04-28 02:54:19','root@localhost','productos','ACTUALIZACION'),(1702,'2023-04-28 02:54:19','root@localhost','productos','ACTUALIZACION'),(1703,'2023-04-28 02:54:20','root@localhost','productos','ACTUALIZACION'),(1704,'2023-04-28 02:54:32','root@localhost','ventas','INSERCION'),(1705,'2023-04-28 02:56:12','root@localhost','productos','INSERCION'),(1706,'2023-04-28 02:57:13','root@localhost','proveedores','INSERCION'),(1707,'2023-04-28 02:57:18','root@localhost','proveedores','INSERCION'),(1708,'2023-04-28 02:57:50','root@localhost','proveedores','ELIMINAR'),(1709,'2023-04-28 02:58:01','root@localhost','productos','INSERCION'),(1710,'2023-04-28 02:58:31','root@localhost','proveedores','INSERCION'),(1711,'2023-04-28 02:59:24','root@localhost','productos','INSERCION'),(1712,'2023-04-28 03:00:09','root@localhost','proveedores','INSERCION'),(1713,'2023-04-28 03:00:36','root@localhost','productos','INSERCION'),(1714,'2023-04-28 03:01:08','root@localhost','proveedores','INSERCION'),(1715,'2023-04-28 03:01:46','root@localhost','productos','INSERCION'),(1716,'2023-04-28 03:02:20','root@localhost','proveedores','INSERCION'),(1717,'2023-04-28 03:03:24','root@localhost','productos','INSERCION'),(1718,'2023-04-28 03:04:28','root@localhost','productos','INSERCION'),(1719,'2023-04-28 03:05:25','root@localhost','proveedores','INSERCION'),(1720,'2023-04-28 03:05:45','root@localhost','productos','INSERCION'),(1721,'2023-04-28 03:06:18','root@localhost','proveedores','INSERCION'),(1722,'2023-04-28 03:07:21','root@localhost','productos','INSERCION'),(1723,'2023-04-28 03:07:48','root@localhost','proveedores','INSERCION'),(1724,'2023-04-28 03:08:31','root@localhost','productos','INSERCION'),(1725,'2023-04-28 03:43:00','root@localhost','proveedores','INSERCION'),(1726,'2023-04-28 03:43:51','root@localhost','productos','INSERCION'),(1727,'2023-04-28 03:43:58','root@localhost','productos','ACTUALIZACION'),(1728,'2023-04-28 03:43:58','root@localhost','productos','ACTUALIZACION'),(1729,'2023-04-28 03:43:59','root@localhost','productos','ACTUALIZACION'),(1730,'2023-04-28 03:43:59','root@localhost','productos','ACTUALIZACION'),(1731,'2023-04-28 03:44:00','root@localhost','productos','ACTUALIZACION'),(1732,'2023-04-28 03:44:01','root@localhost','productos','ACTUALIZACION'),(1733,'2023-04-28 03:44:01','root@localhost','productos','ACTUALIZACION'),(1734,'2023-04-28 03:44:02','root@localhost','productos','ACTUALIZACION'),(1735,'2023-04-28 03:44:11','root@localhost','productos','ACTUALIZACION'),(1736,'2023-04-28 03:44:59','root@localhost','productos','ACTUALIZACION'),(1737,'2023-04-28 18:01:13','root@localhost','clientes','ACTUALIZACION'),(1738,'2023-04-28 18:01:24','root@localhost','clientes','ACTUALIZACION'),(1739,'2023-04-28 18:01:30','root@localhost','clientes','ACTUALIZACION'),(1740,'2023-04-28 18:03:14','root@localhost','productos','INSERCION'),(1741,'2023-04-28 18:03:20','root@localhost','productos','ACTUALIZACION'),(1742,'2023-04-28 18:03:21','root@localhost','productos','ACTUALIZACION'),(1743,'2023-04-28 18:03:21','root@localhost','productos','ACTUALIZACION'),(1744,'2023-04-28 18:03:22','root@localhost','productos','ACTUALIZACION'),(1745,'2023-04-28 18:03:22','root@localhost','productos','ACTUALIZACION'),(1746,'2023-04-28 18:03:37','root@localhost','productos','ACTUALIZACION'),(1747,'2023-04-28 18:03:38','root@localhost','productos','ACTUALIZACION'),(1748,'2023-04-28 18:03:39','root@localhost','productos','ACTUALIZACION'),(1749,'2023-04-28 18:03:39','root@localhost','productos','ACTUALIZACION'),(1750,'2023-04-28 18:03:40','root@localhost','productos','ACTUALIZACION'),(1751,'2023-04-28 18:04:30','root@localhost','productos','INSERCION'),(1752,'2023-04-28 18:04:46','root@localhost','productos','ACTUALIZACION'),(1753,'2023-04-28 18:04:51','root@localhost','productos','ACTUALIZACION'),(1754,'2023-04-28 18:04:51','root@localhost','productos','ACTUALIZACION'),(1755,'2023-04-28 18:04:52','root@localhost','productos','ACTUALIZACION'),(1756,'2023-04-28 18:04:52','root@localhost','productos','ACTUALIZACION'),(1757,'2023-04-28 18:04:52','root@localhost','productos','ACTUALIZACION'),(1758,'2023-04-28 18:04:53','root@localhost','productos','ACTUALIZACION'),(1759,'2023-04-28 18:04:53','root@localhost','productos','ACTUALIZACION'),(1760,'2023-04-28 18:04:53','root@localhost','productos','ACTUALIZACION'),(1761,'2023-04-28 18:04:54','root@localhost','productos','ACTUALIZACION'),(1762,'2023-04-28 18:04:54','root@localhost','productos','ACTUALIZACION'),(1763,'2023-04-28 18:04:54','root@localhost','productos','ACTUALIZACION'),(1764,'2023-04-28 18:04:55','root@localhost','productos','ACTUALIZACION'),(1765,'2023-04-28 18:04:55','root@localhost','productos','ACTUALIZACION'),(1766,'2023-04-28 18:05:01','root@localhost','productos','ACTUALIZACION'),(1767,'2023-04-28 18:05:02','root@localhost','productos','ACTUALIZACION'),(1768,'2023-04-28 18:05:02','root@localhost','productos','ACTUALIZACION'),(1769,'2023-04-28 18:05:03','root@localhost','productos','ACTUALIZACION'),(1770,'2023-04-28 18:05:03','root@localhost','productos','ACTUALIZACION'),(1771,'2023-04-28 18:05:03','root@localhost','productos','ACTUALIZACION'),(1772,'2023-04-28 18:05:04','root@localhost','productos','ACTUALIZACION'),(1773,'2023-04-28 18:05:04','root@localhost','productos','ACTUALIZACION'),(1774,'2023-04-28 18:05:04','root@localhost','productos','ACTUALIZACION'),(1775,'2023-04-28 18:05:05','root@localhost','productos','ACTUALIZACION'),(1776,'2023-04-28 18:05:05','root@localhost','productos','ACTUALIZACION'),(1777,'2023-04-28 18:05:06','root@localhost','productos','ACTUALIZACION'),(1778,'2023-04-28 18:05:06','root@localhost','productos','ACTUALIZACION'),(1779,'2023-04-28 18:05:07','root@localhost','productos','ACTUALIZACION'),(1780,'2023-04-28 18:05:07','root@localhost','productos','ACTUALIZACION'),(1781,'2023-04-28 18:05:07','root@localhost','productos','ACTUALIZACION'),(1782,'2023-04-28 18:05:08','root@localhost','productos','ACTUALIZACION'),(1783,'2023-04-28 18:05:08','root@localhost','productos','ACTUALIZACION'),(1784,'2023-04-28 18:05:08','root@localhost','productos','ACTUALIZACION'),(1785,'2023-04-28 18:05:09','root@localhost','productos','ACTUALIZACION'),(1786,'2023-04-28 18:05:09','root@localhost','productos','ACTUALIZACION'),(1787,'2023-04-28 18:05:10','root@localhost','productos','ACTUALIZACION'),(1788,'2023-04-28 18:05:10','root@localhost','productos','ACTUALIZACION'),(1789,'2023-04-28 18:05:10','root@localhost','productos','ACTUALIZACION'),(1790,'2023-04-28 18:05:30','root@localhost','productos','ACTUALIZACION'),(1791,'2023-04-28 18:05:31','root@localhost','productos','ACTUALIZACION'),(1792,'2023-04-28 18:05:46','root@localhost','productos','ACTUALIZACION'),(1793,'2023-04-28 18:05:55','root@localhost','productos','ACTUALIZACION'),(1794,'2023-04-28 18:06:37','root@localhost','productos','INSERCION'),(1795,'2023-04-28 18:06:44','root@localhost','productos','ACTUALIZACION'),(1796,'2023-04-28 18:07:41','root@localhost','productos','INSERCION'),(1797,'2023-04-28 18:07:51','root@localhost','productos','ACTUALIZACION'),(1798,'2023-04-28 18:07:53','root@localhost','productos','ACTUALIZACION'),(1799,'2023-04-28 18:07:53','root@localhost','productos','ACTUALIZACION'),(1800,'2023-04-28 18:07:54','root@localhost','productos','ACTUALIZACION'),(1801,'2023-04-28 18:07:54','root@localhost','productos','ACTUALIZACION'),(1802,'2023-04-28 18:07:55','root@localhost','productos','ACTUALIZACION'),(1803,'2023-04-28 18:07:55','root@localhost','productos','ACTUALIZACION'),(1804,'2023-04-28 18:07:56','root@localhost','productos','ACTUALIZACION'),(1805,'2023-04-28 18:10:23','root@localhost','productos','ACTUALIZACION'),(1806,'2023-04-28 18:10:24','root@localhost','productos','ACTUALIZACION'),(1807,'2023-04-28 18:10:24','root@localhost','productos','ACTUALIZACION'),(1808,'2023-04-28 18:10:24','root@localhost','productos','ACTUALIZACION'),(1809,'2023-04-28 18:10:24','root@localhost','productos','ACTUALIZACION'),(1810,'2023-04-28 18:10:29','root@localhost','productos','ACTUALIZACION'),(1811,'2023-04-28 18:10:29','root@localhost','productos','ACTUALIZACION'),(1812,'2023-04-28 18:10:30','root@localhost','productos','ACTUALIZACION'),(1813,'2023-04-28 18:10:32','root@localhost','productos','ACTUALIZACION'),(1814,'2023-04-28 18:10:33','root@localhost','productos','ACTUALIZACION'),(1815,'2023-04-28 18:10:33','root@localhost','productos','ACTUALIZACION'),(1816,'2023-04-28 18:10:33','root@localhost','productos','ACTUALIZACION'),(1817,'2023-04-28 18:10:34','root@localhost','productos','ACTUALIZACION'),(1818,'2023-04-28 18:10:34','root@localhost','productos','ACTUALIZACION'),(1819,'2023-04-28 18:10:34','root@localhost','productos','ACTUALIZACION'),(1820,'2023-04-28 18:10:35','root@localhost','productos','ACTUALIZACION'),(1821,'2023-04-28 18:10:35','root@localhost','productos','ACTUALIZACION'),(1822,'2023-04-28 18:10:49','root@localhost','productos','ACTUALIZACION'),(1823,'2023-04-28 18:10:49','root@localhost','productos','ACTUALIZACION'),(1824,'2023-04-28 18:10:50','root@localhost','productos','ACTUALIZACION'),(1825,'2023-04-28 18:12:07','root@localhost','ventas','INSERCION'),(1826,'2023-04-28 18:36:16','root@localhost','clientes','ACTUALIZACION'),(1827,'2023-04-28 18:37:33','root@localhost','clientes','ELIMINAR'),(1828,'2023-04-28 18:56:07','root@localhost','productos','ACTUALIZACION'),(1829,'2023-04-28 18:56:08','root@localhost','productos','ACTUALIZACION'),(1830,'2023-04-28 18:56:09','root@localhost','productos','ACTUALIZACION'),(1831,'2023-04-28 18:56:13','root@localhost','productos','ACTUALIZACION'),(1832,'2023-04-28 18:56:16','root@localhost','productos','ACTUALIZACION'),(1833,'2023-04-28 18:56:20','root@localhost','productos','ACTUALIZACION'),(1834,'2023-04-30 23:59:20','root@localhost','productos','ACTUALIZACION'),(1835,'2023-04-30 23:59:50','root@localhost','productos','ACTUALIZACION'),(1836,'2023-04-30 23:59:50','root@localhost','productos','ACTUALIZACION'),(1837,'2023-05-01 01:45:26','root@localhost','productos','ACTUALIZACION'),(1838,'2023-05-01 01:45:38','root@localhost','productos','ACTUALIZACION'),(1839,'2023-05-01 01:51:27','root@localhost','productos','ACTUALIZACION'),(1840,'2023-05-01 01:53:27','root@localhost','productos','ACTUALIZACION'),(1841,'2023-05-01 01:54:57','root@localhost','productos','ACTUALIZACION'),(1842,'2023-05-01 01:55:01','root@localhost','productos','ACTUALIZACION'),(1843,'2023-05-01 01:56:05','root@localhost','productos','ACTUALIZACION'),(1844,'2023-05-01 01:58:22','root@localhost','productos','ACTUALIZACION'),(1845,'2023-05-01 02:17:25','root@localhost','productos','ACTUALIZACION'),(1846,'2023-05-01 02:19:42','root@localhost','productos','ACTUALIZACION'),(1847,'2023-05-01 02:19:51','root@localhost','productos','ACTUALIZACION'),(1848,'2023-05-01 02:19:55','root@localhost','productos','ACTUALIZACION'),(1849,'2023-05-01 02:25:31','root@localhost','productos','ACTUALIZACION'),(1850,'2023-05-01 03:40:52','root@localhost','productos','ACTUALIZACION'),(1851,'2023-05-01 03:41:21','root@localhost','productos','ACTUALIZACION'),(1852,'2023-05-01 05:03:07','root@localhost','productos','ACTUALIZACION'),(1853,'2023-05-01 05:03:09','root@localhost','productos','ACTUALIZACION'),(1854,'2023-05-01 05:03:10','root@localhost','productos','ACTUALIZACION'),(1855,'2023-05-01 05:03:18','root@localhost','productos','ACTUALIZACION'),(1856,'2023-05-01 05:03:19','root@localhost','productos','ACTUALIZACION'),(1857,'2023-05-01 05:07:19','root@localhost','productos','ACTUALIZACION'),(1858,'2023-05-01 05:07:20','root@localhost','productos','ACTUALIZACION'),(1859,'2023-05-01 05:07:21','root@localhost','productos','ACTUALIZACION'),(1860,'2023-05-01 05:07:21','root@localhost','productos','ACTUALIZACION'),(1861,'2023-05-01 05:07:22','root@localhost','productos','ACTUALIZACION'),(1862,'2023-05-01 05:07:23','root@localhost','productos','ACTUALIZACION'),(1863,'2023-05-01 05:07:23','root@localhost','productos','ACTUALIZACION'),(1864,'2023-05-01 05:07:23','root@localhost','productos','ACTUALIZACION'),(1865,'2023-05-01 05:07:27','root@localhost','ventas','INSERCION'),(1866,'2023-05-01 05:10:26','root@localhost','productos','ACTUALIZACION'),(1867,'2023-05-01 05:10:27','root@localhost','productos','ACTUALIZACION'),(1868,'2023-05-01 05:10:29','root@localhost','productos','ACTUALIZACION'),(1869,'2023-05-01 05:10:34','root@localhost','productos','ACTUALIZACION'),(1870,'2023-05-01 05:10:35','root@localhost','productos','ACTUALIZACION'),(1871,'2023-05-01 05:10:39','root@localhost','ventas','INSERCION'),(1872,'2023-05-01 05:19:57','root@localhost','productos','ACTUALIZACION'),(1873,'2023-05-01 05:19:59','root@localhost','productos','ACTUALIZACION'),(1874,'2023-05-01 05:20:08','root@localhost','ventas','INSERCION'),(1875,'2023-05-02 03:20:21','root@localhost','productos','ACTUALIZACION'),(1876,'2023-05-02 03:20:40','root@localhost','productos','ACTUALIZACION'),(1877,'2023-05-02 03:22:17','root@localhost','productos','ACTUALIZACION'),(1878,'2023-05-02 03:23:31','root@localhost','productos','ACTUALIZACION'),(1879,'2023-05-02 03:23:46','root@localhost','productos','ACTUALIZACION'),(1880,'2023-05-02 03:24:30','root@localhost','productos','ACTUALIZACION'),(1881,'2023-05-02 03:25:42','root@localhost','productos','ACTUALIZACION'),(1882,'2023-05-02 03:26:28','root@localhost','productos','ACTUALIZACION'),(1883,'2023-05-02 03:26:45','root@localhost','productos','ACTUALIZACION'),(1884,'2023-05-02 03:27:01','root@localhost','productos','ACTUALIZACION'),(1885,'2023-05-02 03:27:15','root@localhost','productos','ACTUALIZACION'),(1886,'2023-05-02 03:28:14','root@localhost','productos','ACTUALIZACION'),(1887,'2023-05-02 03:28:39','root@localhost','productos','ACTUALIZACION'),(1888,'2023-05-02 03:28:53','root@localhost','productos','ACTUALIZACION'),(1889,'2023-05-02 03:29:37','root@localhost','productos','ACTUALIZACION'),(1890,'2023-05-02 03:29:48','root@localhost','productos','ACTUALIZACION'),(1891,'2023-05-02 03:30:11','root@localhost','productos','ACTUALIZACION'),(1892,'2023-05-02 03:30:26','root@localhost','productos','ACTUALIZACION'),(1893,'2023-05-02 03:31:51','root@localhost','productos','ACTUALIZACION'),(1894,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1895,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1896,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1897,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1898,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1899,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1900,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1901,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1902,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1903,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1904,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1905,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1906,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1907,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1908,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1909,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1910,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1911,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1912,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1913,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1914,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1915,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1916,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1917,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1918,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1919,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1920,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1921,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1922,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1923,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1924,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1925,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1926,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1927,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1928,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1929,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1930,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1931,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1932,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1933,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1934,'2023-05-02 03:33:09','root@localhost','productos','ACTUALIZACION'),(1935,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1936,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1937,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1938,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1939,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1940,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1941,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1942,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1943,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1944,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1945,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1946,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1947,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1948,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1949,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1950,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1951,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1952,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1953,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1954,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1955,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1956,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1957,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1958,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1959,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1960,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1961,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1962,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1963,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1964,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1965,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1966,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1967,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1968,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1969,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1970,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1971,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1972,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1973,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1974,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1975,'2023-05-02 03:33:39','root@localhost','productos','ACTUALIZACION'),(1976,'2023-05-02 03:33:44','root@localhost','productos','ACTUALIZACION'),(1977,'2023-05-02 03:34:24','root@localhost','productos','ACTUALIZACION'),(1978,'2023-05-02 03:34:24','root@localhost','productos','ACTUALIZACION'),(1979,'2023-05-02 03:34:35','root@localhost','productos','ACTUALIZACION'),(1980,'2023-05-02 03:34:35','root@localhost','productos','ACTUALIZACION'),(1981,'2023-05-02 03:37:30','root@localhost','productos','ACTUALIZACION'),(1982,'2023-05-02 03:39:03','root@localhost','productos','ACTUALIZACION'),(1983,'2023-05-02 03:39:50','root@localhost','productos','ACTUALIZACION'),(1984,'2023-05-02 03:41:05','root@localhost','productos','ACTUALIZACION'),(1985,'2023-05-02 03:41:31','root@localhost','productos','ACTUALIZACION'),(1986,'2023-05-02 03:41:31','root@localhost','productos','ACTUALIZACION'),(1987,'2023-05-02 03:41:43','root@localhost','productos','ACTUALIZACION'),(1988,'2023-05-02 03:41:43','root@localhost','productos','ACTUALIZACION'),(1989,'2023-05-02 03:42:16','root@localhost','productos','ACTUALIZACION'),(1990,'2023-05-02 03:42:16','root@localhost','productos','ACTUALIZACION'),(1991,'2023-05-02 03:42:39','root@localhost','productos','ACTUALIZACION'),(1992,'2023-05-02 03:42:39','root@localhost','productos','ACTUALIZACION'),(1993,'2023-05-02 03:43:03','root@localhost','productos','ACTUALIZACION'),(1994,'2023-05-02 03:43:03','root@localhost','productos','ACTUALIZACION'),(1995,'2023-05-02 03:43:18','root@localhost','productos','ACTUALIZACION'),(1996,'2023-05-02 03:43:18','root@localhost','productos','ACTUALIZACION'),(1997,'2023-05-02 03:43:31','root@localhost','productos','ACTUALIZACION'),(1998,'2023-05-02 03:43:31','root@localhost','productos','ACTUALIZACION'),(1999,'2023-05-02 03:43:39','root@localhost','productos','ACTUALIZACION'),(2000,'2023-05-02 03:43:39','root@localhost','productos','ACTUALIZACION'),(2001,'2023-05-02 03:43:48','root@localhost','productos','ACTUALIZACION'),(2002,'2023-05-02 03:43:48','root@localhost','productos','ACTUALIZACION'),(2003,'2023-05-02 03:44:33','root@localhost','productos','ACTUALIZACION'),(2004,'2023-05-02 03:44:33','root@localhost','productos','ACTUALIZACION'),(2005,'2023-05-02 03:44:44','root@localhost','productos','ACTUALIZACION'),(2006,'2023-05-02 03:44:44','root@localhost','productos','ACTUALIZACION'),(2007,'2023-05-02 03:45:56','root@localhost','productos','ACTUALIZACION'),(2008,'2023-05-02 03:45:56','root@localhost','productos','ACTUALIZACION'),(2009,'2023-05-02 03:46:48','root@localhost','productos','ACTUALIZACION'),(2010,'2023-05-02 03:46:48','root@localhost','productos','ACTUALIZACION'),(2011,'2023-05-02 03:47:03','root@localhost','productos','ACTUALIZACION'),(2012,'2023-05-02 03:47:03','root@localhost','productos','ACTUALIZACION'),(2013,'2023-05-02 03:47:11','root@localhost','productos','ACTUALIZACION'),(2014,'2023-05-02 03:47:11','root@localhost','productos','ACTUALIZACION'),(2015,'2023-05-02 03:47:35','root@localhost','productos','ACTUALIZACION'),(2016,'2023-05-02 03:47:35','root@localhost','productos','ACTUALIZACION'),(2017,'2023-05-02 03:47:52','root@localhost','productos','ACTUALIZACION'),(2018,'2023-05-02 03:47:52','root@localhost','productos','ACTUALIZACION'),(2019,'2023-05-02 03:48:03','root@localhost','productos','ACTUALIZACION'),(2020,'2023-05-02 03:48:03','root@localhost','productos','ACTUALIZACION'),(2021,'2023-05-02 03:48:20','root@localhost','productos','ACTUALIZACION'),(2022,'2023-05-02 03:48:20','root@localhost','productos','ACTUALIZACION'),(2023,'2023-05-02 03:48:28','root@localhost','productos','ACTUALIZACION'),(2024,'2023-05-02 03:48:28','root@localhost','productos','ACTUALIZACION'),(2025,'2023-05-02 03:48:46','root@localhost','productos','ACTUALIZACION'),(2026,'2023-05-02 03:48:46','root@localhost','productos','ACTUALIZACION'),(2027,'2023-05-02 03:49:46','root@localhost','proveedores','ELIMINAR'),(2028,'2023-05-02 03:49:47','root@localhost','productos','ACTUALIZACION'),(2029,'2023-05-02 03:49:57','root@localhost','productos','ACTUALIZACION'),(2030,'2023-05-02 03:50:29','root@localhost','productos','ACTUALIZACION'),(2031,'2023-05-02 03:50:29','root@localhost','productos','ACTUALIZACION'),(2032,'2023-05-02 03:50:40','root@localhost','productos','ACTUALIZACION'),(2033,'2023-05-02 03:50:40','root@localhost','productos','ACTUALIZACION'),(2034,'2023-05-02 03:50:56','root@localhost','productos','ACTUALIZACION'),(2035,'2023-05-02 03:50:56','root@localhost','productos','ACTUALIZACION'),(2036,'2023-05-02 03:51:02','root@localhost','productos','ACTUALIZACION'),(2037,'2023-05-02 03:51:02','root@localhost','productos','ACTUALIZACION'),(2038,'2023-05-02 03:51:14','root@localhost','productos','ACTUALIZACION'),(2039,'2023-05-02 03:51:14','root@localhost','productos','ACTUALIZACION'),(2040,'2023-05-02 03:51:27','root@localhost','productos','ACTUALIZACION'),(2041,'2023-05-02 03:51:27','root@localhost','productos','ACTUALIZACION'),(2042,'2023-05-02 03:51:34','root@localhost','productos','ACTUALIZACION'),(2043,'2023-05-02 03:51:34','root@localhost','productos','ACTUALIZACION'),(2044,'2023-05-02 03:51:45','root@localhost','productos','ACTUALIZACION'),(2045,'2023-05-02 03:51:45','root@localhost','productos','ACTUALIZACION'),(2046,'2023-05-02 03:52:01','root@localhost','productos','ACTUALIZACION'),(2047,'2023-05-02 03:52:01','root@localhost','productos','ACTUALIZACION'),(2048,'2023-05-02 03:53:52','root@localhost','productos','ACTUALIZACION'),(2049,'2023-05-02 03:53:52','root@localhost','productos','ACTUALIZACION'),(2050,'2023-05-02 03:54:00','root@localhost','productos','ACTUALIZACION'),(2051,'2023-05-02 03:54:00','root@localhost','productos','ACTUALIZACION'),(2052,'2023-05-02 03:54:10','root@localhost','productos','ACTUALIZACION'),(2053,'2023-05-02 03:54:10','root@localhost','productos','ACTUALIZACION'),(2054,'2023-05-02 03:55:18','root@localhost','productos','ACTUALIZACION'),(2055,'2023-05-02 03:55:18','root@localhost','productos','ACTUALIZACION'),(2056,'2023-05-02 03:55:38','root@localhost','productos','ACTUALIZACION'),(2057,'2023-05-02 03:55:38','root@localhost','productos','ACTUALIZACION'),(2058,'2023-05-02 03:55:49','root@localhost','productos','ACTUALIZACION'),(2059,'2023-05-02 03:55:49','root@localhost','productos','ACTUALIZACION'),(2060,'2023-05-02 03:56:12','root@localhost','productos','ACTUALIZACION'),(2061,'2023-05-02 03:56:12','root@localhost','productos','ACTUALIZACION'),(2062,'2023-05-02 03:56:41','root@localhost','productos','ACTUALIZACION'),(2063,'2023-05-02 03:56:41','root@localhost','productos','ACTUALIZACION'),(2064,'2023-05-02 03:56:53','root@localhost','productos','ACTUALIZACION'),(2065,'2023-05-02 03:56:53','root@localhost','productos','ACTUALIZACION'),(2066,'2023-05-02 03:57:17','root@localhost','productos','ACTUALIZACION'),(2067,'2023-05-02 03:57:17','root@localhost','productos','ACTUALIZACION'),(2068,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2069,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2070,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2071,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2072,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2073,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2074,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2075,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2076,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2077,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2078,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2079,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2080,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2081,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2082,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2083,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2084,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2085,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2086,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2087,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2088,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2089,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2090,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2091,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2092,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2093,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2094,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2095,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2096,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2097,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2098,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2099,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2100,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2101,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2102,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2103,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2104,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2105,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2106,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2107,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2108,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2109,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2110,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2111,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2112,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2113,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2114,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2115,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2116,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2117,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2118,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2119,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2120,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2121,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2122,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2123,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2124,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2125,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2126,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2127,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2128,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2129,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2130,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2131,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2132,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2133,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2134,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2135,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2136,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2137,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2138,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2139,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2140,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2141,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2142,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2143,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2144,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2145,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2146,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2147,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2148,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2149,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2150,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2151,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2152,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2153,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2154,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2155,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2156,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2157,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2158,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2159,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2160,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2161,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2162,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2163,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2164,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2165,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2166,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2167,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2168,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2169,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2170,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2171,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2172,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2173,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2174,'2023-05-02 04:06:01','root@localhost','usuarios','ACTUALIZACION'),(2175,'2023-05-02 04:06:01','root@localhost','clientes','ACTUALIZACION'),(2176,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2177,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2178,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2179,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2180,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2181,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2182,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2183,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2184,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2185,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2186,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2187,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2188,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2189,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2190,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2191,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2192,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2193,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2194,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2195,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2196,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2197,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2198,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2199,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2200,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2201,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2202,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2203,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2204,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2205,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2206,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2207,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2208,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2209,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2210,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2211,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2212,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2213,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2214,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2215,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2216,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2217,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2218,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2219,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2220,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2221,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2222,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2223,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2224,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2225,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2226,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2227,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2228,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2229,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2230,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2231,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2232,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2233,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2234,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2235,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2236,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2237,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2238,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2239,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2240,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2241,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2242,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2243,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2244,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2245,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2246,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2247,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2248,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2249,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2250,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2251,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2252,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2253,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2254,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2255,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2256,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2257,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2258,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2259,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2260,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2261,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2262,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2263,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2264,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2265,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2266,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2267,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2268,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2269,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2270,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2271,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2272,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2273,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2274,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2275,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2276,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2277,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2278,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2279,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2280,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2281,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2282,'2023-05-02 04:06:57','root@localhost','usuarios','ACTUALIZACION'),(2283,'2023-05-02 04:06:57','root@localhost','clientes','ACTUALIZACION'),(2296,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2297,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2298,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2299,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2300,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2301,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2302,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2303,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2304,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2305,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2306,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2307,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2308,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2309,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2310,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2311,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2312,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2313,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2314,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2315,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2316,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2317,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2318,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2319,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2320,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2321,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2322,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2323,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2324,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2325,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2326,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2327,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2328,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2329,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2330,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2331,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2332,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2333,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2334,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2335,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2336,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2337,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2338,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2339,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2340,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2341,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2342,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2343,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2344,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2345,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2346,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2347,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2348,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2349,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2350,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2351,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2352,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2353,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2354,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2355,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2356,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2357,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2358,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2359,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2360,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2361,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2362,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2363,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2364,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2365,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2366,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2367,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2368,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2369,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2370,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2371,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2372,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2373,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2374,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2375,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2376,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2377,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2378,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2379,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2380,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2381,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2382,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2383,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2384,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2385,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2386,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2387,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2388,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2389,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2390,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2391,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2392,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2393,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2394,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2395,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2396,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2397,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2398,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2399,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2400,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2401,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2402,'2023-05-02 04:07:47','root@localhost','usuarios','ACTUALIZACION'),(2403,'2023-05-02 04:07:47','root@localhost','clientes','ACTUALIZACION'),(2454,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2455,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2456,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2457,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2458,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2459,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2460,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2461,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2462,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2463,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2464,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2465,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2466,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2467,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2468,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2469,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2470,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2471,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2472,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2473,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2474,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2475,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2476,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2477,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2478,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2479,'2023-05-02 04:26:12','root@localhost','ventas','ELIMINAR'),(2480,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2481,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2482,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2483,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2484,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2485,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2486,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2487,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2488,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2489,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2490,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2491,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2492,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2493,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2494,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2495,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2496,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2497,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2498,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2499,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2500,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2501,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2502,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2503,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2504,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2505,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2506,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2507,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2508,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2509,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2510,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2511,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2512,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2513,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2514,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2515,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2516,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2517,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2518,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2519,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2520,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2521,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2522,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2523,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2524,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2525,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2526,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2527,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2528,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2529,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2530,'2023-05-02 04:26:12','root@localhost','empleados','ELIMINAR'),(2531,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2532,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2533,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2534,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2535,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2536,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2537,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2538,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2539,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2540,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2541,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2542,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2543,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2544,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2545,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2546,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2547,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2548,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2549,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2550,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2551,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2552,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2553,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2554,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2555,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2556,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2557,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2558,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2559,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2560,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2561,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2562,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2563,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2564,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2565,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2566,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2567,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2568,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2569,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2570,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2571,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2572,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2573,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2574,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2575,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2576,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2577,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2578,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2579,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2580,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2581,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2582,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2583,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2584,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2585,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2586,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2587,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2588,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2589,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2590,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2591,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2592,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2593,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2594,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2595,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2596,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2597,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2598,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2599,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2600,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2601,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2602,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2603,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2604,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2605,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2606,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2607,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2608,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2609,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2610,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2611,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2612,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2613,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2614,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2615,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2616,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2617,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2618,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2619,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2620,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2621,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2622,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2623,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2624,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2625,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2626,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2627,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2628,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2629,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2630,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2631,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2632,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2633,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2634,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2635,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2636,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2637,'2023-05-02 04:26:22','root@localhost','usuarios','ACTUALIZACION'),(2638,'2023-05-02 04:26:22','root@localhost','clientes','ACTUALIZACION'),(2639,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2640,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2641,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2642,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2643,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2644,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2645,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2646,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2647,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2648,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2649,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2650,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2651,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2652,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2653,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2654,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2655,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2656,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2657,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2658,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2659,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2660,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2661,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2662,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2663,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2664,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2665,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2666,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2667,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2668,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2669,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2670,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2671,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2672,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2673,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2674,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2675,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2676,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2677,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2678,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2679,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2680,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2681,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2682,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2683,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2684,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2685,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2686,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2687,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2688,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2689,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2690,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2691,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2692,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2693,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2694,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2695,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2696,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2697,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2698,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2699,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2700,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2701,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2702,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2703,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2704,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2705,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2706,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2707,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2708,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2709,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2710,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2711,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2712,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2713,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2714,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2715,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2716,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2717,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2718,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2719,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2720,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2721,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2722,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2723,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2724,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2725,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2726,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2727,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2728,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2729,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2730,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2731,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2732,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2733,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2734,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2735,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2736,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2737,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2738,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2739,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2740,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2741,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2742,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2743,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2744,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2745,'2023-05-02 04:26:34','root@localhost','usuarios','ACTUALIZACION'),(2746,'2023-05-02 04:26:34','root@localhost','clientes','ACTUALIZACION'),(2749,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2750,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2751,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2752,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2753,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2754,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2755,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2756,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2757,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2758,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2759,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2760,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2761,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2762,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2763,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2764,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2765,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2766,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2767,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2768,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2769,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2770,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2771,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2772,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2773,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2774,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2775,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2776,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2777,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2778,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2779,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2780,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2781,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2782,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2783,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2784,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2785,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2786,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2787,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2788,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2789,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2790,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2791,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2792,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2793,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2794,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2795,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2796,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2797,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2798,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2799,'2023-05-02 04:37:46','root@localhost','empleados','INSERCION'),(2800,'2023-05-02 04:37:57','root@localhost','productos','ACTUALIZACION'),(2801,'2023-05-02 14:37:43','root@localhost','productos','ACTUALIZACION'),(2802,'2023-05-02 14:39:00','root@localhost','productos','ACTUALIZACION'),(2803,'2023-05-02 14:39:01','root@localhost','productos','ACTUALIZACION'),(2804,'2023-05-02 14:39:01','root@localhost','productos','ACTUALIZACION'),(2805,'2023-05-02 14:43:07','root@localhost','productos','ACTUALIZACION'),(2806,'2023-05-02 14:43:16','root@localhost','productos','ACTUALIZACION'),(2807,'2023-05-02 14:43:23','root@localhost','productos','ACTUALIZACION'),(2808,'2023-05-02 14:43:24','root@localhost','productos','ACTUALIZACION'),(2809,'2023-05-02 14:47:34','root@localhost','usuarios','ELIMINAR'),(2810,'2023-05-02 14:47:34','root@localhost','clientes','ELIMINAR'),(2811,'2023-05-02 14:47:40','root@localhost','usuarios','ELIMINAR'),(2812,'2023-05-02 14:47:40','root@localhost','clientes','ELIMINAR'),(2813,'2023-05-02 14:47:43','root@localhost','usuarios','ELIMINAR'),(2814,'2023-05-02 14:47:43','root@localhost','clientes','ELIMINAR'),(2815,'2023-05-02 14:55:30','root@localhost','usuarios','ACTUALIZACION'),(2816,'2023-05-02 14:55:30','root@localhost','clientes','ACTUALIZACION'),(2817,'2023-05-02 14:55:50','root@localhost','productos','ACTUALIZACION'),(2818,'2023-05-02 14:56:57','root@localhost','productos','ACTUALIZACION'),(2819,'2023-05-02 14:57:26','root@localhost','productos','ACTUALIZACION'),(2820,'2023-05-02 14:57:32','root@localhost','productos','ACTUALIZACION'),(2821,'2023-05-02 14:57:32','root@localhost','productos','ACTUALIZACION'),(2822,'2023-05-02 15:02:12','root@localhost','productos','ACTUALIZACION'),(2823,'2023-05-02 15:02:20','root@localhost','productos','ACTUALIZACION'),(2824,'2023-05-02 15:02:20','root@localhost','productos','ACTUALIZACION'),(2825,'2023-05-02 15:02:21','root@localhost','ventas','INSERCION'),(2826,'2023-05-02 15:03:41','root@localhost','productos','ACTUALIZACION'),(2827,'2023-05-02 15:03:41','root@localhost','productos','ACTUALIZACION'),(2828,'2023-05-02 15:03:41','root@localhost','productos','ACTUALIZACION'),(2829,'2023-05-02 15:03:42','root@localhost','ventas','INSERCION'),(2830,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2831,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2832,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2833,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2834,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2835,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2836,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2837,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2838,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2839,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2840,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2841,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2842,'2023-05-02 15:44:24','root@localhost','productos','ACTUALIZACION'),(2843,'2023-05-02 15:44:34','root@localhost','productos','ACTUALIZACION'),(2844,'2023-05-02 15:44:44','root@localhost','productos','ACTUALIZACION'),(2845,'2023-05-02 15:44:44','root@localhost','productos','ACTUALIZACION'),(2846,'2023-05-02 15:44:44','root@localhost','productos','ACTUALIZACION'),(2847,'2023-05-02 15:44:58','root@localhost','productos','ACTUALIZACION'),(2848,'2023-05-02 15:45:10','root@localhost','productos','ACTUALIZACION'),(2849,'2023-05-02 15:45:13','root@localhost','productos','ACTUALIZACION'),(2850,'2023-05-02 15:45:28','root@localhost','productos','ACTUALIZACION'),(2851,'2023-05-02 15:52:10','root@localhost','productos','ACTUALIZACION'),(2852,'2023-05-02 15:56:45','root@localhost','productos','ACTUALIZACION'),(2853,'2023-05-02 15:58:05','root@localhost','productos','ACTUALIZACION'),(2854,'2023-05-02 15:58:55','root@localhost','productos','ACTUALIZACION'),(2855,'2023-05-02 16:00:02','root@localhost','productos','ACTUALIZACION'),(2856,'2023-05-02 16:00:06','root@localhost','productos','ACTUALIZACION'),(2857,'2023-05-02 16:00:06','root@localhost','productos','ACTUALIZACION'),(2858,'2023-05-02 16:04:22','root@localhost','productos','ACTUALIZACION'),(2859,'2023-05-02 16:33:18','root@localhost','productos','ACTUALIZACION'),(2860,'2023-05-02 16:37:55','root@localhost','productos','ACTUALIZACION'),(2861,'2023-05-02 16:37:56','root@localhost','productos','ACTUALIZACION'),(2862,'2023-05-02 16:37:56','root@localhost','productos','ACTUALIZACION'),(2863,'2023-05-02 16:37:56','root@localhost','productos','ACTUALIZACION'),(2864,'2023-05-02 16:37:56','root@localhost','productos','ACTUALIZACION'),(2865,'2023-05-02 16:37:57','root@localhost','productos','ACTUALIZACION'),(2866,'2023-05-02 16:37:57','root@localhost','productos','ACTUALIZACION'),(2867,'2023-05-02 16:37:57','root@localhost','productos','ACTUALIZACION'),(2868,'2023-05-02 16:37:58','root@localhost','productos','ACTUALIZACION'),(2869,'2023-05-02 16:37:58','root@localhost','productos','ACTUALIZACION'),(2870,'2023-05-02 16:37:58','root@localhost','productos','ACTUALIZACION'),(2871,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2872,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2873,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2874,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2875,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2876,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2877,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2878,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2879,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2880,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2881,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2882,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2883,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2884,'2023-05-02 16:37:59','root@localhost','productos','ACTUALIZACION'),(2885,'2023-05-02 16:38:02','root@localhost','productos','ACTUALIZACION'),(2886,'2023-05-02 16:38:09','root@localhost','productos','ACTUALIZACION'),(2887,'2023-05-02 16:38:12','root@localhost','productos','ACTUALIZACION'),(2888,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2889,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2890,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2891,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2892,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2893,'2023-05-02 16:38:13','root@localhost','productos','ACTUALIZACION'),(2894,'2023-05-02 16:38:34','root@localhost','productos','ACTUALIZACION'),(2895,'2023-05-02 16:38:38','root@localhost','productos','ACTUALIZACION'),(2896,'2023-05-02 16:39:25','root@localhost','productos','ACTUALIZACION'),(2897,'2023-05-02 16:39:58','root@localhost','productos','ACTUALIZACION'),(2898,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2899,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2900,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2901,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2902,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2903,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2904,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2905,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2906,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2907,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2908,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2909,'2023-05-02 16:39:59','root@localhost','productos','ACTUALIZACION'),(2910,'2023-05-02 16:40:53','root@localhost','productos','ACTUALIZACION'),(2911,'2023-05-02 17:08:37','root@localhost','productos','ACTUALIZACION'),(2912,'2023-05-02 17:11:09','root@localhost','productos','ACTUALIZACION'),(2913,'2023-05-02 17:12:37','root@localhost','productos','ACTUALIZACION'),(2914,'2023-05-02 17:13:06','root@localhost','productos','ACTUALIZACION'),(2915,'2023-05-02 17:13:50','root@localhost','productos','ACTUALIZACION'),(2916,'2023-05-02 17:14:04','root@localhost','productos','ACTUALIZACION'),(2917,'2023-05-02 17:14:16','root@localhost','productos','ACTUALIZACION'),(2918,'2023-05-02 17:14:21','root@localhost','productos','ACTUALIZACION'),(2919,'2023-05-02 17:15:16','root@localhost','productos','ACTUALIZACION'),(2920,'2023-05-02 17:15:30','root@localhost','productos','ACTUALIZACION'),(2921,'2023-05-02 17:15:47','root@localhost','productos','ACTUALIZACION'),(2922,'2023-05-02 17:15:47','root@localhost','productos','ACTUALIZACION'),(2923,'2023-05-02 17:16:04','root@localhost','productos','ACTUALIZACION'),(2924,'2023-05-02 17:16:21','root@localhost','productos','ACTUALIZACION'),(2925,'2023-05-02 17:22:46','root@localhost','productos','ACTUALIZACION'),(2926,'2023-05-02 17:23:43','root@localhost','productos','ACTUALIZACION'),(2927,'2023-05-02 17:24:46','root@localhost','productos','ACTUALIZACION'),(2928,'2023-05-02 17:24:50','root@localhost','productos','ACTUALIZACION'),(2929,'2023-05-02 17:24:50','root@localhost','productos','ACTUALIZACION'),(2930,'2023-05-02 17:24:51','root@localhost','productos','ACTUALIZACION'),(2931,'2023-05-02 17:24:51','root@localhost','productos','ACTUALIZACION'),(2932,'2023-05-02 17:24:59','root@localhost','ventas','INSERCION'),(2933,'2023-05-02 17:25:46','root@localhost','productos','ACTUALIZACION'),(2934,'2023-05-02 17:25:50','root@localhost','productos','ACTUALIZACION'),(2935,'2023-05-02 17:25:53','root@localhost','productos','ACTUALIZACION'),(2936,'2023-05-02 17:26:27','root@localhost','productos','ACTUALIZACION'),(2937,'2023-05-02 17:26:27','root@localhost','productos','ACTUALIZACION'),(2938,'2023-05-02 17:26:28','root@localhost','productos','ACTUALIZACION'),(2939,'2023-05-02 17:26:30','root@localhost','productos','ACTUALIZACION'),(2940,'2023-05-02 17:26:34','root@localhost','ventas','INSERCION'),(2941,'2023-05-02 17:26:37','root@localhost','productos','ACTUALIZACION'),(2942,'2023-05-02 17:31:09','root@localhost','productos','ACTUALIZACION'),(2943,'2023-05-02 17:31:21','root@localhost','productos','ACTUALIZACION'),(2944,'2023-05-02 17:31:21','root@localhost','productos','ACTUALIZACION'),(2945,'2023-05-02 17:31:22','root@localhost','productos','ACTUALIZACION'),(2946,'2023-05-02 17:31:22','root@localhost','productos','ACTUALIZACION'),(2947,'2023-05-02 17:31:25','root@localhost','productos','ACTUALIZACION'),(2948,'2023-05-02 17:31:38','root@localhost','productos','ACTUALIZACION'),(2949,'2023-05-02 17:31:38','root@localhost','productos','ACTUALIZACION'),(2950,'2023-05-02 17:31:39','root@localhost','productos','ACTUALIZACION'),(2951,'2023-05-02 17:31:40','root@localhost','productos','ACTUALIZACION'),(2952,'2023-05-02 17:31:43','root@localhost','productos','ACTUALIZACION'),(2953,'2023-05-02 17:31:44','root@localhost','productos','ACTUALIZACION'),(2954,'2023-05-02 17:31:44','root@localhost','productos','ACTUALIZACION'),(2955,'2023-05-02 17:31:44','root@localhost','productos','ACTUALIZACION'),(2956,'2023-05-02 17:31:45','root@localhost','productos','ACTUALIZACION'),(2957,'2023-05-02 17:31:45','root@localhost','productos','ACTUALIZACION'),(2958,'2023-05-02 17:31:46','root@localhost','productos','ACTUALIZACION'),(2959,'2023-05-02 17:31:53','root@localhost','productos','ACTUALIZACION'),(2960,'2023-05-02 17:31:53','root@localhost','productos','ACTUALIZACION'),(2961,'2023-05-02 17:31:54','root@localhost','productos','ACTUALIZACION'),(2962,'2023-05-02 17:31:55','root@localhost','productos','ACTUALIZACION'),(2963,'2023-05-02 17:31:55','root@localhost','productos','ACTUALIZACION'),(2964,'2023-05-02 17:32:05','root@localhost','productos','ACTUALIZACION'),(2965,'2023-05-02 17:33:13','root@localhost','productos','ACTUALIZACION'),(2966,'2023-05-02 17:33:45','root@localhost','productos','ACTUALIZACION'),(2967,'2023-05-02 17:33:49','root@localhost','productos','ACTUALIZACION'),(2968,'2023-05-02 17:35:37','root@localhost','productos','ACTUALIZACION'),(2969,'2023-05-02 17:35:39','root@localhost','productos','ACTUALIZACION'),(2970,'2023-05-02 22:15:02','root@localhost','productos','ACTUALIZACION'),(2971,'2023-05-02 22:36:49','root@localhost','productos','ACTUALIZACION'),(2972,'2023-05-02 22:36:56','root@localhost','productos','ACTUALIZACION'),(2973,'2023-05-02 22:36:58','root@localhost','productos','ACTUALIZACION'),(2974,'2023-05-02 22:36:59','root@localhost','productos','ACTUALIZACION'),(2975,'2023-05-02 22:36:59','root@localhost','productos','ACTUALIZACION'),(2976,'2023-05-02 22:37:00','root@localhost','productos','ACTUALIZACION'),(2977,'2023-05-02 22:37:03','root@localhost','productos','ACTUALIZACION'),(2978,'2023-05-02 22:37:10','root@localhost','productos','ACTUALIZACION'),(2979,'2023-05-02 23:05:22','root@localhost','productos','ACTUALIZACION'),(2980,'2023-05-02 23:08:51','root@localhost','productos','ACTUALIZACION'),(2981,'2023-05-02 23:09:00','root@localhost','productos','ACTUALIZACION'),(2982,'2023-05-02 23:09:13','root@localhost','productos','ACTUALIZACION'),(2983,'2023-05-02 23:09:16','root@localhost','productos','ACTUALIZACION'),(2984,'2023-05-02 23:09:17','root@localhost','productos','ACTUALIZACION'),(2985,'2023-05-02 23:09:20','root@localhost','productos','ACTUALIZACION'),(2986,'2023-05-02 23:09:28','root@localhost','productos','ACTUALIZACION'),(2987,'2023-05-02 23:09:30','root@localhost','productos','ACTUALIZACION'),(2988,'2023-05-02 23:09:52','root@localhost','ventas','INSERCION'),(2989,'2023-05-03 01:40:42','root@localhost','productos','ACTUALIZACION'),(2990,'2023-05-03 01:43:26','root@localhost','productos','ACTUALIZACION'),(2991,'2023-05-03 01:45:16','root@localhost','productos','ACTUALIZACION'),(2992,'2023-05-03 01:46:09','root@localhost','productos','ACTUALIZACION'),(2993,'2023-05-03 01:51:59','root@localhost','productos','ACTUALIZACION'),(2994,'2023-05-03 01:57:51','root@localhost','productos','ACTUALIZACION'),(2995,'2023-05-03 01:58:56','root@localhost','productos','ACTUALIZACION'),(2996,'2023-05-03 02:00:21','root@localhost','productos','ACTUALIZACION'),(2997,'2023-05-03 02:11:19','root@localhost','productos','ACTUALIZACION'),(2998,'2023-05-03 02:13:14','root@localhost','productos','ACTUALIZACION'),(2999,'2023-05-03 02:14:38','root@localhost','clientes','ELIMINAR'),(3000,'2023-05-03 02:14:54','root@localhost','productos','ACTUALIZACION'),(3001,'2023-05-03 02:15:23','root@localhost','productos','ACTUALIZACION'),(3002,'2023-05-03 02:15:27','root@localhost','productos','ACTUALIZACION'),(3003,'2023-05-03 02:16:19','root@localhost','productos','ACTUALIZACION'),(3004,'2023-05-03 03:13:08','root@localhost','productos','ACTUALIZACION'),(3005,'2023-05-03 03:20:33','root@localhost','productos','ACTUALIZACION'),(3006,'2023-05-03 14:22:45','root@localhost','productos','ACTUALIZACION'),(3007,'2023-05-03 14:27:20','root@localhost','productos','ACTUALIZACION'),(3008,'2023-05-03 14:31:04','root@localhost','productos','ACTUALIZACION'),(3009,'2023-05-03 14:38:11','root@localhost','productos','ACTUALIZACION'),(3010,'2023-05-03 14:40:42','root@localhost','productos','ACTUALIZACION'),(3011,'2023-05-03 16:50:10','root@localhost','productos','ACTUALIZACION'),(3012,'2023-05-03 16:55:57','root@localhost','productos','ACTUALIZACION'),(3013,'2023-05-03 19:03:33','root@localhost','productos','ACTUALIZACION'),(3014,'2023-05-03 19:05:21','root@localhost','productos','ACTUALIZACION'),(3015,'2023-05-03 19:05:49','root@localhost','productos','ACTUALIZACION'),(3016,'2023-05-03 19:06:12','root@localhost','productos','ACTUALIZACION'),(3017,'2023-05-03 19:27:38','root@localhost','productos','ACTUALIZACION'),(3018,'2023-05-03 19:38:17','root@localhost','productos','ACTUALIZACION'),(3019,'2023-05-03 21:00:23','root@localhost','productos','ACTUALIZACION'),(3020,'2023-05-03 21:01:11','root@localhost','clientes','ACTUALIZACION'),(3021,'2023-05-03 21:01:36','root@localhost','clientes','ACTUALIZACION'),(3022,'2023-05-03 21:01:43','root@localhost','clientes','ACTUALIZACION'),(3023,'2023-05-03 21:01:51','root@localhost','clientes','ACTUALIZACION'),(3024,'2023-05-03 22:58:47','root@localhost','productos','ACTUALIZACION'),(3025,'2023-05-03 23:06:22','root@localhost','productos','ACTUALIZACION'),(3026,'2023-05-03 23:11:21','root@localhost','usuarios','INSERCION'),(3027,'2023-05-03 23:11:21','root@localhost','clientes','INSERCION'),(3028,'2023-05-03 23:11:21','root@localhost','empleados','INSERCION'),(3029,'2023-05-03 23:42:45','root@localhost','productos','ACTUALIZACION'),(3030,'2023-05-04 00:46:38','root@localhost','productos','ACTUALIZACION'),(3031,'2023-05-04 01:18:57','root@localhost','productos','ACTUALIZACION'),(3032,'2023-05-04 01:29:20','root@localhost','productos','ACTUALIZACION'),(3033,'2023-05-04 01:29:20','root@localhost','productos','ACTUALIZACION'),(3034,'2023-05-04 01:30:52','root@localhost','productos','ACTUALIZACION'),(3035,'2023-05-04 01:30:52','root@localhost','productos','ACTUALIZACION'),(3036,'2023-05-04 23:12:25','root@localhost','productos','ACTUALIZACION'),(3037,'2023-05-10 20:14:22','root@localhost','productos','ACTUALIZACION'),(3038,'2023-05-10 20:14:36','root@localhost','productos','ACTUALIZACION'),(3039,'2023-05-10 23:06:07','root@localhost','productos','ACTUALIZACION'),(3040,'2023-05-10 23:41:03','root@localhost','productos','ACTUALIZACION'),(3041,'2023-05-11 22:42:37','root@localhost','productos','ACTUALIZACION'),(3042,'2023-05-11 22:42:45','root@localhost','productos','ACTUALIZACION'),(3043,'2023-05-13 19:27:23','root@localhost','productos','ACTUALIZACION'),(3044,'2023-05-13 20:09:25','root@localhost','productos','ACTUALIZACION'),(3045,'2023-05-14 20:30:44','root@localhost','productos','ACTUALIZACION'),(3046,'2023-05-14 20:30:49','root@localhost','productos','ACTUALIZACION'),(3047,'2023-05-14 20:42:15','root@localhost','productos','ACTUALIZACION'),(3048,'2023-05-16 21:50:42','root@localhost','productos','ACTUALIZACION'),(3049,'2023-05-16 21:50:54','root@localhost','productos','ACTUALIZACION'),(3050,'2023-05-19 16:37:14','root@localhost','productos','ACTUALIZACION'),(3051,'2023-05-20 18:05:58','root@localhost','productos','ACTUALIZACION'),(3052,'2023-05-22 17:08:24','root@localhost','productos','ACTUALIZACION'),(3053,'2023-05-22 17:08:33','root@localhost','productos','ACTUALIZACION'),(3054,'2023-05-22 17:08:46','root@localhost','productos','ACTUALIZACION'),(3055,'2023-05-22 17:08:54','root@localhost','productos','ACTUALIZACION'),(3056,'2023-05-22 17:09:00','root@localhost','productos','ACTUALIZACION'),(3057,'2023-05-22 17:09:12','root@localhost','productos','ACTUALIZACION'),(3058,'2023-05-22 17:09:20','root@localhost','productos','ACTUALIZACION'),(3059,'2023-05-22 17:09:47','root@localhost','productos','ACTUALIZACION'),(3060,'2023-05-22 17:10:10','root@localhost','ventas','INSERCION'),(3061,'2023-05-22 17:11:48','root@localhost','clientes','INSERCION'),(3062,'2023-05-22 17:12:41','root@localhost','clientes','ACTUALIZACION'),(3063,'2023-05-22 17:12:46','root@localhost','clientes','ELIMINAR'),(3064,'2023-05-22 17:15:08','root@localhost','usuarios','INSERCION'),(3065,'2023-05-22 17:15:08','root@localhost','clientes','INSERCION'),(3066,'2023-05-22 17:15:08','root@localhost','empleados','INSERCION'),(3067,'2023-05-22 17:23:42','root@localhost','productos','ACTUALIZACION'),(3068,'2023-05-22 17:25:41','root@localhost','productos','ACTUALIZACION'),(3069,'2023-05-22 17:29:50','root@localhost','productos','ACTUALIZACION'),(3070,'2023-05-22 17:30:10','root@localhost','usuarios','ACTUALIZACION'),(3071,'2023-05-22 17:30:10','root@localhost','clientes','ACTUALIZACION'),(3072,'2023-05-22 17:30:39','root@localhost','usuarios','ACTUALIZACION'),(3073,'2023-05-22 17:30:39','root@localhost','clientes','ACTUALIZACION'),(3074,'2023-05-22 17:40:25','root@localhost','productos','ACTUALIZACION'),(3075,'2023-05-22 17:42:50','root@localhost','productos','ACTUALIZACION'),(3076,'2023-05-22 17:43:09','root@localhost','usuarios','ACTUALIZACION'),(3077,'2023-05-22 17:43:09','root@localhost','clientes','ACTUALIZACION'),(3078,'2023-05-22 18:05:34','root@localhost','productos','ACTUALIZACION'),(3079,'2023-05-22 18:06:41','root@localhost','usuarios','ACTUALIZACION'),(3080,'2023-05-22 18:06:41','root@localhost','clientes','ACTUALIZACION'),(3081,'2023-05-22 18:13:56','root@localhost','productos','ACTUALIZACION'),(3082,'2023-05-22 18:14:13','root@localhost','usuarios','ACTUALIZACION'),(3083,'2023-05-22 18:14:13','root@localhost','clientes','ACTUALIZACION'),(3084,'2023-05-22 18:14:35','root@localhost','empleados','ELIMINAR'),(3085,'2023-05-22 18:15:16','root@localhost','proveedores','INSERCION'),(3086,'2023-05-22 18:15:21','root@localhost','proveedores','ELIMINAR'),(3087,'2023-05-22 18:15:30','root@localhost','proveedores','ACTUALIZACION'),(3088,'2023-05-22 18:15:33','root@localhost','productos','ACTUALIZACION'),(3089,'2023-05-22 18:17:12','root@localhost','productos','INSERCION'),(3090,'2023-05-22 18:17:12','root@localhost','productos','ACTUALIZACION'),(3091,'2023-05-22 18:17:53','root@localhost','productos','ACTUALIZACION'),(3092,'2023-05-22 18:17:53','root@localhost','productos','ACTUALIZACION'),(3093,'2023-05-22 18:19:58','root@localhost','productos','ELIMINAR'),(3094,'2023-05-22 18:19:58','root@localhost','productos','ACTUALIZACION'),(3095,'2023-05-22 18:45:24','root@localhost','productos','ACTUALIZACION'),(3096,'2023-05-22 18:47:32','root@localhost','productos','ACTUALIZACION'),(3097,'2023-05-22 18:51:56','root@localhost','productos','ACTUALIZACION'),(3098,'2023-05-22 18:53:18','root@localhost','productos','ACTUALIZACION'),(3099,'2023-05-22 18:53:59','root@localhost','productos','ACTUALIZACION'),(3100,'2023-05-22 19:07:34','root@localhost','productos','ACTUALIZACION'),(3101,'2023-05-22 19:08:12','root@localhost','productos','ACTUALIZACION'),(3102,'2023-05-22 19:09:13','root@localhost','productos','ACTUALIZACION'),(3103,'2023-05-22 19:10:56','root@localhost','productos','ACTUALIZACION'),(3104,'2023-05-22 19:13:31','root@localhost','productos','ACTUALIZACION'),(3105,'2023-05-22 19:13:57','root@localhost','productos','ACTUALIZACION'),(3106,'2023-05-22 19:15:32','root@localhost','productos','ACTUALIZACION'),(3107,'2023-05-22 20:53:40','root@localhost','productos','ACTUALIZACION'),(3108,'2023-05-22 20:57:02','root@localhost','productos','ACTUALIZACION'),(3109,'2023-05-22 22:35:23','root@localhost','productos','ACTUALIZACION'),(3110,'2023-05-22 22:59:27','root@localhost','productos','ACTUALIZACION'),(3111,'2023-05-22 22:59:34','root@localhost','productos','ACTUALIZACION'),(3112,'2023-05-22 22:59:44','root@localhost','productos','ACTUALIZACION'),(3113,'2023-05-22 22:59:46','root@localhost','ventas','INSERCION'),(3114,'2023-05-22 23:00:13','root@localhost','productos','ACTUALIZACION'),(3115,'2023-05-22 23:00:15','root@localhost','ventas','INSERCION'),(3116,'2023-05-22 23:03:24','root@localhost','productos','ACTUALIZACION'),(3117,'2023-05-22 23:03:35','root@localhost','productos','ACTUALIZACION'),(3118,'2023-05-22 23:03:37','root@localhost','ventas','INSERCION'),(3119,'2023-05-22 23:10:38','root@localhost','productos','ACTUALIZACION'),(3120,'2023-05-22 23:10:47','root@localhost','productos','ACTUALIZACION'),(3121,'2023-05-22 23:10:53','root@localhost','productos','ACTUALIZACION'),(3122,'2023-05-22 23:10:55','root@localhost','ventas','INSERCION'),(3123,'2023-05-22 23:16:27','root@localhost','productos','ACTUALIZACION'),(3124,'2023-05-22 23:16:45','root@localhost','productos','ACTUALIZACION'),(3125,'2023-05-22 23:16:52','root@localhost','productos','ACTUALIZACION'),(3126,'2023-05-22 23:16:54','root@localhost','ventas','INSERCION'),(3127,'2023-05-23 02:50:57','root@localhost','productos','ACTUALIZACION'),(3128,'2023-05-23 02:58:30','root@localhost','productos','ACTUALIZACION'),(3129,'2023-05-23 03:00:48','root@localhost','productos','ACTUALIZACION'),(3130,'2023-05-23 03:00:51','root@localhost','productos','ACTUALIZACION'),(3131,'2023-05-23 03:00:58','root@localhost','productos','ACTUALIZACION'),(3132,'2023-05-23 03:01:03','root@localhost','ventas','INSERCION'),(3133,'2023-05-23 03:11:09','root@localhost','productos','ACTUALIZACION'),(3134,'2023-05-23 03:11:22','root@localhost','productos','ACTUALIZACION'),(3135,'2023-05-23 03:11:28','root@localhost','productos','ACTUALIZACION'),(3136,'2023-05-23 03:11:31','root@localhost','ventas','INSERCION'),(3137,'2023-05-23 14:44:55','root@localhost','usuarios','INSERCION'),(3138,'2023-05-23 14:44:55','root@localhost','clientes','INSERCION'),(3139,'2023-05-29 17:06:09','root@localhost','productos','ACTUALIZACION'),(3140,'2023-05-29 17:06:09','root@localhost','productos','ACTUALIZACION'),(3141,'2023-05-29 22:32:58','root@localhost','productos','ACTUALIZACION'),(3142,'2023-05-29 22:32:58','root@localhost','productos','ACTUALIZACION'),(3143,'2023-05-29 22:59:14','root@localhost','productos','ACTUALIZACION'),(3144,'2023-05-29 22:59:14','root@localhost','productos','ACTUALIZACION');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Ropa'),(2,'Calzado'),(3,'Electrónica'),(4,'Hogar'),(5,'Juguetes'),(6,'Deportes'),(7,'Mascotas'),(8,'Alimentos'),(9,'Bebidas'),(10,'Belleza'),(11,'Jardinería'),(12,'Ferretería'),(13,'Cuidado personal'),(14,'Salud'),(15,'Libros'),(16,'Música'),(17,'Películas'),(18,'Computadoras'),(19,'Celulares'),(20,'Cámaras'),(21,'Accesorios para autos'),(22,'Herramientas'),(23,'Joyería'),(24,'Arte'),(25,'Maquillaje'),(26,'Perfumes'),(27,'Limpieza del hogar'),(28,'Papelería'),(29,'Decoración'),(30,'Viajes'),(31,'Instrumentos musicales'),(32,'Muebles'),(33,'Productos orgánicos'),(34,'Productos para bebé'),(35,'Productos para mascotas'),(36,'Productos de limpieza personal'),(37,'Cuidado del cabello'),(38,'Productos para la piel'),(39,'Cuidado de las uñas'),(40,'Ropa deportiva'),(41,'Ropa de playa'),(42,'Ropa casual'),(43,'Ropa formal'),(44,'Ropa interior'),(45,'Zapatos deportivos'),(46,'Zapatos casuales'),(47,'Zapatos de vestir'),(48,'Zapatos para niños'),(49,'Zapatos para mujeres'),(50,'Zapatos para hombres');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_P` varchar(30) DEFAULT NULL,
  `apellido_M` varchar(30) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha` date DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Anhuar','Pérez','Gomez','PEGJ940720HMCNRR01','8112345678','Avenida Universidad,123,54125,Monterrey','2023-03-18','v@mail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_cliente` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_cliente` AFTER UPDATE ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_cliente` AFTER DELETE ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracion` (
  `PrimeraVez` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventas`
--

DROP TABLE IF EXISTS `detalleventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleventas` (
  `idDetalleVentas` int NOT NULL AUTO_INCREMENT,
  `idVenta` int DEFAULT NULL,
  `idProducto` varchar(15) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idDetalleVentas`),
  KEY `idVenta` (`idVenta`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `detalleventas_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventas`
--

LOCK TABLES `detalleventas` WRITE;
/*!40000 ALTER TABLE `detalleventas` DISABLE KEYS */;
INSERT INTO `detalleventas` VALUES (118,102,'10577516',2,29.15,58.30),(119,103,'10577516',3,29.15,87.45),(120,104,'7506129430801',9,30.00,120.00),(121,105,'7506129430801',3,30.00,90.00),(122,106,'6973080431016',3,140.00,420.00),(123,106,'7500462445300',2,8.50,17.00),(124,107,'017929111014',4,22.60,90.40),(125,107,'75004699',3,13.00,26.00),(126,107,'7702111329485',1,20.00,20.00),(127,108,'7500478005581',1,24.00,24.00),(128,109,'7500478005581',2,24.00,48.00),(129,110,'6973080431016',1,140.00,140.00),(130,111,'6973080431016',1,140.00,140.00),(131,112,'7501020561906',1,50.00,50.00),(132,113,'75000622',1,29.99,29.99),(133,114,'706460249446',1,19.22,19.22);
/*!40000 ALTER TABLE `detalleventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventas_temp`
--

DROP TABLE IF EXISTS `detalleventas_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleventas_temp` (
  `idDetalleVentas` int NOT NULL DEFAULT '0',
  `idVenta` int DEFAULT NULL,
  `idProducto` varchar(15) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventas_temp`
--

LOCK TABLES `detalleventas_temp` WRITE;
/*!40000 ALTER TABLE `detalleventas_temp` DISABLE KEYS */;
INSERT INTO `detalleventas_temp` VALUES (85,69,'1548759864',2,18000.00,36000.00),(86,70,'1548520654',5,199.99,999.95),(87,71,'1548520654',12,199.99,2399.88),(88,72,'1548759864',1,18000.00,18000.00),(89,73,'1548520654',20,199.99,3999.80),(90,74,'1548520654',5,199.99,999.95),(91,75,'1548520654',10,199.99,1999.90),(92,76,'1548520654',5,199.99,999.95),(93,77,'1548520654',5,199.99,999.95),(94,78,'1548520654',10,199.99,1999.90),(95,79,'1548520654',2,199.99,399.98),(96,80,'1548520654',2,199.99,399.98),(97,81,'1548520654',3,199.99,599.97),(98,82,'1515869532',1,4200.00,4200.00),(99,83,'1515869532',2,4200.00,8400.00),(100,85,'1515869532',2,4200.00,8400.00),(101,85,'1520236985',5,20.00,100.00),(102,86,'1548759864',1,18000.00,18000.00),(103,87,'1520236985',3,20.00,60.00),(104,88,'1515869532',2,4200.00,8400.00),(105,90,'10577516',5,29.15,145.75),(106,90,'78928503',4,18.90,18.90),(107,91,'10577516',8,29.15,233.20),(108,92,'10577516',8,29.15,233.20),(109,92,'78928503',5,18.90,94.50),(110,92,'7501258215695',6,30.00,180.00),(111,92,'6973080431016',6,140.00,840.00),(112,94,'7506129430801',5,30.00,150.00),(113,94,'114502451218',3,350.00,1050.00),(114,94,'7509552914696',12,47.60,571.20),(115,96,'9140153186889',8,50.00,400.00),(116,97,'114502451218',1,350.00,350.00),(117,98,'9140153186889',2,50.00,100.00);
/*!40000 ALTER TABLE `detalleventas_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidoP` varchar(30) DEFAULT NULL,
  `apellidoM` varchar(30) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Peréz','Gonzalez','CDADE3431','vicente,124',1),(2,'Guadalupe Yesenia','Conde','Salazar','OSG040326MTSNDA8','sabinas,15,15485,El Mante',2),(3,'Juan','García','Hernández','GAHJ880421MDFRNR00','Calle 10 #456',3),(4,'Luis','Ramírez','Vargas','RAVL940727MDFMRG07','Calle 15 #101',4),(5,'Carla','Hernández','Díaz','HEDC840812MDFRRL01','Av. Insurgentes 456',5),(6,'Javier','Torres','Flores','TOFJ750805MDFRRV09','Calle 20 #22',6),(8,'Miguel','Mendoza','Vargas','MEJM910624MDFNDG05','Calle,34,12343,coahuila',8),(9,'María','González','Hernández','GOHM830515MDFRRR08','Av. Hidalgo 444',9),(10,'Pedro','Díaz','Santos','DASP810411MDFXXX01','Calle 40 #32',10),(11,'José','Santos','Fernández','SAFJ840518HDFVNR07','Av. Insurgentes Sur 123, Col. Condesa, CDMX',11),(12,'Andrea','Rodríguez','Vázquez','RAVJ880523MDFXNS02','Calle Durango 456, Col. Roma, CDMX',12),(13,'Héctor','García','Martínez','35gerv','Paseo de la Reforma 555, Col. Juárez, CDMX',13),(14,'Marisol','López','Hernández','LOHM880818MDFXRS08','Calle Zacatecas 789, Col. Hipódromo, CDMX',14),(15,'Roberto','Fernández','González','FEGR800512HDFRRB09','Calle Tamaulipas 345, Col. Condesa, CDMX',15),(16,'Ana','Gutiérrez','Hernández','GUHA890605MDFXNS04','Calle Aguascalientes 567, Col. Narvarte, CDMX',16),(18,'Mario','Pérez','González','PEGM871215HDFRNR08','Calle Querétaro 678, Col. Roma, CDMX',17),(19,'Natalia','Santiago','González','SAGN900324MDFXLT01','Paseo de la Reforma 123, Col. Juárez, CDMX',18),(20,'Luisa','Méndez','Hernández','MEHL850523MDFXRS09','Av. Insurgentes Sur 456, Col. Del Valle, CDMX',19),(21,'Pedro','Castillo','Hernández','CAHP800728HDFSTP04','Calle Nuevo León 789, Col. Condesa, CDMX',20),(22,'Dalia','Martínez','Álvarez','MAAD980322MNRLRL05','Calle de la Rosa 123',21),(23,'Luis','Hernández','Santos','HESL020701HDFNNT06','Avenida del Bosque 234',22),(24,'Fátima','Ramírez','Castillo','RACF990523MCMRMS04','Calle de la Luna 456',23),(25,'Oscar','González','García','GAGO021112HCMNNR08','Avenida de los Pinos 789',24),(26,'Paola','García','Díaz','GADP981118MCMRLA09','Calle del Sol 321',25),(27,'Carlos','Jiménez','Méndez','JIMC030721HDFNNS08','Avenida de los Girasoles 654',26),(28,'María','Vázquez','Juárez','VAJM011016MCMRZR07','Calle de la Primavera 987',27),(29,'José','Sánchez','López','SALJ001218HCMNNS07','Avenida del Roble 234',28),(30,'Mariana','Hernández','González','HEGM970513MCMRNN08','Calle del Río 567',29),(31,'Alejandro','Castillo','Martínez','CAMA021005HCMSTL02','Avenida del Laurel 890',30),(32,'Nancy','Hernández','López','HELJ930416MDFRRR9','Av. Tláhuac #123',31),(33,'Fabián','García','Hernández','GAHF940416MDFRRR0','Calle 5 de Mayo #456',32),(34,'Carlos','Sánchez','López','SALC880416MDFRRR3','Av. Insurgentes Sur #789',33),(35,'Lucía','González','Pérez','GOPJ890416MDFRRR6','Calle Revolución #1010',34),(36,'Oscar','Torres','López','TOLJ880416MDFRRR8','Av. Universidad #1111',35),(37,'Liliana','Martínez','García','MAGL830416MDFRRR2','Calle Puebla #1313',36),(38,'Juan','Guzmán','Martínez','GUMJ840416MDFRRR1','Av. Reforma #1515',37),(39,'Ana','Sosa','Vargas','SOVA840416MDFRRR4','Calle Durango #1717',38),(40,'Javier','Hernández','Rivas','HERJ870416MDFRRR5','Av. Juárez #1919',39),(41,'Verónica','González','Sánchez','GOSV880416MDFRRR7','Calle Hidalgo #2121',40),(42,'Agustin','Cruz','Fuentes','CUZD560109HTSPGN03','Calle Tulipanes 23, Tijuana',41),(43,'Dulce','Sandoval','Flores','SAFD630321MSPNLN00','Calle 14, Ciudad Juarez',42),(44,'Alexis','Diaz','Santos','DIAS970402HTSXTL05','Calle Flores 23, Toluca',43),(45,'Frida','Rivas','Mendoza','RIMF850222MSPVNS09','Calle Madero 14, Leon',44),(46,'Angel','Sanchez','Cruz','SACA560809HTSNGN08','Calle Girasoles 45, Cancun',45),(47,'Mayra','Nava','Lopez','NALM820327MSPVRR04','Calle 12 de Octubre 7, Ciudad Obregon',46),(48,'Fabiola','Ortiz','Valencia','OOVF870928MSPRLB01','Calle Chihuahua 18, Mexicali',47),(49,'Emmanuel','Mendez','Lopez','MELM961212HGRNNS03','Calle Sonora 23, Monterrey',48),(50,'Mario','Garcia','Rios','GARM990501HTSRRR07','Calle Hidalgo 67, Guadalajara',49),(51,'Yesenia','Conde','Salazar','COSG040326MTSNLDA8','sabinas,12,12345,Gomez Farias',50),(52,'victor manuel','guzman','loredo','GULV990930HTSZRC09','quintero,1201,89869,mante',52),(60,'jose','as','','SAGL900621MDFNMR07','Avenida Chapultepec, 256,15485, CDMX',119),(61,'vector','vecon','','PEGJ900101HJCRRN09','reforma,12,12343,mexico',120);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_empleado` AFTER INSERT ON `empleados` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'empleados', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_empleado` AFTER DELETE ON `empleados` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'empleados', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados_temp`
--

DROP TABLE IF EXISTS `empleados_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_temp` (
  `idEmpleado` int NOT NULL DEFAULT '0',
  `nombre` varchar(30) DEFAULT NULL,
  `apellidoP` varchar(30) DEFAULT NULL,
  `apellidoM` varchar(30) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `idUsuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_temp`
--

LOCK TABLES `empleados_temp` WRITE;
/*!40000 ALTER TABLE `empleados_temp` DISABLE KEYS */;
INSERT INTO `empleados_temp` VALUES (1,'Juan','Peréz','Gonzalez','CDADE3431','vicente,124',1),(2,'Guadalupe Yesenia','Conde','Salazar','OSG040326MTSNDA8','sabinas,15,15485,El Mante',2),(3,'Juan','García','Hernández','GAHJ880421MDFRNR00','Calle 10 #456',3),(4,'Luis','Ramírez','Vargas','RAVL940727MDFMRG07','Calle 15 #101',4),(5,'Carla','Hernández','Díaz','HEDC840812MDFRRL01','Av. Insurgentes 456',5),(6,'Javier','Torres','Flores','TOFJ750805MDFRRV09','Calle 20 #22',6),(7,'Laura','Sánchez','Gómez','SAGL900621MDFNMR03','Av. Chapultepec 256',7),(8,'Miguel','Mendoza','Jiménez','MEJM910624MDFNDG05','Calle 30 #777',8),(9,'María','González','Hernández','GOHM830515MDFRRR08','Av. Hidalgo 444',9),(10,'Pedro','Díaz','Santos','DASP810411MDFXXX01','Calle 40 #32',10),(11,'José','Santos','Fernández','SAFJ840518HDFVNR07','Av. Insurgentes Sur 123, Col. Condesa, CDMX',11),(12,'Andrea','Rodríguez','Vázquez','RAVJ880523MDFXNS02','Calle Durango 456, Col. Roma, CDMX',12),(13,'Héctor','García','Martínez','35gerv','Paseo de la Reforma 555, Col. Juárez, CDMX',13),(14,'Marisol','López','Hernández','LOHM880818MDFXRS08','Calle Zacatecas 789, Col. Hipódromo, CDMX',14),(15,'Roberto','Fernández','González','FEGR800512HDFRRB09','Calle Tamaulipas 345, Col. Condesa, CDMX',15),(16,'Ana','Gutiérrez','Hernández','GUHA890605MDFXNS04','Calle Aguascalientes 567, Col. Narvarte, CDMX',16),(18,'Mario','Pérez','González','PEGM871215HDFRNR08','Calle Querétaro 678, Col. Roma, CDMX',17),(19,'Natalia','Santiago','González','SAGN900324MDFXLT01','Paseo de la Reforma 123, Col. Juárez, CDMX',18),(20,'Luisa','Méndez','Hernández','MEHL850523MDFXRS09','Av. Insurgentes Sur 456, Col. Del Valle, CDMX',19),(21,'Pedro','Castillo','Hernández','CAHP800728HDFSTP04','Calle Nuevo León 789, Col. Condesa, CDMX',20),(22,'Dalia','Martínez','Álvarez','MAAD980322MNRLRL05','Calle de la Rosa 123',21),(23,'Luis','Hernández','Santos','HESL020701HDFNNT06','Avenida del Bosque 234',22),(24,'Fátima','Ramírez','Castillo','RACF990523MCMRMS04','Calle de la Luna 456',23),(25,'Oscar','González','García','GAGO021112HCMNNR08','Avenida de los Pinos 789',24),(26,'Paola','García','Díaz','GADP981118MCMRLA09','Calle del Sol 321',25),(27,'Carlos','Jiménez','Méndez','JIMC030721HDFNNS08','Avenida de los Girasoles 654',26),(28,'María','Vázquez','Juárez','VAJM011016MCMRZR07','Calle de la Primavera 987',27),(29,'José','Sánchez','López','SALJ001218HCMNNS07','Avenida del Roble 234',28),(30,'Mariana','Hernández','González','HEGM970513MCMRNN08','Calle del Río 567',29),(31,'Alejandro','Castillo','Martínez','CAMA021005HCMSTL02','Avenida del Laurel 890',30),(32,'Nancy','Hernández','López','HELJ930416MDFRRR9','Av. Tláhuac #123',31),(33,'Fabián','García','Hernández','GAHF940416MDFRRR0','Calle 5 de Mayo #456',32),(34,'Carlos','Sánchez','López','SALC880416MDFRRR3','Av. Insurgentes Sur #789',33),(35,'Lucía','González','Pérez','GOPJ890416MDFRRR6','Calle Revolución #1010',34),(36,'Oscar','Torres','López','TOLJ880416MDFRRR8','Av. Universidad #1111',35),(37,'Liliana','Martínez','García','MAGL830416MDFRRR2','Calle Puebla #1313',36),(38,'Juan','Guzmán','Martínez','GUMJ840416MDFRRR1','Av. Reforma #1515',37),(39,'Ana','Sosa','Vargas','SOVA840416MDFRRR4','Calle Durango #1717',38),(40,'Javier','Hernández','Rivas','HERJ870416MDFRRR5','Av. Juárez #1919',39),(41,'Verónica','González','Sánchez','GOSV880416MDFRRR7','Calle Hidalgo #2121',40),(42,'Agustin','Cruz','Fuentes','CUZD560109HTSPGN03','Calle Tulipanes 23, Tijuana',41),(43,'Dulce','Sandoval','Flores','SAFD630321MSPNLN00','Calle 14, Ciudad Juarez',42),(44,'Alexis','Diaz','Santos','DIAS970402HTSXTL05','Calle Flores 23, Toluca',43),(45,'Frida','Rivas','Mendoza','RIMF850222MSPVNS09','Calle Madero 14, Leon',44),(46,'Angel','Sanchez','Cruz','SACA560809HTSNGN08','Calle Girasoles 45, Cancun',45),(47,'Mayra','Nava','Lopez','NALM820327MSPVRR04','Calle 12 de Octubre 7, Ciudad Obregon',46),(48,'Fabiola','Ortiz','Valencia','OOVF870928MSPRLB01','Calle Chihuahua 18, Mexicali',47),(49,'Emmanuel','Mendez','Lopez','MELM961212HGRNNS03','Calle Sonora 23, Monterrey',48),(50,'Mario','Garcia','Rios','GARM990501HTSRRR07','Calle Hidalgo 67, Guadalajara',49),(51,'Yesenia','Conde','Salazar','COSG040326MTSNLDA8','sabinas,12,12345,Gomez Farias',50),(52,'victor manuel','guzman','loredo','GULV990930HTSZRC09','quintero,1201,89869,mante',51);
/*!40000 ALTER TABLE `empleados_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `nombre` varchar(70) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` char(10) NOT NULL,
  `web` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES ('Commerce Manage7','Enrique Segoviano','8312410986','www.chichocamos.com','hola@gmail.com');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `serie` varchar(15) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `fechaIngreso` date NOT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  `precioCompra` decimal(9,2) DEFAULT NULL,
  `precioVenta` decimal(9,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  `idProveedor` int DEFAULT NULL,
  PRIMARY KEY (`serie`),
  KEY `fk_productos_categoria` (`idCategoria`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `fk_productos_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `fk_productos_proveedores` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('017929111014','Levadura casera 55g','2023-04-27','2024-12-19',14.20,22.60,4,8,7),('032239052017','jugo del valle','2023-04-27','2023-04-30',15.00,22.00,0,9,4),('10577516','Humectante nasal','2023-04-27','2023-05-27',16.00,29.15,0,21,5),('114502451218','cargador lenovo','2023-04-28','2024-04-12',250.00,350.00,38,21,1),('619684003018','cucharas (25)','2023-04-27','2026-04-17',12.00,20.00,85,8,28),('6973080431016','Vape Max Water Ice','2023-04-27','2026-08-21',102.58,140.00,50,3,19),('706460249446','pedigree razas pequeñas 100g','2023-04-27','2025-03-25',13.00,19.22,199,7,12),('75000622','Cloralex 2L','2023-04-27','2024-05-16',20.00,29.99,87,27,32),('7500462445300','cerillos (50)','2023-04-27','2026-04-17',5.00,8.50,3,8,30),('75004699','Coca cola 500ml','2023-04-27','2023-10-07',8.00,13.00,248,9,13),('7500478005581','Pan Crema 151 g.','2023-04-27','2026-08-27',18.00,24.00,98,8,11),('7500525446299','Cotonetes (200)','2023-04-27','2026-08-14',32.00,55.00,74,8,1),('7501005110242','Maizena 95 g.','2023-04-27','2024-05-18',14.00,24.00,150,8,9),('7501020561906','Crema original 426g','2023-04-27','2027-04-17',30.00,50.00,87,8,25),('7501055302925','coca cola 2 lts.','2023-04-28','2024-04-12',20.00,35.00,13,9,13),('7501058652676','Nesquik 650g','2023-04-27','2024-05-16',45.00,60.00,88,8,21),('7501079729265','Pure de tomate','2023-04-27','2024-03-31',32.50,48.19,55,8,8),('7501096810328','Crema Chantilly','2023-04-27','2024-05-16',35.00,45.00,60,8,3),('7501096810342','crema chantilly GDE','2023-04-27','2026-04-17',45.00,58.00,150,8,3),('7501124311100','Carbonato de calcio','2023-04-27','2025-02-21',25.00,60.48,80,8,16),('7501125418341','lemon pepper','2023-04-27','2024-05-16',18.00,28.00,96,8,31),('7501258215695','Desloratadina (10)','2023-04-27','2026-04-23',15.00,30.00,53,14,5),('7501578550018','avena 400g','2023-04-27','2026-04-17',15.00,22.00,55,8,33),('7501791603102','Mantequilla Margarina','2023-04-27','2023-07-23',12.00,24.00,48,8,1),('7501791638623','Arroz 900g','2023-04-27','2024-05-16',15.00,24.20,100,8,16),('7501839106268','Desodorante 65g','2023-04-27','2024-08-23',15.00,25.00,90,13,15),('7501943492127','toallitas de naida','2023-04-27','2027-04-17',20.00,50.00,95,13,10),('7502216792883','Omeprazol','2023-04-27','2026-04-17',10.00,15.23,87,14,5),('7502256210286','Colorante rojo','2023-04-27','2025-05-17',12.00,15.50,106,8,7),('7502300730159','Servilletas (100)','2023-04-27','2026-05-17',25.00,32.40,80,8,10),('75036553','cerillos (50)','2023-04-27','2026-04-17',1.00,4.60,100,8,30),('7506129409180','cuaderno 100 hojas B2S','2023-04-27','2026-04-17',19.00,27.30,120,28,26),('7506129430801','cuaderno Scribe','2023-04-27','2025-04-12',20.00,30.00,48,21,1),('7509552828030','Mascarilla de cabello','2023-04-27','2025-04-12',35.00,55.00,98,37,34),('7509552914696','Crema para peinar Fructis','2023-04-28','2024-04-12',25.00,47.60,80,37,34),('7702111329485','Folder Norma Color','2023-04-27','2027-04-10',15.00,20.00,49,28,6),('78928503','Desodorante tono uniforme','2023-04-27','2025-04-13',12.30,18.90,31,13,15),('810007832043','termo de juan','2023-04-28','2024-04-12',800.00,1500.00,19,9,13),('8719200450370','Mantequilla 400g','2023-04-27','2023-08-19',32.00,45.00,55,8,21),('9140153186889','tarjeta oxxo','2023-04-27','2027-04-17',30.00,50.00,37,3,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_productos` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'productos', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_productos` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'productos', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_productos` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'productos', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Tecnología y Sistemas S.A.','5512345678','Reforma, 222,45236, Mexico','2023-04-17 09:15:08'),(3,'Chantilly Repostería','4585135218','Calle Victoria, 456, 15485, CDMX','2023-04-27 17:49:02'),(4,'Del Valle','1548520255','Reforma, 123,14325, CDMX','2023-04-27 17:59:43'),(5,'PharmaLife','4851523658','Insurgentes, 4585,15248, Monterrey','2023-04-27 18:13:20'),(6,'Scribe','1548521502','Juarez, 5214,15245, Saltillo','2023-04-27 18:15:14'),(7,'Bakery Cake','4851524852','Miguel Hidalgo,15,15248,Acapulco','2023-04-27 18:18:18'),(8,'Del Fuerte','5478526520','Zaragoza, 12,02515, CDMX','2023-04-27 18:26:14'),(9,'Maizena','2515202365','Paniagua,123,10483,Matamoros','2023-04-27 18:32:27'),(10,'Soft & Winner','4851475852','Centro3, 48,48515, Coahuila','2023-04-27 18:34:02'),(11,'Gamesa','4857415205','Colón, 478,48541,CDMX','2023-04-27 18:37:06'),(12,'Pedigree','4851256369','Lopez Mateos,485,25485, Guadalajara','2023-04-27 18:40:44'),(13,'Coca-Cola','4854745825','Independencia,321,48395, Puebla','2023-04-27 18:45:30'),(15,'Obao','5485475852','Alvarado, 4854,52154, Guadalajara','2023-04-27 18:57:30'),(16,'Aurrera','4851524852','Guadalupe,485,52152,CDMX','2023-04-27 18:58:53'),(17,'Sterimar','4851256321','Ocampo, 456, 48515, CDMX','2023-04-27 19:01:41'),(18,'Calcid','4851254896','Guadalupe,143,14563,CDMX','2023-04-27 19:25:41'),(19,'Iplay Max','4851478596','Zaragoza, 435,10549,Monterrey','2023-04-27 19:28:26'),(20,'Tradi pan','5852156698','20 de noviembre, 453,29385,Guadalajara','2023-04-27 19:33:16'),(21,'Iberia','1554852152','Morelos,293,48514, Acapulco','2023-04-27 19:41:06'),(22,'Quality Day','4851547856','Insurgentes,234,19284, Torreon','2023-04-27 20:21:59'),(23,'Nescafe','4515265589','Juarez,324,10938,CDMX','2023-04-27 20:24:06'),(24,'Dove','1548520255','Reforma, 153,14325, CDMX','2023-04-27 20:25:27'),(25,'Lala','4585213652','5 de mayo,109,13245,Puebla','2023-04-27 20:31:31'),(26,'back 2 School','8458756965','quintero,123,13243,Mante','2023-04-27 20:57:13'),(27,'Monark','4851523657','Insurgentes, 4585,15248, Monterrey','2023-04-27 20:58:31'),(28,'nor-ver','4857415263','argentina,231,10293,Reynosa','2023-04-27 21:00:09'),(29,'SOLDADOS','4585216897','veracruz,298,12342, Victoria','2023-04-27 21:01:08'),(30,'Clasicos','4585216596','amarillo,109,10983,Chihuahua','2023-04-27 21:02:20'),(31,'Gourmet Land','4851698531','Pedro J Mendez,154,15852,Torreon','2023-04-27 21:05:25'),(32,'Cloralex','4851986742','Sandias,432,10928,Puebla','2023-04-27 21:06:18'),(33,'Nestle','4851698523','Sindicos,109,18235,Baja California','2023-04-27 21:07:48'),(34,'Garnier','4816985236','Rio jaiba,187,15849,CDMX','2023-04-27 21:43:00');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_proveedores` AFTER INSERT ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'proveedores', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_proveedores` AFTER UPDATE ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'proveedores', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_proveedores` AFTER DELETE ON `proveedores` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'proveedores', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `registro_sesiones`
--

DROP TABLE IF EXISTS `registro_sesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_sesiones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_hora` timestamp NOT NULL,
  `direccion_ip` varbinary(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_sesiones`
--

LOCK TABLES `registro_sesiones` WRITE;
/*!40000 ALTER TABLE `registro_sesiones` DISABLE KEYS */;
INSERT INTO `registro_sesiones` VALUES (1,'vguzmanloredo@gmail.com','2023-03-01 23:38:11',_binary '19'),(2,'vguzmanloredo@gmail.com','2023-03-02 02:38:54',_binary '45'),(3,'vguzmanloredo@gmail.com','2023-03-02 03:56:02',_binary '85'),(4,'vguzmanloredo@gmail.com','2023-03-03 17:54:05',_binary '9'),(5,'vguzmanloredo@gmail.com','2023-03-15 00:59:59',_binary '54'),(6,'vguzmanloredo@gmail.com','2023-03-15 01:04:58',_binary '61'),(7,'vguzmanloredo@gmail.com','2023-03-15 01:08:25',_binary '70'),(8,'vguzmanloredo@gmail.com','2023-03-15 01:42:25',_binary '102'),(9,'vguzmanloredo@gmail.com','2023-03-15 01:47:17',_binary '111'),(10,'vguzmanloredo@gmail.com','2023-03-15 01:50:11',_binary '120'),(11,'vguzmanloredo@gmail.com','2023-03-15 01:59:47',_binary '136'),(12,'vguzmanloredo@gmail.com','2023-03-17 05:22:03',_binary '1040'),(13,'vguzmanloredo@gmail.com','2023-03-17 21:51:48',_binary '20'),(14,'vguzmanloredo@gmail.com','2023-03-18 00:14:43',_binary '46'),(15,'guadalupecondesalazar@gmail.com','2023-03-18 01:31:13',_binary '65'),(16,'guadalupecondesalazar@gmail.com','2023-03-18 02:28:22',_binary '78'),(17,'vguzmanloredo@gmail.com','2023-03-18 07:21:49',_binary '144'),(18,'vguzmanloredo@gmail.com','2023-03-29 00:54:33',_binary '1159'),(19,'vguzmanloredo@gmail.com','2023-03-29 01:19:44',_binary '1170'),(20,'vguzmanloredo@gmail.com','2023-03-29 01:23:59',_binary '1192'),(21,'vguzmanloredo@gmail.com','2023-03-29 01:49:10',_binary '1209'),(22,'vguzmanloredo@gmail.com','2023-03-29 02:49:14',_binary '1366'),(23,'vguzmanloredo@gmail.com','2023-03-29 03:34:30',_binary '1414'),(24,'vguzmanloredo@gmail.com','2023-03-29 04:24:15',_binary '1431'),(25,'vguzmanloredo@gmail.com','2023-03-29 04:49:03',_binary '1495'),(26,'vguzmanloredo@gmail.com','2023-03-29 04:52:32',_binary '1512'),(27,'vguzmanloredo@gmail.com','2023-03-29 04:57:35',_binary '1529'),(28,'vguzmanloredo@gmail.com','2023-03-31 00:43:48',_binary '1965'),(29,'guadalupecondesalazar@gmail.com','2023-03-31 00:57:51',_binary '1989'),(30,'guadalupecondesalazar@gmail.com','2023-03-31 01:47:40',_binary '2007'),(31,'vguzmanloredo@gmail.com','2023-03-31 03:34:53',_binary '2020'),(32,'vguzmanloredo@gmail.com','2023-03-31 05:43:46',_binary '2194'),(33,'guadalupecondesalazar@gmail.com','2023-04-02 17:23:25',_binary '2210'),(34,'vguzmanloredo@gmail.com','2023-04-02 18:05:25',_binary '2223'),(35,'vguzmanloredo@gmail.com','2023-04-04 01:48:29',_binary '2260'),(36,'vguzmanloredo@gmail.com','2023-04-04 02:58:29',_binary '2295'),(37,'yesics263@gmail.com','2023-04-04 03:08:21',_binary '2331'),(38,'yesics263@gmail.com','2023-04-04 03:10:07',_binary '2345'),(39,'yesics263@gmail.com','2023-04-04 05:00:24',_binary '2362'),(40,'yesics263@gmail.com','2023-04-04 05:03:57',_binary '2377'),(41,'yesics263@gmail.com','2023-04-04 05:18:12',_binary '2393'),(42,'juan@example.com','2023-04-13 22:56:26',_binary '25'),(43,'vguzmanloredo@gmail.com','2023-04-13 23:20:03',_binary '38'),(44,'guadalupecondesalazar@gmail.com','2023-04-15 04:09:56',_binary '26'),(45,'vguzmanloredo@gmail.com','2023-04-15 04:53:40',_binary '43'),(46,'vguzmanloredo@gmail.com','2023-04-16 01:08:11',_binary '60'),(47,'vguzmanloredo@gmail.com','2023-04-16 01:55:53',_binary '74'),(48,'vguzmanloredo@gmail.com','2023-04-16 02:06:26',_binary '93'),(49,'vguzmanloredo@gmail.com','2023-04-16 02:24:18',_binary '107'),(50,'vguzmanloredo@gmail.com','2023-04-16 02:27:46',_binary '121'),(51,'vguzmanloredo@gmail.com','2023-04-16 02:31:15',_binary '135'),(52,'vguzmanloredo@gmail.com','2023-04-16 23:16:00',_binary '152'),(53,'vguzmanloredo@gmail.com','2023-04-17 00:23:43',_binary '212'),(54,'vguzmanloredo@gmail.com','2023-04-17 00:49:18',_binary '241'),(55,'vguzmanloredo@gmail.com','2023-04-17 00:51:33',_binary '259'),(56,'vguzmanloredo@gmail.com','2023-04-17 00:55:30',_binary '276'),(57,'guadalupecondesalazar@gmail.com','2023-04-17 01:41:12',_binary '304'),(58,'guadalupecondesalazar@gmail.com','2023-04-17 01:44:30',_binary '321'),(59,'guadalupecondesalazar@gmail.com','2023-04-17 01:47:16',_binary '335'),(60,'yesics263@gmail.com','2023-04-17 01:57:24',_binary '350'),(61,'yesics263@gmail.com','2023-04-17 02:09:45',_binary '365'),(62,'yesics263@gmail.com','2023-04-17 02:20:24',_binary '392'),(63,'yesics263@gmail.com','2023-04-17 02:28:06',_binary '412'),(64,'vguzmanloredo@gmail.com','2023-04-17 04:04:16',_binary '426'),(65,'vguzmanloredo@gmail.com','2023-04-17 15:24:01',_binary '455'),(66,'yesics263@gmail.com','2023-04-17 15:26:47',_binary '477'),(67,'yesics263@gmail.com','2023-04-17 15:35:37',_binary '498'),(68,'vguzmanloredo@gmail.com','2023-04-17 18:00:06',_binary '521'),(69,'vguzmanloredo@gmail.com','2023-04-17 21:29:13',_binary '538'),(70,'vguzmanloredo@gmail.com','2023-04-17 23:20:16',_binary '567'),(71,'vguzmanloredo@gmail.com','2023-04-17 23:22:20',_binary '581'),(72,'vguzmanloredo@gmail.com','2023-04-17 23:44:49',_binary '601'),(73,'vguzmanloredo@gmail.com','2023-04-17 23:47:14',_binary '617'),(74,'vguzmanloredo@gmail.com','2023-04-18 00:09:45',_binary '648'),(75,'vguzmanloredo@gmail.com','2023-04-18 00:19:24',_binary '663'),(76,'vguzmanloredo@gmail.com','2023-04-18 00:30:19',_binary '691'),(77,'vguzmanloredo@gmail.com','2023-04-18 00:36:00',_binary '710'),(78,'vguzmanloredo@gmail.com','2023-04-18 03:23:25',_binary '724'),(79,'vguzmanloredo@gmail.com','2023-04-18 03:50:14',_binary '746'),(80,'vguzmanloredo@gmail.com','2023-04-18 03:53:43',_binary '760'),(81,'vguzmanloredo@gmail.com','2023-04-18 14:36:58',_binary '799'),(82,'vguzmanloredo@gmail.com','2023-04-18 14:39:38',_binary '813'),(83,'vguzmanloredo@gmail.com','2023-04-18 14:46:49',_binary '827'),(84,'vguzmanloredo@gmail.com','2023-04-18 14:49:04',_binary '841'),(85,'vguzmanloredo@gmail.com','2023-04-18 14:50:45',_binary '855'),(86,'vguzmanloredo@gmail.com','2023-04-18 15:37:36',_binary '877'),(87,'vguzmanloredo@gmail.com','2023-04-18 15:41:53',_binary '898'),(88,'yesics263@gmail.com','2023-04-18 15:45:01',_binary '912'),(89,'yesics263@gmail.com','2023-04-18 15:46:17',_binary '926'),(90,'vguzmanloredo@gmail.com','2023-04-18 16:01:43',_binary '940'),(91,'vguzmanloredo@gmail.com','2023-04-18 16:05:46',_binary '955'),(92,'vguzmanloredo@gmail.com','2023-04-18 16:08:02',_binary '969'),(93,'vguzmanloredo@gmail.com','2023-04-18 16:09:18',_binary '983'),(94,'yesics263@gmail.com','2023-04-18 16:10:00',_binary '997'),(95,'yesics263@gmail.com','2023-04-18 16:14:23',_binary '1014'),(96,'Luzmariaguzmanloredo8@gmail.com','2023-04-18 16:15:12',_binary '1021'),(97,'vguzmanloredo@gmail.com','2023-04-18 16:30:18',_binary '1035'),(98,'vguzmanloredo@gmail.com','2023-04-18 16:34:48',_binary '1049'),(99,'vguzmanloredo@gmail.com','2023-04-18 17:26:06',_binary '1064'),(100,'vguzmanloredo@gmail.com','2023-04-18 17:27:57',_binary '1078'),(101,'vguzmanloredo@gmail.com','2023-04-18 17:31:58',_binary '1092'),(102,'vguzmanloredo@gmail.com','2023-04-18 18:41:07',_binary '1118'),(103,'vguzmanloredo@gmail.com','2023-04-18 18:43:28',_binary '1132'),(104,'vguzmanloredo@gmail.com','2023-04-18 18:46:28',_binary '1146'),(105,'vguzmanloredo@gmail.com','2023-04-18 18:48:07',_binary '1165'),(106,'Luzmariaguzmanloredo8@gmail.com','2023-04-18 18:54:30',_binary '1178'),(107,'Luzmariaguzmanloredo8@gmail.com','2023-04-18 20:02:03',_binary '1193'),(108,'Luzmariaguzmanloredo8@gmail.com','2023-04-18 20:08:33',_binary '1201'),(109,'vguzmanloredo@gmail.com','2023-04-18 20:13:58',_binary '1219'),(110,'Luzmariaguzmanloredo8@gmail.com','2023-04-18 22:26:22',_binary '1234');
/*!40000 ALTER TABLE `registro_sesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `apellidoP` varchar(30) DEFAULT NULL,
  `apellidoM` varchar(30) DEFAULT NULL,
  `acceso` varchar(20) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan','juan@example.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Pérez','González','administrador','5551234567'),(2,'Guadalupe Yesenia','guadalupecondesalazar@gmail.com','26429a356b1d25b7d57c0f9a6d5fed8a290cb42374185887dcd2874548df0779','Conde','Salazar','Administrador','8312379246'),(3,'Yesenia','yesics263@gmail.com','26429a356b1d25b7d57c0f9a6d5fed8a290cb42374185887dcd2874548df0779','Conde','Salazar','Empleado','8312379246'),(4,'Ana','ana@email.com','6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090','Hernández','Martínez','Empleado','5555555556'),(5,'Sofía','sofia@email.com','65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5','Díaz','Sánchez','Empleado','5555555558'),(6,'Luis','luis@email.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','Pérez','Gómez','Administrador','5555555559'),(7,'María','maria@email.com','edf9cf90718610ee7de53c0dcc250739239044de9ba115bb0ca6026c3e4958a5','Ramírez','Flores','Empleado','5555555560'),(8,'Jorge','jorge@email.com','dd130a849d7b29e5541b05d2f7f86a4acd4f1ec598c1c9438783f56bc4f0ff80','Moreno','Castañeda','Empleado','5555555561'),(9,'Carla','carla@email.com','8588310a98676af6e22563c1559e1ae20f85950792bdcd0c8f334867c54581cd','González','Romero','Empleado','5555555562'),(10,'Roberto','roberto@email.com','e8f56862d74ef5599af4eeca73924bfa44a6773a497af0c29c48e18729ba6ff0','Martínez','García','Administrador','5555555563'),(11,'Elena','elena@email.com','abfd6e004a42f70063fc32b2f0845e1405f2365ca63b7047deacf6db50c6f5be','Castillo','Sánchez','Empleado','5555555564'),(12,'José','jose.santos@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Santos','Fernández','Empleado','5551234567'),(13,'Andrea','andrea.rodriguez@hotmail.com','65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5','Rodríguez','Vázquez','Empleado','5559876543'),(14,'Héctor','hector.garcia@yahoo.com','edf9cf90718610ee7de53c0dcc250739239044de9ba115bb0ca6026c3e4958a5','García','Martínez','Administrador','5558765432'),(15,'Marisol','marisol.lopez@gmail.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','López','Hernández','Empleado','5557654321'),(16,'Roberto','roberto.fernandez@hotmail.com','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f','Fernández','González','Empleado','5552345678'),(17,'Ana','ana.gutierrez@yahoo.com','6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090','Gutiérrez','Hernández','Empleado','5556543210'),(18,'Mario','mario.perez@gmail.com','daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5','Pérez','González','Administrador','5553456789'),(19,'Natalia','natalia.santiago@hotmail.com','8e7ab8d9fe3b324acdd1f76735eea350ea61ac24cbd17e5446946e5a4c71d999','Santiago','González','Empleado','5554567890'),(20,'Luisa','luisa.mendez@yahoo.com','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','Méndez','Hernández','Empleado','5557890123'),(21,'Pedro','pedro.castillo@gmail.com','dd130a849d7b29e5541b05d2f7f86a4acd4f1ec598c1c9438783f56bc4f0ff80','Castillo','Hernández','Administrador','5550123456'),(22,'María','maria123@gmail.com','67b25de5251afe71e04858aa9314ceb36336ee8549a35401982d5069cacb1057','González','Vázquez','Empleado','5552345678'),(23,'Pedro','pedro456@hotmail.com','77843fa6a4f380c36f6b3cd903a720b235d6b848f090974c30dbc85cc51cffd0','López','Fernández','Empleado','5558765432'),(24,'Luis','luisita23@yahoo.com','9429d904b15abf888102bb11f547b9fc23f42b7b21f4e312acf6c7cd876e8505','Ramírez','Pérez','Administrador','5551122334'),(25,'Ana','ana34@gmail.com','2c01c40582f616ee13df48bfb60c1609f590863568c155522a80418ba7ce9488','Gutiérrez','Juárez','Empleado','5554433221'),(26,'Carlos','carlos1@hotmail.com','945f9723a678b9b7220c89ccc474946ae787f3bcf799e4890d6871938792ba39','Díaz','Mendoza','Empleado','5556677889'),(27,'Laura','laurita123@yahoo.com','460c30978fba2db01495c30108f1ca4582e7f3f8fc456df47d3b82b92f24730b','Vargas','Ramos','Administrador','5553210987'),(28,'Jorge','jorge2@gmail.com','312a8cfe51ee65778c4189ec2b0a9ee93826898a47efb31e32435f423379a850','Gómez','Castillo','Empleado','5555555555'),(29,'Isabel','isabel3@hotmail.com','1fe403265e5a4ad5995723f8828a03f358529db608f7b32a5cb792590b1a0ec1','García','Torres','Empleado','5557778889'),(30,'Diego','diego567@yahoo.com','ef9a23bf5928f66adfd2567185568d9bb1e1c9767e14ccef7d2d184c67fb5ce9','Flores','Márquez','Administrador','5550987654'),(31,'Sofía','sofia22@gmail.com','fc8633b54eddb42c76943b1100046495b765cf467c5134c9355ffc8f0f881b04','Hernández','Álvarez','Empleado','5551112233'),(32,'Ismael','ismael@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','García','Hernández','Empleado','5551234567'),(33,'Sofía','sofia@hotmail.com','8e7ab8d9fe3b324acdd1f76735eea350ea61ac24cbd17e5446946e5a4c71d999','Hernández','García','Administrador','5559876543'),(34,'Miguel','miguel@yahoo.com','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','Ramírez','Martínez','Empleado','5552345678'),(35,'Daniela','daniela@gmail.com','08a417d732e03b18797c81e6f9befd5ef3632f162c5b920e2bec64e89a2dce33','Sánchez','González','Empleado','5558765432'),(36,'Jesús','jesus@hotmail.com','6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090','Flores','Hernández','Empleado','5553456789'),(37,'María','maria@gmail.com','65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5','González','Pérez','Empleado','5557654321'),(38,'David','david@yahoo.com','5a63e75a6e7a09f1f2bbded46dd2acae2211c972f09f109c822cd7cc06db0db6','Martínez','García','Empleado','5552345678'),(39,'Lucía','lucia@hotmail.com','5ac0852e770506dcd80f1a36d20ba7878bf82244b836d9324593bd14bc56dcb5','Hernández','Ramírez','Administrador','5554567890'),(40,'Alejandro','alejandro@gmail.com','0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e','Pérez','Sánchez','Empleado','5556789012'),(41,'Fernanda','fernanda@hotmail.com','dd130a849d7b29e5541b05d2f7f86a4acd4f1ec598c1c9438783f56bc4f0ff80','García','Sánchez','Empleado','5555432167'),(42,'Julieta','julieta@mail.com','43dcbb6e23ae924c1e40b44e58c05836e758502bf2801a9d4bb31cbb76b67ece','García','Hernández','Empleado','5566778899'),(43,'Arturo','arturo@mail.com','8a67b9a136520edf23e38d1883352892d7fb9fc78d18e46e5c57c51d62086a08','Martínez','Gómez','Administrador','5577889900'),(44,'Paula','paula@mail.com','4e74a51e6bee83ab24419f0ef51d597ceb9ba850454832265fc7c5048f1894fa','Fernández','Sánchez','Empleado','5588990011'),(45,'Sofía','sofia@mail.com','a3e1a8a3ccd08f006f9df0b36f7a83809aff603bcd0ad5504821592c85ed3b22','López','Hernández','Empleado','5599001122'),(46,'Hugo','hugo@mail.com','1c910cef708602ead93da4f79767a182da1d6618b695cd5a55c477abc9f8bcaa','González','Mendoza','Empleado','5511223344'),(47,'Camila','camila@mail.com','3c8ac57c21d7bcfc67049d8d4cef7fd609f43b5dbd102d26faac0dd3ee379a5d','Díaz','Ramírez','Administrador','5522334455'),(48,'Leonardo','leonardo@mail.com','a0ce073d8054fe1bb21b792266aba41130a430594264827a113d1bb3e9c85f8d','Torres','Vázquez','Empleado','5533445566'),(49,'Brenda','brenda@mail.com','f465a16937f73413547c90838b907bb2002a8e46999edbcc8e59cfb885ec9eea','García','Hernández','Empleado','5544556677'),(50,'Valeria','valeria@mail.com','63bcc150ecaa8a6143dc145a6ade6ee6a61533b0bc03528dee329e64afdb7e6a','Fernández','Sánchez','Empleado','5566778899'),(51,'caca','asaa@mail','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','mojon','estronso','Administrador','845'),(52,'victor manuel','vguzmanloredo@gmail.com','1baf44614fc3aea90857dade7a2447868fc9d8a6cd7e4bb987751dfb858eb23d','guzman','loredo','Administrador','8312410986'),(119,'jose','marisa@email.com','72a1b4c2558ad9078766f77a6eef7f74344680ba5932a5c1e0f90e8ec5755cea','as','','Empleado','4585125698'),(120,'vector','vec@gmail.com','ee0b8a19fba9862d3b80de29a3831211b552609595df2a2599e6d64030919cb9','vecon','','Empleado','4851478526'),(121,'admn','admn','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9','admn','admn','Administrador','0');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_usuario` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'usuarios', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_usuarios` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_usuario` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'usuarios', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_usuarios` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_usuario` AFTER DELETE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'usuarios', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_usuarios` AFTER DELETE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'clientes', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVentas` int NOT NULL AUTO_INCREMENT,
  `fecha_hora` datetime DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `idCliente` (`idCliente`),
  KEY `FK_Ventas_Empleados` (`idEmpleado`),
  CONSTRAINT `FK_Ventas_Empleados` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (102,'2023-05-02 09:02:21',58.30,58.30,NULL,52),(103,'2023-05-02 09:03:42',87.45,87.45,NULL,52),(104,'2023-05-02 11:24:59',120.00,120.00,NULL,52),(105,'2023-05-02 11:26:34',90.00,90.00,NULL,52),(106,'2023-05-02 17:09:52',437.00,437.00,1,52),(107,'2023-05-22 11:10:10',136.40,136.40,1,52),(108,'2023-05-22 16:59:46',24.00,24.00,NULL,52),(109,'2023-05-22 17:00:15',48.00,48.00,NULL,52),(110,'2023-05-22 17:03:37',140.00,140.00,NULL,52),(111,'2023-05-22 17:10:55',140.00,140.00,NULL,52),(112,'2023-05-22 17:16:54',50.00,50.00,NULL,52),(113,'2023-05-22 21:01:03',29.99,29.99,NULL,52),(114,'2023-05-22 21:11:31',19.22,19.22,NULL,52);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_insertar_venta` AFTER INSERT ON `ventas` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'ventas', 'INSERCION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_modificar_venta` AFTER UPDATE ON `ventas` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'ventas', 'ACTUALIZACION');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_eliminar_venta` AFTER DELETE ON `ventas` FOR EACH ROW BEGIN
    INSERT INTO bitacora (fecha, nombre, tabla, accion)
    VALUES (NOW(), USER(), 'ventas', 'ELIMINAR');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventas_temp`
--

DROP TABLE IF EXISTS `ventas_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_temp` (
  `idVentas` int NOT NULL DEFAULT '0',
  `fecha_hora` datetime DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_temp`
--

LOCK TABLES `ventas_temp` WRITE;
/*!40000 ALTER TABLE `ventas_temp` DISABLE KEYS */;
INSERT INTO `ventas_temp` VALUES (69,'2023-04-22 19:21:03',36000.00,32400.00,NULL,8),(70,'2023-04-22 20:19:20',NULL,NULL,NULL,NULL),(71,'2023-04-22 20:20:20',NULL,NULL,31,NULL),(72,'2023-04-22 20:25:00',NULL,NULL,NULL,NULL),(73,'2023-04-22 20:34:07',3999.80,3599.82,NULL,NULL),(74,'2023-04-22 20:35:48',999.95,999.95,NULL,NULL),(75,'2023-04-22 20:36:36',1999.90,1799.91,NULL,NULL),(76,'2023-04-22 20:39:39',999.95,999.95,NULL,NULL),(77,'2023-04-22 20:42:25',999.95,999.95,NULL,NULL),(78,'2023-04-22 20:43:41',1999.90,1799.91,31,NULL),(79,'2023-04-22 20:45:16',399.98,399.98,NULL,NULL),(80,'2023-04-22 20:51:07',399.98,399.98,NULL,8),(81,'2023-04-22 20:55:45',599.97,599.97,31,8),(82,'2023-04-22 21:29:07',4200.00,3780.00,NULL,8),(83,'2023-04-22 21:29:29',8400.00,7560.00,NULL,8),(85,'2023-04-25 19:38:06',8500.00,7650.00,NULL,59),(86,'2023-04-25 19:44:31',18000.00,16200.00,31,59),(87,'2023-04-25 19:52:41',60.00,60.00,NULL,59),(88,'2023-04-25 19:58:57',8400.00,7560.00,NULL,59),(90,'2023-04-27 20:49:33',1656.38,1490.74,31,59),(91,'2023-04-27 20:52:16',1235.85,1112.26,31,59),(92,'2023-04-27 20:54:32',1347.70,1212.93,31,59),(94,'2023-04-28 12:12:07',1771.20,1594.08,NULL,59),(96,'2023-04-30 23:07:27',400.00,400.00,2,52),(97,'2023-04-30 23:10:39',350.00,350.00,2,52),(98,'2023-04-30 23:20:08',100.00,100.00,2,52);
/*!40000 ALTER TABLE `ventas_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_tienda'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCliente`(
 	IN id_cliente int,
     IN cliente_curp VARCHAR(18),
     IN cliente_nombre VARCHAR(50),
     IN cliente_apellidoP VARCHAR(20),
     IN cliente_apellidoM VARCHAR(20),
     IN cliente_telefono VARCHAR(10),
     IN cliente_direccion VARCHAR(100),
     IN cliente_correo varchar(100)
 )
BEGIN
     UPDATE clientes
     SET nombre = cliente_nombre,
         apellido_P = cliente_apellidoP,
         apellido_M = cliente_apellidoM,
         telefono = cliente_telefono,
         direccion = cliente_direccion,
         curp= cliente_curp,
         correo=cliente_correo
     WHERE idCliente = id_cliente;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarEmpleado`(
  	  id_empleado int,
      empleado_nombre varchar(30),
      empleado_apellidoP varchar(30),
      empleado_apellidoM varchar(30),
      empleado_curp VARCHAR(18),
      empleado_telefono VARCHAR(10),
      empleado_direccion VARCHAR(100),
      empleado_rol varchar(20)
  )
BEGIN
  DECLARE idU int;
  SELECT idUsuario INTO idU  FROM empleados WHERE idEmpleado= id_empleado;
      UPDATE empleados
      SET direccion = empleado_direccion,
          curp= empleado_curp,
          nombre=empleado_nombre,
          apellidoP=empleado_apellidoP,
          apellidoM=empleado_apellidoM
      WHERE idEmpleado = id_empleado;
  	update usuarios
      SET telefono=empleado_telefono,
      acceso=empleado_rol
      WHERE idUsuario=idU;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProductos`(
	IN p_id varchar(15),
    IN p_nombre VARCHAR(30),
    IN vencimiento DATE,
    IN p_compra DECIMAL(9,2),
    IN p_venta DECIMAL(9,2),
    IN p_cant int,
    IN cate varchar(30),
    IN prov varchar(200)
)
BEGIN
  DECLARE idProv int;
  DECLARE idCate int;
  SELECT idProveedor INTO idProv FROM proveedores WHERE nombre = prov;
  SELECT idCategoria INTO idCate FROM categoria WHERE descripcion = cate;

   UPDATE productos
    SET nombre = p_nombre,
        fechaVencimiento = vencimiento,
        precioCompra = p_compra,
        precioVenta = p_venta,
        cantidad = p_cant,
        idCategoria = idCate,
        idProveedor = idProv
    WHERE serie = p_id;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProveedor`(
	IN proveedor_id int,
    IN proveedor_nombre VARCHAR(200),
    IN proveedor_telefono VARCHAR(10),
    IN proveedor_direccion VARCHAR(100)
)
BEGIN
    UPDATE proveedores
    SET nombre = proveedor_nombre,
        telefono = proveedor_telefono,
        direccion = proveedor_direccion
    WHERE idProveedor = proveedor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarStock`(IN id char(10))
BEGIN
UPDATE productos
SET cantidad=0
WHERE serie=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ascenderUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ascenderUsuario`(IN id int)
BEGIN
	UPDATE usuarios
    SET acceso='Administrador'
    WHERE idUsuario=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autorizarAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autorizarAdmin`(IN contraseña VARCHAR(64), IN id int)
BEGIN
DECLARE p_correo varchar(100);
DECLARE pass_encriptada VARCHAR(64);

SET pass_encriptada = SHA2(contraseña, 256);
SELECT correo INTO p_correo FROM usuarios WHERE idUsuario=id;
SELECT * FROM usuarios WHERE correo = p_correo AND pass = pass_encriptada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarAdministrador`(
   in_contraseña varchar(64)
)
BEGIN
   DECLARE pass_encriptada VARCHAR(64);
   SET pass_encriptada = SHA2(in_contraseña, 256);
   SELECT * FROM usuarios WHERE pass = pass_encriptada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarCliente`(
    IN c_curp varchar(18)
)
BEGIN
	select * from clientes where CURP=c_curp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarEmpleado`(id int)
BEGIN
	select idEmpleado from empleados where idUsuario=id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarfechaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarfechaVenta`(
     IN fechaIn DateTime
 )
BEGIN
 	select * from ventas where fecha_hora=fechaIn;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarProdID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarProdID`(
     IN codigo varchar(30)
 )
BEGIN
         SELECT * FROM productos WHERE serie = codigo;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarProdNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarProdNombre`(
     IN nom varchar(30)
 )
BEGIN
         SELECT * FROM productos WHERE nombre = nom;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarContraseña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarContraseña`(
   in_correo varchar(100),
   in_contraseña varchar(64)
)
BEGIN
    SET @pass_encriptada = SHA2(in_contraseña, 256);
    UPDATE usuarios
    SET pass = @pass_encriptada
    WHERE correo = in_correo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCliente`(IN id_cliente int)
BEGIN
DELETE FROM clientes
WHERE idCliente = id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarEmpleado`(IN empleado_id int)
BEGIN
 DELETE FROM empleados
 WHERE idEmpleado = empleado_id;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProductos`(IN producto_id VARCHAR(15))
BEGIN
 DELETE FROM productos
 WHERE serie = producto_id;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProveedor`(IN proveedor_id int)
BEGIN
DELETE FROM proveedores
WHERE idProveedor = proveedor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarUsuario`(IN id int)
BEGIN
-- Eliminar cliente relacionado al usuario
DELETE c FROM clientes c
INNER JOIN usuarios u ON c.idUsuario = u.idUsuario
WHERE u.idUsuario = id;

-- Eliminar empleado relacionado al usuario
DELETE e FROM empleados e
INNER JOIN usuarios u ON e.idUsuario = u.idUsuario
WHERE u.idUsuario = id;

-- Eliminar usuario de la tabla usuarios
DELETE FROM usuarios WHERE idUsuario = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generarTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generarTicket`(
	in ventaID int
)
BEGIN
SELECT dv.idVenta, v.fecha_hora, p.serie, p.nombre, dv.cantidad, dv.precio, dv.total, c.nombre AS nombre_cliente,
c.apellido_P AS apellidoPCliente, c.apellido_M AS apellidoMCliente, e.nombre AS nombre_empleado,
e.apellidoP AS apellidoPEmpleado, e.apellidoM AS apellidoMEmpleado
FROM detalleventas dv
JOIN productos p ON dv.idProducto = p.serie
JOIN ventas v ON dv.idVenta = v.idVentas
JOIN clientes c ON v.idCliente = c.idCliente
JOIN empleados e ON v.idEmpleado = e.idEmpleado
WHERE dv.idVenta = ventaID;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_login`(IN p_correo VARCHAR(100),IN p_pass VARCHAR(64))
BEGIN
   DECLARE pass_encriptada VARCHAR(64);
   SET pass_encriptada = SHA2(p_pass, 256);
   SELECT * FROM usuarios WHERE correo = p_correo AND pass = pass_encriptada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_actualizar_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_actualizar_info`(
    IN p_nombre varchar(70),
    IN p_direccion varchar(100),
    IN p_telefono char(10),
    IN p_web varchar(50),
    IN p_correo varchar(100)
 )
BEGIN
    IF EXISTS(SELECT * FROM info) THEN
       UPDATE info SET nombre = p_nombre,telefono=p_telefono, direccion = p_direccion, web = IF(p_web = '', NULL, p_web),
       correo = IF(p_correo = '', NULL, p_correo);
    ELSE
       INSERT INTO info (nombre, direccion, telefono, web, correo) 
       VALUES (p_nombre, p_direccion, p_telefono, IF(p_web = '', NULL, p_web), 
       IF(p_correo = '', NULL, p_correo));
    END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_cliente`(
  IN p_nombre VARCHAR(50),
  IN p_apellido_P VARCHAR(20),
  IN p_apellido_M VARCHAR(20),
  IN p_CURP VARCHAR(18),
  IN p_telefono VARCHAR(10),
  IN p_direccion VARCHAR(100)
)
BEGIN
  INSERT INTO clientes (nombre, apellido_P, apellido_M, CURP, telefono, direccion,fecha)
  VALUES (p_nombre, p_apellido_P, p_apellido_M, p_CURP, p_telefono, p_direccion,NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_detalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_detalleVenta`(
    in_idProd varchar(15),
    in_cantidad int,
    in_precio DECIMAL(8,2),
    in_total DECIMAL(8,2)
)
BEGIN 
DECLARE idVenta int;
SELECT idVentas INTO idVenta FROM ventas ORDER BY idVentas DESC LIMIT 1;
    INSERT INTO detalleVentas (idVenta, idProducto, cantidad, precio, total)
    VALUES (idVenta, in_idProd, in_cantidad, in_precio, in_total);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_producto`(
   IN p_serie varchar(15),
   IN p_nombre VARCHAR(30),
   IN pr_proveedor VARCHAR(200),
   IN p_vencimiento DATE,
   IN p_compra decimal(9,2),
   IN p_venta decimal(9,2),
   IN p_cantidad int,
   IN c_categoria varchar(30)
 )
BEGIN
   DECLARE idProv int;
   DECLARE idCate int;
   SELECT idProveedor INTO idProv FROM proveedores WHERE nombre = pr_proveedor;
   SELECT idCategoria INTO idCate FROM categoria WHERE descripcion = c_categoria;
 SELECT  nombre FROM proveedores;
 
   INSERT INTO productos (serie, nombre, fechaIngreso, fechaVencimiento, precioCompra, precioVenta, cantidad, idCategoria, idProveedor)
   VALUES (p_serie, p_nombre, NOW(), p_vencimiento, p_compra, p_venta, p_cantidad, idCate, idProv);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_proveedor`(
  IN p_nombre VARCHAR(100),
  IN p_telefono VARCHAR(10),
  IN p_direccion VARCHAR(100)
)
BEGIN
  INSERT INTO proveedores (nombre, telefono, direccion, fecha)
  VALUES (p_nombre, p_telefono, p_direccion,NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_venta`(
     in_subtotal DECIMAL(8,2),
     in_total DECIMAL(8,2),
     in_idCliente int,
     in_vendedor int
 )
BEGIN 
IF in_idCliente IS NULL OR in_idCliente = 0 THEN
    INSERT INTO ventas (fecha_hora, subtotal, total, idEmpleado)
    VALUES (NOW(), in_subtotal, in_total, in_vendedor);
  ELSE
    INSERT INTO ventas (fecha_hora, subtotal, total, idCliente, idEmpleado)
    VALUES (NOW(), in_subtotal, in_total, in_idCliente, in_vendedor);
	END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarCategoria`()
BEGIN
    SELECT * FROM categoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarClientes`()
BEGIN
    SELECT * FROM clientes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarEmpleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarEmpleados`()
BEGIN
 SELECT  e.idEmpleado, e.nombre, e.apellidoP, e.apellidoM, e.curp, e.direccion, u.telefono, u.acceso,u.correo
 FROM empleados e
 JOIN usuarios u ON u.idUsuario = e.idUsuario;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarInfo`()
BEGIN
SELECT * FROM info;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarProductos`()
BEGIN
SELECT p.serie, p.nombre, pr.nombre as proveedor, p.fechaIngreso, p.fechaVencimiento, p.precioCompra, 
p.precioVenta, p.cantidad, c.descripcion as categoria
FROM productos p
JOIN categoria c ON p.idCategoria = c.idCategoria
JOIN proveedores pr ON p.idProveedor = pr.idProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarProveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarProveedores`()
BEGIN
    SELECT * FROM proveedores;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarUsuarios`()
BEGIN
 SELECT u.idUsuario, CONCAT( u.nombre, ' ', u.apellidoP, ' ', u.apellidoM) AS nombre, 
        u.correo, u.acceso
 FROM usuarios u;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarVentas`()
BEGIN
SELECT 
    ventas.idVentas, 
    clientes.nombre AS cliente_nombre, 
    clientes.apellido_P AS cliente_apellidoP, 
    clientes.apellido_M AS cliente_apellidoM, 
    empleados.nombre AS empleado_nombre, 
    empleados.apellidoP AS empleado_apellidoP, 
    empleados.apellidoM AS empleado_apellidoM, 
    ventas.subtotal, 
    ventas.total 
 FROM 
    ventas 
    LEFT JOIN clientes ON ventas.idCliente = clientes.idCliente 
    JOIN empleados ON ventas.idEmpleado = empleados.idEmpleado;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoCliente`(
 IN c_nombre VARCHAR(30),
 IN c_apellidoP varchar(30),
 IN c_apellidoM varchar(30),
 IN c_curp VARCHAR(18),
 IN c_tel VARCHAR(10),
 IN c_direccion varchar(100),
 IN c_Correo varchar(100)
 )
BEGIN
 INSERT INTO clientes(nombre, apellido_P, apellido_M, CURP, telefono, direccion,fecha,correo)
 VALUES(c_nombre, c_apellido_P, c_apellido_M, c_curp, c_tel, c_direccion, NOW(),c_correo);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoClienteUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoClienteUsuario`(
IN c_nombre VARCHAR(30),
IN c_apellidoP varchar(30),
IN c_apellidoM varchar(30),
IN c_curp VARCHAR(18),
IN c_tel VARCHAR(10),
IN c_direccion varchar(100),
IN c_correo VARCHAR(60),
IN c_pass VARCHAR(30),
IN c_acceso varchar(20)
)
BEGIN
 DECLARE idUser int;
   DECLARE pass_encriptada VARCHAR(64);
   SET pass_encriptada = SHA2(c_pass, 256);
   INSERT INTO usuarios(nombre, correo, pass, apellidoP, apellidoM, acceso, telefono)
   VALUES(c_nombre, c_correo, pass_encriptada, c_apellidoP, c_apellidoM, c_acceso, c_tel);
 SELECT idUsuario INTO idUser FROM usuarios WHERE correo = c_correo ORDER BY idUsuario DESC LIMIT 1;

INSERT INTO clientes(nombre, apellido_P, apellido_M, CURP, telefono, direccion, fecha, idUsuario)
VALUES(c_nombre, c_apellidoP, c_apellidoM, c_curp, c_tel, c_direccion, NOW(), idUser);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoEmpleado`(
  IN u_nombre varchar(30),
  IN u_apellidoP varchar(30),
  IN u_apellidoM varchar(30),
  IN u_curp varchar(18),
  IN u_direccion varchar(100)
  )
BEGIN
	DECLARE id int;
 SELECT idUsuario INTO id FROM usuarios ORDER BY idUsuario DESC LIMIT 1;

  	INSERT INTO empleados(nombre,apellidoP,apellidoM,curp,direccion,idUsuario)
      VALUES(u_nombre,u_apellidoP,u_apellidoM,u_curp,u_direccion,id);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoUsuario`(
 IN c_nombre VARCHAR(30),
 IN c_apellidoP varchar(30),
 IN c_apellidoM varchar(30),
 IN c_tel VARCHAR(10),
 IN c_correo VARCHAR(60),
 IN c_pass VARCHAR(30),
 IN c_acceso varchar(20)
 )
BEGIN
    DECLARE pass_encriptada VARCHAR(64);
    SET pass_encriptada = SHA2(c_pass, 256);
    INSERT INTO usuarios(nombre, correo, pass, apellidoP, apellidoM, acceso, telefono)
    VALUES(c_nombre, c_correo, pass_encriptada, c_apellidoP, c_apellidoM, c_acceso, c_tel);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerTickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerTickets`(
	in curp_cliente varchar(18)
)
BEGIN
SELECT v.idVentas, v.fecha_hora, v.subtotal, v.total
FROM ventas v
JOIN clientes c ON v.idCliente = c.idCliente
WHERE c.CURP = curp_cliente;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerUltimaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUltimaVenta`(
  )
BEGIN
	SELECT idVentas,idEmpleado FROM ventas ORDER BY idVentas DESC LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_info_clientes_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_info_clientes_usuarios`(IN u_correo varchar(60))
BEGIN
    SELECT u.idUsuario, c.nombre, c.apellido_M, c.apellido_P, c.curp, c.direccion
    FROM clientes c
    JOIN usuarios u ON c.idUsuario = u.idUsuario
    WHERE u.correo=u_correo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_sesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_sesion`(IN correo_usuario varchar(100))
BEGIN
    INSERT INTO registro_sesiones (usuario, fecha_hora, direccion_ip)
    VALUES (correo_usuario, NOW(), CONNECTION_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `restarProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `restarProd`(
   IN cod varchar(15),
   IN cant int
   )
BEGIN
 	UPDATE productos
     SET cantidad = (cantidad-cant)
     WHERE serie = cod;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sumararProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sumararProd`(
   IN cod varchar(15),
   IN cant int
   )
BEGIN
 	UPDATE productos
     SET cantidad = (cantidad+cant)
     WHERE serie = cod;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sumarProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sumarProd`(
   IN cod varchar(15),
   IN cant int
   )
BEGIN
 	UPDATE productos
     SET cantidad = (cantidad+cant)
     WHERE serie = cod;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verificarContraseña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verificarContraseña`(IN contraseña VARCHAR(64), IN id int)
BEGIN
DECLARE p_correo varchar(100);
DECLARE pass_encriptada VARCHAR(64);

SET pass_encriptada = SHA2(contraseña, 256);
SELECT correo INTO p_correo FROM usuarios WHERE idUsuario=id;
SELECT * FROM usuarios WHERE correo = p_correo AND pass = pass_encriptada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 11:06:04
