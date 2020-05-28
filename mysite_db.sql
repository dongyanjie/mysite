-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 用户信息表',7,'add_userinfo'),(26,'Can change 用户信息表',7,'change_userinfo'),(27,'Can delete 用户信息表',7,'delete_userinfo'),(28,'Can view 用户信息表',7,'view_userinfo'),(29,'Can add article',8,'add_article'),(30,'Can change article',8,'change_article'),(31,'Can delete article',8,'delete_article'),(32,'Can view article',8,'view_article'),(33,'Can add article column',9,'add_articlecolumn'),(34,'Can change article column',9,'change_articlecolumn'),(35,'Can delete article column',9,'delete_articlecolumn'),(36,'Can view article column',9,'view_articlecolumn'),(37,'Can add article comment',10,'add_articlecomment'),(38,'Can change article comment',10,'change_articlecomment'),(39,'Can delete article comment',10,'delete_articlecomment'),(40,'Can view article comment',10,'view_articlecomment'),(41,'Can add article tag',11,'add_articletag'),(42,'Can change article tag',11,'change_articletag'),(43,'Can delete article tag',11,'delete_articletag'),(44,'Can view article tag',11,'view_articletag'),(45,'Can add 留言表',12,'add_guestbook'),(46,'Can change 留言表',12,'change_guestbook'),(47,'Can delete 留言表',12,'delete_guestbook'),(48,'Can view 留言表',12,'view_guestbook'),(49,'Can add 文件打印表',13,'add_fileprint'),(50,'Can change 文件打印表',13,'change_fileprint'),(51,'Can delete 文件打印表',13,'delete_fileprint'),(52,'Can view 文件打印表',13,'view_fileprint'),(53,'Can add 照片打印表',14,'add_photoprint'),(54,'Can change 照片打印表',14,'change_photoprint'),(55,'Can delete 照片打印表',14,'delete_photoprint'),(56,'Can view 照片打印表',14,'view_photoprint');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$w7THcbK90W1q$6GPeGrmZct6CL8EmhEujh4S802bE4fMgX4E8rjgeAuw=','2019-10-27 08:38:26.236144',1,'admin','','','',1,1,'2019-10-27 07:14:23.975961'),(2,'pbkdf2_sha256$120000$n7f9s4nKoQrj$AJw1Yld0EWv1PWMwPZYbCEwo7fhSRTOiTKkPGYVyBKs=','2019-11-09 11:25:31.278319',1,'dongyanjie','','','735238082@qq.com',1,1,'2019-10-27 07:14:49.095533'),(3,'pbkdf2_sha256$120000$6biI5sXf80CB$j7/sev+4dw7iscSCE/+83iQEEWTe45cvuy9wQxaiSBQ=','2019-10-28 12:45:08.331237',0,'张三','','','',0,1,'2019-10-27 08:37:30.528464'),(4,'pbkdf2_sha256$120000$MySBGPZgBjKY$XhNMAGr+GfHe8Ycrtzl3EKasF5K9Krz8mzk3YoMdKvM=',NULL,0,'小明','','','',0,1,'2019-10-27 08:37:45.248599'),(6,'pbkdf2_sha256$120000$CujscsNxx6zx$rRcE/2r/yIgOMLB2pqAQMe/wFnNCAnLgKlHnb5l8w2s=','2019-10-28 07:41:28.561015',0,'夏天','','','23@dsa.com',0,1,'2019-10-28 07:33:29.163545'),(7,'pbkdf2_sha256$120000$klM86qemVzap$AcIji66E0OKT9yOTqphOBDmqZmtgqUbrggGcgLXza28=','2019-10-31 00:48:38.545452',0,'云同','','','yungtonggzs@163.com',0,1,'2019-10-31 00:47:17.250294'),(8,'pbkdf2_sha256$120000$cWP04UyNRtJn$KEN/jiGQ/3m9sQFcuv8//PUEQVFNIkc7eIynpw+i6ao=','2019-10-31 06:09:35.548047',0,'healer','','','1274397066@qq.com',0,1,'2019-10-31 06:08:47.194272'),(9,'pbkdf2_sha256$120000$oBeXs2Gmu0td$PoYwXnIEZ/D7XhKBoOi4Spw1AWuWLONgCckd+xgogpU=',NULL,0,'abcsac','','','safa@121.co',0,1,'2019-10-31 13:51:53.927108'),(10,'pbkdf2_sha256$120000$r09s7bEqDkkz$ttOGtbVdS08Q82p0AuVhqWTcMSu3H5FNDmOHMWZtT/0=','2019-11-03 08:32:57.395665',0,'15589384858','','','1121468553@qq.com',0,1,'2019-11-03 08:30:30.561408'),(11,'pbkdf2_sha256$120000$qecsAfbUy38c$L0uIKPRGqZuu7dlRFLbQpYnK7ApVU/oIMggX2Uui/Yk=','2019-11-09 13:51:23.963565',0,'healerbang','','','1274397066@qq.com',0,1,'2019-11-09 13:49:56.937815');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-10-27 07:40:07.305945','1','技术积累',1,'[{\"added\": {}}]',9,2),(2,'2019-10-27 07:40:18.745938','1','技术积累',2,'[]',9,2),(3,'2019-10-27 07:40:44.085643','2','资源分享',1,'[{\"added\": {}}]',9,2),(4,'2019-10-27 07:42:17.715289','3','成长历程',1,'[{\"added\": {}}]',9,2),(5,'2019-10-27 07:42:40.496612','4','PYTHON',1,'[{\"added\": {}}]',9,2),(6,'2019-10-27 08:05:32.448239','3','成长历程',2,'[]',9,2),(7,'2019-10-27 08:06:21.467862','3','生活趣事',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',9,2),(8,'2019-10-27 08:07:49.834687','2','资源分享',3,'',9,2),(9,'2019-10-27 08:15:50.610497','3','日常随笔',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',9,2),(10,'2019-10-27 08:16:08.658866','5','后端开发',1,'[{\"added\": {}}]',9,2),(11,'2019-10-27 08:20:25.961093','1','前端',1,'[{\"added\": {}}]',11,2),(12,'2019-10-27 08:20:37.062368','1','后端',2,'[{\"changed\": {\"fields\": [\"tag\"]}}]',11,2),(13,'2019-10-27 08:20:51.315785','2','前端',1,'[{\"added\": {}}]',11,2),(14,'2019-10-27 08:21:00.422318','3','数据库',1,'[{\"added\": {}}]',11,2),(15,'2019-10-27 08:21:11.532959','4','常识积累',1,'[{\"added\": {}}]',11,2),(16,'2019-10-27 08:21:19.176471','5','考研笔记',1,'[{\"added\": {}}]',11,2),(17,'2019-10-27 08:21:26.382502','6','数据结构',1,'[{\"added\": {}}]',11,2),(18,'2019-10-27 08:21:35.288153','7','操作系统',1,'[{\"added\": {}}]',11,2),(19,'2019-10-27 08:21:44.169348','8','生活记录',1,'[{\"added\": {}}]',11,2),(20,'2019-10-27 08:22:00.982241','9','编程工具',1,'[{\"added\": {}}]',11,2),(21,'2019-10-27 08:22:09.971123','10','互联网新闻',1,'[{\"added\": {}}]',11,2),(22,'2019-10-27 08:22:33.704524','11','电影赏析',1,'[{\"added\": {}}]',11,2),(23,'2019-10-27 08:22:56.266232','1','小王',1,'[{\"added\": {}}]',12,2),(24,'2019-10-27 08:23:20.102572','2','张张',1,'[{\"added\": {}}]',12,2),(25,'2019-10-27 08:24:20.964800','3','董1',1,'[{\"added\": {}}]',12,2),(26,'2019-10-27 08:27:44.436001','1','博客寻找外链的几个办法？',1,'[{\"added\": {}}]',8,2),(27,'2019-10-27 08:29:22.429796','2','996工作制',1,'[{\"added\": {}}]',8,2),(28,'2019-10-27 08:30:16.079387','3','响应式布局与自适应式布局有什么不同 ？',1,'[{\"added\": {}}]',8,2),(29,'2019-10-27 08:34:08.813308','4','Git 速查表',1,'[{\"added\": {}}]',8,2),(30,'2019-10-27 08:34:50.357556','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(31,'2019-10-27 08:37:30.703056','3','张三',1,'[{\"added\": {}}]',4,2),(32,'2019-10-27 08:37:45.421207','4','小明',1,'[{\"added\": {}}]',4,2),(33,'2019-10-27 08:43:14.742733','5','mnbvcxz',1,'[{\"added\": {}}]',4,2),(34,'2019-10-27 08:43:57.234617','5','mnbvcxz',3,'',4,2),(35,'2019-10-27 08:44:37.519207','1','user dongyanjie',1,'[{\"added\": {}}]',7,2),(36,'2019-10-27 08:44:48.904717','2','user 小明',1,'[{\"added\": {}}]',7,2),(37,'2019-10-27 12:57:11.570606','12','HTML,CSS',1,'[{\"added\": {}}]',11,2),(38,'2019-10-27 13:03:09.026720','13','网络爬虫',1,'[{\"added\": {}}]',11,2),(39,'2019-10-31 13:31:10.865716','10','云同',3,'',12,2),(40,'2019-10-31 13:31:10.870790','9','云同',3,'',12,2),(41,'2019-10-31 13:31:10.874806','5','云同',3,'',12,2),(42,'2019-10-31 13:31:10.878956','4','云同',3,'',12,2),(43,'2019-10-31 15:23:03.377604','14','生活记录',1,'[{\"added\": {}}]',11,2),(44,'2019-10-31 15:23:16.061700','6','生活趣事',1,'[{\"added\": {}}]',9,2),(45,'2019-10-31 15:23:20.745338','5','第一篇博客，希望有一个好的开始',1,'[{\"added\": {}}]',8,2),(46,'2019-10-31 15:23:44.600114','4','Git 速查表',2,'[]',8,2),(47,'2019-10-31 15:24:51.518673','3','响应式布局与自适应式布局有什么不同 ？',3,'',8,2),(48,'2019-10-31 15:24:51.525324','1','博客寻找外链的几个办法？',3,'',8,2),(49,'2019-10-31 15:26:11.879258','7','新闻资讯',1,'[{\"added\": {}}]',9,2),(50,'2019-10-31 15:26:18.131823','2','996工作制',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',8,2),(51,'2019-10-31 15:28:34.957214','2','996工作制',3,'',8,2),(52,'2019-11-02 02:13:58.598131','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(53,'2019-11-02 02:14:29.176424','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(54,'2019-11-02 02:35:21.559570','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(55,'2019-11-02 02:36:20.813126','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(56,'2019-11-02 02:36:27.897232','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(57,'2019-11-02 02:43:38.551993','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(58,'2019-11-02 02:43:46.528300','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(59,'2019-11-02 17:48:56.360815','6','不要熬夜，不要熬夜，不要熬夜  ！！！',1,'[{\"added\": {}}]',8,2),(60,'2019-11-02 17:51:30.076426','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(61,'2019-11-03 01:22:28.626258','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(62,'2019-11-03 01:23:42.489339','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(63,'2019-11-03 01:24:08.320404','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[]',8,2),(64,'2019-11-03 01:25:12.657637','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(65,'2019-11-04 15:04:16.576210','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(66,'2019-11-04 15:04:24.300314','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(67,'2019-11-04 15:04:30.345530','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(68,'2019-11-04 15:06:18.622679','6','不要熬夜，不要熬夜，不要熬夜  ！！！',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(69,'2019-11-04 15:06:31.189485','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(70,'2019-11-04 15:06:48.594857','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(71,'2019-11-07 11:25:04.781679','1','董衍杰',1,'[{\"added\": {}}]',13,2),(72,'2019-11-07 12:42:00.672668','2','healer',2,'[{\"changed\": {\"fields\": [\"page_count\", \"price\", \"remark\", \"print_status\"]}}]',13,2),(73,'2019-11-07 15:18:37.362651','9','1',3,'',13,2),(74,'2019-11-07 15:18:37.368618','8','1',3,'',13,2),(75,'2019-11-07 15:18:37.373904','7','456',3,'',13,2),(76,'2019-11-07 15:18:37.380175','6','456',3,'',13,2),(77,'2019-11-07 15:18:37.385561','5','123',3,'',13,2),(78,'2019-11-08 08:07:31.998597','11','lsf',2,'[{\"changed\": {\"fields\": [\"remark\", \"print_status\"]}}]',13,2),(79,'2019-11-09 12:01:33.662772','7','个人博客技术栈总结',1,'[{\"added\": {}}]',8,2),(80,'2019-11-09 14:07:18.351473','14','生活记录',3,'',11,2),(81,'2019-11-09 14:08:01.597550','15','经验分享',1,'[{\"added\": {}}]',11,2),(82,'2019-11-09 14:14:45.471162','8','教你如何寻找话题，吸引自己喜欢的人！',1,'[{\"added\": {}}]',8,2),(83,'2019-11-09 14:15:08.253894','7','个人博客技术栈总结',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(84,'2019-11-09 14:22:09.267958','9','IT行业岗位以及发展方向',1,'[{\"added\": {}}]',8,2),(85,'2019-11-09 14:22:19.185062','8','教你如何寻找话题，吸引自己喜欢的人！',2,'[{\"changed\": {\"fields\": [\"click\"]}}]',8,2),(86,'2019-11-09 14:29:00.001397','16','技巧归纳',1,'[{\"added\": {}}]',11,2),(87,'2019-11-09 14:29:06.190705','10','win10系统提示管理员已阻止mmc.exe 打印机脱机问题解决办法',1,'[{\"added\": {}}]',8,2),(88,'2019-11-09 14:30:07.393058','10','win10系统提示管理员已阻止mmc.exe 打印机脱机问题解决办法',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(89,'2019-11-09 14:33:39.143205','9','IT行业岗位以及发展方向',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(90,'2019-11-09 14:40:46.791693','11','高新区大学园优质打印社开张啦',1,'[{\"added\": {}}]',8,2),(91,'2019-11-09 14:47:33.172109','16','杨彪',3,'',13,2),(92,'2019-11-09 14:47:33.177266','15','y',3,'',13,2),(93,'2019-11-09 14:47:33.181138','14','杨彪',3,'',13,2),(94,'2019-11-09 14:47:33.186233','13','杨彪',3,'',13,2),(95,'2019-11-09 14:47:33.190262','12','杨彪',3,'',13,2),(96,'2019-11-09 14:47:33.194978','11','lsf',3,'',13,2),(97,'2019-11-09 14:47:33.199647','10','q',3,'',13,2),(98,'2019-11-09 14:47:33.203556','4','Vicki',3,'',13,2),(99,'2019-11-09 14:47:33.208073','3','yy',3,'',13,2),(100,'2019-11-09 14:47:33.211982','2','healer',3,'',13,2),(101,'2019-11-09 14:47:33.217179','1','董衍杰',3,'',13,2),(102,'2019-11-09 14:47:43.071919','2','1',3,'',14,2),(103,'2019-11-09 14:47:43.077293','1','789',3,'',14,2),(104,'2019-11-09 15:21:14.718101','11','高新区大学园优质打印社开张啦',2,'[{\"changed\": {\"fields\": [\"click\"]}}]',8,2),(105,'2019-11-09 15:21:23.499542','10','win10系统提示管理员已阻止mmc.exe 打印机脱机问题解决办法',2,'[{\"changed\": {\"fields\": [\"click\"]}}]',8,2),(106,'2019-11-09 15:22:16.001343','9','IT行业岗位以及发展方向',2,'[{\"changed\": {\"fields\": [\"click\"]}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'itadmin','article'),(9,'itadmin','articlecolumn'),(10,'itadmin','articlecomment'),(11,'itadmin','articletag'),(12,'itadmin','guestbook'),(13,'oprint','fileprint'),(14,'oprint','photoprint'),(6,'sessions','session'),(7,'userManage','userinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-27 07:10:40.177100'),(2,'auth','0001_initial','2019-10-27 07:10:41.415301'),(3,'admin','0001_initial','2019-10-27 07:10:41.756551'),(4,'admin','0002_logentry_remove_auto_add','2019-10-27 07:10:41.793754'),(5,'admin','0003_logentry_add_action_flag_choices','2019-10-27 07:10:41.832442'),(6,'contenttypes','0002_remove_content_type_name','2019-10-27 07:10:42.098000'),(7,'auth','0002_alter_permission_name_max_length','2019-10-27 07:10:42.238863'),(8,'auth','0003_alter_user_email_max_length','2019-10-27 07:10:42.317877'),(9,'auth','0004_alter_user_username_opts','2019-10-27 07:10:42.341043'),(10,'auth','0005_alter_user_last_login_null','2019-10-27 07:10:42.435302'),(11,'auth','0006_require_contenttypes_0002','2019-10-27 07:10:42.444203'),(12,'auth','0007_alter_validators_add_error_messages','2019-10-27 07:10:42.465143'),(13,'auth','0008_alter_user_username_max_length','2019-10-27 07:10:42.589555'),(14,'auth','0009_alter_user_last_name_max_length','2019-10-27 07:10:42.744282'),(15,'itadmin','0001_initial','2019-10-27 07:10:44.271976'),(16,'sessions','0001_initial','2019-10-27 07:10:44.459457'),(17,'userManage','0001_initial','2019-10-27 07:10:44.598828'),(18,'itadmin','0002_auto_20191027_1617','2019-10-27 08:17:20.701963'),(19,'itadmin','0002_auto_20191031_1934','2019-10-31 11:34:57.780119'),(20,'itadmin','0003_auto_20191102_1011','2019-11-02 02:11:31.692339'),(21,'itadmin','0002_auto_20191104_2239','2019-11-04 14:40:03.434450'),(22,'oprint','0001_initial','2019-11-07 09:57:42.277239');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gh3f6r5jpvzcgywacnxuh8ewh1s6pgii','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-14 10:46:20.921474'),('hqe0ep6l1py58zn77ch1hi2ojxrdlpte','Mzg2NGFhYzQyZTMzODM1MWU5ODQ5ODI3NDEzN2U1Y2ZmNDIwMGExYjp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmE2NTY4NjA0ZGNmY2Q2NmM3YzcxODQyMzFjN2RlYmM3ODdhZWRmNSJ9','2019-11-17 08:32:57.402265'),('iqb1xdyc5p754zygupt8fi7te07o8uyg','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-22 02:35:10.969447'),('kr7t5kxdmet09ex22kkomgjl7iegjqio','ZjRkNmNlMDM3ZTEyNDkyNDMxOWU4OWQyMzJjZDEwOWM3ODNjODljMDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmI1MzY3OTgzYjdiZTdhODJhMTc2NTFkZTJmMDhlNzJmMjE5NmYyZSJ9','2019-11-23 13:51:23.970985'),('ln7er7aufn8hyz3vmgnnwl9t3iappbf3','YzRkMmZiZjc1ZGRmMTI0YWJjYzU1NjZjYjEwMzM4NTQ0M2RmNTllMjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTZmMjhlNmZkYmZiNjQ2NWVjYThhNDcwOTM4YTAwOWU4YWFhMGNhIn0=','2019-11-14 00:48:38.550816'),('nzjppa64fg2yppgt5iiqoernae3gbfk0','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-14 14:47:29.214012'),('wa31bmqaqcm0x8806r8knf3zqr2acagu','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-16 02:12:55.185726'),('x335r5oouyjsbif1y473nlcdrv3jiq7a','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-16 02:28:53.122092'),('z1zhp46z9zkt830uu21kougc2tb5cb5b','MDFkZGNmYjA0MmMzMTg4NDViYzgxOGEzNjA3NWZkYTRlM2UzNWNjNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZjFjNGM4Y2VhYTMxZWI2MjBiOTEwOTU2OTJiM2ExYTcwMTM5MWU1In0=','2019-11-14 06:09:35.554927');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_article`
--

DROP TABLE IF EXISTS `itadmin_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_pic` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `brief_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `click` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `itadmin_article_author_id_28216224_fk_auth_user_id` (`author_id`),
  KEY `itadmin_article_column_id_0593e056_fk_itadmin_articlecolumn_id` (`column_id`),
  CONSTRAINT `itadmin_article_author_id_28216224_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `itadmin_article_column_id_0593e056_fk_itadmin_articlecolumn_id` FOREIGN KEY (`column_id`) REFERENCES `itadmin_articlecolumn` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article`
--

LOCK TABLES `itadmin_article` WRITE;
/*!40000 ALTER TABLE `itadmin_article` DISABLE KEYS */;
INSERT INTO `itadmin_article` VALUES (4,'articlePic/3.jpg','Git 速查表','简明 Git 命令速查表（中文版）简明 Git 命令速查表（中文版）简明 Git 命令速查表（中文版）','Git 命令速查表（中文版）\r\n\r\n创建\r\n复制一个已创建的仓库:\r\n\r\n$ git clone ssh://user@domain.com/repo.git\r\n创建一个新的本地仓库:\r\n\r\n$ git init\r\n \r\n\r\n本地修改\r\n显示工作路径下已修改的文件：\r\n\r\n$ git status\r\n显示与上次提交版本文件的不同：\r\n\r\n$ git diff\r\n把当前所有修改添加到下次提交中：\r\n\r\n$ git add\r\n把对某个文件的修改添加到下次提交中：\r\n\r\n$ git add -p <file>\r\n提交本地的所有修改：\r\n\r\n$ git commit -a\r\n提交之前已标记的变化：\r\n\r\n$ git commit\r\n附加消息提交：\r\n\r\n$ git commit -m \"message here\"\r\n提交，并将提交时间设置为之前的某个日期:\r\n\r\ngit commit --date=\"`date --date=\"n day ago\"`\"-am \"Commit Message\"\r\n修改上次提交\r\n请勿修改已发布的提交记录!\r\n\r\n$ git commit --amend\r\n把当前分支中未提交的修改移动到其他分支\r\n\r\ngit stash\r\ngit checkout branch2\r\ngit stash pop\r\n \r\n\r\n搜索\r\n从当前目录的所有文件中查找文本内容：\r\n\r\n$ git grep \"Hello\"\r\n在某一版本中搜索文本：\r\n\r\n$ git grep \"Hello\" v2.5\r\n \r\n\r\n提交历史\r\n从最新提交开始，显示所有的提交记录（显示hash， 作者信息，提交的标题和时间）：\r\n\r\n$ git log\r\n显示所有提交（仅显示提交的hash和message）：\r\n\r\n$ git log --oneline\r\n显示某个用户的所有提交：\r\n\r\n$ git log --author=\"username\"\r\n显示某个文件的所有修改：\r\n\r\n$ git log -p <file>\r\n谁，在什么时间，修改了文件的什么内容：\r\n\r\n$ git blame <file>\r\n \r\n\r\n分支与标签\r\n列出所有的分支：\r\n\r\n$ git branch\r\n切换分支：\r\n\r\n$ git checkout <branch>\r\n创建并切换到新分支:\r\n\r\n$ git checkout -b <branch>\r\n基于当前分支创建新分支：\r\n\r\n$ git branch <new-branch>\r\n基于远程分支创建新的可追溯的分支：\r\n\r\n$ git branch --track <new-branch><remote-branch>\r\n删除本地分支:\r\n\r\n$ git branch -d <branch>\r\n给当前版本打标签：\r\n\r\n$ git tag <tag-name>\r\n \r\n\r\n更新与发布\r\n列出当前配置的远程端：\r\n\r\n$ git remote -v\r\n显示远程端的信息：\r\n\r\n$ git remote show <remote>\r\n添加新的远程端：\r\n\r\n$ git remote add <remote><url>\r\n下载远程端版本，但不合并到HEAD中：\r\n\r\n$ git fetch <remote>\r\n下载远程端版本，并自动与HEAD版本合并：\r\n\r\n$ git remote pull <remote><url>\r\n将远程端版本合并到本地版本中：\r\n\r\n$ git pull origin master\r\n将本地版本发布到远程端：\r\n\r\n$ git push remote <remote><branch>\r\n删除远程端分支：\r\n\r\n$ git push <remote>:<branch>(since Git v1.5.0)\r\n或\r\ngit push <remote>--delete<branch>(since Git v1.7.0)\r\n发布标签:\r\n\r\n$ git push --tags\r\n \r\n\r\n合并与重置\r\n将分支合并到当前HEAD中：\r\n\r\n$ git merge <branch>\r\n将当前HEAD版本重置到分支中:\r\n请勿重置已发布的提交!\r\n\r\n$ git rebase <branch>\r\n退出重置:\r\n\r\n$ git rebase --abort\r\n解决冲突后继续重置：\r\n\r\n$ git rebase --continue\r\n使用配置好的merge tool 解决冲突：\r\n\r\n$ git mergetool\r\n在编辑器中手动解决冲突后，标记文件为已解决冲突\r\n\r\n$ git add <resolved-file>\r\n$ git rm <resolved-file>\r\n \r\n\r\n撤销\r\n放弃工作目录下的所有修改：\r\n\r\n$ git reset --hard HEAD\r\n移除缓存区的所有文件（i.e. 撤销上次git add）:\r\n\r\n$ git reset HEAD\r\n放弃某个文件的所有本地修改：\r\n\r\n$ git checkout HEAD <file>\r\n重置一个提交（通过创建一个截然不同的新提交）\r\n\r\n$ git revert <commit>\r\n将HEAD重置到指定的版本，并抛弃该版本之后的所有修改：\r\n\r\n$ git reset --hard <commit>\r\n将HEAD重置到上一次提交的版本，并将之后的修改标记为未添加到缓存区的修改：\r\n\r\n$ git reset <commit>\r\n将HEAD重置到上一次提交的版本，并保留未提交的本地修改：\r\n\r\n$ git reset --keep <commit>','2019-10-27 08:34:08.798428',72,2,1),(5,'articlePic/2.jpg','第一篇博客，希望有一个好的开始','## # 第一篇博客，希望有一个好的开始\r\n\r\n  第一篇文章，简单介绍下自己 ，','## # 第一篇博客，希望有一个好的开始\r\n\r\n  第一篇文章，简单介绍下自己 ，\r\n  我来自山东某普通二本计算机专业，在读大三学生，因为学习专业的原因，经常浏览博客解决问题，在前辈中的文章中学到了很多，通过博客去分享知识和经验，让我很感触很深刻，这种精神也正是我所需要的。\r\n\r\n    之前我一直想做个人博客，但因为之前很长时间因准备考试，以及零零散散的小事，就把这件事情放下了， 最近几天因为在搞点东西，有一些闲暇时间，就想起了弄博客的事情，想来想去 我作为一个IT界的小学生，应该去把自己所遇到的坑 用这种方式与大家分享交流， 同时也是把自己生活中的点滴记录下来。\r\n\r\n - 我呢，迄今为止我感觉自己写的代码不是很多。我自己最头疼的问题就是不喜欢写代码。不喜欢写代码是很多人的通病，我自己也知道不喜欢写代码对程序员来说是致命的缺点，所以这是我接下来必须要改掉的坏习惯。\r\n\r\n  昨天在网上看到一句话：\r\n       技术上的东西，做了就有，光想是没有滴，本着认真负责的态度去做事情。\r\n  勉励自己在未来的IT道路上，认认真真，踏踏实实，始终本着学生的态度去请教前辈，同时我也会尽我微薄之力去帮助更多的人，互相帮助，资源分享，共同进步。\r\n  \r\n  ~~多了不说了，明天还要上课，睡觉了~~，未来要学习的东西还有很多，我相信我自己会做得更好。\r\n  晚安 。','2019-10-31 15:23:20.739054',96,2,6),(6,'articlePic/1.jpg','不要熬夜，不要熬夜，不要熬夜  ！！！','不要熬夜，不要熬夜，不要熬夜  ！！！','一只奋斗在路上的小乌龟\r\n\r\n感觉自己学的越多， 懂的就越少 ，\r\n慢慢来吧 ，\r\n生活是不公平的，你要去适应它。\r\n\r\n\r\n晚安  ，','2019-11-02 17:48:56.355319',44,2,3),(7,'articlePic/5a671de46140a.jpg','个人博客技术栈总结','个人博客技术栈总结 ，大家好，我是董衍杰。，今天来写一下我对我目前所会的知识做一个总结。','# 个人博客技术栈总结\r\n\r\n### 大家好，我是董衍杰。，今天来写一下我对我目前所做的网站做一个总结。\r\n  因为在校期间身为学生还是把学习当做第一要务，所以很多东西都停留在表面，\r\n并没有深入的去理解，所以我准备系统的学习一下，真正的掌握其原理。\r\n\r\n  写博客的目的主要是将自己在学习过程中学到的一些东西记录下来，加深自己的理解。\r\n下面列出介绍一下我的博客技术栈。\r\n  \r\n##   前端:\r\n\r\n主要还是bootstrap 和jquery 和 Layui 。\r\n\r\n语言:HTML， CSS， JavaScript，Ajax\r\n\r\n框架:jquery1.9.1, Bootstrap 3.0 ，layui2.4.5 ,弹窗用的 layer3.0\r\n\r\n等以后有时间,再把整个网站前端重构一下吧\r\n\r\n### 后端:\r\n\r\n整个后端完全python, 框架使用Django, 以后一定再深入学习,\r\n\r\n毕竟一个好的框架能节省不少时间\r\n\r\n服务器:Linux CentOS 7.6 64位\r\n\r\nWeb服务器:UWSGI 2.0.18 ，Nginx 1.8.0\r\n\r\n使用 WSGI协议 ，并使用nginx做了反向代理，保证网站的并发访问量。\r\n\r\n我是利用Nginx处理静态资源请求， 用Uwsgi处理后台的动态请求。\r\n这样uwsgi接收wsgi发送的请求，并转发给nginx，nginx最终将返回值返回给浏览器。\r\n整个静态文件的处理都直接有nginx完成，静态文件的访问完全不去经过uwsgi以及后面的东西。\r\n\r\n服务端语言:PYTHON 3.6.5, Django2.1\r\n\r\n数据库:MYSQL 8.0 ，Redis 3.2\r\n\r\n主要使用mysql数据库存储 ，有一小部分业务使用redis数据库。\r\n\r\n富文本编辑器:django-mdeditor\r\n\r\n### 数据处理：\r\n\r\n数据处理使用前端使用ajax 请求后端api ，返回json数据 ，然后处理渲染 ，当然有些业务也使用了传统的\r\n请求响应模式。\r\n\r\n\r\n\r\n### 不足 ：\r\n网站没有达到预期目标 ，学习了vue，因自己学的太浅，没有做完全前后端分离，这是最大的遗憾，但我会在不久重构 完全前后端分离。\r\n另外 我的学习的东西还远远不够,代码的质量也改进,debug的习惯也不是很好,\r\n\r\n为一个错误抓耳挠腮半天结果发现是写错一个字母的情况经常,\r\n\r\n页面也是充斥着直男的审美观(以后一定一定一定学习设计)\r\n\r\n但是作为我完成的第一个像样的项目来说,心中还是有些许的成就感的，\r\n\r\n希望我对技术的这份热情能持续下去吧。\r\n\r\n### 未来规划：\r\n\r\n1.每过一段时间重构一次网站,让代码更加成熟,布局更加合理，\r\n\r\n2.学到新的知识增加新的功能在博客上,以用代练.\r\n\r\n3.学习设计规范,让页面更加美观.\r\n\r\n4.坚持更新文章,总结知识点,写下成长历程。','2019-11-09 12:01:33.656001',19,2,1),(8,'articlePic/59c0fce92e5ac.jpg','教你如何寻找话题，吸引自己喜欢的人！','如果要跟喜欢的人交流，一定要找到能让人聊得嗨的话题，这样才能吸引对方的注意力。那么，到底怎么寻找话题，才能吸引对方呢？','## 教你如何寻找话题，吸引自己喜欢的人！\r\n\r\n#####  为别人解忧 为自己深思熟虑。\r\n01\r\n聊的话题一定是对方关注的。\r\n比如说对方目前正在剧荒的话，那么你可以聊一聊你认为比较好看的一些电视剧，推荐给对方。或者对方目前正打算考研的话，那么你可以聊一聊考研的一些师哥师姐的经验之谈。对方肯定会喜欢跟你聊下去。\r\n02\r\n聊的话题一定是对方感兴趣的。\r\n每个人都有自己的喜好，所以如果你想跟对方聊天的话，注意找到对方感兴趣的，比如说对方平日里喜欢打球的话，那么你可以聊一聊有关打球的话题嘛。\r\n03\r\n聊的话题一定是对方擅长的。\r\n聊天的时候我们也可以寻找对方比较擅长的领域，这样即便对方不是一个话痨，起码在你说起他擅长的领域时，他能够侃侃而谈，有自己独到的见解和观点，让他有发挥的余地。\r\n04\r\n聊的话题一定是要轻松的。\r\n千万不要跟对方聊一些敏感的话题，比如说对方的情史，比如说对方的收入等；可以聊一些比较轻松的话题，比如说最近上映的电影电视剧你觉得如何等等。\r\n\r\n文章转载自----\r\n感谢大家支持 ！','2019-11-09 14:14:45.465034',20,2,3),(9,'articlePic/timg.jpg','IT行业岗位以及发展方向','我立志想从事计算机相关的工作，但是从各方面分析却又不具备直接从事计算机相关工作的条件。这时候面临着两条路可走，一是通过参加培训班或者自学或者考计算机方面的研究生来学习计算机方面的知识，二是边工作边业余自学计算机相关的知识。考虑到当时的家庭条件不是很好，于是我选择了第二条路。工作带来的收入可以让我生活得到了保障，业余时间的利用可以弥补我将来期望工作岗位上的知识的不足。','职业生涯阶段划分\r\n从周围的朋友及本人的经历来看，我觉得在职业生涯的前几年可以划分为如下几个阶段：\r\n\r\n1、入门阶段（<1 year）：大学毕业或从其它行业转行，具备一定的理论知识，但缺乏真实环境历练，需在指导下工作。\r\n\r\n2、初级阶段（1-3 year）：具备较为丰富的理论知识和一定的实践，一定程度上可以独立工作，但无法独自处理复杂业务。这个阶段大约为参加工作\r\n\r\n3、中级阶段（3-5 year）：基本可独立应对复杂业务，通过实践总结将知识初步形成体系，但大多数情况下缺乏灵活性和前瞻性，有一定总结归纳能力，技术方面具有一定深度，通常广度不够。有一定协调管理能力和表达能力。\r\n\r\n4、高级阶段（5-10 year）：熟练应对负责业务，有自己的知识体系，总结归纳能力强，技术方面有一定深度和广度。具有较强的管理能力和表达能力。对业务或技术的未来走向有一定预判能力，并能带领小团队攻坚。如：分析师、架构师等。\r\n\r\n5、顶级阶段（10+ year）：对业务和技术都有非常深厚的掌握，面对复杂场景时能够根据自己所掌握的知识做出判断且灵活有效处理。能够管理协调较大团队，并且能够技术或者公司业务发展走势做出相应规划。如：总工、CTO、CIO等。\r\n\r\n注：以上数据根据是的按照一般的工作强度和方式来评估的，如果工作强度极大或极小，不在此例。\r\n\r\nBTW，讲个笑话，一个工作一年的开发人员去另一家公司面试，简历上写着有三年工作经验，面试人员通过技术问题面试也发现和三年经验的开发人员相当。于是很不解的问：“你明明只工作了一年，怎么会有三年的工作经验？”该面试人员平静地回答：“加班加来的，同时这也是我为什么要换工作的原因”。虽然上面是一个笑话，但是我想这也可以作为一个回答，经常有人问：“我转行而来、我底子薄，我怎么样才能快速适应工作需要”，答案是多利用一下业务时间学习呗。\r\n职业规划的重要性\r\n    为什么说职业生涯规划很重要呢，因为它是一个让你明确方向及如何朝目标努力的工作。很多人在网上向我咨询的人想转行从事IT的目的主要有三个：一是听说IT行业收入很高，所以为了高收入而做IT；二是讨厌自己当前从事的工作，大家说搞IT不错，所以就想转行搞IT了；三是自己确实喜欢钻研IT技术，享受技术提高带来的成就感。前面两种人的IT职业之路可能就不会走得很远，第三种人有可能会走得远。。\r\n    现在经常有人提到“一万小时定律”，即要成为某个领域的专家，需要10000小时，按比例计算就是：如果每天工作八个小时，一周工作五天，那么成为一个领域的专家至少需要五年，这就是一万小时定律。在前面所提到的职业生涯阶段中，入门阶段和初级阶段的收入并不会很高——因为很简单，你的工作并不会给公司带来很大的利润、挑战性也不会高，如果一开始就想着高福利或者只是因为听别人说而想从事这个行业，是很难有激情坚持五年甚至更长时间的，毕竟基础知识的学习掌握过程并不是一个能带来高收入且具有高挑战性的过程。而且当你处在低级阶段的时候被分派的工作大多数是没有太多技术分量的活，即使在初期会觉得有一些新鲜感，干的时间长就会厌倦。一旦你是应付的态度而不是积极的态度去工作，你就会在这个工程中失去进一步深究的兴趣。即使是相同的事情，然不同的人去做，最终两个人的进度也会不一样，感兴趣的人会去琢磨当前这机械重复的工作是否有可以优化的地方或者可以使用小工具软件（自己写的或者别人写的）来代替自己某些环节的操作，而如果不是真正感兴趣的人就不会这么做。前者通过工作获得了经验，而后者只是混得了经历而已。\r\n    从入门到顶级是一个金字塔式结构，只有越处于顶端的人的职业道路才会越宽广，相应收入等各方面也是越好，但是大多数人并没有持续攀登这个金字塔中上部，其原因是缺乏勇气和毅力，但根因还是因为缺乏对将来有一个清晰的规划。有了规划不一定能到达目的地，只不过相当于在茫茫大海上航行时有可以指引方向的东西，如指南针。\r\n如何制定职业规划\r\n制定职业规划之前首先要做好自我剖析工作。比如：\r\n1、个人情况方面：\r\n    a、拥有哪些专业知识，知识的水平？\r\n    b、拥有哪些技能，技能的水平？\r\n    c、拥有哪些兴趣，为兴趣投入的精力？\r\n    d、学习（工作）动机是什么,强烈程度?\r\n    e、学习（工作）态度怎样？\r\n    f、拥有怎样的沟通能力？\r\n    g、拥有怎样的组织能力？\r\n2、个人掌握的资源方面：\r\n    a、本人的家庭情况？(经济状况、家人期望、家族文化等以及对本人的影响)\r\n    b、本人的专业情况？(在学校学的哪些学科对今后发展方向有帮助)\r\n    c、本人的朋友情况？(哪些朋友，甚至朋友的朋友在就业和发展上能给你的帮助)\r\n    e、本人的其他关系圈？（那些关系圈是否有人能给予直接或者间接的支持帮助）\r\n3、目前岗位要求方面：\r\n    a、目标岗位要求有什么的专业知识和技能水平？\r\n    b、目标岗位要求我有什么样的沟通能力？\r\n    c、目标岗位要求我有什么样的组织能力？\r\n    d、目标岗位还有哪些其它要求（如英语水平、项目经历、行业背景，etc）\r\n \r\n做好自我剖析之后，就可以指定行动计划了，在指定行动计划时可以将岗位要求方面的差距逐一进行分析：\r\n如下图：\r\n\r\n\r\n如何执行计划\r\n对于计划的执行，这里借用一个别的行业术语：PDCA\r\n1、P (plan) 计划，包括方针和目标的确定，以及活动规划的制定。\r\n2、D (Do) 执行，根据已知的信息，设计具体的方法、方案和计划布局；再根据设计和布局，进行具体运作，实现计划中的内容。\r\n3、C (check) 检查，总结执行计划的结果，分清哪些对了，哪些错了，明确效果，找出问题。\r\n4、A (action)行动对总结检查的结果进行处理，对成功的经验加以肯定，并予以标准化；对于失败的教训也要总结，引起重视。对于没有解决的问题，应提交给下一个PDCA循环中去解决。\r\n\r\n以上四个过程不是运行一次就结束，而是周而复始的进行，一个循环完了，解决一些问题，未解决的问题进入下一个循环，这样阶梯式上升的（是不是类似于Srum）。\r\n\r\n总结\r\n    个人觉得个人职业生涯发展像是一个项目，一个重要不同是项目有明确的起点和结束点，而个人职业生涯没有（当然你也可以认为退休了就算到了结束点，实际上现在很多人到了退休年龄仍在公司担任要职，我就见过不少老专家仍在学习和著述）。\r\n    有过大型项目管理或参与经历的都知道，项目启动之前要进行很多准备工作，比如计划投入的资源（包括人力、资金等）、项目的风险、项目的里程碑等，一旦项目启动后，就对项目的各项指标进行监控，特别是是否能按期达成里程碑目标，如果不能就要分析是投入更多资源来保证按期实现里程碑目标还是调整里程碑目标的时间。\r\n    对于个人目标同样如此，首先要明白差距，然后制定行动计划，之后就是执行计划，在执行计划过程中再对比行动计划的节点，看是否如期完成，如果不是如期完成就要调整策略，比如投入更多时间或者将节点时间延后。总之，一定要有计划，可以有变化，变化后要及时调整计划。如果没有计划，今天学Java，明天学C++，后天学C#，这样的学习肯定不会有太大的进步。\r\n最后一句，大多数人都有目标和计划，但是大多数人都输在执行上了。\r\n附录IT岗位分类：\r\n\r\n一、IT行业岗位分类：\r\n\r\nIT行业的岗位大概分为研发类、市场类、技术支持类、生产类、管理类，到招聘会时，可以按照这个分类问问面试官：你们这个职务，是研发职务还是生产职务，可能某些小公司的面试官会被你问住。\r\n\r\n1、研发类岗位\r\n    包括软件研发和硬件研发，在一个公司里面完成项目开发，或者定制产品，一般说来，软件研发基本上就算产品的设计者和制造者，硬件研发，只能算设计者。因为后面还有生产环节。 \r\n    通常研发岗位包括RD，QA，以及配置管理员，架构师，小组长，项目经理，研发助理等，就是研究部分所有的职位。部门经理一般没有计算在内，部门经理管人，应该算管理岗位。不过有些小公司，部门经理和项目经理，甚至架构师，都不分，因此需要具体情况具体分析。 \r\n    RD，就是我们说得最多的设计人员了，达内出来的大多数学员，以后估计都从这里起步。RD这个词有讲究，就是设计和实施，是两个意思，设计，是决定一个东西怎么做，实施是把它做出来，我们刚开始，可能都是先做实施，慢慢走到设计，模块设计，系统设计等等，如果做得好，以后慢慢专门做设计，就是架构师了。 软件人员一般RD不分，设计者通常就是实施者，因为基本上程序敲完，产品也就出来了。硬件人员则不同，一般就是设计者，以及第一轮白盒测试的QA，自己测，当产品测试稳定、定型，就可以交给中试部进行产品测试，最终上线贴片生产。 \r\n\r\n    QA这里面一般细分为软件测试和产品中试，像华为、迈普这类大中型企业，以生产硬件产品为主的公司，都有自己的中试部，中试部简单说，就是专门测试硬件的，比如各种静电测试，温度测试，跌落、震动测试等，为产品最终上线做准备。 \r\n\r\n   软件研发通常还有个角色很重要，就是配置管理员，一般小公司没有这个角色，由负责的测试人员兼任，大公司会专门设置这个角色，并且这个角色还有商业秘密保全的功能。 \r\n\r\n    软件人员开发的产品，在自己的机器上，一般叫测试版，只有提交到CVS或SVN等版本管理系统，才叫产品，测试部不是从软件人员手里拿软件去测，而是由配置管理员在中心服务器上，将软件产品从源代码编译成可执行文件，生成安装程序包，然后发给测试部，测试部测试完毕，返回测试报告，公司领导签字后，以后软件产品的发货，就是配置管理员负责发货。\r\n\r\n    在大公司，软件一旦投测，如果RD发现有个小bug，小公司可能打个招呼就改了，项目控制流程上看不出来，但在大公司，必须发文，说明上一版本作废，然后重新发测试申请，重新提交代码走流程，项目流程上就记录，废版一次，以后就是扣工资的依据。因此，大公司的程序员一般比较严谨，发版测试很谨慎，就是怕出现这类bug，这样的缺点是对市场的反应不够灵敏，可能客户提交一个bug，RD改只要几分钟，但是流程要走一两天，但是好处是产品质量有保证，每个人的工作结果都记录在案，便于管理，且程序外泄几乎不可能。 \r\n国外很多程序员，可能在一个公司工作一辈子，都没有见过自己服务的计算机，RD都在终端工作，自己本地测试好了，提交到中心服务器，由配置管理员负责最后的编译和提交。 \r\n\r\n2、市场类岗位\r\n\r\n    这大概是最多的，往低里说，电脑城的谈单员，就是市场，往高里说，华为、Cisco的地区总裁，其实也是市场角色。市场根据个人经验，又分为Sales和Marketing，前者是简单的客户成交服务者，即客户准备购买，完成买卖手续，协助送货什么的，Dell那边的电话销售小姐，大约就是这个角色，由于Dell是定制，因此她们还需要下订单。后者就是属于较高层级的销售人员了，可以引导市场，引导客户，促成交易。 \r\n\r\n   一般说来，市场其实也是个技术活，很少有朋友是天才，上来就可以做到Marketing的，都是从Sales先入手，慢慢练，这个过程，可能比一个程序员走到架构师还难，很多销售人员，做一辈子，都做不到Marketing的，不信，去商场看看售货员，公交车的售票员，都是Sales。 \r\n\r\n   我们经常说，每个行业都有英雄，其实市场中，Marketing就是英雄，一般说来，走到这一步，就可以站在这个行业的巅峰，出去讲课，拿最高的佣金，享受猎头挖角的快感等等。不过，很难的，有句话请大家注意，“这个世界上，99%的销售人员，都不知道自己在干什么，说的就是这个问题”，那1%才是Marketing。 \r\n\r\n   通常情况下，开发人员瞧不起市场人员，总觉得对方是耍嘴皮子的，但市场人员同样也瞧不起开发人员，总觉得这帮书呆子不创造价值。呵呵，大家别生气，大多数公司，把研发单位，看做最大的成本单位，只花钱，不创造价值的，虽然我们设计了产品，但公司的财务上，这部分是没有价值的，产品价值是在销售出去以后才体现出来，因此，财务上看，研发部门总是赤字一片。 \r\n\r\n   其实，真正厉害的市场人员，我们研发人员还是要尊重的，要知道，一个研发人员要成名成家，其实相对比较容易，随便什么专业方向，攻克一个难点，出几篇论文，出一个产品，这个研发人员就可以在公司里面牛起来了，一个研究院，至少20%~30%都是这种牛人。但是，市场要能做到Marketing，前面说过，1%可能都不到，你说这帮人算不算精英？ \r\n\r\n3、技术支持类岗\r\n\r\n   技术支持，往低里说，电脑城的拼机器的，也是技术支持人员，通常由谈单员兼任，谈单员通常由大学生勤工俭学兼任，呵呵。再往上，客户那边送货，把包装拆开－—技术，联网－－技术，调试网络－－技术，这里说句话，希望大家不要见怪，网络管理员，其实也是技术支持。 \r\n\r\n   在华为，迈普，技术支持是一个专门的职业，负责给客户送货，因为他们出路由器，安装配置有一大堆事情，电信局又是大牛，人家才不会去管这个事呢，厂家来人解决。顺便说一句，电信局守机房的，也是技术支持。 \r\n原来没这个职业，就要研发人员兼任，因为这毕竟是个技术活，不过，久了研发人员不干了，天天出差，还做什么研发，老板也不干了，因为研发人员工资高，在大家看来，连连线，配置几个IP地址，这不复杂，如果用研发人员干，成本太高了。 喏，就这样，一个独有的职业，技术支持，在IT企业被定义出来，许多年轻的朋友，希望进入IT业，没有本钱，不会做老板，也进不去一些大型公司的门，一般选择，就是在电脑城做技术支持起步。 \r\n    现在很多系统集成公司，他们定义的项目经理，和研发单位的项目经理不太一样，其实也是技术支持，这类公司一般都是经销商，不是制造商，自己没有产品，靠代理别人的产品再销售来获取利润，一般说来，渠道这个词，就是指这类公司。这些公司的技术支持人员，主要工作就是看，我代理了哪些产品，哪些产品利润高，我怎么给客户报方案，把利润高的产品设计进去，等等。 \r\n这里面其实也有设计工作，但是，显而易见，这部分设计工作和前面的研发架构师的设计，是两个层面。 \r\n   当然，这里有两个特例，一个是目前很多中小型，做网络应用的架构师，他们也有这个设计部分，这些企业一般都是项目制，没有自己的产品，每一单都要定制开发，这类和前面的系统集成设计有一定类似，因为很多项目包括了设备采购什么的。 \r\n   另外一个特例就是系统集成设计，通常就是Marketing的活，因为自从IBM提出卖服务的概念以后，给客户交钥匙工程成为主流，大家都说自己是解决方案提供商，因此，Marketing通常就是采集需求，利用本公司产品或者代理的产品，组成解决方案，一体化提供给客户。 \r\n   因此，从职业发展途径，技术支持一般说来，也可以走到Marketing。通常Marketing有两个产生渠道，Servicer技术支持，或Sales销售。 \r\n   当然，这里也看出技术支持这个职业的短板，因为Marketing毕竟是销售为主，因此，销售能力占主导，技术支持人员由于长期和机器打交道，因此，恐怕也是机器脸居多，卖东西能力很差，因此，技术支持能转成Marketing的，更少。当然，也有技术支持人员转回来做研发的，不过，也很少。 \r\n\r\n4、管理类岗位\r\n\r\n    一般说来，管理本身是抽象的，并不是IT业的管理，不是只能从IT业产生，也不是只能管IT业，IBM的总裁郭士纳，就不是IT业出生，管理的英雄们，例子就太多了，他们有个统一的称呼－－职业经理人。\r\n    前面说的几种岗位，总的来说，都可以最终成长为管理，不过，管理也是最难的，一来人是最复杂的，不像机器那么好打交道，二来，管理要看运气，单纯说水平不行，得老板看得上才行，你说是吧？ \r\n    因此，研发，销售，技术，要想成为管理，这个成功率，一般不高于1%的，不信，数数你们公司管理人员和普通员工的比例，或者，学校里面老师和学生的比例，虽然这不准，但基本能说明一点问题。 \r\n\r\n5、生产类岗位\r\n\r\n   这个岗位其实各公司都有，不过大多数老板不承认，员工也不愿意承认。 大型公司，如华为、迈普、Intel等，以生产硬件产品为主的，基本上都有生产部，记住啊，这个生产部很重要，生产，仓储，物流，基本都在这一块。 千万别小看生产，目前生产线上的工人，由于要开贴片机什么的，基本上都要大专学历，还要培训的，有些目前找工作特别困难的同学，不妨考虑一下这类大型企业的生产岗位。 \r\n   大型制造业，如美的，海尔等，他们很多管理层都是生产线上下来的，生产线上也不都是工人岗位，很多生产工艺师，工装设计师什么的，都需要设计这门工作，如果一个学历较高的人进入这个部门，只要自己肯努力，其实也很容易出头，毕竟周围的竞争对手太低了，呵呵，比起研究院来说，要容易得多。\r\n\r\n6、其他类岗位\r\n\r\n这就太多了，老板就属于其他了，创业也属于其他，由于这部分不带普遍性，就不多说了。各级行政人员，如财务，秘书，都算其他吧。 \r\n\r\n二、普通软件企业的各级具体岗位\r\n1、软件企业的初级岗位\r\n1）销售人员\r\n工作内容：通过电话、登门拜访等方式联络客户，寻找销售机会\r\n需要的能力：勤奋踏实、认真负责、沟通表达能力强、自我激励 要求有一定的目标客户行业知识和软件基础知识\r\n收获：行业商业机会信息分析能力、客户沟通技能、商务管理经验、高层公关、资源协调能力\r\n2）实施工程师(售后工程师)\r\n工作内容：了解客户业务流程及各种管理表单和数据、数据录入、软件安装调试和部署、\r\n二次开发、培训客户使用软件\r\n需要的能力：踏实勤奋、认真负责、善于倾听和分析、逻辑思维能力强、\r\n一定的行业知识、软件编程能力（二次开发）\r\n收获：客户所属行业的运作管理模式的详细经验、沟通分析，引导客户、软件对于客户使用舒适度和功能应用性\r\n3）客户服务\r\n工作内容：给客户提供技术咨询及投诉处理，是企业提高客户满意度的重要岗位\r\n对于软件使用的主要问题进行全面分析和汇总，以提供给软件成熟性改进计划提供第一手资料 \r\n需要的能力：乐观积极、充满爱心、主动热情，具有服务意识、学习能力、沟通能力强、 \r\n软件使用非常熟练、精通各功能及细节\r\n收获：对于软件使用和客户使用的精细化，体系化认识、可以成为优秀的沟通型、开放型管理人才\r\n4）测试工程师\r\n工作内容：将软件代码进行全面检测、编译自动测试软件的用力库、进行代码优化建议\r\n需要的能力：认真细致、耐心踏实、软件语言及工具掌握非常全面、文档能力强、有较丰富的编程经验\r\n收获：质量管理的全面认识、软件开发成本控制、熟悉各种软件编程技巧，经验丰富、对于软件编程的全局观\r\n5）程序员\r\n工作内容：根据详细规格说明书及编程规范，数据格式和共用组建库来编译软件，实现代码和初级测试\r\n在遇到功能性调整的时候，及时同小组成员和项目经理沟通讨论解决方案，\r\n确定解决问题的步骤和方法，保质保量完成代码\r\n需要的能力：公司需要的编程语言的熟练掌握，对于相关性知识的掌握，如网络协议等\r\n熟练使用各种编程工具和代码管理工具、建模工具等\r\n优秀的沟通能力和解决问题的能力、逻辑思维能力强，思维方式全面系统\r\n\r\n2、软件企业的中级岗位\r\n\r\n1）区域销售经理\r\n2）售前工程师\r\n3）售前咨询顾问\r\n4）需求分析及架构初级设计师\r\n5）实施项目经理\r\n6）架构及逻辑测试\r\n7）发行经理 \r\n8）设计师\r\n9）软件专家 \r\n10）软件开发项目经理\r\n11）系统架构设计师\r\n12）技术研发中心程序员\r\n13）技术中心经理\r\n\r\n3、软件企业的高级岗位\r\n\r\n1）销售总监\r\n2）解决方案高级咨询顾问\r\n3）售前售后全系统解决方案总体架构设计师\r\n4）系统架构总设计师\r\n5）软件发展部总监\r\n6）版本发行及开发管理总监\r\n7）SQA管理总监\r\n8）软件开发部技术总监\r\n9）总工程师 \r\n\r\n三、岗位发展方向\r\n\r\nPS：这里并没有写出向上发展的具体条件，因为每个公司的要求是不同的，每个人的机遇也是不同的，今后的发展还是要靠自己努力的！现在只希望大家看后能够有一个自己的大概的发展方向～\r\n\r\n1、销售人员——>区域销售经理——>销售总监——>行政总裁\r\n2、实施工程师(售后工程师)——>需求分析及架构初级设计师——>售前售后全系统解决方案总体架构设计师\r\n    实施工程师(售后工程师)——>实施项目经理\r\n    售前工程师——>售前咨询顾问 / 产品经理——>解决方案高级咨询顾问 / 部门经理 / 事业部总监\r\n    业务需求分析员——>业务需求分析工程师——>项目经理 / 咨询顾问——>部门经理 / 事业部总监\r\n3、客户服务——>售前咨询顾问——>解决方案高级咨询顾问\r\n   客户服务——>实施项目经理\r\n\r\n4、测试工程师——>架构及逻辑测试——>SQA管理总监\r\n   测试工程师——>发行经理——>版本发行及开发管理总监\r\n\r\n\r\n5、技术发展方向\r\n（1）技术——技术发展方向：\r\n   软件工程师——>高级软件工程师——>系统分析师——>软件架构师\r\n   程序员——>设计师——>软件开发部技术总监\r\n（2）技术——管理发展方向：\r\n软件工程师——>团队组长——>项目经理——>部门经理——>技术总监 / 研发总监\r\n程序员——>软件开发项目经理——>软件发展部总监 / 系统架构总设计师\r\n技术研发中心程序员——>总工程师\r\n技术研发中心程序员——>软件专家\r\n\r\n四、针对软件工程师可以从事的岗位\r\n\r\nPS：由于学习JAVA开发的我们从**毕业后，毕业证书上写的都是软件工程师，而并不是所有的同学都想做java开发，所以特别搜索了一下软件工程师可以从事的相关岗位。\r\n软件工程师——>售前技术支持（协调用户、销售人员、开发人员间关系，向用户展现公司产品优势和技术实力，\r\n调查了解用户的初步需求，设计项目的最初技术框架，屏蔽不合理、易带来技术风险的需求）\r\n软件工程师——>售后技术支持（负责对公司产品用户进行现场培训，负责公司销售产品的技术支持与维护）\r\n软件工程师——>软件开发设计（分析与设计，应用软件开发，系统升级，项目开发）\r\n软件工程师——>系统维护管理（应用系统运行管理与维护，网络系统应用软件设计开发）\r\n\r\n方向一、成为项目经理\r\n\r\n对于很多从事技术方面工作的人员来说，发展成为项目经理是一个相当好的工作。项目管理工作既要扎实的技术背景支持，又涉及多方面的管理工作，最适合那些技术出身但又不甘于只做技术工作的人员。成为项目经理，一方面可以充分发挥技术人员的专业优势，同时又可在团队管理、协调各方资源、内外部沟通等工作中体验和发挥作为管理者的角色和作用，从而让自身价值更为充分的实现和得到认可。优秀的项目管理人才，也是今后很长时期内的一个热门职业方向。\r\n\r\n方向二、成为行业资深专家\r\n\r\n如果的确非常喜爱技术工作，而不擅长和喜欢与人沟通，则可以完全专注于自身的领域，以发展成为行业资深专家为方向和目标，当然，这一发展过程可能会比较漫长，任何一个领域的顶尖技术人才都需要长期的行业经验的累积和个人孜孜不倦的投入。不过这类人才的一个优势是越老越吃香，当别人随着年龄的逐步增长而开始担心饭碗问题时，你则渐入佳境，开始进入职业发展的黄金时期。\r\n\r\n方向三、成为研发经理或技术总监\r\n\r\n事实上，在某些行业和企业，技术研发人员的地位是非常高的。譬如在微软、诺基亚、华为等it产业，技术的支持和研发的速度，成为企业利润增长的最主要来源，在这些行业，技术研发部门就是企业的主战场。在不少国企和政府部门，也非常重视科技和技术工作，例如，我所知道的广州市市政园林局，就设有总工程师、副总工程师等技术职位，其中总工程师的职务级别相当于副局级，在这种氛围影响下，技术岗位人才和行政领导同样受人尊敬。所以，在一个尊重和重视技术工作的行业和企业中，发展成为研发经理、技术总监或总工程师都是一个很好的选择。\r\n\r\n方向四、做技术型销售和服务\r\n\r\n技术工作的领域其实非常广泛，如果感觉纯技术工作发展潜力不大，可以考虑转向做销售或技术支持方面。华为、中兴等通信技术公司的销售人员，很少是不具有专业技术背景的；甲骨文等软件巨头的市场推广，第一步常常是从销售工程师拜访客户开始的。这类高价值、高科技的产品销售推广，非常需要具有丰富技术经验的销售人员。\r\n\r\n技术人员转向售后服务，也是非常有前途的。我认识的一个朋友，大学是施工机械专业，毕业后一直在市政工程行业做非开挖顶管施工，在几年的工作中积累了丰富的地下顶进设备的应用和维修经验，一个合适的机会跳槽到著名的顶管设备生产商－德国海瑞克公司，成为其售后服务工程师，工作上得心应手，收入也有了数倍的增长。\r\n\r\n方向五、转向管理岗位\r\n\r\n总有一些人，虽然是理工科出身、从事着技术岗位工作，但他们似乎天生就是具有管理天赋的人。这些人会在工作中逐步展现出管理潜质和优秀的领导能力，他们往往更喜欢跟人打交道，更喜欢与外界沟通。在这种条件下，以技术经验为基础和依托，适当补充学习些管理方面的知识，例如可以在职攻读mba，假以时日，完全可以成长为出色的职业经理人。\r\n\r\n方向六、高级技术操作人员\r\n\r\n刚才所谈的职业发展方向，适用群体多为高校理工专业出身的人士，但对于数量众多的中等专科学校、技校毕业的一线技术工人来说，成为行业技术专家或研发总监的机会显然非常微小。这一群体的职业人士，最佳的技术发展路线是立足本职岗位，成为高级操作型技术人员。\r\n\r\n\r\n本文转载自https://blog.csdn.net/qq_23994787/article/details/79847270\r\n感谢关注！','2019-11-09 14:22:09.239641',5,2,7),(10,'articlePic/IMG_0325.JPG','win10系统提示管理员已阻止mmc.exe 打印机脱机问题解决办法','win10系统提示管理员已阻止mmc.exe 打印机脱机问题解决办法','原文来自https://www.savouer.com/4407.html','2019-11-09 14:29:06.185277',6,2,1),(11,'articlePic/IMG_0330_T5p6H4q.JPG','高新区大学园优质打印社开张啦','期待已久的网上打印 ，高新区大学园优质打印社开张啦 >>>>','济宁高新区大学园：\r\n  优质打印社开张啦！！！\r\n\r\n   欢迎您来本打印社打印文件\r\n\r\n   本店提供打印＋配送工作\r\n\r\n   日后推出生活照冲印服务\r\n \r\n   打印单面0.13元/张   双面0.18元/张   彩印0.9元/张\r\n\r\n   绝对保护个人隐私以及文档安全完好\r\n\r\n   地址位于济宁高新区大学园D5 224\r\n \r\n   需要服务的同学请扫码添加qq群\r\n   qq群号：778321585\r\n\r\n   感谢大家关注与支持 ， 让顾客满意是我们的最低标准 。 \r\n   未来路上 ，不忘初心， 加油干！！','2019-11-09 14:40:46.784401',65,2,3);
/*!40000 ALTER TABLE `itadmin_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_article_dianzan`
--

DROP TABLE IF EXISTS `itadmin_article_dianzan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_article_dianzan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `itadmin_article_dianzan_article_id_user_id_601c32f8_uniq` (`article_id`,`user_id`),
  KEY `itadmin_article_dianzan_user_id_17e2a9d0_fk_auth_user_id` (`user_id`),
  CONSTRAINT `itadmin_article_dian_article_id_53e79641_fk_itadmin_a` FOREIGN KEY (`article_id`) REFERENCES `itadmin_article` (`article_id`),
  CONSTRAINT `itadmin_article_dianzan_user_id_17e2a9d0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article_dianzan`
--

LOCK TABLES `itadmin_article_dianzan` WRITE;
/*!40000 ALTER TABLE `itadmin_article_dianzan` DISABLE KEYS */;
INSERT INTO `itadmin_article_dianzan` VALUES (3,4,3),(5,4,7),(6,4,8),(11,4,10),(7,5,2),(10,5,10),(8,6,2),(9,6,10),(12,7,2),(13,7,11),(14,11,2),(15,11,6);
/*!40000 ALTER TABLE `itadmin_article_dianzan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_article_tag`
--

DROP TABLE IF EXISTS `itadmin_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `articletag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `itadmin_article_tag_article_id_articletag_id_aa6171cf_uniq` (`article_id`,`articletag_id`),
  KEY `itadmin_article_tag_articletag_id_535b3373_fk_itadmin_a` (`articletag_id`),
  CONSTRAINT `itadmin_article_tag_article_id_0b2cf87e_fk_itadmin_a` FOREIGN KEY (`article_id`) REFERENCES `itadmin_article` (`article_id`),
  CONSTRAINT `itadmin_article_tag_articletag_id_535b3373_fk_itadmin_a` FOREIGN KEY (`articletag_id`) REFERENCES `itadmin_articletag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article_tag`
--

LOCK TABLES `itadmin_article_tag` WRITE;
/*!40000 ALTER TABLE `itadmin_article_tag` DISABLE KEYS */;
INSERT INTO `itadmin_article_tag` VALUES (5,4,1),(6,4,9),(8,6,8),(9,7,8),(10,8,8),(11,8,15),(12,9,4),(13,9,15),(14,10,16),(16,11,4),(15,11,8);
/*!40000 ALTER TABLE `itadmin_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_articlecolumn`
--

DROP TABLE IF EXISTS `itadmin_articlecolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_articlecolumn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `classify` int(11) NOT NULL,
  `created_time` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itadmin_articlecolumn_user_id_9cbe98ec_fk_auth_user_id` (`user_id`),
  CONSTRAINT `itadmin_articlecolumn_user_id_9cbe98ec_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_articlecolumn`
--

LOCK TABLES `itadmin_articlecolumn` WRITE;
/*!40000 ALTER TABLE `itadmin_articlecolumn` DISABLE KEYS */;
INSERT INTO `itadmin_articlecolumn` VALUES (1,'技术积累',1,'2019-10-27',2),(3,'日常随笔',2,'2019-10-27',2),(4,'PYTHON',1,'2019-10-27',2),(5,'后端开发',1,'2019-10-27',2),(6,'生活趣事',2,'2019-10-31',2),(7,'新闻资讯',1,'2019-10-31',2);
/*!40000 ALTER TABLE `itadmin_articlecolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_articlecomment`
--

DROP TABLE IF EXISTS `itadmin_articlecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_articlecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentator` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itadmin_articlecomme_article_id_3bb06cf4_fk_itadmin_a` (`article_id`),
  CONSTRAINT `itadmin_articlecomme_article_id_3bb06cf4_fk_itadmin_a` FOREIGN KEY (`article_id`) REFERENCES `itadmin_article` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_articlecomment`
--

LOCK TABLES `itadmin_articlecomment` WRITE;
/*!40000 ALTER TABLE `itadmin_articlecomment` DISABLE KEYS */;
INSERT INTO `itadmin_articlecomment` VALUES (3,'云同','加油','2019-10-31 17:16:39.687085',5),(4,'15589384858','wonderful!','2019-11-03 08:34:24.448645',6),(5,'15589384858','come on !','2019-11-03 08:37:54.152165',5),(6,'15589384858','Boy with ideas','2019-11-03 08:40:31.406932',4);
/*!40000 ALTER TABLE `itadmin_articlecomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_articletag`
--

DROP TABLE IF EXISTS `itadmin_articletag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_articletag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_time` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itadmin_articletag_user_id_64fbb31d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `itadmin_articletag_user_id_64fbb31d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_articletag`
--

LOCK TABLES `itadmin_articletag` WRITE;
/*!40000 ALTER TABLE `itadmin_articletag` DISABLE KEYS */;
INSERT INTO `itadmin_articletag` VALUES (1,'后端','2019-10-27',2),(2,'前端','2019-10-27',2),(3,'数据库','2019-10-27',2),(4,'常识积累','2019-10-27',2),(5,'考研笔记','2019-10-27',2),(6,'数据结构','2019-10-27',2),(7,'操作系统','2019-10-27',2),(8,'生活记录','2019-10-27',2),(9,'编程工具','2019-10-27',2),(10,'互联网新闻','2019-10-27',2),(11,'电影赏析','2019-10-27',2),(12,'HTML,CSS','2019-10-27',2),(13,'网络爬虫','2019-10-27',1),(15,'经验分享','2019-11-09',2),(16,'技巧归纳','2019-11-09',2);
/*!40000 ALTER TABLE `itadmin_articletag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itadmin_guestbook`
--

DROP TABLE IF EXISTS `itadmin_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itadmin_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_guestbook`
--

LOCK TABLES `itadmin_guestbook` WRITE;
/*!40000 ALTER TABLE `itadmin_guestbook` DISABLE KEYS */;
INSERT INTO `itadmin_guestbook` VALUES (1,'小王','772@qq.com','不错加油！','2019-10-27 08:22:56.263770'),(2,'张张','772@qq.com','时间会证明一起 ，慢慢来','2019-10-27 08:23:20.101581'),(3,'董1','735238082@qq.com','一步一个脚印，fating！','2019-10-27 08:24:20.963808'),(6,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:10.473083'),(7,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:11.046318'),(8,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:11.208760'),(11,'healer','1274397066@qq.com','   继续努力','2019-10-31 06:07:44.549552'),(12,'wrw','wrfw','888888888','2019-11-02 13:29:18.890075'),(13,'  healer','healerbang','  前程似锦\n','2019-11-07 12:38:12.485908');
/*!40000 ALTER TABLE `itadmin_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oprint_fileprint`
--

DROP TABLE IF EXISTS `oprint_fileprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oprint_fileprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_url` varchar(100) DEFAULT NULL,
  `sided` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `page_count` varchar(200) NOT NULL,
  `print_number` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone_or_qq` varchar(12) DEFAULT NULL,
  `what_time` varchar(30) NOT NULL,
  `what_place` varchar(30) NOT NULL,
  `print_point` varchar(100) DEFAULT NULL,
  `remark` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `print_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oprint_fileprint`
--

LOCK TABLES `oprint_fileprint` WRITE;
/*!40000 ALTER TABLE `oprint_fileprint` DISABLE KEYS */;
INSERT INTO `oprint_fileprint` VALUES (17,'filePrint/2019_11_09/2020考研英语一写作基础班讲义公众号考.研.兔免费分享.pdf',1,1,'1',1,'0.13','刘智涛','12','','','dxy','','2019-11-09 14:46:28.662165',1);
/*!40000 ALTER TABLE `oprint_fileprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oprint_photoprint`
--

DROP TABLE IF EXISTS `oprint_photoprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oprint_photoprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(100) DEFAULT NULL,
  `photo_size` int(11) NOT NULL,
  `print_number` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone_or_qq` varchar(12) DEFAULT NULL,
  `what_time` varchar(30) NOT NULL,
  `what_place` varchar(30) NOT NULL,
  `print_point` varchar(100) DEFAULT NULL,
  `remark` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `print_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oprint_photoprint`
--

LOCK TABLES `oprint_photoprint` WRITE;
/*!40000 ALTER TABLE `oprint_photoprint` DISABLE KEYS */;
/*!40000 ALTER TABLE `oprint_photoprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanage_userinfo`
--

DROP TABLE IF EXISTS `usermanage_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usermanage_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `register_time` datetime(6) NOT NULL,
  `last_login_time` datetime(6) NOT NULL,
  `last_login_ip` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userManage_userinfo_user_id_e0ffa4c0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanage_userinfo`
--

LOCK TABLES `usermanage_userinfo` WRITE;
/*!40000 ALTER TABLE `usermanage_userinfo` DISABLE KEYS */;
INSERT INTO `usermanage_userinfo` VALUES (1,'2019-10-27 08:44:37.518214','2019-10-27 08:44:37.518214','0.0.0.0','123456','1997-12-19','','记录自己生活点滴、互联网技术的原创',2),(2,'2019-10-27 08:44:48.903723','2019-10-27 08:44:48.903723','0.0.0.0','123456xzzxv','2019-10-27','','记录自己生活点滴、互联网技术的原创',4),(3,'2019-10-28 07:33:29.857643','2019-10-28 07:33:29.857643','0.0.0.0',NULL,NULL,'','记录自己生活点滴、互联网技术的原创',6);
/*!40000 ALTER TABLE `usermanage_userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10  8:46:29
