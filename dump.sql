-- MariaDB dump 10.19-11.2.3-MariaDB, for osx10.19 (x86_64)
--
-- Host: localhost    Database: fmi_daw_db
-- ------------------------------------------------------
-- Server version	11.2.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) DEFAULT NULL,
  `uri` text DEFAULT NULL,
  `visit_time` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1507 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES
(35,'::1','/en/contact/feedback','2024-02-18 12:48:18',5),
(36,'::1','/en/','2024-02-18 12:49:28',5),
(37,'::1','/en/','2024-02-18 12:49:29',5),
(38,'::1','/en/','2024-02-18 12:49:29',5),
(39,'::1','/en/','2024-02-18 12:49:29',5),
(40,'::1','/en/','2024-02-18 12:49:34',5),
(41,'::1','/en/','2024-02-18 12:49:34',5),
(42,'::1','/en/','2024-02-18 12:49:37',5),
(43,'::1','/en/','2024-02-18 12:49:38',5),
(44,'::1','/en/','2024-02-18 12:49:42',5),
(45,'::1','/en','2024-02-18 12:49:45',5),
(46,'::1','/en/','2024-02-18 12:49:52',5),
(47,'::1','/en/','2024-02-18 12:49:58',5),
(48,'::1','/en/','2024-02-18 12:49:59',5),
(49,'::1','/','2024-02-18 12:50:41',5),
(50,'::1','/','2024-02-18 12:50:42',5),
(51,'::1','/en','2024-02-18 12:50:47',5),
(52,'::1','/en/','2024-02-18 12:50:49',5),
(53,'::1','/en/','2024-02-18 12:50:49',5),
(54,'::1','/en/','2024-02-18 12:50:50',5),
(55,'::1','/en/','2024-02-18 12:50:56',5),
(56,'::1','/en/','2024-02-18 12:51:21',5),
(57,'::1','/en/','2024-02-18 12:51:56',5),
(58,'::1','/en/','2024-02-18 12:52:10',5),
(59,'::1','/en/','2024-02-18 12:52:10',5),
(60,'::1','/en','2024-02-18 12:52:16',5),
(61,'::1','/en','2024-02-18 12:52:16',5),
(62,'::1','/en','2024-02-18 12:52:36',5),
(63,'::1','/en/user/confirm?email=kalean.bl@gmail.com&hash=4476a57f44c92cb64712fecb2a24b0df036fdb9edf47a58891d283565ffbb233','2024-02-18 12:52:38',5),
(64,'::1','/en/','2024-02-18 12:52:41',5),
(65,'::1','/en/','2024-02-18 12:52:41',5),
(66,'::1','/en/','2024-02-18 12:52:44',5),
(67,'::1','/en/','2024-02-18 12:52:46',5),
(68,'::1','/en/','2024-02-18 12:52:52',5),
(69,'::1','/en/','2024-02-18 12:52:53',5),
(70,'::1','/en/','2024-02-18 12:52:54',5),
(71,'::1','/en/','2024-02-18 12:53:32',5),
(72,'::1','/en/','2024-02-18 12:53:32',5),
(73,'::1','/en/','2024-02-18 12:53:58',5),
(74,'::1','/en/','2024-02-18 12:53:58',5),
(75,'::1','/en','2024-02-18 12:54:01',5),
(76,'::1','/en','2024-02-18 12:54:02',5),
(77,'::1','/en/','2024-02-18 12:56:20',5),
(78,'::1','/en/','2024-02-18 12:56:44',5),
(79,'::1','/en/','2024-02-18 12:56:46',5),
(80,'::1','/en/contact/feedback','2024-02-18 12:56:52',5),
(81,'::1','/en/contact/feedback','2024-02-18 12:57:15',5),
(82,'::1','/en/','2024-02-18 12:58:09',5),
(83,'::1','/en/page/contact','2024-02-18 12:58:58',5),
(84,'::1','/en/contact/feedback','2024-02-18 12:59:00',5),
(85,'::1','/en/','2024-02-18 12:59:10',5),
(86,'::1','/en/','2024-02-18 13:31:30',5),
(87,'::1','/en/','2024-02-18 13:31:38',5),
(88,'::1','/en/main/index','2024-02-18 13:36:04',5),
(89,'::1','/en/main/index','2024-02-18 13:37:15',5),
(90,'::1','/en/main/index','2024-02-18 13:40:52',5),
(91,'::1','/','2024-02-18 13:41:49',5),
(92,'::1','/','2024-02-18 13:50:17',5),
(93,'::1','/en','2024-02-18 13:50:33',5),
(94,'::1','/en/main/top','2024-02-18 13:50:37',5),
(95,'::1','/en/main/error','2024-02-18 14:01:26',5),
(96,'::1','/en/main/error-','2024-02-18 14:01:35',5),
(97,'::1','/en/main/error-','2024-02-18 14:02:08',5),
(98,'::1','/en/main/error-','2024-02-18 14:02:09',5),
(99,'::1','/en/main/error-','2024-02-18 14:02:28',5),
(100,'::1','/en/main/error404','2024-02-18 14:02:32',5),
(101,'::1','/en/main/error404','2024-02-18 14:02:42',5),
(102,'::1','/en/main/error404','2024-02-18 14:03:14',5),
(103,'::1','/en/main/error404','2024-02-18 14:03:31',5),
(104,'::1','/en/main/error404','2024-02-18 14:03:44',5),
(105,'::1','/en/main/error404','2024-02-18 14:03:54',5),
(106,'::1','/en/main/error404','2024-02-18 14:04:01',5),
(107,'::1','/en/main/error404','2024-02-18 14:04:14',5),
(108,'::1','/en/main/error404','2024-02-18 14:04:58',5),
(109,'::1','/en/main/error404','2024-02-18 14:05:37',5),
(110,'::1','/en/contact/index','2024-02-18 14:05:43',5),
(111,'::1','/en/main/error404','2024-02-18 14:05:43',5),
(112,'::1','/en/main/error404','2024-02-18 14:05:49',5),
(113,'::1','/en/contact/feedback','2024-02-18 14:06:56',5),
(114,'::1','/en/user/logout','2024-02-18 14:07:05',5),
(115,'::1','/en/user/login','2024-02-18 14:07:05',NULL),
(116,'::1','/en/','2024-02-18 14:07:22',NULL),
(117,'::1','/en/','2024-02-18 14:07:38',NULL),
(118,'::1','/en/main/error404','2024-02-18 14:07:43',NULL),
(119,'::1','/en/main/error404','2024-02-18 14:07:52',NULL),
(120,'::1','/','2024-02-18 14:07:57',NULL),
(121,'::1','/en/main/error404','2024-02-18 14:08:12',NULL),
(122,'::1','/dfds/main/error404','2024-02-18 14:20:38',NULL),
(123,'::1','/dfds/','2024-02-18 14:20:44',NULL),
(124,'::1','/dfds/','2024-02-18 14:21:53',NULL),
(125,'::1','/dfds/main/error404','2024-02-18 14:22:02',NULL),
(126,'::1','/dfds/main/error404','2024-02-18 14:22:04',NULL),
(127,'::1','/en/','2024-02-18 14:22:07',NULL),
(128,'::1','/en/','2024-02-18 14:22:12',NULL),
(129,'::1','/en/main/top100','2024-02-18 14:22:21',NULL),
(130,'::1','/en/main/top100','2024-02-18 14:22:25',NULL),
(131,'::1','/en/main/top100','2024-02-18 14:22:37',NULL),
(132,'::1','/en/main/top100','2024-02-18 14:24:14',NULL),
(133,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 14:24:16',NULL),
(134,'::1','/tooltips','2024-02-18 14:24:16',NULL),
(135,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 14:24:16',NULL),
(136,'::1','/en/main/top100','2024-02-18 14:24:23',NULL),
(137,'::1','/en/main/top100','2024-02-18 14:25:45',NULL),
(138,'::1','/en/main/top100','2024-02-18 14:25:55',NULL),
(139,'::1','/en/main/top100','2024-02-18 14:26:15',NULL),
(140,'::1','/en/main/top100','2024-02-18 14:27:53',NULL),
(141,'::1','/en/main/top100','2024-02-18 14:28:19',NULL),
(142,'::1','/en/main/top100','2024-02-18 14:29:59',NULL),
(143,'::1','/en/main/top100','2024-02-18 14:30:02',NULL),
(144,'::1','/en/main/top100','2024-02-18 14:30:10',NULL),
(145,'::1','/en/main/top100','2024-02-18 14:30:18',NULL),
(146,'::1','/en/main/top100','2024-02-18 14:30:26',NULL),
(147,'::1','/en/main/top100','2024-02-18 14:30:33',NULL),
(148,'::1','/en/main/top100','2024-02-18 14:31:49',NULL),
(149,'::1','/en/main/top100','2024-02-18 14:32:15',NULL),
(150,'::1','/en/main/top100','2024-02-18 14:33:10',NULL),
(151,'::1','/en/main/top100','2024-02-18 14:33:25',NULL),
(152,'::1','/en/main/top100','2024-02-18 14:33:51',NULL),
(153,'::1','/en/main/top100','2024-02-18 14:37:54',NULL),
(154,'::1','/en/main/top100','2024-02-18 14:38:20',NULL),
(155,'::1','/en/main/top100','2024-02-18 14:39:50',NULL),
(156,'::1','/en/main/top100','2024-02-18 14:40:39',NULL),
(157,'::1','/en/main/top100','2024-02-18 14:40:54',NULL),
(158,'::1','/en/main/top100','2024-02-18 14:41:12',NULL),
(159,'::1','/en/main/top100','2024-02-18 14:41:41',NULL),
(160,'::1','/en/main/top100','2024-02-18 14:41:56',NULL),
(161,'::1','/en/main/top100','2024-02-18 14:44:04',NULL),
(162,'::1','/en/main/top100','2024-02-18 14:44:29',NULL),
(163,'::1','/en/main/top100','2024-02-18 14:44:51',NULL),
(164,'::1','/en/main/top100','2024-02-18 14:45:33',NULL),
(165,'::1','/en/main/top100','2024-02-18 14:45:46',NULL),
(166,'::1','/en/main/top100','2024-02-18 14:47:50',NULL),
(167,'::1','/en/main/top100','2024-02-18 14:50:03',NULL),
(168,'::1','/en/main/top100','2024-02-18 14:50:16',NULL),
(169,'::1','/en/main/top100','2024-02-18 14:50:38',NULL),
(170,'::1','/en/main/top100','2024-02-18 14:51:40',NULL),
(171,'::1','/en/main/top100','2024-02-18 14:52:02',NULL),
(172,'::1','/en/main/top100','2024-02-18 14:52:15',NULL),
(173,'::1','/en/main/top100','2024-02-18 14:52:25',NULL),
(174,'::1','/en/main/top100','2024-02-18 14:53:11',NULL),
(175,'::1','/en/main/top100','2024-02-18 14:53:28',NULL),
(176,'::1','/en/main/top100','2024-02-18 14:53:40',NULL),
(177,'::1','/en/main/top100','2024-02-18 14:59:49',NULL),
(178,'::1','/en/main/top100','2024-02-18 15:01:27',NULL),
(179,'::1','/en/main/top100','2024-02-18 15:02:18',NULL),
(180,'::1','/en/main/top100','2024-02-18 15:02:22',NULL),
(181,'::1','/en/main/top100','2024-02-18 15:02:41',NULL),
(182,'::1','/en/main/top100','2024-02-18 15:04:55',NULL),
(183,'::1','/en/main/top100','2024-02-18 15:06:23',NULL),
(184,'::1','/en/main/top100','2024-02-18 15:08:36',NULL),
(185,'::1','/en/main/top100','2024-02-18 15:09:19',NULL),
(186,'::1','/en/main/top100','2024-02-18 15:09:36',NULL),
(187,'::1','/en/main/top100','2024-02-18 15:09:44',NULL),
(188,'::1','/en/main/top100','2024-02-18 15:09:55',NULL),
(189,'::1','/en/main/top100','2024-02-18 15:10:05',NULL),
(190,'::1','/en/main/top100','2024-02-18 15:11:11',NULL),
(191,'::1','/en/main/top100','2024-02-18 15:11:39',NULL),
(192,'::1','/en/main/top100','2024-02-18 15:14:39',NULL),
(193,'::1','/en/main/top100','2024-02-18 15:15:28',NULL),
(194,'::1','/en/main/top100','2024-02-18 15:15:37',NULL),
(195,'::1','/en/main/top100','2024-02-18 15:15:56',NULL),
(196,'::1','/en/main/top100','2024-02-18 15:16:05',NULL),
(197,'::1','/en/main/top100','2024-02-18 15:17:58',NULL),
(198,'::1','/en/main/top100','2024-02-18 15:18:25',NULL),
(199,'::1','/en/main/top100','2024-02-18 15:18:41',NULL),
(200,'::1','/en/main/top100','2024-02-18 15:18:58',NULL),
(201,'::1','/en/main/top100','2024-02-18 15:19:17',NULL),
(202,'::1','/en/main/top100','2024-02-18 15:20:24',NULL),
(203,'::1','/en/main/top100','2024-02-18 15:20:43',NULL),
(204,'::1','/en/main/top100','2024-02-18 15:21:09',NULL),
(205,'::1','/en/main/top100','2024-02-18 15:21:46',NULL),
(206,'::1','/en/main/top100','2024-02-18 15:24:07',NULL),
(207,'::1','/en/main/top100','2024-02-18 15:24:40',NULL),
(208,'::1','/en/main/top100','2024-02-18 15:25:00',NULL),
(209,'::1','/en/main/top100','2024-02-18 15:25:15',NULL),
(210,'::1','/en/main/top100','2024-02-18 15:25:31',NULL),
(211,'::1','/en/main/top100','2024-02-18 15:25:38',NULL),
(212,'::1','/en/main/top100','2024-02-18 15:26:02',NULL),
(213,'::1','/en/main/top100','2024-02-18 15:26:49',NULL),
(214,'::1','/en/main/top100','2024-02-18 15:27:02',NULL),
(215,'::1','/en/main/top100','2024-02-18 15:27:23',NULL),
(216,'::1','/en/main/top100','2024-02-18 15:27:32',NULL),
(217,'::1','/en/main/top100','2024-02-18 15:27:45',NULL),
(218,'::1','/en/main/top100','2024-02-18 15:27:59',NULL),
(219,'::1','/en/main/top100','2024-02-18 15:28:51',NULL),
(220,'::1','/en/main/top100','2024-02-18 15:30:04',NULL),
(221,'::1','/en/main/top100','2024-02-18 15:31:29',NULL),
(222,'::1','/en/main/top100','2024-02-18 15:33:58',NULL),
(223,'::1','/en/main/top100','2024-02-18 15:34:54',NULL),
(224,'::1','/en/main/top100','2024-02-18 15:36:20',NULL),
(225,'::1','/en/main/top100','2024-02-18 15:36:33',NULL),
(226,'::1','/en/main/top100','2024-02-18 15:37:01',NULL),
(227,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:37:05',NULL),
(228,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:37:05',NULL),
(229,'::1','/tooltips','2024-02-18 15:37:05',NULL),
(230,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:37:05',NULL),
(231,'::1','/en/main/top100','2024-02-18 15:37:13',NULL),
(232,'::1','/en/main/top100','2024-02-18 15:38:43',NULL),
(233,'::1','/en/main/top100','2024-02-18 15:38:47',NULL),
(234,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:38:54',NULL),
(235,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:38:54',NULL),
(236,'::1','/tooltips','2024-02-18 15:38:54',NULL),
(237,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:38:55',NULL),
(238,'::1','/en/main/top100','2024-02-18 15:40:22',NULL),
(239,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:40:29',NULL),
(240,'::1','/tooltips','2024-02-18 15:40:29',NULL),
(241,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:40:29',NULL),
(242,'::1','/en/main/top100','2024-02-18 15:42:30',NULL),
(243,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:42:35',NULL),
(244,'::1','/tooltips','2024-02-18 15:42:35',NULL),
(245,'::1','/en/main/top100','2024-02-18 15:44:04',NULL),
(246,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:44:08',NULL),
(247,'::1','/tooltips','2024-02-18 15:44:08',NULL),
(248,'::1','/en/main/top100','2024-02-18 15:49:13',NULL),
(249,'::1','/tooltips?resources%5BBook.1885%5D%5Btype%5D=Book&resources%5BBook.1885%5D%5Bid%5D=1885&resources%5BBook.40961427%5D%5Btype%5D=Book&resources%5BBook.40961427%5D%5Bid%5D=40961427&resources%5BBook.7144%5D%5Btype%5D=Book&resources%5BBook.7144%5D%5Bid%5D=7144&resources%5BBook.1420%5D%5Btype%5D=Book&resources%5BBook.1420%5D%5Bid%5D=1420&resources%5BBook.320%5D%5Btype%5D=Book&resources%5BBook.320%5D%5Bid%5D=320&resources%5BBook.152%5D%5Btype%5D=Book&resources%5BBook.152%5D%5Bid%5D=152&resources%5BBook.1381%5D%5Btype%5D=Book&resources%5BBook.1381%5D%5Bid%5D=1381&resources%5BBook.49552%5D%5Btype%5D=Book&resources%5BBook.49552%5D%5Bid%5D=49552&resources%5BBook.4934%5D%5Btype%5D=Book&resources%5BBook.4934%5D%5Bid%5D=4934&resources%5BBook.7604%5D%5Btype%5D=Book&resources%5BBook.7604%5D%5Bid%5D=7604&resources%5BBook.2623%5D%5Btype%5D=Book&resources%5BBook.2623%5D%5Bid%5D=2623&resources%5BBook.2165%5D%5Btype%5D=Book&resources%5BBook.2165%5D%5Bid%5D=2165&resources%5BBook.656%5D%5Btype%5D=Book&resources%5BBook.656%5D%5Bid%5D=656&resources%5BBook.3836%5D%5Btype%5D=Book&resources%5BBook.3836%5D%5Bid%5D=3836&resources%5BBook.1371%5D%5Btype%5D=Book&resources%5BBook.1371%5D%5Bid%5D=1371&resources%5BBook.2175%5D%5Btype%5D=Book&resources%5BBook.2175%5D%5Bid%5D=2175&resources%5BBook.17690%5D%5Btype%5D=Book&resources%5BBook.17690%5D%5Bid%5D=17690&resources%5BBook.6656%5D%5Btype%5D=Book&resources%5BBook.6656%5D%5Bid%5D=6656&resources%5BBook.153747%5D%5Btype%5D=Book&resources%5BBook.153747%5D%5Bid%5D=153747&resources%5BBook.12938%5D%5Btype%5D=Book&resources%5BBook.12938%5D%5Bid%5D=12938&resources%5BBook.9712%5D%5Btype%5D=Book&resources%5BBook.9712%5D%5Bid%5D=9712&resources%5BBook.46306%5D%5Btype%5D=Book&resources%5BBook.46306%5D%5Bid%5D=46306&resources%5BBook.14942%5D%5Btype%5D=Book&resources%5BBook.14942%5D%5Bid%5D=14942&resources%5BBook.12996%5D%5Btype%5D=Book&resources%5BBook.12996%5D%5Bid%5D=12996&resources%5BBook.93101%5D%5Btype%5D=Book&resources%5BBook.93101%5D%5Bid%5D=93101&resources%5BBook.338798%5D%5Btype%5D=Book&resources%5BBook.338798%5D%5Bid%5D=338798&resources%5BBook.10975%5D%5Btype%5D=Book&resources%5BBook.10975%5D%5Bid%5D=10975&resources%5BBook.1554%5D%5Btype%5D=Book&resources%5BBook.1554%5D%5Bid%5D=1554&resources%5BBook.7733%5D%5Btype%5D=Book&resources%5BBook.7733%5D%5Bid%5D=7733&resources%5BBook.2696%5D%5Btype%5D=Book&resources%5BBook.2696%5D%5Bid%5D=2696&resources%5BBook.12505%5D%5Btype%5D=Book&resources%5BBook.12505%5D%5Bid%5D=12505&resources%5BBook.19302%5D%5Btype%5D=Book&resources%5BBook.19302%5D%5Bid%5D=19302&resources%5BBook.12749%5D%5Btype%5D=Book&resources%5BBook.12749%5D%5Bid%5D=12749&resources%5BBook.1295735%5D%5Btype%5D=Book&resources%5BBook.1295735%5D%5Bid%5D=1295735&resources%5BBook.59716%5D%5Btype%5D=Book&resources%5BBook.59716%5D%5Bid%5D=59716&resources%5BBook.6149%5D%5Btype%5D=Book&resources%5BBook.6149%5D%5Bid%5D=6149&resources%5BBook.14706%5D%5Btype%5D=Book&resources%5BBook.14706%5D%5Bid%5D=14706&resources%5BBook.2526%5D%5Btype%5D=Book&resources%5BBook.2526%5D%5Bid%5D=2526&resources%5BBook.37781%5D%5Btype%5D=Book&resources%5BBook.37781%5D%5Bid%5D=37781&resources%5BBook.426504%5D%5Btype%5D=Book&resources%5BBook.426504%5D%5Bid%5D=426504&resources%5BBook.53639%5D%5Btype%5D=Book&resources%5BBook.53639%5D%5Bid%5D=53639&resources%5BBook.18386%5D%5Btype%5D=Book&resources%5BBook.18386%5D%5Bid%5D=18386&resources%5BBook.19089%5D%5Btype%5D=Book&resources%5BBook.19089%5D%5Bid%5D=19089&resources%5BBook.14836%5D%5Btype%5D=Book&resources%5BBook.14836%5D%5Bid%5D=14836&resources%5BBook.19351%5D%5Btype%5D=Book&resources%5BBook.19351%5D%5Bid%5D=19351&resources%5BBook.37793%5D%5Btype%5D=Book&resources%5BBook.37793%5D%5Bid%5D=37793&resources%5BBook.12395%5D%5Btype%5D=Book&resources%5BBook.12395%5D%5Bid%5D=12395&resources%5BBook.16981%5D%5Btype%5D=Book&resources%5BBook.16981%5D%5Bid%5D=16981&resources%5BBook.27494%5D%5Btype%5D=Book&resources%5BBook.27494%5D%5Bid%5D=27494&resources%5BBook.88077%5D%5Btype%5D=Book&resources%5BBook.88077%5D%5Bid%5D=88077','2024-02-18 15:49:19',NULL),
(250,'::1','/tooltips?resources%5BBook.45974%5D%5Btype%5D=Book&resources%5BBook.45974%5D%5Bid%5D=45974&resources%5BBook.527756%5D%5Btype%5D=Book&resources%5BBook.527756%5D%5Bid%5D=527756&resources%5BBook.32585%5D%5Btype%5D=Book&resources%5BBook.32585%5D%5Bid%5D=32585&resources%5BBook.51799%5D%5Btype%5D=Book&resources%5BBook.51799%5D%5Bid%5D=51799&resources%5BBook.28381%5D%5Btype%5D=Book&resources%5BBook.28381%5D%5Bid%5D=28381&resources%5BBook.1715%5D%5Btype%5D=Book&resources%5BBook.1715%5D%5Bid%5D=1715&resources%5BBook.12914%5D%5Btype%5D=Book&resources%5BBook.12914%5D%5Bid%5D=12914&resources%5BBook.333538%5D%5Btype%5D=Book&resources%5BBook.333538%5D%5Bid%5D=333538&resources%5BBook.6185%5D%5Btype%5D=Book&resources%5BBook.6185%5D%5Bid%5D=6185&resources%5BBook.752900%5D%5Btype%5D=Book&resources%5BBook.752900%5D%5Bid%5D=752900&resources%5BBook.1785216%5D%5Btype%5D=Book&resources%5BBook.1785216%5D%5Bid%5D=1785216&resources%5BBook.14662%5D%5Btype%5D=Book&resources%5BBook.14662%5D%5Bid%5D=14662&resources%5BBook.22904%5D%5Btype%5D=Book&resources%5BBook.22904%5D%5Bid%5D=22904&resources%5BBook.18266%5D%5Btype%5D=Book&resources%5BBook.18266%5D%5Bid%5D=18266&resources%5BBook.5693%5D%5Btype%5D=Book&resources%5BBook.5693%5D%5Bid%5D=5693&resources%5BBook.59145%5D%5Btype%5D=Book&resources%5BBook.59145%5D%5Bid%5D=59145&resources%5BBook.35743%5D%5Btype%5D=Book&resources%5BBook.35743%5D%5Bid%5D=35743&resources%5BBook.2956%5D%5Btype%5D=Book&resources%5BBook.2956%5D%5Bid%5D=2956&resources%5BBook.373755%5D%5Btype%5D=Book&resources%5BBook.373755%5D%5Bid%5D=373755&resources%5BBook.80890%5D%5Btype%5D=Book&resources%5BBook.80890%5D%5Bid%5D=80890&resources%5BBook.141152%5D%5Btype%5D=Book&resources%5BBook.141152%5D%5Bid%5D=141152&resources%5BBook.32071%5D%5Btype%5D=Book&resources%5BBook.32071%5D%5Bid%5D=32071&resources%5BBook.5695%5D%5Btype%5D=Book&resources%5BBook.5695%5D%5Bid%5D=5695&resources%5BBook.38787%5D%5Btype%5D=Book&resources%5BBook.38787%5D%5Bid%5D=38787&resources%5BBook.12172%5D%5Btype%5D=Book&resources%5BBook.12172%5D%5Bid%5D=12172&resources%5BBook.33897%5D%5Btype%5D=Book&resources%5BBook.33897%5D%5Bid%5D=33897&resources%5BBook.24100%5D%5Btype%5D=Book&resources%5BBook.24100%5D%5Bid%5D=24100&resources%5BBook.30735%5D%5Btype%5D=Book&resources%5BBook.30735%5D%5Bid%5D=30735&resources%5BBook.76527%5D%5Btype%5D=Book&resources%5BBook.76527%5D%5Bid%5D=76527&resources%5BBook.12279%5D%5Btype%5D=Book&resources%5BBook.12279%5D%5Bid%5D=12279&resources%5BBook.814318%5D%5Btype%5D=Book&resources%5BBook.814318%5D%5Bid%5D=814318&resources%5BBook.18212%5D%5Btype%5D=Book&resources%5BBook.18212%5D%5Bid%5D=18212&resources%5BBook.669780%5D%5Btype%5D=Book&resources%5BBook.669780%5D%5Bid%5D=669780&resources%5BBook.7042%5D%5Btype%5D=Book&resources%5BBook.7042%5D%5Bid%5D=7042&resources%5BBook.2183%5D%5Btype%5D=Book&resources%5BBook.2183%5D%5Bid%5D=2183&resources%5BBook.2364284%5D%5Btype%5D=Book&resources%5BBook.2364284%5D%5Bid%5D=2364284&resources%5BBook.77287%5D%5Btype%5D=Book&resources%5BBook.77287%5D%5Bid%5D=77287&resources%5BBook.59950%5D%5Btype%5D=Book&resources%5BBook.59950%5D%5Bid%5D=59950&resources%5BBook.115476%5D%5Btype%5D=Book&resources%5BBook.115476%5D%5Bid%5D=115476&resources%5BBook.84737%5D%5Btype%5D=Book&resources%5BBook.84737%5D%5Bid%5D=84737&resources%5BBook.127047%5D%5Btype%5D=Book&resources%5BBook.127047%5D%5Bid%5D=127047&resources%5BBook.2363958%5D%5Btype%5D=Book&resources%5BBook.2363958%5D%5Bid%5D=2363958&resources%5BBook.31602%5D%5Btype%5D=Book&resources%5BBook.31602%5D%5Bid%5D=31602&resources%5BBook.1158380%5D%5Btype%5D=Book&resources%5BBook.1158380%5D%5Bid%5D=1158380&resources%5BBook.1258536%5D%5Btype%5D=Book&resources%5BBook.1258536%5D%5Bid%5D=1258536&resources%5BBook.243381%5D%5Btype%5D=Book&resources%5BBook.243381%5D%5Bid%5D=243381&resources%5BBook.103104%5D%5Btype%5D=Book&resources%5BBook.103104%5D%5Bid%5D=103104&resources%5BBook.641936%5D%5Btype%5D=Book&resources%5BBook.641936%5D%5Bid%5D=641936&resources%5BBook.125447%5D%5Btype%5D=Book&resources%5BBook.125447%5D%5Bid%5D=125447&resources%5BBook.6357419%5D%5Btype%5D=Book&resources%5BBook.6357419%5D%5Bid%5D=6357419','2024-02-18 15:49:19',NULL),
(251,'::1','/tooltips','2024-02-18 15:49:19',NULL),
(252,'::1','/en/main/top100','2024-02-18 15:49:19',NULL),
(253,'::1','/en/main/top100','2024-02-18 15:49:32',NULL),
(254,'::1','/en/main/top100','2024-02-18 15:50:01',NULL),
(255,'::1','/en/main/top100','2024-02-18 15:50:16',NULL),
(256,'::1','/en/main/top100','2024-02-18 15:50:29',NULL),
(257,'::1','/en/main/top100','2024-02-18 15:50:53',NULL),
(258,'::1','/en/main/top100','2024-02-18 15:51:19',NULL),
(259,'::1','/en/main/top100','2024-02-18 15:51:26',NULL),
(260,'::1','/en/main/top100','2024-02-18 15:52:26',NULL),
(261,'::1','/en/main/top100','2024-02-18 15:54:06',NULL),
(262,'::1','/en/main/top100','2024-02-18 15:56:44',NULL),
(263,'::1','/en/main/top100','2024-02-18 15:57:42',NULL),
(264,'::1','/en/main/top100','2024-02-18 15:57:52',NULL),
(265,'::1','/en/','2024-02-18 15:57:58',NULL),
(266,'::1','/en/page/about-us','2024-02-18 15:58:00',NULL),
(267,'::1','/en/main/top100','2024-02-18 15:58:02',NULL),
(268,'::1','/en/main/top100','2024-02-18 16:03:27',NULL),
(269,'::1','/en/main/top100','2024-02-18 16:03:34',NULL),
(270,'::1','/en/main/top100','2024-02-18 16:03:35',NULL),
(271,'::1','/en/main/top100','2024-02-18 16:03:36',NULL),
(272,'::1','/en/main/top100','2024-02-18 16:03:37',NULL),
(273,'::1','/en/','2024-02-18 16:03:41',NULL),
(274,'::1','/en/main/top100','2024-02-18 16:03:43',NULL),
(275,'::1','/en/main/top100','2024-02-18 16:05:53',NULL),
(276,'::1','/en/user/login','2024-02-18 16:06:10',NULL),
(277,'::1','/en/','2024-02-18 16:07:05',5),
(278,'::1','/en/main/top100','2024-02-18 16:07:12',5),
(279,'::1','/en/contact/feedback','2024-02-18 16:07:17',5),
(280,'::1','/en/main/top100','2024-02-18 16:47:05',2),
(281,'::1','/language/change?lang=ro','2024-02-18 16:47:30',2),
(282,'::1','/ro/main/top100','2024-02-18 16:47:30',2),
(283,'::1','/language/change?lang=en','2024-02-18 16:47:36',2),
(284,'::1','/main/top100','2024-02-18 16:47:36',2),
(285,'::1','/en/contact/feedback','2024-02-18 16:47:41',2),
(286,'::1','/en/contact/feedback','2024-02-18 18:06:23',2),
(287,'::1','/en/contact/feedback','2024-02-18 18:09:37',2),
(288,'::1','/en/contact/feedback','2024-02-18 18:11:27',2),
(289,'::1','/en/contact/feedback','2024-02-18 18:12:05',2),
(290,'::1','/en/contact/feedback','2024-02-18 18:14:02',2),
(291,'::1','/en/contact/feedback','2024-02-18 19:03:05',2),
(292,'::1','/en/','2024-02-18 19:03:10',2),
(293,'::1','/language/change?lang=ro','2024-02-18 19:03:25',2),
(294,'::1','/ro','2024-02-18 19:03:25',2),
(295,'::1','/language/change?lang=en','2024-02-18 19:03:27',2),
(296,'::1','/','2024-02-18 19:03:27',2),
(297,'::1','/','2024-02-18 19:29:33',2),
(298,'::1','/en/main/top100','2024-02-18 19:29:44',2),
(299,'::1','/en/search?s=Pride+and+Prejudice','2024-02-18 19:30:45',2),
(300,'::1','/en/search?s=master','2024-02-18 19:30:55',2),
(301,'::1','/en/search?s=bulgakov','2024-02-18 19:31:07',2),
(302,'::1','/en/search?s=bulgakov','2024-02-18 20:13:45',2),
(303,'::1','/en/main/top100','2024-02-18 20:13:52',2),
(304,'::1','/en/','2024-02-18 20:14:06',2),
(305,'::1','/en/wishlist','2024-02-18 20:15:06',2),
(306,'::1','/en/wishlist','2024-02-18 20:15:23',2),
(307,'::1','/en/wishlist','2024-02-18 20:15:29',2),
(308,'::1','/en/cart/show','2024-02-18 20:15:30',2),
(309,'::1','/en/search?s=harry+potter','2024-02-18 20:15:43',2),
(310,'::1','/en/search?s=harry+potter','2024-02-18 20:17:17',2),
(311,'::1','/en/','2024-02-18 20:17:34',2),
(312,'::1','/en/','2024-02-18 20:25:37',2),
(313,'::1','/en/search?s=harry','2024-02-18 20:25:42',2),
(314,'::1','/en/search?s=harry','2024-02-18 20:25:50',2),
(315,'::1','/en/category/fantasy','2024-02-18 20:26:12',2),
(316,'::1','/en/category/fantasy','2024-02-18 20:26:34',2),
(317,'::1','/en/category/fantasy','2024-02-18 20:27:37',2),
(318,'::1','/en/category/fantasy','2024-02-18 20:28:04',2),
(319,'::1','/en/category/fantasy','2024-02-18 20:28:05',2),
(320,'::1','/en/category/fantasy','2024-02-18 20:28:42',2),
(321,'::1','/en/category/fantasy','2024-02-18 20:32:16',2),
(322,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-18 20:32:24',2),
(323,'::1','/en/','2024-02-18 20:42:54',2),
(324,'::1','/en/','2024-02-18 20:43:13',2),
(325,'::1','/en/','2024-02-18 20:43:58',2),
(326,'::1','/assa/','2024-02-18 20:44:19',2),
(327,'::1','/en/main/error404','2024-02-18 20:44:36',2),
(328,'::1','/en/','2024-02-18 20:44:47',2),
(329,'::1','/en/','2024-02-18 20:45:00',2),
(330,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 20:45:18',2),
(331,'::1','/en/','2024-02-18 20:45:35',2),
(332,'::1','/en/category/drama','2024-02-18 20:51:41',2),
(333,'::1','/en/category/satire','2024-02-18 20:51:45',2),
(334,'::1','/en/category/comedy','2024-02-18 20:51:49',2),
(335,'::1','/en/category/supernatural','2024-02-18 20:51:54',2),
(336,'::1','/en/','2024-02-18 20:51:57',2),
(337,'::1','/en/main/top100','2024-02-18 20:52:14',2),
(338,'::1','/en/','2024-02-18 20:52:23',2),
(339,'::1','/en/main/top100','2024-02-18 20:52:43',2),
(340,'::1','/en/user/cabinet','2024-02-18 20:52:52',2),
(341,'::1','/en/user/orders','2024-02-18 20:52:54',2),
(342,'::1','/en/user/cabinet','2024-02-18 20:52:57',2),
(343,'::1','/en/user/files','2024-02-18 20:52:58',2),
(344,'::1','/en/user/files','2024-02-18 20:53:40',2),
(345,'::1','/en/user/files','2024-02-18 20:53:50',2),
(346,'::1','/en/user/files','2024-02-18 20:53:53',2),
(347,'::1','/en/user/files','2024-02-18 20:54:10',2),
(348,'::1','/en/user/files','2024-02-18 20:54:11',2),
(349,'::1','/en/user/files','2024-02-18 20:54:11',2),
(350,'::1','/en/user/files','2024-02-18 20:54:12',2),
(351,'::1','/en/user/files','2024-02-18 20:55:21',2),
(352,'::1','/en/user/files','2024-02-18 20:56:22',2),
(353,'::1','/en/user/files','2024-02-18 20:56:55',2),
(354,'::1','/en/user/files','2024-02-18 20:57:02',2),
(355,'::1','/en/user/credentials','2024-02-18 20:57:11',2),
(356,'::1','/en/contact/feedback','2024-02-18 20:59:46',2),
(357,'::1','/','2024-02-18 21:07:35',2),
(358,'::1','/en/contact/feedback','2024-02-18 21:09:37',2),
(359,'::1','/en/contact/feedback','2024-02-18 21:09:44',2),
(360,'::1','/en/contact/feedback','2024-02-18 21:09:50',2),
(361,'::1','/en/contact/feedback','2024-02-18 21:09:56',2),
(362,'::1','/en/contact/feedback','2024-02-18 21:14:22',2),
(363,'::1','/en/contact/feedback','2024-02-18 21:14:28',2),
(364,'::1','/en/contact/feedback','2024-02-18 21:14:56',2),
(365,'::1','/en/contact/feedback','2024-02-18 21:15:42',2),
(366,'::1','/en/contact/feedback','2024-02-18 21:16:00',2),
(367,'::1','/en/contact/feedback','2024-02-18 21:16:08',2),
(368,'::1','/en/contact/feedback','2024-02-18 21:17:13',2),
(369,'::1','/en/contact/feedback','2024-02-18 21:17:17',2),
(370,'::1','/en/contact/feedback','2024-02-18 21:17:37',2),
(371,'::1','/en/contact/feedback','2024-02-18 21:18:27',2),
(372,'::1','/en/contact/feedback','2024-02-18 21:20:31',2),
(373,'::1','/en/contact/feedback','2024-02-18 21:20:34',2),
(374,'::1','/en/contact/feedback','2024-02-18 21:20:50',2),
(375,'::1','/en/contact/feedback','2024-02-18 21:20:52',2),
(376,'::1','/en/contact/feedback','2024-02-18 21:20:58',2),
(377,'::1','/en/contact/feedback','2024-02-18 21:21:05',2),
(378,'::1','/en/contact/feedback','2024-02-18 21:21:15',2),
(379,'::1','/en/contact/feedback','2024-02-18 21:21:58',2),
(380,'::1','/en/contact/feedback','2024-02-18 21:22:17',2),
(381,'::1','/en/contact/feedback','2024-02-18 21:22:34',2),
(382,'::1','/en/','2024-02-18 21:23:02',2),
(383,'::1','/en/','2024-02-18 21:34:09',2),
(384,'::1','/en/','2024-02-18 21:35:08',2),
(385,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:35:13',2),
(386,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:35:37',2),
(387,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:36:07',2),
(388,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:36:08',2),
(389,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:36:09',2),
(390,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:36:57',2),
(391,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:37:33',2),
(392,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:37:58',2),
(393,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-18 21:38:18',2),
(394,'::1','/en/main/top100','2024-02-18 21:40:29',2),
(395,'::1','/en/main/top100','2024-02-18 21:40:38',2),
(396,'::1','/en/main/top100','2024-02-18 21:40:39',2),
(397,'::1','/en/main/top100','2024-02-18 21:40:44',2),
(398,'::1','/en/main/top100','2024-02-18 21:40:57',2),
(399,'::1','/en/main/top100','2024-02-18 21:41:47',2),
(400,'::1','/en/main/top100','2024-02-18 21:41:54',2),
(401,'::1','/en/main/top100','2024-02-18 22:02:57',2),
(402,'::1','/en/contact/feedback','2024-02-18 22:16:28',2),
(403,'::1','/en/contact/feedback','2024-02-18 22:16:35',2),
(404,'::1','/en/contact/feedback','2024-02-18 22:16:39',2),
(405,'::1','/en/contact/feedback','2024-02-18 22:16:48',2),
(406,'::1','/en/','2024-02-18 22:24:51',2),
(407,'::1','/language/change?lang=ro','2024-02-18 22:25:13',2),
(408,'::1','/ro','2024-02-18 22:25:13',2),
(409,'::1','/ro','2024-02-18 22:25:16',2),
(410,'::1','/ro','2024-02-19 16:49:25',2),
(411,'::1','/ro/cart/add?id=1&qty=1','2024-02-19 16:50:59',2),
(412,'::1','/ro/cart/add?id=1&qty=1','2024-02-19 16:51:20',2),
(413,'::1','/ro/cart/add?id=1&qty=1','2024-02-19 16:52:09',2),
(414,'::1','/ro','2024-02-19 16:54:15',2),
(415,'::1','/ro/cart/show','2024-02-19 16:54:20',2),
(416,'::1','/ro/cart/clear','2024-02-19 16:54:22',2),
(417,'::1','/ro','2024-02-19 16:54:26',2),
(418,'::1','/ro','2024-02-19 16:58:55',2),
(419,'::1','/ro','2024-02-19 16:59:21',2),
(420,'::1','/ro','2024-02-19 16:59:33',2),
(421,'::1','/ro/wishlist/add?id=1','2024-02-19 16:59:41',2),
(422,'::1','/ro/cart/add?id=1&qty=1','2024-02-19 16:59:47',2),
(423,'::1','/ro','2024-02-19 17:00:35',2),
(424,'::1','/ro','2024-02-19 18:10:43',2),
(425,'::1','/ro','2024-02-19 18:18:24',2),
(426,'::1','/ro','2024-02-19 18:19:26',2),
(427,'::1','/ro','2024-02-19 18:20:03',2),
(428,'::1','/ro','2024-02-19 18:24:25',2),
(429,'::1','/ro','2024-02-19 18:25:09',2),
(430,'::1','/ro','2024-02-19 18:26:30',2),
(431,'::1','/ro','2024-02-19 18:26:52',2),
(432,'::1','/ro','2024-02-19 18:26:53',2),
(433,'::1','/ro','2024-02-19 18:27:26',2),
(434,'::1','/ro','2024-02-19 18:30:14',2),
(435,'::1','/ro','2024-02-19 18:30:54',2),
(436,'::1','/ro','2024-02-19 18:31:15',2),
(437,'::1','/ro','2024-02-19 18:31:43',2),
(438,'::1','/ro','2024-02-19 18:32:06',2),
(439,'::1','/ro','2024-02-19 18:41:04',2),
(440,'::1','/ro','2024-02-19 18:42:04',2),
(441,'::1','/ro','2024-02-19 18:45:28',2),
(442,'::1','/public/','2024-02-19 18:50:12',2),
(443,'::1','/public/','2024-02-19 18:50:12',2),
(444,'::1','/ro','2024-02-19 18:52:17',2),
(445,'::1','/ro','2024-02-19 18:52:19',2),
(446,'::1','/ro','2024-02-19 18:52:40',2),
(447,'::1','/ro','2024-02-19 18:52:42',2),
(448,'::1','/ro','2024-02-19 18:52:43',2),
(449,'::1','/ro','2024-02-19 18:53:44',2),
(450,'::1','/ro','2024-02-19 18:54:56',2),
(451,'::1','/ro','2024-02-19 18:55:00',2),
(452,'::1','/ro','2024-02-19 18:55:06',2),
(453,'::1','/ro','2024-02-19 18:55:14',2),
(454,'::1','/ro','2024-02-19 18:56:09',2),
(455,'::1','/ro','2024-02-19 18:56:27',2),
(456,'::1','/ro','2024-02-19 18:57:54',2),
(457,'::1','/ro','2024-02-19 18:58:05',2),
(458,'::1','/ro','2024-02-19 18:58:18',2),
(459,'::1','/ro','2024-02-19 19:01:00',2),
(460,'::1','/ro','2024-02-19 19:01:01',2),
(461,'::1','/ro','2024-02-19 19:01:19',2),
(462,'::1','/ro','2024-02-19 19:01:21',2),
(463,'::1','/ro','2024-02-19 19:01:22',2),
(464,'::1','/ro','2024-02-19 19:01:22',2),
(465,'::1','/ro','2024-02-19 19:01:22',2),
(466,'::1','/ro','2024-02-19 19:01:24',2),
(467,'::1','/ro','2024-02-19 19:01:57',2),
(468,'::1','/ro/cart/show','2024-02-19 19:02:17',2),
(469,'::1','/ro','2024-02-19 19:02:38',2),
(470,'::1','/ro/cart/show','2024-02-19 19:02:40',2),
(471,'::1','/ro','2024-02-19 19:03:28',2),
(472,'::1','/ro/cart/show','2024-02-19 19:03:29',2),
(473,'::1','/ro','2024-02-19 19:03:51',2),
(474,'::1','/ro/cart/show','2024-02-19 19:03:52',2),
(475,'::1','/ro','2024-02-19 19:03:55',2),
(476,'::1','/ro','2024-02-19 19:04:12',2),
(477,'::1','/ro/cart/show','2024-02-19 19:04:14',2),
(478,'::1','/ro','2024-02-19 19:04:17',2),
(479,'::1','/ro/cart/show','2024-02-19 19:04:18',2),
(480,'::1','/ro','2024-02-19 19:05:06',2),
(481,'::1','/ro/cart/show','2024-02-19 19:05:08',2),
(482,'::1','/ro','2024-02-19 19:05:36',2),
(483,'::1','/ro/cart/show','2024-02-19 19:05:37',2),
(484,'::1','/ro','2024-02-19 19:05:56',2),
(485,'::1','/ro/cart/show','2024-02-19 19:05:57',2),
(486,'::1','/ro','2024-02-19 19:07:08',2),
(487,'::1','/ro/cart/show','2024-02-19 19:07:09',2),
(488,'::1','/ro','2024-02-19 19:08:19',2),
(489,'::1','/ro','2024-02-19 19:09:04',2),
(490,'::1','/ro','2024-02-19 19:09:33',2),
(491,'::1','/ro','2024-02-19 19:09:35',2),
(492,'::1','/ro','2024-02-19 19:11:38',2),
(493,'::1','/ro','2024-02-19 19:13:03',2),
(494,'::1','/ro','2024-02-19 19:13:05',2),
(495,'::1','/ro','2024-02-19 19:15:40',2),
(496,'::1','/ro','2024-02-19 19:16:25',2),
(497,'::1','/ro','2024-02-19 19:17:02',2),
(498,'::1','/ro','2024-02-19 19:20:19',2),
(499,'::1','/ro','2024-02-19 19:21:10',2),
(500,'::1','/ro','2024-02-19 19:21:31',2),
(501,'::1','/ro','2024-02-19 19:22:06',2),
(502,'::1','/ro','2024-02-19 19:23:06',2),
(503,'::1','/ro','2024-02-19 19:24:14',2),
(504,'::1','/ro','2024-02-19 19:25:00',2),
(505,'::1','/ro/cart/show','2024-02-19 19:25:10',2),
(506,'::1','/ro/cart/view','2024-02-19 19:25:19',2),
(507,'::1','/ro/cart/view','2024-02-19 19:28:42',2),
(508,'::1','/ro/cart/view','2024-02-19 19:28:43',2),
(509,'::1','/ro/cart/view','2024-02-19 19:29:29',2),
(510,'::1','/ro/cart/show','2024-02-19 19:29:30',2),
(511,'::1','/ro/cart/view','2024-02-19 19:29:32',2),
(512,'::1','/ro/cart/view','2024-02-19 19:29:45',2),
(513,'::1','/ro/cart/show','2024-02-19 19:29:47',2),
(514,'::1','/ro/cart/view','2024-02-19 19:29:48',2),
(515,'::1','/ro/cart/view','2024-02-19 19:30:20',2),
(516,'::1','/ro/cart/view','2024-02-19 19:30:33',2),
(517,'::1','/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 19:39:59',2),
(518,'::1','/en/cart/add?id=1&qty=1','2024-02-19 19:40:14',2),
(519,'::1','/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 19:52:09',2),
(520,'::1','/ro/category/fantasy','2024-02-19 19:53:02',2),
(521,'::1','/ro/category/fiction','2024-02-19 19:53:14',2),
(522,'::1','/ro/category/fiction','2024-02-19 19:53:17',2),
(523,'::1','/ro/category/fiction','2024-02-19 19:56:31',2),
(524,'::1','/ro/category/fiction?sort=title_asc','2024-02-19 19:56:41',2),
(525,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 19:56:49',2),
(526,'::1','/ro/category/fiction?sort=title_asc','2024-02-19 19:56:57',2),
(527,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 19:58:23',2),
(528,'::1','/ro/cart/add?id=11&qty=1','2024-02-19 19:58:58',2),
(529,'::1','/ro/cart/clear','2024-02-19 19:59:07',2),
(530,'::1','/ro/cart/show','2024-02-19 19:59:10',2),
(531,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:00',2),
(532,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:10',2),
(533,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:12',2),
(534,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:15',2),
(535,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:16',2),
(536,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:20',2),
(537,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:33',2),
(538,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:40',2),
(539,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:42',2),
(540,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:48',2),
(541,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:02:57',2),
(542,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:03:14',2),
(543,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:03:36',2),
(544,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:03:43',2),
(545,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:03:44',2),
(546,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:03:56',2),
(547,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:04:16',2),
(548,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:04:58',2),
(549,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:05:50',2),
(550,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:05:57',2),
(551,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:06:16',2),
(552,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:06:37',2),
(553,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:09:08',2),
(554,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:09:38',2),
(555,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 20:10:10',2),
(556,'::1','/ro/','2024-02-19 20:10:17',2),
(557,'::1','/ro/author/jk-','2024-02-19 20:25:51',2),
(558,'::1','/ro/authors','2024-02-19 20:25:54',2),
(559,'::1','/ro/authors','2024-02-19 20:37:47',2),
(560,'::1','/ro/authors','2024-02-19 20:40:47',2),
(561,'::1','/ro/authors','2024-02-19 20:45:12',2),
(562,'::1','/ro/authors','2024-02-19 20:45:22',2),
(563,'::1','/ro/authors','2024-02-19 20:45:49',2),
(564,'::1','/ro/authors','2024-02-19 20:46:04',2),
(565,'::1','/ro/','2024-02-19 20:46:07',2),
(566,'::1','/ro/authors','2024-02-19 20:46:15',2),
(567,'::1','/ro/authors?page=2','2024-02-19 20:46:25',2),
(568,'::1','/ro/authors?sort=title_asc','2024-02-19 20:46:30',2),
(569,'::1','/ro/authors?sort=title_asc&page=2','2024-02-19 20:46:34',2),
(570,'::1','/ro/','2024-02-19 20:46:40',2),
(571,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 20:46:42',2),
(572,'::1','/ro/','2024-02-19 20:46:52',2),
(573,'::1','/ro/author/j-k-rowling','2024-02-19 20:47:06',2),
(574,'::1','/ro/author/j-k-rowling?page=2','2024-02-19 20:47:14',2),
(575,'::1','/ro/author/j-k-rowling','2024-02-19 20:47:17',2),
(576,'::1','/ro/author/j-k-rowling?page=2','2024-02-19 20:47:51',2),
(577,'::1','/ro/authors','2024-02-19 20:47:52',2),
(578,'::1','/ro/authors?page=3','2024-02-19 20:47:54',2),
(579,'::1','/ro/authors?page=2','2024-02-19 20:47:57',2),
(580,'::1','/ro/authors?page=2','2024-02-19 20:48:04',2),
(581,'::1','/ro/authors','2024-02-19 20:48:09',2),
(582,'::1','/ro/authors?page=3','2024-02-19 20:48:28',2),
(583,'::1','/ro/','2024-02-19 20:48:31',2),
(584,'::1','/ro/authors','2024-02-19 20:48:33',2),
(585,'::1','/ro/author/j-k-rowling','2024-02-19 20:48:36',2),
(586,'::1','/ro/author/j-k-rowling','2024-02-19 20:54:42',2),
(587,'::1','/ro/authors','2024-02-19 20:54:45',2),
(588,'::1','/ro/authors?page=3','2024-02-19 20:54:53',2),
(589,'::1','/ro/authors?page=3','2024-02-19 20:54:57',2),
(590,'::1','/ro/authors?page=3','2024-02-19 20:56:05',2),
(591,'::1','/ro/author/john-little','2024-02-19 20:56:07',2),
(592,'::1','/ro/authors','2024-02-19 20:56:11',2),
(593,'::1','/ro/authors?page=3','2024-02-19 20:56:14',2),
(594,'::1','/ro/author/bruce-lee','2024-02-19 20:56:16',2),
(595,'::1','/ro/author/bruce-lee','2024-02-19 20:56:22',2),
(596,'::1','/ro/authors','2024-02-19 20:56:53',2),
(597,'::1','/ro/author/george-orwell','2024-02-19 20:56:55',2),
(598,'::1','/ro/authors','2024-02-19 20:57:02',2),
(599,'::1','/ro/authors','2024-02-19 20:57:44',2),
(600,'::1','/ro/authors','2024-02-19 20:58:33',2),
(601,'::1','/ro/authors?sort=title_asc','2024-02-19 20:58:36',2),
(602,'::1','/ro/authors?sort=title_desc','2024-02-19 20:58:38',2),
(603,'::1','/ro/authors?sort=title_asc','2024-02-19 20:58:44',2),
(604,'::1','/ro/authors?sort=title_asc','2024-02-19 21:03:20',2),
(605,'::1','/ro/authors?sort=name_asc','2024-02-19 21:03:23',2),
(606,'::1','/ro/authors?sort=name_asc','2024-02-19 21:03:54',2),
(607,'::1','/ro/authors?sort=name_desc','2024-02-19 21:03:58',2),
(608,'::1','/ro/authors?sort=name_desc&page=2','2024-02-19 21:04:02',2),
(609,'::1','/ro/authors?sort=name_desc&page=3','2024-02-19 21:04:05',2),
(610,'::1','/ro/authors?sort=name_desc&page=3','2024-02-19 21:07:02',2),
(611,'::1','/ro/','2024-02-19 21:07:09',2),
(612,'::1','/ro/','2024-02-19 21:07:31',2),
(613,'::1','/ro/authors','2024-02-19 21:07:36',2),
(614,'::1','/ro/authors?page=3','2024-02-19 21:07:42',2),
(615,'::1','/ro/authors','2024-02-19 21:07:44',2),
(616,'::1','/ro/authors?page=3','2024-02-19 21:07:45',2),
(617,'::1','/ro/authors','2024-02-19 21:07:46',2),
(618,'::1','/ro/authors?page=3','2024-02-19 21:07:47',2),
(619,'::1','/ro/authors?page=2','2024-02-19 21:07:48',2),
(620,'::1','/ro/authors?sort=name_desc','2024-02-19 21:07:52',2),
(621,'::1','/ro/author/jules-verne','2024-02-19 21:07:55',2),
(622,'::1','/ro/cart/add?id=15&qty=1','2024-02-19 21:08:02',2),
(623,'::1','/ro/author/jules-verne','2024-02-19 21:08:35',2),
(624,'::1','/ro/authors','2024-02-19 21:08:41',2),
(625,'::1','/ro/authors?page=2','2024-02-19 21:08:44',2),
(626,'::1','/ro/authors?page=3','2024-02-19 21:08:47',2),
(627,'::1','/ro/authors?page=3','2024-02-19 21:09:18',2),
(628,'::1','/ro/authors?page=3','2024-02-19 21:09:20',2),
(629,'::1','/ro/authors?page=3','2024-02-19 21:09:22',2),
(630,'::1','/ro/author/jules-verne','2024-02-19 21:09:25',2),
(631,'::1','/ro/authors','2024-02-19 21:09:28',2),
(632,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:31',2),
(633,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:34',2),
(634,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:35',2),
(635,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:35',2),
(636,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:35',2),
(637,'::1','/ro/author/j-k-rowling','2024-02-19 21:09:35',2),
(638,'::1','/ro/authors','2024-02-19 21:09:39',2),
(639,'::1','/ro/authors','2024-02-19 21:10:45',2),
(640,'::1','/ro/authors','2024-02-19 21:10:55',2),
(641,'::1','/ro/authors?page=2','2024-02-19 21:11:08',2),
(642,'::1','/ro/authors','2024-02-19 21:11:14',2),
(643,'::1','/ro/authors','2024-02-19 21:13:40',2),
(644,'::1','/ro/authors?sort=count_books_asc','2024-02-19 21:13:44',2),
(645,'::1','/ro/authors?sort=count_books_asc','2024-02-19 21:14:09',2),
(646,'::1','/ro/authors?sort=count_books_desc','2024-02-19 21:14:15',2),
(647,'::1','/ro/','2024-02-19 21:14:21',2),
(648,'::1','/ro/author/j-r-r-tolkien','2024-02-19 21:14:32',2),
(649,'::1','/ro/','2024-02-19 21:14:41',2),
(650,'::1','/ro/author/j-k-rowling','2024-02-19 21:14:43',2),
(651,'::1','/ro/wishlist/add?id=4','2024-02-19 21:14:56',2),
(652,'::1','/ro/cart/show','2024-02-19 21:15:05',2),
(653,'::1','/ro/wishlist/add?id=2','2024-02-19 21:15:48',2),
(654,'::1','/ro/wishlist/delete?id=2','2024-02-19 21:15:54',2),
(655,'::1','/ro/wishlist/add?id=2','2024-02-19 21:18:46',2),
(656,'::1','/ro/cart/add?id=8&qty=1','2024-02-19 21:18:51',2),
(657,'::1','/ro/search?s=harry','2024-02-19 21:19:12',2),
(658,'::1','/ro/search?s=harry','2024-02-19 21:20:08',2),
(659,'::1','/ro/search?s=harry','2024-02-19 21:20:39',2),
(660,'::1','/ro/search?s=','2024-02-19 21:20:44',2),
(661,'::1','/ro/search?s=&page=3','2024-02-19 21:20:52',2),
(662,'::1','/ro/search?s=','2024-02-19 21:21:02',2),
(663,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 21:21:56',2),
(664,'::1','/ro/category/fantasy','2024-02-19 21:22:12',2),
(665,'::1','/ro/category/fiction','2024-02-19 21:22:13',2),
(666,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 21:22:15',2),
(667,'::1','/ro/category/fantasy','2024-02-19 21:22:16',2),
(668,'::1','/ro/category/fantasy','2024-02-19 21:22:20',2),
(669,'::1','/ro/category/fantasy','2024-02-19 21:22:23',2),
(670,'::1','/ro/category/fiction','2024-02-19 21:22:25',2),
(671,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 21:22:27',2),
(672,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 21:24:57',2),
(673,'::1','/ro/category/fantasy','2024-02-19 21:24:59',2),
(674,'::1','/ro/category/fantasy','2024-02-19 21:25:08',2),
(675,'::1','/ro/category/fiction','2024-02-19 21:25:11',2),
(676,'::1','/ro/category/dystopian','2024-02-19 21:25:23',2),
(677,'::1','/ro/category/science-fiction','2024-02-19 21:25:28',2),
(678,'::1','/ro/category/supernatural','2024-02-19 21:25:30',2),
(679,'::1','/ro/item/the-master-and-margarita','2024-02-19 21:25:32',2),
(680,'::1','/ro/category/supernatural','2024-02-19 21:25:35',2),
(681,'::1','/ro/category/fantasy','2024-02-19 21:25:37',2),
(682,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 21:25:38',2),
(683,'::1','/ro/category/fantasy','2024-02-19 21:25:40',2),
(684,'::1','/ro/category/fiction','2024-02-19 21:25:43',2),
(685,'::1','/ro/category/fiction?sort=title_desc','2024-02-19 21:26:48',2),
(686,'::1','/ro/authors','2024-02-19 21:26:50',2),
(687,'::1','/ro/authors?sort=count_books_desc','2024-02-19 21:26:53',2),
(688,'::1','/ro/authors?sort=count_books_asc','2024-02-19 21:26:56',2),
(689,'::1','/ro/author/arthur-conan-doyle','2024-02-19 21:26:59',2),
(690,'::1','/ro/','2024-02-19 21:27:05',2),
(691,'::1','/ro/author/j-k-rowling','2024-02-19 21:27:15',2),
(692,'::1','/ro/','2024-02-19 21:34:26',2),
(693,'::1','/ro/','2024-02-19 21:37:00',2),
(694,'::1','/ro/','2024-02-19 21:37:50',2),
(695,'::1','/ro/','2024-02-19 21:38:03',2),
(696,'::1','/ro/','2024-02-19 21:38:12',2),
(697,'::1','/ro/','2024-02-19 21:38:50',2),
(698,'::1','/ro/','2024-02-19 21:38:59',2),
(699,'::1','/ro/','2024-02-19 21:39:15',2),
(700,'::1','/ro/','2024-02-19 21:39:23',2),
(701,'::1','/ro/author/j-k-rowling','2024-02-19 21:39:38',2),
(702,'::1','/ro/author/j-k-rowling','2024-02-19 21:41:02',2),
(703,'::1','/ro/author/j-k-rowling','2024-02-19 21:41:12',2),
(704,'::1','/ro/category/fantasy','2024-02-19 21:41:15',2),
(705,'::1','/ro/author/j-r-r-tolkien','2024-02-19 21:41:20',2),
(706,'::1','/ro/search?s=harry','2024-02-19 21:41:49',2),
(707,'::1','/ro/search?s=harry','2024-02-19 21:43:11',2),
(708,'::1','/ro/search?s=harry','2024-02-19 21:52:31',2),
(709,'::1','/ro/search?s=harry','2024-02-19 21:53:42',2),
(710,'::1','/ro/search?s=harry','2024-02-19 21:53:55',2),
(711,'::1','/ro/search?s=harry','2024-02-19 21:54:04',2),
(712,'::1','/ro/search?s=harry','2024-02-19 21:55:12',2),
(713,'::1','/ro/search?s=harry','2024-02-19 21:55:33',2),
(714,'::1','/ro/search?s=doyl','2024-02-19 21:55:39',2),
(715,'::1','/ro/search?s=master','2024-02-19 21:55:51',2),
(716,'::1','/ro/search?s=bulgakov','2024-02-19 21:55:57',2),
(717,'::1','/ro/search?s=bulgakov','2024-02-19 21:56:47',2),
(718,'::1','/ro/search?s=bulgakov','2024-02-19 21:57:00',2),
(719,'::1','/ro/search?s=bulgakov','2024-02-19 21:57:08',2),
(720,'::1','/ro/search?s=bulgakov','2024-02-19 22:00:15',2),
(721,'::1','/ro/search?s=bulgakov','2024-02-19 22:02:11',2),
(722,'::1','/ro/search?s=bulgakov','2024-02-19 22:02:15',2),
(723,'::1','/ro/search?s=bulgakov','2024-02-19 22:02:34',2),
(724,'::1','/ro/search?sort=title_asc','2024-02-19 22:02:37',2),
(725,'::1','/ro/search?sort=title_desc','2024-02-19 22:02:44',2),
(726,'::1','/ro/search?s=bulgakov','2024-02-19 22:02:56',2),
(727,'::1','/ro/search?s=bulgakov','2024-02-19 22:04:23',2),
(728,'::1','/ro/search?sort=title_asc&s=bulgakov','2024-02-19 22:04:26',2),
(729,'::1','/ro/search?sort=title_desc&s=bulgakov','2024-02-19 22:04:30',2),
(730,'::1','/ro/search?sort=author_desc&s=bulgakov','2024-02-19 22:04:32',2),
(731,'::1','/ro/search?sort=author_desc&s=bulgakov','2024-02-19 22:05:57',2),
(732,'::1','/ro/search?sort=author_asc&s=bulgakov','2024-02-19 22:06:01',2),
(733,'::1','/ro/search?s=m','2024-02-19 22:06:06',2),
(734,'::1','/ro/search?sort=author_asc&s=m','2024-02-19 22:06:13',2),
(735,'::1','/ro/search?sort=author_desc&s=m','2024-02-19 22:06:23',2),
(736,'::1','/ro/search?sort=title_asc&s=m','2024-02-19 22:06:27',2),
(737,'::1','/ro/search?sort=title_desc&s=m','2024-02-19 22:06:31',2),
(738,'::1','/ro/search?sort=title_desc&s=m&page=2','2024-02-19 22:06:42',2),
(739,'::1','/ro/author/mihail-bulgakov','2024-02-19 22:07:48',2),
(740,'::1','/ro/','2024-02-19 22:07:57',2),
(741,'::1','/ro/category/comedy','2024-02-19 22:08:49',2),
(742,'::1','/ro/category/comedy','2024-02-19 22:09:02',2),
(743,'::1','/ro/category/comedy','2024-02-19 22:09:14',2),
(744,'::1','/ro/category/comedy','2024-02-19 22:09:27',2),
(745,'::1','/ro/category/comedy','2024-02-19 22:09:33',2),
(746,'::1','/ro/category/comedy','2024-02-19 22:10:52',2),
(747,'::1','/ro/category/comedy','2024-02-19 22:11:16',2),
(748,'::1','/ro/category/comedy','2024-02-19 22:11:40',2),
(749,'::1','/ro/category/comedy','2024-02-19 22:11:53',2),
(750,'::1','/ro/category/comedy','2024-02-19 22:13:17',2),
(751,'::1','/ro/category/comedy','2024-02-19 22:13:28',2),
(752,'::1','/ro/category/comedy','2024-02-19 22:14:11',2),
(753,'::1','/ro/category/comedy','2024-02-19 22:14:26',2),
(754,'::1','/ro/category/comedy','2024-02-19 22:14:36',2),
(755,'::1','/ro/category/comedy','2024-02-19 22:14:45',2),
(756,'::1','/ro/category/comedy','2024-02-19 22:16:15',2),
(757,'::1','/ro/category/comedy','2024-02-19 22:16:18',2),
(758,'::1','/ro/category/fiction','2024-02-19 22:16:23',2),
(759,'::1','/ro/category/fiction','2024-02-19 22:16:37',2),
(760,'::1','/ro/category/comedy','2024-02-19 22:16:39',2),
(761,'::1','/ro/category/non-fiction','2024-02-19 22:16:41',2),
(762,'::1','/ro/category/romance','2024-02-19 22:16:43',2),
(763,'::1','/ro/','2024-02-19 22:16:57',2),
(764,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:16:59',2),
(765,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:18:04',2),
(766,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:18:09',2),
(767,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:19:46',2),
(768,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:20:57',2),
(769,'::1','/ro/cart/add?id=1&qty=2','2024-02-19 22:21:05',2),
(770,'::1','/ro/author/j-k-rowling','2024-02-19 22:21:12',2),
(771,'::1','/ro/authors','2024-02-19 22:21:17',2),
(772,'::1','/ro/authors','2024-02-19 22:22:20',2),
(773,'::1','/ro/authors','2024-02-19 22:22:48',2),
(774,'::1','/ro/authors','2024-02-19 22:23:44',2),
(775,'::1','/ro/authors','2024-02-19 22:24:30',2),
(776,'::1','/ro/authors','2024-02-19 22:24:47',2),
(777,'::1','/ro/authors','2024-02-19 22:25:01',2),
(778,'::1','/ro/authors','2024-02-19 22:25:08',2),
(779,'::1','/ro/authors','2024-02-19 22:25:17',2),
(780,'::1','/ro/authors','2024-02-19 22:25:26',2),
(781,'::1','/ro/authors','2024-02-19 22:25:40',2),
(782,'::1','/ro/authors','2024-02-19 22:25:48',2),
(783,'::1','/ro/authors','2024-02-19 22:26:15',2),
(784,'::1','/ro/','2024-02-19 22:26:19',2),
(785,'::1','/ro/','2024-02-19 22:26:50',2),
(786,'::1','/ro/','2024-02-19 22:27:16',2),
(787,'::1','/ro/','2024-02-19 22:27:19',2),
(788,'::1','/ro/','2024-02-19 22:27:29',2),
(789,'::1','/ro/','2024-02-19 22:27:30',2),
(790,'::1','/ro/','2024-02-19 22:27:36',2),
(791,'::1','/ro/','2024-02-19 22:27:47',2),
(792,'::1','/ro/','2024-02-19 22:28:04',2),
(793,'::1','/ro/author/j-r-r-tolkien','2024-02-19 22:28:12',2),
(794,'::1','/ro/author/j-r-r-tolkien','2024-02-19 22:28:17',2),
(795,'::1','/ro/','2024-02-19 22:28:20',2),
(796,'::1','/ro/author/j-k-rowling','2024-02-19 22:28:23',2),
(797,'::1','/ro/author/j-k-rowling','2024-02-19 22:28:27',2),
(798,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:28:28',2),
(799,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-19 22:36:57',2),
(800,'::1','/ro/','2024-02-19 22:37:04',2),
(801,'::1','/ro/author/j-k-rowling','2024-02-19 22:37:08',2),
(802,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:37:10',2),
(803,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:42:11',2),
(804,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:42:55',2),
(805,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:43:45',2),
(806,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:44:01',2),
(807,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:44:14',2),
(808,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:44:28',2),
(809,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:44:30',2),
(810,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:44:31',2),
(811,'::1','/ro/authors','2024-02-19 22:44:52',2),
(812,'::1','/ro/author/j-k-rowling','2024-02-19 22:44:54',2),
(813,'::1','/ro/author/j-k-rowling','2024-02-19 22:46:22',2),
(814,'::1','/ro/category/mystery','2024-02-19 22:46:52',2),
(815,'::1','/ro/category/fantasy','2024-02-19 22:46:55',2),
(816,'::1','/ro/cart/show','2024-02-19 22:46:59',2),
(817,'::1','/ro/cart/view','2024-02-19 22:47:03',2),
(818,'::1','/ro/cart/delete?id=8','2024-02-19 22:47:12',2),
(819,'::1','/ro/cart/view','2024-02-19 22:47:12',2),
(820,'::1','/ro/cart/view','2024-02-19 22:48:12',2),
(821,'::1','/ro/','2024-02-19 22:48:21',2),
(822,'::1','/ro/author/j-k-rowling','2024-02-19 22:48:24',2),
(823,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:48:37',2),
(824,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:49:15',2),
(825,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:53:33',2),
(826,'::1','/ro/author/j-k-rowling','2024-02-19 22:53:37',2),
(827,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 22:53:44',2),
(828,'::1','/ro/author/j-k-rowling','2024-02-19 22:53:47',2),
(829,'::1','/ro/authors','2024-02-19 22:55:20',2),
(830,'::1','/ro/author/j-r-r-tolkien','2024-02-19 22:55:22',2),
(831,'::1','/ro/author/j-r-r-tolkien','2024-02-19 22:55:27',2),
(832,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:10:24',2),
(833,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:10:37',2),
(834,'::1','/','2024-02-19 23:10:37',2),
(835,'::1','/','2024-02-19 23:10:40',2),
(836,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:11:11',2),
(837,'::1','/','2024-02-19 23:11:11',2),
(838,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:06',2),
(839,'::1','/','2024-02-19 23:12:07',2),
(840,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:09',2),
(841,'::1','/','2024-02-19 23:12:09',2),
(842,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:10',2),
(843,'::1','/','2024-02-19 23:12:10',2),
(844,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:25',2),
(845,'::1','/','2024-02-19 23:12:26',2),
(846,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:44',2),
(847,'::1','/','2024-02-19 23:12:44',2),
(848,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:12:45',2),
(849,'::1','/','2024-02-19 23:12:46',2),
(850,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:15:00',2),
(851,'::1','/','2024-02-19 23:15:00',2),
(852,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:15:27',2),
(853,'::1','/','2024-02-19 23:15:27',2),
(854,'::1','/ro/authors','2024-02-19 23:15:29',2),
(855,'::1','/ro/author/j-k-rowling','2024-02-19 23:15:31',2),
(856,'::1','/ro/author/j-k-rowling','2024-02-19 23:15:48',2),
(857,'::1','/ro/author/j-k-rowling','2024-02-19 23:15:50',2),
(858,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:15:52',2),
(859,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:20:50',2),
(860,'::1','/ro/','2024-02-19 23:20:52',2),
(861,'::1','/ro','2024-02-19 23:20:55',2),
(862,'::1','/ro','2024-02-19 23:21:07',2),
(863,'::1','/ro','2024-02-19 23:21:09',2),
(864,'::1','/ro/','2024-02-19 23:21:12',2),
(865,'::1','/ro/authors','2024-02-19 23:21:14',2),
(866,'::1','/ro/author/j-k-rowling','2024-02-19 23:21:16',2),
(867,'::1','/ro/author/j-k-rowling','2024-02-19 23:21:42',2),
(868,'::1','/ro/author/j-k-rowling','2024-02-19 23:22:03',2),
(869,'::1','/ro/author/j-k-rowling','2024-02-19 23:22:47',2),
(870,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:09',2),
(871,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:10',2),
(872,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:23',2),
(873,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:24',2),
(874,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:29',2),
(875,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:35',2),
(876,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:43',2),
(877,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:48',2),
(878,'::1','/ro/author/j-k-rowling','2024-02-19 23:23:52',2),
(879,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:02',2),
(880,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:06',2),
(881,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:07',2),
(882,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:09',2),
(883,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:10',2),
(884,'::1','/ro/author/j-k-rowling','2024-02-19 23:24:36',2),
(885,'::1','/ro/author/j-k-rowling','2024-02-19 23:25:11',2),
(886,'::1','/ro/author/j-k-rowling','2024-02-19 23:25:12',2),
(887,'::1','/ro/author/j-k-rowling','2024-02-19 23:25:37',2),
(888,'::1','/ro/author/j-k-rowling','2024-02-19 23:25:45',2),
(889,'::1','/ro/author/j-k-rowling','2024-02-19 23:26:01',2),
(890,'::1','/ro/author/j-k-rowling','2024-02-19 23:27:22',2),
(891,'::1','/ro/author/j-k-rowling','2024-02-19 23:28:14',2),
(892,'::1','/ro/author/j-k-rowling','2024-02-19 23:28:15',2),
(893,'::1','/ro/author/j-k-rowling','2024-02-19 23:28:36',2),
(894,'::1','/ro/author/j-k-rowling','2024-02-19 23:28:38',2),
(895,'::1','/ro/author/j-k-rowling','2024-02-19 23:29:14',2),
(896,'::1','/ro/authors','2024-02-19 23:29:29',2),
(897,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:29:30',2),
(898,'::1','/ro/authors','2024-02-19 23:29:32',2),
(899,'::1','/ro/author/george-orwell','2024-02-19 23:29:34',2),
(900,'::1','/ro/author/george-orwell','2024-02-19 23:29:41',2),
(901,'::1','/ro/authors','2024-02-19 23:29:44',2),
(902,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:29:47',2),
(903,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:29:58',2),
(904,'::1','/ro/authors','2024-02-19 23:30:02',2),
(905,'::1','/ro/authors','2024-02-19 23:30:03',2),
(906,'::1','/ro/authors','2024-02-19 23:30:05',2),
(907,'::1','/ro/author/j-k-rowling','2024-02-19 23:30:06',2),
(908,'::1','/ro/authors','2024-02-19 23:30:19',2),
(909,'::1','/ro/category/fiction','2024-02-19 23:30:35',2),
(910,'::1','/ro/','2024-02-19 23:30:46',2),
(911,'::1','/ro/','2024-02-19 23:32:16',2),
(912,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:20',2),
(913,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:23',2),
(914,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:24',2),
(915,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:30',2),
(916,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:32',2),
(917,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:32:33',2),
(918,'::1','/ro/category/mystery','2024-02-19 23:32:37',2),
(919,'::1','/ro/category/fiction','2024-02-19 23:32:40',2),
(920,'::1','/ro/search?s=m','2024-02-19 23:32:44',2),
(921,'::1','/ro/','2024-02-19 23:32:48',2),
(922,'::1','/ro/','2024-02-19 23:33:47',2),
(923,'::1','/','2024-02-19 23:33:47',2),
(924,'::1','/ro/item/mihail-bulgakov','2024-02-19 23:34:03',2),
(925,'::1','/ro/','2024-02-19 23:34:13',2),
(926,'::1','/','2024-02-19 23:34:13',2),
(927,'::1','/ro/','2024-02-19 23:34:32',2),
(928,'::1','/','2024-02-19 23:34:32',2),
(929,'::1','/ro/','2024-02-19 23:34:43',2),
(930,'::1','/','2024-02-19 23:34:43',2),
(931,'::1','/ro/','2024-02-19 23:35:09',2),
(932,'::1','/','2024-02-19 23:35:09',2),
(933,'::1','/ro/','2024-02-19 23:35:21',2),
(934,'::1','/','2024-02-19 23:35:21',2),
(935,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:35:22',2),
(936,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:36:06',2),
(937,'::1','/ro/','2024-02-19 23:36:23',2),
(938,'::1','/','2024-02-19 23:36:23',2),
(939,'::1','/ro/author/j-k-rowling','2024-02-19 23:36:24',2),
(940,'::1','/ro/authors','2024-02-19 23:36:29',2),
(941,'::1','/','2024-02-19 23:36:29',2),
(942,'::1','/','2024-02-19 23:36:29',2),
(943,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:36:35',2),
(944,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:37:33',2),
(945,'::1','/ro/','2024-02-19 23:37:38',2),
(946,'::1','/','2024-02-19 23:37:38',2),
(947,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:37:43',2),
(948,'::1','/ro/authors','2024-02-19 23:37:47',2),
(949,'::1','/','2024-02-19 23:37:47',2),
(950,'::1','/','2024-02-19 23:37:47',2),
(951,'::1','/ro/search?s=bulgakov','2024-02-19 23:37:53',2),
(952,'::1','/ro/search?s=bulgakov','2024-02-19 23:37:57',2),
(953,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:37:59',2),
(954,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:39:08',2),
(955,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:39:11',2),
(956,'::1','/ro/search?s=bulgakov','2024-02-19 23:39:33',2),
(957,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:39:36',2),
(958,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:39:58',2),
(959,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:40:06',2),
(960,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:42:07',2),
(961,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:46:21',2),
(962,'::1','/ro/','2024-02-19 23:46:23',2),
(963,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:46:31',2),
(964,'::1','/ro/author/j-r-r-tolkien','2024-02-19 23:47:09',2),
(965,'::1','/ro/','2024-02-19 23:47:17',2),
(966,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:47:19',2),
(967,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:47:47',2),
(968,'::1','/ro/authors','2024-02-19 23:47:53',2),
(969,'::1','/ro/author/arthur-conan-doyle','2024-02-19 23:47:59',2),
(970,'::1','/ro/category/fiction','2024-02-19 23:48:21',2),
(971,'::1','/ro/authors','2024-02-19 23:48:24',2),
(972,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:48:27',2),
(973,'::1','/ro/authors','2024-02-19 23:49:00',2),
(974,'::1','/ro/author/j-k-rowling','2024-02-19 23:49:03',2),
(975,'::1','/ro/author/j-k-rowling','2024-02-19 23:49:27',2),
(976,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:49:38',2),
(977,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:50:40',2),
(978,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:50:57',2),
(979,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:50:58',2),
(980,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:50:59',2),
(981,'::1','/ro/','2024-02-19 23:51:04',2),
(982,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:51:09',2),
(983,'::1','/ro/item/the-master-and-margarita','2024-02-19 23:51:16',2),
(984,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:51:30',2),
(985,'::1','/ro/wishlist','2024-02-19 23:51:37',2),
(986,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:51:47',2),
(987,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:52:30',2),
(988,'::1','/ro/author/mihail-bulgakov','2024-02-19 23:52:54',2),
(989,'::1','/ro/authors','2024-02-19 23:53:09',2),
(990,'::1','/ro/author/j-k-rowling','2024-02-19 23:53:10',2),
(991,'::1','/ro/category/fiction','2024-02-19 23:53:17',2),
(992,'::1','/ro/','2024-02-19 23:53:23',2),
(993,'::1','/ro/author/j-k-rowling','2024-02-19 23:53:28',2),
(994,'::1','/ro/category/drama','2024-02-19 23:53:52',2),
(995,'::1','/ro/category/fiction','2024-02-19 23:53:56',2),
(996,'::1','/ro/item/the-hobbit','2024-02-19 23:54:05',2),
(997,'::1','/ro/category/fiction','2024-02-19 23:54:08',2),
(998,'::1','/language/change?lang=en','2024-02-19 23:54:43',2),
(999,'::1','/category/fiction','2024-02-19 23:54:43',2),
(1000,'::1','/category/fiction','2024-02-19 23:54:46',2),
(1001,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:54:51',2),
(1002,'::1','/language/change?lang=ro','2024-02-19 23:54:55',2),
(1003,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:54:55',2),
(1004,'::1','/language/change?lang=en','2024-02-19 23:55:00',2),
(1005,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:00',2),
(1006,'::1','/language/change?lang=ro','2024-02-19 23:55:03',2),
(1007,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:03',2),
(1008,'::1','/language/change?lang=en','2024-02-19 23:55:06',2),
(1009,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:06',2),
(1010,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:08',2),
(1011,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:10',2),
(1012,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:12',2),
(1013,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:13',2),
(1014,'::1','/language/change?lang=ro','2024-02-19 23:55:15',2),
(1015,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:15',2),
(1016,'::1','/language/change?lang=en','2024-02-19 23:55:17',2),
(1017,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:18',2),
(1018,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:27',2),
(1019,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:29',2),
(1020,'::1','/language/change?lang=ro','2024-02-19 23:55:32',2),
(1021,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:32',2),
(1022,'::1','/language/change?lang=en','2024-02-19 23:55:35',2),
(1023,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:55:35',2),
(1024,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:56:20',2),
(1025,'::1','/language/change?lang=ro','2024-02-19 23:56:23',2),
(1026,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:56:23',2),
(1027,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:56:24',2),
(1028,'::1','/language/change?lang=en','2024-02-19 23:56:26',2),
(1029,'::1','/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:56:27',2),
(1030,'::1','/language/change?lang=ro','2024-02-19 23:56:29',2),
(1031,'::1','/ro/item/harry-potter-and-the-sorcerer-s-stone','2024-02-19 23:56:29',2),
(1032,'::1','/ro/category/fantasy','2024-02-19 23:57:00',2),
(1033,'::1','/ro/category/fantasy','2024-02-19 23:58:19',2),
(1034,'::1','/ro/wishlist','2024-02-19 23:58:21',2),
(1035,'::1','/ro/wishlist/delete?id=2','2024-02-19 23:58:41',2),
(1036,'::1','/ro/wishlist','2024-02-19 23:58:41',2),
(1037,'::1','/ro/wishlist','2024-02-19 23:58:42',2),
(1038,'::1','/ro/wishlist','2024-02-20 00:00:02',2),
(1039,'::1','/ro/wishlist','2024-02-20 00:00:36',2),
(1040,'::1','/language/change?lang=en','2024-02-20 00:00:39',2),
(1041,'::1','/wishlist','2024-02-20 00:00:39',2),
(1042,'::1','/en/user/cabinet','2024-02-20 00:00:42',2),
(1043,'::1','/en/user/orders','2024-02-20 00:00:55',2),
(1044,'::1','/en/user/order?id=1','2024-02-20 00:01:05',2),
(1045,'::1','/en/user/files','2024-02-20 00:01:23',2),
(1046,'::1','/en/user/credentials','2024-02-20 00:01:28',2),
(1047,'::1','/en/user/orders','2024-02-20 00:06:44',2),
(1048,'::1','/en/user/files','2024-02-20 00:06:53',2),
(1049,'::1','/en/user/files','2024-02-20 00:13:22',2),
(1050,'::1','/en/user/files','2024-02-20 00:13:24',2),
(1051,'::1','/en/user/account','2024-02-20 00:13:28',2),
(1052,'::1','/en/user/account','2024-02-20 00:14:19',2),
(1053,'::1','/en/user/credentials','2024-02-20 00:14:23',2),
(1054,'::1','/en/user/credentials','2024-02-20 00:15:30',2),
(1055,'::1','/en/user/credentials','2024-02-20 00:15:49',2),
(1056,'::1','/en/user/credentials','2024-02-20 00:17:48',2),
(1057,'::1','/en/user/credentials','2024-02-20 00:18:46',2),
(1058,'::1','/en/user/credentials','2024-02-20 00:18:52',2),
(1059,'::1','/en/user/credentials','2024-02-20 00:19:11',2),
(1060,'::1','/en/user/orders','2024-02-20 00:19:14',2),
(1061,'::1','/en/user/orders','2024-02-20 00:19:45',2),
(1062,'::1','/en/user/credentials','2024-02-20 00:20:10',2),
(1063,'::1','/en/user/credentials','2024-02-20 00:20:35',2),
(1064,'::1','/en/user/orders','2024-02-20 00:20:49',2),
(1065,'::1','/en/wishlist','2024-02-20 00:20:55',2),
(1066,'::1','/en/cart/show','2024-02-20 00:21:00',2),
(1067,'::1','/en/cart/view','2024-02-20 00:21:04',2),
(1068,'::1','/en/user/account','2024-02-20 00:21:16',2),
(1069,'::1','/en/user/orders','2024-02-20 00:21:27',2),
(1070,'::1','/en/user/orders','2024-02-20 00:22:16',2),
(1071,'::1','/en/user/order?id=1','2024-02-20 00:22:25',2),
(1072,'::1','/en/user/order?id=1','2024-02-20 00:23:17',2),
(1073,'::1','/en/user/order?id=1','2024-02-20 00:24:06',2),
(1074,'::1','/en/user/order?id=1','2024-02-20 00:24:27',2),
(1075,'::1','/en/user/order?id=1','2024-02-20 00:24:42',2),
(1076,'::1','/en/user/orders','2024-02-20 00:24:47',2),
(1077,'::1','/en/user/order?id=1','2024-02-20 00:24:53',2),
(1078,'::1','/en/user/orders','2024-02-20 00:24:58',2),
(1079,'::1','/en/user/order?id=1','2024-02-20 00:25:01',2),
(1080,'::1','/en/user/orders','2024-02-20 00:25:05',2),
(1081,'::1','/en/user/orders','2024-02-20 00:25:19',2),
(1082,'::1','/en/user/order?id=1','2024-02-20 00:25:22',2),
(1083,'::1','/en/user/order?id=1','2024-02-20 00:26:00',2),
(1084,'::1','/en/user/order?id=1','2024-02-20 00:26:01',2),
(1085,'::1','/en/user/order?id=1','2024-02-20 00:26:02',2),
(1086,'::1','/en/user/order?id=1','2024-02-20 00:26:02',2),
(1087,'::1','/en/user/order?id=1','2024-02-20 00:26:03',2),
(1088,'::1','/en/user/account','2024-02-20 00:26:05',2),
(1089,'::1','/en/user/credentials','2024-02-20 00:26:09',2),
(1090,'::1','/en/user/orders','2024-02-20 00:26:12',2),
(1091,'::1','/en/contact/feedback','2024-02-20 00:26:14',2),
(1092,'::1','/en/main/top100','2024-02-20 00:26:33',2),
(1093,'::1','/en/authors','2024-02-20 00:27:42',2),
(1094,'::1','/en/author/j-k-rowling','2024-02-20 00:27:49',2),
(1095,'::1','/en/authors','2024-02-20 00:27:53',2),
(1096,'::1','/en/author/mihail-bulgakov','2024-02-20 00:27:55',2),
(1097,'::1','/en/user/account','2024-02-20 00:28:05',2),
(1098,'::1','/en/user/logout','2024-02-20 00:28:16',2),
(1099,'::1','/en/user/login','2024-02-20 00:28:16',NULL),
(1100,'::1','/en/','2024-02-20 00:28:20',2),
(1101,'::1','/en/user/logout','2024-02-20 00:28:48',2),
(1102,'::1','/en/user/login','2024-02-20 00:28:48',NULL),
(1103,'::1','/en/','2024-02-20 00:29:29',2),
(1104,'::1','/en/','2024-02-20 00:29:51',2),
(1105,'::1','/en/user/logout','2024-02-20 00:29:56',2),
(1106,'::1','/en/user/login','2024-02-20 00:29:56',NULL),
(1107,'::1','/en/','2024-02-20 00:29:59',2),
(1108,'::1','/en/','2024-02-20 00:30:50',2),
(1109,'::1','/en/contact/feedback','2024-02-20 00:30:54',2),
(1110,'::1','/en/user/account','2024-02-20 00:31:01',2),
(1111,'::1','/en/user/orders','2024-02-20 00:31:02',2),
(1112,'::1','/en/user/credentials','2024-02-20 00:31:05',2),
(1113,'::1','/en/user/orders','2024-02-20 00:31:08',2),
(1114,'::1','/en/user/order?id=1','2024-02-20 00:31:09',2),
(1115,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-20 00:31:13',2),
(1116,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone-1','2024-02-20 00:31:18',2),
(1117,'::1','/en/user/order?id=1','2024-02-20 00:31:25',2),
(1118,'::1','/en/user/order?id=1','2024-02-20 00:32:04',2),
(1119,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 00:32:05',2),
(1120,'::1','/en/category/fiction','2024-02-20 00:32:16',2),
(1121,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 00:32:18',2),
(1122,'::1','/en/author/j-k-rowling','2024-02-20 00:32:22',2),
(1123,'::1','/en/cart/add?id=2&qty=1','2024-02-20 00:32:33',2),
(1124,'::1','/en/user/logout','2024-02-20 00:33:43',2),
(1125,'::1','/en/user/login','2024-02-20 00:33:43',NULL),
(1126,'::1','/en/user/signup','2024-02-20 00:33:45',NULL),
(1127,'::1','/en/user/login','2024-02-20 00:33:51',NULL),
(1128,'::1','/en/user/signup','2024-02-20 00:33:55',NULL),
(1129,'::1','/en/contact/feedback','2024-02-20 00:34:01',NULL),
(1130,'::1','/en/user/login','2024-02-20 00:34:10',NULL),
(1131,'::1','/en/user/login','2024-02-20 00:34:45',NULL),
(1132,'::1','/en/user/signup','2024-02-20 00:34:59',NULL),
(1133,'::1','/en/user/login','2024-02-20 00:35:05',NULL),
(1134,'::1','/en/user/login','2024-02-20 00:38:32',NULL),
(1135,'::1','/en/user/login','2024-02-20 00:38:35',NULL),
(1136,'::1','/en/user/login','2024-02-20 00:39:05',NULL),
(1137,'::1','/en/user/login','2024-02-20 00:39:08',NULL),
(1138,'::1','/en/user/login','2024-02-20 00:39:56',NULL),
(1139,'::1','/en/user/login','2024-02-20 00:40:02',NULL),
(1140,'::1','/en/user/login','2024-02-20 00:40:27',NULL),
(1141,'::1','/en/','2024-02-20 00:40:32',2),
(1142,'::1','/en/','2024-02-20 00:41:27',2),
(1143,'::1','/en/user/logout','2024-02-20 00:41:31',2),
(1144,'::1','/en/user/login','2024-02-20 00:41:31',NULL),
(1145,'::1','/en/user/login','2024-02-20 00:41:36',NULL),
(1146,'::1','/en/','2024-02-20 00:41:39',2),
(1147,'::1','/en/user/account','2024-02-20 00:41:49',2),
(1148,'::1','/en/user/credentials','2024-02-20 00:41:50',2),
(1149,'::1','/en/user/credentials','2024-02-20 00:41:55',2),
(1150,'::1','/en/user/credentials','2024-02-20 00:42:01',2),
(1151,'::1','/en/user/credentials','2024-02-20 00:42:35',2),
(1152,'::1','/en/user/credentials','2024-02-20 00:42:37',2),
(1153,'::1','/en/user/credentials','2024-02-20 00:42:46',2),
(1154,'::1','/en/user/credentials','2024-02-20 00:42:51',2),
(1155,'::1','/en/user/credentials','2024-02-20 00:42:52',2),
(1156,'::1','/en/user/credentials','2024-02-20 00:44:18',2),
(1157,'::1','/en/user/credentials','2024-02-20 00:44:21',2),
(1158,'::1','/en/user/logout','2024-02-20 00:44:32',2),
(1159,'::1','/en/user/login','2024-02-20 00:44:32',NULL),
(1160,'::1','/en/user/login','2024-02-20 00:44:34',NULL),
(1161,'::1','/en/user/login','2024-02-20 00:44:42',NULL),
(1162,'::1','/en/user/signup','2024-02-20 00:44:45',NULL),
(1163,'::1','/en/user/login','2024-02-20 00:45:12',NULL),
(1164,'::1','/en/user/signup','2024-02-20 00:46:36',NULL),
(1165,'::1','/en/user/signup','2024-02-20 00:46:50',NULL),
(1166,'::1','/en/user/login','2024-02-20 00:47:00',NULL),
(1167,'::1','/en/user/login','2024-02-20 00:47:19',NULL),
(1168,'::1','/en/user/confirm?email=kaleanych@gmail.com&hash=57974093496bfd2c90e0186af324d30b70d594c613d5a528691e24bb4712357d','2024-02-20 00:47:33',NULL),
(1169,'::1','/en/user/login','2024-02-20 00:47:33',NULL),
(1170,'::1','/en/user/login','2024-02-20 00:47:43',NULL),
(1171,'::1','/en/user/login','2024-02-20 00:47:53',NULL),
(1172,'::1','/en/','2024-02-20 00:48:02',7),
(1173,'::1','/en/','2024-02-20 00:48:24',7),
(1174,'::1','/en/','2024-02-20 00:48:26',7),
(1175,'::1','/en/','2024-02-20 00:48:28',7),
(1176,'::1','/en/contact/feedback','2024-02-20 00:48:38',7),
(1177,'::1','/en/contact/feedback','2024-02-20 00:48:51',7),
(1178,'::1','/en/authors','2024-02-20 00:49:07',7),
(1179,'::1','/en/','2024-02-20 00:49:12',7),
(1180,'::1','/en/','2024-02-20 01:15:35',2),
(1181,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 01:15:36',2),
(1182,'::1','/en/category/fantasy','2024-02-20 01:15:47',2),
(1183,'::1','/en/authors','2024-02-20 01:15:51',2),
(1184,'::1','/en/author/mihail-bulgakov','2024-02-20 01:15:53',2),
(1185,'::1','/en/wishlist/add?id=12','2024-02-20 01:16:06',2),
(1186,'::1','/en/wishlist/add?id=11','2024-02-20 01:16:14',2),
(1187,'::1','/en/','2024-02-20 01:34:32',2),
(1188,'::1','/en/author/j-k-rowling','2024-02-20 01:34:35',2),
(1189,'::1','/en/author/j-k-rowling','2024-02-20 01:43:09',2),
(1190,'::1','/en/user/logout','2024-02-20 01:48:33',2),
(1191,'::1','/en/user/login','2024-02-20 01:48:33',NULL),
(1192,'::1','/en/user/login','2024-02-20 01:48:51',NULL),
(1193,'::1','/en/user/login','2024-02-20 01:53:35',NULL),
(1194,'::1','/en/user/login','2024-02-20 01:53:49',NULL),
(1195,'::1','/en/','2024-02-20 01:54:27',6),
(1196,'::1','/en/','2024-02-20 01:54:44',6),
(1197,'::1','/en/','2024-02-20 01:54:45',6),
(1198,'::1','/en/','2024-02-20 01:54:45',6),
(1199,'::1','/en/','2024-02-20 01:54:45',6),
(1200,'::1','/en/','2024-02-20 01:54:46',6),
(1201,'::1','/en/','2024-02-20 01:58:40',6),
(1202,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 02:51:05',6),
(1203,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 02:51:11',6),
(1204,'::1','/en/','2024-02-20 02:51:13',6),
(1205,'::1','/en/author/j-k-rowling','2024-02-20 02:51:15',6),
(1206,'::1','/en/author/j-k-rowling','2024-02-20 02:51:24',6),
(1207,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 02:51:26',6),
(1208,'::1','/en/','2024-02-20 02:51:31',6),
(1209,'::1','/en/authors','2024-02-20 02:51:36',6),
(1210,'::1','/en/authors','2024-02-20 02:52:22',6),
(1211,'::1','/en/authors','2024-02-20 03:01:34',6),
(1212,'::1','/en/','2024-02-20 03:01:36',6),
(1213,'::1','/en/','2024-02-20 03:02:44',6),
(1214,'::1','/en/','2024-02-20 03:04:00',6),
(1215,'::1','/en/','2024-02-20 03:05:00',6),
(1216,'::1','/en/','2024-02-20 03:05:02',6),
(1217,'::1','/en/','2024-02-20 03:05:03',6),
(1218,'::1','/en/','2024-02-20 03:05:04',6),
(1219,'::1','/en/','2024-02-20 03:05:25',6),
(1220,'::1','/en/','2024-02-20 03:05:27',6),
(1221,'::1','/en/author/jules-verne','2024-02-20 03:05:36',6),
(1222,'::1','/en/authors','2024-02-20 03:05:46',6),
(1223,'::1','/en/author/j-k-rowling','2024-02-20 03:05:47',6),
(1224,'::1','/en/','2024-02-20 03:05:50',6),
(1225,'::1','/en/','2024-02-20 03:06:59',6),
(1226,'::1','/en/','2024-02-20 03:08:48',6),
(1227,'::1','/en/','2024-02-20 03:08:51',6),
(1228,'::1','/en/','2024-02-20 03:08:55',6),
(1229,'::1','/en/author/mihail-bulgakov','2024-02-20 03:09:11',6),
(1230,'::1','/en/item/the-master-and-margarita','2024-02-20 03:09:16',6),
(1231,'::1','/en/category/adventure','2024-02-20 03:09:25',6),
(1232,'::1','/en/item/the-mysterious-island','2024-02-20 03:09:29',6),
(1233,'::1','/en/authors','2024-02-20 03:09:39',6),
(1234,'::1','/en/authors?page=2','2024-02-20 03:09:47',6),
(1235,'::1','/en/search?s=verne','2024-02-20 03:09:54',6),
(1236,'::1','/en/author/jules-verne','2024-02-20 03:10:01',6),
(1237,'::1','/en/author/jules-verne','2024-02-20 03:24:07',NULL),
(1238,'::1','/en/user/login','2024-02-20 03:24:09',NULL),
(1239,'::1','/en/','2024-02-20 03:24:19',8),
(1240,'::1','/en/user/account','2024-02-20 03:24:24',8),
(1241,'::1','/en/wishlist','2024-02-20 03:24:28',8),
(1242,'::1','/en/wishlist','2024-02-20 03:24:49',8),
(1243,'::1','/en/wishlist','2024-02-20 03:24:53',8),
(1244,'::1','/en/cart/show','2024-02-20 03:25:01',8),
(1245,'::1','/en/wishlist','2024-02-20 03:27:05',NULL),
(1246,'::1','/en/cart/show','2024-02-20 03:27:08',NULL),
(1247,'::1','/en/','2024-02-20 03:27:37',NULL),
(1248,'::1','/en/cart/show','2024-02-20 03:28:42',NULL),
(1249,'::1','/en/','2024-02-20 03:29:09',NULL),
(1250,'::1','/en/authors','2024-02-20 03:29:10',NULL),
(1251,'::1','/en/author/mihail-bulgakov','2024-02-20 03:35:59',2),
(1252,'::1','/en/author/mihail-bulgakov','2024-02-20 03:37:37',2),
(1253,'::1','/en/category/fantasy','2024-02-20 03:37:45',2),
(1254,'::1','/en/search?s=b','2024-02-20 03:37:56',2),
(1255,'::1','/en/authors','2024-02-20 03:38:03',2),
(1256,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:38:09',2),
(1257,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:16',2),
(1258,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:17',2),
(1259,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:43',2),
(1260,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:44',2),
(1261,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:45',2),
(1262,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:45',2),
(1263,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:45',2),
(1264,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:39:55',2),
(1265,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:40:01',2),
(1266,'::1','/en/authors?sort=count_books_asc','2024-02-20 03:42:06',2),
(1267,'::1','/en/authors?sort=count_books_asc&page=2','2024-02-20 03:42:16',2),
(1268,'::1','/en/','2024-02-20 03:42:17',2),
(1269,'::1','/en/author/jules-verne','2024-02-20 03:42:21',2),
(1270,'::1','/en/authors','2024-02-20 03:42:24',2),
(1271,'::1','/en/author/j-k-rowling','2024-02-20 03:42:27',2),
(1272,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 03:42:30',2),
(1273,'::1','/en/main/top100','2024-02-20 03:42:36',2),
(1274,'::1','/en/item/harry-potter-and-the-sorcerer-s-stone','2024-02-20 03:43:15',2),
(1275,'::1','/en/','2024-02-20 03:43:21',2),
(1276,'::1','/en/authors','2024-02-20 03:43:23',2),
(1277,'::1','/en/category/martial-arts','2024-02-20 03:43:29',2),
(1278,'::1','/en/category/adventure','2024-02-20 03:43:33',2),
(1279,'::1','/en/category/thriller','2024-02-20 03:43:37',2),
(1280,'::1','/en/category/fantasy','2024-02-20 03:43:41',2),
(1281,'::1','/en/authors','2024-02-20 03:43:45',2),
(1282,'::1','/en/','2024-02-20 03:43:47',2),
(1283,'::1','/en/cart/show','2024-02-20 03:44:01',2),
(1284,'::1','/language/change?lang=ro','2024-02-20 03:44:07',2),
(1285,'::1','/ro','2024-02-20 03:44:07',2),
(1286,'::1','/language/change?lang=en','2024-02-20 03:44:09',2),
(1287,'::1','/','2024-02-20 03:44:09',2),
(1288,'::1','/','2024-02-20 03:44:09',2),
(1289,'::1','/','2024-02-20 03:44:10',2),
(1290,'::1','/','2024-02-20 03:44:12',2),
(1291,'::1','/ro','2024-02-20 03:44:16',2),
(1292,'::1','/language/change?lang=en','2024-02-20 03:44:19',2),
(1293,'::1','/','2024-02-20 03:44:19',2),
(1294,'::1','/','2024-02-20 03:44:19',2),
(1295,'::1','/','2024-02-20 03:44:19',2),
(1296,'::1','/','2024-02-20 03:44:21',2),
(1297,'::1','/','2024-02-20 03:44:22',2),
(1298,'::1','/','2024-02-20 03:44:23',2),
(1299,'::1','/','2024-02-20 03:44:25',2),
(1300,'::1','/language/change?lang=ro','2024-02-20 03:44:29',2),
(1301,'::1','/ro/','2024-02-20 03:44:29',2),
(1302,'::1','/language/change?lang=en','2024-02-20 03:44:32',2),
(1303,'::1','/','2024-02-20 03:44:32',2),
(1304,'::1','/','2024-02-20 03:44:32',2),
(1305,'::1','/','2024-02-20 03:44:34',2),
(1306,'::1','/','2024-02-20 03:44:34',2),
(1307,'::1','/','2024-02-20 03:44:35',2),
(1308,'::1','/','2024-02-20 03:44:35',2),
(1309,'::1','/','2024-02-20 03:44:37',2),
(1310,'::1','/','2024-02-20 03:44:38',2),
(1311,'::1','/','2024-02-20 03:44:39',2),
(1312,'::1','/en/','2024-02-20 03:44:42',2),
(1313,'::1','/en/','2024-02-20 03:44:44',2),
(1314,'::1','/language/change?lang=ro','2024-02-20 03:44:52',2),
(1315,'::1','/ro','2024-02-20 03:44:52',2),
(1316,'::1','/language/change?lang=en','2024-02-20 03:45:16',2),
(1317,'::1','/','2024-02-20 03:45:16',2),
(1318,'::1','/','2024-02-20 03:45:16',2),
(1319,'::1','/','2024-02-20 03:45:17',2),
(1320,'::1','/','2024-02-20 03:45:18',2),
(1321,'::1','/ro','2024-02-20 03:45:19',2),
(1322,'::1','/language/change?lang=en','2024-02-20 03:45:22',2),
(1323,'::1','/','2024-02-20 03:45:22',2),
(1324,'::1','/','2024-02-20 03:45:24',2),
(1325,'::1','/','2024-02-20 03:45:26',2),
(1326,'::1','/','2024-02-20 03:45:27',2),
(1327,'::1','/','2024-02-20 03:48:29',2),
(1328,'::1','/language/change?lang=ro','2024-02-20 03:48:32',2),
(1329,'::1','/language/change?lang=en','2024-02-20 03:48:37',2),
(1330,'::1','/language/change?lang=en','2024-02-20 03:49:01',2),
(1331,'::1','/language/change?lang=en','2024-02-20 03:49:51',2),
(1332,'::1','/language/change?lang=en','2024-02-20 03:50:13',2),
(1333,'::1','/language/change?lang=en','2024-02-20 03:50:25',2),
(1334,'::1','/','2024-02-20 03:50:25',2),
(1335,'::1','/language/change?lang=ro','2024-02-20 03:50:28',2),
(1336,'::1','/ro/','2024-02-20 03:50:28',2),
(1337,'::1','/language/change?lang=en','2024-02-20 03:50:31',2),
(1338,'::1','/','2024-02-20 03:50:31',2),
(1339,'::1','/','2024-02-20 03:50:32',2),
(1340,'::1','/','2024-02-20 03:50:35',2),
(1341,'::1','/','2024-02-20 03:50:35',2),
(1342,'::1','/','2024-02-20 03:50:35',2),
(1343,'::1','/','2024-02-20 03:50:37',2),
(1344,'::1','/language/change?lang=ro','2024-02-20 03:50:41',2),
(1345,'::1','/language/change?lang=en','2024-02-20 03:50:43',2),
(1346,'::1','/language/change?lang=en','2024-02-20 03:51:29',2),
(1347,'::1','/language/change?lang=en','2024-02-20 03:51:41',2),
(1348,'::1','/en/','2024-02-20 03:51:41',2),
(1349,'::1','/language/change?lang=ro','2024-02-20 03:51:45',2),
(1350,'::1','/ro','2024-02-20 03:51:45',2),
(1351,'::1','/language/change?lang=en','2024-02-20 03:51:48',2),
(1352,'::1','/','2024-02-20 03:51:48',2),
(1353,'::1','/','2024-02-20 03:51:49',2),
(1354,'::1','/','2024-02-20 03:51:55',2),
(1355,'::1','/','2024-02-20 03:51:58',2),
(1356,'::1','/','2024-02-20 03:52:00',2),
(1357,'::1','/','2024-02-20 03:52:01',2),
(1358,'::1','/language/change?lang=ro','2024-02-20 03:52:03',2),
(1359,'::1','/ro/','2024-02-20 03:52:03',2),
(1360,'::1','/language/change?lang=en','2024-02-20 03:52:07',2),
(1361,'::1','/','2024-02-20 03:52:07',2),
(1362,'::1','/','2024-02-20 03:52:07',2),
(1363,'::1','/','2024-02-20 03:52:08',2),
(1364,'::1','/','2024-02-20 03:52:10',2),
(1365,'::1','/en/','2024-02-20 03:52:15',2),
(1366,'::1','/en/','2024-02-20 03:52:16',2),
(1367,'::1','/en/','2024-02-20 03:52:17',2),
(1368,'::1','/en/','2024-02-20 03:52:20',2),
(1369,'::1','/en/','2024-02-20 03:52:22',2),
(1370,'::1','/en/authors','2024-02-20 03:53:11',2),
(1371,'::1','/language/change?lang=ro','2024-02-20 03:53:14',2),
(1372,'::1','/ro/authors','2024-02-20 03:53:14',2),
(1373,'::1','/language/change?lang=en','2024-02-20 03:53:17',2),
(1374,'::1','/authors','2024-02-20 03:53:17',2),
(1375,'::1','/authors','2024-02-20 03:53:21',2),
(1376,'::1','/authors','2024-02-20 03:53:44',2),
(1377,'::1','/language/change?lang=ro','2024-02-20 03:53:47',2),
(1378,'::1','/ro/authors','2024-02-20 03:53:47',2),
(1379,'::1','/language/change?lang=en','2024-02-20 03:53:50',2),
(1380,'::1','/en/authors','2024-02-20 03:53:50',2),
(1381,'::1','/en/','2024-02-20 03:53:52',2),
(1382,'::1','/language/change?lang=ro','2024-02-20 03:53:55',2),
(1383,'::1','/ro','2024-02-20 03:53:55',2),
(1384,'::1','/language/change?lang=en','2024-02-20 03:53:58',2),
(1385,'::1','/en','2024-02-20 03:53:58',2),
(1386,'::1','/','2024-02-20 03:54:01',2),
(1387,'::1','/en/','2024-02-20 03:54:04',2),
(1388,'::1','/en/','2024-02-20 03:54:23',2),
(1389,'::1','/en/wishlist','2024-02-20 04:01:42',2),
(1390,'::1','/en/cart/add?id=11&qty=1','2024-02-20 04:01:46',2),
(1391,'::1','/en/cart/add?id=1&qty=1','2024-02-20 04:01:50',2),
(1392,'::1','/en/wishlist','2024-02-20 04:01:52',2),
(1393,'::1','/en/cart/show','2024-02-20 04:01:54',2),
(1394,'::1','/en/wishlist','2024-02-20 04:02:01',2),
(1395,'::1','/en/wishlist','2024-02-20 04:02:03',2),
(1396,'::1','/en/user/logout','2024-02-20 04:02:04',2),
(1397,'::1','/en/user/login','2024-02-20 04:02:04',NULL),
(1398,'::1','/en/user/login','2024-02-20 04:02:07',NULL),
(1399,'::1','/en/wishlist','2024-02-20 04:02:10',NULL),
(1400,'::1','/en/cart/show','2024-02-20 04:02:14',NULL),
(1401,'::1','/en/wishlist','2024-02-20 04:02:17',NULL),
(1402,'::1','/en/wishlist','2024-02-20 04:02:19',NULL),
(1403,'::1','/en/wishlist','2024-02-20 04:02:20',NULL),
(1404,'::1','/en/wishlist','2024-02-20 04:02:21',NULL),
(1405,'::1','/en/wishlist','2024-02-20 04:02:22',NULL),
(1406,'::1','/en/wishlist','2024-02-20 04:02:22',NULL),
(1407,'::1','/en/wishlist','2024-02-20 04:02:22',NULL),
(1408,'::1','/en/wishlist','2024-02-20 04:02:22',NULL),
(1409,'::1','/en/wishlist','2024-02-20 04:02:22',NULL),
(1410,'::1','/en/wishlist','2024-02-20 04:02:23',NULL),
(1411,'::1','/en/','2024-02-20 04:02:24',NULL),
(1412,'::1','/en/cart/show','2024-02-20 04:02:26',NULL),
(1413,'::1','/en/','2024-02-20 04:02:30',NULL),
(1414,'::1','/en/user/login','2024-02-20 04:05:20',NULL),
(1415,'::1','/en/','2024-02-20 04:05:24',2),
(1416,'::1','/en/cart/show','2024-02-20 04:05:26',2),
(1417,'::1','/en/cart/add?id=14&qty=1','2024-02-20 04:05:31',2),
(1418,'::1','/en/wishlist/add?id=14','2024-02-20 04:05:33',2),
(1419,'::1','/en/','2024-02-20 04:05:36',2),
(1420,'::1','/en/','2024-02-20 04:05:38',2),
(1421,'::1','/en/wishlist','2024-02-20 04:05:40',2),
(1422,'::1','/en/cart/show','2024-02-20 04:05:41',2),
(1423,'::1','/en/user/logout','2024-02-20 04:05:45',2),
(1424,'::1','/en/user/login','2024-02-20 04:05:45',NULL),
(1425,'::1','/en/wishlist','2024-02-20 04:05:47',NULL),
(1426,'::1','/en/cart/show','2024-02-20 04:05:49',NULL),
(1427,'::1','/en/page/contact','2024-02-20 04:10:56',NULL),
(1428,'::1','/en/contact/feedback','2024-02-20 04:11:00',NULL),
(1429,'::1','/en/contact/feedback','2024-02-20 04:15:36',2),
(1430,'::1','/en/user/logout','2024-02-20 04:15:39',2),
(1431,'::1','/en/user/login','2024-02-20 04:15:39',NULL),
(1432,'::1','/en/user/login','2024-02-20 04:15:48',NULL),
(1433,'::1','/en/user/login','2024-02-20 04:15:58',NULL),
(1434,'::1','/en/user/login','2024-02-20 04:16:05',NULL),
(1435,'::1','/en/user/login','2024-02-20 04:16:13',NULL),
(1436,'::1','/en/user/login','2024-02-20 04:16:20',NULL),
(1437,'::1','/en/user/login','2024-02-20 04:16:33',NULL),
(1438,'::1','/en/user/login','2024-02-20 04:16:39',NULL),
(1439,'::1','/en/user/login','2024-02-20 04:16:53',NULL),
(1440,'::1','/en/user/login','2024-02-20 04:17:10',NULL),
(1441,'::1','/en/user/login','2024-02-20 04:17:25',NULL),
(1442,'::1','/en/user/login','2024-02-20 04:17:45',NULL),
(1443,'::1','/en/user/login','2024-02-20 04:17:54',NULL),
(1444,'::1','/en/','2024-02-20 04:17:58',2),
(1445,'::1','/en/','2024-02-20 04:18:15',2),
(1446,'::1','/en/','2024-02-20 04:18:25',2),
(1447,'::1','/en/user/logout','2024-02-20 04:18:29',2),
(1448,'::1','/en/user/login','2024-02-20 04:18:29',NULL),
(1449,'::1','/en/user/login','2024-02-20 04:18:33',NULL),
(1450,'::1','/en/','2024-02-20 04:18:35',2),
(1451,'::1','/en/user/account','2024-02-20 04:18:37',2),
(1452,'::1','/en/user/account','2024-02-20 04:49:48',2),
(1453,'::1','/en/user/account','2024-02-20 04:50:58',2),
(1454,'::1','/en/contact/feedback','2024-02-20 04:50:59',2),
(1455,'::1','/en/contact/feedback','2024-02-20 04:53:25',2),
(1456,'::1','/en/contact/feedback','2024-02-20 04:53:45',2),
(1457,'::1','/en/contact/feedback','2024-02-20 04:53:56',2),
(1458,'::1','/en/contact/feedback','2024-02-20 04:54:04',2),
(1459,'::1','/en/contact/feedback','2024-02-20 05:00:00',2),
(1460,'::1','/en/contact/feedback','2024-02-20 05:00:42',2),
(1461,'::1','/en/contact/feedback','2024-02-20 05:01:20',2),
(1462,'::1','/en/contact/feedback','2024-02-20 05:02:12',2),
(1463,'::1','/en/contact/feedback','2024-02-20 05:02:35',2),
(1464,'::1','/en/contact/feedback','2024-02-20 05:05:57',2),
(1465,'::1','/en/contact/feedback','2024-02-20 05:06:20',2),
(1466,'::1','/en/contact/feedback','2024-02-20 05:06:31',2),
(1467,'::1','/en/contact/feedback','2024-02-20 05:07:55',2),
(1468,'::1','/en/contact/feedback','2024-02-20 05:08:09',2),
(1469,'::1','/en/contact/feedback','2024-02-20 05:08:10',2),
(1470,'::1','/en/wishlist','2024-02-20 05:08:20',2),
(1471,'::1','/en/search?s=bul','2024-02-20 05:08:24',2),
(1472,'::1','/en/item/the-master-and-margarita','2024-02-20 05:08:26',2),
(1473,'::1','/en/author/mihail-bulgakov','2024-02-20 05:08:30',2),
(1474,'::1','/en/author/mihail-bulgakov','2024-02-20 05:24:46',2),
(1475,'::1','/en/author/mihail-bulgakov','2024-02-20 05:27:33',2),
(1476,'::1','/en/author/mihail-bulgakov','2024-02-20 05:28:05',2),
(1477,'::1','/en/author/mihail-bulgakov','2024-02-20 05:29:24',2),
(1478,'::1','/en/author/mihail-bulgakov','2024-02-20 05:29:36',2),
(1479,'::1','/en/author/mihail-bulgakov','2024-02-20 05:29:38',2),
(1480,'::1','/en/author/mihail-bulgakov','2024-02-20 05:30:06',2),
(1481,'::1','/en/author/mihail-bulgakov','2024-02-20 05:30:33',2),
(1482,'::1','/en/author/mihail-bulgakov','2024-02-20 05:30:57',2),
(1483,'::1','/en/author/mihail-bulgakov','2024-02-20 05:31:38',2),
(1484,'::1','/en/author/mihail-bulgakov','2024-02-20 05:32:24',2),
(1485,'::1','/en/author/mihail-bulgakov','2024-02-20 05:32:40',2),
(1486,'::1','/en/author/mihail-bulgakov','2024-02-20 05:33:07',2),
(1487,'::1','/en/author/mihail-bulgakov','2024-02-20 05:33:16',2),
(1488,'::1','/en/author/mihail-bulgakov','2024-02-20 05:33:35',2),
(1489,'::1','/en/author/mihail-bulgakov','2024-02-20 05:33:39',2),
(1490,'::1','/en/author/mihail-bulgakov','2024-02-20 05:33:57',2),
(1491,'::1','/en/author/mihail-bulgakov','2024-02-20 05:34:19',2),
(1492,'::1','/en/author/mihail-bulgakov','2024-02-20 05:34:29',2),
(1493,'::1','/en/author/mihail-bulgakov','2024-02-20 05:34:39',2),
(1494,'::1','/en/author/mihail-bulgakov','2024-02-20 05:34:43',2),
(1495,'::1','/en/author/mihail-bulgakov','2024-02-20 05:34:53',2),
(1496,'::1','/en/author/mihail-bulgakov','2024-02-20 05:35:13',2),
(1497,'::1','/en/author/mihail-bulgakov','2024-02-20 05:35:23',2),
(1498,'::1','/en/author/mihail-bulgakov','2024-02-20 05:35:36',2),
(1499,'::1','/en/author/mihail-bulgakov','2024-02-20 05:35:48',2),
(1500,'::1','/en/author/mihail-bulgakov','2024-02-20 05:35:59',2),
(1501,'::1','/en/item/the-master-and-margarita','2024-02-20 05:36:02',2),
(1502,'127.0.0.1','/en/item/the-master-and-margarita','2024-01-09 22:00:00',NULL),
(1503,'::1','/en/item/the-master-and-margarita','2024-02-20 05:37:00',2),
(1504,'::1','/en/item/the-master-and-margarita','2024-02-20 05:37:20',2),
(1505,'::1','/en/','2024-02-20 05:38:17',2),
(1506,'::1','/en/','2024-02-20 05:44:31',2);
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_descriptions`
--

DROP TABLE IF EXISTS `author_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_descriptions` (
  `author_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `bio` text DEFAULT NULL,
  PRIMARY KEY (`author_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `author_descriptions_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `author_descriptions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_descriptions`
--

LOCK TABLES `author_descriptions` WRITE;
/*!40000 ALTER TABLE `author_descriptions` DISABLE KEYS */;
INSERT INTO `author_descriptions` VALUES
(1,1,'J.K. Rowling','<p>J.K. Rowling, is a British author and screenwriter best known for her seven-book <i>Harry Potter </i>children\'s book series. The series has sold more than 500 million copies and was adapted into a blockbuster film franchise.</p>'),
(1,2,'J.K. Rowling','<p>J.K. Rowling, is a British author and screenwriter best known for her seven-book <i>Harry Potter </i>children\'s book series. The series has sold more than 500 million copies and was adapted into a blockbuster film franchise.</p>'),
(2,1,'J.R.R. Tolkien',''),
(2,2,'J.R.R. Tolkien','<p>123</p>'),
(3,1,'George Orwell',''),
(3,2,'George Orwell',''),
(4,1,'Mihail Bulgakov','<p><strong>Mikhail Bulgakov</strong> (born May 15 [May 3, Old Style], 1891, <a href=\"https://www.britannica.com/place/Kyiv\">Kiev</a>, <a href=\"https://www.britannica.com/place/Ukraine\">Ukraine</a>, Russian Empire—died March 10, 1940, <a href=\"https://www.britannica.com/place/Moscow\">Moscow</a>, <a href=\"https://www.britannica.com/place/Russia\">Russia</a>, U.S.S.R.) was a Soviet playwright, novelist, and short-story writer best known for his humour and penetrating <a href=\"https://www.britannica.com/art/satire\">satire</a>.</p><p><br>&nbsp;</p>'),
(4,2,'Mihail Bulgakov','<p><strong>Mikhail Bulgakov</strong> (born May 15 [May 3, Old Style], 1891, <a href=\"https://www.britannica.com/place/Kyiv\">Kiev</a>, <a href=\"https://www.britannica.com/place/Ukraine\">Ukraine</a>, Russian Empire—died March 10, 1940, <a href=\"https://www.britannica.com/place/Moscow\">Moscow</a>, <a href=\"https://www.britannica.com/place/Russia\">Russia</a>, U.S.S.R.) was a Soviet playwright, novelist, and short-story writer best known for his humour and penetrating <a href=\"https://www.britannica.com/art/satire\">satire</a>.</p><p><br>&nbsp;</p>'),
(5,1,'Jaroslav Hasek',''),
(5,2,'Jaroslav Hasek',''),
(6,1,'Arthur Conan Doyle',''),
(6,2,'Arthur Conan Doyle',''),
(7,1,'Jules Verne',''),
(7,2,'Jules Verne',''),
(8,1,'John Little',''),
(8,2,'John Little',''),
(9,1,'Bruce Lee',''),
(9,2,'Bruce Lee','');
/*!40000 ALTER TABLE `author_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES
(1,'J.K. Rowling','/public/uploads/images/Authors/jk_rowling.jpg','j-k-rowling',1,1),
(2,'J.R.R. Tolkien','uploads/no_image.jpg','j-r-r-tolkien',0,1),
(3,'George Orwell',NULL,'george-orwell',0,1),
(4,'Mihail Bulgakov','/public/uploads/images/Authors/Mikhail-Bulgakov-450x300.jpg','mihail-bulgakov',1,1),
(5,'Jaroslav Hasek',NULL,'jaroslav-hasek',0,1),
(6,'Arthur Conan Doyle',NULL,'arthur-conan-doyle',0,1),
(7,'Jules Verne','/public/uploads/images/Authors/jv.jpeg','jules-verne',1,1),
(8,'John Little',NULL,'john-little',0,1),
(9,'Bruce Lee',NULL,'bruce-lee',0,1);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_slug` (`slug`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,16,'fantasy'),
(2,16,'science-fiction'),
(3,16,'dystopian'),
(4,18,'adventure'),
(5,18,'romance'),
(6,18,'detective'),
(7,15,'horror'),
(8,15,'thriller'),
(9,16,'historical-fiction'),
(10,19,'biography'),
(11,NULL,'drama'),
(12,13,'satire'),
(13,NULL,'comedy'),
(14,16,'supernatural'),
(15,NULL,'mystery'),
(16,NULL,'fiction'),
(17,19,'martial-arts'),
(18,NULL,'non-fiction'),
(19,NULL,'lifestyle');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_descriptions`
--

DROP TABLE IF EXISTS `category_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_descriptions` (
  `category_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `category_descriptions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_descriptions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_descriptions`
--

LOCK TABLES `category_descriptions` WRITE;
/*!40000 ALTER TABLE `category_descriptions` DISABLE KEYS */;
INSERT INTO `category_descriptions` VALUES
(1,1,'Fantasy','','',''),
(1,2,'Fantasy','','',''),
(2,1,'Science Fiction','','',''),
(2,2,'Science Fiction','','',''),
(3,1,'Dystopian','','',''),
(3,2,'Dystopian','','',''),
(4,1,'Adventure','','',''),
(4,2,'Adventure','','',''),
(5,1,'Romance','','',''),
(5,2,'Romance','','',''),
(6,1,'Detective','','',''),
(6,2,'Detective','','',''),
(7,1,'Horror','','',''),
(7,2,'Horror','','',''),
(8,1,'Thriller','','',''),
(8,2,'Thriller','','',''),
(9,1,'Historical Fiction','','',''),
(9,2,'Historical Fiction','','',''),
(10,1,'Biography','','',''),
(10,2,'Biography','','',''),
(11,1,'Drama',NULL,NULL,NULL),
(11,2,'Drama',NULL,NULL,NULL),
(12,1,'Satire','','',''),
(12,2,'Satire','','',''),
(13,1,'Comedy','','',''),
(13,2,'Comedy','','',''),
(14,1,'Supernatural','','',''),
(14,2,'Supernatural','','',''),
(15,1,'Mystery',NULL,NULL,NULL),
(15,2,'Mystery',NULL,NULL,NULL),
(16,1,'Fiction',NULL,NULL,NULL),
(16,2,'Fiction',NULL,NULL,NULL),
(17,1,'Martial Arts','','',''),
(17,2,'Martial Arts','','',''),
(18,1,'Non-Fiction','','',''),
(18,2,'Non-Fictiune','','',''),
(19,1,'Lifestyle','','',''),
(19,2,'Lifestyle','','','');
/*!40000 ALTER TABLE `category_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `working_hours` text DEFAULT NULL,
  `info` text DEFAULT NULL,
  `contact_info` text DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES
(1,1,'kaleanych@gmail.com','Strada Islaz, nr. 26',NULL,NULL,'SOME CONTACT INFORMATION','0733671713',NULL,'https://www.facebook.com/','https://www.instagram.com/','1234567','https://www.youtube.com/');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES
(1,'kaleanych@gmail.com','SUBJECT','MESSAGE OFF',2,'2024-02-18 12:11:44'),
(2,'kalean.bl@gmail.com','SOME_TEXT','SOME_MESSAGE',5,'2024-02-18 12:47:49'),
(3,'kalean.bl@gmail.com','TEXT','TEXT    TEXT',5,'2024-02-18 12:48:17'),
(4,'kalean.bl@gmail.com','You have to hurry up','Less time remaining to finish the project',5,'2024-02-18 12:57:13'),
(5,'admin@fmi.daw','123','asdasdaasdasda',2,'2024-02-18 21:09:55'),
(6,'admin@fmi.daw','asd','asdasda dasdasdas',2,'2024-02-18 21:21:14'),
(7,'admin@fmi.daw','s','some text sasa',2,'2024-02-18 22:16:46'),
(8,'kaleanych@gmail.com','MY SUBJECT','MY MESSAGE',7,'2024-02-20 00:48:49');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_descriptions`
--

DROP TABLE IF EXISTS `download_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_descriptions` (
  `download_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `download_descriptions_ibfk_1` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`),
  CONSTRAINT `download_descriptions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_descriptions`
--

LOCK TABLES `download_descriptions` WRITE;
/*!40000 ALTER TABLE `download_descriptions` DISABLE KEYS */;
INSERT INTO `download_descriptions` VALUES
(1,1,'book1'),
(1,2,'book2');
/*!40000 ALTER TABLE `download_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` VALUES
(1,'C2_IerChomsky_23.pdf65d3ec4d88ff5','C2_IerChomsky_23.pdf');
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_descriptions`
--

DROP TABLE IF EXISTS `item_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_descriptions` (
  `item_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `item_descriptions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `item_descriptions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_descriptions`
--

LOCK TABLES `item_descriptions` WRITE;
/*!40000 ALTER TABLE `item_descriptions` DISABLE KEYS */;
INSERT INTO `item_descriptions` VALUES
(1,1,'Harry Potter and the Sorcerer\'s Stone','','EX','',''),
(1,2,'Harry Potter and the Sorcerer\'s Stone','','EX','',''),
(2,1,'Harry Potter and the Prisoner of Azkaban','','EXCERPT','',''),
(2,2,'Harry Potter and the Prisoner of Azkaban','','EXCERPT','',''),
(3,1,'The Hobbit','','H EXCERPT','',''),
(3,2,'The Hobbit','','H EXCERPT','',''),
(4,1,'Harry Potter and the Deathly Hallows','','EXCERPT','',''),
(4,2,'Harry Potter and the Deathly Hallows','','EXCERPT','',''),
(5,1,'1984',NULL,NULL,NULL,NULL),
(5,2,'1984',NULL,NULL,NULL,NULL),
(6,1,'Animal Farm',NULL,NULL,NULL,NULL),
(6,2,'Animal Farm',NULL,NULL,NULL,NULL),
(7,1,'Harry Potter and the Chamber of Secrets',NULL,NULL,NULL,NULL),
(7,2,'Harry Potter and the Chamber of Secrets',NULL,NULL,NULL,NULL),
(8,1,'Harry Potter and the Goblet of Fire',NULL,NULL,NULL,NULL),
(8,2,'Harry Potter and the Goblet of Fire',NULL,NULL,NULL,NULL),
(9,1,'The Fate of the Good Soldier Švejk during the World War',NULL,NULL,NULL,NULL),
(9,2,'The Fate of the Good Soldier Švejk during the World War',NULL,NULL,NULL,NULL),
(10,1,'The Lord of the Rings',NULL,NULL,NULL,NULL),
(10,2,'The Lord of the Rings',NULL,NULL,NULL,NULL),
(11,1,'The Master and Margarita','','EXCERPT','',''),
(11,2,'The Master and Margarita','','EXCERPT','',''),
(12,1,'A Young Doctor\'s Notebook',NULL,NULL,NULL,NULL),
(12,2,'A Young Doctor\'s Notebook',NULL,NULL,NULL,NULL),
(13,1,'Heart of a Dog',NULL,NULL,NULL,NULL),
(13,2,'Heart of a Dog',NULL,NULL,NULL,NULL),
(14,1,'The Mysterious Island','','EXCERPT','',''),
(14,2,'The Mysterious Island','','EXCERPT','',''),
(15,1,'Twenty Thousand Leagues Under the Seas',NULL,NULL,NULL,NULL),
(15,2,'Twenty Thousand Leagues Under the Seas',NULL,NULL,NULL,NULL),
(16,1,'The Lost World',NULL,NULL,NULL,NULL),
(16,2,'The Lost World',NULL,NULL,NULL,NULL),
(17,1,'The Adventures of Sherlock Holmes',NULL,NULL,NULL,NULL),
(17,2,'The Adventures of Sherlock Holmes',NULL,NULL,NULL,NULL),
(18,1,'Bruce Lee Jeet Kune Do',NULL,NULL,NULL,NULL),
(18,2,'Bruce Lee Jeet Kune Do',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_downloads`
--

DROP TABLE IF EXISTS `item_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_downloads` (
  `item_id` int(10) unsigned NOT NULL,
  `download_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`,`download_id`),
  KEY `download_id` (`download_id`),
  CONSTRAINT `item_downloads_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `item_downloads_ibfk_2` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_downloads`
--

LOCK TABLES `item_downloads` WRITE;
/*!40000 ALTER TABLE `item_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_gallery`
--

DROP TABLE IF EXISTS `item_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `item_gallery_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_gallery`
--

LOCK TABLES `item_gallery` WRITE;
/*!40000 ALTER TABLE `item_gallery` DISABLE KEYS */;
INSERT INTO `item_gallery` VALUES
(4,1,'/public/uploads/images/Covers/51xJbFMRsxL__SL500_.jpg');
/*!40000 ALTER TABLE `item_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` enum('book','article','CD','other') DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `old_price` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hit` tinyint(4) NOT NULL DEFAULT 0,
  `img` varchar(255) NOT NULL DEFAULT 'uploads/no_image.jpg',
  `is_download` tinyint(4) NOT NULL DEFAULT 0,
  `qty` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_slug` (`slug`),
  KEY `author_id` (`author_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `items_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES
(1,1,1,NULL,'harry-potter-and-the-sorcerer-s-stone','book',10,0,1,1,'/public/uploads/images/Covers/HP_1_CVR_LRGB__1_.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(2,1,NULL,NULL,'harry-potter-and-the-prisoner-of-azkaban','book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(3,2,1,NULL,'the-hobbit','book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(4,1,NULL,NULL,'harry-potter-and-the-deathly-hallows','book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(5,3,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(6,3,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(7,1,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(8,1,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(9,5,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(10,2,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(11,4,14,NULL,'the-master-and-margarita','book',0,0,1,1,'/public/uploads/images/Covers/mm.png',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(12,4,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(13,4,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(14,7,4,NULL,'the-mysterious-island','book',0,0,1,1,'/public/uploads/images/Covers/mi.jpeg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(15,7,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(16,6,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(17,6,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL),
(18,9,NULL,NULL,NULL,'book',0,0,1,0,'uploads/no_image.jpg',0,0,'2024-02-18 16:26:22',NULL,'2024-02-18 16:26:22',NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `title` varchar(20) NOT NULL,
  `base` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES
(1,'en','English',1),
(2,'ro','Romana',0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_downloads`
--

DROP TABLE IF EXISTS `order_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_downloads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `download_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  KEY `download_id` (`download_id`),
  CONSTRAINT `order_downloads_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_downloads_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `order_downloads_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `order_downloads_ibfk_4` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_downloads`
--

LOCK TABLES `order_downloads` WRITE;
/*!40000 ALTER TABLE `order_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `borrow_date` timestamp NULL DEFAULT NULL,
  `return_date` timestamp NULL DEFAULT NULL,
  `returned` tinyint(1) DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sum` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES
(1,1,1,NULL,NULL,NULL,NULL,'Harry Potter and the Sorcerer\'s Stone','harry-potter-and-the-sorcerer-s-stone',1,0,0);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` double DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(1,2,1,'','2024-02-19 19:30:30','2024-02-20 02:15:55',0,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_descriptions`
--

DROP TABLE IF EXISTS `page_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_descriptions` (
  `page_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`page_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `page_descriptions_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  CONSTRAINT `page_descriptions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_descriptions`
--

LOCK TABLES `page_descriptions` WRITE;
/*!40000 ALTER TABLE `page_descriptions` DISABLE KEYS */;
INSERT INTO `page_descriptions` VALUES
(2,1,'About us','<p>CONTENT</p>','',''),
(2,2,'Despre noi','<p>CONTENT</p>','',''),
(3,1,'Contact','<p>CONTACT MORE</p>','',''),
(3,2,'Contact','<p>CONTACT</p>','','');
/*!40000 ALTER TABLE `page_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(2,'about-us'),
(3,'contact');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES
(6,'/public/uploads/images/Slider/p.jpeg'),
(7,'/public/uploads/images/Slider/p3.png');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role` enum('user','librarian','admin') NOT NULL DEFAULT 'user',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(2,'admin@fmi.daw','$2y$10$RUAoP3tmFqfNmSJZyQHIeef7SZxgVCdvwR0LvdSIjjptae1R3yYEu','admin','admin','123456','admin',1,NULL),
(5,'kalean.bl@gmail.com','$2y$10$Ps/T9TBWhgjz6gjGdnFT6eLuS8XFaeCEk9x/LHcUqOpv.qvkkpPWW','Kolea Plesco','Strada Islaz, nr. 26',NULL,'user',1,'cbe991e9de2a032e32a798313823d0722ca76d1364c33b43166104235f586f32'),
(6,'admin2@fmi.daw','$2y$10$ODSpYP.R4lYxoBfiSHHCm.sDD50B/Uuh.Pfbuf3S8y8/omELIgioe','admin2','123','123','librarian',1,NULL),
(7,'kaleanych@gmail.com','$2y$10$cJ7gjq5JrYMkx9X25HIt7OsSNwJ1Ozi1BnBKEeerCB1cGDLSDAVim','Kolea','Bucuresti',NULL,'user',1,'57974093496bfd2c90e0186af324d30b70d594c613d5a528691e24bb4712357d'),
(8,'kolea@fmi.ro','$2y$10$jlUTRgfaGWQHhl78g62jneTFb7aeFqQHkm2YsIyxXdwd5XGeJdo.u','FMI','123','456','user',1,NULL);
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

-- Dump completed on 2024-02-20  8:16:55
