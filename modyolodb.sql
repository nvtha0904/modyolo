-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: modyolodb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cms_ads`
--

DROP TABLE IF EXISTS `cms_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adscode` varchar(45) NOT NULL,
  `name` text,
  `slot1` text,
  `slot2` text,
  `slot3` text,
  `slot4` text,
  `slot5` text,
  `slot6` text,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `appearheader` tinyint(1) NOT NULL DEFAULT '0',
  `islazy` tinyint(1) NOT NULL DEFAULT '0',
  `offads` tinyint(1) NOT NULL DEFAULT '0',
  `isheader` tinyint(1) NOT NULL DEFAULT '0',
  `isblock` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_ads_adscode` (`adscode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ads`
--

LOCK TABLES `cms_ads` WRITE;
/*!40000 ALTER TABLE `cms_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkchoices`
--

DROP TABLE IF EXISTS `cms_apkchoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkchoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pids` text,
  `langid` varchar(10) DEFAULT 'es',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkchoices`
--

LOCK TABLES `cms_apkchoices` WRITE;
/*!40000 ALTER TABLE `cms_apkchoices` DISABLE KEYS */;
INSERT INTO `cms_apkchoices` VALUES (1,'27,22,25,30,36,32,40,39,24,33,19,29,28,35,26','en','2022-08-19 08:27:59','2022-08-19 08:52:15');
/*!40000 ALTER TABLE `cms_apkchoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkfaqs`
--

DROP TABLE IF EXISTS `cms_apkfaqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkfaqs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `numsort` int DEFAULT '0',
  `langid` varchar(10) DEFAULT 'en',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `postid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_apkfaqs_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkfaqs`
--

LOCK TABLES `cms_apkfaqs` WRITE;
/*!40000 ALTER TABLE `cms_apkfaqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apkfaqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apklinks`
--

DROP TABLE IF EXISTS `cms_apklinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apklinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `modid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apklinks`
--

LOCK TABLES `cms_apklinks` WRITE;
/*!40000 ALTER TABLE `cms_apklinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apklinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkmeta`
--

DROP TABLE IF EXISTS `cms_apkmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkmeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playstore_url` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT '',
  `pricetext` varchar(255) DEFAULT NULL,
  `ccy` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `apk_size` varchar(255) DEFAULT NULL,
  `developer_name` varchar(255) DEFAULT NULL,
  `developer_slug` varchar(255) DEFAULT NULL,
  `url_android` varchar(255) DEFAULT NULL,
  `url_ios` varchar(255) DEFAULT NULL,
  `url_pc` varchar(255) DEFAULT NULL,
  `video_review_url` varchar(255) DEFAULT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `recent_changed_text` text,
  `mod_text` varchar(255) DEFAULT NULL,
  `off_update_version` tinyint(1) DEFAULT '0',
  `show_slide` tinyint(1) DEFAULT '0',
  `off_mod` tinyint(1) DEFAULT '0',
  `off_apk_text` tinyint(1) DEFAULT '0',
  `off_mod_text` tinyint(1) DEFAULT '0',
  `off_ads_redirect` tinyint(1) DEFAULT '0',
  `show_ads_pagedown2` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `postid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_apkmeta_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkmeta`
--

LOCK TABLES `cms_apkmeta` WRITE;
/*!40000 ALTER TABLE `cms_apkmeta` DISABLE KEYS */;
INSERT INTO `cms_apkmeta` VALUES (1,'https://play.google.com/store/apps/details?id=com.agaming.thesun.origin','The Sun: Origin','com.agaming.thesun.origin','$0.99','$0.99','USD','5.1','2.2.1','789.3 MB','AGaming+','agaming',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 04:13:07','2022-08-16 07:34:11',17),(2,'https://play.google.com/store/apps/details?id=com.ss.android.ugc.trill','TikTok','com.ss.android.ugc.trill','Free','Free','USD','4.3+','25.6.4','155.4 MB','TikTok Pte. Ltd.','tiktok-pte-ltd',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:40:21','2022-08-16 07:40:38',18),(3,'https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad','MX Player','com.mxtech.videoplayer.ad','Free','Free','USD','4.3+','1.48.9','55.6 MB','MX Media (formerly J2 Interactive)','mx-media-formerly-j2-interactive',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:41:38','2022-08-16 07:41:51',19),(4,'https://play.google.com/store/apps/details?id=cs14.pixelperfect.iconpack.vera','Vera Icon Pack: shapeless icon','cs14.pixelperfect.iconpack.vera','$2.99','$2.99','USD','4.0.3','5.1.8','42.2 MB','One4Studio','one4studio',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:42:31','2022-08-16 07:42:44',20),(5,'https://play.google.com/store/apps/details?id=org.telegram.messenger','Telegram','org.telegram.messenger','Free','Free','USD','4.3+','8.9.3','124.0 MB','Telegram FZ-LLC','telegram-fz-llc',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:43:30','2022-08-16 07:43:44',21),(6,'https://play.google.com/store/apps/details?id=com.piriform.ccleaner','CCleaner ΓÇô Phone Cleaner','com.piriform.ccleaner','Free','Free','USD','4.3+','6.5.0','37.8 MB','Piriform','piriform',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:48:10','2022-08-16 07:48:23',22),(7,'https://play.google.com/store/apps/details?id=com.waze','Waze Navigation & Live Traffic','com.waze','Free','Free','USD','5.0','4.86.0.6','90.30 Mb','Waze','waze',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:49:02','2022-08-25 01:38:25',23),(8,'https://play.google.com/store/apps/details?id=com.poweramp.v3.luminousblack','Luminous Black - Poweramp Skin','com.poweramp.v3.luminousblack','$1.49','$1.49','USD','5.0','7.5','3.5 MB','Mixified Pixel','mixified-pixel',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:50:26','2022-08-16 07:50:39',24),(9,'https://play.google.com/store/apps/details?id=com.crispy.icons.flatedge.iconpack','Crispy Icon Pack','com.crispy.icons.flatedge.iconpack','$0.49','$0.49','USD','4.1','3.6.5','26.4 MB','FLATEDGE','flatedge',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:51:18','2022-08-16 07:51:33',25),(10,'https://play.google.com/store/apps/details?id=com.superandroid.quicksettingspro','Super Quick Settings Pro','com.superandroid.quicksettingspro','$1.99','$1.99','USD','4.1','6.5','2.0 MB','Super Android','super-android',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:52:14','2022-08-16 07:52:28',26),(11,'https://play.google.com/store/apps/details?id=com.kroegerama.appchecker','AppChecker - App & System info','com.kroegerama.appchecker','Free','Free','USD','7.0','3.3.0','4.3 MB','kroegerama','kroegerama',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:53:24','2022-08-16 07:53:35',27),(12,'https://play.google.com/store/apps/details?id=com.playit.videoplayer','PLAYit-All in One Video Player','com.playit.videoplayer','Free','Free','USD','4.2','2.6.4.12','31.2 MB','PLAYIT TECHNOLOGY PTE. LTD.','playit-technology-pte-ltd',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:54:11','2022-08-16 07:54:35',28),(13,'https://play.google.com/store/apps/details?id=com.map.photostamp','PhotoStamp Camera','com.map.photostamp','Free','Free','USD','4.1','1.9.6','7.65 Mb','Map05','map05',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:56:45','2022-08-24 10:33:38',29),(14,'https://play.google.com/store/apps/details?id=vnggames.dynastywarriors.rpg.online3d','Dynasty Warriors: Overlords','vnggames.dynastywarriors.rpg.online3d','Free','Free','USD','4.4','1.0.15','3.3 GB','MINH PHUONG THINH COMMUNICATION COMPANY LIMITED','minh-phuong-thinh-communication-company-limited',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:58:30','2022-08-16 07:58:44',30),(15,'https://play.google.com/store/apps/details?id=tdcgame.zombie.idle.defense','Zombie Idle Defense','tdcgame.zombie.idle.defense','Free','Free','USD','5.0','1.9.8','107.5 MB','TDCGames','tdcgames',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 07:59:23','2022-08-16 07:59:35',31),(16,'https://play.google.com/store/apps/details?id=com.pabloleban.IdleSlayer','Idle Slayer','com.pabloleban.IdleSlayer','Free','Free','USD','5.1','4.6.1','97.3 MB','Pablo Leban','pablo-leban',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:00:33','2022-08-16 08:00:45',32),(17,'https://play.google.com/store/apps/details?id=com.LiliJoy.DragonLand','Mergeland','com.LiliJoy.DragonLand','Free','Free','USD','4.4','8.7.0g','91.84 Mb','LiliJoy','lilijoy',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:01:21','2022-08-24 10:04:55',33),(18,'https://play.google.com/store/apps/details?id=com.zombiewar.thelastsurvivor','Zombie War - The Last Survivor','com.zombiewar.thelastsurvivor','Free','Free','USD','4.4','1.13.3','247.3 MB','wangming','wangming',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:02:33','2022-08-16 08:02:49',34),(19,'https://play.google.com/store/apps/details?id=com.byril.stickmanarcher','Stickman Archer online','com.byril.stickmanarcher','Free','Free','USD','5.0','1.6.5','193.66 Mb','Byril','byril',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:03:34','2022-08-24 10:30:07',35),(20,'https://play.google.com/store/apps/details?id=skydragon.ylempire','Empire Takeover: Rush & Crush','skydragon.ylempire','Free','Free','USD','5.1','1.7.7','168.47 Mb','SkyDragon Games','skydragon-games',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:04:44','2022-08-24 10:30:53',36),(21,'https://play.google.com/store/apps/details?id=com.stickmanwarriors.stickmandragon.stickfighter','Super Stickman Dragon Warriors','com.stickmanwarriors.stickmandragon.stickfighter','Free','Free','USD','4.4','0.5.7','109.0 MB','LEMON Studio','lemon-studio',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:05:46','2022-08-16 08:06:05',37),(22,'https://play.google.com/store/apps/details?id=com.minigame.wszj.android.gp','Wing Fighter','com.minigame.wszj.android.gp','Free','Free','USD','5.0','1.7.28','398.4 MB','MINIGAME ENTERTAINMENT LIMITED','minigame-entertainment-limited',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:06:43','2022-08-16 08:07:05',38),(23,'https://play.google.com/store/apps/details?id=com.turborilla.MadSkillsMotocross2','Mad Skills Motocross 2','com.turborilla.MadSkillsMotocross2','Free','Free','USD','4.4','2.33.4403','81.6 MB','Turborilla','turborilla',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:08:43','2022-08-16 08:08:59',39),(24,'https://play.google.com/store/apps/details?id=com.RetrostyleGames.LastPirate.deadthieves','Last Pirate: Survival Island Adventure','com.RetrostyleGames.LastPirate.deadthieves','Free','Free','USD','5.0','1.4.12','115.80 Mb','RetroStyle Games UA','retrostyle-games-ua',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-08-16 08:10:04','2022-08-24 10:04:08',40);
/*!40000 ALTER TABLE `cms_apkmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkmods`
--

DROP TABLE IF EXISTS `cms_apkmods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkmods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `showinsingle` tinyint(1) DEFAULT '0',
  `isoriginal` tinyint(1) DEFAULT '0',
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `apkid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkmods`
--

LOCK TABLES `cms_apkmods` WRITE;
/*!40000 ALTER TABLE `cms_apkmods` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apkmods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_authtokens`
--

DROP TABLE IF EXISTS `cms_authtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_authtokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` text NOT NULL,
  `username` varchar(45) DEFAULT '',
  `hit` int DEFAULT '0',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_authtokens`
--

LOCK TABLES `cms_authtokens` WRITE;
/*!40000 ALTER TABLE `cms_authtokens` DISABLE KEYS */;
INSERT INTO `cms_authtokens` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwNjIxMDU5LCJleHAiOjE2OTIxNTcwNTl9.zHgM0fTe8uoIsLRb8mpv61sHde2osEKi1UUiiON4zk4','admin',88,1,'2022-08-16 03:37:39','2022-08-25 01:52:48'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwODgxNDcyLCJleHAiOjE2OTI0MTc0NzJ9._qG22gCQbaar36yPCk3SbGlW4OtC6gZfW0M8ShAlDUM','admin',0,1,'2022-08-19 03:57:52','2022-08-25 01:52:48'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwODgxNTAxLCJleHAiOjE2OTI0MTc1MDF9.hy9hm2D0SY3w5U-Mr1fEzyuTx_xjfCbOQZcGtgKq5Z0','admin',0,1,'2022-08-19 03:58:22','2022-08-25 01:52:48'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwODgyNjA2LCJleHAiOjE2OTI0MTg2MDZ9.9DyIh4-sRmS_B2My7CzdAH-p9xWVtQUHiVabRFjl__Y','admin',0,1,'2022-08-19 04:16:46','2022-08-25 01:52:48'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwODk2ODg0LCJleHAiOjE2OTI0MzI4ODR9.tWf_j30MWwGxgxg3zGWX8T8fEk2g39T9MhzTaO3_hiQ','admin',0,1,'2022-08-19 08:14:44','2022-08-25 01:52:48'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwODk5MDg0LCJleHAiOjE2OTI0MzUwODR9.1hTiJY70JxKVe-XsxqrLRuDVWuZjPHp6TeEvFJfbthU','admin',0,1,'2022-08-19 08:51:25','2022-08-25 01:52:48'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwOTY2OTcxLCJleHAiOjE2OTI1MDI5NzF9.sa8GTi-De1UrHblzIuHQeeXa3PdnM5X96zS0T61sF9E','admin',0,1,'2022-08-20 03:42:51','2022-08-25 01:52:48'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYwOTY3NDQ0LCJleHAiOjE2OTI1MDM0NDR9.T8Rw66H5TiApzKPEz-XbKCOlRkxvyDct_dbBPdYj9TE','admin',0,1,'2022-08-20 03:50:44','2022-08-25 01:52:48'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMjIzNjIyLCJleHAiOjE2OTI3NTk2MjJ9.lyXQRc-j0loVCAy8DOyL4mlv_N3nzRLg5er5zcjiGmE','admin',0,1,'2022-08-23 03:00:23','2022-08-25 01:52:48'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMjI1NTUxLCJleHAiOjE2OTI3NjE1NTF9.-09aEA41YZ7j9xjGSmZW9d52RwMZ0_iGjpJEg1Msu4A','admin',0,1,'2022-08-23 03:32:31','2022-08-25 01:52:48'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMjI3NjI5LCJleHAiOjE2OTI3NjM2Mjl9.F0xsnxtORTA1i8VVrJYStqj1NnZgvSxvlTi7r7HAcP4','admin',0,1,'2022-08-23 04:07:09','2022-08-25 01:52:48'),(12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMjQwNTc4LCJleHAiOjE2OTI3NzY1Nzh9.CzUw-8pa6JYRTU-WoMfXVTrhKfaVKPrZjV36uga24GM','admin',0,1,'2022-08-23 07:42:58','2022-08-25 01:52:48'),(13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMzI3MzIxLCJleHAiOjE2OTI4NjMzMjF9.VTCTUL3ZMuY2A_D16q4sEmyStktq-DYVAt88w3UTQWU','admin',0,1,'2022-08-24 07:48:41','2022-08-25 01:52:48'),(14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMzI4OTk0LCJleHAiOjE2OTI4NjQ5OTR9.G--YKXsSjbxWCbOPEsd8ByPMyYho3sneYX357qSl6oQ','admin',0,1,'2022-08-24 08:16:34','2022-08-25 01:52:48'),(15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjYxMzkyMzY4LCJleHAiOjE2OTI5MjgzNjh9.1uDZ8hFmzd4FHjjuZjqz4SSu7WA5V8_uOLqsBUzyjQw','admin',0,0,'2022-08-25 01:52:48','2022-08-25 01:52:48');
/*!40000 ALTER TABLE `cms_authtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_categories`
--

DROP TABLE IF EXISTS `cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `fullslug` text,
  `icon` text,
  `title` text NOT NULL,
  `description` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `postcount` int DEFAULT '0',
  `hirarchylevel` int DEFAULT '1',
  `catetype` varchar(45) NOT NULL,
  `catestatus` varchar(20) NOT NULL DEFAULT 'pending',
  `adsid` int DEFAULT NULL,
  `adsslot1` text,
  `adsslot2` text,
  `adsslot3` text,
  `adsslot4` text,
  `offads` tinyint(1) DEFAULT '0',
  `offadsall` tinyint(1) DEFAULT '0',
  `islikemain` tinyint(1) DEFAULT '1',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `ratingcount` int DEFAULT '0',
  `ratingaverage` decimal(2,1) DEFAULT '0.0',
  `likecount` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_categories`
--

LOCK TABLES `cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_categories` DISABLE KEYS */;
INSERT INTO `cms_categories` VALUES (1,NULL,'uncategorized','uncategorized','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Uncategorized','','Uncategorized','',0,1,'uncategorized','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27',1),(2,NULL,'games','games','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Games','','Games','',0,1,'category-apk','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27',1),(3,NULL,'apps','apps','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Apps','','apps','',0,1,'category-apk','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27',1),(4,2,'action','games/action','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Action',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 04:13:06','2022-08-16 04:13:06',1),(5,NULL,'agaming','agaming','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','AGaming+',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 04:13:06','2022-08-16 04:13:06',1),(6,3,'video-players-editors','apps/video-players-editors','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Video Players & Editors',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:40:20','2022-08-16 07:40:20',1),(7,NULL,'tiktok-pte-ltd','tiktok-pte-ltd','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','TikTok Pte. Ltd.',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:40:21','2022-08-16 07:40:21',1),(8,NULL,'mx-media-formerly-j2-interactive','mx-media-formerly-j2-interactive','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','MX Media (formerly J2 Interactive)',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:41:37','2022-08-16 07:41:37',1),(9,3,'personalization','apps/personalization','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Personalization',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:42:31','2022-08-16 07:42:31',1),(10,NULL,'one4studio','one4studio','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','One4Studio',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:42:31','2022-08-16 07:42:31',1),(11,3,'communication','apps/communication','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Communication',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:43:29','2022-08-16 07:43:29',1),(12,NULL,'telegram-fz-llc','telegram-fz-llc','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Telegram FZ-LLC',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:43:29','2022-08-16 07:43:29',1),(13,3,'tools','apps/tools','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Tools',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:48:09','2022-08-16 07:48:09',1),(14,NULL,'piriform','piriform','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Piriform',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:48:10','2022-08-16 07:48:10',1),(15,3,'maps-navigation','apps/maps-navigation','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Maps & Navigation',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:49:02','2022-08-16 07:49:02',1),(16,NULL,'waze','waze','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Waze',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:49:02','2022-08-16 07:49:02',1),(17,NULL,'mixified-pixel','mixified-pixel','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Mixified Pixel',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:50:26','2022-08-16 07:50:26',1),(18,NULL,'flatedge','flatedge','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','FLATEDGE',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:51:17','2022-08-16 07:51:17',1),(19,NULL,'super-android','super-android','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Super Android',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:52:14','2022-08-16 07:52:14',1),(20,NULL,'kroegerama','kroegerama','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','kroegerama',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:53:23','2022-08-16 07:53:23',1),(21,NULL,'playit-technology-pte-ltd','playit-technology-pte-ltd','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','PLAYIT TECHNOLOGY PTE. LTD.',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:54:11','2022-08-16 07:54:11',1),(22,3,'photography','apps/photography','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Photography',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:56:44','2022-08-16 07:56:44',1),(23,NULL,'map05','map05','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Map05',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:56:44','2022-08-16 07:56:44',1),(24,2,'role-playing','games/role-playing','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Role Playing',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:58:29','2022-08-16 07:58:29',1),(25,NULL,'minh-phuong-thinh-communication-company-limited','minh-phuong-thinh-communication-company-limited','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','MINH PHUONG THINH COMMUNICATION COMPANY LIMITED',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:58:30','2022-08-16 07:58:30',1),(26,2,'arcade','games/arcade','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Arcade',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 07:59:23','2022-08-16 07:59:23',1),(27,NULL,'tdcgames','tdcgames','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','TDCGames',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 07:59:23','2022-08-16 07:59:23',1),(28,NULL,'pablo-leban','pablo-leban','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Pablo Leban',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:00:33','2022-08-16 08:00:33',1),(29,2,'adventure','games/adventure','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Adventure',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 08:01:20','2022-08-16 08:01:20',1),(30,NULL,'lilijoy','lilijoy','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','LiliJoy',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:01:20','2022-08-16 08:01:20',1),(31,NULL,'wangming','wangming','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','wangming',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:02:32','2022-08-16 08:02:32',1),(32,NULL,'byril','byril','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Byril',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:03:33','2022-08-16 08:03:33',1),(33,2,'strategy','games/strategy','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Strategy',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 08:04:43','2022-08-16 08:04:43',1),(34,NULL,'skydragon-games','skydragon-games','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','SkyDragon Games',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:04:43','2022-08-16 08:04:43',1),(35,NULL,'lemon-studio','lemon-studio','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','LEMON Studio',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:05:46','2022-08-16 08:05:46',1),(36,NULL,'minigame-entertainment-limited','minigame-entertainment-limited','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','MINIGAME ENTERTAINMENT LIMITED',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:06:42','2022-08-16 08:06:42',1),(37,2,'racing','games/racing','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Racing',NULL,'','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-08-16 08:08:43','2022-08-16 08:08:43',1),(38,NULL,'turborilla','turborilla','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Turborilla',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:08:43','2022-08-16 08:08:43',1),(39,NULL,'retrostyle-games-ua','retrostyle-games-ua','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','RetroStyle Games UA',NULL,'','',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-08-16 08:10:03','2022-08-16 08:10:03',1);
/*!40000 ALTER TABLE `cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_catelangs`
--

DROP TABLE IF EXISTS `cms_catelangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_catelangs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cateid` int NOT NULL,
  `langid` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `offadslang` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_catelangs_cateid_langid` (`cateid`,`langid`),
  CONSTRAINT `cms_catelangs_ibfk_1` FOREIGN KEY (`cateid`) REFERENCES `cms_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_catelangs`
--

LOCK TABLES `cms_catelangs` WRITE;
/*!40000 ALTER TABLE `cms_catelangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_catelangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments`
--

DROP TABLE IF EXISTS `cms_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `parentid` int DEFAULT NULL,
  `postid` int NOT NULL,
  `commentstatus` varchar(20) DEFAULT 'pending',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `authorid` int DEFAULT NULL,
  `countchilds` int DEFAULT '0',
  `rating` int DEFAULT '0',
  `numlike` int DEFAULT '0',
  `viewed` tinyint(1) DEFAULT '0',
  `langid` varchar(10) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `rootid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments`
--

LOCK TABLES `cms_comments` WRITE;
/*!40000 ALTER TABLE `cms_comments` DISABLE KEYS */;
INSERT INTO `cms_comments` VALUES (2,'Test','test@gmail.com',NULL,'hay',NULL,40,'published','127.0.0.1','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36',NULL,0,0,0,0,'en','2022-08-18 04:16:51','2022-08-20 03:45:18',NULL),(3,'Test','test@gmail.com',NULL,'hay',NULL,40,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-19 03:15:51','2022-08-20 03:45:34',NULL),(4,'Test','test1@gmail.com',NULL,'hay',NULL,40,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-19 03:54:17','2022-08-20 03:47:06',NULL),(5,'Test','test@gmail.com',NULL,'hay',NULL,37,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-20 03:21:31','2022-08-20 03:46:09',NULL),(6,'Test','test@gmail.com',NULL,'hay',NULL,37,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-20 03:28:50','2022-08-20 03:47:11',NULL),(7,'Test','test@gmail.com',NULL,'hay',NULL,37,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-20 03:29:58','2022-08-20 03:47:17',NULL),(8,'Test','test@gmail.com',NULL,'hay',NULL,38,'published','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-08-20 03:37:24','2022-08-20 03:45:43',NULL);
/*!40000 ALTER TABLE `cms_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments_likes`
--

DROP TABLE IF EXISTS `cms_comments_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_comments_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `cmtid` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments_likes`
--

LOCK TABLES `cms_comments_likes` WRITE;
/*!40000 ALTER TABLE `cms_comments_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comments_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cron_todos`
--

DROP TABLE IF EXISTS `cms_cron_todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_cron_todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `title` text,
  `package_name` varchar(255) DEFAULT '',
  `oldversion` varchar(255) DEFAULT '',
  `oldsize` varchar(45) DEFAULT '',
  `scheduletime` datetime NOT NULL,
  `newversion` varchar(255) DEFAULT '',
  `newsize` varchar(45) DEFAULT '',
  `isdone` tinyint(1) DEFAULT '0',
  `iscantleech` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cron_todos`
--

LOCK TABLES `cms_cron_todos` WRITE;
/*!40000 ALTER TABLE `cms_cron_todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_cron_todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_feedbacks`
--

DROP TABLE IF EXISTS `cms_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT '',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` text,
  `fbstatus` varchar(45) DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_feedbacks`
--

LOCK TABLES `cms_feedbacks` WRITE;
/*!40000 ALTER TABLE `cms_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_interactives`
--

DROP TABLE IF EXISTS `cms_interactives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_interactives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iatype` varchar(45) NOT NULL,
  `objtype` varchar(45) NOT NULL,
  `objectid` int DEFAULT NULL,
  `point` int DEFAULT '1',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_interactives`
--

LOCK TABLES `cms_interactives` WRITE;
/*!40000 ALTER TABLE `cms_interactives` DISABLE KEYS */;
INSERT INTO `cms_interactives` VALUES (1,'view','post',29,4,'','','2022-08-16 08:19:50','2022-08-17 02:24:18'),(2,'view','post',40,14,'','','2022-08-16 12:53:20','2022-08-17 12:52:02'),(3,'view','post',29,15,'','','2022-08-17 08:35:03','2022-08-17 09:51:27'),(4,'view','post',39,1,'','','2022-08-17 10:25:33','2022-08-17 10:25:33'),(5,'view','post',38,6,'','','2022-08-17 10:28:18','2022-08-17 12:50:25'),(6,'view','post',40,15,'','','2022-08-17 13:34:13','2022-08-18 04:06:28'),(7,'view','post',40,25,'','','2022-08-19 03:14:22','2022-08-19 07:21:26'),(8,'view','post',33,1,'','','2022-08-19 04:05:02','2022-08-19 04:05:02'),(9,'view','post',30,9,'','','2022-08-19 09:04:23','2022-08-20 03:19:31'),(10,'view','post',32,1,'','','2022-08-19 10:10:25','2022-08-19 10:10:25'),(11,'view','post',38,21,'','','2022-08-19 10:12:42','2022-08-20 09:53:14'),(12,'view','post',18,5,'','','2022-08-20 02:49:44','2022-08-20 02:59:40'),(13,'view','post',37,5,'','','2022-08-20 03:21:22','2022-08-20 03:29:47'),(14,'view','post',40,6,'','','2022-08-20 03:47:38','2022-08-20 09:21:57'),(15,'view','post',38,5,'','','2022-08-20 10:24:13','2022-08-20 14:10:32'),(16,'view','post',40,67,'','','2022-08-22 01:53:09','2022-08-22 09:11:29'),(17,'view','post',38,5,'','','2022-08-22 03:48:38','2022-08-22 04:06:41'),(18,'view','post',31,2,'','','2022-08-22 04:05:12','2022-08-22 04:06:57'),(19,'view','post',39,1,'','','2022-08-22 04:22:03','2022-08-22 04:22:03'),(20,'view','post',30,2,'','','2022-08-22 09:06:54','2022-08-22 09:07:51'),(21,'view','post',33,1,'','','2022-08-22 09:11:47','2022-08-22 09:11:47'),(22,'view','post',35,1,'','','2022-08-22 09:12:03','2022-08-22 09:12:03'),(23,'view','post',37,1,'','','2022-08-22 09:12:27','2022-08-22 09:12:27'),(24,'view','post',17,1,'','','2022-08-22 09:12:46','2022-08-22 09:12:46'),(25,'view','post',29,4,'','','2022-08-23 07:39:27','2022-08-23 13:56:59'),(26,'view','post',40,8,'','','2022-08-23 08:03:16','2022-08-24 04:11:40'),(27,'view','post',18,1,'','','2022-08-23 13:37:13','2022-08-23 13:37:13'),(28,'view','post',37,5,'','','2022-08-23 13:38:17','2022-08-24 03:08:47'),(29,'view','post',22,1,'','','2022-08-23 13:56:47','2022-08-23 13:56:47'),(30,'view','post',21,1,'','','2022-08-23 13:57:10','2022-08-23 13:57:10'),(31,'view','post',39,5,'','','2022-08-23 14:24:33','2022-08-24 07:45:35'),(32,'view','post',35,8,'','','2022-08-24 02:25:00','2022-08-25 01:33:55'),(33,'view','post',34,2,'','','2022-08-24 02:30:15','2022-08-24 08:52:44'),(34,'view','post',31,1,'','','2022-08-24 02:32:59','2022-08-24 02:32:59'),(35,'view','post',33,2,'','','2022-08-24 03:12:47','2022-08-24 03:23:51'),(36,'view','post',36,5,'','','2022-08-24 03:50:08','2022-08-25 01:33:34'),(37,'view','post',32,1,'','','2022-08-24 04:10:01','2022-08-24 04:10:01'),(38,'view','post',30,3,'','','2022-08-24 07:17:30','2022-08-24 10:28:23'),(39,'view','post',40,9,'','','2022-08-24 09:16:11','2022-08-25 03:48:35'),(40,'view','post',29,4,'','','2022-08-24 10:33:23','2022-08-24 10:35:47'),(41,'view','post',23,4,'','','2022-08-25 01:35:23','2022-08-25 01:49:21');
/*!40000 ALTER TABLE `cms_interactives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_languages`
--

DROP TABLE IF EXISTS `cms_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_languages` (
  `id` varchar(10) NOT NULL,
  `codelang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `isblock` tinyint(1) NOT NULL DEFAULT '0',
  `ismain` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_languages`
--

LOCK TABLES `cms_languages` WRITE;
/*!40000 ALTER TABLE `cms_languages` DISABLE KEYS */;
INSERT INTO `cms_languages` VALUES ('en','en','English','en',0,1,'2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_log_apk_files`
--

DROP TABLE IF EXISTS `cms_log_apk_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_log_apk_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `apklink` text,
  `apksize` varchar(45) DEFAULT '',
  `obblink` text,
  `obbsize` varchar(45) DEFAULT '',
  `apkversion` varchar(255) DEFAULT '',
  `isloaded` tinyint(1) DEFAULT '0',
  `isnolink` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_log_apk_files`
--

LOCK TABLES `cms_log_apk_files` WRITE;
/*!40000 ALTER TABLE `cms_log_apk_files` DISABLE KEYS */;
INSERT INTO `cms_log_apk_files` VALUES (1,40,'com.RetrostyleGames.LastPirate.deadthieves','https://play.googleapis.com/download/by-token/download?token=AOTCm0QQolTjYumeEjK92jBBqtsYWTEwV42TJ0yc_EfQGwu-KPGLzZymn7tPIIs6kHyqRyod-OBctUO9YW0l-Bgw8ePH00oNyCAGR0m9snp2l6Ag0uLpqt1NO0fed_2nznqWPL95dnGFwd1hAbdghURcJW1SySLmy1gWkGbl44BUQm-FR839vSh6E7eGiU8_EDLoD_6BmW5fJcuTmuKz6jOQAGxhhsnuURz1l48mwZXzJWZRzMZcmBqPsWkT17jah2k8A2qsw4tcKnjmxg5shmgGCanZiPoR8T0YGT_I5Nz5h7FtwsKIU5qFFw6S1tAskSyvN_46H4ypq9qtlQLLds-11Xd0LLJCLawalpykqTmjCPGRVanVF9utekMbGrwuVlDMxZ6ZqATaGEU7wAGuz3y2ClsshREF7MXPGu11DkDDAIO082aDaG9zWDbyqu8h&cpn=9WWFMeyc5PFKH7QT','115.80 Mb','','','1.4.12',1,0,'2022-08-24 10:04:08','2022-08-24 10:04:08'),(2,33,'com.gameloft.android.ANMP.GloftDMHM','https://play.googleapis.com/download/by-token/download?token=AOTCm0QqEblX36W5PrYKREOn7xWo1EfGmyo8N-gSDFfUs6FTHGjKNd4ISWr_LPUpTZZK-jDWQtUCP7Ln20s2mVxB8HAh-qDd9fLtOh1O2Pp7wxML4dvFV4FQP5by_nJWg0FzkdzqOrECR4Acbj7L0MyN6r7rSc-1hBCgHbxUeCZhADylxF7UACoRQmJnzDvXbiJUC1lbKC-mdyL_GqNvw0fdDoBJt4gbPDMw8q4qMqkQ7eviqloWBSvks8WWApSfhkBWsKIPs8WooVe7MJQauDERvrxUure9oaGJFQ_U3i8IHWQuwnGLFuYBMzZuPk0YgcypT5VUEuYuqdmku8FJco6dkYKIYTxKvRKGfxJqWjoHRnv74LvLVSVheY0AVBwxWuz57F5Dak-_NFUslQS8HdYGKMPgoPD8n4RrSkkPi3cjnTOVI4rb5WA&cpn=iGl-ltieNVeess05','91.84 Mb','','','8.7.0g',1,0,'2022-08-24 10:04:55','2022-08-24 10:04:55'),(3,30,'vnggames.dynastywarriors.rpg.online3d','https://play.googleapis.com/download/by-token/download?token=AOTCm0RAY0EGvsWiTOtuXyiK2bcV8BeqlDXUN7YO00Nv4amDgR-aajLEpFcyL9J0t_Nwd7bjBwFl3mgxIz52b07rOeE2uTIGJCsHr1DT5JQmg4eCLyQs7ewe-UTTo22vZKDtU2tv0YGo9wTiEd11cYrVp_sOf71bdU1YMjpCPlFKN_IkMKnRKpa5dCW10ChJrWgxbAygtltWjhgUYDVWrZQguURo21QDWrnXIqfJnKnfsS57XD1iQ9I2ncY4wYs4ffkjZ7hqxOL21RLA8ZfMOy1gPF_LCkQy67FpoWQaih9ZZz9WHrdHuInlTn4LYKr3zFqQuy_61Zifg-IzV32Ag6R-c_vPLIC7NL1Apw70XJczORidqFDyXBBbLC2BtLqlFVurIbXGjcEKlYP-lwYTlmrD4epcvHTNwwcAK7sGmr7Z01QFW7S-fZLfZg&cpn=xuKF75F90aBpWCXS','1.45 Gb','','','1.0.15',1,0,'2022-08-24 10:28:40','2022-08-24 10:28:40'),(4,35,'com.byril.stickmanarcher','https://play.googleapis.com/download/by-token/download?token=AOTCm0SP0w4RlLv65niSojSW7eQY9Sm7lTfViD6FHhL8AkO3O57GUU2sTW8uUUTUNfMQqbXyPvBF_qpfvEIajivLHhTvNg1G0ttSSYWk2JjJbXBNBkGPM-ulrOEGEi8EisoliakT2OIofqyW96Y2VqgTs8sI4NiJ-FIdoJ21tvjdAwxzNakiohtI6I52Ee81f0QejLqkfOfAYHGJXt4cQkeKQB3prymOLNRK6noc31sTgSrEdOlhgbms2L-aTosZi57nKAXPy6E9A-huEOSzYj9li1imZLCgma_fu6nRMgXwrX5BB1dlRPHkV6IgY1ZlXojp-Hrf3w6OOJksjRNJVvmDkmxuLmDM87ong6bcx2K-OyvzpUf5ro2ztz-BOqiRDmEGCo9-xfdCovjz4QkcPaDM-DXhKQ&cpn=Z95XFYDIO22gVm1u','193.66 Mb','','','1.6.5',1,0,'2022-08-24 10:30:07','2022-08-25 01:34:08'),(5,36,'skydragon.ylempire','https://play.googleapis.com/download/by-token/download?token=AOTCm0QNhUrAgQuXlA8WrJ_Atxh6VfWwmSeAD0kHMIVmjCSxUm6G1cSXFlNCOF38IX-zKd1fHfWxk6wTxBIgoAYuEjZxxAQAn-rm7vguOrCO3pMQmsGN9bJa-pex7Uxv6QmSE0O3aNYwoK-6Kni-bzZIwEFcKYKoC9rwd8LyTgIOuqLhx8bLvLQ9nAWtVMYhMpKR0AKzCvJYrsGTpkJFV7oiJmD3qAGYIAgxBzUqc9gnPnzFO6I8PcT9Eb-7xMDpo-MWVx3ncwjDrgZ6T5jdNlK-dRzaHRDJGq53DDdFVnHb0xlSyN7B1JHFh4j09NW4D4isgwsqT4Vp50Gw-ig69pPTWmXsSY_LQmKOVT7jjiMwXFUl1Nt1DVTUFjtMpfkisQIidDD3xDb7gUtoT-YVHRGH&cpn=OApfxyx-oZTTeV7F','168.47 Mb','','','1.7.7',1,0,'2022-08-24 10:30:53','2022-08-24 10:30:53'),(6,29,'com.map.photostamp','https://play.googleapis.com/download/by-token/download?token=AOTCm0Q0Jcz6Gom9c7nr5aEAmazxUryxXKgmkVMdUa272ea-dKNTMrg6lKEJCML8vSi_K5rqXnVRKFQ6kZa0afzOqj8xecUl4iK4lsW-jmzqTQr57pvzmwFUeW7KZdoNw4aVf-wwsflBhvv9Y765z1ntRZnTKd1x2dCBAni_k2_py3cjVgke5mKGMVM3v4qWPBhdinxiNSlAAYKixnFP8ofxnAa3lBLJA3rZpXB-MiRg4LxxOxJHuQpCU054X9iXbhIniHwfSeNnGFsSJbzYGhXY4Ly-N5K3pP6lE9LEZ2Lw6eUyodaf8qAoFN9M7lAyEj2w9sCKELB_uGSnSFTgboveUkDg3OzTkuO5_KJ28CkY46gSqglepsXSGjIRQKJjD3Y3fn5lzoxN4lqZvG9J&cpn=Spsft5uzJOI2KjFO','7.65 Mb','','','1.9.6',1,0,'2022-08-24 10:33:38','2022-08-24 10:33:38'),(7,23,'com.waze','https://play.googleapis.com/download/by-token/download?token=AOTCm0T_JjOX9iymgomKfJvawupDDRvUO-vV_qsTlvP44i-IBFGm15w0Bt5swPtcRBf9AUpg0spVF4W1SFW18ZoeKYwYq29W_QpA8I9rT8JqXFW7q_j-VIoE3l-YG_ZHvmSc-D5P3Zd20M1VoAOdzbhGO0h10A7w_6-0roYZ3mLdLsEqNlRrTVWBL-p3vu925bDNjsFdov12bIbPQia9-beFoxkR2IJusryQ0cPm2a1phBPM1kVe2Oe_ldVPtw-YQmHt0LQtiMmMzzMPwagldt0WYGsiEYlTK9N4r5yXhablDngg89pTqtApVYJt6V90bhnWQAuIUpcCrtcZFaz98roH_5HrxJFzKqnGUoE6w2wqHeVAD6DLEkzoLP8Pq0NkSUpQpFNUE7kxSA&cpn=ZtX8GUFLI7lvTW8D','90.30 Mb','','','4.86.0.6',1,0,'2022-08-25 01:38:25','2022-08-25 01:38:25');
/*!40000 ALTER TABLE `cms_log_apk_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_log_update_versions`
--

DROP TABLE IF EXISTS `cms_log_update_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_log_update_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `langid` varchar(20) DEFAULT NULL,
  `postname` varchar(255) DEFAULT '',
  `oldversion` varchar(255) DEFAULT '',
  `newversion` varchar(255) DEFAULT '',
  `oldtitle` text,
  `newtitle` text,
  `logtype` varchar(45) DEFAULT '',
  `message` varchar(255) DEFAULT '',
  `notes` varchar(255) DEFAULT '',
  `approved` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_log_update_versions`
--

LOCK TABLES `cms_log_update_versions` WRITE;
/*!40000 ALTER TABLE `cms_log_update_versions` DISABLE KEYS */;
INSERT INTO `cms_log_update_versions` VALUES (1,40,'en','Last Pirate: Survival Island Adventure','1.4.10','1.4.12','Last Pirate: Survival Island Adventure','Last Pirate: Survival Island Adventure','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-24 10:04:09','2022-08-24 10:04:09'),(2,33,'en','Mergeland','2.19.0','8.7.0g','Mergeland','Mergeland','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-24 10:04:55','2022-08-24 10:04:55'),(3,35,'en','Stickman Archer online','1.6.3','1.6.5','Stickman Archer online','Stickman Archer online','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-24 10:30:07','2022-08-24 10:30:07'),(4,36,'en','Empire Takeover: Rush & Crush','1.7.4','1.7.7','Empire Takeover: Rush & Crush','Empire Takeover: Rush & Crush','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-24 10:30:53','2022-08-24 10:30:53'),(5,29,'en','PhotoStamp Camera','1.9.5','1.9.6','PhotoStamp Camera','PhotoStamp Camera','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-24 10:33:38','2022-08-24 10:33:38'),(6,23,'en','Waze Navigation & Live Traffic','4.85.0.6','4.86.0.6','Waze Navigation & Live Traffic','Waze Navigation & Live Traffic','error','Version mß╗¢i ch╞░a ─æ╞░ß╗úc thay thß║┐ v├áo SEO Title - en','Khi xem trang single',0,'2022-08-25 01:38:26','2022-08-25 01:38:26');
/*!40000 ALTER TABLE `cms_log_update_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_medias`
--

DROP TABLE IF EXISTS `cms_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_medias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `seotitle` text,
  `description` text,
  `note` text,
  `filename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `urlicon` varchar(255) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `imgwidth` int DEFAULT '0',
  `imgheight` int DEFAULT '0',
  `childsizes` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_medias`
--

LOCK TABLES `cms_medias` WRITE;
/*!40000 ALTER TABLE `cms_medias` DISABLE KEYS */;
INSERT INTO `cms_medias` VALUES (1,'The Sun: Origin','','','thumbnail','the-sun-origin-thumbnail.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-thumbnail.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-thumbnail-150.jpg','image/jpeg','46 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 04:13:08','2022-08-16 04:13:08',1),(2,'The Sun: Origin','','','icon','the-sun-origin-icon.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-icon.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-icon-150.jpg','image/jpeg','424 Bytes','icon',512,512,'300x300,512x512','2022-08-16 04:13:10','2022-08-16 04:13:10',1),(3,'The Sun: Origin 6','','','screenshoot','the-sun-origin-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-6-screenshoot-150.jpg','image/jpeg','174 Bytes','screenshoot',512,319,'300x187,512x319','2022-08-16 04:13:35','2022-08-16 04:13:35',1),(4,'The Sun: Origin 4','','','screenshoot','the-sun-origin-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-4-screenshoot-150.jpg','image/jpeg','288 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 04:13:39','2022-08-16 04:13:39',1),(5,'The Sun: Origin 1','','','screenshoot','the-sun-origin-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-1-screenshoot-150.jpg','image/jpeg','250 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 04:13:40','2022-08-16 04:13:40',1),(6,'The Sun: Origin 0','','','screenshoot','the-sun-origin-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-0-screenshoot-150.jpg','image/jpeg','225 Bytes','screenshoot',512,319,'300x187,512x319','2022-08-16 04:13:41','2022-08-16 04:13:41',1),(7,'The Sun: Origin 5','','','screenshoot','the-sun-origin-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-5-screenshoot-150.jpg','image/jpeg','222 Bytes','screenshoot',512,319,'300x187,512x319','2022-08-16 04:13:45','2022-08-16 04:13:45',1),(8,'The Sun: Origin 7','','','screenshoot','the-sun-origin-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-7-screenshoot-150.jpg','image/jpeg','257 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 04:13:45','2022-08-16 04:13:45',1),(9,'The Sun: Origin 3','','','screenshoot','the-sun-origin-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-3-screenshoot-150.jpg','image/jpeg','288 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 04:13:46','2022-08-16 04:13:46',1),(10,'The Sun: Origin 2','','','screenshoot','the-sun-origin-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/the-sun-origin-2-screenshoot-150.jpg','image/jpeg','300 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 04:13:53','2022-08-16 04:13:53',1),(11,'TikTok','','','thumbnail','tiktok-thumbnail.jpg','http://localhost:8181/uploads/2022/8/tiktok-thumbnail.jpg','http://localhost:8181/uploads/2022/8/tiktok-thumbnail-150.jpg','image/jpeg','56 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:40:22','2022-08-16 07:40:22',1),(12,'TikTok','','','icon','tiktok-icon.jpg','http://localhost:8181/uploads/2022/8/tiktok-icon.jpg','http://localhost:8181/uploads/2022/8/tiktok-icon-150.jpg','image/jpeg','54 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:40:22','2022-08-16 07:40:22',1),(13,'TikTok 0','','','screenshoot','tiktok-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-0-screenshoot-150.jpg','image/jpeg','35 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:23','2022-08-16 07:40:23',1),(14,'TikTok 3','','','screenshoot','tiktok-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-3-screenshoot-150.jpg','image/jpeg','40 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:23','2022-08-16 07:40:23',1),(15,'TikTok 2','','','screenshoot','tiktok-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-2-screenshoot-150.jpg','image/jpeg','55 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:23','2022-08-16 07:40:23',1),(16,'TikTok 6','','','screenshoot','tiktok-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-6-screenshoot-150.jpg','image/jpeg','48 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:24','2022-08-16 07:40:24',1),(17,'TikTok 1','','','screenshoot','tiktok-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-1-screenshoot-150.jpg','image/jpeg','42 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:24','2022-08-16 07:40:24',1),(18,'TikTok 4','','','screenshoot','tiktok-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-4-screenshoot-150.jpg','image/jpeg','46 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:24','2022-08-16 07:40:24',1),(19,'TikTok 5','','','screenshoot','tiktok-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-5-screenshoot-150.jpg','image/jpeg','45 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:24','2022-08-16 07:40:24',1),(20,'TikTok 7','','','screenshoot','tiktok-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/tiktok-7-screenshoot-150.jpg','image/jpeg','53 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:40:24','2022-08-16 07:40:24',1),(21,'MX Player','','','thumbnail','mx-player-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mx-player-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mx-player-thumbnail-150.jpg','image/jpeg','11 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:41:38','2022-08-16 07:41:38',1),(22,'MX Player','','','icon','mx-player-icon.jpg','http://localhost:8181/uploads/2022/8/mx-player-icon.jpg','http://localhost:8181/uploads/2022/8/mx-player-icon-150.jpg','image/jpeg','22 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:41:39','2022-08-16 07:41:39',1),(23,'MX Player 7','','','screenshoot','mx-player-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-7-screenshoot-150.jpg','image/jpeg','12 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(24,'MX Player 6','','','screenshoot','mx-player-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-6-screenshoot-150.jpg','image/jpeg','13 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(25,'MX Player 0','','','screenshoot','mx-player-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-0-screenshoot-150.jpg','image/jpeg','40 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(26,'MX Player 1','','','screenshoot','mx-player-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-1-screenshoot-150.jpg','image/jpeg','38 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(27,'MX Player 3','','','screenshoot','mx-player-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-3-screenshoot-150.jpg','image/jpeg','40 Bytes','screenshoot',512,307,'300x180,512x307','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(28,'MX Player 4','','','screenshoot','mx-player-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-4-screenshoot-150.jpg','image/jpeg','259 Bytes','screenshoot',512,307,'300x180,512x307','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(29,'MX Player 5','','','screenshoot','mx-player-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-5-screenshoot-150.jpg','image/jpeg','177 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(30,'MX Player 2','','','screenshoot','mx-player-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mx-player-2-screenshoot-150.jpg','image/jpeg','58 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:41:40','2022-08-16 07:41:40',1),(31,'Vera Icon Pack: shapeless icon','','','thumbnail','vera-icon-pack-shapeless-icon-thumbnail.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-thumbnail.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-thumbnail-150.jpg','image/jpeg','147 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:42:33','2022-08-16 07:42:33',1),(32,'Vera Icon Pack: shapeless icon','','','icon','vera-icon-pack-shapeless-icon-icon.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-icon.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-icon-150.jpg','image/jpeg','221 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:42:33','2022-08-16 07:42:33',1),(33,'Vera Icon Pack: shapeless icon 0','','','screenshoot','vera-icon-pack-shapeless-icon-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-0-screenshoot-150.jpg','image/jpeg','100 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:34','2022-08-16 07:42:34',1),(34,'Vera Icon Pack: shapeless icon 3','','','screenshoot','vera-icon-pack-shapeless-icon-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-3-screenshoot-150.jpg','image/jpeg','185 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(35,'Vera Icon Pack: shapeless icon 1','','','screenshoot','vera-icon-pack-shapeless-icon-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-1-screenshoot-150.jpg','image/jpeg','71 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(36,'Vera Icon Pack: shapeless icon 2','','','screenshoot','vera-icon-pack-shapeless-icon-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-2-screenshoot-150.jpg','image/jpeg','158 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(37,'Vera Icon Pack: shapeless icon 6','','','screenshoot','vera-icon-pack-shapeless-icon-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-6-screenshoot-150.jpg','image/jpeg','117 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(38,'Vera Icon Pack: shapeless icon 5','','','screenshoot','vera-icon-pack-shapeless-icon-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-5-screenshoot-150.jpg','image/jpeg','129 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(39,'Vera Icon Pack: shapeless icon 4','','','screenshoot','vera-icon-pack-shapeless-icon-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-4-screenshoot-150.jpg','image/jpeg','142 Bytes','screenshoot',256,512,'256x512','2022-08-16 07:42:35','2022-08-16 07:42:35',1),(40,'Telegram','','','thumbnail','telegram-thumbnail.jpg','http://localhost:8181/uploads/2022/8/telegram-thumbnail.jpg','http://localhost:8181/uploads/2022/8/telegram-thumbnail-150.jpg','image/jpeg','21 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:43:30','2022-08-16 07:43:30',1),(41,'Telegram','','','icon','telegram-icon.jpg','http://localhost:8181/uploads/2022/8/telegram-icon.jpg','http://localhost:8181/uploads/2022/8/telegram-icon-150.jpg','image/jpeg','56 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:43:31','2022-08-16 07:43:31',1),(42,'Telegram 4','','','screenshoot','telegram-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-4-screenshoot-150.jpg','image/jpeg','143 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:33','2022-08-16 07:43:33',1),(43,'Telegram 3','','','screenshoot','telegram-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-3-screenshoot-150.jpg','image/jpeg','132 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:33','2022-08-16 07:43:33',1),(44,'Telegram 0','','','screenshoot','telegram-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-0-screenshoot-150.jpg','image/jpeg','84 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:33','2022-08-16 07:43:33',1),(45,'Telegram 6','','','screenshoot','telegram-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-6-screenshoot-150.jpg','image/jpeg','123 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:34','2022-08-16 07:43:34',1),(46,'Telegram 2','','','screenshoot','telegram-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-2-screenshoot-150.jpg','image/jpeg','184 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:34','2022-08-16 07:43:34',1),(47,'Telegram 5','','','screenshoot','telegram-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-5-screenshoot-150.jpg','image/jpeg','174 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:34','2022-08-16 07:43:34',1),(48,'Telegram 1','','','screenshoot','telegram-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/telegram-1-screenshoot-150.jpg','image/jpeg','118 Bytes','screenshoot',269,512,'269x512','2022-08-16 07:43:34','2022-08-16 07:43:34',1),(49,'CCleaner ΓÇô Phone Cleaner','','','thumbnail','ccleaner-phone-cleaner-thumbnail.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-thumbnail.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-thumbnail-150.jpg','image/jpeg','42 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:48:11','2022-08-16 07:48:11',1),(50,'CCleaner ΓÇô Phone Cleaner','','','icon','ccleaner-phone-cleaner-icon.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-icon.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-icon-150.jpg','image/jpeg','100 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:48:12','2022-08-16 07:48:12',1),(51,'CCleaner ΓÇô Phone Cleaner 5','','','screenshoot','ccleaner-phone-cleaner-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-5-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(52,'CCleaner ΓÇô Phone Cleaner 3','','','screenshoot','ccleaner-phone-cleaner-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-3-screenshoot-150.jpg','image/jpeg','43 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(53,'CCleaner ΓÇô Phone Cleaner 1','','','screenshoot','ccleaner-phone-cleaner-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-1-screenshoot-150.jpg','image/jpeg','43 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(54,'CCleaner ΓÇô Phone Cleaner 0','','','screenshoot','ccleaner-phone-cleaner-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-0-screenshoot-150.jpg','image/jpeg','37 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(55,'CCleaner ΓÇô Phone Cleaner 4','','','screenshoot','ccleaner-phone-cleaner-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-4-screenshoot-150.jpg','image/jpeg','43 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(56,'CCleaner ΓÇô Phone Cleaner 2','','','screenshoot','ccleaner-phone-cleaner-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-2-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(57,'CCleaner ΓÇô Phone Cleaner 7','','','screenshoot','ccleaner-phone-cleaner-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-7-screenshoot-150.jpg','image/jpeg','48 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(58,'CCleaner ΓÇô Phone Cleaner 6','','','screenshoot','ccleaner-phone-cleaner-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-6-screenshoot-150.jpg','image/jpeg','59 Bytes','screenshoot',265,512,'265x512','2022-08-16 07:48:13','2022-08-16 07:48:13',1),(59,'Waze Navigation & Live Traffic','','','thumbnail','waze-navigation-live-traffic-thumbnail.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-thumbnail.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-thumbnail-150.jpg','image/jpeg','50 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:49:03','2022-08-16 07:49:03',1),(60,'Waze Navigation & Live Traffic','','','icon','waze-navigation-live-traffic-icon.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-icon.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-icon-150.jpg','image/jpeg','35 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:49:04','2022-08-16 07:49:04',1),(61,'Waze Navigation & Live Traffic 0','','','screenshoot','waze-navigation-live-traffic-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-0-screenshoot-150.jpg','image/jpeg','52 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(62,'Waze Navigation & Live Traffic 3','','','screenshoot','waze-navigation-live-traffic-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-3-screenshoot-150.jpg','image/jpeg','60 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(63,'Waze Navigation & Live Traffic 5','','','screenshoot','waze-navigation-live-traffic-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-5-screenshoot-150.jpg','image/jpeg','49 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(64,'Waze Navigation & Live Traffic 4','','','screenshoot','waze-navigation-live-traffic-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-4-screenshoot-150.jpg','image/jpeg','69 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(65,'Waze Navigation & Live Traffic 2','','','screenshoot','waze-navigation-live-traffic-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-2-screenshoot-150.jpg','image/jpeg','71 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(66,'Waze Navigation & Live Traffic 6','','','screenshoot','waze-navigation-live-traffic-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-6-screenshoot-150.jpg','image/jpeg','67 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:05','2022-08-16 07:49:05',1),(67,'Waze Navigation & Live Traffic 1','','','screenshoot','waze-navigation-live-traffic-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-1-screenshoot-150.jpg','image/jpeg','57 Bytes','screenshoot',512,304,'300x179,512x304','2022-08-16 07:49:06','2022-08-16 07:49:06',1),(68,'Luminous Black - Poweramp Skin','','','thumbnail','luminous-black-poweramp-skin-thumbnail.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-thumbnail.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-thumbnail-150.jpg','image/jpeg','106 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:50:27','2022-08-16 07:50:27',1),(69,'Luminous Black - Poweramp Skin','','','icon','luminous-black-poweramp-skin-icon.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-icon.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-icon-150.jpg','image/jpeg','8 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:50:28','2022-08-16 07:50:28',1),(70,'Luminous Black - Poweramp Skin 0','','','screenshoot','luminous-black-poweramp-skin-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-0-screenshoot-150.jpg','image/jpeg','61 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(71,'Luminous Black - Poweramp Skin 6','','','screenshoot','luminous-black-poweramp-skin-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-6-screenshoot-150.jpg','image/jpeg','25 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(72,'Luminous Black - Poweramp Skin 4','','','screenshoot','luminous-black-poweramp-skin-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-4-screenshoot-150.jpg','image/jpeg','140 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(73,'Luminous Black - Poweramp Skin 5','','','screenshoot','luminous-black-poweramp-skin-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-5-screenshoot-150.jpg','image/jpeg','21 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(74,'Luminous Black - Poweramp Skin 7','','','screenshoot','luminous-black-poweramp-skin-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-7-screenshoot-150.jpg','image/jpeg','34 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(75,'Luminous Black - Poweramp Skin 1','','','screenshoot','luminous-black-poweramp-skin-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-1-screenshoot-150.jpg','image/jpeg','59 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(76,'Luminous Black - Poweramp Skin 2','','','screenshoot','luminous-black-poweramp-skin-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-2-screenshoot-150.jpg','image/jpeg','70 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(77,'Luminous Black - Poweramp Skin 3','','','screenshoot','luminous-black-poweramp-skin-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-3-screenshoot-150.jpg','image/jpeg','98 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:50:29','2022-08-16 07:50:29',1),(78,'Crispy Icon Pack','','','thumbnail','crispy-icon-pack-thumbnail.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-thumbnail.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-thumbnail-150.jpg','image/jpeg','133 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:51:19','2022-08-16 07:51:19',1),(79,'Crispy Icon Pack','','','icon','crispy-icon-pack-icon.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-icon.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-icon-150.jpg','image/jpeg','32 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:51:19','2022-08-16 07:51:19',1),(80,'Crispy Icon Pack 0','','','screenshoot','crispy-icon-pack-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-0-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',236,512,'236x512','2022-08-16 07:51:21','2022-08-16 07:51:21',1),(81,'Crispy Icon Pack 2','','','screenshoot','crispy-icon-pack-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-2-screenshoot-150.jpg','image/jpeg','291 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:21','2022-08-16 07:51:21',1),(82,'Crispy Icon Pack 1','','','screenshoot','crispy-icon-pack-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-1-screenshoot-150.jpg','image/jpeg','289 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:22','2022-08-16 07:51:22',1),(83,'Crispy Icon Pack 3','','','screenshoot','crispy-icon-pack-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-3-screenshoot-150.jpg','image/jpeg','295 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:22','2022-08-16 07:51:22',1),(84,'Crispy Icon Pack 4','','','screenshoot','crispy-icon-pack-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-4-screenshoot-150.jpg','image/jpeg','299 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:22','2022-08-16 07:51:22',1),(85,'Crispy Icon Pack 6','','','screenshoot','crispy-icon-pack-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-6-screenshoot-150.jpg','image/jpeg','298 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:22','2022-08-16 07:51:22',1),(86,'Crispy Icon Pack 5','','','screenshoot','crispy-icon-pack-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/crispy-icon-pack-5-screenshoot-150.jpg','image/jpeg','296 Bytes','screenshoot',512,512,'300x300,512x512','2022-08-16 07:51:22','2022-08-16 07:51:22',1),(87,'Super Quick Settings Pro','','','thumbnail','super-quick-settings-pro-thumbnail.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-thumbnail.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-thumbnail-150.jpg','image/jpeg','37 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:52:15','2022-08-16 07:52:15',1),(88,'Super Quick Settings Pro','','','icon','super-quick-settings-pro-icon.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-icon.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-icon-150.jpg','image/jpeg','58 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:52:16','2022-08-16 07:52:16',1),(89,'Super Quick Settings Pro 0','','','screenshoot','super-quick-settings-pro-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-0-screenshoot-150.jpg','image/jpeg','60 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:52:16','2022-08-16 07:52:16',1),(90,'Super Quick Settings Pro 1','','','screenshoot','super-quick-settings-pro-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-1-screenshoot-150.jpg','image/jpeg','33 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:52:17','2022-08-16 07:52:17',1),(91,'Super Quick Settings Pro 4','','','screenshoot','super-quick-settings-pro-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-4-screenshoot-150.jpg','image/jpeg','63 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:52:17','2022-08-16 07:52:17',1),(92,'Super Quick Settings Pro 2','','','screenshoot','super-quick-settings-pro-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-2-screenshoot-150.jpg','image/jpeg','60 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:52:17','2022-08-16 07:52:17',1),(93,'Super Quick Settings Pro 3','','','screenshoot','super-quick-settings-pro-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-quick-settings-pro-3-screenshoot-150.jpg','image/jpeg','61 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:52:17','2022-08-16 07:52:17',1),(94,'AppChecker - App & System info','','','thumbnail','appchecker-app-system-info-thumbnail.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-thumbnail.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-thumbnail-150.jpg','image/jpeg','103 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:53:25','2022-08-16 07:53:25',1),(95,'AppChecker - App & System info','','','icon','appchecker-app-system-info-icon.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-icon.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-icon-150.jpg','image/jpeg','11 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:53:25','2022-08-16 07:53:25',1),(96,'AppChecker - App & System info 0','','','screenshoot','appchecker-app-system-info-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-0-screenshoot-150.jpg','image/jpeg','159 Bytes','screenshoot',248,512,'248x512','2022-08-16 07:53:26','2022-08-16 07:53:26',1),(97,'AppChecker - App & System info 3','','','screenshoot','appchecker-app-system-info-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-3-screenshoot-150.jpg','image/jpeg','70 Bytes','screenshoot',248,512,'248x512','2022-08-16 07:53:26','2022-08-16 07:53:26',1),(98,'AppChecker - App & System info 4','','','screenshoot','appchecker-app-system-info-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-4-screenshoot-150.jpg','image/jpeg','70 Bytes','screenshoot',248,512,'248x512','2022-08-16 07:53:26','2022-08-16 07:53:26',1),(99,'AppChecker - App & System info 2','','','screenshoot','appchecker-app-system-info-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-2-screenshoot-150.jpg','image/jpeg','124 Bytes','screenshoot',248,512,'248x512','2022-08-16 07:53:26','2022-08-16 07:53:26',1),(100,'AppChecker - App & System info 1','','','screenshoot','appchecker-app-system-info-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/appchecker-app-system-info-1-screenshoot-150.jpg','image/jpeg','90 Bytes','screenshoot',248,512,'248x512','2022-08-16 07:53:26','2022-08-16 07:53:26',1),(101,'PLAYit-All in One Video Player','','','thumbnail','playit-all-in-one-video-player-thumbnail.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-thumbnail.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-thumbnail-150.jpg','image/jpeg','27 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:54:12','2022-08-16 07:54:12',1),(102,'PLAYit-All in One Video Player','','','icon','playit-all-in-one-video-player-icon.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-icon.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-icon-150.jpg','image/jpeg','147 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:54:12','2022-08-16 07:54:12',1),(103,'PLAYit-All in One Video Player 0','','','screenshoot','playit-all-in-one-video-player-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-0-screenshoot-150.jpg','image/jpeg','33 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:13','2022-08-16 07:54:13',1),(104,'PLAYit-All in One Video Player 1','','','screenshoot','playit-all-in-one-video-player-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-1-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(105,'PLAYit-All in One Video Player 2','','','screenshoot','playit-all-in-one-video-player-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-2-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(106,'PLAYit-All in One Video Player 3','','','screenshoot','playit-all-in-one-video-player-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-3-screenshoot-150.jpg','image/jpeg','51 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(107,'PLAYit-All in One Video Player 5','','','screenshoot','playit-all-in-one-video-player-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-5-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(108,'PLAYit-All in One Video Player 4','','','screenshoot','playit-all-in-one-video-player-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-4-screenshoot-150.jpg','image/jpeg','44 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(109,'PLAYit-All in One Video Player 7','','','screenshoot','playit-all-in-one-video-player-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-7-screenshoot-150.jpg','image/jpeg','42 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(110,'PLAYit-All in One Video Player 6','','','screenshoot','playit-all-in-one-video-player-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-6-screenshoot-150.jpg','image/jpeg','44 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:54:14','2022-08-16 07:54:14',1),(111,'PhotoStamp Camera','','','thumbnail','photostamp-camera-thumbnail.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-thumbnail.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-thumbnail-150.jpg','image/jpeg','50 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:56:45','2022-08-16 07:56:45',1),(112,'PhotoStamp Camera','','','icon','photostamp-camera-icon.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-icon.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-icon-150.jpg','image/jpeg','66 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:56:46','2022-08-16 07:56:46',1),(113,'PhotoStamp Camera 3','','','screenshoot','photostamp-camera-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-3-screenshoot-150.jpg','image/jpeg','44 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:47','2022-08-16 07:56:47',1),(114,'PhotoStamp Camera 2','','','screenshoot','photostamp-camera-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-2-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:47','2022-08-16 07:56:47',1),(115,'PhotoStamp Camera 0','','','screenshoot','photostamp-camera-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-0-screenshoot-150.jpg','image/jpeg','154 Bytes','screenshoot',276,512,'276x512','2022-08-16 07:56:47','2022-08-16 07:56:47',1),(116,'PhotoStamp Camera 1','','','screenshoot','photostamp-camera-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-1-screenshoot-150.jpg','image/jpeg','39 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:48','2022-08-16 07:56:48',1),(117,'PhotoStamp Camera 7','','','screenshoot','photostamp-camera-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-7-screenshoot-150.jpg','image/jpeg','120 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:48','2022-08-16 07:56:48',1),(118,'PhotoStamp Camera 4','','','screenshoot','photostamp-camera-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-4-screenshoot-150.jpg','image/jpeg','61 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:48','2022-08-16 07:56:48',1),(119,'PhotoStamp Camera 6','','','screenshoot','photostamp-camera-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-6-screenshoot-150.jpg','image/jpeg','68 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:48','2022-08-16 07:56:48',1),(120,'PhotoStamp Camera 5','','','screenshoot','photostamp-camera-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/photostamp-camera-5-screenshoot-150.jpg','image/jpeg','165 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:56:48','2022-08-16 07:56:48',1),(121,'Dynasty Warriors: Overlords','','','thumbnail','dynasty-warriors-overlords-thumbnail.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-thumbnail.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-thumbnail-150.jpg','image/jpeg','76 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:58:31','2022-08-16 07:58:31',1),(122,'Dynasty Warriors: Overlords','','','icon','dynasty-warriors-overlords-icon.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-icon.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-icon-150.jpg','image/jpeg','559 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:58:32','2022-08-16 07:58:32',1),(123,'Dynasty Warriors: Overlords 6','','','screenshoot','dynasty-warriors-overlords-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-6-screenshoot-150.jpg','image/jpeg','93 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:33','2022-08-16 07:58:33',1),(124,'Dynasty Warriors: Overlords 0','','','screenshoot','dynasty-warriors-overlords-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-0-screenshoot-150.jpg','image/jpeg','87 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:33','2022-08-16 07:58:33',1),(125,'Dynasty Warriors: Overlords 2','','','screenshoot','dynasty-warriors-overlords-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-2-screenshoot-150.jpg','image/jpeg','91 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:33','2022-08-16 07:58:33',1),(126,'Dynasty Warriors: Overlords 1','','','screenshoot','dynasty-warriors-overlords-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-1-screenshoot-150.jpg','image/jpeg','91 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:33','2022-08-16 07:58:33',1),(127,'Dynasty Warriors: Overlords 4','','','screenshoot','dynasty-warriors-overlords-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-4-screenshoot-150.jpg','image/jpeg','101 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:34','2022-08-16 07:58:34',1),(128,'Dynasty Warriors: Overlords 7','','','screenshoot','dynasty-warriors-overlords-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-7-screenshoot-150.jpg','image/jpeg','62 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 07:58:34','2022-08-16 07:58:34',1),(129,'Dynasty Warriors: Overlords 5','','','screenshoot','dynasty-warriors-overlords-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-5-screenshoot-150.jpg','image/jpeg','87 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:34','2022-08-16 07:58:34',1),(130,'Dynasty Warriors: Overlords 3','','','screenshoot','dynasty-warriors-overlords-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-3-screenshoot-150.jpg','image/jpeg','82 Bytes','screenshoot',512,320,'300x188,512x320','2022-08-16 07:58:34','2022-08-16 07:58:34',1),(131,'Zombie Idle Defense','','','thumbnail','zombie-idle-defense-thumbnail.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-thumbnail.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-thumbnail-150.jpg','image/jpeg','169 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 07:59:24','2022-08-16 07:59:24',1),(132,'Zombie Idle Defense','','','icon','zombie-idle-defense-icon.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-icon.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-icon-150.jpg','image/jpeg','260 Bytes','icon',512,512,'300x300,512x512','2022-08-16 07:59:25','2022-08-16 07:59:25',1),(133,'Zombie Idle Defense 1','','','screenshoot','zombie-idle-defense-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-1-screenshoot-150.jpg','image/jpeg','54 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(134,'Zombie Idle Defense 5','','','screenshoot','zombie-idle-defense-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-5-screenshoot-150.jpg','image/jpeg','72 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(135,'Zombie Idle Defense 7','','','screenshoot','zombie-idle-defense-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-7-screenshoot-150.jpg','image/jpeg','75 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(136,'Zombie Idle Defense 3','','','screenshoot','zombie-idle-defense-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-3-screenshoot-150.jpg','image/jpeg','253 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(137,'Zombie Idle Defense 2','','','screenshoot','zombie-idle-defense-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-2-screenshoot-150.jpg','image/jpeg','64 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(138,'Zombie Idle Defense 0','','','screenshoot','zombie-idle-defense-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-0-screenshoot-150.jpg','image/jpeg','74 Bytes','screenshoot',288,512,'288x512','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(139,'Zombie Idle Defense 4','','','screenshoot','zombie-idle-defense-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-4-screenshoot-150.jpg','image/jpeg','218 Bytes','screenshoot',290,512,'290x512','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(140,'Zombie Idle Defense 6','','','screenshoot','zombie-idle-defense-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-idle-defense-6-screenshoot-150.jpg','image/jpeg','56 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 07:59:26','2022-08-16 07:59:26',1),(141,'Idle Slayer','','','thumbnail','idle-slayer-thumbnail.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-thumbnail.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-thumbnail-150.jpg','image/jpeg','58 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:00:34','2022-08-16 08:00:34',1),(142,'Idle Slayer','','','icon','idle-slayer-icon.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-icon.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-icon-150.jpg','image/jpeg','65 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:00:35','2022-08-16 08:00:35',1),(143,'Idle Slayer 4','','','screenshoot','idle-slayer-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-4-screenshoot-150.jpg','image/jpeg','43 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(144,'Idle Slayer 5','','','screenshoot','idle-slayer-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-5-screenshoot-150.jpg','image/jpeg','64 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(145,'Idle Slayer 7','','','screenshoot','idle-slayer-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-7-screenshoot-150.jpg','image/jpeg','101 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(146,'Idle Slayer 3','','','screenshoot','idle-slayer-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-3-screenshoot-150.jpg','image/jpeg','116 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(147,'Idle Slayer 0','','','screenshoot','idle-slayer-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-0-screenshoot-150.jpg','image/jpeg','102 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(148,'Idle Slayer 2','','','screenshoot','idle-slayer-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-2-screenshoot-150.jpg','image/jpeg','119 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(149,'Idle Slayer 1','','','screenshoot','idle-slayer-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-1-screenshoot-150.jpg','image/jpeg','116 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(150,'Idle Slayer 6','','','screenshoot','idle-slayer-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/idle-slayer-6-screenshoot-150.jpg','image/jpeg','98 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:00:36','2022-08-16 08:00:36',1),(151,'Mergeland','','','thumbnail','mergeland-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mergeland-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mergeland-thumbnail-150.jpg','image/jpeg','59 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:01:21','2022-08-16 08:01:21',1),(152,'Mergeland','','','icon','mergeland-icon.jpg','http://localhost:8181/uploads/2022/8/mergeland-icon.jpg','http://localhost:8181/uploads/2022/8/mergeland-icon-150.jpg','image/jpeg','352 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:01:22','2022-08-16 08:01:22',1),(153,'Mergeland 2','','','screenshoot','mergeland-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-2-screenshoot-150.jpg','image/jpeg','80 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:23','2022-08-16 08:01:23',1),(154,'Mergeland 0','','','screenshoot','mergeland-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-0-screenshoot-150.jpg','image/jpeg','76 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:23','2022-08-16 08:01:23',1),(155,'Mergeland 5','','','screenshoot','mergeland-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-5-screenshoot-150.jpg','image/jpeg','76 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:24','2022-08-16 08:01:24',1),(156,'Mergeland 3','','','screenshoot','mergeland-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-3-screenshoot-150.jpg','image/jpeg','75 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:24','2022-08-16 08:01:24',1),(157,'Mergeland 4','','','screenshoot','mergeland-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-4-screenshoot-150.jpg','image/jpeg','79 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:24','2022-08-16 08:01:24',1),(158,'Mergeland 1','','','screenshoot','mergeland-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-1-screenshoot-150.jpg','image/jpeg','71 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:24','2022-08-16 08:01:24',1),(159,'Mergeland 6','','','screenshoot','mergeland-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mergeland-6-screenshoot-150.jpg','image/jpeg','112 Bytes','screenshoot',512,289,'300x170,512x289','2022-08-16 08:01:24','2022-08-16 08:01:24',1),(160,'Zombie War - The Last Survivor','','','thumbnail','zombie-war-the-last-survivor-thumbnail.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-thumbnail.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-thumbnail-150.jpg','image/jpeg','65 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:02:36','2022-08-16 08:02:36',1),(161,'Zombie War - The Last Survivor','','','icon','zombie-war-the-last-survivor-icon.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-icon.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-icon-150.jpg','image/jpeg','159 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:02:37','2022-08-16 08:02:37',1),(162,'Zombie War - The Last Survivor 3','','','screenshoot','zombie-war-the-last-survivor-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-3-screenshoot-150.jpg','image/jpeg','92 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:02:39','2022-08-16 08:02:39',1),(163,'Zombie War - The Last Survivor 1','','','screenshoot','zombie-war-the-last-survivor-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-1-screenshoot-150.jpg','image/jpeg','210 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:02:41','2022-08-16 08:02:41',1),(164,'Zombie War - The Last Survivor 2','','','screenshoot','zombie-war-the-last-survivor-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-2-screenshoot-150.jpg','image/jpeg','289 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:02:41','2022-08-16 08:02:41',1),(165,'Zombie War - The Last Survivor 0','','','screenshoot','zombie-war-the-last-survivor-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-0-screenshoot-150.jpg','image/jpeg','204 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:02:41','2022-08-16 08:02:41',1),(166,'Stickman Archer online','','','thumbnail','stickman-archer-online-thumbnail.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-thumbnail.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-thumbnail-150.jpg','image/jpeg','187 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:03:36','2022-08-16 08:03:36',1),(167,'Stickman Archer online','','','icon','stickman-archer-online-icon.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-icon.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-icon-150.jpg','image/jpeg','237 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:03:42','2022-08-16 08:03:42',1),(168,'Stickman Archer online 5','','','screenshoot','stickman-archer-online-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-5-screenshoot-150.jpg','image/jpeg','64 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:47','2022-08-16 08:03:47',1),(169,'Stickman Archer online 4','','','screenshoot','stickman-archer-online-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-4-screenshoot-150.jpg','image/jpeg','59 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(170,'Stickman Archer online 0','','','screenshoot','stickman-archer-online-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-0-screenshoot-150.jpg','image/jpeg','55 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(171,'Stickman Archer online 6','','','screenshoot','stickman-archer-online-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-6-screenshoot-150.jpg','image/jpeg','48 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(172,'Stickman Archer online 1','','','screenshoot','stickman-archer-online-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-1-screenshoot-150.jpg','image/jpeg','69 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(173,'Stickman Archer online 3','','','screenshoot','stickman-archer-online-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-3-screenshoot-150.jpg','image/jpeg','64 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(174,'Stickman Archer online 2','','','screenshoot','stickman-archer-online-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/stickman-archer-online-2-screenshoot-150.jpg','image/jpeg','61 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:03:48','2022-08-16 08:03:48',1),(175,'Empire Takeover: Rush & Crush','','','thumbnail','empire-takeover-rush-crush-thumbnail.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-thumbnail.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-thumbnail-150.jpg','image/jpeg','66 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:04:47','2022-08-16 08:04:47',1),(176,'Empire Takeover: Rush & Crush','','','icon','empire-takeover-rush-crush-icon.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-icon.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-icon-150.jpg','image/jpeg','251 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:04:48','2022-08-16 08:04:48',1),(177,'Empire Takeover: Rush & Crush 5','','','screenshoot','empire-takeover-rush-crush-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-5-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',249,512,'249x512','2022-08-16 08:04:49','2022-08-16 08:04:49',1),(178,'Empire Takeover: Rush & Crush 4','','','screenshoot','empire-takeover-rush-crush-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-4-screenshoot-150.jpg','image/jpeg','51 Bytes','screenshoot',249,512,'249x512','2022-08-16 08:04:49','2022-08-16 08:04:49',1),(179,'Empire Takeover: Rush & Crush 1','','','screenshoot','empire-takeover-rush-crush-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-1-screenshoot-150.jpg','image/jpeg','52 Bytes','screenshoot',249,512,'249x512','2022-08-16 08:04:49','2022-08-16 08:04:49',1),(180,'Empire Takeover: Rush & Crush 3','','','screenshoot','empire-takeover-rush-crush-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-3-screenshoot-150.jpg','image/jpeg','55 Bytes','screenshoot',512,250,'300x147,512x250','2022-08-16 08:04:49','2022-08-16 08:04:49',1),(181,'Empire Takeover: Rush & Crush 0','','','screenshoot','empire-takeover-rush-crush-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-0-screenshoot-150.jpg','image/jpeg','71 Bytes','screenshoot',250,512,'250x512','2022-08-16 08:04:49','2022-08-16 08:04:49',1),(182,'Empire Takeover: Rush & Crush 2','','','screenshoot','empire-takeover-rush-crush-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-2-screenshoot-150.jpg','image/jpeg','53 Bytes','screenshoot',249,512,'249x512','2022-08-16 08:04:50','2022-08-16 08:04:50',1),(183,'Super Stickman Dragon Warriors','','','thumbnail','super-stickman-dragon-warriors-thumbnail.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-thumbnail.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-thumbnail-150.jpg','image/jpeg','207 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:05:47','2022-08-16 08:05:47',1),(184,'Super Stickman Dragon Warriors','','','icon','super-stickman-dragon-warriors-icon.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-icon.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-icon-150.jpg','image/jpeg','332 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:05:48','2022-08-16 08:05:48',1),(185,'Super Stickman Dragon Warriors 6','','','screenshoot','super-stickman-dragon-warriors-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-6-screenshoot-150.jpg','image/jpeg','189 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:49','2022-08-16 08:05:49',1),(186,'Super Stickman Dragon Warriors 0','','','screenshoot','super-stickman-dragon-warriors-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-0-screenshoot-150.jpg','image/jpeg','208 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:49','2022-08-16 08:05:49',1),(187,'Super Stickman Dragon Warriors 5','','','screenshoot','super-stickman-dragon-warriors-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-5-screenshoot-150.jpg','image/jpeg','198 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:49','2022-08-16 08:05:49',1),(188,'Super Stickman Dragon Warriors 1','','','screenshoot','super-stickman-dragon-warriors-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-1-screenshoot-150.jpg','image/jpeg','199 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:49','2022-08-16 08:05:49',1),(189,'Super Stickman Dragon Warriors 2','','','screenshoot','super-stickman-dragon-warriors-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-2-screenshoot-150.jpg','image/jpeg','215 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:50','2022-08-16 08:05:50',1),(190,'Super Stickman Dragon Warriors 3','','','screenshoot','super-stickman-dragon-warriors-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-3-screenshoot-150.jpg','image/jpeg','173 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:50','2022-08-16 08:05:50',1),(191,'Super Stickman Dragon Warriors 7','','','screenshoot','super-stickman-dragon-warriors-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-7-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-7-screenshoot-150.jpg','image/jpeg','202 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:50','2022-08-16 08:05:50',1),(192,'Super Stickman Dragon Warriors 4','','','screenshoot','super-stickman-dragon-warriors-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-4-screenshoot-150.jpg','image/jpeg','186 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:05:50','2022-08-16 08:05:50',1),(193,'Wing Fighter','','','thumbnail','wing-fighter-thumbnail.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-thumbnail.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-thumbnail-150.jpg','image/jpeg','232 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:06:47','2022-08-16 08:06:47',1),(194,'Wing Fighter','','','icon','wing-fighter-icon.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-icon.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-icon-150.jpg','image/jpeg','397 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:06:49','2022-08-16 08:06:49',1),(195,'Wing Fighter 0','','','screenshoot','wing-fighter-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-0-screenshoot-150.jpg','image/jpeg','75 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(196,'Wing Fighter 3','','','screenshoot','wing-fighter-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-3-screenshoot-150.jpg','image/jpeg','77 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(197,'Wing Fighter 1','','','screenshoot','wing-fighter-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-1-screenshoot-150.jpg','image/jpeg','69 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(198,'Wing Fighter 6','','','screenshoot','wing-fighter-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-6-screenshoot-150.jpg','image/jpeg','67 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(199,'Wing Fighter 4','','','screenshoot','wing-fighter-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-4-screenshoot-150.jpg','image/jpeg','71 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(200,'Wing Fighter 5','','','screenshoot','wing-fighter-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-5-screenshoot-150.jpg','image/jpeg','74 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:55','2022-08-16 08:06:55',1),(201,'Wing Fighter 2','','','screenshoot','wing-fighter-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/wing-fighter-2-screenshoot-150.jpg','image/jpeg','92 Bytes','screenshoot',288,512,'288x512','2022-08-16 08:06:56','2022-08-16 08:06:56',1),(202,'Mad Skills Motocross 2','','','thumbnail','mad-skills-motocross-2-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-thumbnail.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-thumbnail-150.jpg','image/jpeg','190 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:08:44','2022-08-16 08:08:44',1),(203,'Mad Skills Motocross 2','','','icon','mad-skills-motocross-2-icon.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-icon.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-icon-150.jpg','image/jpeg','431 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:08:45','2022-08-16 08:08:45',1),(204,'Mad Skills Motocross 2 1','','','screenshoot','mad-skills-motocross-2-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-1-screenshoot-150.jpg','image/jpeg','227 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:47','2022-08-16 08:08:47',1),(205,'Mad Skills Motocross 2 4','','','screenshoot','mad-skills-motocross-2-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-4-screenshoot-150.jpg','image/jpeg','237 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:48','2022-08-16 08:08:48',1),(206,'Mad Skills Motocross 2 0','','','screenshoot','mad-skills-motocross-2-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-0-screenshoot-150.jpg','image/jpeg','256 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:48','2022-08-16 08:08:48',1),(207,'Mad Skills Motocross 2 5','','','screenshoot','mad-skills-motocross-2-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-5-screenshoot-150.jpg','image/jpeg','252 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:48','2022-08-16 08:08:48',1),(208,'Mad Skills Motocross 2 3','','','screenshoot','mad-skills-motocross-2-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-3-screenshoot-150.jpg','image/jpeg','192 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:48','2022-08-16 08:08:48',1),(209,'Mad Skills Motocross 2 2','','','screenshoot','mad-skills-motocross-2-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-2-screenshoot-150.jpg','image/jpeg','260 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:08:48','2022-08-16 08:08:48',1),(210,'Last Pirate: Survival Island Adventure','','','thumbnail','last-pirate-survival-island-adventure-thumbnail.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-thumbnail.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-thumbnail-150.jpg','image/jpeg','231 Bytes','thumbnail',512,250,'300x147,512x250','2022-08-16 08:10:06','2022-08-16 08:10:06',1),(211,'Last Pirate: Survival Island Adventure','','','icon','last-pirate-survival-island-adventure-icon.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-icon.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-icon-150.jpg','image/jpeg','555 Bytes','icon',512,512,'300x300,512x512','2022-08-16 08:10:07','2022-08-16 08:10:07',1),(212,'Last Pirate: Survival Island Adventure 1','','','screenshoot','last-pirate-survival-island-adventure-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-1-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-1-screenshoot-150.jpg','image/jpeg','56 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:08','2022-08-16 08:10:08',1),(213,'Last Pirate: Survival Island Adventure 0','','','screenshoot','last-pirate-survival-island-adventure-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-0-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-0-screenshoot-150.jpg','image/jpeg','315 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:08','2022-08-16 08:10:08',1),(214,'Last Pirate: Survival Island Adventure 5','','','screenshoot','last-pirate-survival-island-adventure-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-5-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-5-screenshoot-150.jpg','image/jpeg','364 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:09','2022-08-16 08:10:09',1),(215,'Last Pirate: Survival Island Adventure 6','','','screenshoot','last-pirate-survival-island-adventure-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-6-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-6-screenshoot-150.jpg','image/jpeg','108 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:09','2022-08-16 08:10:09',1),(216,'Last Pirate: Survival Island Adventure 3','','','screenshoot','last-pirate-survival-island-adventure-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-3-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-3-screenshoot-150.jpg','image/jpeg','320 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:09','2022-08-16 08:10:09',1),(217,'Last Pirate: Survival Island Adventure 4','','','screenshoot','last-pirate-survival-island-adventure-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-4-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-4-screenshoot-150.jpg','image/jpeg','249 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:09','2022-08-16 08:10:09',1),(218,'Last Pirate: Survival Island Adventure 2','','','screenshoot','last-pirate-survival-island-adventure-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-2-screenshoot.jpg','http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-2-screenshoot-150.jpg','image/jpeg','361 Bytes','screenshoot',512,288,'300x169,512x288','2022-08-16 08:10:09','2022-08-16 08:10:09',1);
/*!40000 ALTER TABLE `cms_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menuitem_langs`
--

DROP TABLE IF EXISTS `cms_menuitem_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menuitem_langs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `langid` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mitemid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mitemid` (`mitemid`),
  CONSTRAINT `cms_menuitem_langs_ibfk_1` FOREIGN KEY (`mitemid`) REFERENCES `cms_menuitems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menuitem_langs`
--

LOCK TABLES `cms_menuitem_langs` WRITE;
/*!40000 ALTER TABLE `cms_menuitem_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_menuitem_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menuitems`
--

DROP TABLE IF EXISTS `cms_menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menuitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `objectid` int DEFAULT '0',
  `objectslug` text,
  `objecttitle` text,
  `alllanguage` tinyint(1) NOT NULL DEFAULT '1',
  `objectlangs` text,
  `numsort` int DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `menuid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menuid` (`menuid`),
  CONSTRAINT `cms_menuitems_ibfk_1` FOREIGN KEY (`menuid`) REFERENCES `cms_menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menuitems`
--

LOCK TABLES `cms_menuitems` WRITE;
/*!40000 ALTER TABLE `cms_menuitems` DISABLE KEYS */;
INSERT INTO `cms_menuitems` VALUES (1,NULL,'Home','home',0,NULL,'Home',1,'en',1,'2022-08-16 07:46:01','2022-08-16 07:46:01','menu-header'),(2,NULL,'Apps','category',3,'apps','Apps',1,'en',2,'2022-08-16 07:46:01','2022-08-16 07:46:01','menu-header'),(3,NULL,'Games','category',2,'games','Games',1,'en',3,'2022-08-16 07:46:01','2022-08-16 07:46:01','menu-header'),(4,NULL,'Home','home',0,NULL,'Home',1,'en',1,'2022-08-23 03:01:42','2022-08-23 03:01:42','menu-footer'),(5,NULL,'Apps','category',3,'apps','Apps',1,'en',2,'2022-08-23 03:01:42','2022-08-23 03:01:42','menu-footer'),(6,NULL,'Games','category',2,'games','Games',1,'en',3,'2022-08-23 03:01:43','2022-08-23 03:01:43','menu-footer'),(7,NULL,'About','post',13,'about','About',1,'en',1,'2022-08-23 03:08:01','2022-08-23 03:08:01','menu-footer-right'),(8,NULL,'Contact','post',15,'contact','Contact',1,'en',2,'2022-08-23 03:08:01','2022-08-23 03:08:01','menu-footer-right');
/*!40000 ALTER TABLE `cms_menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES ('menu-footer','Menu Footer','2022-08-10 10:29:27','2022-08-10 10:29:27'),('menu-footer-right','Menu Footer Right','2022-08-23 03:07:24','2022-08-23 03:07:24'),('menu-header','Menu Header','2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_options`
--

DROP TABLE IF EXISTS `cms_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metakey` varchar(45) NOT NULL,
  `metavalue` text,
  `fieldlabel` text,
  `description` text,
  `inputtype` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_options`
--

LOCK TABLES `cms_options` WRITE;
/*!40000 ALTER TABLE `cms_options` DISABLE KEYS */;
INSERT INTO `cms_options` VALUES (1,'app_title_template','Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apk title random','Tß║úi [appTitle] miß╗àn ph├¡','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(2,'app_description_template','Description Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apk description random','Tß║úi [appTitle] miß╗àn ph├¡','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(3,'app_content_template','<h1>Tß║úi game [appTitle]</h1> <p>Nß╗Öi dung game 1</p> [screenshot]<p>Nß╗Öi dung game 2</p>|','Apk content random','<h1>T├¬n game</h1>\r<p>Nß╗Öi dung game 1</p>\r[screenshot]\r<p>Nß╗Öi dung game 2</p>','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(4,'cate_title_template','Category title [appCategory]|','Category title random','Category title [appCategory]','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(5,'cate_description_template','Category Description [appCategory]|','Category description random','Category description [appTitle]','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(6,'dev_title_template','Developer title [appDeveloper]|','Developer title random','Nh├á ph├ít triß╗ân [appTitle]','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(7,'dev_description_template','Developer description [appDeveloper]|','Developer description random','Nh├á ph├ít triß╗ân [appTitle]','textarea','2022-08-10 10:29:27','2022-08-10 10:29:27'),(8,'off_optimze_image_upload','','Off optimize image upload',NULL,'checkbox','2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_cate_types`
--

DROP TABLE IF EXISTS `cms_post_cate_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_cate_types` (
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ptypeid` varchar(45) NOT NULL,
  `ctypeid` varchar(45) NOT NULL,
  PRIMARY KEY (`ptypeid`,`ctypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_cate_types`
--

LOCK TABLES `cms_post_cate_types` WRITE;
/*!40000 ALTER TABLE `cms_post_cate_types` DISABLE KEYS */;
INSERT INTO `cms_post_cate_types` VALUES ('2022-08-10 10:29:28','2022-08-10 10:29:28','post-apk','category-apk'),('2022-08-10 10:29:28','2022-08-10 10:29:28','post-apk','developer-apk'),('2022-08-10 10:29:28','2022-08-10 10:29:28','post-apk','tags'),('2022-08-10 10:29:28','2022-08-10 10:29:28','post-blog','category-blog'),('2022-08-10 10:29:28','2022-08-10 10:29:28','post-blog','tags');
/*!40000 ALTER TABLE `cms_post_cate_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_cates`
--

DROP TABLE IF EXISTS `cms_post_cates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_cates` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `postid` int NOT NULL,
  `cateid` int NOT NULL,
  PRIMARY KEY (`postid`,`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_cates`
--

LOCK TABLES `cms_post_cates` WRITE;
/*!40000 ALTER TABLE `cms_post_cates` DISABLE KEYS */;
INSERT INTO `cms_post_cates` VALUES ('2022-08-16 04:13:53','2022-08-16 04:13:53',17,4),('2022-08-16 04:13:53','2022-08-16 04:13:53',17,5),('2022-08-16 07:40:24','2022-08-16 07:40:24',18,6),('2022-08-16 07:40:24','2022-08-16 07:40:24',18,7),('2022-08-16 07:41:41','2022-08-16 07:41:41',19,6),('2022-08-16 07:41:41','2022-08-16 07:41:41',19,8),('2022-08-16 07:42:35','2022-08-16 07:42:35',20,9),('2022-08-16 07:42:35','2022-08-16 07:42:35',20,10),('2022-08-16 07:43:34','2022-08-16 07:43:34',21,11),('2022-08-16 07:43:34','2022-08-16 07:43:34',21,12),('2022-08-16 07:48:14','2022-08-16 07:48:14',22,13),('2022-08-16 07:48:14','2022-08-16 07:48:14',22,14),('2022-08-16 07:49:06','2022-08-16 07:49:06',23,15),('2022-08-16 07:49:06','2022-08-16 07:49:06',23,16),('2022-08-16 07:50:30','2022-08-16 07:50:30',24,9),('2022-08-16 07:50:30','2022-08-16 07:50:30',24,17),('2022-08-16 07:51:22','2022-08-16 07:51:22',25,9),('2022-08-16 07:51:22','2022-08-16 07:51:22',25,18),('2022-08-16 07:52:17','2022-08-16 07:52:17',26,13),('2022-08-16 07:52:17','2022-08-16 07:52:17',26,19),('2022-08-16 07:53:26','2022-08-16 07:53:26',27,13),('2022-08-16 07:53:26','2022-08-16 07:53:26',27,20),('2022-08-16 07:54:14','2022-08-16 07:54:14',28,6),('2022-08-16 07:54:14','2022-08-16 07:54:14',28,21),('2022-08-16 07:56:48','2022-08-16 07:56:48',29,22),('2022-08-16 07:56:48','2022-08-16 07:56:48',29,23),('2022-08-16 07:58:34','2022-08-16 07:58:34',30,24),('2022-08-16 07:58:34','2022-08-16 07:58:34',30,25),('2022-08-16 07:59:27','2022-08-16 07:59:27',31,26),('2022-08-16 07:59:27','2022-08-16 07:59:27',31,27),('2022-08-16 08:00:37','2022-08-16 08:00:37',32,24),('2022-08-16 08:00:37','2022-08-16 08:00:37',32,28),('2022-08-16 08:01:24','2022-08-16 08:01:24',33,29),('2022-08-16 08:01:24','2022-08-16 08:01:24',33,30),('2022-08-16 08:02:41','2022-08-16 08:02:41',34,4),('2022-08-16 08:02:41','2022-08-16 08:02:41',34,31),('2022-08-16 08:03:48','2022-08-16 08:03:48',35,4),('2022-08-16 08:03:48','2022-08-16 08:03:48',35,32),('2022-08-16 08:04:50','2022-08-16 08:04:50',36,33),('2022-08-16 08:04:50','2022-08-16 08:04:50',36,34),('2022-08-16 08:05:50','2022-08-16 08:05:50',37,4),('2022-08-16 08:05:50','2022-08-16 08:05:50',37,35),('2022-08-16 08:06:56','2022-08-16 08:06:56',38,26),('2022-08-16 08:06:56','2022-08-16 08:06:56',38,36),('2022-08-16 08:08:48','2022-08-16 08:08:48',39,37),('2022-08-16 08:08:48','2022-08-16 08:08:48',39,38),('2022-08-16 08:10:09','2022-08-16 08:10:09',40,29),('2022-08-16 08:10:09','2022-08-16 08:10:09',40,39);
/*!40000 ALTER TABLE `cms_post_cates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_screenshoots`
--

DROP TABLE IF EXISTS `cms_post_screenshoots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_screenshoots` (
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mediaid` int NOT NULL,
  `postid` int NOT NULL,
  PRIMARY KEY (`mediaid`,`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_screenshoots`
--

LOCK TABLES `cms_post_screenshoots` WRITE;
/*!40000 ALTER TABLE `cms_post_screenshoots` DISABLE KEYS */;
INSERT INTO `cms_post_screenshoots` VALUES ('2022-08-16 04:13:53','2022-08-16 04:13:53',3,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',4,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',5,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',6,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',7,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',8,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',9,17),('2022-08-16 04:13:53','2022-08-16 04:13:53',10,17),('2022-08-16 07:40:24','2022-08-16 07:40:24',13,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',14,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',15,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',16,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',17,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',18,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',19,18),('2022-08-16 07:40:24','2022-08-16 07:40:24',20,18),('2022-08-16 07:41:41','2022-08-16 07:41:41',23,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',24,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',25,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',26,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',27,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',28,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',29,19),('2022-08-16 07:41:41','2022-08-16 07:41:41',30,19),('2022-08-16 07:42:35','2022-08-16 07:42:35',33,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',34,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',35,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',36,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',37,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',38,20),('2022-08-16 07:42:35','2022-08-16 07:42:35',39,20),('2022-08-16 07:43:34','2022-08-16 07:43:34',42,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',43,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',44,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',45,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',46,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',47,21),('2022-08-16 07:43:34','2022-08-16 07:43:34',48,21),('2022-08-16 07:48:14','2022-08-16 07:48:14',51,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',52,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',53,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',54,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',55,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',56,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',57,22),('2022-08-16 07:48:14','2022-08-16 07:48:14',58,22),('2022-08-16 07:49:06','2022-08-16 07:49:06',61,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',62,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',63,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',64,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',65,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',66,23),('2022-08-16 07:49:06','2022-08-16 07:49:06',67,23),('2022-08-16 07:50:30','2022-08-16 07:50:30',70,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',71,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',72,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',73,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',74,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',75,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',76,24),('2022-08-16 07:50:30','2022-08-16 07:50:30',77,24),('2022-08-16 07:51:22','2022-08-16 07:51:22',80,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',81,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',82,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',83,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',84,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',85,25),('2022-08-16 07:51:22','2022-08-16 07:51:22',86,25),('2022-08-16 07:52:17','2022-08-16 07:52:17',89,26),('2022-08-16 07:52:17','2022-08-16 07:52:17',90,26),('2022-08-16 07:52:17','2022-08-16 07:52:17',91,26),('2022-08-16 07:52:17','2022-08-16 07:52:17',92,26),('2022-08-16 07:52:17','2022-08-16 07:52:17',93,26),('2022-08-16 07:53:26','2022-08-16 07:53:26',96,27),('2022-08-16 07:53:26','2022-08-16 07:53:26',97,27),('2022-08-16 07:53:26','2022-08-16 07:53:26',98,27),('2022-08-16 07:53:26','2022-08-16 07:53:26',99,27),('2022-08-16 07:53:26','2022-08-16 07:53:26',100,27),('2022-08-16 07:54:14','2022-08-16 07:54:14',103,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',104,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',105,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',106,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',107,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',108,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',109,28),('2022-08-16 07:54:14','2022-08-16 07:54:14',110,28),('2022-08-16 07:56:48','2022-08-16 07:56:48',113,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',114,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',115,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',116,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',117,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',118,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',119,29),('2022-08-16 07:56:48','2022-08-16 07:56:48',120,29),('2022-08-16 07:58:34','2022-08-16 07:58:34',123,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',124,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',125,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',126,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',127,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',128,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',129,30),('2022-08-16 07:58:34','2022-08-16 07:58:34',130,30),('2022-08-16 07:59:27','2022-08-16 07:59:27',133,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',134,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',135,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',136,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',137,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',138,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',139,31),('2022-08-16 07:59:27','2022-08-16 07:59:27',140,31),('2022-08-16 08:00:37','2022-08-16 08:00:37',143,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',144,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',145,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',146,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',147,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',148,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',149,32),('2022-08-16 08:00:37','2022-08-16 08:00:37',150,32),('2022-08-16 08:01:24','2022-08-16 08:01:24',153,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',154,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',155,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',156,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',157,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',158,33),('2022-08-16 08:01:24','2022-08-16 08:01:24',159,33),('2022-08-16 08:02:41','2022-08-16 08:02:41',162,34),('2022-08-16 08:02:41','2022-08-16 08:02:41',163,34),('2022-08-16 08:02:41','2022-08-16 08:02:41',164,34),('2022-08-16 08:02:41','2022-08-16 08:02:41',165,34),('2022-08-16 08:03:48','2022-08-16 08:03:48',168,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',169,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',170,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',171,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',172,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',173,35),('2022-08-16 08:03:48','2022-08-16 08:03:48',174,35),('2022-08-16 08:04:50','2022-08-16 08:04:50',177,36),('2022-08-16 08:04:50','2022-08-16 08:04:50',178,36),('2022-08-16 08:04:50','2022-08-16 08:04:50',179,36),('2022-08-16 08:04:50','2022-08-16 08:04:50',180,36),('2022-08-16 08:04:50','2022-08-16 08:04:50',181,36),('2022-08-16 08:04:50','2022-08-16 08:04:50',182,36),('2022-08-16 08:05:50','2022-08-16 08:05:50',185,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',186,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',187,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',188,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',189,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',190,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',191,37),('2022-08-16 08:05:50','2022-08-16 08:05:50',192,37),('2022-08-16 08:06:56','2022-08-16 08:06:56',195,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',196,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',197,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',198,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',199,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',200,38),('2022-08-16 08:06:56','2022-08-16 08:06:56',201,38),('2022-08-16 08:08:48','2022-08-16 08:08:48',204,39),('2022-08-16 08:08:48','2022-08-16 08:08:48',205,39),('2022-08-16 08:08:48','2022-08-16 08:08:48',206,39),('2022-08-16 08:08:48','2022-08-16 08:08:48',207,39),('2022-08-16 08:08:48','2022-08-16 08:08:48',208,39),('2022-08-16 08:08:48','2022-08-16 08:08:48',209,39),('2022-08-16 08:10:09','2022-08-16 08:10:09',212,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',213,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',214,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',215,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',216,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',217,40),('2022-08-16 08:10:09','2022-08-16 08:10:09',218,40);
/*!40000 ALTER TABLE `cms_post_screenshoots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_postlangs`
--

DROP TABLE IF EXISTS `cms_postlangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_postlangs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `langid` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `content` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `offadslang` tinyint(1) DEFAULT '0',
  `offadsdownload` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_postlangs_postid_langid` (`postid`,`langid`),
  CONSTRAINT `cms_postlangs_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_postlangs`
--

LOCK TABLES `cms_postlangs` WRITE;
/*!40000 ALTER TABLE `cms_postlangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_postlangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_posts`
--

DROP TABLE IF EXISTS `cms_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `content` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `seoschema` text,
  `posttype` varchar(45) NOT NULL,
  `poststatus` varchar(45) NOT NULL,
  `publishedat` datetime NOT NULL,
  `modifiedat` datetime NOT NULL,
  `postorder` int DEFAULT '0',
  `adsid` int DEFAULT NULL,
  `offadsall` tinyint(1) DEFAULT '0',
  `offads` tinyint(1) DEFAULT '0',
  `offadscontent` tinyint(1) DEFAULT '0',
  `offadsdownload` tinyint(1) DEFAULT '0',
  `adsslot1` text,
  `adsslot2` text,
  `adsslot3` text,
  `adsslot4` text,
  `islikemain` tinyint(1) DEFAULT '1',
  `notenglish` tinyint(1) DEFAULT '0',
  `allowcomment` tinyint(1) DEFAULT '1',
  `commentcount` int DEFAULT '0',
  `likecount` int DEFAULT '0',
  `viewcount` int DEFAULT '0',
  `viewcountday` int DEFAULT '0',
  `viewcountweek` int DEFAULT '0',
  `ratingcount` int DEFAULT '0',
  `ratingaverage` decimal(2,1) DEFAULT '0.0',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `showmodapk` tinyint(1) DEFAULT '1',
  `nolink` tinyint(1) DEFAULT '0',
  `off_update_version` tinyint(1) DEFAULT '0',
  `thumbnail` int DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  `dcateid` int DEFAULT NULL,
  `imgicon` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_posts_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_posts`
--

LOCK TABLES `cms_posts` WRITE;
/*!40000 ALTER TABLE `cms_posts` DISABLE KEYS */;
INSERT INTO `cms_posts` VALUES (1,NULL,'home','Home','',NULL,'Home','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(2,NULL,'search','Search','',NULL,'Search','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(3,NULL,'apk-download','Apk Download','','','Apk Download','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-24 07:51:29',1,NULL,NULL),(4,NULL,'apk-download-2','Apk download 2','','','Apk download 2','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-24 07:51:12',1,NULL,NULL),(5,NULL,'login','Login','',NULL,'Login','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(6,NULL,'register','Register','',NULL,'Register','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(7,NULL,'profile','Profile','',NULL,'Profile','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(8,NULL,'password-recovery','Password recovery','',NULL,'Password recovery','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(9,NULL,'password','Password','',NULL,'Password','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(10,NULL,'comment','Comment','',NULL,'Comment','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(11,NULL,'ringtones','Ringtones','',NULL,'Ringtones','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(12,NULL,'terms-of-use','Terms of use','',NULL,'Terms of use','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(13,NULL,'about','About','',NULL,'About','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(14,NULL,'privacy-policy','Privacy policy','',NULL,'Privacy policy','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(15,NULL,'contact','Contact','',NULL,'Contact','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(16,NULL,'dmca','DMCA','',NULL,'DMCA','','','post-page','published','2022-08-10 10:28:45','2022-08-10 10:28:45',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL,NULL),(17,NULL,'the-sun-origin','The Sun: Origin','','<h1>Tß║úi game The Sun: Origin</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-6\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/the-sun-origin-0-screenshoot.jpg\" alt=\"The Sun: Origin 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','The Sun: Origin','','','post-apk','published','2022-08-16 04:13:07','2022-08-16 04:13:07',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,1,NULL,'2022-08-16 04:13:07','2022-08-16 07:34:11',1,4,2),(18,NULL,'tiktok','TikTok','','<h1>Tß║úi game TikTok</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-13\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/tiktok-0-screenshoot.jpg\" alt=\"TikTok 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','TikTok','','','post-apk','published','2022-08-16 07:40:21','2022-08-16 07:40:21',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,11,NULL,'2022-08-16 07:40:21','2022-08-16 07:40:38',1,6,12),(19,NULL,'mx-player','MX Player','','<h1>Tß║úi game MX Player</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-25\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/mx-player-0-screenshoot.jpg\" alt=\"MX Player 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','MX Player','','','post-apk','published','2022-08-16 07:41:37','2022-08-16 07:41:37',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,21,NULL,'2022-08-16 07:41:37','2022-08-16 07:41:51',1,6,22),(20,NULL,'vera-icon-pack-shapeless-icon','Vera Icon Pack: shapeless icon','','<h1>Tß║úi game Vera Icon Pack: shapeless icon</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-33\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/vera-icon-pack-shapeless-icon-0-screenshoot.jpg\" alt=\"Vera Icon Pack: shapeless icon 0\" width=\"256\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Vera Icon Pack: shapeless icon','','','post-apk','published','2022-08-16 07:42:31','2022-08-16 07:42:31',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,31,NULL,'2022-08-16 07:42:31','2022-08-16 07:42:43',1,9,32),(21,NULL,'telegram','Telegram','','<h1>Tß║úi game Telegram</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-44\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/telegram-0-screenshoot.jpg\" alt=\"Telegram 0\" width=\"269\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Telegram','','','post-apk','published','2022-08-16 07:43:30','2022-08-16 07:43:30',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,40,NULL,'2022-08-16 07:43:30','2022-08-16 07:43:44',1,11,41),(22,NULL,'ccleaner-phone-cleaner','CCleaner ΓÇô Phone Cleaner','','<h1>Tß║úi game CCleaner &ndash; Phone Cleaner</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-54\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/ccleaner-phone-cleaner-0-screenshoot.jpg\" alt=\"CCleaner &ndash; Phone Cleaner 0\" width=\"265\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','CCleaner ΓÇô Phone Cleaner','','','post-apk','published','2022-08-16 07:48:10','2022-08-16 07:48:10',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,49,NULL,'2022-08-16 07:48:10','2022-08-16 07:48:23',1,13,50),(23,NULL,'waze-navigation-live-traffic','Waze Navigation & Live Traffic','','<h1>Tß║úi game Waze Navigation &amp; Live Traffic</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-61\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/waze-navigation-live-traffic-0-screenshoot.jpg\" alt=\"Waze Navigation &amp; Live Traffic 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Waze Navigation & Live Traffic','','','post-apk','published','2022-08-16 07:49:02','2022-08-16 07:49:02',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,59,NULL,'2022-08-16 07:49:02','2022-08-16 07:49:19',1,15,60),(24,NULL,'luminous-black-poweramp-skin','Luminous Black - Poweramp Skin','','<h1>Tß║úi game Luminous Black - Poweramp Skin</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-70\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/luminous-black-poweramp-skin-0-screenshoot.jpg\" alt=\"Luminous Black - Poweramp Skin 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Luminous Black - Poweramp Skin','','','post-apk','published','2022-08-16 07:50:26','2022-08-16 07:50:26',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,68,NULL,'2022-08-16 07:50:26','2022-08-16 07:50:39',1,9,69),(25,NULL,'crispy-icon-pack','Crispy Icon Pack','','<h1>Tß║úi game Crispy Icon Pack</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-80\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/crispy-icon-pack-0-screenshoot.jpg\" alt=\"Crispy Icon Pack 0\" width=\"236\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Crispy Icon Pack','','','post-apk','published','2022-08-16 07:51:18','2022-08-16 07:51:18',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,78,NULL,'2022-08-16 07:51:18','2022-08-16 07:51:33',1,9,79),(26,NULL,'super-quick-settings-pro','Super Quick Settings Pro','','<h1>Tß║úi game Super Quick Settings Pro</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-89\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/super-quick-settings-pro-0-screenshoot.jpg\" alt=\"Super Quick Settings Pro 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Super Quick Settings Pro','','','post-apk','published','2022-08-16 07:52:14','2022-08-16 07:52:14',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,87,NULL,'2022-08-16 07:52:14','2022-08-16 07:52:28',1,13,88),(27,NULL,'appchecker-app-system-info','AppChecker - App & System info','','<h1>Tß║úi game AppChecker - App &amp; System info</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-96\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/appchecker-app-system-info-0-screenshoot.jpg\" alt=\"AppChecker - App &amp; System info 0\" width=\"248\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','AppChecker - App & System info','','','post-apk','published','2022-08-16 07:53:24','2022-08-16 07:53:24',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,94,NULL,'2022-08-16 07:53:24','2022-08-16 07:53:35',1,13,95),(28,NULL,'playit-all-in-one-video-player','PLAYit-All in One Video Player','','<h1>Tß║úi game PLAYit-All in One Video Player</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-103\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/playit-all-in-one-video-player-0-screenshoot.jpg\" alt=\"PLAYit-All in One Video Player 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','PLAYit-All in One Video Player','','','post-apk','published','2022-08-16 07:54:11','2022-08-16 07:54:11',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,101,NULL,'2022-08-16 07:54:11','2022-08-16 07:54:35',1,6,102),(29,NULL,'photostamp-camera','PhotoStamp Camera','','<h1>Tß║úi game PhotoStamp Camera</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-115\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/photostamp-camera-0-screenshoot.jpg\" alt=\"PhotoStamp Camera 0\" width=\"276\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','PhotoStamp Camera','','','post-apk','published','2022-08-16 07:56:45','2022-08-16 07:56:45',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,111,NULL,'2022-08-16 07:56:45','2022-08-16 07:56:56',1,22,112),(30,NULL,'dynasty-warriors-overlords','Dynasty Warriors: Overlords','','<h1>Tß║úi game Dynasty Warriors: Overlords</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-124\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/dynasty-warriors-overlords-0-screenshoot.jpg\" alt=\"Dynasty Warriors: Overlords 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Dynasty Warriors: Overlords','','','post-apk','published','2022-08-16 07:58:30','2022-08-16 07:58:30',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,121,NULL,'2022-08-16 07:58:30','2022-08-16 07:58:44',1,24,122),(31,NULL,'zombie-idle-defense','Zombie Idle Defense','','<h1>Tß║úi game Zombie Idle Defense</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-138\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/zombie-idle-defense-0-screenshoot.jpg\" alt=\"Zombie Idle Defense 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Zombie Idle Defense','','','post-apk','published','2022-08-16 07:59:23','2022-08-16 07:59:23',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,131,NULL,'2022-08-16 07:59:23','2022-08-16 07:59:35',1,26,132),(32,NULL,'idle-slayer','Idle Slayer','','<h1>Tß║úi game Idle Slayer</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-147\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/idle-slayer-0-screenshoot.jpg\" alt=\"Idle Slayer 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Idle Slayer','','','post-apk','published','2022-08-16 08:00:33','2022-08-16 08:00:33',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,141,NULL,'2022-08-16 08:00:33','2022-08-16 08:00:44',1,24,142),(33,NULL,'mergeland','Mergeland','','<h1>Tß║úi game Mergeland</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-154\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/mergeland-0-screenshoot.jpg\" alt=\"Mergeland 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Mergeland','','','post-apk','published','2022-08-16 08:01:21','2022-08-16 08:01:21',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,151,NULL,'2022-08-16 08:01:21','2022-08-16 08:01:32',1,29,152),(34,NULL,'zombie-war-the-last-survivor','Zombie War - The Last Survivor','','<h1>Tß║úi game Zombie War - The Last Survivor</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-165\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/zombie-war-the-last-survivor-0-screenshoot.jpg\" alt=\"Zombie War - The Last Survivor 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Zombie War - The Last Survivor','','','post-apk','published','2022-08-16 08:02:32','2022-08-16 08:02:32',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,160,NULL,'2022-08-16 08:02:32','2022-08-16 08:02:49',1,4,161),(35,NULL,'stickman-archer-online','Stickman Archer online','','<h1>Tß║úi game Stickman Archer online</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-170\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/stickman-archer-online-0-screenshoot.jpg\" alt=\"Stickman Archer online 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Stickman Archer online','','','post-apk','published','2022-08-16 08:03:34','2022-08-16 08:03:34',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,166,NULL,'2022-08-16 08:03:34','2022-08-16 08:03:58',1,4,167),(36,NULL,'empire-takeover-rush-crush','Empire Takeover: Rush & Crush','','<h1>Tß║úi game Empire Takeover: Rush &amp; Crush</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-181\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/empire-takeover-rush-crush-0-screenshoot.jpg\" alt=\"Empire Takeover: Rush &amp; Crush 0\" width=\"250\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Empire Takeover: Rush & Crush','','','post-apk','published','2022-08-16 08:04:44','2022-08-16 08:04:44',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,175,NULL,'2022-08-16 08:04:44','2022-08-16 08:04:58',1,33,176),(37,NULL,'super-stickman-dragon-warriors','Super Stickman Dragon Warriors','','<h1>Tß║úi game Super Stickman Dragon Warriors</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-186\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/super-stickman-dragon-warriors-0-screenshoot.jpg\" alt=\"Super Stickman Dragon Warriors 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Super Stickman Dragon Warriors','','','post-apk','published','2022-08-16 08:05:46','2022-08-16 08:05:46',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,183,NULL,'2022-08-16 08:05:46','2022-08-16 08:06:04',1,4,184),(38,NULL,'wing-fighter','Wing Fighter','','<h1>Tß║úi game Wing Fighter</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-195\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/wing-fighter-0-screenshoot.jpg\" alt=\"Wing Fighter 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Wing Fighter','','','post-apk','published','2022-08-16 08:06:43','2022-08-16 08:06:43',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,193,NULL,'2022-08-16 08:06:43','2022-08-16 08:07:04',1,26,194),(39,NULL,'mad-skills-motocross-2','Mad Skills Motocross 2','','<h1>Tß║úi game Mad Skills Motocross 2</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-206\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/mad-skills-motocross-2-0-screenshoot.jpg\" alt=\"Mad Skills Motocross 2 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Mad Skills Motocross 2','','','post-apk','published','2022-08-16 08:08:43','2022-08-16 08:08:43',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,202,NULL,'2022-08-16 08:08:43','2022-08-16 08:08:59',1,37,203),(40,NULL,'last-pirate-survival-island-adventure','Last Pirate: Survival Island Adventure','','<h1>Tß║úi game Last Pirate: Survival Island Adventure</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-213\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/8/last-pirate-survival-island-adventure-0-screenshoot.jpg\" alt=\"Last Pirate: Survival Island Adventure 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Last Pirate: Survival Island Adventure','','','post-apk','published','2022-08-16 08:10:04','2022-08-16 08:10:04',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,210,NULL,'2022-08-16 08:10:04','2022-08-16 08:10:17',1,29,211);
/*!40000 ALTER TABLE `cms_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_redirects`
--

DROP TABLE IF EXISTS `cms_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_redirects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `oldslug` text NOT NULL,
  `newslug` text NOT NULL,
  `type` varchar(45) DEFAULT '301',
  `objtype` varchar(45) NOT NULL,
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_redirects`
--

LOCK TABLES `cms_redirects` WRITE;
/*!40000 ALTER TABLE `cms_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_ringtones`
--

DROP TABLE IF EXISTS `cms_ringtones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ringtones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `name` text,
  `author` int DEFAULT NULL,
  `url` text,
  `filename` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `numvotes` int DEFAULT '0',
  `numdownload` int DEFAULT '0',
  `numlisten` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_ringtones_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ringtones`
--

LOCK TABLES `cms_ringtones` WRITE;
/*!40000 ALTER TABLE `cms_ringtones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ringtones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_role_features`
--

DROP TABLE IF EXISTS `cms_role_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_role_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sitefeatureid` int NOT NULL,
  `roleid` int NOT NULL,
  `actview` tinyint(1) DEFAULT '0',
  `actadd` tinyint(1) DEFAULT '0',
  `actedit` tinyint(1) DEFAULT '0',
  `actdel` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_role_features`
--

LOCK TABLES `cms_role_features` WRITE;
/*!40000 ALTER TABLE `cms_role_features` DISABLE KEYS */;
INSERT INTO `cms_role_features` VALUES (1,6,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(2,7,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(3,8,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(4,10,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(5,11,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(6,13,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(7,14,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(8,15,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(9,16,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(10,6,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(11,10,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(12,13,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(13,7,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(14,8,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(15,11,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(16,6,4,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(17,13,4,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(18,15,4,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(19,16,4,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(20,10,5,1,1,0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(21,13,5,1,1,0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(22,14,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(23,14,4,1,1,0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(24,6,5,1,1,0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(25,14,5,1,1,0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(26,29,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(27,29,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(28,32,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(29,32,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(30,31,2,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(31,31,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(32,15,3,1,1,1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(33,6,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(34,8,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(35,11,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(36,17,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(37,16,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(38,15,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(39,10,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(40,29,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(41,32,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(42,7,6,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(43,17,3,1,1,1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_role_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_roles`
--

DROP TABLE IF EXISTS `cms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) NOT NULL,
  `description` text,
  `ismaster` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_roles_rolename` (`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_roles`
--

LOCK TABLES `cms_roles` WRITE;
/*!40000 ALTER TABLE `cms_roles` DISABLE KEYS */;
INSERT INTO `cms_roles` VALUES (1,'Administrator','Full privileges',1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(2,'Manager',NULL,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(3,'Editor',NULL,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(4,'Author Content',NULL,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(5,'Author View',NULL,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(6,'Edit redirect',NULL,0,'2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site_features`
--

DROP TABLE IF EXISTS `cms_site_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_site_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `icon` varchar(45) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `description` text,
  `url` varchar(255) DEFAULT '',
  `nolink` tinyint(1) DEFAULT '0',
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site_features`
--

LOCK TABLES `cms_site_features` WRITE;
/*!40000 ALTER TABLE `cms_site_features` DISABLE KEYS */;
INSERT INTO `cms_site_features` VALUES (1,NULL,'<i class=\"fas fa-robot\"></i>','Apk','Apk','','',1,1,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(3,NULL,'<i class=\"fas fa-edit\"></i>','Blog','Blog','','',1,7,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(4,NULL,'<i class=\"fas fa-paste\"></i>','Page','Page','','',1,11,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(5,NULL,'<i class=\"fas fa-tools\"></i>','Setting','Setting','','',1,23,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(6,1,'<i class=\"fas fa-robot\"></i>','List Apk','Apk','','/post/post-apk',0,2,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(7,1,'<i class=\"fas fa-stream\"></i>','Categories','Category Apk','','/category/category-apk',0,3,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(8,1,'<i class=\"fas fa-user-tie\"></i>','Developer','Developer Apk','','/category/developer-apk',0,4,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(10,3,'<i class=\"fas fa-edit\"></i>','List blog','Blog','','/post/post-blog',0,8,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(11,3,'<i class=\"fas fa-stream\"></i>','Categores','Category Blog','','/category/category-blog',0,9,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(13,NULL,'<i class=\"fas fa-paste\"></i>','List page','Page','','/post/post-page',0,12,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(14,NULL,'<i class=\"fas fa-images\"></i>','Media','Media','','/media',0,13,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(15,NULL,'<i class=\"fas fa-comments\"></i>','Comment','Comment','','/comment',0,14,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(16,NULL,'<i class=\"fas fa-envelope\"></i>','Feedback','Feedback','','/feedback',0,15,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(17,NULL,'<i class=\"fas fa-map-signs\"></i>','Redirect','Redirect','','/redirect',0,17,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(19,27,'<i class=\"fas fa-users\"></i>','User','User','','/user',0,20,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(20,27,'<i class=\"fas fa-user-shield\"></i>','Role','Role','','/role',0,21,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(21,NULL,'<i class=\"fas fa-globe-americas\"></i>','Language','Language','','/language',0,18,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(22,5,'<i class=\"fas fa-ad\"></i>','Ads','Ads','','/ads',0,24,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(23,5,'<i class=\"fas fa-cubes\"></i>','Type','Type','','/type',0,26,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(24,5,'<i class=\"fas fa-cubes\"></i>','Site Feature','Site Feature','','/sitefeature',0,27,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(25,5,'<i class=\"fas fa-cogs\"></i>','Option','Option','','/option',0,25,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(26,27,'<i class=\"fas fa-tags\"></i>','Role Feature','Role Feature','','/rolefeature',0,22,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(27,NULL,'<i class=\"fas fa-users-cog\"></i>','Permission','Permission','','',1,19,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(28,5,'<i class=\"fas fa-bars\"></i>','Menu','Menu','','/menu',0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(29,1,'<i class=\"fas fa-tag\"></i>','Tags','Tags Apk','','/category/tags',0,5,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(31,1,NULL,'Log Auto Update','Log Auto Update','','/logautoupdate',0,7,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(32,3,'<i class=\"fas fa-tag\"></i>','Tags','Tag blog','','/category/tags',0,10,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(36,NULL,'<i class=\"fas fa-bell\"></i>','Notifications','Notifications','','',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),(37,NULL,'<i class=\"fas fa-allergies\"></i>','Apk choice','Apk choice','Chß╗ìn apk hiß╗ân thß╗ï trang chß╗º','/apkchoice',0,2,'2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_site_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tracers`
--

DROP TABLE IF EXISTS `cms_tracers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_tracers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `agent` text,
  `objectid` int DEFAULT NULL,
  `object` varchar(45) DEFAULT '',
  `action` varchar(45) DEFAULT '',
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tracers`
--

LOCK TABLES `cms_tracers` WRITE;
/*!40000 ALTER TABLE `cms_tracers` DISABLE KEYS */;
INSERT INTO `cms_tracers` VALUES (1,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',4,'category','add','Add Action','2022-08-16 04:13:06','2022-08-16 04:13:06'),(2,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',5,'category','add','Add AGaming+','2022-08-16 04:13:06','2022-08-16 04:13:06'),(3,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',17,'post','add','Add The Sun: Origin','2022-08-16 04:13:07','2022-08-16 04:13:07'),(4,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',17,'post','edit','Edit The Sun: Origin','2022-08-16 07:28:49','2022-08-16 07:28:49'),(5,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',17,'post','edit','Edit The Sun: Origin','2022-08-16 07:34:11','2022-08-16 07:34:11'),(6,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',6,'category','add','Add Video Players & Editors','2022-08-16 07:40:20','2022-08-16 07:40:20'),(7,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',7,'category','add','Add TikTok Pte. Ltd.','2022-08-16 07:40:21','2022-08-16 07:40:21'),(8,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',18,'post','add','Add TikTok','2022-08-16 07:40:21','2022-08-16 07:40:21'),(9,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',18,'post','edit','Edit TikTok','2022-08-16 07:40:38','2022-08-16 07:40:38'),(10,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',8,'category','add','Add MX Media (formerly J2 Interactive)','2022-08-16 07:41:37','2022-08-16 07:41:37'),(11,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',19,'post','add','Add MX Player','2022-08-16 07:41:38','2022-08-16 07:41:38'),(12,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',19,'post','edit','Edit MX Player','2022-08-16 07:41:51','2022-08-16 07:41:51'),(13,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',9,'category','add','Add Personalization','2022-08-16 07:42:31','2022-08-16 07:42:31'),(14,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',10,'category','add','Add One4Studio','2022-08-16 07:42:31','2022-08-16 07:42:31'),(15,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',20,'post','add','Add Vera Icon Pack: shapeless icon','2022-08-16 07:42:31','2022-08-16 07:42:31'),(16,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',20,'post','edit','Edit Vera Icon Pack: shapeless icon','2022-08-16 07:42:43','2022-08-16 07:42:43'),(17,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',11,'category','add','Add Communication','2022-08-16 07:43:29','2022-08-16 07:43:29'),(18,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',12,'category','add','Add Telegram FZ-LLC','2022-08-16 07:43:30','2022-08-16 07:43:30'),(19,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',21,'post','add','Add Telegram','2022-08-16 07:43:30','2022-08-16 07:43:30'),(20,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',21,'post','edit','Edit Telegram','2022-08-16 07:43:44','2022-08-16 07:43:44'),(21,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',13,'category','add','Add Tools','2022-08-16 07:48:10','2022-08-16 07:48:10'),(22,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',14,'category','add','Add Piriform','2022-08-16 07:48:10','2022-08-16 07:48:10'),(23,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',22,'post','add','Add CCleaner ΓÇô Phone Cleaner','2022-08-16 07:48:10','2022-08-16 07:48:10'),(24,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',22,'post','edit','Edit CCleaner ΓÇô Phone Cleaner','2022-08-16 07:48:23','2022-08-16 07:48:23'),(25,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',15,'category','add','Add Maps & Navigation','2022-08-16 07:49:02','2022-08-16 07:49:02'),(26,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',16,'category','add','Add Waze','2022-08-16 07:49:02','2022-08-16 07:49:02'),(27,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',23,'post','add','Add Waze Navigation & Live Traffic','2022-08-16 07:49:02','2022-08-16 07:49:02'),(28,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',23,'post','edit','Edit Waze Navigation & Live Traffic','2022-08-16 07:49:19','2022-08-16 07:49:19'),(29,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',17,'category','add','Add Mixified Pixel','2022-08-16 07:50:26','2022-08-16 07:50:26'),(30,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',24,'post','add','Add Luminous Black - Poweramp Skin','2022-08-16 07:50:26','2022-08-16 07:50:26'),(31,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',24,'post','edit','Edit Luminous Black - Poweramp Skin','2022-08-16 07:50:39','2022-08-16 07:50:39'),(32,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',18,'category','add','Add FLATEDGE','2022-08-16 07:51:18','2022-08-16 07:51:18'),(33,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',25,'post','add','Add Crispy Icon Pack','2022-08-16 07:51:18','2022-08-16 07:51:18'),(34,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',25,'post','edit','Edit Crispy Icon Pack','2022-08-16 07:51:33','2022-08-16 07:51:33'),(35,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',19,'category','add','Add Super Android','2022-08-16 07:52:14','2022-08-16 07:52:14'),(36,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',26,'post','add','Add Super Quick Settings Pro','2022-08-16 07:52:14','2022-08-16 07:52:14'),(37,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',26,'post','edit','Edit Super Quick Settings Pro','2022-08-16 07:52:28','2022-08-16 07:52:28'),(38,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',20,'category','add','Add kroegerama','2022-08-16 07:53:23','2022-08-16 07:53:23'),(39,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',27,'post','add','Add AppChecker - App & System info','2022-08-16 07:53:24','2022-08-16 07:53:24'),(40,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',27,'post','edit','Edit AppChecker - App & System info','2022-08-16 07:53:35','2022-08-16 07:53:35'),(41,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',21,'category','add','Add PLAYIT TECHNOLOGY PTE. LTD.','2022-08-16 07:54:11','2022-08-16 07:54:11'),(42,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',28,'post','add','Add PLAYit-All in One Video Player','2022-08-16 07:54:11','2022-08-16 07:54:11'),(43,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',28,'post','edit','Edit PLAYit-All in One Video Player','2022-08-16 07:54:35','2022-08-16 07:54:35'),(44,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',22,'category','add','Add Photography','2022-08-16 07:56:44','2022-08-16 07:56:44'),(45,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',23,'category','add','Add Map05','2022-08-16 07:56:44','2022-08-16 07:56:44'),(46,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',29,'post','add','Add PhotoStamp Camera','2022-08-16 07:56:45','2022-08-16 07:56:45'),(47,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',29,'post','edit','Edit PhotoStamp Camera','2022-08-16 07:56:56','2022-08-16 07:56:56'),(48,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',24,'category','add','Add Role Playing','2022-08-16 07:58:30','2022-08-16 07:58:30'),(49,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',25,'category','add','Add MINH PHUONG THINH COMMUNICATION COMPANY LIMITED','2022-08-16 07:58:30','2022-08-16 07:58:30'),(50,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',30,'post','add','Add Dynasty Warriors: Overlords','2022-08-16 07:58:30','2022-08-16 07:58:30'),(51,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',30,'post','edit','Edit Dynasty Warriors: Overlords','2022-08-16 07:58:44','2022-08-16 07:58:44'),(52,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',26,'category','add','Add Arcade','2022-08-16 07:59:23','2022-08-16 07:59:23'),(53,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',27,'category','add','Add TDCGames','2022-08-16 07:59:23','2022-08-16 07:59:23'),(54,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',31,'post','add','Add Zombie Idle Defense','2022-08-16 07:59:23','2022-08-16 07:59:23'),(55,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',31,'post','edit','Edit Zombie Idle Defense','2022-08-16 07:59:35','2022-08-16 07:59:35'),(56,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',28,'category','add','Add Pablo Leban','2022-08-16 08:00:33','2022-08-16 08:00:33'),(57,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',32,'post','add','Add Idle Slayer','2022-08-16 08:00:33','2022-08-16 08:00:33'),(58,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',32,'post','edit','Edit Idle Slayer','2022-08-16 08:00:45','2022-08-16 08:00:45'),(59,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',29,'category','add','Add Adventure','2022-08-16 08:01:20','2022-08-16 08:01:20'),(60,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',30,'category','add','Add LiliJoy','2022-08-16 08:01:20','2022-08-16 08:01:20'),(61,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',33,'post','add','Add Mergeland','2022-08-16 08:01:21','2022-08-16 08:01:21'),(62,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',33,'post','edit','Edit Mergeland','2022-08-16 08:01:32','2022-08-16 08:01:32'),(63,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',31,'category','add','Add wangming','2022-08-16 08:02:32','2022-08-16 08:02:32'),(64,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',34,'post','add','Add Zombie War - The Last Survivor','2022-08-16 08:02:33','2022-08-16 08:02:33'),(65,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',34,'post','edit','Edit Zombie War - The Last Survivor','2022-08-16 08:02:49','2022-08-16 08:02:49'),(66,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',32,'category','add','Add Byril','2022-08-16 08:03:34','2022-08-16 08:03:34'),(67,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',35,'post','add','Add Stickman Archer online','2022-08-16 08:03:34','2022-08-16 08:03:34'),(68,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',35,'post','edit','Edit Stickman Archer online','2022-08-16 08:03:58','2022-08-16 08:03:58'),(69,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',33,'category','add','Add Strategy','2022-08-16 08:04:43','2022-08-16 08:04:43'),(70,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',34,'category','add','Add SkyDragon Games','2022-08-16 08:04:44','2022-08-16 08:04:44'),(71,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',36,'post','add','Add Empire Takeover: Rush & Crush','2022-08-16 08:04:44','2022-08-16 08:04:44'),(72,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',36,'post','edit','Edit Empire Takeover: Rush & Crush','2022-08-16 08:04:58','2022-08-16 08:04:58'),(73,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',35,'category','add','Add LEMON Studio','2022-08-16 08:05:46','2022-08-16 08:05:46'),(74,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',37,'post','add','Add Super Stickman Dragon Warriors','2022-08-16 08:05:46','2022-08-16 08:05:46'),(75,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',37,'post','edit','Edit Super Stickman Dragon Warriors','2022-08-16 08:06:05','2022-08-16 08:06:05'),(76,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',36,'category','add','Add MINIGAME ENTERTAINMENT LIMITED','2022-08-16 08:06:42','2022-08-16 08:06:42'),(77,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',38,'post','add','Add Wing Fighter','2022-08-16 08:06:43','2022-08-16 08:06:43'),(78,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',38,'post','edit','Edit Wing Fighter','2022-08-16 08:07:04','2022-08-16 08:07:04'),(79,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',37,'category','add','Add Racing','2022-08-16 08:08:43','2022-08-16 08:08:43'),(80,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',38,'category','add','Add Turborilla','2022-08-16 08:08:43','2022-08-16 08:08:43'),(81,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',39,'post','add','Add Mad Skills Motocross 2','2022-08-16 08:08:43','2022-08-16 08:08:43'),(82,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',39,'post','edit','Edit Mad Skills Motocross 2','2022-08-16 08:08:59','2022-08-16 08:08:59'),(83,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',39,'category','add','Add RetroStyle Games UA','2022-08-16 08:10:03','2022-08-16 08:10:03'),(84,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',40,'post','add','Add Last Pirate: Survival Island Adventure','2022-08-16 08:10:04','2022-08-16 08:10:04'),(85,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',40,'post','edit','Edit Last Pirate: Survival Island Adventure','2022-08-16 08:10:18','2022-08-16 08:10:18'),(86,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',4,'post','edit','Edit Apk download 2','2022-08-24 07:51:12','2022-08-24 07:51:12'),(87,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',3,'post','edit','Edit Apk Download','2022-08-24 07:51:29','2022-08-24 07:51:29');
/*!40000 ALTER TABLE `cms_tracers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_types`
--

DROP TABLE IF EXISTS `cms_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_types` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT 'post',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `cateitemtype` varchar(45) DEFAULT NULL,
  `roottext` varchar(45) DEFAULT '',
  `exttext` varchar(45) DEFAULT '',
  `hassitemap` tinyint(1) DEFAULT '0',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_types`
--

LOCK TABLES `cms_types` WRITE;
/*!40000 ALTER TABLE `cms_types` DISABLE KEYS */;
INSERT INTO `cms_types` VALUES ('category-apk','Categories','Categories of Apk','category',1,1,'hierarchy','','',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('category-blog','Categories','Categories of How to','category',1,1,'hierarchy','','',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('developer-apk','Developer','Developer of Apk','category',0,0,'single','developer','',0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('post-apk','Apk','App and Game for Android','post',1,1,NULL,'','.html',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('post-blog','Blog','How to articles','post',1,1,NULL,'','.html',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('post-page','Page','Page single','post',0,0,NULL,'','',0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('post-ringstone','Ringtones','Mp3 ringtones','post',0,0,NULL,'','',0,0,'2022-08-10 10:29:27','2022-08-10 10:29:27'),('tags','Tags','Tags for Apk and Post','category',1,1,'multiple','tag','',1,0,'2022-08-10 10:29:27','2022-08-10 10:29:27');
/*!40000 ALTER TABLE `cms_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT '',
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bdd` varchar(2) DEFAULT '',
  `bdm` varchar(2) DEFAULT '',
  `bdy` varchar(4) DEFAULT '',
  `gender` varchar(20) DEFAULT '',
  `isblock` tinyint(1) DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '0',
  `activecode` text,
  `recoveredcode` varchar(45) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleid` int DEFAULT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'admin','$2a$12$6Y7mDgUcZjkXHllgM7XfPulok8nshCg3FMlPKjkGhhhcHgm506glW','','Nguyß╗àn','Truyß╗ân','truyennv888@gmail.com','0868959751',NULL,'','','','',0,1,'','','2022-08-10 10:29:27','2022-08-10 10:29:27',1,NULL),(10,'red123zzz','$2a$08$G5j0ONf7Ihct.Ey5rFsRmuT71FfRDbfoVPxedNeCciQQwHTnpaHvy','','','','ntkhanh5853@gmail.com',NULL,NULL,'','','','',0,0,'95f264f2806af0430fedd930f79ba7ca','','2022-08-18 10:12:43','2022-08-18 10:12:43',NULL,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_useruis`
--

DROP TABLE IF EXISTS `cms_useruis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_useruis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `screenid` varchar(45) NOT NULL,
  `jsontext` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_useruis`
--

LOCK TABLES `cms_useruis` WRITE;
/*!40000 ALTER TABLE `cms_useruis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_useruis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-25 15:38:01
