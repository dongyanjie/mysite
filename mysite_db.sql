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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 用户信息表',7,'add_userinfo'),(26,'Can change 用户信息表',7,'change_userinfo'),(27,'Can delete 用户信息表',7,'delete_userinfo'),(28,'Can view 用户信息表',7,'view_userinfo'),(29,'Can add article',8,'add_article'),(30,'Can change article',8,'change_article'),(31,'Can delete article',8,'delete_article'),(32,'Can view article',8,'view_article'),(33,'Can add article column',9,'add_articlecolumn'),(34,'Can change article column',9,'change_articlecolumn'),(35,'Can delete article column',9,'delete_articlecolumn'),(36,'Can view article column',9,'view_articlecolumn'),(37,'Can add article comment',10,'add_articlecomment'),(38,'Can change article comment',10,'change_articlecomment'),(39,'Can delete article comment',10,'delete_articlecomment'),(40,'Can view article comment',10,'view_articlecomment'),(41,'Can add article tag',11,'add_articletag'),(42,'Can change article tag',11,'change_articletag'),(43,'Can delete article tag',11,'delete_articletag'),(44,'Can view article tag',11,'view_articletag'),(45,'Can add 留言表',12,'add_guestbook'),(46,'Can change 留言表',12,'change_guestbook'),(47,'Can delete 留言表',12,'delete_guestbook'),(48,'Can view 留言表',12,'view_guestbook');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$w7THcbK90W1q$6GPeGrmZct6CL8EmhEujh4S802bE4fMgX4E8rjgeAuw=','2019-10-27 08:38:26.236144',1,'admin','','','',1,1,'2019-10-27 07:14:23.975961'),(2,'pbkdf2_sha256$120000$n7f9s4nKoQrj$AJw1Yld0EWv1PWMwPZYbCEwo7fhSRTOiTKkPGYVyBKs=','2019-11-02 02:28:53.114865',1,'dongyanjie','','','735238082@qq.com',1,1,'2019-10-27 07:14:49.095533'),(3,'pbkdf2_sha256$120000$6biI5sXf80CB$j7/sev+4dw7iscSCE/+83iQEEWTe45cvuy9wQxaiSBQ=','2019-10-28 12:45:08.331237',0,'张三','','','',0,1,'2019-10-27 08:37:30.528464'),(4,'pbkdf2_sha256$120000$MySBGPZgBjKY$XhNMAGr+GfHe8Ycrtzl3EKasF5K9Krz8mzk3YoMdKvM=',NULL,0,'小明','','','',0,1,'2019-10-27 08:37:45.248599'),(6,'pbkdf2_sha256$120000$CujscsNxx6zx$rRcE/2r/yIgOMLB2pqAQMe/wFnNCAnLgKlHnb5l8w2s=','2019-10-28 07:41:28.561015',0,'夏天','','','23@dsa.com',0,1,'2019-10-28 07:33:29.163545'),(7,'pbkdf2_sha256$120000$klM86qemVzap$AcIji66E0OKT9yOTqphOBDmqZmtgqUbrggGcgLXza28=','2019-10-31 00:48:38.545452',0,'云同','','','yungtonggzs@163.com',0,1,'2019-10-31 00:47:17.250294'),(8,'pbkdf2_sha256$120000$cWP04UyNRtJn$KEN/jiGQ/3m9sQFcuv8//PUEQVFNIkc7eIynpw+i6ao=','2019-10-31 06:09:35.548047',0,'healer','','','1274397066@qq.com',0,1,'2019-10-31 06:08:47.194272'),(9,'pbkdf2_sha256$120000$oBeXs2Gmu0td$PoYwXnIEZ/D7XhKBoOi4Spw1AWuWLONgCckd+xgogpU=',NULL,0,'abcsac','','','safa@121.co',0,1,'2019-10-31 13:51:53.927108');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-10-27 07:40:07.305945','1','技术积累',1,'[{\"added\": {}}]',9,2),(2,'2019-10-27 07:40:18.745938','1','技术积累',2,'[]',9,2),(3,'2019-10-27 07:40:44.085643','2','资源分享',1,'[{\"added\": {}}]',9,2),(4,'2019-10-27 07:42:17.715289','3','成长历程',1,'[{\"added\": {}}]',9,2),(5,'2019-10-27 07:42:40.496612','4','PYTHON',1,'[{\"added\": {}}]',9,2),(6,'2019-10-27 08:05:32.448239','3','成长历程',2,'[]',9,2),(7,'2019-10-27 08:06:21.467862','3','生活趣事',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',9,2),(8,'2019-10-27 08:07:49.834687','2','资源分享',3,'',9,2),(9,'2019-10-27 08:15:50.610497','3','日常随笔',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',9,2),(10,'2019-10-27 08:16:08.658866','5','后端开发',1,'[{\"added\": {}}]',9,2),(11,'2019-10-27 08:20:25.961093','1','前端',1,'[{\"added\": {}}]',11,2),(12,'2019-10-27 08:20:37.062368','1','后端',2,'[{\"changed\": {\"fields\": [\"tag\"]}}]',11,2),(13,'2019-10-27 08:20:51.315785','2','前端',1,'[{\"added\": {}}]',11,2),(14,'2019-10-27 08:21:00.422318','3','数据库',1,'[{\"added\": {}}]',11,2),(15,'2019-10-27 08:21:11.532959','4','常识积累',1,'[{\"added\": {}}]',11,2),(16,'2019-10-27 08:21:19.176471','5','考研笔记',1,'[{\"added\": {}}]',11,2),(17,'2019-10-27 08:21:26.382502','6','数据结构',1,'[{\"added\": {}}]',11,2),(18,'2019-10-27 08:21:35.288153','7','操作系统',1,'[{\"added\": {}}]',11,2),(19,'2019-10-27 08:21:44.169348','8','生活记录',1,'[{\"added\": {}}]',11,2),(20,'2019-10-27 08:22:00.982241','9','编程工具',1,'[{\"added\": {}}]',11,2),(21,'2019-10-27 08:22:09.971123','10','互联网新闻',1,'[{\"added\": {}}]',11,2),(22,'2019-10-27 08:22:33.704524','11','电影赏析',1,'[{\"added\": {}}]',11,2),(23,'2019-10-27 08:22:56.266232','1','小王',1,'[{\"added\": {}}]',12,2),(24,'2019-10-27 08:23:20.102572','2','张张',1,'[{\"added\": {}}]',12,2),(25,'2019-10-27 08:24:20.964800','3','董1',1,'[{\"added\": {}}]',12,2),(26,'2019-10-27 08:27:44.436001','1','博客寻找外链的几个办法？',1,'[{\"added\": {}}]',8,2),(27,'2019-10-27 08:29:22.429796','2','996工作制',1,'[{\"added\": {}}]',8,2),(28,'2019-10-27 08:30:16.079387','3','响应式布局与自适应式布局有什么不同 ？',1,'[{\"added\": {}}]',8,2),(29,'2019-10-27 08:34:08.813308','4','Git 速查表',1,'[{\"added\": {}}]',8,2),(30,'2019-10-27 08:34:50.357556','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,2),(31,'2019-10-27 08:37:30.703056','3','张三',1,'[{\"added\": {}}]',4,2),(32,'2019-10-27 08:37:45.421207','4','小明',1,'[{\"added\": {}}]',4,2),(33,'2019-10-27 08:43:14.742733','5','mnbvcxz',1,'[{\"added\": {}}]',4,2),(34,'2019-10-27 08:43:57.234617','5','mnbvcxz',3,'',4,2),(35,'2019-10-27 08:44:37.519207','1','user dongyanjie',1,'[{\"added\": {}}]',7,2),(36,'2019-10-27 08:44:48.904717','2','user 小明',1,'[{\"added\": {}}]',7,2),(37,'2019-10-27 12:57:11.570606','12','HTML,CSS',1,'[{\"added\": {}}]',11,2),(38,'2019-10-27 13:03:09.026720','13','网络爬虫',1,'[{\"added\": {}}]',11,2),(39,'2019-10-31 13:31:10.865716','10','云同',3,'',12,2),(40,'2019-10-31 13:31:10.870790','9','云同',3,'',12,2),(41,'2019-10-31 13:31:10.874806','5','云同',3,'',12,2),(42,'2019-10-31 13:31:10.878956','4','云同',3,'',12,2),(43,'2019-10-31 15:23:03.377604','14','生活记录',1,'[{\"added\": {}}]',11,2),(44,'2019-10-31 15:23:16.061700','6','生活趣事',1,'[{\"added\": {}}]',9,2),(45,'2019-10-31 15:23:20.745338','5','第一篇博客，希望有一个好的开始',1,'[{\"added\": {}}]',8,2),(46,'2019-10-31 15:23:44.600114','4','Git 速查表',2,'[]',8,2),(47,'2019-10-31 15:24:51.518673','3','响应式布局与自适应式布局有什么不同 ？',3,'',8,2),(48,'2019-10-31 15:24:51.525324','1','博客寻找外链的几个办法？',3,'',8,2),(49,'2019-10-31 15:26:11.879258','7','新闻资讯',1,'[{\"added\": {}}]',9,2),(50,'2019-10-31 15:26:18.131823','2','996工作制',2,'[{\"changed\": {\"fields\": [\"column\"]}}]',8,2),(51,'2019-10-31 15:28:34.957214','2','996工作制',3,'',8,2),(52,'2019-11-02 02:13:58.598131','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(53,'2019-11-02 02:14:29.176424','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(54,'2019-11-02 02:35:21.559570','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(55,'2019-11-02 02:36:20.813126','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(56,'2019-11-02 02:36:27.897232','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(57,'2019-11-02 02:43:38.551993','5','第一篇博客，希望有一个好的开始',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2),(58,'2019-11-02 02:43:46.528300','4','Git 速查表',2,'[{\"changed\": {\"fields\": [\"article_pic\"]}}]',8,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'itadmin','article'),(9,'itadmin','articlecolumn'),(10,'itadmin','articlecomment'),(11,'itadmin','articletag'),(12,'itadmin','guestbook'),(6,'sessions','session'),(7,'userManage','userinfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-27 07:10:40.177100'),(2,'auth','0001_initial','2019-10-27 07:10:41.415301'),(3,'admin','0001_initial','2019-10-27 07:10:41.756551'),(4,'admin','0002_logentry_remove_auto_add','2019-10-27 07:10:41.793754'),(5,'admin','0003_logentry_add_action_flag_choices','2019-10-27 07:10:41.832442'),(6,'contenttypes','0002_remove_content_type_name','2019-10-27 07:10:42.098000'),(7,'auth','0002_alter_permission_name_max_length','2019-10-27 07:10:42.238863'),(8,'auth','0003_alter_user_email_max_length','2019-10-27 07:10:42.317877'),(9,'auth','0004_alter_user_username_opts','2019-10-27 07:10:42.341043'),(10,'auth','0005_alter_user_last_login_null','2019-10-27 07:10:42.435302'),(11,'auth','0006_require_contenttypes_0002','2019-10-27 07:10:42.444203'),(12,'auth','0007_alter_validators_add_error_messages','2019-10-27 07:10:42.465143'),(13,'auth','0008_alter_user_username_max_length','2019-10-27 07:10:42.589555'),(14,'auth','0009_alter_user_last_name_max_length','2019-10-27 07:10:42.744282'),(15,'itadmin','0001_initial','2019-10-27 07:10:44.271976'),(16,'sessions','0001_initial','2019-10-27 07:10:44.459457'),(17,'userManage','0001_initial','2019-10-27 07:10:44.598828'),(18,'itadmin','0002_auto_20191027_1617','2019-10-27 08:17:20.701963'),(19,'itadmin','0002_auto_20191031_1934','2019-10-31 11:34:57.780119'),(20,'itadmin','0003_auto_20191102_1011','2019-11-02 02:11:31.692339');
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
INSERT INTO `django_session` VALUES ('gh3f6r5jpvzcgywacnxuh8ewh1s6pgii','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-14 10:46:20.921474'),('ln7er7aufn8hyz3vmgnnwl9t3iappbf3','YzRkMmZiZjc1ZGRmMTI0YWJjYzU1NjZjYjEwMzM4NTQ0M2RmNTllMjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTZmMjhlNmZkYmZiNjQ2NWVjYThhNDcwOTM4YTAwOWU4YWFhMGNhIn0=','2019-11-14 00:48:38.550816'),('nzjppa64fg2yppgt5iiqoernae3gbfk0','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-14 14:47:29.214012'),('wa31bmqaqcm0x8806r8knf3zqr2acagu','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-16 02:12:55.185726'),('x335r5oouyjsbif1y473nlcdrv3jiq7a','ZjgyNTMxMzZkODdjNTBiMGJlMGQyZjRmOWRjYzBlMmY0NWJmOGMxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDJiMWM5YWY5NDUxYTAxNTM1ZmIzYjc1NWJiMzU0NGRlNjVhOWFiIn0=','2019-11-16 02:28:53.122092'),('z1zhp46z9zkt830uu21kougc2tb5cb5b','MDFkZGNmYjA0MmMzMTg4NDViYzgxOGEzNjA3NWZkYTRlM2UzNWNjNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZjFjNGM4Y2VhYTMxZWI2MjBiOTEwOTU2OTJiM2ExYTcwMTM5MWU1In0=','2019-11-14 06:09:35.554927');
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
  `article_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article`
--

LOCK TABLES `itadmin_article` WRITE;
/*!40000 ALTER TABLE `itadmin_article` DISABLE KEYS */;
INSERT INTO `itadmin_article` VALUES (4,'img/2.jpg','Git 速查表','简明 Git 命令速查表（中文版）简明 Git 命令速查表（中文版）简明 Git 命令速查表（中文版）','Git 命令速查表（中文版）\r\n\r\n创建\r\n复制一个已创建的仓库:\r\n\r\n$ git clone ssh://user@domain.com/repo.git\r\n创建一个新的本地仓库:\r\n\r\n$ git init\r\n \r\n\r\n本地修改\r\n显示工作路径下已修改的文件：\r\n\r\n$ git status\r\n显示与上次提交版本文件的不同：\r\n\r\n$ git diff\r\n把当前所有修改添加到下次提交中：\r\n\r\n$ git add\r\n把对某个文件的修改添加到下次提交中：\r\n\r\n$ git add -p <file>\r\n提交本地的所有修改：\r\n\r\n$ git commit -a\r\n提交之前已标记的变化：\r\n\r\n$ git commit\r\n附加消息提交：\r\n\r\n$ git commit -m \"message here\"\r\n提交，并将提交时间设置为之前的某个日期:\r\n\r\ngit commit --date=\"`date --date=\"n day ago\"`\"-am \"Commit Message\"\r\n修改上次提交\r\n请勿修改已发布的提交记录!\r\n\r\n$ git commit --amend\r\n把当前分支中未提交的修改移动到其他分支\r\n\r\ngit stash\r\ngit checkout branch2\r\ngit stash pop\r\n \r\n\r\n搜索\r\n从当前目录的所有文件中查找文本内容：\r\n\r\n$ git grep \"Hello\"\r\n在某一版本中搜索文本：\r\n\r\n$ git grep \"Hello\" v2.5\r\n \r\n\r\n提交历史\r\n从最新提交开始，显示所有的提交记录（显示hash， 作者信息，提交的标题和时间）：\r\n\r\n$ git log\r\n显示所有提交（仅显示提交的hash和message）：\r\n\r\n$ git log --oneline\r\n显示某个用户的所有提交：\r\n\r\n$ git log --author=\"username\"\r\n显示某个文件的所有修改：\r\n\r\n$ git log -p <file>\r\n谁，在什么时间，修改了文件的什么内容：\r\n\r\n$ git blame <file>\r\n \r\n\r\n分支与标签\r\n列出所有的分支：\r\n\r\n$ git branch\r\n切换分支：\r\n\r\n$ git checkout <branch>\r\n创建并切换到新分支:\r\n\r\n$ git checkout -b <branch>\r\n基于当前分支创建新分支：\r\n\r\n$ git branch <new-branch>\r\n基于远程分支创建新的可追溯的分支：\r\n\r\n$ git branch --track <new-branch><remote-branch>\r\n删除本地分支:\r\n\r\n$ git branch -d <branch>\r\n给当前版本打标签：\r\n\r\n$ git tag <tag-name>\r\n \r\n\r\n更新与发布\r\n列出当前配置的远程端：\r\n\r\n$ git remote -v\r\n显示远程端的信息：\r\n\r\n$ git remote show <remote>\r\n添加新的远程端：\r\n\r\n$ git remote add <remote><url>\r\n下载远程端版本，但不合并到HEAD中：\r\n\r\n$ git fetch <remote>\r\n下载远程端版本，并自动与HEAD版本合并：\r\n\r\n$ git remote pull <remote><url>\r\n将远程端版本合并到本地版本中：\r\n\r\n$ git pull origin master\r\n将本地版本发布到远程端：\r\n\r\n$ git push remote <remote><branch>\r\n删除远程端分支：\r\n\r\n$ git push <remote>:<branch>(since Git v1.5.0)\r\n或\r\ngit push <remote>--delete<branch>(since Git v1.7.0)\r\n发布标签:\r\n\r\n$ git push --tags\r\n \r\n\r\n合并与重置\r\n将分支合并到当前HEAD中：\r\n\r\n$ git merge <branch>\r\n将当前HEAD版本重置到分支中:\r\n请勿重置已发布的提交!\r\n\r\n$ git rebase <branch>\r\n退出重置:\r\n\r\n$ git rebase --abort\r\n解决冲突后继续重置：\r\n\r\n$ git rebase --continue\r\n使用配置好的merge tool 解决冲突：\r\n\r\n$ git mergetool\r\n在编辑器中手动解决冲突后，标记文件为已解决冲突\r\n\r\n$ git add <resolved-file>\r\n$ git rm <resolved-file>\r\n \r\n\r\n撤销\r\n放弃工作目录下的所有修改：\r\n\r\n$ git reset --hard HEAD\r\n移除缓存区的所有文件（i.e. 撤销上次git add）:\r\n\r\n$ git reset HEAD\r\n放弃某个文件的所有本地修改：\r\n\r\n$ git checkout HEAD <file>\r\n重置一个提交（通过创建一个截然不同的新提交）\r\n\r\n$ git revert <commit>\r\n将HEAD重置到指定的版本，并抛弃该版本之后的所有修改：\r\n\r\n$ git reset --hard <commit>\r\n将HEAD重置到上一次提交的版本，并将之后的修改标记为未添加到缓存区的修改：\r\n\r\n$ git reset <commit>\r\n将HEAD重置到上一次提交的版本，并保留未提交的本地修改：\r\n\r\n$ git reset --keep <commit>','2019-10-27 08:34:08.798428',55,2,1),(5,'img/1.jpg','第一篇博客，希望有一个好的开始','## # 第一篇博客，希望有一个好的开始\r\n\r\n  第一篇文章，简单介绍下自己 ，','## # 第一篇博客，希望有一个好的开始\r\n\r\n  第一篇文章，简单介绍下自己 ，\r\n  我来自山东某普通二本计算机专业，在读大三学生，因为学习专业的原因，经常浏览博客解决问题，在前辈中的文章中学到了很多，通过博客去分享知识和经验，让我很感触很深刻，这种精神也正是我所需要的。\r\n\r\n    之前我一直想做个人博客，但因为之前很长时间因准备考试，以及零零散散的小事，就把这件事情放下了， 最近几天因为在搞点东西，有一些闲暇时间，就想起了弄博客的事情，想来想去 我作为一个IT界的小学生，应该去把自己所遇到的坑 用这种方式与大家分享交流， 同时也是把自己生活中的点滴记录下来。\r\n\r\n - 我呢，迄今为止我感觉自己写的代码不是很多。我自己最头疼的问题就是不喜欢写代码。不喜欢写代码是很多人的通病，我自己也知道不喜欢写代码对程序员来说是致命的缺点，所以这是我接下来必须要改掉的坏习惯。\r\n\r\n  昨天在网上看到一句话：\r\n       技术上的东西，做了就有，光想是没有滴，本着认真负责的态度去做事情。\r\n  勉励自己在未来的IT道路上，认认真真，踏踏实实，始终本着学生的态度去请教前辈，同时我也会尽我微薄之力去帮助更多的人，互相帮助，资源分享，共同进步。\r\n  \r\n  ~~多了不说了，明天还要上课，睡觉了~~，未来要学习的东西还有很多，我相信我自己会做得更好。\r\n  晚安 。','2019-10-31 15:23:20.739054',43,2,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article_dianzan`
--

LOCK TABLES `itadmin_article_dianzan` WRITE;
/*!40000 ALTER TABLE `itadmin_article_dianzan` DISABLE KEYS */;
INSERT INTO `itadmin_article_dianzan` VALUES (3,4,3),(5,4,7),(6,4,8),(7,5,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_article_tag`
--

LOCK TABLES `itadmin_article_tag` WRITE;
/*!40000 ALTER TABLE `itadmin_article_tag` DISABLE KEYS */;
INSERT INTO `itadmin_article_tag` VALUES (5,4,1),(6,4,9),(7,5,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_articlecomment`
--

LOCK TABLES `itadmin_articlecomment` WRITE;
/*!40000 ALTER TABLE `itadmin_articlecomment` DISABLE KEYS */;
INSERT INTO `itadmin_articlecomment` VALUES (3,'云同','加油','2019-10-31 17:16:39.687085',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_articletag`
--

LOCK TABLES `itadmin_articletag` WRITE;
/*!40000 ALTER TABLE `itadmin_articletag` DISABLE KEYS */;
INSERT INTO `itadmin_articletag` VALUES (1,'后端','2019-10-27',2),(2,'前端','2019-10-27',2),(3,'数据库','2019-10-27',2),(4,'常识积累','2019-10-27',2),(5,'考研笔记','2019-10-27',2),(6,'数据结构','2019-10-27',2),(7,'操作系统','2019-10-27',2),(8,'生活记录','2019-10-27',2),(9,'编程工具','2019-10-27',2),(10,'互联网新闻','2019-10-27',2),(11,'电影赏析','2019-10-27',2),(12,'HTML,CSS','2019-10-27',2),(13,'网络爬虫','2019-10-27',1),(14,'生活记录','2019-10-31',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itadmin_guestbook`
--

LOCK TABLES `itadmin_guestbook` WRITE;
/*!40000 ALTER TABLE `itadmin_guestbook` DISABLE KEYS */;
INSERT INTO `itadmin_guestbook` VALUES (1,'小王','772@qq.com','不错加油！','2019-10-27 08:22:56.263770'),(2,'张张','772@qq.com','时间会证明一起 ，慢慢来','2019-10-27 08:23:20.101581'),(3,'董1','735238082@qq.com','一步一个脚印，fating！','2019-10-27 08:24:20.963808'),(6,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:10.473083'),(7,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:11.046318'),(8,'云同','yuntonggzs@163.com','加油','2019-10-31 00:50:11.208760'),(11,'healer','1274397066@qq.com','   继续努力','2019-10-31 06:07:44.549552');
/*!40000 ALTER TABLE `itadmin_guestbook` ENABLE KEYS */;
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

-- Dump completed on 2019-11-02 18:45:36
