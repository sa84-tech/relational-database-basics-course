-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Процессоры'),(2,'Материнские платы'),(3,'Видеокарты'),(4,'Жесткие диски'),(5,'Оперативная память');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'moscow','Москва'),(2,'irkutsk','Иркутск'),(3,'novgorod','Новгород'),(4,'kazan','Казань'),(5,'omsk','Омск');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `discount` float unsigned DEFAULT NULL COMMENT 'Величина скидки от 0.0 до 1.0',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'moscow','omsk'),(2,'novgorod','kazan'),(3,'irkutsk','moscow'),(4,'omsk','irkutsk'),(5,'moscow','kazan'),(6,'moscow','s-petersburg'),(7,'s-petersburg','omsk');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(2,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(3,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(4,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(5,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(6,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(7,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(8,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(9,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(10,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(11,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(12,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(13,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(14,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(15,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(16,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(17,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(18,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(19,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(20,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(21,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(22,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(23,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(24,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(25,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(26,5,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(27,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(28,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(29,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(30,1,'2021-03-07 19:54:47','2021-03-07 19:54:47');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `total` int unsigned DEFAULT '1' COMMENT 'Количество заказанных товарных позиций',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Состав заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,23,2,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(2,21,6,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(3,6,7,8,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(4,16,4,8,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(5,17,3,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(6,24,6,9,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(7,14,6,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(8,11,1,8,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(9,26,4,6,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(10,10,3,9,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(11,6,3,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(12,14,4,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(13,2,2,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(14,2,6,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(15,6,2,8,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(16,27,2,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(17,22,7,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(18,12,1,6,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(19,23,1,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(20,1,4,9,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(21,14,1,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(22,30,3,9,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(23,10,3,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(24,18,4,8,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(25,5,6,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(26,9,1,6,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(27,9,7,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(28,18,7,9,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(29,17,4,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(30,26,1,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(31,2,1,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(32,17,5,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(33,21,4,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(34,12,1,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(35,9,6,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(36,14,3,1,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(37,13,1,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(38,28,1,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(39,4,2,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(40,25,5,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(41,3,4,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(42,4,6,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(43,27,2,6,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(44,20,1,2,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(45,22,2,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(46,27,3,7,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(47,19,7,3,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(48,26,2,4,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(49,27,4,10,'2021-03-07 19:54:47','2021-03-07 19:54:47'),(50,15,2,3,'2021-03-07 19:54:47','2021-03-07 19:54:47');
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товарные позиции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Intel Core i3-8100','Процессор для настольных персональных компьютеров, основанных на платформе Intel.',7890.00,1,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(2,'Intel Core i5-7400','Процессор для настольных персональных компьютеров, основанных на платформе Intel.',12700.00,1,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(3,'AMD FX-8320E','Процессор для настольных персональных компьютеров, основанных на платформе AMD.',4780.00,1,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(4,'AMD FX-8320','Процессор для настольных персональных компьютеров, основанных на платформе AMD.',7120.00,1,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(5,'ASUS ROG MAXIMUS X HERO','Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',19310.00,2,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(6,'Gigabyte H310M S2H','Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX',4790.00,2,'2021-03-07 14:24:33','2021-03-07 14:24:33'),(7,'MSI B250M GAMING PRO','Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX',5060.00,2,'2021-03-07 14:24:33','2021-03-07 14:24:33');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrics`
--

DROP TABLE IF EXISTS `rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubrics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrics`
--

LOCK TABLES `rubrics` WRITE;
/*!40000 ALTER TABLE `rubrics` DISABLE KEYS */;
INSERT INTO `rubrics` VALUES (1,'Видеокарты'),(2,'Память');
/*!40000 ALTER TABLE `rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Склады';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `storehouse_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `value` int unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Запасы на складе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Геннадий','1990-10-05','2021-03-07 14:24:32','2021-03-07 14:24:32'),(2,'Наталья','1984-11-12','2021-03-07 14:24:32','2021-03-07 14:24:32'),(3,'Александр','1985-05-20','2021-03-07 14:24:32','2021-03-07 14:24:32'),(4,'Сергей','1988-02-14','2021-03-07 14:24:32','2021-03-07 14:24:32'),(5,'Иван','1998-01-12','2021-03-07 14:24:32','2021-03-07 14:24:32'),(6,'Мария','1992-08-29','2021-03-07 14:24:32','2021-03-07 14:24:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07 21:19:55
