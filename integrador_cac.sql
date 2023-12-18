CREATE DATABASE  IF NOT EXISTS `integrador_cac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `integrador_cac`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: integrador_cac
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oradores`
--

DROP TABLE IF EXISTS `oradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oradores` (
  `orador_id` int(11) NOT NULL AUTO_INCREMENT,
  `orador_nombre` varchar(45) DEFAULT NULL,
  `orador_apellido` varchar(45) DEFAULT NULL,
  `orador_mail` varchar(45) DEFAULT NULL,
  `orador_temas` varchar(45) DEFAULT NULL,
  `orador_tema_comentario` varchar(235) DEFAULT NULL,
  `orador_fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oradores`
--

LOCK TABLES `oradores` WRITE;
/*!40000 ALTER TABLE `oradores` DISABLE KEYS */;
INSERT INTO `oradores` VALUES (1,'Steve','Jobs','stevejobs@icloud.com','Javascript React ','Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos perferendis amet, eveniet, ea quam neque iusto, laudantium ullam reiciendis veritatis tempora animi officia molestiae natus veniam unde cupiditate consectetur earum.','2023-12-16 18:05:02'),(2,'Bill','Gates','billgates@msn.com','Javascript React ','Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos perferendis amet, eveniet, ea quam neque iusto, laudantium ullam reiciendis veritatis tempora animi officia molestiae natus veniam unde cupiditate consectetur earum. ','2023-12-16 18:08:32'),(3,'Ada','Lovelace','ada@lovelace.com','Negocios Startups ','Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos perferendis amet, eveniet, ea quam neque iusto, laudantium ullam reiciendis veritatis tempora animi officia molestiae natus veniam unde cupiditate consectetur earum.','2023-12-16 18:14:21'),(6,'Sergio','Lopez','sergio_a_lopez@yahoo.com.ar','Otro','Entrega TP final JAVA','2023-12-17 17:06:30'),(7,'Codo A','Codo','codoacodo@cac.com','Javascript Negocios Startups Otro','Curso FullStack JAVA','2023-12-17 23:54:42');
/*!40000 ALTER TABLE `oradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18  1:45:10
