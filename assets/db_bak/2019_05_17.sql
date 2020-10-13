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
INSERT INTO `t_address` VALUES ('1adacc0d-b9f2-407a-a3a9-65f1957f34cb','Stef','上海市','上海市','徐汇区Somewhere I belong','13814859875','Foo@qq.com','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,'2019年05月5日16时40分',NULL),('37377946-26c9-4c88-aed4-2fb8b2c01526','泡泡','上海市','上海市','静安区南京西路112弄184号109室','18521721678','jinplex@163.com','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,'2019年05月17日10时46分',NULL),('6fe1cf85-fcda-4447-993e-7e0122b62578','程','上海市','黄浦区','徐家汇路189号','18616651023','feifei1023@hotmail.com','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,'2019年04月24日18时10分',NULL),('76b695c2-60aa-4c8a-8ee4-04ee012205df','赵小超','上海','浦东','被咯过敏雷鸣您明明地貌咯破','12345','nil@nimanl.com','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo',NULL,'2019年05月5日14时2分',NULL),('7f332198-1183-4559-a772-99f54a12535f','张','上海','上海','xxxxx','123','xxxxx','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk',NULL,'2019年04月26日14时21分',NULL),('89762ea1-c33d-48f2-a9d7-90aaa6aff36b','dddddd','上海市','上海市','黄浦区ddfcdfxsdd','12','ser.cd@xs.com','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,'2019年05月8日14时43分',NULL),('b0b2b5c0-4637-4631-b41e-e57db4373464','小龙','上海','上海','上海','02150106000','xiaolong@qq.com','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,'2019年04月26日14时18分',NULL),('d51ef4af-6e65-4762-8175-2cb91d833af2','张金','上海市','上海市','徐汇区天钥桥路1000号','18521721677','jinplrx@iej.com','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,'2019年05月17日10时45分',NULL),('e67d86a7-b340-48fc-9591-dc5e501b1bc0','王哲峰','上海市','上海市','浦东新区金领之都','18916313500','zhefengwang@qq.com','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak',NULL,'2019年05月8日14时56分',NULL),('fc554540-8ae1-40aa-87b6-ae139394a0ed','任','上海','杨浦区','五角场somewhere只是用来测试长度是不是没问题了','13814859875','971640625@qq.com','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,'2019年04月24日13时14分',NULL);
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
INSERT INTO `t_address_to_order` VALUES ('02646925-1ed0-4715-bc38-e341ebc8d480','D201905080004','P001_0','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3441fece-19c0-4ce2-a09f-3f3c34fadd47','D201905120005','P001_0','fc554540-8ae1-40aa-87b6-ae139394a0ed','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('3af67e75-cf59-46e9-ace6-79ff22b47ee9','D201905140003','P001_0','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('3b6d342f-9d19-4bad-95c6-44798d616259','D201904240010','P001_0','6fe1cf85-fcda-4447-993e-7e0122b62578','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('3f3a43b6-bb8e-496c-8715-d940861abfe6','D201905140003','P001_1','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4eeca1a2-b085-472c-8c4f-1b38676190c1','D201905140001','P001_0','1adacc0d-b9f2-407a-a3a9-65f1957f34cb','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('5c0920fc-cd85-454e-bd6b-4757a8e7447a','D201905120001','P001_0','1adacc0d-b9f2-407a-a3a9-65f1957f34cb','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('6b78030b-913f-4f27-9c0b-d635bcdc1552','D201905140009','P001_0','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('727290b0-dd28-4d0f-9a0e-5335f4a891b9','D201905140008','P001_1','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('7d86a2df-a289-4cfc-b273-c3fe2b5599ad','D201905150001','P001_0','6fe1cf85-fcda-4447-993e-7e0122b62578','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('877cd8c9-96cd-45dd-8d5b-d316a7bbebc0','D201905170002','P001_1','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('9be3c453-e328-4bbd-a48d-f21316ac6972','D201904240007','P001_0','fc554540-8ae1-40aa-87b6-ae139394a0ed','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('9c39c023-d43c-494f-9aa4-8550675759cf','D201905140009','P001_1','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('aad10cce-f105-4d5d-aa20-c3f043fae98b','D201905080005','P001_0','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('b0c1fd4b-1d5a-4afd-911c-afc1b7eae0d9','D201905090001','P001_0','1adacc0d-b9f2-407a-a3a9-65f1957f34cb','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('b40b2264-7d27-4bdb-94d3-d22306963309','D201905080001','P001_0','6fe1cf85-fcda-4447-993e-7e0122b62578','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('c42d5310-22c8-4211-b28d-47f2c540cc16','D201904260008','P001_0','7f332198-1183-4559-a772-99f54a12535f','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk'),('c715e461-7754-4e2f-bd97-60ba6a5efc0a','D201905140002','P001_0','6fe1cf85-fcda-4447-993e-7e0122b62578','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('cbd33d1a-fbdc-423d-9a42-93fea48a4bd8','D201905140004','P001_0','1adacc0d-b9f2-407a-a3a9-65f1957f34cb','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('ceeca915-441a-49de-be30-34a0b014ed2d','D201905080006','P001_0','e67d86a7-b340-48fc-9591-dc5e501b1bc0','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak'),('dbcd9c9c-e137-40a6-8196-765d8a31ea82','D201905050001','P001_0','76b695c2-60aa-4c8a-8ee4-04ee012205df','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo'),('dbd00c8a-6014-4b97-9d25-2e27f32d599c','D201905050006','P001_0','1adacc0d-b9f2-407a-a3a9-65f1957f34cb','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('e2126a7f-641f-4d5e-8aad-dbc5a2f65c53','D201905140009','P001_2','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('e5832724-0017-4ef4-9863-a30b52cd9f60','D201905140008','P001_0','89762ea1-c33d-48f2-a9d7-90aaa6aff36b','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('ec9dcdc5-30b1-487f-b736-6f6355907a71','D201905170002','P001_2','d51ef4af-6e65-4762-8175-2cb91d833af2','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('edb84860-137c-47c8-8789-8501131f6e9b','D201904260007','P001_0','b0b2b5c0-4637-4631-b41e-e57db4373464','oPy-Q4hG9qIOzSPE00ef2z-CjIro'),('f3b9b3fb-51f6-4fde-bf18-63a872648091','D201905170002','P001_0','37377946-26c9-4c88-aed4-2fb8b2c01526','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('f8979243-2b58-46ce-a737-46f3d2fcc48b','D201905080007','P001_0','6fe1cf85-fcda-4447-993e-7e0122b62578','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E');
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
INSERT INTO `t_admin` VALUES ('1','admin','super','8Uhb9ijn'),('e9b9b5d6-45bf-43a5-9988-43d50d4b5792','shaobo','sUser','FMTS_198214');
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
INSERT INTO `t_cart` VALUES ('2f77a19a-8a30-4622-b5a4-1b784d915ade','1','oPy-Q4jY7yWaSPV-X33H0B3YGIXA','P001'),('5a893384-972a-4bc3-a121-26d133b6199c','1','oPy-Q4hG9qIOzSPE00ef2z-CjIro','P001'),('6fbe4435-657a-4da6-869d-62283009b42d','1','oPy-Q4vBfN4Hl1OlFm9ZxjRZTRWA','P001'),('9819694a-e95b-4b9d-b793-4e897b040f36','1','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','P001'),('a2046c65-023a-4889-9ce9-22dc39fd8164','1','oPy-Q4hG9qIOzSPE00ef2z-CjIro','P003');
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
INSERT INTO `t_customer` VALUES ('50679e0c-cf96-453b-83ce-d948a5aefda9','oPy-Q4okFQtCdu87fVE95K78cO2I',NULL,NULL,NULL,NULL,NULL),('5f6d8c79-d86b-4ced-8351-cf4cd7330c82','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','Stefano','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eptiaXjUgoBa9fjib8A9AmWsapm0gf8QCaB7WnomdfCGxHzzUYmxTdiaNk91LIT4ggu367nMBMXKicicuQ/132',NULL,'','13814859875'),('65970681-79d7-4562-ac93-363be7d038e7','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak','桔子杀手','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqEwNCVInqcGkzlZWHloBWibLOSBGO0ysvvrjbauXvNsnibM6Kmzlczia1jnDjuiapZSCrRYoX1aOhT7g/132',NULL,'Pudong New District','18916313500'),('65efba6c-be00-45ac-9304-32d254cac5f6','oPy-Q4hG9qIOzSPE00ef2z-CjIro','刘为花','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTICt0AF64ibcW9kK650c0lRibXsibMWPjo8EzRRjX2xWAyZo9BmUKxhsOxg2RbEnibJSExFhTRx0dLUbA/132',NULL,'Yanbian',''),('7252885e-d5ee-4e96-bee5-b0ec72686850','oPy-Q4vHJ4tkpMvAICa-Zww0Answ',NULL,NULL,NULL,NULL,NULL),('9be36609-3704-43d1-8ab9-9176267e2b3a','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk','砂ワニ野郎','https://wx.qlogo.cn/mmopen/vi_32/kWSOpA453UGVjibvoFaOdq7nQxCpc2ib2TLNvqpKYvNGXjnIdpORk0j8PmcUTWS9GFtT670icagh1WuqSlTVfOeXQ/132',NULL,'',NULL),('b1e0e264-7661-4372-9239-1e9c13d3822c','oPy-Q4geuJkqBk8YSo06MVTgnKbo',NULL,NULL,NULL,NULL,NULL),('b5fa08c0-f332-429b-8aa8-cffdfa09b035','oPy-Q4jY7yWaSPV-X33H0B3YGIXA','杨惠雯','https://wx.qlogo.cn/mmhead/B7w4TEnDsuYj1p8ibyicFibyrtIap3wibaZRPdBjbZf3ia8c/132',NULL,'',NULL),('b8794c2d-86a1-46ab-908c-df40aea2a06b','oPy-Q4vBfN4Hl1OlFm9ZxjRZTRWA','郑芝劭','https://wx.qlogo.cn/mmhead/mYrG7pAOjdW9jUYffdO0klx5iaSZNHOYgsRjkRe5libmE/132',NULL,'',NULL),('ce59e705-64be-4efa-9a46-9171795bd16d','oPy-Q4oqdoTZ0mse8FAKF88iInk8',NULL,NULL,NULL,NULL,NULL),('d26c94e4-d720-46a2-a314-7838250a601f','oPy-Q4tdy7IpfTvrsINkfpEywt4Q',NULL,NULL,NULL,NULL,''),('e494373b-93cd-4dd0-8493-9950b65c001a','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','Faye-Pride','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLibjYmiaNfLMbLicMQ45WlILZ8jzwkKOnymp8F5ibgUic2OuvchyoRcqndRemP2kOEtoh3EenFC45lshQ/132',NULL,'Luwan',NULL),('f58ff786-38ba-4ffb-a93c-53149801fbcb','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo','赵小超','https://wx.qlogo.cn/mmopen/vi_32/bN50v0sOExIzicgbLgiboTXRfrcvpL531DQ2A9XjibTzlO6mWNG40RG2iceKb5q1IicHLuy9TCISjmJTO92djcsgiceA/132',NULL,'',''),('f6394c66-208f-4383-ad5f-a9da31c5497e','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','张之渊 Jin⁷','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTICicrMEbmiaYPNB1az2WV0XOwYxjY8xR7orXwKIVY7CSlenBjZcbqB7Xkb7IKI6P3ibBxAuRv1gsIKg/132',NULL,'','18521721677'),('f7a9f030-4dec-4d25-b245-460bbc46af27','oPy-Q4mrH7Obw_m8LicgMktThkUM',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `t_horse` VALUES ('35fb6872-f465-453a-bb4c-88a20cccb939','小龙','公','2','oPy-Q4hG9qIOzSPE00ef2z-CjIro','黑色'),('643022d8-b492-4d7f-9355-f28e9bdaca76','tiny','母','3','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','透明'),('9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','xd','nan','5','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','xjs'),('aa42cb58-4f74-44ec-970d-2cf542478918','xxx','母','1','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk','花'),('afb61e4a-dc70-4243-918a-c4ab6a1f10eb','罗密欧','M','3','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak','红'),('cc9e6568-457c-444d-8fc2-7bc1576c9e22','阿嗷','公','7','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','彩虹'),('cd9c4d16-3e94-4d79-a128-034a47d27893','mamo','女','12','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','黑色'),('d4510eb0-f7a5-4bfa-8e8b-9e07d1a9a535','dd','公','2','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo','白'),('e5bc10e7-bca6-4aad-b052-addc5664f2e3','梅西','男','31','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ','白');
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
INSERT INTO `t_horse_to_order` VALUES ('151bfeef-1ba5-46cc-8267-50bedbc09551','D201905170002','P001_2','cc9e6568-457c-444d-8fc2-7bc1576c9e22','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('1d39e04e-ed76-4a26-b9b6-79d856a63f77','D201905140003','P001_0','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('288f275b-0fe1-43d2-8321-5f4395212878','D201905170002','P001_0','643022d8-b492-4d7f-9355-f28e9bdaca76','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('2e9546a8-5129-428b-8938-ceb1632ab0cd','D201905140008','P001_0','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('4656d35d-ac94-43fd-a7fb-b57366a3c746','D201905170003','P001_0','643022d8-b492-4d7f-9355-f28e9bdaca76','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('510c2d72-9c4e-404a-96f9-83cbd8188087','D201904260007','P001_0','35fb6872-f465-453a-bb4c-88a20cccb939','oPy-Q4hG9qIOzSPE00ef2z-CjIro'),('550a403d-98a1-4bc5-989a-dab0d71706ad','D201905080005','P001_0','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('5c56892e-6b7b-4720-b48c-9a7a81a8ddf6','D201904240010','P001_0','cd9c4d16-3e94-4d79-a128-034a47d27893','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('684bc5db-bf3d-4f2b-8c8a-fb8b81dd43a1','D201905140002','P001_0','cd9c4d16-3e94-4d79-a128-034a47d27893','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('6fdbefe1-b8b3-48fb-9012-4178096f5ad5','D201905170002','P001_1','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('74a985b9-eab6-4dcc-9d6e-40233781f3fd','D201905080001','P001_0','cd9c4d16-3e94-4d79-a128-034a47d27893','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('870caa9b-3074-4645-9de5-f5ea0a9c8a9a','D201905140003','P001_1','e5bc10e7-bca6-4aad-b052-addc5664f2e3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('890d5d99-8c79-4360-ac78-bdb21ad3aa2b','D201905080006','P001_0','afb61e4a-dc70-4243-918a-c4ab6a1f10eb','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak'),('94a979f4-2728-4db0-9b1a-e59447bad918','D201905120003','P001_0',NULL,'oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('a197c6b6-3903-4f1c-bfca-f85ae1a0b38f','D201905140009','P001_2','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('a85f93f2-db9f-4db9-9e87-6098d3441d1f','D201905140009','P001_0','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('abb37fdd-6257-4b3a-a35f-b659a67ebd4c','D201905140008','P001_1','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('c34ea0d3-1078-445b-86c8-3e1b0c42fd02','D201905090001','P001_0','e5bc10e7-bca6-4aad-b052-addc5664f2e3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('c7b53cce-124e-4c80-9b29-33b67679f100','D201905080007','P001_0','cd9c4d16-3e94-4d79-a128-034a47d27893','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E'),('c83af71d-64d9-400b-80b6-b08b273094c6','D201905120004','P001_0','e5bc10e7-bca6-4aad-b052-addc5664f2e3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('ce1d87d6-9604-4864-90a9-2103bb85473b','D201905140004','P001_0','e5bc10e7-bca6-4aad-b052-addc5664f2e3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('dbd268a0-f91d-4db4-aecf-ecd6fcd39dad','D201905140009','P001_1','9c9d1d13-0581-4aaf-bf1f-3c6bbd968965','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE'),('e71c91e5-4ff8-45d4-963c-86cfc9972145','D201904260006','P001_0','35fb6872-f465-453a-bb4c-88a20cccb939','oPy-Q4hG9qIOzSPE00ef2z-CjIro'),('eadea1fe-abc6-4fc0-bff4-24f5cd47e485','D201905050001','P001_0','d4510eb0-f7a5-4bfa-8e8b-9e07d1a9a535','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo'),('fbf5459a-e87c-45b8-be11-e66802ba9dde','D201904240007','P001_0','e5bc10e7-bca6-4aad-b052-addc5664f2e3','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ'),('fd160ca8-52a6-4968-a403-ab15236376c0','D201904260008','P001_0','aa42cb58-4f74-44ec-970d-2cf542478918','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk');
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
INSERT INTO `t_inv_info` VALUES ('41c3f969-9654-4ed2-a741-499185020ffd','富士胶片中国投资有限公司','哞哞区某某室某某弄某某路某某接到某某',NULL,'企业','1234567890123456','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE');
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
INSERT INTO `t_invoice` VALUES ('0e104c25-d663-4eb1-8cf9-1c48de848c0c','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','富士胶片中国投资有限公司','1234567890123456','0.03','2019-05-17','哞哞区某某室某某弄某某路某某接到某某','企业','未开票'),('258f1eda-4028-4de8-a88b-3eb7c2c09605','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','富士胶片中国投资有限公司','1234567890123456','0.03','2019-05-17','哞哞区某某室某某弄某某路某某接到某某','企业','已开票'),('8d2fc445-3840-4e27-a398-d332e4983d9b','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','D201905080007','','','0.01','2019-05-08','','个人','已开票');
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
INSERT INTO `t_notification` VALUES ('10c8928b-f8cf-4f16-b6c8-21575c7accd8','invoice','你有新发票需要开具:D201905170002','0',NULL,'1558063945',NULL),('17d122dc-3376-4e5c-a451-a446f4c745a3','invoice','你有新发票需要开具:D201905170002','0',NULL,'1558063931',NULL),('2dbc97b3-8012-44f6-886d-47df6ee052fd','invoice','你有新发票需要开具:D201905080007','1',NULL,'1557298691','1557298700');
/*!40000 ALTER TABLE `t_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `vid` int(16) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES (1,'D201904240001','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年04月24日11时29分',NULL,NULL,NULL,NULL),(2,'D201904240002','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年04月24日11时30分',NULL,NULL,NULL,NULL),(3,'D201904240003','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年04月24日11时30分',NULL,NULL,NULL,NULL),(4,'D201904240004','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年04月24日11时30分',NULL,NULL,NULL,NULL),(5,'D201904240005','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年04月24日13时9分',NULL,NULL,NULL,NULL),(6,'D201904240006','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年04月24日13时11分',NULL,NULL,NULL,NULL),(7,'D201904240007','已支付','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年04月24日13时13分','2019年04月24日13时14分',NULL,'电子报告',NULL),(8,'D201904240008','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,NULL,'2019年04月24日18时9分',NULL,NULL,NULL,NULL),(9,'D201904240009','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,NULL,'2019年04月24日18时9分',NULL,NULL,NULL,NULL),(10,'D201904240010','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,NULL,'2019年04月24日18时9分',NULL,NULL,NULL,NULL),(11,'D201904260001','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时15分',NULL,NULL,NULL,NULL),(12,'D201904260002','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时15分',NULL,NULL,NULL,NULL),(13,'D201904260003','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时15分',NULL,NULL,NULL,NULL),(14,'D201904260004','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时16分',NULL,NULL,NULL,NULL),(15,'D201904260005','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时16分',NULL,NULL,NULL,NULL),(16,'D201904260006','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时16分',NULL,NULL,NULL,NULL),(17,'D201904260007','已支付','0.01','[\"1\"]','[\"P001\"]','oPy-Q4hG9qIOzSPE00ef2z-CjIro',NULL,NULL,'2019年04月26日14时18分','2019年04月26日14时19分',NULL,'电子报告',NULL),(18,'D201904260008','已支付','0.01','[1]','[\"P001\"]','oPy-Q4v3EIwRHjGI7p0BYnQoRxKk',NULL,NULL,'2019年04月26日14时20分','2019年04月26日14时21分',NULL,'电子报告',NULL),(19,'D201905050001','已报告','0.01','[1]','[\"P001\"]','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo',NULL,NULL,'2019年05月05日14时0分','2019年05月5日14时3分',NULL,'电子报告',NULL),(20,'D201905050002','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月05日16时27分',NULL,NULL,NULL,NULL),(21,'D201905050003','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月05日16时31分',NULL,NULL,NULL,NULL),(22,'D201905050004','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月05日16时37分',NULL,NULL,NULL,NULL),(23,'D201905050005','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月05日16时38分',NULL,NULL,NULL,NULL),(24,'D201905050006','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月05日16时39分',NULL,NULL,NULL,NULL),(25,'D201905060001','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月06日11时32分',NULL,NULL,NULL,NULL),(26,'D201905060002','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月06日11时33分',NULL,NULL,NULL,NULL),(27,'D201905060003','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月06日11时33分',NULL,NULL,NULL,NULL),(28,'D201905080001','待确认','12999','[1]','[\"P003\"]','oPy-Q4oqdoTZ0mse8FAKF88iInk8',NULL,NULL,'2019年05月08日14时39分',NULL,NULL,NULL,NULL),(29,'D201905080002','待确认','12999','[1]','[\"P003\"]','oPy-Q4oqdoTZ0mse8FAKF88iInk8',NULL,NULL,'2019年05月08日14时39分',NULL,NULL,NULL,NULL),(30,'D201905080003','待确认','12999','[1]','[\"P003\"]','oPy-Q4oqdoTZ0mse8FAKF88iInk8',NULL,NULL,'2019年05月08日14时39分',NULL,NULL,NULL,NULL),(31,'D201905080004','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月08日14时41分',NULL,NULL,NULL,NULL),(32,'D201905080005','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月08日14时43分',NULL,NULL,NULL,NULL),(33,'D201905080006','已支付','0.01','[1]','[\"P001\"]','oPy-Q4hgnnHWA6bXTQnW4-5y76Ak',NULL,NULL,'2019年05月08日14时55分','2019年05月8日14时56分',NULL,'电子报告',NULL),(34,'D201905080007','已报告','0.01','[1]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','','','2019年05月08日14时55分','2019年05月8日14时56分',NULL,'电子报告',NULL),(35,'D201905080008','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月08日17时22分',NULL,NULL,NULL,NULL),(36,'D201905080009','待确认','0.01','[\"1\"]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月08日17时24分',NULL,NULL,NULL,NULL),(37,'D201905090001','已支付','0.01','[\"1\"]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月09日12时18分','2019年05月9日12时18分',NULL,'电子报告',NULL),(38,'D201905120001','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月12日20时38分',NULL,NULL,NULL,NULL),(39,'D201905120002','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月12日20时40分',NULL,NULL,NULL,NULL),(40,'D201905120003','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月12日20时49分',NULL,NULL,NULL,NULL),(41,'D201905120004','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月12日20时49分',NULL,NULL,NULL,NULL),(42,'D201905120005','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月12日20时51分',NULL,NULL,NULL,NULL),(43,'D201905140001','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月14日12时50分',NULL,NULL,NULL,NULL),(44,'D201905140003','待支付','0.02','[2]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日15时8分','2019年05月14日16时50分',NULL,'电子报告',NULL),(45,'D201905140003','待支付','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月14日16时49分','2019年05月14日16时50分',NULL,'电子报告',NULL),(47,'D201905140004','待确认','0.01','[1]','[\"P001\"]','oPy-Q4tYtO8lsTl2JMhboS1lOnvQ',NULL,NULL,'2019年05月14日17时29分',NULL,NULL,NULL,NULL),(48,'D201905140005','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日17时35分',NULL,NULL,NULL,NULL),(49,'D201905140006','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日17时35分',NULL,NULL,NULL,NULL),(50,'D201905140007','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日17时35分',NULL,NULL,NULL,NULL),(51,'D201905140008','待确认','0.05','[5]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日17时36分',NULL,NULL,NULL,NULL),(52,'D201905140009','已支付','0.03','[3]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月14日17时36分','2019年05月14日17时36分',NULL,'电子报告',NULL),(53,'D201905150001','待确认','0.01','[1]','[\"P001\"]','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E',NULL,NULL,'2019年05月15日16时27分',NULL,NULL,NULL,NULL),(54,'D201905170001','待确认','0.03','[3]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月17日10时44分',NULL,NULL,NULL,NULL),(55,'D201905170002','已报告','0.03','[3]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','','','2019年05月17日10时46分','2019年05月17日10时50分',NULL,'电子报告',NULL),(56,'D201905170003','待确认','0.01','[1]','[\"P001\"]','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE',NULL,NULL,'2019年05月17日11时38分',NULL,NULL,NULL,NULL);
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
INSERT INTO `t_product` VALUES ('P001','常规体检套餐','技术服务','7999','<p>提供基础性的检查，适用所有用途的马类，建议作为一年一次定期的常规型体检。</p><p>费用涵盖范围：</p><p>① X光影像检查（DR) - 四肢（16个体位）</p><p>② 一般检查与系统检查</p><p>③ 临床检验 - 血液常规检验与生化检验（赠送）</p><p>④ 诊断报告服务（赠送）</p><p>⑤ 马匹健康档案管理及兽医咨询服务（赠送）</p><p><br></p><p>*体检套餐显示价格为每匹马检查一次的服务单价</p>','1','0','/img/P001_300_250.png','/img/P001_750_562.png','/img/horse_0.jpg'),('P002','综合体检套餐','技术服务','9999','<p>提供综合全面的检查，适用所有用途的马类，建议作为三年一次的复合型体检。</p><p>费用涵盖范围：</p><p>① X光影像检查（DR) - 四肢（16个体位）</p><p>② 超声影像检查 - 腹部、盆腔</p><p>③ 一般检查与系统检查</p><p>④ 临床检验 - 血液常规检验与生化检验（赠送）</p><p>⑤ 临床检验 - 尿液、粪便、微生物、泪液检验（赠送）</p><p>⑥ 局部检查 - 眼科特检与跛行特检（赠送）</p><p>⑦ 诊断报告服务（赠送）</p><p>⑧ 马匹健康档案管理及兽医咨询服务（赠送）</p><p><br></p><p>*体检套餐显示价格为每匹马检查一次的服务单价</p>','1','0','/img/P002_300_250.png','/img/P002_750_562.png','/img/horse_1.jpg'),('P003','竞技马体检套餐','技术服务','12999','<p>提供具有针对性的综合检查，适用于竞技类赛马，建议作为赛前体检。</p><p>费用涵盖范围：</p><p>① X光影像检查（DR) - 四肢（28个体位）</p><p>② X光影像检查（DR) - 脊椎</p><p>③ 超声影像检查 - 腹部、盆腔</p><p>④ 超声影像检查 - 四肢、眼科特检</p><p>⑤ 一般检查与系统检查</p><p>⑥ 临床检验 - 血液常规检验与生化检验（赠送）</p><p>⑦ 临床检验 - 尿液、粪便、微生物、泪液检验（赠送）</p><p>⑧ 局部检查 - 眼科特检与跛行特检（赠送）</p><p>⑨ 诊断报告服务（赠送）</p><p>⑩ 马匹健康档案管理及兽医咨询服务（赠送）</p><p><br></p><p>*体检套餐显示价格为每匹马检查一次的服务单价</p>','1','0','/img/349bc420-12dc-4976-bed9-1d6dbcf3618b.png','/img/46aef696-419c-4592-bc1f-8f95b2160806.png','/img/1758615b-1926-4744-b95f-85f07771d4f4.png'),('P004','X光影像服务','设备服务','6999','<p>提供专业X光设备以及协助拍摄及后期影像处理。</p><p>费用涵盖范围：</p><p>① X光设备出借（MIKASA 9020 + FUJIFILM DR 14*17/10*12型号可选）</p><p>② 专业设备技术人员上门协助拍摄（一天）及后期影像处理</p><p>③ 影像报告提供（不包含兽医诊断结果）</p><p><br></p><p>*影像服务套餐显示价格为每上门一次进行服务的单价，服务超期（大于一天）将产生额外的服务费用</p>','1','1','/img/P004_300_250.png','/img/P004_750_480.png','/img/P004_375_240.png'),('P005','超声影像服务','设备服务','4999','<p>提供专业超声设备以及协助拍摄及后期影像处理。</p><p>费用涵盖范围：</p><p>① 超声设备出借（SonoSite EDGE I/ EDGE II)</p><p>② 专业设备技术人员上门协助拍摄（一天）及后期影像处理</p><p>③ 影像报告提供（不包含兽医诊断结果）</p><p><br></p><p>*影像服务套餐显示价格为每上门一次进行服务的单价，服务超期（大于一天）将产生额外的服务费用</p>','1','1','/img/P005_300_250.png','/img/P005_750_480.png','/img/P005_375_240.png'),('P006','内镜影像服务','设备服务','5999','<p>提供专业内窥镜设备以及协助拍摄及后期影像处理。</p><p>费用涵盖范围：</p><p>① 内镜设备出借（根据实际内容选定)</p><p>② 专业设备技术人员上门协助拍摄（一天）及后期影像处理</p><p>③ 影像报告提供（不包含兽医诊断结果）</p><p><br></p><p>*影像服务套餐显示价格为每上门一次进行服务的单价，服务超期（大于一天）将产生额外的服务费用</p>','1','1','/img/006_01.png','/img/006_03.png','/img/006_02.png');
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
INSERT INTO `t_report` VALUES ('2779129d-fb53-49e0-ba0d-1ac248d3eae1','1d4a3d48-453d-4c3e-b7ce-d08df9954819.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','P001_2_undefined'),('8bdb65e2-5dc1-4fac-9d64-0a8ac6826a00','20b7fd54-6d88-40d2-a135-796dcd634cb6.pdf','oPy-Q4nDzKHxHLK1za3rH0Hjvq3E','D201905080007','P001_0_mamo'),('cc43790e-0af9-4a14-bfb7-c92c647f380b','6fb2d9ca-507e-4356-b83b-8af98e51726d.pdf','oPy-Q4l-LYjJ7roMRdEAI1zzAhZo','D201905050001','P001_0_dd'),('d72f1ead-06db-4443-b6e8-d1871b4ac70f','202b14b2-cb86-49ea-b9fe-111bb309c511.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','P001_0_undefined'),('e51abce6-09ce-4255-a346-f5292121ac97','36cd307a-9414-4a3d-8cfb-c9561d65585f.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','P001_0_undefined'),('ed5965c4-a1ea-4294-b31c-c6371d25669e','2f8eb69b-2408-402a-8f69-d02a7ced32c8.pdf','oPy-Q4oLfHLmX-LGJUK8XjnAuaZE','D201905170002','P001_1_undefined');
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

-- Dump completed on 2019-05-17 15:50:57
