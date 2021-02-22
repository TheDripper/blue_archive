-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-02-15 23:05:12','2021-02-15 23:05:12','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://deadcustomer.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://deadcustomer.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','DeadCustomer','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=114&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','twentytwentyone','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','twentytwentyone','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','114','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1628982312','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1613963113;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613991913;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614035113;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614035404;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614121513;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','US4M7Q?KVER{T>[Kb;1Ll]CR#Lp&H-b|D5B)4!*bO/:ZXSz2|a9t-{tx]E C:<3F','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','+m,XqxJr4;y^l0e3KBjh}dz^]3!>0`dZ4#Q/<.Yk~f**Lh^&@uMf1V}`oKJhc!^#','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613948997;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613948998;s:7:\"checked\";a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.5.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613948998;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyone','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_timeout_browser_4185aee9e10386cddfa3b659d83dba4c','1614035404','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_browser_4185aee9e10386cddfa3b659d83dba4c','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1614035404','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (139,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (148,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'_transient_health-check-site-status-result','{\"good\":\"13\",\"recommended\":\"6\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (218,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (219,'scporder_install','1','yes');
INSERT INTO `wp_options` VALUES (220,'simple-rate-time','1613982964','yes');
INSERT INTO `wp_options` VALUES (221,'scporder_options','a:3:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:4:\"tags\";s:0:\"\";s:18:\"show_advanced_view\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (261,'_site_transient_timeout_theme_roots','1613950798','no');
INSERT INTO `wp_options` VALUES (262,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1613712937:1');
INSERT INTO `wp_postmeta` VALUES (4,1,'_edit_lock','1613904769:1');
INSERT INTO `wp_postmeta` VALUES (5,7,'_wp_attached_file','2021/02/home_square.mp4');
INSERT INTO `wp_postmeta` VALUES (6,7,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2555084;s:8:\"filesize\";i:8788579;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:28;s:16:\"length_formatted\";s:4:\"0:28\";s:5:\"width\";i:1688;s:6:\"height\";i:1384;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (9,1,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\n8788579\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (12,10,'_edit_lock','1613881711:1');
INSERT INTO `wp_postmeta` VALUES (13,11,'_wp_attached_file','2021/02/openthedoor.mov');
INSERT INTO `wp_postmeta` VALUES (14,11,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:23221617;s:8:\"filesize\";i:32800571;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:11;s:16:\"length_formatted\";s:4:\"0:11\";s:5:\"width\";i:2058;s:6:\"height\";i:1206;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:1610874194;}');
INSERT INTO `wp_postmeta` VALUES (18,13,'_wp_attached_file','2021/02/openthedoor.mp4');
INSERT INTO `wp_postmeta` VALUES (19,13,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2490086;s:8:\"filesize\";i:3517295;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:11;s:16:\"length_formatted\";s:4:\"0:11\";s:5:\"width\";i:2058;s:6:\"height\";i:1206;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (20,14,'_wp_attached_file','2021/02/openthedoor-1.mp4');
INSERT INTO `wp_postmeta` VALUES (21,14,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2490086;s:8:\"filesize\";i:3517295;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:11;s:16:\"length_formatted\";s:4:\"0:11\";s:5:\"width\";i:2058;s:6:\"height\";i:1206;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (24,10,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor-1.mp4\n3517295\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (25,16,'_edit_lock','1613903977:1');
INSERT INTO `wp_postmeta` VALUES (26,17,'_wp_attached_file','2021/02/shot.mp4');
INSERT INTO `wp_postmeta` VALUES (27,17,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2008532;s:8:\"filesize\";i:1385182;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:6;s:16:\"length_formatted\";s:4:\"0:06\";s:5:\"width\";i:1242;s:6:\"height\";i:954;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (30,16,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\n1385182\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (31,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (32,10,'_wp_trash_meta_time','1613882042');
INSERT INTO `wp_postmeta` VALUES (33,10,'_wp_desired_post_slug','10-2');
INSERT INTO `wp_postmeta` VALUES (34,19,'_edit_lock','1613904772:1');
INSERT INTO `wp_postmeta` VALUES (35,20,'_wp_attached_file','2021/02/create_nuxt.mp4');
INSERT INTO `wp_postmeta` VALUES (36,20,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:288587;s:8:\"filesize\";i:1550627;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:43;s:16:\"length_formatted\";s:4:\"0:43\";s:5:\"width\";i:1242;s:6:\"height\";i:1242;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (39,19,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\n1550627\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (40,22,'_edit_lock','1613895046:1');
INSERT INTO `wp_postmeta` VALUES (41,23,'_wp_attached_file','2021/02/tyler.mp4');
INSERT INTO `wp_postmeta` VALUES (42,23,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:3645303;s:8:\"filesize\";i:17733084;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:39;s:16:\"length_formatted\";s:4:\"0:39\";s:5:\"width\";i:1228;s:6:\"height\";i:1212;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (48,26,'_wp_attached_file','2021/02/tyler_square_zoom.mov');
INSERT INTO `wp_postmeta` VALUES (49,26,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:16468779;s:8:\"filesize\";i:77994460;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:38;s:16:\"length_formatted\";s:4:\"0:38\";s:5:\"width\";i:1228;s:6:\"height\";i:1212;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:1613713607;}');
INSERT INTO `wp_postmeta` VALUES (50,28,'_wp_attached_file','2021/02/freeway.mp4');
INSERT INTO `wp_postmeta` VALUES (51,28,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1213984;s:8:\"filesize\";i:1922241;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:13;s:16:\"length_formatted\";s:4:\"0:13\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (52,29,'_wp_attached_file','2021/02/fire.mp4');
INSERT INTO `wp_postmeta` VALUES (53,29,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1329463;s:8:\"filesize\";i:1479076;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:9;s:16:\"length_formatted\";s:4:\"0:09\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (54,30,'_wp_attached_file','2021/02/fire-pan.mp4');
INSERT INTO `wp_postmeta` VALUES (55,30,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2119293;s:8:\"filesize\";i:4940650;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:19;s:16:\"length_formatted\";s:4:\"0:19\";s:5:\"width\";i:910;s:6:\"height\";i:910;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (58,22,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/freeway.mp4\n1922241\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (59,22,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/fire.mp4\n1479076\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (60,22,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan.mp4\n4940650\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (61,32,'_edit_lock','1613904770:1');
INSERT INTO `wp_postmeta` VALUES (62,33,'_wp_attached_file','2021/02/freeway-1.mp4');
INSERT INTO `wp_postmeta` VALUES (63,33,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1213984;s:8:\"filesize\";i:1922241;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:13;s:16:\"length_formatted\";s:4:\"0:13\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (67,22,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (68,22,'_wp_trash_meta_time','1613895193');
INSERT INTO `wp_postmeta` VALUES (69,22,'_wp_desired_post_slug','22-2');
INSERT INTO `wp_postmeta` VALUES (70,35,'_edit_lock','1613896242:1');
INSERT INTO `wp_postmeta` VALUES (71,36,'_wp_attached_file','2021/02/fire-pan-1.mp4');
INSERT INTO `wp_postmeta` VALUES (72,36,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2119293;s:8:\"filesize\";i:4940650;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:19;s:16:\"length_formatted\";s:4:\"0:19\";s:5:\"width\";i:910;s:6:\"height\";i:910;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (76,38,'_edit_lock','1613904004:1');
INSERT INTO `wp_postmeta` VALUES (77,39,'_wp_attached_file','2021/02/fire-pan-2.mp4');
INSERT INTO `wp_postmeta` VALUES (78,39,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2119293;s:8:\"filesize\";i:4940650;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:19;s:16:\"length_formatted\";s:4:\"0:19\";s:5:\"width\";i:910;s:6:\"height\";i:910;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (82,41,'_wp_attached_file','2021/02/fire-1.mp4');
INSERT INTO `wp_postmeta` VALUES (83,41,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1329463;s:8:\"filesize\";i:1479076;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:9;s:16:\"length_formatted\";s:4:\"0:09\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (87,43,'_wp_attached_file','2021/02/fire-2.mp4');
INSERT INTO `wp_postmeta` VALUES (88,43,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1329463;s:8:\"filesize\";i:1479076;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:9;s:16:\"length_formatted\";s:4:\"0:09\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (91,45,'_wp_attached_file','2021/02/fire-pan-3.mp4');
INSERT INTO `wp_postmeta` VALUES (92,45,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2119293;s:8:\"filesize\";i:4940650;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:19;s:16:\"length_formatted\";s:4:\"0:19\";s:5:\"width\";i:910;s:6:\"height\";i:910;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (93,35,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/fire-2.mp4\n1479076\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (96,38,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\n4940650\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (97,47,'_wp_attached_file','2021/02/freeway-2.mp4');
INSERT INTO `wp_postmeta` VALUES (98,47,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1213984;s:8:\"filesize\";i:1922241;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:13;s:16:\"length_formatted\";s:4:\"0:13\";s:5:\"width\";i:940;s:6:\"height\";i:940;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (101,32,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\n1922241\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (102,35,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (103,35,'_wp_trash_meta_time','1613896387');
INSERT INTO `wp_postmeta` VALUES (104,35,'_wp_desired_post_slug','35-2');
INSERT INTO `wp_postmeta` VALUES (115,54,'_edit_lock','1613902385:1');
INSERT INTO `wp_postmeta` VALUES (116,55,'_wp_attached_file','2021/02/tyler_square.mp4');
INSERT INTO `wp_postmeta` VALUES (117,55,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:3637854;s:8:\"filesize\";i:17234382;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:38;s:16:\"length_formatted\";s:4:\"0:38\";s:5:\"width\";i:1228;s:6:\"height\";i:1212;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (120,54,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square.mp4\n17234382\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (121,57,'_edit_lock','1613904771:1');
INSERT INTO `wp_postmeta` VALUES (122,58,'_edit_lock','1613904770:1');
INSERT INTO `wp_postmeta` VALUES (123,59,'_edit_lock','1613904771:1');
INSERT INTO `wp_postmeta` VALUES (124,60,'_wp_attached_file','2021/02/mpeg.mp4');
INSERT INTO `wp_postmeta` VALUES (125,60,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2228825;s:8:\"filesize\";i:522429;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:2;s:16:\"length_formatted\";s:4:\"0:02\";s:5:\"width\";i:1002;s:6:\"height\";i:1002;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (128,57,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\n522429\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (129,62,'_wp_attached_file','2021/02/tickle.mp4');
INSERT INTO `wp_postmeta` VALUES (130,62,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1456506;s:8:\"filesize\";i:2843330;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:16;s:16:\"length_formatted\";s:4:\"0:16\";s:5:\"width\";i:1002;s:6:\"height\";i:1002;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (133,58,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\n2843330\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (136,65,'_wp_attached_file','2021/02/wheat-germ.mp4');
INSERT INTO `wp_postmeta` VALUES (137,65,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1390851;s:8:\"filesize\";i:883934;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:5;s:16:\"length_formatted\";s:4:\"0:05\";s:5:\"width\";i:1002;s:6:\"height\";i:1002;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (138,66,'_edit_lock','1613904769:1');
INSERT INTO `wp_postmeta` VALUES (139,67,'_edit_lock','1613902832:1');
INSERT INTO `wp_postmeta` VALUES (140,68,'_wp_attached_file','2021/02/cars.mp4');
INSERT INTO `wp_postmeta` VALUES (141,68,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1348916;s:8:\"filesize\";i:3881050;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:23;s:16:\"length_formatted\";s:4:\"0:23\";s:5:\"width\";i:1002;s:6:\"height\";i:1002;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (142,69,'_wp_attached_file','2021/02/9lives.mp4');
INSERT INTO `wp_postmeta` VALUES (143,69,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:1102049;s:8:\"filesize\";i:4291154;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:31;s:16:\"length_formatted\";s:4:\"0:31\";s:5:\"width\";i:1002;s:6:\"height\";i:1002;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (146,66,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\n3881050\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (149,67,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4\n4291154\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (152,59,'enclosure','http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\n883934\nvideo/mp4\n');
INSERT INTO `wp_postmeta` VALUES (159,76,'_edit_lock','1613898103:1');
INSERT INTO `wp_postmeta` VALUES (182,54,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (183,54,'_wp_trash_meta_time','1613902530');
INSERT INTO `wp_postmeta` VALUES (184,54,'_wp_desired_post_slug','tyler');
INSERT INTO `wp_postmeta` VALUES (189,67,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (190,67,'_wp_trash_meta_time','1613903501');
INSERT INTO `wp_postmeta` VALUES (191,67,'_wp_desired_post_slug','9lives');
INSERT INTO `wp_postmeta` VALUES (192,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (193,3,'_wp_trash_meta_time','1613904022');
INSERT INTO `wp_postmeta` VALUES (194,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (195,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (196,2,'_wp_trash_meta_time','1613904022');
INSERT INTO `wp_postmeta` VALUES (197,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (198,93,'_edit_lock','1613903935:1');
INSERT INTO `wp_postmeta` VALUES (199,94,'_edit_lock','1613905159:1');
INSERT INTO `wp_postmeta` VALUES (200,95,'_edit_lock','1613905173:1');
INSERT INTO `wp_postmeta` VALUES (201,96,'_edit_lock','1613905122:1');
INSERT INTO `wp_postmeta` VALUES (202,97,'_edit_lock','1613905192:1');
INSERT INTO `wp_postmeta` VALUES (203,98,'_edit_lock','1613905198:1');
INSERT INTO `wp_postmeta` VALUES (204,99,'_edit_lock','1613905203:1');
INSERT INTO `wp_postmeta` VALUES (205,100,'_edit_lock','1613905211:1');
INSERT INTO `wp_postmeta` VALUES (206,101,'_edit_lock','1613905084:1');
INSERT INTO `wp_postmeta` VALUES (207,102,'_edit_lock','1613905097:1');
INSERT INTO `wp_postmeta` VALUES (208,103,'_edit_lock','1613904090:1');
INSERT INTO `wp_postmeta` VALUES (209,113,'_edit_lock','1613904228:1');
INSERT INTO `wp_postmeta` VALUES (210,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (211,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (212,114,'_edit_lock','1613905231:1');
INSERT INTO `wp_postmeta` VALUES (213,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (214,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (215,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (216,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (217,100,'_edit_last','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-15 23:05:12','2021-02-15 23:05:12','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','1code','','publish','open','open','','hello-world','','','2021-02-21 10:11:53','2021-02-21 10:11:53','',0,'http://deadcustomer.local/?p=1',1,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-02-15 23:05:12','2021-02-15 23:05:12','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://deadcustomer.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-02-21 10:40:22','2021-02-21 10:40:22','',0,'http://deadcustomer.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-02-15 23:05:12','2021-02-15 23:05:12','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://deadcustomer.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-02-21 10:40:22','2021-02-21 10:40:22','',0,'http://deadcustomer.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-02-15 23:10:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-15 23:10:04','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-02-19 01:58:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-19 01:58:01','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-02-21 04:11:45','2021-02-21 04:11:45','','home_square','','inherit','open','closed','','home_square','','','2021-02-21 04:11:45','2021-02-21 04:11:45','',1,'http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-02-21 04:11:49','2021-02-21 04:11:49','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-02-21 04:11:49','2021-02-21 04:11:49','',1,'http://deadcustomer.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-02-21 04:12:29','2021-02-21 04:12:29','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-02-21 04:12:29','2021-02-21 04:12:29','',1,'http://deadcustomer.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-02-21 04:19:43','2021-02-21 04:19:43','<!-- wp:video {\"id\":14} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor-1.mp4\"></video></figure>\n<!-- /wp:video -->','','','trash','open','open','','10-2__trashed','','','2021-02-21 04:34:02','2021-02-21 04:34:02','',0,'http://deadcustomer.local/?p=10',0,'post','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-02-21 04:19:32','2021-02-21 04:19:32','','openthedoor','','inherit','open','closed','','openthedoor','','','2021-02-21 04:19:32','2021-02-21 04:19:32','',10,'http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor.mov',0,'attachment','video/quicktime',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-02-21 04:19:38','2021-02-21 04:19:38','<!-- wp:video {\"id\":11} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor.mov\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','10-revision-v1','','','2021-02-21 04:19:38','2021-02-21 04:19:38','',10,'http://deadcustomer.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-02-21 04:22:02','2021-02-21 04:22:02','','openthedoor','','inherit','open','closed','','openthedoor-2','','','2021-02-21 04:22:02','2021-02-21 04:22:02','',10,'http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-02-21 04:23:15','2021-02-21 04:23:15','','openthedoor-1','','inherit','open','closed','','openthedoor-1','','','2021-02-21 04:23:15','2021-02-21 04:23:15','',10,'http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor-1.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-02-21 04:23:21','2021-02-21 04:23:21','<!-- wp:video {\"id\":14} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/openthedoor-1.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','10-revision-v1','','','2021-02-21 04:23:21','2021-02-21 04:23:21','',10,'http://deadcustomer.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-02-21 04:31:13','2021-02-21 04:31:13','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','2shot','','publish','open','open','','16-2','','','2021-02-21 10:11:55','2021-02-21 10:11:55','',0,'http://deadcustomer.local/?p=16',2,'post','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-02-21 04:31:03','2021-02-21 04:31:03','','shot','','inherit','open','closed','','shot','','','2021-02-21 04:31:03','2021-02-21 04:31:03','',16,'http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-02-21 04:31:13','2021-02-21 04:31:13','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','16-revision-v1','','','2021-02-21 04:31:13','2021-02-21 04:31:13','',16,'http://deadcustomer.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-02-21 06:26:42','2021-02-21 06:26:42','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','11nuxt','','publish','open','open','','19-2','','','2021-02-21 10:23:02','2021-02-21 10:23:02','',0,'http://deadcustomer.local/?p=19',9,'post','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-02-21 06:26:07','2021-02-21 06:26:07','','create_nuxt','','inherit','open','closed','','create_nuxt','','','2021-02-21 06:26:07','2021-02-21 06:26:07','',19,'http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-02-21 06:26:13','2021-02-21 06:26:13','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','19-revision-v1','','','2021-02-21 06:26:13','2021-02-21 06:26:13','',19,'http://deadcustomer.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-02-21 06:30:38','2021-02-21 06:30:38','<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":28} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":29} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":30} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','','','trash','open','open','','22-2__trashed','','','2021-02-21 08:13:13','2021-02-21 08:13:13','',0,'http://deadcustomer.local/?p=22',0,'post','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-02-21 06:30:36','2021-02-21 06:30:36','','tyler','','inherit','open','closed','','tyler','','','2021-02-21 06:30:36','2021-02-21 06:30:36','',22,'http://deadcustomer.local/wp-content/uploads/2021/02/tyler.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-02-21 06:30:38','2021-02-21 06:30:38','<!-- wp:video {\"id\":23} -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tyler.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','22-revision-v1','','','2021-02-21 06:30:38','2021-02-21 06:30:38','',22,'http://deadcustomer.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-02-21 06:30:52','2021-02-21 06:30:52','<!-- wp:video {\"id\":23} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tyler.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','22-revision-v1','','','2021-02-21 06:30:52','2021-02-21 06:30:52','',22,'http://deadcustomer.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-02-21 06:32:11','2021-02-21 06:32:11','','tyler_square_zoom','','inherit','open','closed','','tyler_square_zoom','','','2021-02-21 06:32:11','2021-02-21 06:32:11','',22,'http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square_zoom.mov',0,'attachment','video/quicktime',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-02-21 07:46:09','2021-02-21 07:46:09','','freeway','','inherit','open','closed','','freeway','','','2021-02-21 07:46:09','2021-02-21 07:46:09','',22,'http://deadcustomer.local/wp-content/uploads/2021/02/freeway.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-02-21 07:46:23','2021-02-21 07:46:23','','fire','','inherit','open','closed','','fire','','','2021-02-21 07:46:23','2021-02-21 07:46:23','',22,'http://deadcustomer.local/wp-content/uploads/2021/02/fire.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-02-21 07:46:34','2021-02-21 07:46:34','','fire-pan','','inherit','open','closed','','fire-pan','','','2021-02-21 07:46:34','2021-02-21 07:46:34','',22,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-02-21 07:46:40','2021-02-21 07:46:40','<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":28} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":29} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:video {\"id\":30} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','','','inherit','closed','closed','','22-revision-v1','','','2021-02-21 07:46:40','2021-02-21 07:46:40','',22,'http://deadcustomer.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-02-21 08:12:54','2021-02-21 08:12:54','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','7freeway','','publish','open','open','','32-2','','','2021-02-21 10:12:04','2021-02-21 10:12:04','',0,'http://deadcustomer.local/?p=32',6,'post','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-02-21 08:12:41','2021-02-21 08:12:41','','freeway-1','','inherit','open','closed','','freeway-1','','','2021-02-21 08:12:41','2021-02-21 08:12:41','',32,'http://deadcustomer.local/wp-content/uploads/2021/02/freeway-1.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-02-21 08:12:54','2021-02-21 08:12:54','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-1.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','32-revision-v1','','','2021-02-21 08:12:54','2021-02-21 08:12:54','',32,'http://deadcustomer.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-02-21 08:14:25','2021-02-21 08:14:25','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-2.mp4\"></video></figure>\n<!-- /wp:video -->','','','trash','open','open','','35-2__trashed','','','2021-02-21 08:33:07','2021-02-21 08:33:07','',0,'http://deadcustomer.local/?p=35',0,'post','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-02-21 08:13:58','2021-02-21 08:13:58','','fire-pan-1','','inherit','open','closed','','fire-pan-1','','','2021-02-21 08:13:58','2021-02-21 08:13:58','',35,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-1.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-02-21 08:14:25','2021-02-21 08:14:25','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-1.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','35-revision-v1','','','2021-02-21 08:14:25','2021-02-21 08:14:25','',35,'http://deadcustomer.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-02-21 08:17:33','2021-02-21 08:17:33','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','4fire','','publish','open','open','','38-2','','','2021-02-21 10:11:58','2021-02-21 10:11:58','',0,'http://deadcustomer.local/?p=38',4,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-02-21 08:17:07','2021-02-21 08:17:07','','fire-pan-2','','inherit','open','closed','','fire-pan-2','','','2021-02-21 08:17:07','2021-02-21 08:17:07','',38,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-2.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-02-21 08:17:33','2021-02-21 08:17:33','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-2.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','38-revision-v1','','','2021-02-21 08:17:33','2021-02-21 08:17:33','',38,'http://deadcustomer.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-02-21 08:18:07','2021-02-21 08:18:07','','fire-1','','inherit','open','closed','','fire-1','','','2021-02-21 08:18:07','2021-02-21 08:18:07','',32,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-1.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-02-21 08:18:43','2021-02-21 08:18:43','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-1.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','32-revision-v1','','','2021-02-21 08:18:43','2021-02-21 08:18:43','',32,'http://deadcustomer.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-02-21 08:30:01','2021-02-21 08:30:01','','fire-2','','inherit','open','closed','','fire-2','','','2021-02-21 08:30:01','2021-02-21 08:30:01','',35,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-2.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-02-21 08:30:12','2021-02-21 08:30:12','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-2.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','35-revision-v1','','','2021-02-21 08:30:12','2021-02-21 08:30:12','',35,'http://deadcustomer.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-02-21 08:30:24','2021-02-21 08:30:24','','fire-pan-3','','inherit','open','closed','','fire-pan-3','','','2021-02-21 08:30:24','2021-02-21 08:30:24','',38,'http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-02-21 08:30:29','2021-02-21 08:30:29','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','38-revision-v1','','','2021-02-21 08:30:29','2021-02-21 08:30:29','',38,'http://deadcustomer.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-02-21 08:31:36','2021-02-21 08:31:36','','freeway-2','','inherit','open','closed','','freeway-2','','','2021-02-21 08:31:36','2021-02-21 08:31:36','',32,'http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-02-21 08:32:20','2021-02-21 08:32:20','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','','','inherit','closed','closed','','32-revision-v1','','','2021-02-21 08:32:20','2021-02-21 08:32:20','',32,'http://deadcustomer.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-02-21 08:37:30','2021-02-21 08:37:30','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','fire','','inherit','closed','closed','','38-revision-v1','','','2021-02-21 08:37:30','2021-02-21 08:37:30','',38,'http://deadcustomer.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-02-21 08:37:39','2021-02-21 08:37:39','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','freeway','','inherit','closed','closed','','32-revision-v1','','','2021-02-21 08:37:39','2021-02-21 08:37:39','',32,'http://deadcustomer.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-02-21 08:37:43','2021-02-21 08:37:43','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->','nuxt','','inherit','closed','closed','','19-revision-v1','','','2021-02-21 08:37:43','2021-02-21 08:37:43','',19,'http://deadcustomer.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-02-21 08:37:47','2021-02-21 08:37:47','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','shot','','inherit','closed','closed','','16-revision-v1','','','2021-02-21 08:37:47','2021-02-21 08:37:47','',16,'http://deadcustomer.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-02-21 08:38:04','2021-02-21 08:38:04','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','code','','inherit','closed','closed','','1-revision-v1','','','2021-02-21 08:38:04','2021-02-21 08:38:04','',1,'http://deadcustomer.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-02-21 08:56:36','2021-02-21 08:56:36','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square.mp4\"></video></figure>\n<!-- /wp:video -->','6tyler','','trash','open','open','','tyler__trashed','','','2021-02-21 10:15:30','2021-02-21 10:15:30','',0,'http://deadcustomer.local/?p=54',6,'post','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-02-21 08:56:26','2021-02-21 08:56:26','','tyler_square','','inherit','open','closed','','tyler_square','','','2021-02-21 08:56:26','2021-02-21 08:56:26','',54,'http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-02-21 08:56:36','2021-02-21 08:56:36','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square.mp4\"></video></figure>\n<!-- /wp:video -->','tyler','','inherit','closed','closed','','54-revision-v1','','','2021-02-21 08:56:36','2021-02-21 08:56:36','',54,'http://deadcustomer.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-02-21 08:58:50','2021-02-21 08:58:50','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','9mpeg','','publish','open','open','','mpeg','','','2021-02-21 10:12:11','2021-02-21 10:12:11','',0,'http://deadcustomer.local/?p=57',8,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-02-21 09:00:08','2021-02-21 09:00:08','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\"></video></figure>\n<!-- /wp:video -->','5tickle','','publish','open','open','','tickle','','','2021-02-21 10:12:00','2021-02-21 10:12:00','',0,'http://deadcustomer.local/?p=58',5,'post','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-02-21 09:01:55','2021-02-21 09:01:55','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','8germ','','publish','open','open','','germ','','','2021-02-21 10:12:08','2021-02-21 10:12:08','',0,'http://deadcustomer.local/?p=59',7,'post','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-02-21 08:58:45','2021-02-21 08:58:45','','mpeg','','inherit','open','closed','','mpeg','','','2021-02-21 08:58:45','2021-02-21 08:58:45','',57,'http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-02-21 08:58:48','2021-02-21 08:58:48','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','mpeg','','inherit','closed','closed','','57-revision-v1','','','2021-02-21 08:58:48','2021-02-21 08:58:48','',57,'http://deadcustomer.local/57-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-02-21 08:58:59','2021-02-21 08:58:59','','tickle','','inherit','open','closed','','tickle','','','2021-02-21 08:58:59','2021-02-21 08:58:59','',58,'http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-02-21 09:00:06','2021-02-21 09:00:06','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\"></video></figure>\n<!-- /wp:video -->','tickle','','inherit','closed','closed','','58-revision-v1','','','2021-02-21 09:00:06','2021-02-21 09:00:06','',58,'http://deadcustomer.local/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-02-21 09:00:23','2021-02-21 09:00:23','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','mpeg','','inherit','closed','closed','','57-revision-v1','','','2021-02-21 09:00:23','2021-02-21 09:00:23','',57,'http://deadcustomer.local/57-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-02-21 09:00:59','2021-02-21 09:00:59','','wheat-germ','','inherit','open','closed','','wheat-germ','','','2021-02-21 09:00:59','2021-02-21 09:00:59','',59,'http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-02-21 09:01:45','2021-02-21 09:01:45','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video></figure>\n<!-- /wp:video -->','3cars','','publish','open','open','','cars','','','2021-02-21 10:22:50','2021-02-21 10:22:50','',0,'http://deadcustomer.local/?p=66',3,'post','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-02-21 09:01:49','2021-02-21 09:01:49','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4\"></video></figure>\n<!-- /wp:video -->','10lives','','trash','open','open','','9lives__trashed','','','2021-02-21 10:31:41','2021-02-21 10:31:41','',0,'http://deadcustomer.local/?p=67',9,'post','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-02-21 09:01:15','2021-02-21 09:01:15','','cars','','inherit','open','closed','','cars','','','2021-02-21 09:01:15','2021-02-21 09:01:15','',66,'http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-02-21 09:01:23','2021-02-21 09:01:23','','9lives','','inherit','open','closed','','9lives','','','2021-02-21 09:01:23','2021-02-21 09:01:23','',67,'http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-02-21 09:01:45','2021-02-21 09:01:45','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video><figcaption>c</figcaption></figure>\n<!-- /wp:video -->','cars','','inherit','closed','closed','','66-revision-v1','','','2021-02-21 09:01:45','2021-02-21 09:01:45','',66,'http://deadcustomer.local/66-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-02-21 09:01:49','2021-02-21 09:01:49','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4\"></video></figure>\n<!-- /wp:video -->','9lives','','inherit','closed','closed','','67-revision-v1','','','2021-02-21 09:01:49','2021-02-21 09:01:49','',67,'http://deadcustomer.local/67-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-02-21 09:01:55','2021-02-21 09:01:55','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','germ','','inherit','closed','closed','','59-revision-v1','','','2021-02-21 09:01:55','2021-02-21 09:01:55','',59,'http://deadcustomer.local/59-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-02-21 09:02:09','2021-02-21 09:02:09','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video><figcaption>c</figcaption></figure>\n<!-- /wp:video -->','cars','','inherit','closed','closed','','66-revision-v1','','','2021-02-21 09:02:09','2021-02-21 09:02:09','',66,'http://deadcustomer.local/66-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-02-21 09:02:18','2021-02-21 09:02:18','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4\"></video></figure>\n<!-- /wp:video -->','9lives','','inherit','closed','closed','','67-revision-v1','','','2021-02-21 09:02:18','2021-02-21 09:02:18','',67,'http://deadcustomer.local/67-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-02-21 09:02:25','2021-02-21 09:02:25','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','germ','','inherit','closed','closed','','59-revision-v1','','','2021-02-21 09:02:25','2021-02-21 09:02:25','',59,'http://deadcustomer.local/59-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-02-21 09:04:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-21 09:04:06','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?p=76',0,'post','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-02-21 10:11:53','2021-02-21 10:11:53','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','1code','','inherit','closed','closed','','1-revision-v1','','','2021-02-21 10:11:53','2021-02-21 10:11:53','',1,'http://deadcustomer.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-02-21 10:11:55','2021-02-21 10:11:55','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','2shot','','inherit','closed','closed','','16-revision-v1','','','2021-02-21 10:11:55','2021-02-21 10:11:55','',16,'http://deadcustomer.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-02-21 10:11:57','2021-02-21 10:11:57','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video><figcaption>c</figcaption></figure>\n<!-- /wp:video -->','3cars','','inherit','closed','closed','','66-revision-v1','','','2021-02-21 10:11:57','2021-02-21 10:11:57','',66,'http://deadcustomer.local/66-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-02-21 10:11:58','2021-02-21 10:11:58','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','4fire','','inherit','closed','closed','','38-revision-v1','','','2021-02-21 10:11:58','2021-02-21 10:11:58','',38,'http://deadcustomer.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-02-21 10:12:00','2021-02-21 10:12:00','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\"></video></figure>\n<!-- /wp:video -->','5tickle','','inherit','closed','closed','','58-revision-v1','','','2021-02-21 10:12:00','2021-02-21 10:12:00','',58,'http://deadcustomer.local/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-02-21 10:12:02','2021-02-21 10:12:02','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tyler_square.mp4\"></video></figure>\n<!-- /wp:video -->','6tyler','','inherit','closed','closed','','54-revision-v1','','','2021-02-21 10:12:02','2021-02-21 10:12:02','',54,'http://deadcustomer.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-02-21 10:12:04','2021-02-21 10:12:04','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','7freeway','','inherit','closed','closed','','32-revision-v1','','','2021-02-21 10:12:04','2021-02-21 10:12:04','',32,'http://deadcustomer.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-02-21 10:12:08','2021-02-21 10:12:08','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','8germ','','inherit','closed','closed','','59-revision-v1','','','2021-02-21 10:12:08','2021-02-21 10:12:08','',59,'http://deadcustomer.local/59-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-02-21 10:12:11','2021-02-21 10:12:11','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','9mpeg','','inherit','closed','closed','','57-revision-v1','','','2021-02-21 10:12:11','2021-02-21 10:12:11','',57,'http://deadcustomer.local/57-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-02-21 10:12:19','2021-02-21 10:12:19','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/9lives.mp4\"></video></figure>\n<!-- /wp:video -->','10lives','','inherit','closed','closed','','67-revision-v1','','','2021-02-21 10:12:19','2021-02-21 10:12:19','',67,'http://deadcustomer.local/67-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-02-21 10:12:21','2021-02-21 10:12:21','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->','11nuxt','','inherit','closed','closed','','19-revision-v1','','','2021-02-21 10:12:21','2021-02-21 10:12:21','',19,'http://deadcustomer.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-02-21 10:22:50','2021-02-21 10:22:50','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video></figure>\n<!-- /wp:video -->','3cars','','inherit','closed','closed','','66-revision-v1','','','2021-02-21 10:22:50','2021-02-21 10:22:50','',66,'http://deadcustomer.local/66-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-02-21 10:23:02','2021-02-21 10:23:02','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','11nuxt','','inherit','closed','closed','','19-revision-v1','','','2021-02-21 10:23:02','2021-02-21 10:23:02','',19,'http://deadcustomer.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-02-21 10:40:22','2021-02-21 10:40:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://deadcustomer.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-02-21 10:40:22','2021-02-21 10:40:22','',3,'http://deadcustomer.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-02-21 10:40:22','2021-02-21 10:40:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://deadcustomer.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-02-21 10:40:22','2021-02-21 10:40:22','',2,'http://deadcustomer.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-02-21 10:40:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-21 10:40:52','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?page_id=93',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-02-21 10:41:41','2021-02-21 10:41:41','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','code','','publish','closed','closed','','code','','','2021-02-21 10:59:19','2021-02-21 10:59:19','',114,'http://deadcustomer.local/?page_id=94',2,'page','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-02-21 10:41:58','2021-02-21 10:41:58','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','shot','','publish','closed','closed','','shot','','','2021-02-21 10:59:33','2021-02-21 10:59:33','',114,'http://deadcustomer.local/?page_id=95',3,'page','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-02-21 10:44:10','2021-02-21 10:44:10','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video><figcaption> </figcaption></figure>\n<!-- /wp:video -->','cars','','publish','closed','closed','','cars','','','2021-02-21 10:59:40','2021-02-21 10:59:40','',114,'http://deadcustomer.local/?page_id=96',4,'page','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-02-21 10:42:26','2021-02-21 10:42:26','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->','fire','','publish','closed','closed','','fire','','','2021-02-21 10:59:52','2021-02-21 10:59:52','',114,'http://deadcustomer.local/?page_id=97',5,'page','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-02-21 10:42:52','2021-02-21 10:42:52','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\"></video></figure>\n<!-- /wp:video -->','tickle','','publish','closed','closed','','tickle','','','2021-02-21 10:59:58','2021-02-21 10:59:58','',114,'http://deadcustomer.local/?page_id=98',6,'page','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-02-21 10:44:20','2021-02-21 10:44:20','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','freeway','','publish','closed','closed','','freeway','','','2021-02-21 11:00:03','2021-02-21 11:00:03','',114,'http://deadcustomer.local/?page_id=99',7,'page','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-02-21 10:44:24','2021-02-21 10:44:24','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','germ','','publish','closed','closed','','germ','','','2021-02-21 11:00:11','2021-02-21 11:00:11','',114,'http://deadcustomer.local/?page_id=100',8,'page','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-02-21 10:43:25','2021-02-21 10:43:25','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','mpeg','','publish','closed','closed','','mpeg','','','2021-02-21 11:00:28','2021-02-21 11:00:28','',114,'http://deadcustomer.local/?page_id=101',9,'page','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-02-21 10:43:46','2021-02-21 10:43:46','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->','nuxt','','publish','closed','closed','','nuxt','','','2021-02-21 11:00:40','2021-02-21 11:00:40','',114,'http://deadcustomer.local/?page_id=102',10,'page','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-02-21 10:41:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-21 10:41:25','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?page_id=103',0,'page','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-02-21 10:41:41','2021-02-21 10:41:41','<!-- wp:video {\"id\":7} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/home_square.mp4\"></video></figure>\n<!-- /wp:video -->','code','','inherit','closed','closed','','94-revision-v1','','','2021-02-21 10:41:41','2021-02-21 10:41:41','',94,'http://deadcustomer.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-02-21 10:41:58','2021-02-21 10:41:58','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/shot.mp4\"></video></figure>\n<!-- /wp:video -->','shot','','inherit','closed','closed','','95-revision-v1','','','2021-02-21 10:41:58','2021-02-21 10:41:58','',95,'http://deadcustomer.local/95-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-02-21 10:42:14','2021-02-21 10:42:14','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/cars.mp4\"></video><figcaption> </figcaption></figure>\n<!-- /wp:video -->','cars','','inherit','closed','closed','','96-revision-v1','','','2021-02-21 10:42:14','2021-02-21 10:42:14','',96,'http://deadcustomer.local/96-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-02-21 10:42:21','2021-02-21 10:42:21','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/fire-pan-3.mp4\"></video></figure>\n<!-- /wp:video -->','fire','','inherit','closed','closed','','97-revision-v1','','','2021-02-21 10:42:21','2021-02-21 10:42:21','',97,'http://deadcustomer.local/97-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-02-21 10:42:52','2021-02-21 10:42:52','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/tickle.mp4\"></video></figure>\n<!-- /wp:video -->','tickle','','inherit','closed','closed','','98-revision-v1','','','2021-02-21 10:42:52','2021-02-21 10:42:52','',98,'http://deadcustomer.local/98-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-02-21 10:43:01','2021-02-21 10:43:01','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/freeway-2.mp4\"></video></figure>\n<!-- /wp:video -->','freeway','','inherit','closed','closed','','99-revision-v1','','','2021-02-21 10:43:01','2021-02-21 10:43:01','',99,'http://deadcustomer.local/99-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-02-21 10:43:12','2021-02-21 10:43:12','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/wheat-germ.mp4\"></video></figure>\n<!-- /wp:video -->','germ','','inherit','closed','closed','','100-revision-v1','','','2021-02-21 10:43:12','2021-02-21 10:43:12','',100,'http://deadcustomer.local/100-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-02-21 10:43:25','2021-02-21 10:43:25','<!-- wp:video -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/mpeg.mp4\"></video></figure>\n<!-- /wp:video -->','mpeg','','inherit','closed','closed','','101-revision-v1','','','2021-02-21 10:43:25','2021-02-21 10:43:25','',101,'http://deadcustomer.local/101-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-02-21 10:43:32','2021-02-21 10:43:32','<!-- wp:video {\"id\":20} -->\n<figure class=\"wp-block-video\"><video autoplay loop muted src=\"http://deadcustomer.local/wp-content/uploads/2021/02/create_nuxt.mp4\"></video></figure>\n<!-- /wp:video -->','nuxt','','inherit','closed','closed','','102-revision-v1','','','2021-02-21 10:43:32','2021-02-21 10:43:32','',102,'http://deadcustomer.local/102-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-02-21 10:46:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-21 10:46:10','0000-00-00 00:00:00','',0,'http://deadcustomer.local/?page_id=113',0,'page','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-02-21 10:58:11','2021-02-21 10:58:11','','home','','publish','closed','closed','','home','','','2021-02-21 10:58:11','2021-02-21 10:58:11','',0,'http://deadcustomer.local/?page_id=114',1,'page','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-02-21 10:58:08','2021-02-21 10:58:08','','home','','inherit','closed','closed','','114-revision-v1','','','2021-02-21 10:58:08','2021-02-21 10:58:08','',114,'http://deadcustomer.local/114-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,1,0);
INSERT INTO `wp_term_relationships` VALUES (16,1,0);
INSERT INTO `wp_term_relationships` VALUES (19,1,0);
INSERT INTO `wp_term_relationships` VALUES (22,1,0);
INSERT INTO `wp_term_relationships` VALUES (32,1,0);
INSERT INTO `wp_term_relationships` VALUES (35,1,0);
INSERT INTO `wp_term_relationships` VALUES (38,1,0);
INSERT INTO `wp_term_relationships` VALUES (54,1,0);
INSERT INTO `wp_term_relationships` VALUES (57,1,0);
INSERT INTO `wp_term_relationships` VALUES (58,1,0);
INSERT INTO `wp_term_relationships` VALUES (59,1,0);
INSERT INTO `wp_term_relationships` VALUES (66,1,0);
INSERT INTO `wp_term_relationships` VALUES (67,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,9);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0,0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','asdf');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"b05b1a2f5c9af6946cf49c404eb470b6fc751a89c4e61259a415c18fecea9170\";a:4:{s:10:\"expiration\";i:1614053292;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1613880492;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1613881363');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'asdf','$P$B4qSdUtBVgkXtj9vk2SFofXtK4o6MF.','asdf','dev-email@flywheel.local','http://deadcustomer.local','2021-02-15 23:05:12','',0,'asdf');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 18:26:24
