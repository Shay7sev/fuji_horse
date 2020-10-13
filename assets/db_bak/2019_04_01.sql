-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: fuji
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `t_address`
--

DROP TABLE IF EXISTS `t_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_address` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
INSERT INTO `t_address` VALUES ('3dc30f23-d4f1-4615-870b-b959e0cb16a6','张jin','上海','上海','金海路1000号','18521721677','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,'2019年02月27日10时4分',NULL),('7d18a006-0c99-4118-a82b-f4723c61e886','Stef','上海','上海','五角场','13814859875','971640625@qq.com','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,'2019年03月9日11时16分',NULL),('80083c4a-024f-4d32-84a1-aba31c948bdd','程','上海市','黄浦区','徐家汇路189号','18616651023','','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,'2019年03月5日11时25分',NULL);
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_address_to_order`
--

DROP TABLE IF EXISTS `t_address_to_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_address_to_order` (
  `id` varchar(255) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address_to_order`
--

LOCK TABLES `t_address_to_order` WRITE;
/*!40000 ALTER TABLE `t_address_to_order` DISABLE KEYS */;
INSERT INTO `t_address_to_order` VALUES ('01b75c5b-b9a3-4a74-b886-3e99bf98cde6','debdd657-f4cc-4284-b0ce-95c371051dbc','P002','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('046fed14-5f21-452c-af5d-494bac4e1eed','D201903050003','P001','80083c4a-024f-4d32-84a1-aba31c948bdd','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('04fe2cfd-0b5c-423a-a7ba-6e1fa46478ae','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P002','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('09856f8c-12af-4ac4-996c-9182f2c3c9a3','debdd657-f4cc-4284-b0ce-95c371051dbc','P003','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('099d614f-035c-4ea9-ae79-a3b5b76a14ec','D201903130050','P002','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('14c5cb77-6d0e-4323-9ade-2e54bf4a4eed','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P003','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('1924a1ff-0af0-4402-991a-db248676e65d','3b84b42d-45d8-4035-a278-41e7f4188cb0','P001','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('24126ba3-84fd-48e8-84cf-a79b88b8d574','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P003','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('26db381a-ae8f-4343-b2f5-e577d3e7bef7','8c5d9a17-dfe6-490d-b8c4-7cb8dc12b3d0','P001','72d93ff9-465a-468e-93dc-298e6fd58859','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('287c9a4b-b733-46f6-8cbf-ec8b5efc992b','e0b1ca1d-ed4b-4cc3-a26c-d04ff22e410e','P003','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('2bf427cc-98d2-4e5f-b675-26e9d83e0bbb','D201903060008','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('2e16d11a-16b0-46a9-9211-efa7d0458b0c','3e3902a4-e325-4342-b92f-11a1b7bb71d9','P002','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('31dd4177-5a27-49a2-9cf7-d892ceb32274','D201903190002','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('3294c87f-75fd-4109-a332-a2e244892b61','0bd7ae2c-1591-4938-91a7-5c4b2fb6d11d','P001','72d93ff9-465a-468e-93dc-298e6fd58859','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3419a55c-6fe8-46e1-bda1-0627bbd315a0','D201903220003','P001_0','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('358b93d9-692a-4288-ad4f-fa3f26895210','D201903060010','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3bd46204-b245-4d4d-af3f-84836f42dfb8','D201903130007','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3c182f0f-19ea-4c7e-a5af-c0be6dc703e0','d65778b2-0cf3-4acf-b356-7e58c90c185f','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('3dca1a35-20db-41dc-9499-1712968084b2','77a44013-ec14-4e17-b465-af1c7953b3b7','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('43bf9c26-eb97-4211-8156-b3c60ad2c199','D201903050004','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('45a4d099-93f8-4eec-9227-3eccdece76c3','D201903060006','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4b6ecc33-28af-4aad-a764-3cc10d3ba559','D201903060010','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4f41a3d3-2473-459c-a17c-445ebfe2f70e','010b37e6-1cca-4692-9df5-762ae028fdc1','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('5230b3f6-ead4-4421-a7b5-f76502332b6f','D201903130003','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('52fa340f-d1e2-4709-a425-127064d9888c','3b84b42d-45d8-4035-a278-41e7f4188cb0','P002','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('563a6432-987b-4b82-a2b8-969d5cd8ba1b','2df969c0-f58a-4f80-a76a-b1adaf0314fd','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('59a9529d-5651-45f1-94c4-bce994201c9a','D201903060006','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('6284fca9-b682-4ec0-bee8-2de8a47e083e','D201903090003','P002','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('638a91fd-7f08-4e8d-a23d-233b000175dc','D201903060010','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('67a2b1ba-5173-4dae-9e1a-2c41f9025254','D201903060012','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('6b9b4423-fdfe-43cb-a7d3-c558f9c1972e','595b6ef8-acd7-49bc-a21d-f637e818b12f','P003','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('6c157dec-9d76-4a1b-8097-c4b0051faaaa','D201903060013','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('6c97bdd7-8549-4808-88e7-f8650d4bd21f','3b84b42d-45d8-4035-a278-41e7f4188cb0','P001','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('7f95d4ff-77e5-49a9-9f56-5671701e88b9','6f43c46f-7120-43e1-ba31-7decdbd90f57','P002','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('83c00a2a-cfdd-4b64-8067-1488a612f17b','3e3902a4-e325-4342-b92f-11a1b7bb71d9','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('83e36fa7-46b1-4062-b4f0-cb0a2a0b64a4','2df969c0-f58a-4f80-a76a-b1adaf0314fd','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('8710d414-8500-4241-b5aa-59ba9f662129','D201903130001','P002','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('883dac34-c296-4297-97f0-7a31aef2a7e4','D201903220004','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('8931baf0-c9eb-48e2-b947-ef47388024fa','D201903060010','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('8bc96a9f-1bdf-43a3-a02b-cd8e4e0726ae','D201903220001','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('8f7150c6-53fa-4d13-aff5-c3d31c580f16','D201903040001','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('90e6b938-8a62-496b-b94c-6538e1b2224a','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P001','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('95a3d718-9681-4385-83f1-5f293bdde212','D201903060009','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('95e3921f-f935-4080-9644-e44539abdbdd','D201903220002','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('9ef3340f-e40c-4180-b424-1a90e866f131','D201903010006','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('a503971f-7004-49f0-8448-a37d99d63147','D201903130005','P002','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('a5c91381-37d7-40dc-bb5d-876925f2c0a4','D201903060012','P004','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('a5d90da6-dfda-49c7-b53f-c55cd49b8ac6','D201903180001','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('abf13cd2-a81c-4cae-bf64-8235693d2f40','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P002','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('b1ccbf9a-0dfc-4295-952f-5aefb0966720','77a44013-ec14-4e17-b465-af1c7953b3b7','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('b2db52ed-62c9-4b90-96e9-38e9bc2baa1b','D201903130053','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('bcf3b523-d674-47f4-a485-398b54a2c489','D201903210001','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('c375f6a2-fc8d-4772-ab24-a66d2f3c0050','D201903130050','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('c3f7a449-cb41-4897-b705-d9730e001ffc','2df969c0-f58a-4f80-a76a-b1adaf0314fd','P001','72d93ff9-465a-468e-93dc-298e6fd58859','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('c487a203-023c-4993-98ad-bdda63b1e7e3','0bd7ae2c-1591-4938-91a7-5c4b2fb6d11d','P002','72d93ff9-465a-468e-93dc-298e6fd58859','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('c948e06f-e970-4c60-9bb1-5cd66b60cf92','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P001','21cd7640-487a-457f-8fbf-4315e87c4054','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('c95e68a4-912f-4be1-9097-41540b24bf25','D201903050002','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('d1cf9c77-75b1-4475-8b1a-501a07c760ef','D201903190001','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('d48f36de-4ba0-4d5b-9f09-1060752a7236','D201903220001','P002','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('d80b0101-e869-45db-93e8-1a42b88e5a8c','595b6ef8-acd7-49bc-a21d-f637e818b12f','P002','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('defd5cb8-ebe9-4766-9bfb-1e71e286f0d6','D201903060011','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('e3d030b7-663c-49d2-8ddf-484eb4605637','595b6ef8-acd7-49bc-a21d-f637e818b12f','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e98fb692-0bee-4921-829e-f448b0668aac','D201903130001','P001','7d18a006-0c99-4118-a82b-f4723c61e886','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e9aa8498-f6fb-4a90-8e7d-25a910005034','D201903130054','P001','3dc30f23-d4f1-4615-870b-b959e0cb16a6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('fb810481-56de-4f8e-8200-3153fa09e391','D201903010013','P001','92289327-d62b-4bb6-8698-ef48592c17a4','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ');
/*!40000 ALTER TABLE `t_address_to_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_admin`
--

DROP TABLE IF EXISTS `t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin`
--

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES ('1','admin','super','8Uhb9ijn'),('ee4d4eed-e5e5-4cc1-a78f-97a901b85fde','stef','super','12345678'),('d7cbfc86-6f31-4c41-ad5d-78f3c9564b7a','sUser','superuser','12345'),('7825c993-e064-4ffe-bb25-1bda69b5136d','nUser','user','12345'),('2968f152-8cdf-45a7-a49f-93a0a1d23c50','normalman','nUser','123456'),('a46cfb89-a2b3-434d-bf0a-2872ba3d25cb','superman','sUser','123456');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cart`
--

DROP TABLE IF EXISTS `t_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cart` (
  `id` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cart`
--

LOCK TABLES `t_cart` WRITE;
/*!40000 ALTER TABLE `t_cart` DISABLE KEYS */;
INSERT INTO `t_cart` VALUES ('010a8024-040e-47db-ac93-3dc2d5117404','1','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','P001'),('03c71bce-0d07-4d48-b909-bacc3fb82e33','1','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','P001'),('048db110-04b6-4353-981f-ca9904dd6538','1','oZscE5oY0kR6TqR14Owlrsdw_ZEU','2'),('16f82c0c-2011-4784-b8e1-edf5efe3edde','1','oZscE5oY0kR6TqR14Owlrsdw_ZEU','1'),('676fff25-005f-403c-b861-74a654a8075a','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','1'),('69d55f3e-0540-43ac-8226-0f59d45f359a','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','88bda3ea-2fa0-41ef-b31b-277b135f5ff4'),('705db43f-04a7-4ba3-9136-4ab0bba48355','1','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak','P001'),('7fa550d9-c85f-4df9-864d-74df33e39535','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','3'),('a0a3f7ed-a892-45e1-9595-724e1eb1b13f','1','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','P002'),('af422a57-c2e6-4dc3-a0b7-c2fe05e52d58','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','2'),('b3f4393a-a7ab-4453-ae52-1961c7c7c912','1','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak','P003'),('b8fa888b-0dca-4c94-9bb2-f87630348b7d','1','oZscE5qA5kz8qI57LqK1KcZUHv-0','2'),('c82c45ea-67e7-422f-8e4f-fe9b023ccb37','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','P0004'),('d55bd2cf-d8a7-408d-aa5d-7105265f7cc9','1','oZscE5qA5kz8qI57LqK1KcZUHv-0','1'),('ddfa0886-600b-47f0-bfe4-2d3acf909443','1','oZscE5gh5Fgti1sc-LcwyOoo_4w0','P0005');
/*!40000 ALTER TABLE `t_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer` (
  `id` varchar(255) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer`
--

LOCK TABLES `t_customer` WRITE;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES ('1a378e74-d40a-46c9-bf48-20f33ba4d3a4','oZscE5gh5Fgti1sc-LcwyOoo_4w0','Stefano','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erTvY7FRTnWHBjJP1ic2c3gRkAPzmAt1ewP2Ht8bkJftjsTH2Eaumx127xgsWSj1LJmLiaJuw4HePEg/132',NULL,'Suzhou',NULL),('1e96929b-b782-4290-8e60-4cbe19d63ab2','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','Faye-Pride','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLibjYmiaNfLMbLicMQ45WlILZ8jzwkKOnymp8F5ibgUic2OuvchyoRcqndRemP2kOEtoh3EenFC45lshQ/132',NULL,'Luwan',NULL),('2','9527','Stef','url','20','shanghai','139391939'),('59930099-69c5-41f1-b598-5ad75cab20f2','oZscE5g8wGwXrkY4SCH5a3gVd8xg',NULL,NULL,NULL,NULL,NULL),('5cb28dc3-cbca-42ad-be10-232d1d3b1487','oZscE5oY0kR6TqR14Owlrsdw_ZEU',NULL,NULL,NULL,NULL,NULL),('7fa1185f-c0a7-4f89-999e-8ffe414d0e18','oPy-Q4taN02NpOACiHdnM851mzx8',NULL,NULL,NULL,NULL,NULL),('8074a40f-41c6-4f26-97fd-2f4f7563c01e','oZscE5qA5kz8qI57LqK1KcZUHv-0',NULL,NULL,NULL,NULL,NULL),('9cec3261-ec13-4c0c-858b-fb70155e4233',NULL,NULL,NULL,NULL,NULL,NULL),('a6771e9c-2327-4943-9976-27ec7bc272ca','oZscE5k5Z8zshGsBVDyhwOKzFLpY',NULL,NULL,NULL,NULL,NULL),('aa9d4dcb-8e1b-42e9-a941-ec1e29d35522','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','Stefano','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eptiaXjUgoBa9fjib8A9AmWsapm0gf8QCaB7WnomdfCGxHzzUYmxTdiaNk91LIT4ggu367nMBMXKicicuQ/132','','Suzhou','13814859875'),('eca01768-707a-4a09-942f-7b8b0b7f107f','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','张之渊 Jin⁷','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTICicrMEbmiaYPNB1az2WV0XOwYxjY8xR7orXwKIVY7CSlenBjZcbqB7Xkb7IKI6P3ibBxAuRv1gsIKg/132',NULL,'','44');
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_horse`
--

DROP TABLE IF EXISTS `t_horse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_horse` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `master` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_horse`
--

LOCK TABLES `t_horse` WRITE;
/*!40000 ALTER TABLE `t_horse` DISABLE KEYS */;
INSERT INTO `t_horse` VALUES ('02f92bca-0ee7-4f94-a897-d90218117c6a','小棕','女','3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','金'),('03044628-bdac-4fef-ac3e-d7fa6acb19ab','mamo','女','4','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','黑色'),('432e43fe-854c-4bf0-8067-c0fdb2e7b72a','本泽马','男','10','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',''),('65b6d353-159f-4d83-afaf-4723db5289db','小黑','女','2','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',''),('ad223','梅西','男','30','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','白'),('ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','feifei','女','12','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',''),('f204f775-8c20-4b6b-9067-8683a70d90ef','小彩','你','6','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','透明');
/*!40000 ALTER TABLE `t_horse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_horse_to_order`
--

DROP TABLE IF EXISTS `t_horse_to_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_horse_to_order` (
  `id` varchar(255) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `horse_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_horse_to_order`
--

LOCK TABLES `t_horse_to_order` WRITE;
/*!40000 ALTER TABLE `t_horse_to_order` DISABLE KEYS */;
INSERT INTO `t_horse_to_order` VALUES ('01d788b0-22b1-44c0-9274-6fcc7fd78b86','D201903050003','P001','03044628-bdac-4fef-ac3e-d7fa6acb19ab','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('02b4e4ec-45c1-4e6e-8eae-a1008814ded3','D201903130001','P002','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('088b0422-f3f8-4015-b7d5-845ba51c82fa','D201903220003','P001_0','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('09aaa9cb-be21-4011-87ec-4f7c14f407ca','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('0a50ac6a-1a64-4fb1-a4f5-864300f1f105','D201903010006','P001','cb8a49e2-865d-470f-8ecd-f9001dab19a3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('0bae763c-6b44-4684-b18e-5069841432be','D201903050003','P001','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('134e6685-424e-4893-a19a-9247c12adf43','D201903220001','P002','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('160faff2-9205-43cd-ab8f-2475c4e0e4c5','595b6ef8-acd7-49bc-a21d-f637e818b12f','P003','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('1659aa4c-d093-4b2e-a08f-950c13af94ab','D201903050003','P001','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('1a6c8647-ed77-44f6-aa56-7b843e8f24b1','D201903130054','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('2018c16d-7310-42b0-8999-a5fea85ac0d8','D201903040001','P001','cb8a49e2-865d-470f-8ecd-f9001dab19a3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('20e600e7-38d2-49dd-a64b-e17a7946a1b5','77a44013-ec14-4e17-b465-af1c7953b3b7','P001','dedd99a2-712a-4e71-8f46-1f2835546ce9','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('23758721-91d0-454e-b492-4cad62fe7bab','6f43c46f-7120-43e1-ba31-7decdbd90f57','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('25809b14-02a6-422d-bd6a-6494ed9c2839','D201903130003','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('27705bd5-b530-4658-8d66-34e1f3c49106','0bd7ae2c-1591-4938-91a7-5c4b2fb6d11d','P002','4edf9133-6fb4-48d8-bdb7-921a1e59bad3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('2a18fd3a-47e2-40ae-88d5-fe4d4daf1b9a','D201903130007','P001','65b6d353-159f-4d83-afaf-4723db5289db','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('2a52301b-82f9-4936-a851-05464a2cbc6f','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('2d6cbfdc-f185-4a6d-baf1-c61422aa8e40','85bad866-d005-40a1-a34a-7fedeb1bf49c','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('30763bfb-d918-4192-b8e5-bc0e806cf0b1','D201903050002','P001','65b6d353-159f-4d83-afaf-4723db5289db','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3189a16d-d334-4ddb-9e46-5b496dd37eef','D201903180001','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('368b8c0f-26ae-41c1-872e-dda02d1dec1d','3e3902a4-e325-4342-b92f-11a1b7bb71d9','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('38163012-db6f-4816-8a24-483d28505e3b','D201903010013','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('3a0feb42-0080-4a8d-9958-4b3b40d9adb8','0a550e06-5490-4317-b1e2-645ed3080203','P003','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('3b603b2f-b71e-4555-8afb-c2f76a060110','D201903220002','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('40a96155-d71c-4cb4-8395-73174e74c761','D201903050002','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('42c5e414-ea2b-41dc-a9af-65bbbdd32305','D201903250001','P001_1','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('42ed7374-1c47-4c03-8372-b06f9c293f30','debdd657-f4cc-4284-b0ce-95c371051dbc','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('4864c24a-52c1-4dc7-9de1-82e45a9c8f3f','D201903050002','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('48ce6289-c5af-4a0f-b228-94e3be64f90d','e0b1ca1d-ed4b-4cc3-a26c-d04ff22e410e','P003','cb8a49e2-865d-470f-8ecd-f9001dab19a3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('4c7de8de-a3d6-4092-840c-0530dea2951e','D201903090001','P003','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('4d9fa60f-a78d-484d-9c28-8628596c6aa6','D201903060008','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4dcc891d-2ef2-42e6-bf52-555fed55a92d','D201902280012','P002','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('4f339d92-529e-41fd-8d14-8c5835ca41c6','D201903060009','P004','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4f89e53d-ddcf-4331-81aa-972245d512a3','77a44013-ec14-4e17-b465-af1c7953b3b7','P001','dedd99a2-712a-4e71-8f46-1f2835546ce9','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('52e6f1f4-5459-4bfe-a1b6-e8f9bc8d5517','8da52700-2604-4b06-b809-72baf711c42d','P002','81a6a43d-7b22-489d-ac0e-5652bf090784','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5af37e90-9e58-4a55-af55-621f015b244a','debdd657-f4cc-4284-b0ce-95c371051dbc','P003','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5d0fad1e-f01b-46ec-bb86-6f898f30c4ac','D201903250001','P001_0','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5d5407f6-539f-4159-857b-7f295522823f','D201903090001','P002','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5dc3029f-1516-4627-810e-12a659e982e5','D201903220004','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5ed13d3b-a9e4-4bb9-89fb-407b5a31e196','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P003','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('612f0123-e422-44bc-9e2e-77d9197c1bc6','D201903130001','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('61672fb0-5a9f-4c4b-8572-f7f8022e05dd','595b6ef8-acd7-49bc-a21d-f637e818b12f','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('66e71f0d-bbf4-48a4-9fe1-87794f5ad8d0','D201903060006','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('67bd7559-3dbb-4aa7-9094-4fccb1707ed0','D201903130053','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('6a58d27f-feab-401c-8752-390e28e0d96e','D201903220001','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('6cbf091e-692a-492f-b980-cb275048342b','595b6ef8-acd7-49bc-a21d-f637e818b12f','P002','cb8a49e2-865d-470f-8ecd-f9001dab19a3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('75d9a4a1-590c-4861-82ce-485e589ed45e','3e3902a4-e325-4342-b92f-11a1b7bb71d9','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('795613b2-96ad-4ab0-8173-f042c0a3da88','D201903210001','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('7a858e7d-dac3-4fd9-8d9c-a5576aca52cb','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P003','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('83445609-cf88-479a-9a94-e194a9689ec3','D201903130005','P002','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('84bc8ee9-2b28-491e-8854-bc422017328d','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('878d1281-bf2e-4c80-b46e-d7c9e8ea6dcc','76662663-1fa3-4f6d-8bb8-39dc46f46fa8','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('87d2918a-ad5b-4b2b-b16d-57f33a46e902','D201903050002','P001','65b6d353-159f-4d83-afaf-4723db5289db','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('88796a54-92de-41d2-93be-af63f2e7dab8','010b37e6-1cca-4692-9df5-762ae028fdc1','P001','65b6d353-159f-4d83-afaf-4723db5289db','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('9a567cd2-ee87-43c9-8e55-6251af7c91f2','D201903060006','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('9ed1c0dd-9db4-4b01-9a87-73701ccf75eb','D201903060006','P001','65b6d353-159f-4d83-afaf-4723db5289db','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('a23a4abc-dfe1-49bb-b59d-73d2b3145f04','569e650b-3e74-4aa2-a388-ca62dcc743c0','P001','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('ac41eb2d-c869-4a58-9a99-68e02f5b66be','8c5d9a17-dfe6-490d-b8c4-7cb8dc12b3d0','P001','4edf9133-6fb4-48d8-bdb7-921a1e59bad3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('ae8ae9b3-3c02-457e-8042-2118a52b8d5e','D201903090003','P002','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('b21a49d0-1aae-43eb-af53-f802acedbfc5','5db8c7e7-a0b3-4e83-bbea-69c4d19acd6d','P001','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('b31623cc-1e81-4e4d-aed3-20a8507ba196','D201903050002','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('b67f7839-d98b-4aeb-b3c1-cb47f1ee1c33','D201903130050','P002','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('b93f5fb7-f3b8-4c16-af0c-40bcb9fa01f9','D201903060011','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('caf2e618-6acc-4063-badc-7f83cf1420df','77a44013-ec14-4e17-b465-af1c7953b3b7','P001','4edf9133-6fb4-48d8-bdb7-921a1e59bad3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('d8852e0a-6d93-408d-aa52-86250a073316','D201903190002','P001','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('d9b4e463-6007-44bd-a75e-b12aeb2f2f3a','D201903080008','P003','ad223','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('db93b594-f580-4f56-88fc-d4b4a433f594','D201903050004','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('db9979e9-0668-4ed5-93f9-15eab3ff0d69','bc4ff561-3c4f-476a-b649-0c822c9ee87f','P002','81a6a43d-7b22-489d-ac0e-5652bf090784','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('dca8338b-c7f3-4ae6-9e84-fa636ac48cc6','D201902280012','P005','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('dd76daf5-21ff-4b3e-afbd-1091d251c530','D201903050003','P001','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('df0bfd96-70ba-4723-9049-06f6ffd6495c','D201903130050','P001','432e43fe-854c-4bf0-8067-c0fdb2e7b72a','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e210e9c1-de60-4024-ba9d-8fa470dc1303','D201903190001','P001','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('e49ccdb4-aef7-450b-a767-4696aad30b31','D201903130004','P002','02f92bca-0ee7-4f94-a897-d90218117c6a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('e6ef51b6-9bf6-4c42-9546-72eaecbd93d1','cad6d557-ca44-4dc9-89f2-9b6fae188c49','P002','cda65f1a-169b-4fbb-bf84-3009473310f7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e81a5378-aa4f-4b0e-8b42-656aea4032fc','0bd7ae2c-1591-4938-91a7-5c4b2fb6d11d','P001','4edf9133-6fb4-48d8-bdb7-921a1e59bad3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('ea5d716f-4aca-4829-8a15-4929c05f8fe0','f16b0a3f-94f8-4da2-9247-fb7a0698818e','P005','ecc9bd49-4eb5-49cd-9f8d-384c3e5fed9f','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('ecdf5a8b-a835-4c71-878d-8ac8c4fc98a9','D201903060006','P001','f204f775-8c20-4b6b-9067-8683a70d90ef','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('f91ff9c7-162d-4cdb-997e-1f749fdfd255','3b84b42d-45d8-4035-a278-41e7f4188cb0','P002','81a6a43d-7b22-489d-ac0e-5652bf090784','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ');
/*!40000 ALTER TABLE `t_horse_to_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inv_info`
--

DROP TABLE IF EXISTS `t_inv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inv_info` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `inv_type` varchar(255) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inv_info`
--

LOCK TABLES `t_inv_info` WRITE;
/*!40000 ALTER TABLE `t_inv_info` DISABLE KEYS */;
INSERT INTO `t_inv_info` VALUES ('08e8292d-e66a-468e-b43a-8077b8a6315d','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('23d836d5-5366-4a89-8c6f-b24d1e4e7333','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('3289e3a4-3fb8-431e-8be1-de1006451db6','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('33a0b9f8-f860-4322-a95b-ba3a341e683f','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('498c93a8-5fce-4d67-9c9b-5c6eb22cbea8','程菲菲','金海路1000号','马体检','个人','','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('6f2297c5-eac4-435e-bf90-9c2954320fe6','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('8036a2e8-3084-47cb-9f87-018c1ab8e4d1','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('85535226-d877-4f9d-a998-e80049ee05da','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('a3c15b0b-9076-4461-bf87-8ace4e2f0268','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('ac0507dd-7991-4f64-bebb-d822835a696f','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('c1efa402-6135-4c69-a9a5-ef11872c4c61','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('ca75e50c-389c-40fb-9167-7ad4b9a1e1ff','程菲菲','金海路1000号','马体检','个人','','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('cf05d963-ab34-4f3c-9f4d-cd0ded402142','泡泡','金海路100号','','个人','','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('de1fce0a-1e47-4b13-9b1e-f2e65a9dccf3','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e7b26cc5-802e-4af9-96be-ded9b6bc71dc','程菲菲','金海路1000号','马体检','个人','','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('f15ac34d-a371-4bf0-a783-e06da23f2dd5','顺谋','上海','','企业','91310115','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ');
/*!40000 ALTER TABLE `t_inv_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_invoice`
--

DROP TABLE IF EXISTS `t_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_invoice` (
  `id` varchar(256) NOT NULL,
  `customer_id` varchar(256) DEFAULT NULL,
  `order_id` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `tax_code` varchar(256) DEFAULT NULL,
  `total_amount` varchar(256) DEFAULT NULL,
  `date` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `inv_type` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_invoice`
--

LOCK TABLES `t_invoice` WRITE;
/*!40000 ALTER TABLE `t_invoice` DISABLE KEYS */;
INSERT INTO `t_invoice` VALUES ('1','1','1','富士影像','91310115MA1HA','1000','2019-1-10',NULL,NULL,'未开票'),('153ba9ca-23fb-42f7-a2f9-2d3f0fc608b8','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220004','顺谋','91310115','0.02','2019-03-22','上海五角场','企业','未开票'),('22a37482-5ea2-4b1d-8389-641ddbf3f353','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220004','顺谋1231231231103012010','91310115','0.02','2019-03-22','上海五角场撒打算打算打算打算大的','企业','未开票'),('482f3f0a-4037-46c3-bc71-cae088d1bb48','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903190001','泡泡','qw','0.01','2019-03-19','金海路100号','企业','未开票'),('5c2bd2f7-134f-419d-a8f2-b48fed285965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903130005','泡泡','sw','0.5','2019-03-19','金海路100号','企业','未开票'),('7817e761-a2d4-4761-8b64-0a65931ebee6','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903210001','顺谋','91310115','0.01','2019-03-21','上海五角场','企业','未开票'),('891dcaad-1f28-4fde-ac95-8c1bfcce036a','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903190001','泡泡','','0.01','2019-03-19','金海路100号','个人','未开票'),('a51e81b5-eec9-40b7-abb8-a5650a8fd0b7','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220001','顺谋','91310115','0.53','2019-03-22','上海五角场','企业','未开票'),('c28f71c8-0632-4b8e-b69e-099865880402','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903190002','顺谋','91310115','0.01','2019-03-19','上海五角场','企业','未开票'),('ea7eb0f1-bbc4-4d21-8a92-2455a76486ac','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','','顺谋速度速度速度速度速度速度上速度速度','91310115',NULL,'2019-03-22','上海五角场','企业','未开票');
/*!40000 ALTER TABLE `t_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notification`
--

DROP TABLE IF EXISTS `t_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notification` (
  `id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `handled` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notification`
--

LOCK TABLES `t_notification` WRITE;
/*!40000 ALTER TABLE `t_notification` DISABLE KEYS */;
INSERT INTO `t_notification` VALUES ('0306f153-2d1a-4ba0-9400-c98b883e53ea','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456910','1553009381'),('06d9acfa-b67a-4a26-9192-d64070a997aa','invoice','你有新发票需要开具:D201903220004','1',NULL,'1553234891','1553234898'),('179acf7e-886a-403f-a89c-a966832274f7','deliver','有订单需要发货：D201903090003','1',NULL,NULL,'1553009388'),('2d2d2422-c54b-4e15-87ef-9eb618c5227a','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456903','1553009542'),('2df6d348-356a-4dce-9578-62f511a56e7c','invoice','你有新发票需要开具:D201903210001','1',NULL,'1553132826','1553237009'),('41c70a4b-f44c-4965-b730-ab950d1bda7a','invoice','你有新发票需要开具:D201903190002','1',NULL,'1553007237','1553009614'),('47e98494-39bc-4638-915e-f3c3d9e6f7a3','invoice','你有新发票需要开具:','1',NULL,'1553234273','1553237014'),('4818d2aa-1dbb-4f57-a49a-34ecec16f758','invoice','你有新发票需要开具:D201903190001','1',NULL,'1553000816','1553009547'),('5c41aa48-1170-49c4-81f5-12ae59ef8af4','invoice','你有新发票需要开具:D201903130005','1',NULL,'1553000883','1553009616'),('651b8c95-0999-46af-a7da-35b49102696c','invoice','你有新发票需要开具:','1',NULL,'1552191462','1553009618'),('6df72975-c973-4fc6-8534-8a883be0ba19','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456910','1553009621'),('7951d9bd-a54e-42eb-87f5-23e8bb696509','deliver','有订单需要发货：D201903040001','1',NULL,'1552119608','1553009619'),('99a99cf8-466c-4330-a9b9-52163a906daf','report','你有新订单需要报告：D201903220004','1',NULL,'1553235169','1553237018'),('a2c993f2-7508-41b9-87a7-1bf4c42f55dc','invoice','你有新发票需要开具:undefined','1',NULL,'1552191388','1553009627'),('a400cae9-fade-44bc-a8cb-1bdd6fdf0857','invoice','你有新发票需要开具:D201903190001','1',NULL,'1553000856','1553009624'),('a4d37880-67ae-4f0b-a266-10548b0fda9c','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456908','1553009625'),('a85c5473-050d-4b17-b9ed-6bd0a307bb62','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456910','1553009678'),('b0fffd0b-1aaa-48f3-8366-4dba82e272be','invoice','你有新发票需要开具:D201903040001','1',NULL,'1552191551','1553009629'),('b53717c6-4686-4473-a726-06116f04aaaa','invoice','你有新发票需要开具:D201903130005','1',NULL,'1552456903','1553131660'),('c0ba5548-a6fd-4a05-b719-41aa1a2f6a89','invoice','你有新发票需要开具:D201903220004','1',NULL,'1553234713','1553237021'),('deb52805-b01e-48b3-8f0b-cd43b07a6dda','invoice','你有新发票需要开具:D201903220001','1',NULL,'1553233984','1553237024'),('f68a5b97-d4c0-43de-a5a3-dbbb1942b0e7','invoice','你有新发票需要开具:','1',NULL,'1552191508','1553131664');
/*!40000 ALTER TABLE `t_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `horse_id` varchar(255) DEFAULT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `order_rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES ('D201903130001','已报告','0.51','[\"1\",\"1\"]','[\"P002\",\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月13日10时10分','2019年03月13日10时10分',NULL,'电子报告',NULL),('D201903130002','待确认','0.02','[2]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月13日10时31分',NULL,NULL,NULL,NULL),('D201903130003','已报告','0.03','[3]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','','','2019年03月13日13时17分','2019年03月13日13时20分',NULL,'电子报告',NULL),('D201903130004','待确认','0.5','[1]','[\"P002\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月13日13时20分',NULL,NULL,NULL,NULL),('D201903130005','已支付','0.5','[1]','[\"P002\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月13日13时20分','2019年03月13日13时20分',NULL,'电子报告',NULL),('D201903130006','待确认','0.5','[1]','[\"P002\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月13日13时23分',NULL,NULL,NULL,NULL),('D201903130007','待支付','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月13日13时28分','2019年03月13日13时28分',NULL,'电子报告',NULL),('D201903180001','已支付','0.01','[\"1\"]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月18日15时32分','2019年03月18日15时33分',NULL,'电子报告',NULL),('D201903190001','已报告','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年03月19日21时4分','2019年03月19日21时4分',NULL,'电子报告',NULL),('D201903190002','已支付','0.01','[\"1\"]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月19日22时48分','2019年03月19日22时53分',NULL,'电子报告',NULL),('D201903210001','已报告','0.01','[\"1\"]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月21日9时46分','2019年03月21日9时46分',NULL,'电子报告',NULL),('D201903220001','已报告','0.53','[3,\"1\"]','[\"P001\",\"P002\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月22日13时52分','2019年03月22日13时52分',NULL,'电子报告',NULL),('D201903220004','已完成','0.02','[2]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','','','2019年03月22日14时4分','2019年03月25日14时4分',NULL,'电子报告','5'),('D201903250001','待确认','0.51','[\"1\",\"1\"]','[\"P001\",\"P002\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月25日17时3分',NULL,NULL,NULL,NULL),('D201903250002','待确认','0.51','[\"1\",\"1\"]','[\"P001\",\"P002\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月25日17时4分',NULL,NULL,NULL,NULL),('D201903250003','待确认','0.5','[\"1\"]','[\"P002\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年03月25日17时15分',NULL,NULL,NULL,NULL),('D201903270001','待确认','0.01','[1]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,NULL,'2019年03月27日16时21分',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_payment_history`
--

DROP TABLE IF EXISTS `t_payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_payment_history` (
  `id` varchar(256) DEFAULT NULL,
  `order_id` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `create_time` varchar(256) DEFAULT NULL,
  `update_time` varchar(256) DEFAULT NULL,
  `payment_method` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_payment_history`
--

LOCK TABLES `t_payment_history` WRITE;
/*!40000 ALTER TABLE `t_payment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `detail` varchar(512) DEFAULT NULL,
  `promotion` varchar(255) DEFAULT NULL,
  `carousel` varchar(255) DEFAULT NULL,
  `pic_thumb` varchar(255) DEFAULT NULL,
  `pic_main` varchar(255) DEFAULT NULL,
  `pic_detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES ('P001','常规体检套餐','技术服务','0.01','<p>    提供基础性的检查，适用所有用途的马类，建议作为一年一次定期的常规型体检。</p><p> 费用涵盖范围：</p><p> ① X光影像检查（DR) - 四肢</p><p> ② 一般检查与系统检查（赠送）</p><p> ③ 临床检验 - 血液常规检验与生化检验（赠送）</p><p> ④ 诊断报告服务（赠送）   </p>','1','0','/img/P001_300_250.png','/img/P001_750_562.png','/img/horse_0.jpg'),('P002','综合体检套餐','技术服务','0.5','<p>    提供综合全面的检查，适用所有用途的马类，建议作为三年一次的复合型体检。</p><p> 费用涵盖范围：</p><p> ① X光影像检查（DR) - 四肢、脊椎</p><p> ② 超声检查 - 腹部、盆腔</p><p> ③ 一般检查与系统检查（赠送）</p><p> ④ 临床检验 - 血液常规检验与生化检验（赠送）</p><p> ⑤ 临床检验 - 尿液、粪便、微生物（赠送）</p><p> ⑥ 跛行辅助智能检测（赠送）</p><p> ⑦ 诊断报告服务（赠送）   </p>','1','0','/img/P002_300_250.png','/img/P002_750_562.png','/img/horse_1.jpg'),('P003','竞技马体检套餐','技术服务','12999','<p>    提供具有针对性的综合检查，适用于竞技类赛马，建议作为赛前体检。</p><p> 费用涵盖范围：</p><p> ① X光影像检查（DR) - 四肢、脊椎</p><p> ② 超声检查 - 腹部、盆腔、四肢</p><p> ③ 内窥镜检查 - 呼吸道</p><p> ④ 一般检查与系统检查（赠送）</p><p> ⑤ 临床检验 - 血液常规检验与生化检验（赠送）</p><p> ⑥ 临床检验 - 尿液、粪便、微生物（赠送）</p><p> ⑦ 跛行辅助智能检测（赠送）</p><p> ⑧ 诊断报告服务（赠送）   </p>','1','0','/img/349bc420-12dc-4976-bed9-1d6dbcf3618b.png','/img/46aef696-419c-4592-bc1f-8f95b2160806.png','/img/1758615b-1926-4744-b95f-85f07771d4f4.png'),('P004','X光影像服务','设备服务','6999','<p>    提供专业X光设备以及拍摄及后期影像处理。</p><p> 费用涵盖范围：</p><p> ① X光设备出借（MIKASA 9020 + FUJIFILM DR 17*17/14*17/10*12型号可选）</p><p> ② 专业技术上门拍摄（一次）及后期影像处理</p><p> ③ 影像报告提供（不包含兽医诊断结果）   </p>','1','1','/img/P004_300_250.png','/img/P004_750_480.png','/img/P004_375_240.png'),('P005','超声影像服务','设备服务','4999','<p>    提供专业X光设备以及拍摄及后期影像处理。</p><p> 费用涵盖范围：</p><p> ① 超声设备出借（SonoSite EDGE II)</p><p> ② 专业技术上门拍摄（一次）及后期影像处理</p><p> ③ 影像报告提供（不包含兽医诊断结果）   </p>','1','1','/img/P005_300_250.png','/img/P005_750_480.png','/img/P005_375_240.png'),('P006','内镜影像服务','设备服务','5999','<p>    提供专业X光设备以及拍摄及后期影像处理。</p><p> 费用涵盖范围：</p><p> ① 内镜设备出借（Fujifilm EN-580)</p><p> ② 专业技术上门拍摄（一次）及后期影像处理</p><p> ③ 影像报告提供（不包含兽医诊断结果）   </p>','1','1','/img/P006_300_250.png','/img/P006_300_250.png','/img/P006_300_250.png');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_report`
--

DROP TABLE IF EXISTS `t_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_report` (
  `id` varchar(256) NOT NULL,
  `link` varchar(256) DEFAULT NULL,
  `customer_id` varchar(256) DEFAULT NULL,
  `order_id` varchar(256) DEFAULT NULL,
  `product_no` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_report`
--

LOCK TABLES `t_report` WRITE;
/*!40000 ALTER TABLE `t_report` DISABLE KEYS */;
INSERT INTO `t_report` VALUES ('019835cf-ae7b-4f5d-b80f-3b74c4b87f8d','','','',NULL),('07b3b869-36cc-4f64-8393-d7effe33deea','d4b85c30-817b-4a31-ba72-1006101f9b38.png','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220004','P001_0'),('1','some linksds','1','1','1'),('12ce1f13-d1aa-4595-9f24-76c462165129','','','',NULL),('12e6c24c-fbb7-4f5c-9f77-bb5b49aa4aee','','','',NULL),('1d120869-f994-45e4-8d2b-44745f356b1b','','','',NULL),('2d0d1a6e-e271-430d-b236-9ee883873bfe','','','',NULL),('2f1766e4-1ce9-4005-934c-64304b3a7f30','what.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','4b739711-e925-49d1-b0f5-0ef453b81fa8',NULL),('32001914-1c30-4505-acec-6e0ec879a824','','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903090003',NULL),('3415e8db-a740-44b2-8fc7-abc0bbc26a74','','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','595b6ef8-acd7-49bc-a21d-f637e818b12f',NULL),('37f3de5a-ebae-4132-b530-751639de211c','897934b5-5da6-40a1-beb9-eb806ecef34d.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903210001','P001_0'),('3eef54c4-9494-4c6c-89a9-71bb5346c904','report.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903060006',NULL),('407d5738-51e8-4ebe-aaa5-5380737b639c','6914bc9c-4d05-4066-a8f4-2841ae566c6e.csv','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903080008',NULL),('45300c19-70e8-49af-b1b5-ef1fe1d24f3d','sds','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','6f43c46f-7120-43e1-ba31-7decdbd90f57',NULL),('4ff57c35-80a1-43b8-8c19-1fdcbf1bab5c','what.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','4b739711-e925-49d1-b0f5-0ef453b81fa8',NULL),('553eddbb-beac-475e-aa23-2d24c1ea871c','','','',NULL),('55ca8f34-b0a2-49ae-b117-ccf1d6d6859e','what.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','4b739711-e925-49d1-b0f5-0ef453b81fa8',NULL),('5b8c0a3b-21f0-436d-84b9-7de5b4cbff68','ae5fcdcd-d6a3-4383-8dae-8619612c145e.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903130003',NULL),('5f5e8012-1882-4141-ba9d-0b56f178e7b5','','','',NULL),('5f9b9fc2-5234-4f25-adac-365543a4d05b','','','',NULL),('630bff0a-4879-4905-a66c-897858511357','some.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','d65778b2-0cf3-4acf-b356-7e58c90c185f',NULL),('661afb75-4cc1-452f-b1c9-2b5fc79cd163','some.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','3b84b42d-45d8-4035-a278-41e7f4188cb0',NULL),('710dbb5c-87b1-440f-b892-6e603af24ac1','','','',NULL),('7156a62c-a63a-48b5-bbac-a2cc703c2278','/some.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','debdd657-f4cc-4284-b0ce-95c371051dbc',NULL),('80defa50-b458-42a4-8773-52d64336ea35','','','',NULL),('819a9958-9382-4f59-95ef-b2e51243cf6d','db63e375-b778-4b13-be98-019dedad1a05.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903130001',NULL),('86aa29e2-9047-46e9-a9c5-ae68b932ed9d','123213','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','4b739711-e925-49d1-b0f5-0ef453b81fa8',NULL),('8755f6f6-731b-4ead-8f3b-3c4a9adc4803','93c68a0f-b842-459f-875d-fe39f94102e4.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220001','P002_0'),('8e800ac4-9b28-41b0-825b-2d90326fab02','','','',NULL),('90a0af4b-8ea2-4d82-b38b-7401a7f08259','b546e596-a34e-454c-a318-efb085e69b02.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903130003',NULL),('915580fc-a58a-4c7b-a0cf-c7e4b183c517','','','',NULL),('91aadd5a-c0e5-42b1-8e50-23f32010001c','','','',NULL),('9c5e5028-af82-45d9-a182-5d22be5348d8','some.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','3b84b42d-45d8-4035-a278-41e7f4188cb0',NULL),('9da885bb-1c0a-4db1-bee7-fe07ad7d30db','','','',NULL),('ae4c15fc-dbaa-40cb-b146-1eeface6de55','d5045c3f-9d9e-4b3a-93c8-7908c01d0cac.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903130001','P001_0'),('b1e2f37c-11a6-4f91-96a6-cc8cdc1ef7e7','','','',NULL),('b282d768-05b0-42df-a923-a3418029e37f','','','',NULL),('b5cc30af-de13-48cf-a927-72bdfa80d4a9','','','',NULL),('b60ccbb7-fb71-4365-8fef-6010a62f22d4','sds','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','6f43c46f-7120-43e1-ba31-7decdbd90f57',NULL),('b676af9d-5652-40ba-9cf6-fa98477dc36b','','','',NULL),('b6fcc479-f10a-4728-8829-b84fca944ca1','84a57a7e-025b-45e3-b7fb-aa75394afc03.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220001','P001_1'),('c26f2b2e-c72f-47e8-bda6-cf078ae1e464','d58f609c-7f64-4540-adfc-b5c36f42ef5a.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220001','P001_2'),('c8ed4b76-1bea-441d-8c26-1697706d1ea1','','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903090003',NULL),('cbeca058-6a6e-494a-8c4d-7e2c70a188bc','','','',NULL),('ce52de43-b267-4043-b48b-6829de1b4d55','what.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','4b739711-e925-49d1-b0f5-0ef453b81fa8',NULL),('d11cd212-7f84-4a27-b8ac-b6420cb663bb','/some.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','595b6ef8-acd7-49bc-a21d-f637e818b12f',NULL),('d716bbe5-b85a-4494-b547-f36361bbc933','asd.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','85bad866-d005-40a1-a34a-7fedeb1bf49c',NULL),('db849a0a-258b-4b14-817a-05803e37d66b','','','',NULL),('dd42863d-314f-476e-a8df-a32098a3c007','6e791335-2cc8-4467-b03a-6e481294e643.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220001','P001_0'),('dedb46f7-232a-4a1c-b395-b2a70ebd8dd4','','','',NULL),('dfc37156-0646-4392-a553-4bac1ae5e1ac','','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903090003',NULL),('ea610ccf-edcc-4460-913b-6aafb9438e8b','1eae0366-60a8-4b30-8087-1da592079abb.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201903190001',NULL),('f010f01c-8ee3-45c3-885a-b0b99800dd34','23ac4427-73e1-49b9-b859-14ba0e332bd4.png','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903220004','P001_1'),('f5ad1ac9-1588-4a5c-9189-3fa448ba8553','','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903090003',NULL),('f69ad7a5-25e6-4f5a-9916-6c96941d9104','856ddde8-607b-4aea-bb2b-7f49e22e12d0.pdf','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903130001','P002_0'),('fe8f3243-9faa-489b-b619-438ff63d6fca','a67baad8-e9e9-4994-929d-ea2b98c03e34.csv','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','D201903090003',NULL);
/*!40000 ALTER TABLE `t_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 17:25:27
