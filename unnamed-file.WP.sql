-- ---------------------------------------------------------
-- Backup with BackWPup ver.: 3.4.4
-- http://backwpup.com/
-- Blog Name: Saral Aajivika
-- Blog URL: http://localhost/wp/wordpress/
-- Blog ABSPATH: C:/xampp/htdocs/WP/wordpress/
-- Blog Charset: UTF-8
-- Table Prefix: wp_
-- Database Name: WP
-- Backup on: 2018-03-10 10:51.39
-- ---------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_fed_menu`
--

DROP TABLE IF EXISTS `wp_fed_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_fed_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_slug` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_order` bigint(20) NOT NULL,
  `menu_image_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_user_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `user_role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extended` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_slug` (`menu_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_fed_menu`
--

LOCK TABLES `wp_fed_menu` WRITE;
/*!40000 ALTER TABLE `wp_fed_menu` DISABLE KEYS */;
INSERT INTO `wp_fed_menu` (`id`, `menu_slug`, `menu`, `menu_order`, `menu_image_id`, `show_user_profile`, `extra`, `user_role`, `extended`) VALUES 
(1, 'profile', 'Profile', 3, 'fa fa-user', 'Enable', 'no', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '');
/*!40000 ALTER TABLE `wp_fed_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_fed_post`
--

DROP TABLE IF EXISTS `wp_fed_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_fed_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `input_meta` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_order` bigint(20) NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `input_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_min` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_max` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_tooltip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `tooltip_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tooltip_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extended` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `input_meta` (`input_meta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_fed_post`
--

LOCK TABLES `wp_fed_post` WRITE;
/*!40000 ALTER TABLE `wp_fed_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_fed_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_fed_user_profile`
--

DROP TABLE IF EXISTS `wp_fed_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_fed_user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `input_meta` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_order` bigint(20) NOT NULL,
  `show_register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Disable',
  `show_dashboard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Disable',
  `show_user_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable',
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `input_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_min` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_max` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_tooltip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `tooltip_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tooltip_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile',
  `extended` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `input_meta` (`input_meta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_fed_user_profile`
--

LOCK TABLES `wp_fed_user_profile` WRITE;
/*!40000 ALTER TABLE `wp_fed_user_profile` DISABLE KEYS */;
INSERT INTO `wp_fed_user_profile` (`id`, `input_meta`, `label_name`, `input_order`, `show_register`, `show_dashboard`, `show_user_profile`, `is_required`, `input_type`, `placeholder`, `class_name`, `id_name`, `input_step`, `input_min`, `input_max`, `input_row`, `is_tooltip`, `tooltip_title`, `tooltip_body`, `input_value`, `user_role`, `input_location`, `extra`, `menu`, `extended`) VALUES 
(1, 'user_login', 'User Name', 5, 'Enable', 'Enable', 'Disable', 'true', 'single_line', 'User Name', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(2, 'user_pass', 'Password', 9, 'Enable', 'Enable', 'Disable', 'true', 'password', 'Password', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(3, 'confirmation_password', 'Confirmation Password', 11, 'Enable', 'Enable', 'Disable', 'true', 'password', 'Password', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(4, 'user_email', 'Email Address', 12, 'Enable', 'Enable', 'Disable', 'true', 'email', 'Email Address', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(5, 'user_nicename', 'Nicename', 14, 'Disable', 'Disable', 'Enable', 'false', 'single_line', 'Nicename', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(6, 'display_name', 'Display Name', 17, 'Disable', 'Disable', 'Enable', 'false', 'single_line', 'Display Name', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(7, 'first_name', 'First Name', 20, 'Disable', 'Disable', 'Enable', 'false', 'single_line', 'First Name', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(8, 'last_name', 'Last Name', 23, 'Disable', 'Disable', 'Enable', 'false', 'single_line', 'Last Name', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(9, 'nickname', 'Nickname', 17, 'Disable', 'Disable', 'Enable', 'false', 'single_line', 'Nickname', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(10, 'description', 'Description', 17, 'Disable', 'Disable', 'Enable', 'false', 'multi_line', 'Description', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', ''),
(11, 'show_admin_bar_front', 'Show admin bar on front page', 17, 'Disable', 'Disable', 'Disable', 'false', 'checkbox', '', '', '', '', '', '', '', 'no', '', '', '', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}', '', 'no', 'profile', '');
/*!40000 ALTER TABLE `wp_fed_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=987 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES 
(1, 'siteurl', 'http://localhost/wp/wordpress', 'yes'),
(2, 'home', 'http://localhost/wp/wordpress', 'yes'),
(3, 'blogname', 'Saral Aajivika', 'yes'),
(4, 'blogdescription', 'From Dreams To Reality', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'niska301@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:21:\"backwpup/backwpup.php\";i:1;s:41:\"frontend-dashboard/frontend-dashboard.php\";i:2;s:25:\"insert-php/insert_php.php\";i:3;s:19:\"members/members.php\";i:4;s:23:\"ppress/profilepress.php\";i:5;s:29:\"shortcode-ui/shortcode-ui.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:70:\"C:\\xampp\\htdocs\\WP\\wordpress/wp-content/themes/twentysixteen/style.css\";i:1;s:67:\"C:\\xampp\\htdocs\\WP\\wordpress/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'author', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:141:\"<strong>Address</strong>\r\nDehradun,India\r\n\r\n<strong>Hours</strong>\r\nMonday—Friday: 9:00AM–5:00PM\r\nSaturday &amp; Sunday: 11:00AM–3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:149:\"Easy to use, Saral Aajivika, aims to provide a platform that anybody can use.\r\n\r\nIn case of any queries you can always contact us.\r\n\r\nHappy Shopping!\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"theme-my-login/theme-my-login.php\";a:2:{i:0;s:20:\"Theme_My_Login_Admin\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '10', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:11:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:147:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:1;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:5:\"women\";a:2:{s:4:\"name\";s:5:\"Women\";s:12:\"capabilities\";a:27:{s:16:\"publish_products\";b:1;s:4:\"read\";b:1;s:18:\"manage_woocommerce\";b:1;s:23:\"delete_private_products\";b:1;s:15:\"delete_products\";b:1;s:25:\"delete_published_products\";b:1;s:21:\"edit_private_products\";b:1;s:13:\"edit_products\";b:1;s:23:\"edit_published_products\";b:1;s:12:\"edit_product\";b:1;s:17:\"manage_categories\";b:1;s:20:\"manage_product_terms\";b:1;s:6:\"import\";b:1;s:12:\"read_product\";b:1;s:16:\"read_shop_coupon\";b:1;s:15:\"read_shop_order\";b:1;s:12:\"upload_files\";b:1;s:20:\"assign_product_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:22:\"delete_others_products\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"edit_others_products\";b:1;s:18:\"edit_product_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:21:\"read_private_products\";b:1;}}s:14:\"backwpup_admin\";a:2:{s:4:\"name\";s:14:\"BackWPup Admin\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:1;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:1;}}s:14:\"backwpup_check\";a:2:{s:4:\"name\";s:21:\"BackWPup jobs checker\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:0;s:19:\"backwpup_jobs_start\";b:0;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:0;s:23:\"backwpup_backups_delete\";b:0;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:0;s:17:\"backwpup_settings\";b:0;}}s:15:\"backwpup_helper\";a:2:{s:4:\"name\";s:20:\"BackWPup jobs helper\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:0;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:0;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', '~+HYB%y:gTt$;!%V``pu.BroVQ^U4dW_:?EC<%mr1jT[F7yQn3)&~HE@i>gdcWUL', 'no'),
(107, 'nonce_salt', 'wG]loa3?Ku;AVHb2Nh%Jin>8xGV_$/srxGZINTDqop{AW| &n3#z6)sg{1~Ur}Q1', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:12:{i:1520679158;a:1:{s:13:\"backwpup_cron\";a:1:{s:32:\"4ef54d4ada20caa38401a05f7ccc9311\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{s:2:\"id\";s:7:\"restart\";}}}}i:1520681763;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1520704723;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520704724;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520705096;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520721469;a:2:{s:22:\"backwpup_check_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:23:\"backwpup_update_message\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520726400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520737200;a:1:{s:13:\"backwpup_cron\";a:1:{s:32:\"022a7bf4a0a63e69fefe09f9fea7210e\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{s:2:\"id\";i:2;}}}}i:1520748356;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520754478;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522713600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519366762;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1520678241;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1520678247;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'auth_key', '-_!H4_YOghLR%oNkRoQ^TXPx~+I5>lsd53pP~BQ ! Jm@4RB^f>b5^v!R0L*jf<5', 'no'),
(124, 'auth_salt', 'W.ssG^~^KJ(,p})u|vARq823nkA]F.xn0ai^/iG$ez`R^Z43du}0=6ro2io$EO;a', 'no'),
(125, 'logged_in_key', 'k0Sdkp4Qlf,mo*?@zu >4hZ2/),!J}v{cuY8k@. 5W}|n=3m`6UZAD2D&%CpR]Z^', 'no'),
(126, 'logged_in_salt', ' pf&5B-xpF{AmsJwho3~EVh`>t9m5KHvH:h^ROjv7<<a?@;}5?UAWRzkV}*7-ZOa', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(151, 'theme_mods_twentysixteen', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:13:\"remove-header\";s:16:\"background_image\";s:0:\"\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:15:\"background_size\";s:4:\"auto\";s:17:\"background_repeat\";s:6:\"repeat\";}', 'yes'),
(155, 'current_theme', 'Twenty Sixteen', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'theme_switched_via_customizer', '', 'yes'),
(158, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(159, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:6:{s:23:\"nav_menu_locations[top]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}s:7:\"panel_1\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:11;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}s:7:\"panel_2\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:8;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}s:7:\"panel_3\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:10;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}s:7:\"panel_4\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:9;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-02-23 06:07:29\";}}}', 'no'),
(202, 'recently_activated', 'a:4:{s:47:\"woocommerce-quick-buy/woocommerce-quick-buy.php\";i:1520444588;s:25:\"profile-builder/index.php\";i:1520407048;s:39:\"user-registration/user-registration.php\";i:1520407016;s:33:\"theme-my-login/theme-my-login.php\";i:1520323932;}', 'yes'),
(205, 'widget_theme-my-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'theme_my_login', 'a:4:{s:10:\"enable_css\";b:1;s:10:\"login_type\";s:7:\"default\";s:14:\"active_modules\";a:2:{i:0;s:29:\"custom-email/custom-email.php\";i:1;s:37:\"custom-passwords/custom-passwords.php\";}s:7:\"version\";s:6:\"6.4.10\";}', 'yes'),
(217, 'WPLANG', '', 'yes'),
(218, 'new_admin_email', 'niska301@gmail.com', 'yes'),
(221, '_site_transient_timeout_browser_49da57eac7f840522fef2b86e883cffa', '1520928706', 'no'),
(222, '_site_transient_browser_49da57eac7f840522fef2b86e883cffa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.186\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(257, 'user_registration_general_setting_default_user_role', 'subscriber', 'yes'),
(258, 'user_registration_general_setting_login_options', 'default', 'yes'),
(259, 'user_registration_general_setting_registration_label', 'Not a member yet? Register now.', 'yes'),
(260, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(261, 'user_registration_myaccount_page_id', '', 'yes'),
(262, 'user_registration_general_setting_enable_strong_password', 'yes', 'no'),
(263, 'user_registration_general_setting_form_submit_label', 'Submit', 'no'),
(264, 'user_registration_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(265, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(266, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(267, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(268, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(269, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(270, 'user_registration_email_setting_disable_email', 'no', 'no'),
(271, 'user_registration_email_from_name', 'Saral Aajivika', 'no'),
(272, 'user_registration_email_from_address', 'niska301@gmail.com', 'no'),
(273, 'user_registration_default_form_page_id', '47', 'yes'),
(276, 'user_registration_version', '1.2.0', 'yes'),
(277, 'user_registration_db_version', '1.2.0', 'yes'),
(278, 'user_registration_admin_notices', 'a:0:{}', 'yes'),
(292, 'widget_wppb-login-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'wppb_version', '2.7.6', 'yes'),
(294, 'wppb_manage_fields', 'a:13:{i:0;a:21:{s:2:\"id\";i:1;s:5:\"field\";s:24:\"Default - Name (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:4:\"Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:1;a:21:{s:2:\"id\";i:2;s:5:\"field\";s:18:\"Default - Username\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Username\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:2;a:21:{s:2:\"id\";i:3;s:5:\"field\";s:20:\"Default - First Name\";s:9:\"meta-name\";s:10:\"first_name\";s:11:\"field-title\";s:10:\"First Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:3;a:21:{s:2:\"id\";i:4;s:5:\"field\";s:19:\"Default - Last Name\";s:9:\"meta-name\";s:9:\"last_name\";s:11:\"field-title\";s:9:\"Last Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:4;a:21:{s:2:\"id\";i:5;s:5:\"field\";s:18:\"Default - Nickname\";s:9:\"meta-name\";s:8:\"nickname\";s:11:\"field-title\";s:8:\"Nickname\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:5;a:21:{s:2:\"id\";i:6;s:5:\"field\";s:34:\"Default - Display name publicly as\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:24:\"Display name publicly as\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:6;a:21:{s:2:\"id\";i:7;s:5:\"field\";s:32:\"Default - Contact Info (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:12:\"Contact Info\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:7;a:21:{s:2:\"id\";i:8;s:5:\"field\";s:16:\"Default - E-mail\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:6:\"E-mail\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:8;a:21:{s:2:\"id\";i:9;s:5:\"field\";s:17:\"Default - Website\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:7:\"Website\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:9;a:21:{s:2:\"id\";i:10;s:5:\"field\";s:34:\"Default - About Yourself (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:14:\"About Yourself\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:10;a:21:{s:2:\"id\";i:11;s:5:\"field\";s:27:\"Default - Biographical Info\";s:9:\"meta-name\";s:11:\"description\";s:11:\"field-title\";s:17:\"Biographical Info\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:11;a:21:{s:2:\"id\";i:12;s:5:\"field\";s:18:\"Default - Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:12;a:21:{s:2:\"id\";i:13;s:5:\"field\";s:25:\"Default - Repeat Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:15:\"Repeat Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}}', 'yes'),
(295, 'wppb_general_settings', 'a:8:{s:17:\"extraFieldsLayout\";s:7:\"default\";s:17:\"emailConfirmation\";s:3:\"yes\";s:21:\"activationLandingPage\";s:1:\"8\";s:11:\"rolesEditor\";s:2:\"no\";s:18:\"contentRestriction\";s:2:\"no\";s:9:\"loginWith\";s:13:\"usernameemail\";s:23:\"minimum_password_length\";s:1:\"7\";s:25:\"minimum_password_strength\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES 
(298, 'wppb_display_admin_settings', 'a:0:{}', 'yes'),
(306, 'pp_settings_data', 'a:5:{s:21:\"set_lost_password_url\";s:0:\"\";s:13:\"set_login_url\";s:3:\"105\";s:20:\"set_registration_url\";s:3:\"100\";s:15:\"set_log_out_url\";s:17:\"current_view_page\";s:18:\"set_login_redirect\";s:9:\"dashboard\";}', 'yes'),
(307, 'pp_plugin_lite_activated', 'true', 'yes'),
(310, 'pp_db_lite_ver', '3', 'no'),
(320, '_site_transient_timeout_browser_8d9b6ae1bc73e6e7286950ccae033872', '1521035943', 'no'),
(321, '_site_transient_browser_8d9b6ae1bc73e6e7286950ccae033872', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.146\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(335, 'category_children', 'a:0:{}', 'yes'),
(350, 'fed_plugin_version', '1.2.11', 'yes'),
(351, 'fed_admin_login', 'a:1:{s:8:\"register\";a:3:{s:4:\"name\";s:9:\"User Role\";s:8:\"position\";i:999;s:4:\"role\";a:0:{}}}', 'yes'),
(352, 'fed_admin_settings_post', 'a:3:{s:11:\"permissions\";a:2:{s:15:\"post_permission\";a:5:{s:13:\"administrator\";s:6:\"Enable\";s:6:\"editor\";s:6:\"Enable\";s:6:\"author\";s:6:\"Enable\";s:11:\"contributor\";s:6:\"Enable\";s:10:\"subscriber\";s:6:\"Enable\";}s:21:\"fed_upload_permission\";a:5:{s:13:\"administrator\";s:6:\"Enable\";s:6:\"editor\";s:6:\"Enable\";s:6:\"author\";s:6:\"Enable\";s:11:\"contributor\";s:6:\"Enable\";s:10:\"subscriber\";s:6:\"Enable\";}}s:8:\"settings\";a:1:{s:15:\"fed_post_status\";s:7:\"publish\";}s:4:\"menu\";a:3:{s:11:\"rename_post\";s:4:\"Post\";s:13:\"post_position\";i:2;s:14:\"post_menu_icon\";s:15:\"fa fa-file-text\";}}', 'yes'),
(353, 'fed_admin_settings_upl', 'a:1:{s:8:\"settings\";a:3:{s:26:\"fed_upl_change_profile_pic\";s:0:\"\";s:20:\"fed_upl_disable_desc\";s:2:\"no\";s:22:\"fed_upl_no_recent_post\";s:1:\"5\";}}', 'yes'),
(354, 'fed_cp_admin_settings', 'a:1:{s:4:\"post\";a:3:{s:11:\"permissions\";a:2:{s:15:\"post_permission\";a:5:{s:13:\"administrator\";s:6:\"Enable\";s:6:\"editor\";s:6:\"Enable\";s:6:\"author\";s:6:\"Enable\";s:11:\"contributor\";s:6:\"Enable\";s:10:\"subscriber\";s:6:\"Enable\";}s:21:\"fed_upload_permission\";a:5:{s:13:\"administrator\";s:6:\"Enable\";s:6:\"editor\";s:6:\"Enable\";s:6:\"author\";s:6:\"Enable\";s:11:\"contributor\";s:6:\"Enable\";s:10:\"subscriber\";s:6:\"Enable\";}}s:8:\"settings\";a:1:{s:15:\"fed_post_status\";s:7:\"publish\";}s:4:\"menu\";a:3:{s:11:\"rename_post\";s:4:\"Post\";s:13:\"post_position\";i:2;s:14:\"post_menu_icon\";s:15:\"fa fa-file-text\";}}}', 'yes'),
(379, 'woocommerce_store_address', 'Graphic Era University', 'yes'),
(380, 'woocommerce_store_address_2', '', 'yes'),
(381, 'woocommerce_store_city', 'Dehradun', 'yes'),
(382, 'woocommerce_default_country', 'IN:UK', 'yes'),
(384, 'woocommerce_store_postcode', '248001', 'yes'),
(386, 'woocommerce_allowed_countries', 'all', 'yes'),
(388, 'woocommerce_all_except_countries', '', 'yes'),
(390, 'woocommerce_specific_allowed_countries', '', 'yes'),
(391, 'woocommerce_ship_to_countries', '', 'yes'),
(393, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(394, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(396, 'woocommerce_calc_taxes', 'no', 'yes'),
(397, 'woocommerce_currency', 'INR', 'yes'),
(399, 'woocommerce_currency_pos', 'left', 'yes'),
(400, 'woocommerce_price_thousand_sep', ',', 'yes'),
(402, 'woocommerce_price_decimal_sep', '.', 'yes'),
(404, 'woocommerce_price_num_decimals', '2', 'yes'),
(405, 'woocommerce_shop_page_id', '141', 'yes'),
(407, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(409, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(410, 'woocommerce_weight_unit', 'kg', 'yes'),
(412, 'woocommerce_dimension_unit', 'cm', 'yes'),
(414, 'woocommerce_enable_reviews', 'yes', 'yes'),
(416, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(417, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(418, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(419, 'woocommerce_review_rating_required', 'yes', 'no'),
(420, 'woocommerce_manage_stock', 'yes', 'yes'),
(421, 'woocommerce_hold_stock_minutes', '60', 'no'),
(423, 'woocommerce_notify_low_stock', 'yes', 'no'),
(424, 'woocommerce_notify_no_stock', 'yes', 'no'),
(425, 'woocommerce_stock_email_recipient', 'niska301@gmail.com', 'no'),
(426, 'woocommerce_notify_low_stock_amount', '1', 'no'),
(427, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(428, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(429, 'woocommerce_stock_format', '', 'yes'),
(430, 'woocommerce_file_download_method', 'force', 'no'),
(432, 'woocommerce_downloads_require_login', 'no', 'no'),
(433, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(434, 'woocommerce_prices_include_tax', 'no', 'yes'),
(436, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(438, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(440, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(442, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(444, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(445, 'woocommerce_tax_display_cart', 'excl', 'no'),
(447, 'woocommerce_price_display_suffix', '', 'yes'),
(448, 'woocommerce_tax_total_display', 'itemized', 'no'),
(449, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(450, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(451, 'woocommerce_ship_to_destination', 'billing', 'no'),
(452, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(453, 'woocommerce_enable_coupons', 'yes', 'yes'),
(454, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(455, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(456, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(458, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(460, 'woocommerce_cart_page_id', '142', 'yes'),
(461, 'woocommerce_checkout_page_id', '143', 'yes'),
(463, 'woocommerce_terms_page_id', '', 'no'),
(464, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(466, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(467, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(468, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(470, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(472, 'woocommerce_myaccount_page_id', '144', 'yes'),
(474, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(476, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(477, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(478, 'woocommerce_registration_generate_username', 'yes', 'no'),
(480, 'woocommerce_registration_generate_password', 'no', 'no'),
(481, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(483, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(485, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(487, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(489, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(491, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(493, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(495, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(497, 'woocommerce_email_from_name', 'Saral Aajivika', 'no'),
(498, 'woocommerce_email_from_address', 'niska301@gmail.com', 'no'),
(499, 'woocommerce_email_header_image', '', 'no'),
(500, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(501, 'woocommerce_email_base_color', '#96588a', 'no'),
(502, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(503, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(504, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(505, 'woocommerce_api_enabled', 'yes', 'yes'),
(506, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(507, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(508, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(509, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(510, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(511, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(512, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(513, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(514, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(515, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(516, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(517, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(518, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(519, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(520, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(521, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(522, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(523, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(524, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(525, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(528, '_transient_timeout_external_ip_address_::1', '1521049728', 'no'),
(529, '_transient_external_ip_address_::1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(534, 'default_product_cat', '20', 'yes'),
(537, 'woocommerce_version', '3.3.3', 'yes'),
(538, 'woocommerce_db_version', '3.3.3', 'yes'),
(553, 'woocommerce_product_type', 'physical', 'yes'),
(554, 'woocommerce_allow_tracking', 'no', 'yes'),
(555, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(556, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(557, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(558, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(559, '_transient_shipping-transient-version', '1520446130', 'yes'),
(560, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(561, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(562, '_transient_product_query-transient-version', '1520517940', 'yes'),
(567, '_transient_product-transient-version', '1520517771', 'yes'),
(579, 'woocommerce_maybe_regenerate_images_hash', 'e92ee0d0736e45b57f7e4f10645a2633', 'yes'),
(654, '_transient_timeout_wc_shipping_method_count_1_1520446130', '1523039948', 'no'),
(655, '_transient_wc_shipping_method_count_1_1520446130', '2', 'no'),
(659, 'woocommerce_demo_store', 'no', 'yes'),
(660, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(705, '_transient_timeout_wc_addons_sections', '1521054135', 'no'),
(706, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:7:\"bundles\";s:5:\"label\";s:7:\"Bundles\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(707, '_transient_timeout_wc_addons_featured', '1521054139', 'no'),
(708, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:147:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:5:\"Free!\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:146:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(784, 'product_cat_children', 'a:3:{i:30;a:1:{i:0;i:55;}i:65;a:1:{i:0;i:66;}i:38;a:1:{i:0;i:72;}}', 'yes'),
(875, 'woocommerce_shop_page_display', '', 'yes'),
(877, '_transient_timeout_wc_shipping_method_count_0_1520446130', '1523085620', 'no'),
(878, '_transient_wc_shipping_method_count_0_1520446130', '2', 'no'),
(903, '_transient_timeout_wc_low_stock_count', '1523109897', 'no'),
(904, '_transient_wc_low_stock_count', '0', 'no'),
(905, '_transient_timeout_wc_outofstock_count', '1523109898', 'no'),
(906, '_transient_wc_outofstock_count', '0', 'no'),
(922, '_transient_is_multi_author', '0', 'yes'),
(923, '_transient_timeout_wc_term_counts', '1523114725', 'no'),
(924, '_transient_wc_term_counts', 'a:25:{i:21;s:1:\"3\";i:61;s:1:\"1\";i:59;s:1:\"1\";i:60;s:1:\"1\";i:23;s:1:\"4\";i:62;s:1:\"1\";i:64;s:1:\"1\";i:63;s:1:\"1\";i:38;s:1:\"5\";i:37;s:1:\"1\";i:41;s:1:\"2\";i:40;s:1:\"1\";i:39;s:1:\"1\";i:42;s:1:\"2\";i:25;s:1:\"1\";i:28;s:1:\"1\";i:29;s:1:\"1\";i:26;s:1:\"1\";i:27;s:1:\"1\";i:65;s:1:\"1\";i:66;s:1:\"1\";i:70;s:1:\"1\";i:67;s:1:\"1\";i:68;s:1:\"1\";i:69;s:1:\"1\";}', 'no'),
(928, '_transient_timeout_wc_report_sales_by_date', '1520759559', 'no'),
(929, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"0d59742d700fd711cde6b38bb5a6611f\";a:0:{}s:32:\"592d945787c47cf25c32696613b9837a\";a:0:{}s:32:\"a8252c3baca1e1cf9c035225124f39b0\";a:0:{}s:32:\"a8bc5991b2e9862523b8a7bfa6cb87aa\";N;s:32:\"99cbd5a299ddc5f6692b89ca07889e95\";a:0:{}s:32:\"491b59a5b34504cef99ba5cca4a09a9a\";a:0:{}s:32:\"ef6e2e25ecc74023e68957df9273731b\";a:0:{}s:32:\"9f3b53be0793b5ee73d4943343d95eb5\";a:0:{}s:32:\"e13b6df1f4e4c3b31049cd0a37377a08\";a:0:{}s:32:\"1cb24316b9d03bbfce280842046515f7\";a:0:{}s:32:\"01007a8b5660b92101c7bdd36dd8c0a8\";a:0:{}s:32:\"82258fde8a566ddbd07831478cdc9a4c\";N;s:32:\"9570e2c98c81508b319a363f44f1cb03\";a:0:{}s:32:\"2c953871f97909be22e185a78df24bb6\";a:0:{}s:32:\"e1a4f63a222bd3b09df2f8e726c7bd34\";a:0:{}s:32:\"d3601ea03ef3da62465ae7a2578935da\";a:0:{}}', 'no'),
(930, '_transient_timeout_wc_admin_report', '1520759557', 'no'),
(931, '_transient_wc_admin_report', 'a:1:{s:32:\"d927111096590ee47a5bd9e60d96f659\";a:0:{}}', 'no'),
(932, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1520716363', 'no'),
(933, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(937, '_site_transient_timeout_theme_roots', '1520679968', 'no'),
(938, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(939, '_transient_timeout__woocommerce_helper_updates', '1520721369', 'no'),
(940, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1520678169;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(941, '_transient_timeout_plugin_slugs', '1520764572', 'no'),
(942, '_transient_plugin_slugs', 'a:13:{i:0;s:19:\"akismet/akismet.php\";i:1;s:41:\"frontend-dashboard/frontend-dashboard.php\";i:2;s:61:\"frontend-dashboard-templates/frontend-dashboard-templates.php\";i:3;s:9:\"hello.php\";i:4;s:25:\"insert-php/insert_php.php\";i:5;s:19:\"members/members.php\";i:6;s:25:\"profile-builder/index.php\";i:7;s:23:\"ppress/profilepress.php\";i:8;s:29:\"shortcode-ui/shortcode-ui.php\";i:9;s:33:\"theme-my-login/theme-my-login.php\";i:10;s:39:\"user-registration/user-registration.php\";i:11;s:27:\"woocommerce/woocommerce.php\";i:12;s:34:\"wp-e-commerce/wp-shopping-cart.php\";}', 'no'),
(943, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1520688981', 'no'),
(944, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4436;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2633;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2545;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2409;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1857;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1637;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1629;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1447;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1384;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1380;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1376;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1301;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1184;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1088;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1058;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1012;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:993;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:867;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:862;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:823;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:797;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:790;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:698;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:689;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:682;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:670;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:636;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:631;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:609;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:607;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:599;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:598;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:587;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:584;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:558;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:543;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:528;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:518;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:511;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:489;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:486;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:476;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:470;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:464;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:462;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:453;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:449;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:435;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:425;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:418;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:417;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:411;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:395;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:391;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:383;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:361;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:355;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:349;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:340;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:334;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:332;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:329;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:325;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:315;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:301;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:292;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:290;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:287;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:287;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:285;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:284;}}', 'no'),
(946, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1520678263;s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:21:\"backwpup/backwpup.php\";s:5:\"3.4.4\";s:41:\"frontend-dashboard/frontend-dashboard.php\";s:6:\"1.2.11\";s:61:\"frontend-dashboard-templates/frontend-dashboard-templates.php\";s:5:\"1.6.1\";s:9:\"hello.php\";s:3:\"1.6\";s:25:\"insert-php/insert_php.php\";s:3:\"1.3\";s:19:\"members/members.php\";s:5:\"2.0.2\";s:25:\"profile-builder/index.php\";s:5:\"2.7.6\";s:23:\"ppress/profilepress.php\";s:5:\"1.5.2\";s:29:\"shortcode-ui/shortcode-ui.php\";s:5:\"0.7.3\";s:33:\"theme-my-login/theme-my-login.php\";s:6:\"6.4.10\";s:39:\"user-registration/user-registration.php\";s:5:\"1.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.3\";s:34:\"wp-e-commerce/wp-shopping-cart.php\";s:6:\"3.13.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:13:{s:21:\"backwpup/backwpup.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/backwpup\";s:4:\"slug\";s:8:\"backwpup\";s:6:\"plugin\";s:21:\"backwpup/backwpup.php\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/backwpup/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/backwpup.3.4.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:61:\"https://ps.w.org/backwpup/assets/icon-128x128.png?rev=1422084\";s:2:\"2x\";s:61:\"https://ps.w.org/backwpup/assets/icon-256x256.png?rev=1422084\";s:7:\"default\";s:61:\"https://ps.w.org/backwpup/assets/icon-256x256.png?rev=1422084\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/backwpup/assets/banner-1544x500.png?rev=1749799\";s:2:\"1x\";s:63:\"https://ps.w.org/backwpup/assets/banner-772x250.png?rev=1749799\";s:7:\"default\";s:64:\"https://ps.w.org/backwpup/assets/banner-1544x500.png?rev=1749799\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"frontend-dashboard/frontend-dashboard.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/frontend-dashboard\";s:4:\"slug\";s:18:\"frontend-dashboard\";s:6:\"plugin\";s:41:\"frontend-dashboard/frontend-dashboard.php\";s:11:\"new_version\";s:6:\"1.2.11\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/frontend-dashboard/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/frontend-dashboard.1.2.11.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://ps.w.org/frontend-dashboard/assets/icon-128x128.png?rev=1772053\";s:2:\"2x\";s:71:\"https://ps.w.org/frontend-dashboard/assets/icon-256x256.png?rev=1772053\";s:7:\"default\";s:71:\"https://ps.w.org/frontend-dashboard/assets/icon-256x256.png?rev=1772053\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:74:\"https://ps.w.org/frontend-dashboard/assets/banner-1544x500.jpg?rev=1710979\";s:2:\"1x\";s:73:\"https://ps.w.org/frontend-dashboard/assets/banner-772x250.jpg?rev=1710979\";s:7:\"default\";s:74:\"https://ps.w.org/frontend-dashboard/assets/banner-1544x500.jpg?rev=1710979\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"frontend-dashboard-templates/frontend-dashboard-templates.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/frontend-dashboard-templates\";s:4:\"slug\";s:28:\"frontend-dashboard-templates\";s:6:\"plugin\";s:61:\"frontend-dashboard-templates/frontend-dashboard-templates.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/frontend-dashboard-templates/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/frontend-dashboard-templates.1.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:81:\"https://ps.w.org/frontend-dashboard-templates/assets/icon-128x128.png?rev=1784186\";s:2:\"2x\";s:81:\"https://ps.w.org/frontend-dashboard-templates/assets/icon-256x256.png?rev=1784186\";s:7:\"default\";s:81:\"https://ps.w.org/frontend-dashboard-templates/assets/icon-256x256.png?rev=1784186\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:84:\"https://ps.w.org/frontend-dashboard-templates/assets/banner-1544x500.png?rev=1784186\";s:2:\"1x\";s:83:\"https://ps.w.org/frontend-dashboard-templates/assets/banner-772x250.png?rev=1784186\";s:7:\"default\";s:84:\"https://ps.w.org/frontend-dashboard-templates/assets/banner-1544x500.png?rev=1784186\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"insert-php/insert_php.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/insert-php\";s:4:\"slug\";s:10:\"insert-php\";s:6:\"plugin\";s:25:\"insert-php/insert_php.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/insert-php/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/insert-php.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/insert-php/assets/banner-772x250.png?rev=624116\";s:7:\"default\";s:64:\"https://ps.w.org/insert-php/assets/banner-772x250.png?rev=624116\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.2.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=1242689\";s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=1242689\";s:7:\"default\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=1242689\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.png?rev=1242689\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.png?rev=1242689\";s:7:\"default\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.png?rev=1242689\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"profile-builder/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/profile-builder\";s:4:\"slug\";s:15:\"profile-builder\";s:6:\"plugin\";s:25:\"profile-builder/index.php\";s:11:\"new_version\";s:5:\"2.7.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/profile-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/profile-builder.2.7.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=1470754\";s:2:\"2x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754\";s:7:\"default\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307\";s:7:\"default\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ppress/profilepress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/ppress\";s:4:\"slug\";s:6:\"ppress\";s:6:\"plugin\";s:23:\"ppress/profilepress.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/ppress/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/ppress.1.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/ppress/assets/icon-128x128.png?rev=1208903\";s:7:\"default\";s:59:\"https://ps.w.org/ppress/assets/icon-128x128.png?rev=1208903\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/ppress/assets/banner-772x250.png?rev=1170996\";s:7:\"default\";s:61:\"https://ps.w.org/ppress/assets/banner-772x250.png?rev=1170996\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"shortcode-ui/shortcode-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/shortcode-ui\";s:4:\"slug\";s:12:\"shortcode-ui\";s:6:\"plugin\";s:29:\"shortcode-ui/shortcode-ui.php\";s:11:\"new_version\";s:5:\"0.7.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/shortcode-ui/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/shortcode-ui.0.7.3.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:65:\"https://ps.w.org/shortcode-ui/assets/icon-128x128.png?rev=1130575\";s:2:\"2x\";s:65:\"https://ps.w.org/shortcode-ui/assets/icon-256x256.png?rev=1130575\";s:3:\"svg\";s:57:\"https://ps.w.org/shortcode-ui/assets/icon.svg?rev=1130575\";s:7:\"default\";s:57:\"https://ps.w.org/shortcode-ui/assets/icon.svg?rev=1130575\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/shortcode-ui/assets/banner-1544x500.png?rev=1115398\";s:2:\"1x\";s:67:\"https://ps.w.org/shortcode-ui/assets/banner-772x250.png?rev=1115398\";s:7:\"default\";s:68:\"https://ps.w.org/shortcode-ui/assets/banner-1544x500.png?rev=1115398\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"theme-my-login/theme-my-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/theme-my-login\";s:4:\"slug\";s:14:\"theme-my-login\";s:6:\"plugin\";s:33:\"theme-my-login/theme-my-login.php\";s:11:\"new_version\";s:6:\"6.4.10\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/theme-my-login/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/theme-my-login.6.4.10.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-128x128.png?rev=1131382\";s:2:\"2x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1131382\";s:7:\"default\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1131382\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/theme-my-login/assets/banner-1544x500.jpg?rev=833903\";s:2:\"1x\";s:68:\"https://ps.w.org/theme-my-login/assets/banner-772x250.jpg?rev=833903\";s:7:\"default\";s:69:\"https://ps.w.org/theme-my-login/assets/banner-1544x500.jpg?rev=833903\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"user-registration/user-registration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/user-registration\";s:4:\"slug\";s:17:\"user-registration\";s:6:\"plugin\";s:39:\"user-registration/user-registration.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/user-registration/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-registration.1.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/user-registration/assets/icon-128x128.png?rev=1761761\";s:2:\"2x\";s:70:\"https://ps.w.org/user-registration/assets/icon-256x256.png?rev=1761761\";s:7:\"default\";s:70:\"https://ps.w.org/user-registration/assets/icon-256x256.png?rev=1761761\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/user-registration/assets/banner-772x250.jpg?rev=1691813\";s:7:\"default\";s:72:\"https://ps.w.org/user-registration/assets/banner-772x250.jpg?rev=1691813\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"wp-e-commerce/wp-shopping-cart.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-e-commerce\";s:4:\"slug\";s:13:\"wp-e-commerce\";s:6:\"plugin\";s:34:\"wp-e-commerce/wp-shopping-cart.php\";s:11:\"new_version\";s:6:\"3.13.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-e-commerce/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-e-commerce.3.13.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/wp-e-commerce/assets/icon-128x128.png?rev=979641\";s:2:\"2x\";s:65:\"https://ps.w.org/wp-e-commerce/assets/icon-256x256.png?rev=979641\";s:7:\"default\";s:65:\"https://ps.w.org/wp-e-commerce/assets/icon-256x256.png?rev=979641\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-e-commerce/assets/banner-772x250.jpg?rev=480245\";s:7:\"default\";s:67:\"https://ps.w.org/wp-e-commerce/assets/banner-772x250.jpg?rev=480245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(947, 'backwpup_cfg_hash', '2d8cbf', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES 
(948, 'backwpup_jobs', 'a:2:{i:1;a:10:{s:5:\"jobid\";i:1;s:10:\"backuptype\";s:7:\"archive\";s:4:\"type\";a:3:{i:0;s:6:\"DBDUMP\";i:1;s:4:\"FILE\";i:2;s:8:\"WPPLUGIN\";}s:12:\"destinations\";a:2:{i:0;s:5:\"EMAIL\";i:1;s:6:\"FOLDER\";}s:4:\"name\";s:13:\"Job with ID 1\";s:14:\"mailaddresslog\";s:18:\"niska301@gmail.com\";s:20:\"mailaddresssenderlog\";s:44:\"BackWPup Saral Aajivika <niska301@gmail.com>\";s:13:\"mailerroronly\";b:1;s:13:\"archiveformat\";s:4:\".zip\";s:11:\"archivename\";s:24:\"%Y-%m-%d_%H-%i-%s_%hash%\";}i:2;a:30:{s:5:\"jobid\";i:2;s:10:\"backuptype\";s:7:\"archive\";s:4:\"type\";a:5:{i:0;s:7:\"DBCHECK\";i:1;s:6:\"DBDUMP\";i:2;s:4:\"FILE\";i:3;s:5:\"WPEXP\";i:4;s:8:\"WPPLUGIN\";}s:12:\"destinations\";a:2:{i:0;s:5:\"EMAIL\";i:1;s:6:\"FOLDER\";}s:4:\"name\";s:11:\"site backup\";s:14:\"mailaddresslog\";s:18:\"niska301@gmail.com\";s:20:\"mailaddresssenderlog\";s:44:\"BackWPup Saral Aajivika <niska301@gmail.com>\";s:13:\"mailerroronly\";b:1;s:13:\"archiveformat\";s:4:\".zip\";s:11:\"archivename\";s:24:\"%Y-%m-%d_%H-%i-%s_%hash%\";s:10:\"activetype\";s:6:\"wpcron\";s:10:\"cronselect\";s:5:\"basic\";s:4:\"cron\";s:9:\"0 3 * * 0\";s:12:\"emailaddress\";s:18:\"niska301@gmail.com\";s:14:\"emailefilesize\";i:20;s:13:\"emailsndemail\";s:18:\"niska301@gmail.com\";s:11:\"emailmethod\";s:0:\"\";s:13:\"emailsendmail\";s:0:\"\";s:17:\"emailsndemailname\";s:23:\"BackWPup Saral Aajivika\";s:9:\"emailhost\";s:9:\"localhost\";s:13:\"emailhostport\";i:25;s:11:\"emailsecure\";s:0:\"\";s:9:\"emailuser\";s:0:\"\";s:9:\"emailpass\";s:0:\"\";s:9:\"backupdir\";s:26:\"C:/Users/Nayanika/Desktop/\";s:10:\"maxbackups\";i:15;s:18:\"backupsyncnodelete\";b:0;s:7:\"lastrun\";i:1520679099;s:7:\"logfile\";s:113:\"C:/xampp/htdocs/WP/wordpress/wp-content/uploads/backwpup-2d8cbf-logs/backwpup_log_2d8cbf_2018-03-10_10-51-39.html\";s:21:\"lastbackupdownloadurl\";s:0:\"\";}}', 'no'),
(949, 'backwpup_version', '3.4.4', 'no'),
(950, 'backwpup_cfg_showadminbar', '', 'no'),
(951, 'backwpup_cfg_showfoldersize', '', 'no'),
(952, 'backwpup_cfg_protectfolders', '1', 'no'),
(953, 'backwpup_cfg_jobmaxexecutiontime', '30', 'no'),
(954, 'backwpup_cfg_jobstepretry', '3', 'no'),
(955, 'backwpup_cfg_jobrunauthkey', 'be8cfe7e', 'no'),
(956, 'backwpup_cfg_loglevel', 'normal_translated', 'no'),
(957, 'backwpup_cfg_jobwaittimems', '0', 'no'),
(958, 'backwpup_cfg_jobdooutput', '0', 'no'),
(959, 'backwpup_cfg_windows', '0', 'no'),
(960, 'backwpup_cfg_maxlogs', '30', 'no'),
(961, 'backwpup_cfg_gzlogs', '0', 'no'),
(962, 'backwpup_cfg_logfolder', 'uploads/backwpup-2d8cbf-logs/', 'no'),
(963, 'backwpup_cfg_httpauthuser', '', 'no'),
(964, 'backwpup_cfg_httpauthpassword', '', 'no'),
(966, 'backwpup_message_id_en', 'JVQWWZJAKVZSASDBOBYHSIDBNZSCAR3JOZSSAWLPOVZCAUTBORUW4Z34NB2HI4DTHIXS653POJSHA4TFONZS433SM4XXG5LQOBXXE5BPOBWHKZ3JNYXWEYLDNN3XA5LQF5ZGK5TJMV3XGL34', 'no'),
(967, 'backwpup_message_content_en', 'Are you happy with BackWPup? If you are satisfied with our free plugin and support, then please make us even happier and just take 30 seconds to leave a positive rating. :) We would really appreciate that and it will motivate our team to develop even more cool features for BackWPup!', 'no'),
(968, 'backwpup_message_button_text_en', 'Make Us Happy and Give Your Rating', 'no'),
(969, 'backwpup_message_url_en', 'https://wordpress.org/support/plugin/backwpup/reviews/', 'no'),
(970, 'backwpup_message_id_es', 'YKQUQYL2NZXXGIDGMVWGSY3FOMQHSIDEMFXG64ZAOR2SA5TBNRXXEYLDNHB3G3RBPRUHI5DQOM5C6L3XN5ZGI4DSMVZXGLTPOJTS643VOBYG64TUF5YGY5LHNFXC6YTBMNVXO4DVOAXXEZLWNFSXO4ZP', 'no'),
(971, 'backwpup_message_content_es', '¿Estás contento con BackWPup? Si estás satisfecho con nuestro plugin y con el soporte gratuito, por favor, haznos aún más felices e invierte sólo 30 segundos en dejar una calificación positiva. :) ¡Estaremos muy agradecidos y eso motivará a nuestro equipo a desarrollar características aún más interesantes para BackWPup!', 'no'),
(972, 'backwpup_message_button_text_es', '¡Haznos felices y danos tu valoración!', 'no'),
(973, 'backwpup_message_url_es', 'https://wordpress.org/support/plugin/backwpup/reviews/', 'no'),
(974, 'backwpup_message_id_fr', 'IRXW43TFFVXG65LTEB2W4ZJANZXXIZJAOBXXG2LUNF3GK7DIOR2HA4Z2F4XXO33SMRYHEZLTOMXG64THF5ZXK4DQN5ZHIL3QNR2WO2LOF5RGCY3LO5YHK4BPOJSXM2LFO5ZS67D4', 'no'),
(975, 'backwpup_message_content_fr', 'Êtes-vous satisfait de BackWPup ? Si vous êtes satisfait de notre extension gratuite et du support, alors veuillez nous faire plaisir et prendre seulement 30 secondes pour laisser une note positive. :) Nous apprécions vraiment cela et ceci motivera notre équipe à développer des fonctionnalités en plus cool pour BackWPup!', 'no'),
(976, 'backwpup_message_button_text_fr', 'Donne-nous une note positive', 'no'),
(977, 'backwpup_message_url_fr', 'https://wordpress.org/support/plugin/backwpup/reviews/', 'no'),
(978, 'backwpup_message_id_de', 'JVQWG2BAOVXHGIDHNTB3YY3LNRUWG2BAOVXGIIDHNFRCA5LOOMQGIZLJNZSSAQTFO5SXE5DVNZTXY2DUORYHGORPF53W64TEOBZGK43TFZXXEZZPON2XA4DPOJ2C64DMOVTWS3RPMJQWG23XOB2XAL3SMV3GSZLXOMXXY7D4', 'no'),
(979, 'backwpup_message_content_de', 'Bist du glücklich mit BackWPup? Wenn du mit unserem freien Plugin und unserem Support zufrieden bist, dann mach auch uns glücklich und gib uns 30 Sekunden deiner Zeit, um uns eine gute Bewertung zu hinterlassen. :) Wir würden uns wirklich sehr darüber freuen, es würde uns motivieren, noch coolere Features für BackWPup zu entwickeln!', 'no'),
(980, 'backwpup_message_button_text_de', 'Mach uns glücklich und gib uns deine Bewertung', 'no'),
(981, 'backwpup_message_url_de', 'https://wordpress.org/support/plugin/backwpup/reviews/', 'no'),
(982, 'backwpup_message_id_it', 'I5ZGC6TJMUWCA3DBONRWSYJANFWCA5DVN4QGMZLFMRRGCY3LPRUHI5DQOM5C6L3XN5ZGI4DSMVZXGLTPOJTS643VOBYG64TUF5YGY5LHNFXC6YTBMNVXO4DVOAXXEZLWNFSXO4ZP', 'no'),
(983, 'backwpup_message_content_it', 'Ti piace BackWPup? Se sei soddisfatto della versione free e del supporto? Ci piacerebbe se potessi dedicarci 30 secondi e lasciare un feedback positivo. :) Lo apprezzerremo tanto ed inoltre motiverà il team a sviluppare nuove funzionalità per BackWPup!', 'no'),
(984, 'backwpup_message_button_text_it', 'Grazie, lascia il tuo feedback', 'no'),
(985, 'backwpup_message_url_it', 'https://wordpress.org/support/plugin/backwpup/reviews/', 'no'),
(986, 'backwpup_messages', 'a:0:{}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES 
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/02/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/02/espresso.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"espresso-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"espresso-400x240.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_wp_attached_file', '2018/02/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/02/sandwich.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"sandwich-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"sandwich-400x240.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_wp_attached_file', '2018/02/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/02/coffee.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"coffee-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"coffee-400x240.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(15, 7, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(18, 8, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(21, 9, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(22, 10, '_thumbnail_id', '6'),
(24, 10, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(27, 11, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(28, 12, '_edit_lock', '1519366756:1'),
(29, 13, '_wp_attached_file', '2018/02/Capture.png'),
(30, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:347;s:6:\"height\";i:379;s:4:\"file\";s:19:\"2018/02/Capture.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Capture-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Capture-275x300.png\";s:5:\"width\";i:275;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"Capture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 13, '_wp_attachment_is_custom_background', 'twentysixteen'),
(32, 14, '_wp_attached_file', '2018/02/cropped-Capture.png'),
(33, 14, '_wp_attachment_context', 'custom-header'),
(34, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:280;s:4:\"file\";s:27:\"2018/02/cropped-Capture.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-Capture-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Capture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"cropped-Capture-400x93.png\";s:5:\"width\";i:400;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Capture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-Capture-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-Capture-768x179.png\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-Capture-1024x239.png\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Capture-1200x280.png\";s:5:\"width\";i:1200;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_customize_changeset_uuid', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357'),
(47, 23, '_menu_item_type', 'post_type'),
(48, 23, '_menu_item_menu_item_parent', '0'),
(49, 23, '_menu_item_object_id', '8'),
(50, 23, '_menu_item_object', 'page'),
(51, 23, '_menu_item_target', ''),
(52, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 23, '_menu_item_xfn', 'user_registration_form id47'),
(54, 23, '_menu_item_url', ''),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '9'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(71, 26, '_menu_item_type', 'custom'),
(72, 26, '_menu_item_menu_item_parent', '0'),
(73, 26, '_menu_item_object_id', '26'),
(74, 26, '_menu_item_object', 'custom'),
(75, 26, '_menu_item_target', ''),
(76, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 26, '_menu_item_xfn', ''),
(78, 26, '_menu_item_url', 'https://www.yelp.com'),
(79, 27, '_menu_item_type', 'custom'),
(80, 27, '_menu_item_menu_item_parent', '0'),
(81, 27, '_menu_item_object_id', '27'),
(82, 27, '_menu_item_object', 'custom'),
(83, 27, '_menu_item_target', ''),
(84, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 27, '_menu_item_xfn', ''),
(86, 27, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(87, 28, '_menu_item_type', 'custom'),
(88, 28, '_menu_item_menu_item_parent', '0'),
(89, 28, '_menu_item_object_id', '28'),
(90, 28, '_menu_item_object', 'custom'),
(91, 28, '_menu_item_target', ''),
(92, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 28, '_menu_item_xfn', ''),
(94, 28, '_menu_item_url', 'https://twitter.com/wordpress'),
(95, 29, '_menu_item_type', 'custom'),
(96, 29, '_menu_item_menu_item_parent', '0'),
(97, 29, '_menu_item_object_id', '29'),
(98, 29, '_menu_item_object', 'custom'),
(99, 29, '_menu_item_target', ''),
(100, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 29, '_menu_item_xfn', ''),
(102, 29, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(103, 30, '_menu_item_type', 'custom'),
(104, 30, '_menu_item_menu_item_parent', '0'),
(105, 30, '_menu_item_object_id', '30'),
(106, 30, '_menu_item_object', 'custom'),
(107, 30, '_menu_item_target', ''),
(108, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 30, '_menu_item_xfn', ''),
(110, 30, '_menu_item_url', 'mailto:wordpress@example.com'),
(135, 12, '_wp_trash_meta_status', 'publish'),
(136, 12, '_wp_trash_meta_time', '1519366777'),
(137, 34, '_wp_trash_meta_status', 'publish'),
(138, 34, '_wp_trash_meta_time', '1519367446'),
(145, 11, '_edit_lock', '1520496999:1'),
(146, 15, '_edit_lock', '1520259045:1'),
(147, 15, '_wp_trash_meta_status', 'publish'),
(148, 15, '_wp_trash_meta_time', '1520259197'),
(149, 15, '_wp_desired_post_slug', 'first-page'),
(150, 35, '_customize_restore_dismissed', '1'),
(152, 7, '_edit_lock', '1520260549:1'),
(153, 7, '_wp_trash_meta_status', 'publish'),
(154, 7, '_wp_trash_meta_time', '1520260701'),
(155, 7, '_wp_desired_post_slug', 'home'),
(160, 39, '_tml_action', 'login'),
(161, 40, '_tml_action', 'logout'),
(162, 41, '_tml_action', 'register'),
(163, 42, '_tml_action', 'lostpassword'),
(164, 43, '_tml_action', 'resetpass'),
(165, 39, '_edit_lock', '1520323431:1'),
(166, 41, '_edit_lock', '1520405043:1'),
(167, 47, 'user_registration_form_setting_default_user_role', 'subscriber'),
(168, 47, 'user_registration_form_setting_enable_strong_password', 'yes'),
(169, 47, 'user_registration_form_setting_form_submit_label', 'Submit'),
(170, 47, 'user_registration_form_setting_enable_recaptcha_support', 'no'),
(171, 47, 'user_registration_form_template', 'Default'),
(172, 41, '_wp_trash_meta_status', 'publish'),
(173, 41, '_wp_trash_meta_time', '1520405234'),
(174, 41, '_wp_desired_post_slug', 'register'),
(176, 50, '_edit_last', '1'),
(177, 50, '_edit_lock', '1520406791:1'),
(178, 56, '_edit_last', '1'),
(179, 56, '_edit_lock', '1520406595:1'),
(180, 73, '_edit_last', '1'),
(181, 73, '_edit_lock', '1520407575:1'),
(182, 77, '_edit_last', '1'),
(183, 77, '_edit_lock', '1520408591:1'),
(201, 56, '_wp_desired_post_slug', ''),
(202, 73, '_wp_trash_meta_status', 'draft'),
(203, 73, '_wp_trash_meta_time', '1520408931'),
(204, 73, '_wp_desired_post_slug', ''),
(205, 40, '_wp_trash_meta_status', 'publish'),
(206, 40, '_wp_trash_meta_time', '1520408948'),
(207, 40, '_wp_desired_post_slug', 'logout'),
(208, 72, '_wp_trash_meta_status', 'publish'),
(209, 72, '_wp_trash_meta_time', '1520408965'),
(210, 72, '_wp_desired_post_slug', 'reset-password-4'),
(211, 77, '_wp_trash_meta_status', 'draft'),
(212, 77, '_wp_trash_meta_time', '1520408994'),
(213, 77, '_wp_desired_post_slug', ''),
(214, 42, '_wp_trash_meta_status', 'publish'),
(215, 42, '_wp_trash_meta_time', '1520409044'),
(216, 42, '_wp_desired_post_slug', 'lostpassword'),
(217, 50, '_wp_trash_meta_status', 'draft'),
(218, 50, '_wp_trash_meta_time', '1520409066'),
(219, 50, '_wp_desired_post_slug', ''),
(220, 43, '_wp_trash_meta_status', 'publish'),
(221, 43, '_wp_trash_meta_time', '1520409085'),
(222, 43, '_wp_desired_post_slug', 'resetpass'),
(223, 63, '_wp_trash_meta_status', 'publish'),
(224, 63, '_wp_trash_meta_time', '1520409102'),
(225, 63, '_wp_desired_post_slug', 'reset-password'),
(226, 67, '_wp_trash_meta_status', 'publish'),
(227, 67, '_wp_trash_meta_time', '1520409133'),
(228, 67, '_wp_desired_post_slug', 'reset-password-2'),
(229, 69, '_wp_trash_meta_status', 'publish'),
(230, 69, '_wp_trash_meta_time', '1520409143'),
(231, 69, '_wp_desired_post_slug', 'reset-password-3'),
(232, 2, '_wp_trash_meta_status', 'publish'),
(233, 2, '_wp_trash_meta_time', '1520409147'),
(234, 2, '_wp_desired_post_slug', 'sample-page'),
(235, 62, '_wp_trash_meta_status', 'publish'),
(236, 62, '_wp_trash_meta_time', '1520409151'),
(237, 62, '_wp_desired_post_slug', 'sign-up'),
(238, 68, '_wp_trash_meta_status', 'publish'),
(239, 68, '_wp_trash_meta_time', '1520409154'),
(240, 68, '_wp_desired_post_slug', 'sign-up-3'),
(241, 65, '_wp_trash_meta_status', 'publish'),
(242, 65, '_wp_trash_meta_time', '1520409159'),
(243, 65, '_wp_desired_post_slug', 'sign-up-2'),
(244, 71, '_wp_trash_meta_status', 'publish'),
(245, 71, '_wp_trash_meta_time', '1520409162'),
(246, 71, '_wp_desired_post_slug', 'sign-up-4'),
(247, 100, '_edit_lock', '1520496954:1'),
(248, 100, '_edit_last', '1'),
(249, 103, '_edit_lock', '1520409296:1'),
(250, 103, '_edit_last', '1'),
(251, 39, '_wp_trash_meta_status', 'publish'),
(252, 39, '_wp_trash_meta_time', '1520409830'),
(253, 39, '_wp_desired_post_slug', 'login'),
(254, 61, '_wp_trash_meta_status', 'publish'),
(255, 61, '_wp_trash_meta_time', '1520409832'),
(256, 61, '_wp_desired_post_slug', 'log-in'),
(257, 64, '_wp_trash_meta_status', 'publish'),
(258, 64, '_wp_trash_meta_time', '1520409836'),
(259, 64, '_wp_desired_post_slug', 'log-in-2'),
(260, 66, '_wp_trash_meta_status', 'publish'),
(261, 66, '_wp_trash_meta_time', '1520409840'),
(262, 66, '_wp_desired_post_slug', 'log-in-3'),
(263, 70, '_wp_trash_meta_status', 'publish'),
(264, 70, '_wp_trash_meta_time', '1520409842'),
(265, 70, '_wp_desired_post_slug', 'log-in-4'),
(266, 56, '_wp_trash_meta_status', 'draft'),
(267, 56, '_wp_trash_meta_time', '1520409845'),
(268, 103, '_wp_trash_meta_status', 'draft'),
(269, 103, '_wp_trash_meta_time', '1520409849'),
(270, 103, '_wp_desired_post_slug', ''),
(271, 105, '_edit_lock', '1520522395:1'),
(272, 105, '_edit_last', '1'),
(273, 108, '_edit_lock', '1520410922:4'),
(275, 109, '_wp_attached_file', '2018/03/women.jpeg'),
(276, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2018/03/women.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"women-250x188.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"women-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"women-400x206.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"women-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"women-300x154.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(277, 110, '_wp_attached_file', '2018/03/123.jpg'),
(278, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1782;s:6:\"height\";i:1002;s:4:\"file\";s:15:\"2018/03/123.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"123-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"123-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"123-400x225.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"123-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"123-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"123-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"123-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"123-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 111, '_wp_attached_file', '2018/03/cropped-women.jpeg'),
(280, 111, '_wp_attachment_context', 'custom-header'),
(281, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:279;s:4:\"file\";s:26:\"2018/03/cropped-women.jpeg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-women-250x188.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-women-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"cropped-women-400x93.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:93;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-women-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-women-300x70.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-women-768x179.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-women-1024x238.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-women-1200x279.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 11, '_edit_last', '1'),
(285, 37, '_edit_lock', '1520433621:1'),
(286, 117, '_menu_item_type', 'custom'),
(287, 117, '_menu_item_menu_item_parent', '0'),
(288, 117, '_menu_item_object_id', '117'),
(289, 117, '_menu_item_object', 'custom'),
(290, 117, '_menu_item_target', ''),
(291, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 117, '_menu_item_xfn', ''),
(293, 117, '_menu_item_url', 'http://localhost/wp/wordpress'),
(294, 37, '_wp_trash_meta_status', 'publish'),
(295, 37, '_wp_trash_meta_time', '1520433632'),
(296, 122, '_edit_lock', '1520434645:5'),
(297, 9, '_edit_lock', '1520497754:1'),
(298, 123, '_edit_lock', '1520439492:1'),
(299, 123, '_edit_last', '1'),
(304, 125, '_edit_lock', '1520438602:1'),
(305, 125, '_edit_last', '5'),
(316, 107, '_wp_trash_meta_status', 'auto-draft'),
(317, 107, '_wp_trash_meta_time', '1520439656'),
(318, 107, '_wp_desired_post_slug', ''),
(319, 108, '_wp_trash_meta_status', 'auto-draft'),
(320, 108, '_wp_trash_meta_time', '1520439658'),
(321, 108, '_wp_desired_post_slug', ''),
(322, 121, '_wp_trash_meta_status', 'auto-draft'),
(323, 121, '_wp_trash_meta_time', '1520439682'),
(324, 121, '_wp_desired_post_slug', ''),
(325, 122, '_wp_trash_meta_status', 'auto-draft'),
(326, 122, '_wp_trash_meta_time', '1520439683'),
(327, 122, '_wp_desired_post_slug', ''),
(330, 123, '_wp_desired_post_slug', 'qwertys-post'),
(333, 125, '_wp_desired_post_slug', 'new-earrings'),
(336, 137, '_wp_attached_file', '2018/03/download-1.jpg'),
(337, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2018/03/download-1.jpg\";s:5:\"sizes\";a:3:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"download-1-225x188.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 8, '_edit_lock', '1520497683:1'),
(341, 8, '_edit_last', '1'),
(342, 8, '_wp_page_template', 'default'),
(343, 145, '_wc_review_count', '0'),
(344, 145, '_wc_rating_count', 'a:0:{}'),
(345, 145, '_wc_average_rating', '0'),
(346, 145, '_edit_lock', '1520446920:1'),
(347, 145, '_edit_last', '1'),
(348, 146, '_wp_attached_file', '2018/03/61Hf9Ku2RgL.jpg'),
(349, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2018/03/61Hf9Ku2RgL.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"61Hf9Ku2RgL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 147, '_wp_attached_file', '2018/03/medium1.2915977.2.png'),
(351, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:315;s:4:\"file\";s:29:\"2018/03/medium1.2915977.2.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"medium1.2915977.2-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"medium1.2915977.2-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"medium1.2915977.2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 148, '_wp_attached_file', '2018/03/Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small.jpg'),
(353, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:134:\"2018/03/Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:134:\"Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 149, '_wp_attached_file', '2018/03/20028978_1.jpg'),
(355, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:740;s:6:\"height\";i:740;s:4:\"file\";s:22:\"2018/03/20028978_1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"20028978_1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"20028978_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"20028978_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"20028978_1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"20028978_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"20028978_1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"20028978_1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"20028978_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 150, '_wp_attached_file', '2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90.jpg'),
(357, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:122:\"2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:122:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 151, '_wp_attached_file', '2018/03/1403-2.jpg'),
(359, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/03/1403-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"1403-2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"1403-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"1403-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"1403-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"1403-2-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"1403-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"1403-2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"1403-2-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"1403-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 152, '_wp_attached_file', '2018/03/download-1-1.jpg'),
(361, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:24:\"2018/03/download-1-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"download-1-1-225x188.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 153, '_wp_attached_file', '2018/03/download.jpg'),
(363, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:231;s:6:\"height\";i:218;s:4:\"file\";s:20:\"2018/03/download.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"download-231x188.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 154, '_wp_attached_file', '2018/03/Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2.jpg'),
(365, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:723;s:4:\"file\";s:77:\"2018/03/Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:78:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-1024x723.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:723;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-400x282.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-400x282.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:77:\"Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 145, '_thumbnail_id', '154'),
(367, 145, '_sku', ''),
(368, 145, '_regular_price', '175'),
(369, 145, '_sale_price', '130'),
(370, 145, '_sale_price_dates_from', ''),
(371, 145, '_sale_price_dates_to', ''),
(372, 145, 'total_sales', '0'),
(373, 145, '_tax_status', 'taxable'),
(374, 145, '_tax_class', ''),
(375, 145, '_manage_stock', 'no'),
(376, 145, '_backorders', 'no'),
(377, 145, '_sold_individually', 'no'),
(378, 145, '_weight', ''),
(379, 145, '_length', ''),
(380, 145, '_width', ''),
(381, 145, '_height', ''),
(382, 145, '_upsell_ids', 'a:0:{}'),
(383, 145, '_crosssell_ids', 'a:0:{}'),
(384, 145, '_purchase_note', ''),
(385, 145, '_default_attributes', 'a:0:{}'),
(386, 145, '_virtual', 'no'),
(387, 145, '_downloadable', 'no'),
(388, 145, '_product_image_gallery', ''),
(389, 145, '_download_limit', '-1'),
(390, 145, '_download_expiry', '-1'),
(391, 145, '_stock', NULL),
(392, 145, '_stock_status', 'instock'),
(393, 145, '_product_version', '3.3.3'),
(394, 145, '_price', '130'),
(395, 157, '_wp_trash_meta_status', 'publish'),
(396, 157, '_wp_trash_meta_time', '1520446965'),
(397, 11, '_wp_page_template', 'default'),
(398, 9, '_edit_last', '1'),
(399, 9, '_wp_page_template', 'default'),
(400, 166, '_wp_attached_file', '2018/03/envelope.png'),
(401, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/03/envelope.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"envelope-200x188.png\";s:5:\"width\";i:200;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"envelope-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"envelope-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"envelope-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 168, '_wp_attached_file', '2018/03/website.png'),
(403, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2018/03/website.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"website-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"website-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"website-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"website-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"website-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"website-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"website-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"website-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 171, '_wp_trash_meta_status', 'publish'),
(405, 171, '_wp_trash_meta_time', '1520447927'),
(406, 172, '_edit_lock', '1520448009:1'),
(407, 172, '_wp_trash_meta_status', 'publish'),
(408, 172, '_wp_trash_meta_time', '1520448013'),
(409, 173, '_wp_trash_meta_status', 'publish'),
(410, 173, '_wp_trash_meta_time', '1520448076'),
(411, 174, '_edit_lock', '1520448327:1'),
(412, 174, '_wp_trash_meta_status', 'publish'),
(413, 174, '_wp_trash_meta_time', '1520448339'),
(420, 176, '_wc_review_count', '0'),
(421, 176, '_wc_rating_count', 'a:0:{}'),
(422, 176, '_wc_average_rating', '0'),
(423, 176, '_edit_lock', '1520450494:6'),
(424, 177, '_wc_review_count', '0'),
(425, 177, '_wc_rating_count', 'a:0:{}'),
(426, 177, '_wc_average_rating', '0'),
(427, 177, '_edit_lock', '1520479600:6'),
(428, 178, '_wp_attached_file', '2018/03/61Hf9Ku2RgL-1.jpg'),
(429, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2018/03/61Hf9Ku2RgL-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:25:\"61Hf9Ku2RgL-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 179, '_wp_attached_file', '2018/03/bag.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES 
(431, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:15:\"2018/03/bag.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"bag-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bag-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bag-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"bag-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"bag-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"bag-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"bag-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bag-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:15:\"bag-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 177, '_edit_last', '6'),
(433, 177, '_thumbnail_id', '179'),
(434, 177, '_sku', ''),
(435, 177, '_regular_price', '200'),
(436, 177, '_sale_price', '180'),
(437, 177, '_sale_price_dates_from', ''),
(438, 177, '_sale_price_dates_to', ''),
(439, 177, 'total_sales', '0'),
(440, 177, '_tax_status', 'taxable'),
(441, 177, '_tax_class', ''),
(442, 177, '_manage_stock', 'no'),
(443, 177, '_backorders', 'no'),
(444, 177, '_sold_individually', 'no'),
(445, 177, '_weight', ''),
(446, 177, '_length', ''),
(447, 177, '_width', ''),
(448, 177, '_height', ''),
(449, 177, '_upsell_ids', 'a:0:{}'),
(450, 177, '_crosssell_ids', 'a:0:{}'),
(451, 177, '_purchase_note', ''),
(452, 177, '_default_attributes', 'a:0:{}'),
(453, 177, '_virtual', 'no'),
(454, 177, '_downloadable', 'no'),
(455, 177, '_product_image_gallery', ''),
(456, 177, '_download_limit', '-1'),
(457, 177, '_download_expiry', '-1'),
(458, 177, '_stock', NULL),
(459, 177, '_stock_status', 'instock'),
(460, 177, '_product_version', '3.3.3'),
(461, 177, '_price', '180'),
(462, 180, '_wc_review_count', '0'),
(463, 180, '_wc_rating_count', 'a:0:{}'),
(464, 180, '_wc_average_rating', '0'),
(465, 180, '_edit_lock', '1520480398:6'),
(466, 180, '_edit_last', '6'),
(467, 180, '_thumbnail_id', '178'),
(468, 180, '_sku', ''),
(469, 180, '_regular_price', '1000'),
(470, 180, '_sale_price', '944'),
(471, 180, '_sale_price_dates_from', ''),
(472, 180, '_sale_price_dates_to', ''),
(473, 180, 'total_sales', '0'),
(474, 180, '_tax_status', 'taxable'),
(475, 180, '_tax_class', ''),
(476, 180, '_manage_stock', 'no'),
(477, 180, '_backorders', 'no'),
(478, 180, '_sold_individually', 'no'),
(479, 180, '_weight', ''),
(480, 180, '_length', ''),
(481, 180, '_width', ''),
(482, 180, '_height', ''),
(483, 180, '_upsell_ids', 'a:0:{}'),
(484, 180, '_crosssell_ids', 'a:0:{}'),
(485, 180, '_purchase_note', ''),
(486, 180, '_default_attributes', 'a:0:{}'),
(487, 180, '_virtual', 'no'),
(488, 180, '_downloadable', 'no'),
(489, 180, '_product_image_gallery', ''),
(490, 180, '_download_limit', '-1'),
(491, 180, '_download_expiry', '-1'),
(492, 180, '_stock', NULL),
(493, 180, '_stock_status', 'instock'),
(494, 180, '_product_version', '3.3.3'),
(495, 180, '_price', '944'),
(496, 182, '_wc_review_count', '0'),
(497, 182, '_wc_rating_count', 'a:0:{}'),
(498, 182, '_wc_average_rating', '0'),
(499, 182, '_edit_lock', '1520481988:10'),
(500, 184, '_menu_item_type', 'post_type'),
(501, 184, '_menu_item_menu_item_parent', '0'),
(502, 184, '_menu_item_object_id', '141'),
(503, 184, '_menu_item_object', 'page'),
(504, 184, '_menu_item_target', ''),
(505, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(506, 184, '_menu_item_xfn', ''),
(507, 184, '_menu_item_url', ''),
(508, 183, '_wp_trash_meta_status', 'publish'),
(509, 183, '_wp_trash_meta_time', '1520482297'),
(510, 185, '_wc_review_count', '0'),
(511, 185, '_wc_rating_count', 'a:0:{}'),
(512, 185, '_wc_average_rating', '0'),
(513, 185, '_edit_lock', '1520482814:10'),
(514, 186, '_wp_attached_file', '2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1.jpg'),
(515, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:126:\"2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:126:\"OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 187, '_wp_attached_file', '2018/03/1403-2-1.jpg'),
(517, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2018/03/1403-2-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"1403-2-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1403-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1403-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"1403-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"1403-2-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"1403-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"1403-2-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"1403-2-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"1403-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"1403-2-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(518, 185, '_edit_last', '10'),
(519, 185, '_thumbnail_id', '187'),
(520, 185, '_sku', ''),
(521, 185, '_regular_price', '400'),
(522, 185, '_sale_price', '375'),
(523, 185, '_sale_price_dates_from', ''),
(524, 185, '_sale_price_dates_to', ''),
(525, 185, 'total_sales', '0'),
(526, 185, '_tax_status', 'taxable'),
(527, 185, '_tax_class', ''),
(528, 185, '_manage_stock', 'no'),
(529, 185, '_backorders', 'no'),
(530, 185, '_sold_individually', 'no'),
(531, 185, '_weight', ''),
(532, 185, '_length', ''),
(533, 185, '_width', ''),
(534, 185, '_height', ''),
(535, 185, '_upsell_ids', 'a:0:{}'),
(536, 185, '_crosssell_ids', 'a:0:{}'),
(537, 185, '_purchase_note', ''),
(538, 185, '_default_attributes', 'a:0:{}'),
(539, 185, '_virtual', 'no'),
(540, 185, '_downloadable', 'no'),
(541, 185, '_product_image_gallery', ''),
(542, 185, '_download_limit', '-1'),
(543, 185, '_download_expiry', '-1'),
(544, 185, '_stock', NULL),
(545, 185, '_stock_status', 'instock'),
(546, 185, '_product_version', '3.3.3'),
(547, 185, '_price', '375'),
(548, 189, '_wc_review_count', '0'),
(549, 189, '_wc_rating_count', 'a:0:{}'),
(550, 189, '_wc_average_rating', '0'),
(551, 189, '_edit_lock', '1520483378:10'),
(552, 189, '_edit_last', '10'),
(553, 190, '_wp_attached_file', '2018/03/shoes.jpg'),
(554, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2018/03/shoes.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"shoes-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"shoes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"shoes-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"shoes-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"shoes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"shoes-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"shoes-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"shoes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"shoes-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(555, 189, '_thumbnail_id', '190'),
(556, 189, '_sku', ''),
(557, 189, '_regular_price', '399'),
(558, 189, '_sale_price', '349'),
(559, 189, '_sale_price_dates_from', ''),
(560, 189, '_sale_price_dates_to', ''),
(561, 189, 'total_sales', '0'),
(562, 189, '_tax_status', 'taxable'),
(563, 189, '_tax_class', ''),
(564, 189, '_manage_stock', 'no'),
(565, 189, '_backorders', 'no'),
(566, 189, '_sold_individually', 'no'),
(567, 189, '_weight', ''),
(568, 189, '_length', ''),
(569, 189, '_width', ''),
(570, 189, '_height', ''),
(571, 189, '_upsell_ids', 'a:0:{}'),
(572, 189, '_crosssell_ids', 'a:0:{}'),
(573, 189, '_purchase_note', ''),
(574, 189, '_default_attributes', 'a:0:{}'),
(575, 189, '_virtual', 'no'),
(576, 189, '_downloadable', 'no'),
(577, 189, '_product_image_gallery', ''),
(578, 189, '_download_limit', '-1'),
(579, 189, '_download_expiry', '-1'),
(580, 189, '_stock', NULL),
(581, 189, '_stock_status', 'instock'),
(582, 189, '_product_version', '3.3.3'),
(583, 189, '_price', '349'),
(584, 192, '_wc_review_count', '0'),
(585, 192, '_wc_rating_count', 'a:0:{}'),
(586, 192, '_wc_average_rating', '0'),
(587, 192, '_edit_lock', '1520519038:8'),
(588, 193, '_wp_attached_file', '2018/03/medium1.2915977.2-1.png'),
(589, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:315;s:4:\"file\";s:31:\"2018/03/medium1.2915977.2-1.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"medium1.2915977.2-1-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"medium1.2915977.2-1-250x188.png\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"medium1.2915977.2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 194, '_wp_attached_file', '2018/03/20028978_1-1.jpg'),
(591, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:740;s:6:\"height\";i:740;s:4:\"file\";s:24:\"2018/03/20028978_1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"20028978_1-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"20028978_1-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:24:\"20028978_1-1-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 192, '_edit_last', '12'),
(593, 192, '_thumbnail_id', '194'),
(594, 192, '_sku', ''),
(595, 192, '_regular_price', '390'),
(596, 192, '_sale_price', '350'),
(597, 192, '_sale_price_dates_from', ''),
(598, 192, '_sale_price_dates_to', ''),
(599, 192, 'total_sales', '0'),
(600, 192, '_tax_status', 'taxable'),
(601, 192, '_tax_class', ''),
(602, 192, '_manage_stock', 'no'),
(603, 192, '_backorders', 'no'),
(604, 192, '_sold_individually', 'no'),
(605, 192, '_weight', ''),
(606, 192, '_length', ''),
(607, 192, '_width', ''),
(608, 192, '_height', ''),
(609, 192, '_upsell_ids', 'a:0:{}'),
(610, 192, '_crosssell_ids', 'a:0:{}'),
(611, 192, '_purchase_note', ''),
(612, 192, '_default_attributes', 'a:0:{}'),
(613, 192, '_virtual', 'no'),
(614, 192, '_downloadable', 'no'),
(615, 192, '_product_image_gallery', ''),
(616, 192, '_download_limit', '-1'),
(617, 192, '_download_expiry', '-1'),
(618, 192, '_stock', NULL),
(619, 192, '_stock_status', 'instock'),
(620, 192, '_product_version', '3.3.3'),
(621, 192, '_price', '350'),
(622, 196, '_wc_review_count', '0'),
(623, 196, '_wc_rating_count', 'a:0:{}'),
(624, 196, '_wc_average_rating', '0'),
(625, 196, '_edit_lock', '1520485203:12'),
(626, 196, '_edit_last', '12'),
(627, 196, '_thumbnail_id', '193'),
(628, 196, '_sku', ''),
(629, 196, '_regular_price', '200'),
(630, 196, '_sale_price', '170'),
(631, 196, '_sale_price_dates_from', ''),
(632, 196, '_sale_price_dates_to', ''),
(633, 196, 'total_sales', '0'),
(634, 196, '_tax_status', 'taxable'),
(635, 196, '_tax_class', ''),
(636, 196, '_manage_stock', 'no'),
(637, 196, '_backorders', 'no'),
(638, 196, '_sold_individually', 'no'),
(639, 196, '_weight', ''),
(640, 196, '_length', ''),
(641, 196, '_width', ''),
(642, 196, '_height', ''),
(643, 196, '_upsell_ids', 'a:0:{}'),
(644, 196, '_crosssell_ids', 'a:0:{}'),
(645, 196, '_purchase_note', ''),
(646, 196, '_default_attributes', 'a:0:{}'),
(647, 196, '_virtual', 'no'),
(648, 196, '_downloadable', 'no'),
(649, 196, '_product_image_gallery', ''),
(650, 196, '_download_limit', '-1'),
(651, 196, '_download_expiry', '-1'),
(652, 196, '_stock', NULL),
(653, 196, '_stock_status', 'instock'),
(654, 196, '_product_version', '3.3.3'),
(655, 196, '_price', '170'),
(656, 197, '_wc_review_count', '0'),
(657, 197, '_wc_rating_count', 'a:0:{}'),
(658, 197, '_wc_average_rating', '0'),
(659, 198, '_wc_review_count', '0'),
(660, 198, '_wc_rating_count', 'a:0:{}'),
(661, 198, '_wc_average_rating', '0'),
(662, 198, '_edit_lock', '1520486123:9'),
(663, 199, '_wp_attached_file', '2018/03/download-1-2.jpg'),
(664, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:24:\"2018/03/download-1-2.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"download-1-2-225x188.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:24:\"download-1-2-225x188.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 200, '_wp_attached_file', '2018/03/download-2.jpg'),
(666, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:231;s:6:\"height\";i:218;s:4:\"file\";s:22:\"2018/03/download-2.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"download-2-231x188.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"download-2-231x188.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(667, 198, '_edit_last', '9'),
(668, 198, '_thumbnail_id', '200'),
(669, 198, '_sku', ''),
(670, 198, '_regular_price', '220'),
(671, 198, '_sale_price', '180'),
(672, 198, '_sale_price_dates_from', ''),
(673, 198, '_sale_price_dates_to', ''),
(674, 198, 'total_sales', '0'),
(675, 198, '_tax_status', 'taxable'),
(676, 198, '_tax_class', ''),
(677, 198, '_manage_stock', 'no'),
(678, 198, '_backorders', 'no'),
(679, 198, '_sold_individually', 'no'),
(680, 198, '_weight', ''),
(681, 198, '_length', ''),
(682, 198, '_width', ''),
(683, 198, '_height', ''),
(684, 198, '_upsell_ids', 'a:0:{}'),
(685, 198, '_crosssell_ids', 'a:0:{}'),
(686, 198, '_purchase_note', ''),
(687, 198, '_default_attributes', 'a:0:{}'),
(688, 198, '_virtual', 'no'),
(689, 198, '_downloadable', 'no'),
(690, 198, '_product_image_gallery', ''),
(691, 198, '_download_limit', '-1'),
(692, 198, '_download_expiry', '-1'),
(693, 198, '_stock', NULL),
(694, 198, '_stock_status', 'instock'),
(695, 198, '_product_version', '3.3.3'),
(696, 198, '_price', '180'),
(697, 202, '_wc_review_count', '0'),
(698, 202, '_wc_rating_count', 'a:0:{}'),
(699, 202, '_wc_average_rating', '0'),
(700, 202, '_edit_lock', '1520488019:9'),
(701, 202, '_edit_last', '9'),
(702, 202, '_thumbnail_id', '199'),
(703, 202, '_sku', ''),
(704, 202, '_regular_price', '350'),
(705, 202, '_sale_price', '325'),
(706, 202, '_sale_price_dates_from', ''),
(707, 202, '_sale_price_dates_to', ''),
(708, 202, 'total_sales', '0'),
(709, 202, '_tax_status', 'taxable'),
(710, 202, '_tax_class', ''),
(711, 202, '_manage_stock', 'no'),
(712, 202, '_backorders', 'no'),
(713, 202, '_sold_individually', 'no'),
(714, 202, '_weight', ''),
(715, 202, '_length', ''),
(716, 202, '_width', ''),
(717, 202, '_height', ''),
(718, 202, '_upsell_ids', 'a:0:{}'),
(719, 202, '_crosssell_ids', 'a:0:{}'),
(720, 202, '_purchase_note', ''),
(721, 202, '_default_attributes', 'a:0:{}'),
(722, 202, '_virtual', 'no'),
(723, 202, '_downloadable', 'no'),
(724, 202, '_product_image_gallery', ''),
(725, 202, '_download_limit', '-1'),
(726, 202, '_download_expiry', '-1'),
(727, 202, '_stock', NULL),
(728, 202, '_stock_status', 'instock'),
(729, 202, '_product_version', '3.3.3'),
(730, 202, '_price', '325'),
(731, 203, '_wc_review_count', '0'),
(732, 203, '_wc_rating_count', 'a:0:{}'),
(733, 203, '_wc_average_rating', '0'),
(734, 204, '_wc_review_count', '0'),
(735, 204, '_wc_rating_count', 'a:0:{}'),
(736, 204, '_wc_average_rating', '0'),
(737, 204, '_edit_lock', '1520490961:7'),
(738, 205, '_wp_attached_file', '2018/03/scarf.jpg'),
(739, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2018/03/scarf.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"scarf-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"scarf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"scarf-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"scarf-400x500.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"scarf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"scarf-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"scarf-400x500.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"scarf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"scarf-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 204, '_edit_last', '7'),
(741, 204, '_thumbnail_id', '205'),
(742, 204, '_sku', ''),
(743, 204, '_regular_price', '450'),
(744, 204, '_sale_price', '399'),
(745, 204, '_sale_price_dates_from', ''),
(746, 204, '_sale_price_dates_to', ''),
(747, 204, 'total_sales', '0'),
(748, 204, '_tax_status', 'taxable'),
(749, 204, '_tax_class', ''),
(750, 204, '_manage_stock', 'no'),
(751, 204, '_backorders', 'no'),
(752, 204, '_sold_individually', 'no'),
(753, 204, '_weight', ''),
(754, 204, '_length', ''),
(755, 204, '_width', ''),
(756, 204, '_height', ''),
(757, 204, '_upsell_ids', 'a:0:{}'),
(758, 204, '_crosssell_ids', 'a:0:{}'),
(759, 204, '_purchase_note', ''),
(760, 204, '_default_attributes', 'a:0:{}'),
(761, 204, '_virtual', 'no'),
(762, 204, '_downloadable', 'no'),
(763, 204, '_product_image_gallery', ''),
(764, 204, '_download_limit', '-1'),
(765, 204, '_download_expiry', '-1'),
(766, 204, '_stock', NULL),
(767, 204, '_stock_status', 'instock'),
(768, 204, '_product_version', '3.3.3'),
(769, 204, '_price', '399'),
(770, 206, '_wc_review_count', '0'),
(771, 206, '_wc_rating_count', 'a:0:{}'),
(772, 206, '_wc_average_rating', '0'),
(773, 206, '_edit_lock', '1520491790:7'),
(774, 206, '_edit_last', '7'),
(775, 207, '_wp_attached_file', '2018/03/download-2-1.jpg'),
(776, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:233;s:4:\"file\";s:24:\"2018/03/download-2-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"download-2-1-216x188.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"download-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:24:\"download-2-1-216x188.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(777, 206, '_thumbnail_id', '207'),
(778, 206, '_sku', ''),
(779, 206, '_regular_price', '245'),
(780, 206, '_sale_price', '215'),
(781, 206, '_sale_price_dates_from', ''),
(782, 206, '_sale_price_dates_to', ''),
(783, 206, 'total_sales', '0'),
(784, 206, '_tax_status', 'taxable'),
(785, 206, '_tax_class', ''),
(786, 206, '_manage_stock', 'no'),
(787, 206, '_backorders', 'no'),
(788, 206, '_sold_individually', 'no'),
(789, 206, '_weight', ''),
(790, 206, '_length', ''),
(791, 206, '_width', ''),
(792, 206, '_height', ''),
(793, 206, '_upsell_ids', 'a:0:{}'),
(794, 206, '_crosssell_ids', 'a:0:{}'),
(795, 206, '_purchase_note', ''),
(796, 206, '_default_attributes', 'a:0:{}'),
(797, 206, '_virtual', 'no'),
(798, 206, '_downloadable', 'no'),
(799, 206, '_product_image_gallery', ''),
(800, 206, '_download_limit', '-1'),
(801, 206, '_download_expiry', '-1'),
(802, 206, '_stock', NULL),
(803, 206, '_stock_status', 'instock'),
(804, 206, '_product_version', '3.3.3'),
(805, 206, '_price', '215'),
(806, 208, '_wp_trash_meta_status', 'publish'),
(807, 208, '_wp_trash_meta_time', '1520492238'),
(808, 209, '_wp_trash_meta_status', 'publish'),
(809, 209, '_wp_trash_meta_time', '1520492565'),
(811, 210, '_customize_restore_dismissed', '1'),
(812, 211, '_wp_trash_meta_status', 'publish'),
(813, 211, '_wp_trash_meta_time', '1520493109'),
(814, 212, '_edit_lock', '1520495709:1'),
(815, 213, '_wp_trash_meta_status', 'publish'),
(816, 213, '_wp_trash_meta_time', '1520496602'),
(817, 142, '_edit_lock', '1520496928:1'),
(818, 143, '_edit_lock', '1520496938:1'),
(819, 144, '_edit_lock', '1520496948:1'),
(820, 100, '_wp_trash_meta_status', 'publish'),
(821, 100, '_wp_trash_meta_time', '1520497105'),
(822, 100, '_wp_desired_post_slug', 'new-registration'),
(823, 141, '_edit_lock', '1520497398:1'),
(824, 216, '_edit_lock', '1520497749:1'),
(825, 216, '_wp_trash_meta_status', 'publish'),
(826, 216, '_wp_trash_meta_time', '1520497804'),
(827, 220, '_wc_review_count', '0'),
(828, 220, '_wc_rating_count', 'a:0:{}'),
(829, 220, '_wc_average_rating', '0'),
(830, 220, '_edit_lock', '1520516871:7'),
(831, 222, '_wc_review_count', '0'),
(832, 222, '_wc_rating_count', 'a:0:{}'),
(833, 222, '_wc_average_rating', '0'),
(834, 222, '_edit_lock', '1520517633:8'),
(835, 222, '_edit_last', '8'),
(836, 222, '_sku', ''),
(837, 222, '_regular_price', ''),
(838, 222, '_sale_price', ''),
(839, 222, '_sale_price_dates_from', ''),
(840, 222, '_sale_price_dates_to', ''),
(841, 222, 'total_sales', '0'),
(842, 222, '_tax_status', 'taxable'),
(843, 222, '_tax_class', ''),
(844, 222, '_manage_stock', 'no'),
(845, 222, '_backorders', 'no'),
(846, 222, '_sold_individually', 'no'),
(847, 222, '_weight', ''),
(848, 222, '_length', ''),
(849, 222, '_width', ''),
(850, 222, '_height', ''),
(851, 222, '_upsell_ids', 'a:0:{}'),
(852, 222, '_crosssell_ids', 'a:0:{}'),
(853, 222, '_purchase_note', ''),
(854, 222, '_default_attributes', 'a:0:{}'),
(855, 222, '_virtual', 'no'),
(856, 222, '_downloadable', 'no'),
(857, 222, '_product_image_gallery', ''),
(858, 222, '_download_limit', '-1'),
(859, 222, '_download_expiry', '-1'),
(860, 222, '_stock', NULL),
(861, 222, '_stock_status', 'instock'),
(862, 222, '_product_version', '3.3.3'),
(863, 222, '_price', ''),
(864, 222, '_wp_trash_meta_status', 'publish'),
(865, 222, '_wp_trash_meta_time', '1520517939'),
(866, 222, '_wp_desired_post_slug', 'this-product'),
(867, 223, '_edit_lock', '1520522216:1'),
(868, 223, '_edit_last', '1'),
(869, 223, '_wp_page_template', 'default'),
(870, 226, '_edit_lock', '1520521917:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES 
(2, 1, 0x323031382d30322d32332030363a30343a3535, 0x323031382d30322d32332030363a30343a3535, 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', 0x323031382d30332d30372030373a35323a3237, 0x323031382d30332d30372030373a35323a3237, '', 0, 'http://localhost/wp/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/02/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/02/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/02/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', 0x323031382d30332d30352031343a33383a3231, 0x323031382d30332d30352031343a33383a3231, '', 0, 'http://localhost/wp/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '<h5><strong><img class=\"aligncenter wp-image-111\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women-300x70.jpeg\" alt=\"\" width=\"647\" height=\"151\" /></strong></h5>\r\n<h5><strong>This is a dynamic website for women to provide you with a platform to display your</strong>\r\n<strong>work and get recognition. We provide  you a market to sell your products.</strong></h5>\r\n<ul>\r\n 	<li>We believe every woman is special.</li>\r\n 	<li>We are here to make your dreams come true.</li>\r\n 	<li>We will help you, support you and guide you.</li>\r\n</ul>\r\n<h2><strong>All you need to do is show us your <em>handicrafts</em>!!</strong></h2>', 'About us', '', 'publish', 'closed', 'closed', '', 'about', '', '', 0x323031382d30332d30372031383a33333a3134, 0x323031382d30332d30372031383a33333a3134, '', 0, 'http://localhost/wp/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, 'We would love to hear from you! Any queries, thoughts or suggestions, get in touch with us here:\r\n\r\n<em><img class=\"alignnone wp-image-166\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png\" alt=\"\" width=\"63\" height=\"63\" /></em><em>Email us at</em>: niska301@gmail.com', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', 0x323031382d30332d30382030383a33313a3335, 0x323031382d30332d30382030383a33313a3335, '', 0, 'http://localhost/wp/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 0, 'http://localhost/wp/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '<blockquote>\r\n<h2><img class=\"alignnone wp-image-109\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/women-300x154.jpeg\" alt=\"\" width=\"676\" height=\"347\" /> <em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">ASpire. </em><em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">dream. realize.</em></h2>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself. [profilepress-registration id=\"2\"]\r\n\r\n&nbsp;', '', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', 0x323031382d30332d30382030383a31353a3537, 0x323031382d30332d30382030383a31353a3537, '', 0, 'http://localhost/wp/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"34dfc152ee287b2ed633b600dfc202ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d43ed6dad5a6aa11f2dda5ca2f7687f2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5dd5a7e0f65dd2ab63eb1fc15ec55dbe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"34dfc152ee287b2ed633b600dfc202ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5dd5a7e0f65dd2ab63eb1fc15ec55dbe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d43ed6dad5a6aa11f2dda5ca2f7687f2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wp/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:07:29\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:10:11\"\n    },\n    \"twentysixteen::header_image\": {\n        \"value\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/02/cropped-Capture.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:16:45\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/02/cropped-Capture.png\",\n            \"thumbnail_url\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/02/cropped-Capture.png\",\n            \"timestamp\": 1519366583684,\n            \"attachment_id\": 14,\n            \"width\": 1200,\n            \"height\": 280\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:16:45\"\n    },\n    \"twentysixteen::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:16:45\"\n    },\n    \"twentysixteen::nav_menu_locations[primary]\": {\n        \"value\": -1389780973,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:18:47\"\n    },\n    \"nav_menu[-1389780973]\": {\n        \"value\": {\n            \"name\": \"first\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:18:47\"\n    },\n    \"nav_menu_item[-1152822035]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wp/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1389780973,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-1139256002]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wp/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1389780973,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    },\n    \"nav_menu_item[-2114022684]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"first page\",\n            \"url\": \"http://localhost/wp/wordpress/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"first page\",\n            \"nav_menu_term_id\": -1389780973,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:19:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db5accc9-461e-4eb1-aafa-a3bcf7a2f357', '', '', 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 0, 'http://localhost/wp/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, 0x323031382d30322d32332030363a31353a3432, 0x323031382d30322d32332030363a31353a3432, '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', 0x323031382d30322d32332030363a31353a3432, 0x323031382d30322d32332030363a31353a3432, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/02/Capture.png', 0, 'attachment', 'image/png', 0),
(14, 1, 0x323031382d30322d32332030363a31363a3233, 0x323031382d30322d32332030363a31363a3233, '', 'cropped-Capture.png', '', 'inherit', 'open', 'closed', '', 'cropped-capture-png', '', '', 0x323031382d30322d32332030363a31363a3233, 0x323031382d30322d32332030363a31363a3233, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/02/cropped-Capture.png', 0, 'attachment', 'image/png', 0),
(15, 1, 0x323031382d30322d32332030363a31393a3235, 0x323031382d30322d32332030363a31393a3235, '', 'first page', '', 'trash', 'closed', 'closed', '', 'first-page__trashed', '', '', 0x323031382d30332d30352031343a31333a3137, 0x323031382d30332d30352031343a31333a3137, '', 0, 'http://localhost/wp/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3233, 0x323031382d30322d32332030363a31393a3233, '', 7, 'http://localhost/wp/wordpress/2018/02/23/7-revision-v1/', 0, 'revision', '', 0),
(17, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 8, 'http://localhost/wp/wordpress/2018/02/23/8-revision-v1/', 0, 'revision', '', 0),
(18, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 9, 'http://localhost/wp/wordpress/2018/02/23/9-revision-v1/', 0, 'revision', '', 0),
(19, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 10, 'http://localhost/wp/wordpress/2018/02/23/10-revision-v1/', 0, 'revision', '', 0),
(20, 1, 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3234, 0x323031382d30322d32332030363a31393a3234, '', 11, 'http://localhost/wp/wordpress/2018/02/23/11-revision-v1/', 0, 'revision', '', 0),
(21, 1, 0x323031382d30322d32332030363a31393a3235, 0x323031382d30322d32332030363a31393a3235, '', 'first page', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', 0x323031382d30322d32332030363a31393a3235, 0x323031382d30322d32332030363a31393a3235, '', 15, 'http://localhost/wp/wordpress/2018/02/23/15-revision-v1/', 0, 'revision', '', 0),
(23, 1, 0x323031382d30322d32332030363a31393a3236, 0x323031382d30322d32332030363a31393a3236, ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', 0x323031382d30332d30382030343a31313a3335, 0x323031382d30332d30382030343a31313a3335, '', 0, 'http://localhost/wp/wordpress/2018/02/23/23/', 4, 'nav_menu_item', '', 0),
(25, 1, 0x323031382d30322d32332030363a31393a3238, 0x323031382d30322d32332030363a31393a3238, ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', 0x323031382d30332d30382030343a31313a3335, 0x323031382d30332d30382030343a31313a3335, '', 0, 'http://localhost/wp/wordpress/2018/02/23/25/', 5, 'nav_menu_item', '', 0),
(26, 1, 0x323031382d30322d32332030363a31393a3239, 0x323031382d30322d32332030363a31393a3239, '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', 0x323031382d30322d32332030363a31393a3239, 0x323031382d30322d32332030363a31393a3239, '', 0, 'http://localhost/wp/wordpress/2018/02/23/yelp/', 0, 'nav_menu_item', '', 0),
(27, 1, 0x323031382d30322d32332030363a31393a3330, 0x323031382d30322d32332030363a31393a3330, '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', 0x323031382d30322d32332030363a31393a3330, 0x323031382d30322d32332030363a31393a3330, '', 0, 'http://localhost/wp/wordpress/2018/02/23/facebook/', 1, 'nav_menu_item', '', 0),
(28, 1, 0x323031382d30322d32332030363a31393a3331, 0x323031382d30322d32332030363a31393a3331, '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', 0x323031382d30322d32332030363a31393a3331, 0x323031382d30322d32332030363a31393a3331, '', 0, 'http://localhost/wp/wordpress/2018/02/23/twitter/', 2, 'nav_menu_item', '', 0),
(29, 1, 0x323031382d30322d32332030363a31393a3331, 0x323031382d30322d32332030363a31393a3331, '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', 0x323031382d30322d32332030363a31393a3331, 0x323031382d30322d32332030363a31393a3331, '', 0, 'http://localhost/wp/wordpress/2018/02/23/instagram/', 3, 'nav_menu_item', '', 0),
(30, 1, 0x323031382d30322d32332030363a31393a3332, 0x323031382d30322d32332030363a31393a3332, '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', 0x323031382d30322d32332030363a31393a3332, 0x323031382d30322d32332030363a31393a3332, '', 0, 'http://localhost/wp/wordpress/2018/02/23/email/', 4, 'nav_menu_item', '', 0),
(34, 1, 0x323031382d30322d32332030363a33303a3435, 0x323031382d30322d32332030363a33303a3435, '{\n    \"nav_menu_item[22]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-23 06:30:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd5cc226d-3f0a-4837-ab33-fbf206789686', '', '', 0x323031382d30322d32332030363a33303a3435, 0x323031382d30322d32332030363a33303a3435, '', 0, 'http://localhost/wp/wordpress/2018/02/23/d5cc226d-3f0a-4837-ab33-fbf206789686/', 0, 'customize_changeset', '', 0),
(35, 1, 0x323031382d30332d30352031343a30393a3030, 0x303030302d30302d30302030303a30303a3030, '{\n    \"twentysixteen::nav_menu_locations[primary]\": {\n        \"value\": -710252144,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu[4]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu[-710252144]\": {\n        \"value\": {\n            \"name\": \"first\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu_item[-1803949197]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu_item[-484032315]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu_item[-2137841767]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:08:01\"\n    },\n    \"nav_menu_item[-1911805663]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"A homepage section\",\n            \"url\": \"http://localhost/wp/wordpress/a-homepage-section/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"A homepage section\",\n            \"nav_menu_term_id\": -710252144,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:09:00\"\n    },\n    \"nav_menu_item[-459449448]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost/wp/wordpress/blog/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -710252144,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:09:00\"\n    },\n    \"nav_menu_item[-1189064922]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/wp/wordpress/contact/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -710252144,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:09:00\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f6ae44a4-8902-412e-a73c-731fefe35a37', '', '', 0x323031382d30332d30352031343a30393a3030, 0x323031382d30332d30352031343a30393a3030, '', 0, 'http://localhost/wp/wordpress/?p=35', 0, 'customize_changeset', '', 0),
(37, 1, 0x323031382d30332d30372031343a34303a3237, 0x323031382d30332d30372031343a34303a3237, '{\n    \"twentysixteen::header_image\": {\n        \"value\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 13:52:17\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women.jpeg\",\n            \"thumbnail_url\": \"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women.jpeg\",\n            \"timestamp\": 1520430390005,\n            \"attachment_id\": 111,\n            \"width\": 1200,\n            \"height\": 279\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 13:52:17\"\n    },\n    \"twentysixteen::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:25:43\"\n    },\n    \"nav_menu[4]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:25:43\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/wp/wordpress/contact/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 06:49:33\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/wp/wordpress/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"user_registration_form id47\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 13:52:17\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/wp/wordpress/blog/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 06:49:33\"\n    },\n    \"nav_menu_item[-60141793]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wp/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-05 14:26:43\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 13:58:59\"\n    },\n    \"page_on_front\": {\n        \"value\": \"11\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 13:58:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7fb2392e-1730-4806-adab-bfccca557a39', '', '', 0x323031382d30332d30372031343a34303a3237, 0x323031382d30332d30372031343a34303a3237, '', 0, 'http://localhost/wp/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, 0x323031382d30332d30362030373a34373a3538, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30362030373a34373a3538, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=38', 0, 'post', '', 0),
(39, 1, 0x323031382d30332d30362030373a35353a3535, 0x323031382d30332d30362030373a35353a3535, '[theme-my-login]', 'Log In', '', 'trash', 'closed', 'closed', '', 'login__trashed', '', '', 0x323031382d30332d30372030383a30333a3530, 0x323031382d30332d30372030383a30333a3530, '', 0, 'http://localhost/wp/wordpress/login/', 0, 'page', '', 0),
(40, 1, 0x323031382d30332d30362030373a35353a3536, 0x323031382d30332d30362030373a35353a3536, '[theme-my-login]', 'Log Out', '', 'trash', 'closed', 'closed', '', 'logout__trashed', '', '', 0x323031382d30332d30372030373a34393a3039, 0x323031382d30332d30372030373a34393a3039, '', 0, 'http://localhost/wp/wordpress/logout/', 0, 'page', '', 0),
(41, 1, 0x323031382d30332d30362030373a35353a3536, 0x323031382d30332d30362030373a35353a3536, '[theme-my-login]', 'Register', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', 0x323031382d30332d30372030363a34373a3135, 0x323031382d30332d30372030363a34373a3135, '', 0, 'http://localhost/wp/wordpress/register/', 0, 'page', '', 0),
(42, 1, 0x323031382d30332d30362030373a35353a3536, 0x323031382d30332d30362030373a35353a3536, '[theme-my-login]', 'Lost Password', '', 'trash', 'closed', 'closed', '', 'lostpassword__trashed', '', '', 0x323031382d30332d30372030373a35303a3434, 0x323031382d30332d30372030373a35303a3434, '', 0, 'http://localhost/wp/wordpress/lostpassword/', 0, 'page', '', 0),
(43, 1, 0x323031382d30332d30362030373a35353a3537, 0x323031382d30332d30362030373a35353a3537, '[theme-my-login]', 'Reset Password', '', 'trash', 'closed', 'closed', '', 'resetpass__trashed', '', '', 0x323031382d30332d30372030373a35313a3236, 0x323031382d30332d30372030373a35313a3236, '', 0, 'http://localhost/wp/wordpress/resetpass/', 0, 'page', '', 0),
(45, 1, 0x323031382d30332d30362030383a30323a3035, 0x323031382d30332d30362030383a30323a3035, '[theme-my-login]\r\n\r\n&nbsp;\r\n\r\njgkjhjklj\r\n\r\n&nbsp;', 'Log In', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', 0x323031382d30332d30362030383a30323a3035, 0x323031382d30332d30362030383a30323a3035, '', 39, 'http://localhost/wp/wordpress/2018/03/06/39-autosave-v1/', 0, 'revision', '', 0),
(46, 1, 0x323031382d30332d30362030383a31313a3436, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30362030383a31313a3436, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=46', 0, 'post', '', 0),
(47, 1, 0x323031382d30332d30372030363a35333a3339, 0x323031382d30332d30372030363a35333a3339, '[[[{\"field_key\":\"user_first_name\",\"general_setting\":{\"label\":\"First Name\",\"field_name\":\"user_first_name\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_last_name\",\"general_setting\":{\"label\":\"Last Name\",\"field_name\":\"user_last_name\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_username\",\"general_setting\":{\"label\":\"Username\",\"field_name\":\"user_username\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_password\",\"general_setting\":{\"label\":\"User Password\",\"field_name\":\"user_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}]]]', 'Default form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', 0x323031382d30332d30372030363a35333a3339, 0x323031382d30332d30372030363a35333a3339, '', 0, 'http://localhost/wp/wordpress/?post_type=user_registration&#038;p=47', 0, 'user_registration', '', 0),
(48, 1, 0x323031382d30332d30372030363a34373a3135, 0x323031382d30332d30372030363a34373a3135, '[theme-my-login]', 'Register', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', 0x323031382d30332d30372030363a34373a3135, 0x323031382d30332d30372030363a34373a3135, '', 41, 'http://localhost/wp/wordpress/2018/03/07/41-revision-v1/', 0, 'revision', '', 0),
(50, 1, 0x323031382d30332d30372030373a35313a3134, 0x323031382d30332d30372030373a35313a3134, '[user_registration_form id=\"47\" ]\n\n&nbsp;', 'Registration', '', 'trash', 'closed', 'closed', '', '__trashed-4', '', '', 0x323031382d30332d30372030373a35313a3134, 0x323031382d30332d30372030373a35313a3134, '', 0, 'http://localhost/wp/wordpress/?page_id=50', 0, 'page', '', 0),
(51, 1, 0x323031382d30332d30372030363a35303a3333, 0x323031382d30332d30372030363a35303a3333, '[user_registration_form id=\"47\"]', 'Registration', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', 0x323031382d30332d30372030363a35303a3333, 0x323031382d30332d30372030363a35303a3333, '', 50, 'http://localhost/wp/wordpress/2018/03/07/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, 0x323031382d30332d30372030363a35313a3038, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30372030363a35313a3038, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=52', 0, 'page', '', 0),
(53, 1, 0x323031382d30332d30372030363a35353a3033, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30372030363a35353a3033, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, 0x323031382d30332d30372030363a35353a3037, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30372030363a35353a3037, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=54', 0, 'page', '', 0),
(55, 1, 0x323031382d30332d30372030373a30343a3132, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30372030373a30343a3132, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, 0x323031382d30332d30372030373a34383a3237, 0x323031382d30332d30372030373a34383a3237, '[wppb-login redirect_url=\"http://localhost/wp/wordpress/?page_id=50&amp;preview=true\"]', 'Login', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', 0x323031382d30332d30372030383a30343a3035, 0x323031382d30332d30372030383a30343a3035, '', 0, 'http://localhost/wp/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, 0x323031382d30332d30372030373a30343a3436, 0x323031382d30332d30372030373a30343a3436, '[wppb-login]', 'Login', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', 0x323031382d30332d30372030373a30343a3436, 0x323031382d30332d30372030373a30343a3436, '', 56, 'http://localhost/wp/wordpress/2018/03/07/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, 0x323031382d30332d30372030373a30353a3331, 0x323031382d30332d30372030373a30353a3331, '[wppb-register]', 'Login', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', 0x323031382d30332d30372030373a30353a3331, 0x323031382d30332d30372030373a30353a3331, '', 56, 'http://localhost/wp/wordpress/2018/03/07/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, 0x323031382d30332d30372030373a30383a3532, 0x323031382d30332d30372030373a30383a3532, '[wppb-login redirect_url=\"http://localhost/wp/wordpress/?page_id=50&amp;preview=true\"]', 'Login', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', 0x323031382d30332d30372030373a30383a3532, 0x323031382d30332d30372030373a30383a3532, '', 56, 'http://localhost/wp/wordpress/2018/03/07/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, 0x323031382d30332d30372030373a31313a3332, 0x323031382d30332d30372030373a31313a3332, '[user_registration_form id=\"47\" redirect_url=\"http://localhost/wp/wordpress/?page_id=56&amp;preview=true\"]', 'Registration', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', 0x323031382d30332d30372030373a31313a3332, 0x323031382d30332d30372030373a31313a3332, '', 50, 'http://localhost/wp/wordpress/2018/03/07/50-revision-v1/', 0, 'revision', '', 0),
(61, 1, 0x323031382d30332d30372030373a31353a3433, 0x323031382d30332d30372030373a31353a3433, '[profilepress-login id=\"1\"]', 'Log In', '', 'trash', 'closed', 'closed', '', 'log-in__trashed', '', '', 0x323031382d30332d30372030383a30333a3532, 0x323031382d30332d30372030383a30333a3532, '', 0, 'http://localhost/wp/wordpress/log-in/', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES 
(62, 1, 0x323031382d30332d30372030373a31353a3434, 0x323031382d30332d30372030373a31353a3434, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'trash', 'closed', 'closed', '', 'sign-up__trashed', '', '', 0x323031382d30332d30372030373a35323a3331, 0x323031382d30332d30372030373a35323a3331, '', 0, 'http://localhost/wp/wordpress/sign-up/', 0, 'page', '', 0),
(63, 1, 0x323031382d30332d30372030373a31353a3531, 0x323031382d30332d30372030373a31353a3531, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'trash', 'closed', 'closed', '', 'reset-password__trashed', '', '', 0x323031382d30332d30372030373a35313a3534, 0x323031382d30332d30372030373a35313a3534, '', 0, 'http://localhost/wp/wordpress/reset-password/', 0, 'page', '', 0),
(64, 1, 0x323031382d30332d30372030373a31363a3133, 0x323031382d30332d30372030373a31363a3133, '[profilepress-login id=\"1\"]', 'Log In', '', 'trash', 'closed', 'closed', '', 'log-in-2__trashed', '', '', 0x323031382d30332d30372030383a30333a3536, 0x323031382d30332d30372030383a30333a3536, '', 0, 'http://localhost/wp/wordpress/log-in-2/', 0, 'page', '', 0),
(65, 1, 0x323031382d30332d30372030373a31363a3134, 0x323031382d30332d30372030373a31363a3134, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'trash', 'closed', 'closed', '', 'sign-up-2__trashed', '', '', 0x323031382d30332d30372030373a35323a3339, 0x323031382d30332d30372030373a35323a3339, '', 0, 'http://localhost/wp/wordpress/sign-up-2/', 0, 'page', '', 0),
(66, 1, 0x323031382d30332d30372030373a31363a3133, 0x323031382d30332d30372030373a31363a3133, '[profilepress-login id=\"1\"]', 'Log In', '', 'trash', 'closed', 'closed', '', 'log-in-3__trashed', '', '', 0x323031382d30332d30372030383a30343a3030, 0x323031382d30332d30372030383a30343a3030, '', 0, 'http://localhost/wp/wordpress/log-in-3/', 0, 'page', '', 0),
(67, 1, 0x323031382d30332d30372030373a31363a3135, 0x323031382d30332d30372030373a31363a3135, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'trash', 'closed', 'closed', '', 'reset-password-2__trashed', '', '', 0x323031382d30332d30372030373a35323a3133, 0x323031382d30332d30372030373a35323a3133, '', 0, 'http://localhost/wp/wordpress/reset-password-2/', 0, 'page', '', 0),
(68, 1, 0x323031382d30332d30372030373a31363a3135, 0x323031382d30332d30372030373a31363a3135, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'trash', 'closed', 'closed', '', 'sign-up-3__trashed', '', '', 0x323031382d30332d30372030373a35323a3335, 0x323031382d30332d30372030373a35323a3335, '', 0, 'http://localhost/wp/wordpress/sign-up-3/', 0, 'page', '', 0),
(69, 1, 0x323031382d30332d30372030373a31363a3138, 0x323031382d30332d30372030373a31363a3138, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'trash', 'closed', 'closed', '', 'reset-password-3__trashed', '', '', 0x323031382d30332d30372030373a35323a3233, 0x323031382d30332d30372030373a35323a3233, '', 0, 'http://localhost/wp/wordpress/reset-password-3/', 0, 'page', '', 0),
(70, 1, 0x323031382d30332d30372030373a31363a3234, 0x323031382d30332d30372030373a31363a3234, '[profilepress-login id=\"1\"]', 'Log In', '', 'trash', 'closed', 'closed', '', 'log-in-4__trashed', '', '', 0x323031382d30332d30372030383a30343a3032, 0x323031382d30332d30372030383a30343a3032, '', 0, 'http://localhost/wp/wordpress/log-in-4/', 0, 'page', '', 0),
(71, 1, 0x323031382d30332d30372030373a31363a3239, 0x323031382d30332d30372030373a31363a3239, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'trash', 'closed', 'closed', '', 'sign-up-4__trashed', '', '', 0x323031382d30332d30372030373a35323a3432, 0x323031382d30332d30372030373a35323a3432, '', 0, 'http://localhost/wp/wordpress/sign-up-4/', 0, 'page', '', 0),
(72, 1, 0x323031382d30332d30372030373a31363a3331, 0x323031382d30332d30372030373a31363a3331, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'trash', 'closed', 'closed', '', 'reset-password-4__trashed', '', '', 0x323031382d30332d30372030373a34393a3236, 0x323031382d30332d30372030373a34393a3236, '', 0, 'http://localhost/wp/wordpress/reset-password-4/', 0, 'page', '', 0),
(73, 1, 0x323031382d30332d30372030373a34383a3534, 0x323031382d30332d30372030373a34383a3534, '[profilepress-registration id=\"2\"]', 'register new', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', 0x323031382d30332d30372030373a34383a3534, 0x323031382d30332d30372030373a34383a3534, '', 0, 'http://localhost/wp/wordpress/?page_id=73', 0, 'page', '', 0),
(74, 1, 0x323031382d30332d30372030373a32343a3538, 0x323031382d30332d30372030373a32343a3538, '[profilepress-registration id=\"2\"]', 'register new', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', 0x323031382d30332d30372030373a32343a3538, 0x323031382d30332d30372030373a32343a3538, '', 73, 'http://localhost/wp/wordpress/2018/03/07/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, 0x323031382d30332d30372030373a32363a3436, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30372030373a32363a3436, 0x303030302d30302d30302030303a30303a3030, '', 0, '', 0, 'page', '', 0),
(76, 1, 0x323031382d30332d30372030373a32373a3032, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30372030373a32373a3032, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, 0x323031382d30332d30372030373a34393a3538, 0x323031382d30332d30372030373a34393a3538, '[profilepress-registration id=\"2\"]', 'register new', '', 'trash', 'closed', 'closed', '', '__trashed-3', '', '', 0x323031382d30332d30372030373a34393a3538, 0x323031382d30332d30372030373a34393a3538, '', 0, 'http://localhost/wp/wordpress/?page_id=77', 0, 'page', '', 0),
(78, 1, 0x323031382d30332d30372030373a34303a3036, 0x323031382d30332d30372030373a34303a3036, '[profilepress-registration id=\"2\"]', 'register new', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', 0x323031382d30332d30372030373a34303a3036, 0x323031382d30332d30372030373a34303a3036, '', 77, 'http://localhost/wp/wordpress/2018/03/07/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, 0x323031382d30332d30372030373a34373a3232, 0x323031382d30332d30372030373a34373a3232, '[theme-my-login]', 'Log In', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', 0x323031382d30332d30372030373a34373a3232, 0x323031382d30332d30372030373a34373a3232, '', 39, 'http://localhost/wp/wordpress/2018/03/07/39-revision-v1/', 0, 'revision', '', 0),
(80, 1, 0x323031382d30332d30372030373a34373a3237, 0x323031382d30332d30372030373a34373a3237, '[profilepress-login id=\"1\"]', 'Log In', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', 0x323031382d30332d30372030373a34373a3237, 0x323031382d30332d30372030373a34373a3237, '', 61, 'http://localhost/wp/wordpress/2018/03/07/61-revision-v1/', 0, 'revision', '', 0),
(81, 1, 0x323031382d30332d30372030373a34373a3335, 0x323031382d30332d30372030373a34373a3335, '[profilepress-login id=\"1\"]', 'Log In', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', 0x323031382d30332d30372030373a34373a3335, 0x323031382d30332d30372030373a34373a3335, '', 64, 'http://localhost/wp/wordpress/2018/03/07/64-revision-v1/', 0, 'revision', '', 0),
(82, 1, 0x323031382d30332d30372030373a34373a3335, 0x323031382d30332d30372030373a34373a3335, '[profilepress-login id=\"1\"]', 'Log In', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', 0x323031382d30332d30372030373a34373a3335, 0x323031382d30332d30372030373a34373a3335, '', 66, 'http://localhost/wp/wordpress/2018/03/07/66-revision-v1/', 0, 'revision', '', 0),
(83, 1, 0x323031382d30332d30372030373a34373a3531, 0x323031382d30332d30372030373a34373a3531, '[profilepress-login id=\"1\"]', 'Log In', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', 0x323031382d30332d30372030373a34373a3531, 0x323031382d30332d30372030373a34373a3531, '', 70, 'http://localhost/wp/wordpress/2018/03/07/70-revision-v1/', 0, 'revision', '', 0),
(84, 1, 0x323031382d30332d30372030373a34393a3039, 0x323031382d30332d30372030373a34393a3039, '[theme-my-login]', 'Log Out', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', 0x323031382d30332d30372030373a34393a3039, 0x323031382d30332d30372030373a34393a3039, '', 40, 'http://localhost/wp/wordpress/2018/03/07/40-revision-v1/', 0, 'revision', '', 0),
(85, 1, 0x323031382d30332d30372030373a34393a3236, 0x323031382d30332d30372030373a34393a3236, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', 0x323031382d30332d30372030373a34393a3236, 0x323031382d30332d30372030373a34393a3236, '', 72, 'http://localhost/wp/wordpress/2018/03/07/72-revision-v1/', 0, 'revision', '', 0),
(86, 1, 0x323031382d30332d30372030373a35303a3434, 0x323031382d30332d30372030373a35303a3434, '[theme-my-login]', 'Lost Password', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', 0x323031382d30332d30372030373a35303a3434, 0x323031382d30332d30372030373a35303a3434, '', 42, 'http://localhost/wp/wordpress/2018/03/07/42-revision-v1/', 0, 'revision', '', 0),
(87, 1, 0x323031382d30332d30372030373a35313a3134, 0x323031382d30332d30372030373a35313a3134, '[user_registration_form id=\"47\" ]\n\n&nbsp;', 'Registration', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', 0x323031382d30332d30372030373a35313a3134, 0x323031382d30332d30372030373a35313a3134, '', 50, 'http://localhost/wp/wordpress/2018/03/07/50-revision-v1/', 0, 'revision', '', 0),
(88, 1, 0x323031382d30332d30372030373a35313a3236, 0x323031382d30332d30372030373a35313a3236, '[theme-my-login]', 'Reset Password', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', 0x323031382d30332d30372030373a35313a3236, 0x323031382d30332d30372030373a35313a3236, '', 43, 'http://localhost/wp/wordpress/2018/03/07/43-revision-v1/', 0, 'revision', '', 0),
(89, 1, 0x323031382d30332d30372030373a35313a3534, 0x323031382d30332d30372030373a35313a3534, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', 0x323031382d30332d30372030373a35313a3534, 0x323031382d30332d30372030373a35313a3534, '', 63, 'http://localhost/wp/wordpress/2018/03/07/63-revision-v1/', 0, 'revision', '', 0),
(90, 1, 0x323031382d30332d30372030373a35323a3133, 0x323031382d30332d30372030373a35323a3133, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3133, 0x323031382d30332d30372030373a35323a3133, '', 67, 'http://localhost/wp/wordpress/2018/03/07/67-revision-v1/', 0, 'revision', '', 0),
(91, 1, 0x323031382d30332d30372030373a35323a3233, 0x323031382d30332d30372030373a35323a3233, '[profilepress-password-reset id=\"1\"]', 'Reset Password', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3233, 0x323031382d30332d30372030373a35323a3233, '', 69, 'http://localhost/wp/wordpress/2018/03/07/69-revision-v1/', 0, 'revision', '', 0),
(92, 1, 0x323031382d30332d30372030373a35323a3237, 0x323031382d30332d30372030373a35323a3237, 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3237, 0x323031382d30332d30372030373a35323a3237, '', 2, 'http://localhost/wp/wordpress/2018/03/07/2-revision-v1/', 0, 'revision', '', 0),
(93, 1, 0x323031382d30332d30372030373a35323a3331, 0x323031382d30332d30372030373a35323a3331, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3331, 0x323031382d30332d30372030373a35323a3331, '', 62, 'http://localhost/wp/wordpress/2018/03/07/62-revision-v1/', 0, 'revision', '', 0),
(94, 1, 0x323031382d30332d30372030373a35323a3335, 0x323031382d30332d30372030373a35323a3335, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3335, 0x323031382d30332d30372030373a35323a3335, '', 68, 'http://localhost/wp/wordpress/2018/03/07/68-revision-v1/', 0, 'revision', '', 0),
(95, 1, 0x323031382d30332d30372030373a35323a3339, 0x323031382d30332d30372030373a35323a3339, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3339, 0x323031382d30332d30372030373a35323a3339, '', 65, 'http://localhost/wp/wordpress/2018/03/07/65-revision-v1/', 0, 'revision', '', 0),
(96, 1, 0x323031382d30332d30372030373a35323a3432, 0x323031382d30332d30372030373a35323a3432, '[profilepress-registration id=\"1\"]', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', 0x323031382d30332d30372030373a35323a3432, 0x323031382d30332d30372030373a35323a3432, '', 71, 'http://localhost/wp/wordpress/2018/03/07/71-revision-v1/', 0, 'revision', '', 0),
(97, 1, 0x323031382d30332d30372030373a35333a3030, 0x323031382d30332d30372030373a35333a3030, '[profilepress-registration id=\"2\"]', 'Register', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', 0x323031382d30332d30372030373a35333a3030, 0x323031382d30332d30372030373a35333a3030, '', 77, 'http://localhost/wp/wordpress/2018/03/07/77-autosave-v1/', 0, 'revision', '', 0),
(98, 1, 0x323031382d30332d30372030373a35333a3432, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30372030373a35333a3432, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=98', 0, 'post', '', 0),
(99, 1, 0x323031382d30332d30372030373a35333a3436, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30372030373a35333a3436, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=99', 0, 'post', '', 0),
(100, 1, 0x323031382d30332d30372030383a31323a3532, 0x323031382d30332d30372030383a31323a3532, '[profilepress-registration id=\"2\"]', 'New Registration', '', 'trash', 'closed', 'closed', '', 'new-registration__trashed', '', '', 0x323031382d30332d30382030383a31383a3235, 0x323031382d30332d30382030383a31383a3235, '', 0, 'http://localhost/wp/wordpress/?page_id=100', 0, 'page', '', 0),
(101, 1, 0x323031382d30332d30372030373a35343a3332, 0x323031382d30332d30372030373a35343a3332, '[profilepress-registration id=\"2\"]', 'New Registration', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', 0x323031382d30332d30372030373a35343a3332, 0x323031382d30332d30372030373a35343a3332, '', 100, 'http://localhost/wp/wordpress/2018/03/07/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, 0x323031382d30332d30372030373a35353a3434, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30372030373a35353a3434, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=102', 0, 'page', '', 0),
(103, 1, 0x323031382d30332d30372030383a30343a3039, 0x323031382d30332d30372030383a30343a3039, '[profilepress-login id=\"1\"]', 'Login', '', 'trash', 'closed', 'closed', '', '__trashed-5', '', '', 0x323031382d30332d30372030383a30343a3039, 0x323031382d30332d30372030383a30343a3039, '', 0, 'http://localhost/wp/wordpress/?page_id=103', 0, 'page', '', 0),
(104, 1, 0x323031382d30332d30372030373a35363a3231, 0x323031382d30332d30372030373a35363a3231, '[profilepress-login id=\"1\"]', 'Login', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', 0x323031382d30332d30372030373a35363a3231, 0x323031382d30332d30372030373a35363a3231, '', 103, 'http://localhost/wp/wordpress/2018/03/07/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, 0x323031382d30332d30372030383a31333a3239, 0x323031382d30332d30372030383a31333a3239, '[profilepress-login id=\"2\"]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', 0x323031382d30332d30372030383a31333a3239, 0x323031382d30332d30372030383a31333a3239, '', 0, 'http://localhost/wp/wordpress/?page_id=105', 0, 'page', '', 0),
(106, 1, 0x323031382d30332d30372030383a30353a3236, 0x323031382d30332d30372030383a30353a3236, '[profilepress-login id=\"2\"]', 'Login', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', 0x323031382d30332d30372030383a30353a3236, 0x323031382d30332d30372030383a30353a3236, '', 105, 'http://localhost/wp/wordpress/2018/03/07/105-revision-v1/', 0, 'revision', '', 0),
(107, 4, 0x323031382d30332d30372031363a32303a3537, 0x323031382d30332d30372031363a32303a3537, '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed', '', '', 0x323031382d30332d30372031363a32303a3537, 0x323031382d30332d30372031363a32303a3537, '', 0, 'http://localhost/wp/wordpress/?p=107', 0, 'post', '', 0),
(108, 4, 0x323031382d30332d30372031363a32303a3538, 0x323031382d30332d30372031363a32303a3538, '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', 0x323031382d30332d30372031363a32303a3538, 0x323031382d30332d30372031363a32303a3538, '', 0, 'http://localhost/wp/wordpress/?p=108', 0, 'post', '', 0),
(109, 1, 0x323031382d30332d30372031333a34363a3132, 0x323031382d30332d30372031333a34363a3132, '', 'women', '', 'inherit', 'open', 'closed', '', 'women', '', '', 0x323031382d30332d30372031383a32343a3433, 0x323031382d30332d30372031383a32343a3433, '', 11, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/women.jpeg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, 0x323031382d30332d30372031333a34363a3133, 0x323031382d30332d30372031333a34363a3133, '', '123', '', 'inherit', 'open', 'closed', '', '123', '', '', 0x323031382d30332d30372031333a34363a3133, 0x323031382d30332d30372031333a34363a3133, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/123.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, 0x323031382d30332d30372031333a34363a3239, 0x323031382d30332d30372031333a34363a3239, '', 'cropped-women.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-women-jpeg', '', '', 0x323031382d30332d30372031383a33323a3230, 0x323031382d30332d30372031383a33323a3230, '', 8, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women.jpeg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, 0x323031382d30332d30372031343a30343a3039, 0x323031382d30332d30372031343a30343a3039, '<h2>Saral Aajivika</h2>\r\n<blockquote>\r\n<h4><em>ASpire. dream. realize.</em></h4>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30372031343a30343a3039, 0x323031382d30332d30372031343a30343a3039, '', 11, 'http://localhost/wp/wordpress/2018/03/07/11-revision-v1/', 0, 'revision', '', 0),
(116, 1, 0x323031382d30332d30372031343a30363a3033, 0x323031382d30332d30372031343a30363a3033, '<h2>Saral Aajivika</h2>\r\n<blockquote>\r\n<h4><em>ASpire. dream. realize.</em></h4>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself.', '', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30372031343a30363a3033, 0x323031382d30332d30372031343a30363a3033, '', 11, 'http://localhost/wp/wordpress/2018/03/07/11-revision-v1/', 0, 'revision', '', 0),
(117, 1, 0x323031382d30332d30372031343a34303a3331, 0x323031382d30332d30372031343a34303a3331, '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', 0x323031382d30332d30372031383a34303a3133, 0x323031382d30332d30372031383a34303a3133, '', 0, 'http://localhost/wp/wordpress/2018/03/07/home/', 1, 'nav_menu_item', '', 0),
(118, 1, 0x323031382d30332d30372031343a34323a3337, 0x323031382d30332d30372031343a34323a3337, '<h2>Saral Aajivika</h2>\r\n<blockquote>\r\n<h4><em>ASpire. dream. realize.</em></h4>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself.\r\n\r\n[profilepress-registration id=\"2\"]', '', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30372031343a34323a3337, 0x323031382d30332d30372031343a34323a3337, '', 11, 'http://localhost/wp/wordpress/2018/03/07/11-revision-v1/', 0, 'revision', '', 0),
(120, 1, 0x323031382d30332d30372031343a34333a3130, 0x323031382d30332d30372031343a34333a3130, '<h2>Saral Aajivika</h2>\r\n<blockquote>\r\n<h4><em>ASpire. dream. realize.</em></h4>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself. [profilepress-registration id=\"2\"]\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30372031343a34333a3130, 0x323031382d30332d30372031343a34333a3130, '', 11, 'http://localhost/wp/wordpress/2018/03/07/11-revision-v1/', 0, 'revision', '', 0),
(121, 5, 0x323031382d30332d30372031363a32313a3232, 0x323031382d30332d30372031363a32313a3232, '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed-3', '', '', 0x323031382d30332d30372031363a32313a3232, 0x323031382d30332d30372031363a32313a3232, '', 0, 'http://localhost/wp/wordpress/?p=121', 0, 'post', '', 0),
(122, 5, 0x323031382d30332d30372031363a32313a3233, 0x323031382d30332d30372031363a32313a3233, '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed-4', '', '', 0x323031382d30332d30372031363a32313a3233, 0x323031382d30332d30372031363a32313a3233, '', 0, 'http://localhost/wp/wordpress/?p=122', 0, 'post', '', 0),
(123, 5, 0x323031382d30332d30372031353a30353a3537, 0x323031382d30332d30372031353a30353a3537, '<img class=\"alignnone size-medium wp-image-6\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/02/coffee-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" />\r\n\r\n&nbsp;\r\n\r\nthis is it\r\n\r\nmy new and\r\n\r\nfinal', 'qwerty\'s post', '', 'trash', 'open', 'open', '', 'qwertys-post__trashed', '', '', 0x323031382d30332d30372031363a32313a3234, 0x323031382d30332d30372031363a32313a3234, '', 0, 'http://localhost/wp/wordpress/?p=123', 0, 'post', '', 0),
(125, 5, 0x323031382d30332d30372031353a32313a3130, 0x323031382d30332d30372031353a32313a3130, 'my new earrings', 'new earrings', '', 'trash', 'open', 'open', '', 'new-earrings__trashed', '', '', 0x323031382d30332d30372031363a32313a3235, 0x323031382d30332d30372031363a32313a3235, '', 0, 'http://localhost/wp/wordpress/?p=125', 0, 'post', '', 0),
(127, 6, 0x323031382d30332d30372031353a33343a3531, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30372031353a33343a3531, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=127', 0, 'post', '', 0),
(129, 1, 0x323031382d30332d30372031363a30353a3334, 0x323031382d30332d30372031363a30353a3334, 'my new earrings', 'new earrings', '', 'inherit', 'closed', 'closed', '', '125-autosave-v1', '', '', 0x323031382d30332d30372031363a30353a3334, 0x323031382d30332d30372031363a30353a3334, '', 125, 'http://localhost/wp/wordpress/2018/03/07/125-autosave-v1/', 0, 'revision', '', 0),
(130, 1, 0x323031382d30332d30372031363a30363a3138, 0x323031382d30332d30372031363a30363a3138, '<img class=\"alignnone size-medium wp-image-6\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/02/coffee-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" />\r\n\r\n&nbsp;\r\n\r\nthis is it\r\n\r\nmy new and\r\n\r\nfinal', 'qwerty\'s post', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', 0x323031382d30332d30372031363a30363a3138, 0x323031382d30332d30372031363a30363a3138, '', 123, 'http://localhost/wp/wordpress/2018/03/07/123-revision-v1/', 0, 'revision', '', 0),
(131, 1, 0x323031382d30332d30372031363a30373a3437, 0x323031382d30332d30372031363a30373a3437, '<img class=\"alignnone size-medium wp-image-6\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/02/coffee-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" />\r\n\r\n&nbsp;\r\n\r\nthis is it\r\n\r\nmy new and\r\n\r\nfinal', 'qwerty\'s post', '', 'inherit', 'closed', 'closed', '', '123-autosave-v1', '', '', 0x323031382d30332d30372031363a30373a3437, 0x323031382d30332d30372031363a30373a3437, '', 123, 'http://localhost/wp/wordpress/2018/03/07/123-autosave-v1/', 0, 'revision', '', 0),
(132, 1, 0x323031382d30332d30372031363a32303a3537, 0x323031382d30332d30372031363a32303a3537, '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', 0x323031382d30332d30372031363a32303a3537, 0x323031382d30332d30372031363a32303a3537, '', 107, 'http://localhost/wp/wordpress/2018/03/07/107-revision-v1/', 0, 'revision', '', 0),
(133, 1, 0x323031382d30332d30372031363a32303a3538, 0x323031382d30332d30372031363a32303a3538, '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', 0x323031382d30332d30372031363a32303a3538, 0x323031382d30332d30372031363a32303a3538, '', 108, 'http://localhost/wp/wordpress/2018/03/07/108-revision-v1/', 0, 'revision', '', 0),
(134, 1, 0x323031382d30332d30372031363a32313a3232, 0x323031382d30332d30372031363a32313a3232, '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', 0x323031382d30332d30372031363a32313a3232, 0x323031382d30332d30372031363a32313a3232, '', 121, 'http://localhost/wp/wordpress/2018/03/07/121-revision-v1/', 0, 'revision', '', 0),
(135, 1, 0x323031382d30332d30372031363a32313a3233, 0x323031382d30332d30372031363a32313a3233, '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', 0x323031382d30332d30372031363a32313a3233, 0x323031382d30332d30372031363a32313a3233, '', 122, 'http://localhost/wp/wordpress/2018/03/07/122-revision-v1/', 0, 'revision', '', 0),
(137, 1, 0x323031382d30332d30372031373a33383a3135, 0x323031382d30332d30372031373a33383a3135, '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', 0x323031382d30332d30372031373a33383a3135, 0x323031382d30332d30372031373a33383a3135, '', 0, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, 0x323031382d30332d30372031373a35393a3135, 0x323031382d30332d30372031373a35393a3135, '&nbsp;\r\n<h5><strong>This is a dynamic website for women to provide you with a platform to display your</strong>\r\n<strong>work and get recognition. We provide  you a market to sell your products.</strong></h5>\r\n<h4>ADVANTAGES OF SARAL AAJIVIKA:</h4>\r\n1. We have no hardware requirements except a computer and an internet connection.\r\n2.You can work from your homes, become financially independent.\r\n3. With the help of this website, you can promote your countries’ handmade craft which is\r\nnot as popular as it should be.\r\n4. Widows and women in old-age homes and NGOs could use their skills to earn money.\r\n5. Girls can work part-time without compromising on their education and earning money at the\r\nsame time.', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', 0x323031382d30332d30372031373a35393a3135, 0x323031382d30332d30372031373a35393a3135, '', 8, 'http://localhost/wp/wordpress/2018/03/07/8-revision-v1/', 0, 'revision', '', 0),
(141, 1, 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '', 0, 'http://localhost/wp/wordpress/shop/', 0, 'page', '', 0),
(142, 1, 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '', 0, 'http://localhost/wp/wordpress/cart/', 0, 'page', '', 0),
(143, 1, 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', 0x323031382d30332d30372031383a30373a3336, 0x323031382d30332d30372031383a30373a3336, '', 0, 'http://localhost/wp/wordpress/checkout/', 0, 'page', '', 0),
(144, 1, 0x323031382d30332d30372031383a30373a3337, 0x323031382d30332d30372031383a30373a3337, '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', 0x323031382d30332d30372031383a30373a3337, 0x323031382d30332d30372031383a30373a3337, '', 0, 'http://localhost/wp/wordpress/my-account/', 0, 'page', '', 0),
(145, 1, 0x323031382d30332d30372031383a31363a3235, 0x323031382d30332d30372031383a31363a3235, 'Bright, colourful, handmade, ethnic Handbag.\r\n\r\nSize: Standard\r\n\r\nMaterial: Cotton\r\n\r\nStrap style: Single Strap', 'Handbag', 'Ethnic Handbag For Everyone.', 'publish', 'open', 'closed', '', 'handbag', '', '', 0x323031382d30332d30372031383a32313a3535, 0x323031382d30332d30372031383a32313a3535, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, 0x323031382d30332d30372031383a31343a3332, 0x323031382d30332d30372031383a31343a3332, '', '61Hf9Ku2RgL', '', 'inherit', 'open', 'closed', '', '61hf9ku2rgl', '', '', 0x323031382d30332d30372031383a31343a3332, 0x323031382d30332d30372031383a31343a3332, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/61Hf9Ku2RgL.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, 0x323031382d30332d30372031383a31343a3334, 0x323031382d30332d30372031383a31343a3334, '', 'medium1.2915977.2', '', 'inherit', 'open', 'closed', '', 'medium1-2915977-2', '', '', 0x323031382d30332d30372031383a31343a3334, 0x323031382d30332d30372031383a31343a3334, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/medium1.2915977.2.png', 0, 'attachment', 'image/png', 0),
(148, 1, 0x323031382d30332d30372031383a31343a3335, 0x323031382d30332d30372031383a31343a3335, '', 'Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small', '', 'inherit', 'open', 'closed', '', 'brand-original-thailand-style-embroidery-handmade-cloth-handbag-vintage-canvas-shoulder-messenger-bags-ethnic-casual-small', '', '', 0x323031382d30332d30372031383a31343a3335, 0x323031382d30332d30372031383a31343a3335, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/Brand-original-Thailand-style-embroidery-handmade-cloth-handbag-Vintage-canvas-Shoulder-Messenger-Bags-Ethnic-casual-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, 0x323031382d30332d30372031383a31343a3336, 0x323031382d30332d30372031383a31343a3336, '', '20028978_1', '', 'inherit', 'open', 'closed', '', '20028978_1', '', '', 0x323031382d30332d30372031383a31343a3336, 0x323031382d30332d30372031383a31343a3336, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/20028978_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, 0x323031382d30332d30372031383a31343a3337, 0x323031382d30332d30372031383a31343a3337, '', 'OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90', '', 'inherit', 'open', 'closed', '', 'outad-1-pair-cute-comfortable-infants-toddlers-baby-soft-crochet-knit-crib-shoes-walk-socks-top-jpg_640x640q90', '', '', 0x323031382d30332d30372031383a31343a3337, 0x323031382d30332d30372031383a31343a3337, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, 0x323031382d30332d30372031383a31343a3339, 0x323031382d30332d30372031383a31343a3339, '', '1403-2', '', 'inherit', 'open', 'closed', '', '1403-2', '', '', 0x323031382d30332d30372031383a31343a3339, 0x323031382d30332d30372031383a31343a3339, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/1403-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, 0x323031382d30332d30372031383a31343a3430, 0x323031382d30332d30372031383a31343a3430, '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1-2', '', '', 0x323031382d30332d30372031383a31343a3430, 0x323031382d30332d30372031383a31343a3430, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, 0x323031382d30332d30372031383a31343a3431, 0x323031382d30332d30372031383a31343a3431, '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', 0x323031382d30332d30372031383a31343a3431, 0x323031382d30332d30372031383a31343a3431, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, 0x323031382d30332d30372031383a31343a3432, 0x323031382d30332d30372031383a31343a3432, '', 'Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2', '', 'inherit', 'open', 'closed', '', 'styleincraft-known-4-handicraft-and-handmade-items-manufactures_2', '', '', 0x323031382d30332d30372031383a31343a3432, 0x323031382d30332d30372031383a31343a3432, '', 145, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/Styleincraft-Known-4-Handicraft-and-Handmade-Items-Manufactures_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, 0x323031382d30332d30372031383a32323a3431, 0x323031382d30332d30372031383a32323a3431, '{\n    \"twentysixteen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:22:41\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:22:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c78339b3-a9c1-477a-91e2-3f051e9a71b8', '', '', 0x323031382d30332d30372031383a32323a3431, 0x323031382d30332d30372031383a32323a3431, '', 0, 'http://localhost/wp/wordpress/2018/03/07/c78339b3-a9c1-477a-91e2-3f051e9a71b8/', 0, 'customize_changeset', '', 0),
(158, 1, 0x323031382d30332d30372031383a32353a3038, 0x323031382d30332d30372031383a32353a3038, '<h2><img class=\"alignnone  wp-image-109\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/women-300x154.jpeg\" alt=\"\" width=\"676\" height=\"347\" /></h2>\r\n<h2>Saral Aajivika</h2>\r\n<blockquote>\r\n<h4><em>ASpire. dream. realize.</em></h4>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself. [profilepress-registration id=\"2\"]\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30372031383a32353a3038, 0x323031382d30332d30372031383a32353a3038, '', 11, 'http://localhost/wp/wordpress/2018/03/07/11-revision-v1/', 0, 'revision', '', 0),
(160, 1, 0x323031382d30332d30372031383a32363a3533, 0x323031382d30332d30372031383a32363a3533, '<em>Website</em> :\r\n\r\n<em>Email us at</em>: niska301@gmail.com', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', 0x323031382d30332d30372031383a32363a3533, 0x323031382d30332d30372031383a32363a3533, '', 9, 'http://localhost/wp/wordpress/2018/03/07/9-revision-v1/', 0, 'revision', '', 0),
(161, 1, 0x323031382d30332d30372031383a33313a3437, 0x323031382d30332d30372031383a33313a3437, '<h5><strong>This is a dynamic website for women to provide you with a platform to display your</strong>\r\n<strong>work and get recognition. We provide  you a market to sell your products.</strong></h5>\r\n<ul>\r\n 	<li>We believe every woman is special.</li>\r\n 	<li>We are here to make your dreams come true.</li>\r\n 	<li>We will help you, support you and guide you.</li>\r\n</ul>\r\n<h2><strong>All you need to do is show us your <em>handicrafts</em>!!</strong></h2>', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', 0x323031382d30332d30372031383a33313a3437, 0x323031382d30332d30372031383a33313a3437, '', 8, 'http://localhost/wp/wordpress/2018/03/07/8-revision-v1/', 0, 'revision', '', 0),
(162, 1, 0x323031382d30332d30372031383a33323a3436, 0x323031382d30332d30372031383a33323a3436, '<h5><strong><img class=\"aligncenter wp-image-111\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women-300x70.jpeg\" alt=\"\" width=\"647\" height=\"151\" /></strong></h5>\r\n<h5><strong>This is a dynamic website for women to provide you with a platform to display your</strong>\r\n<strong>work and get recognition. We provide  you a market to sell your products.</strong></h5>\r\n<ul>\r\n 	<li>We believe every woman is special.</li>\r\n 	<li>We are here to make your dreams come true.</li>\r\n 	<li>We will help you, support you and guide you.</li>\r\n</ul>\r\n<h2><strong>All you need to do is show us your <em>handicrafts</em>!!</strong></h2>', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', 0x323031382d30332d30372031383a33323a3436, 0x323031382d30332d30372031383a33323a3436, '', 8, 'http://localhost/wp/wordpress/2018/03/07/8-revision-v1/', 0, 'revision', '', 0),
(164, 1, 0x323031382d30332d30372031383a33333a3134, 0x323031382d30332d30372031383a33333a3134, '<h5><strong><img class=\"aligncenter wp-image-111\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/cropped-women-300x70.jpeg\" alt=\"\" width=\"647\" height=\"151\" /></strong></h5>\r\n<h5><strong>This is a dynamic website for women to provide you with a platform to display your</strong>\r\n<strong>work and get recognition. We provide  you a market to sell your products.</strong></h5>\r\n<ul>\r\n 	<li>We believe every woman is special.</li>\r\n 	<li>We are here to make your dreams come true.</li>\r\n 	<li>We will help you, support you and guide you.</li>\r\n</ul>\r\n<h2><strong>All you need to do is show us your <em>handicrafts</em>!!</strong></h2>', 'About us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', 0x323031382d30332d30372031383a33333a3134, 0x323031382d30332d30372031383a33333a3134, '', 8, 'http://localhost/wp/wordpress/2018/03/07/8-revision-v1/', 0, 'revision', '', 0),
(166, 1, 0x323031382d30332d30372031383a33343a3536, 0x323031382d30332d30372031383a33343a3536, '', 'envelope', '', 'inherit', 'open', 'closed', '', 'envelope', '', '', 0x323031382d30332d30372031383a33343a3536, 0x323031382d30332d30372031383a33343a3536, '', 9, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png', 0, 'attachment', 'image/png', 0),
(168, 1, 0x323031382d30332d30372031383a33363a3135, 0x323031382d30332d30372031383a33363a3135, '', 'website', '', 'inherit', 'open', 'closed', '', 'website', '', '', 0x323031382d30332d30372031383a33363a3135, 0x323031382d30332d30372031383a33363a3135, '', 9, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/website.png', 0, 'attachment', 'image/png', 0),
(169, 1, 0x323031382d30332d30372031383a33373a3039, 0x323031382d30332d30372031383a33373a3039, '<em><img class=\"alignnone  wp-image-168\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/website-300x300.png\" alt=\"\" width=\"60\" height=\"60\" />   Website :</em>\r\n\r\n<em><img class=\"alignnone  wp-image-166\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png\" alt=\"\" width=\"63\" height=\"63\" /></em><em>Email us at</em>: niska301@gmail.com', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', 0x323031382d30332d30372031383a33373a3039, 0x323031382d30332d30372031383a33373a3039, '', 9, 'http://localhost/wp/wordpress/2018/03/07/9-revision-v1/', 0, 'revision', '', 0),
(170, 1, 0x323031382d30332d30372031383a33373a3332, 0x323031382d30332d30372031383a33373a3332, '<em><img class=\"alignnone wp-image-168\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/website-300x300.png\" alt=\"\" width=\"60\" height=\"60\" />   Website :</em>\r\n\r\n<em><img class=\"alignnone wp-image-166\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png\" alt=\"\" width=\"63\" height=\"63\" /></em><em>Email us at</em>: niska301@gmail.com', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', 0x323031382d30332d30372031383a33373a3332, 0x323031382d30332d30372031383a33373a3332, '', 9, 'http://localhost/wp/wordpress/2018/03/07/9-revision-v1/', 0, 'revision', '', 0),
(171, 1, 0x323031382d30332d30372031383a33383a3437, 0x323031382d30332d30372031383a33383a3437, '{\n    \"blogdescription\": {\n        \"value\": \"From Dreams To Reality\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:38:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43894b1e-32c4-4cd4-8e46-b581b305e678', '', '', 0x323031382d30332d30372031383a33383a3437, 0x323031382d30332d30372031383a33383a3437, '', 0, 'http://localhost/wp/wordpress/2018/03/07/43894b1e-32c4-4cd4-8e46-b581b305e678/', 0, 'customize_changeset', '', 0),
(172, 1, 0x323031382d30332d30372031383a34303a3132, 0x323031382d30332d30372031383a34303a3132, '{\n    \"blogdescription\": {\n        \"value\": \"From Dreams To Reality\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:39:22\"\n    },\n    \"nav_menu_item[117]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 117,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wp/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:40:12\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wp/wordpress/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:40:12\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wp/wordpress/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"user_registration_form id47\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"About us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:40:12\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wp/wordpress/contact/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:40:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ee2eeef-46de-4b0d-ba08-f1a50cd19c75', '', '', 0x323031382d30332d30372031383a34303a3132, 0x323031382d30332d30372031383a34303a3132, '', 0, 'http://localhost/wp/wordpress/?p=172', 0, 'customize_changeset', '', 0),
(173, 1, 0x323031382d30332d30372031383a34313a3135, 0x323031382d30332d30372031383a34313a3135, '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:41:15\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:41:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d54c8d9-9b3f-4efa-9726-ab0da6211f21', '', '', 0x323031382d30332d30372031383a34313a3135, 0x323031382d30332d30372031383a34313a3135, '', 0, 'http://localhost/wp/wordpress/2018/03/07/9d54c8d9-9b3f-4efa-9726-ab0da6211f21/', 0, 'customize_changeset', '', 0),
(174, 1, 0x323031382d30332d30372031383a34353a3336, 0x323031382d30332d30372031383a34353a3336, '{\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNDE6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPg0KRGVocmFkdW4sSW5kaWENCg0KPHN0cm9uZz5Ib3Vyczwvc3Ryb25nPg0KTW9uZGF54oCURnJpZGF5OiA5OjAwQU3igJM1OjAwUE0NClNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTeKAkzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"01b22c1d1d0d2f32a71b0a2946c87b57\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:42:23\"\n    },\n    \"widget_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4ODoiV2UgYWltIHRvIHByb3ZpZGUgeW91IGJlc3QgbWFya2V0IGFuZCBoZWxwIHlvdSBpbiBwcm9tb3RpbmcgeW91IHRhbGVudCBhY3Jvc3MgdGhlIHdvcmxkLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5708fa8209a7e71f380c3e11192d09b0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:44:23\"\n    },\n    \"woocommerce_demo_store\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:45:26\"\n    },\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"uncropped\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 18:45:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cbe5ec62-46ea-4ccb-b7ce-56f005494301', '', '', 0x323031382d30332d30372031383a34353a3336, 0x323031382d30332d30372031383a34353a3336, '', 0, 'http://localhost/wp/wordpress/?p=174', 0, 'customize_changeset', '', 0),
(176, 6, 0x323031382d30332d30372031393a32313a3032, 0x303030302d30302d30302030303a30303a3030, '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', 0x323031382d30332d30372031393a32313a3032, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?post_type=product&p=176', 0, 'product', '', 0),
(177, 6, 0x323031382d30332d30382030333a32383a3135, 0x323031382d30332d30382030333a32383a3135, 'Thailand style embroidery handmade cloth handbag.\r\n<ul>\r\n 	<li>Type:<span class=\"des-wrap\">Cross Body  </span><span class=\"des-wrap\">  </span></li>\r\n 	<li>Closure Type:<span class=\"des-wrap\">Zipper  </span></li>\r\n 	<li>Lining Material:<span class=\"des-wrap\">Canvas  </span></li>\r\n 	<li>Strap Type:<span class=\"des-wrap\">Single  </span></li>\r\n 	<li>Style:<span class=\"des-wrap\">Vintage  </span></li>\r\n 	<li>Interior:<span class=\"des-wrap\">Cell Phone Pocket,Interior Zipper Pocket  </span></li>\r\n 	<li>Decoration:<span class=\"des-wrap\">Embroidery  </span></li>\r\n 	<li>Popular element:<span class=\"des-wrap\">Embroidery  </span><span class=\"des-wrap\"> </span></li>\r\n 	<li>Size:<span class=\"des-wrap\">35*19cm  </span></li>\r\n</ul>', 'Cloth Handbag', 'Ethnic casual small handbag.', 'publish', 'open', 'closed', '', 'cloth-handbag', '', '', 0x323031382d30332d30382030333a32383a3135, 0x323031382d30332d30382030333a32383a3135, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=177', 0, 'product', '', 0),
(178, 6, 0x323031382d30332d30382030333a32303a3233, 0x323031382d30332d30382030333a32303a3233, '', '61Hf9Ku2RgL', '', 'inherit', 'open', 'closed', '', '61hf9ku2rgl-2', '', '', 0x323031382d30332d30382030333a32303a3233, 0x323031382d30332d30382030333a32303a3233, '', 177, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/61Hf9Ku2RgL-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES 
(179, 6, 0x323031382d30332d30382030333a32303a3235, 0x323031382d30332d30382030333a32303a3235, '', 'bag', '', 'inherit', 'open', 'closed', '', 'bag', '', '', 0x323031382d30332d30382030333a32303a3235, 0x323031382d30332d30382030333a32303a3235, '', 177, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/bag.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 6, 0x323031382d30332d30382030333a34313a3535, 0x323031382d30332d30382030333a34313a3535, '<ul>\r\n 	<li><b>Material</b>: Silk Thread – Handmade work</li>\r\n 	<li><b>Jewelry Type: </b>Silk Thread Jewelry Set</li>\r\n 	<li><b>Contents: </b>Necklace, Earrings and Bangles Set</li>\r\n 	<li class=\"w180 text-15\"><strong>Stone Type: </strong>Artificial</li>\r\n</ul>', 'Silk Jewellery Set', '<h6><strong>Silk Thread Jewelry Set</strong></h6>', 'publish', 'open', 'closed', '', 'silk-jewellery-set', '', '', 0x323031382d30332d30382030333a34313a3535, 0x323031382d30332d30382030333a34313a3535, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=180', 0, 'product', '', 0),
(181, 7, 0x323031382d30332d30382030333a34343a3234, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30382030333a34343a3234, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=181', 0, 'post', '', 0),
(182, 10, 0x323031382d30332d30382030333a35323a3431, 0x303030302d30302d30302030303a30303a3030, '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', 0x323031382d30332d30382030333a35323a3431, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?post_type=product&p=182', 0, 'product', '', 0),
(183, 1, 0x323031382d30332d30382030343a31313a3334, 0x323031382d30332d30382030343a31313a3334, '{\n    \"nav_menu_item[24]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 04:11:34\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wp/wordpress/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"user_registration_form id47\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"About us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 04:11:34\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wp/wordpress/contact/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 04:11:34\"\n    },\n    \"nav_menu_item[-1986054530]\": {\n        \"value\": {\n            \"object_id\": 141,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Shop\",\n            \"url\": \"http://localhost/wp/wordpress/shop/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Shop\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 04:11:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0b2c0d01-8780-44c5-b9c4-76bca13c5a99', '', '', 0x323031382d30332d30382030343a31313a3334, 0x323031382d30332d30382030343a31313a3334, '', 0, 'http://localhost/wp/wordpress/2018/03/08/0b2c0d01-8780-44c5-b9c4-76bca13c5a99/', 0, 'customize_changeset', '', 0),
(184, 1, 0x323031382d30332d30382030343a31313a3336, 0x323031382d30332d30382030343a31313a3336, ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', 0x323031382d30332d30382030343a31313a3336, 0x323031382d30332d30382030343a31313a3336, '', 0, 'http://localhost/wp/wordpress/2018/03/08/184/', 2, 'nav_menu_item', '', 0),
(185, 10, 0x323031382d30332d30382030343a32313a3435, 0x323031382d30332d30382030343a32313a3435, '<h5>Baby Boy Cotton Handmade Sweater Pullover</h5>\r\n<ul>\r\n 	<li>Easy to put on and pull off</li>\r\n 	<li>machine washable</li>\r\n 	<li>made from natural bamboo cotton</li>\r\n 	<li> fabric is soft comfortable and breathable.</li>\r\n</ul>', 'Cotton Pullover for boys', 'Baby Boy Cotton Handmade Sweater Pullover', 'publish', 'open', 'closed', '', 'cotton-pullover-for-boys', '', '', 0x323031382d30332d30382030343a32313a3435, 0x323031382d30332d30382030343a32313a3435, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=185', 0, 'product', '', 0),
(186, 10, 0x323031382d30332d30382030343a31363a3037, 0x323031382d30332d30382030343a31363a3037, '', 'OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top.jpg_640x640q90', '', 'inherit', 'open', 'closed', '', 'outad-1-pair-cute-comfortable-infants-toddlers-baby-soft-crochet-knit-crib-shoes-walk-socks-top-jpg_640x640q90-2', '', '', 0x323031382d30332d30382030343a31363a3037, 0x323031382d30332d30382030343a31363a3037, '', 185, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/OUTAD-1-Pair-Cute-Comfortable-Infants-Toddlers-Baby-Soft-Crochet-Knit-Crib-Shoes-Walk-Socks-Top-1.jpg_640x640q90-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 10, 0x323031382d30332d30382030343a31363a3038, 0x323031382d30332d30382030343a31363a3038, '', '1403-2', '', 'inherit', 'open', 'closed', '', '1403-2-2', '', '', 0x323031382d30332d30382030343a31363a3038, 0x323031382d30332d30382030343a31363a3038, '', 185, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/1403-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 10, 0x323031382d30332d30382030343a32323a3032, 0x323031382d30332d30382030343a32323a3032, '<h5>Baby Boy Cotton Handmade Sweater Pullover</h5>\r\n<ul>\r\n 	<li>Easy to put on and pull off</li>\r\n 	<li>machine washable</li>\r\n 	<li>made from natural bamboo cotton</li>\r\n 	<li> fabric is soft comfortable and breathable.</li>\r\n</ul>', 'Cotton Pullover for boys', 'Baby Boy Cotton Handmade Sweater Pullover', 'inherit', 'closed', 'closed', '', '185-autosave-v1', '', '', 0x323031382d30332d30382030343a32323a3032, 0x323031382d30332d30382030343a32323a3032, '', 185, 'http://localhost/wp/wordpress/2018/03/08/185-autosave-v1/', 0, 'revision', '', 0),
(189, 10, 0x323031382d30332d30382030343a33303a3437, 0x323031382d30332d30382030343a33303a3437, '<ul>\r\n 	<li>Pretty and fashionable socks/shoes for your little one.</li>\r\n 	<li>Unique design</li>\r\n 	<li>Type - Baby Socks</li>\r\n 	<li>Fit - Regular</li>\r\n</ul>\r\n<strong>Items Included in Package</strong>: 1 Pair of Socks', 'Toddler\'s Shoes', 'Baby\'s soft crochet knit crib shoes/socks', 'publish', 'open', 'closed', '', 'toddlers-shoes', '', '', 0x323031382d30332d30382030343a33313a3535, 0x323031382d30332d30382030343a33313a3535, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=189', 0, 'product', '', 0),
(190, 10, 0x323031382d30332d30382030343a32333a3430, 0x323031382d30332d30382030343a32333a3430, '', 'shoes', '', 'inherit', 'open', 'closed', '', 'shoes', '', '', 0x323031382d30332d30382030343a32333a3430, 0x323031382d30332d30382030343a32333a3430, '', 189, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/shoes.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 10, 0x323031382d30332d30382030343a33313a3037, 0x323031382d30332d30382030343a33313a3037, '<ul>\r\n 	<li>Pretty and fashionable socks-cum-shoes for your little one.</li>\r\n 	<li>Unique design</li>\r\n 	<li>Type - Baby Socks</li>\r\n 	<li>Fit - Regular</li>\r\n</ul>\r\n<strong>Items Included in Package</strong>: 1 Pair of Socks', 'Toddler\'s Shoes', 'Baby\'s soft crochet knit crib shoes/socks', 'inherit', 'closed', 'closed', '', '189-autosave-v1', '', '', 0x323031382d30332d30382030343a33313a3037, 0x323031382d30332d30382030343a33313a3037, '', 189, 'http://localhost/wp/wordpress/2018/03/08/189-autosave-v1/', 0, 'revision', '', 0),
(192, 12, 0x323031382d30332d30382030343a34323a3431, 0x323031382d30332d30382030343a34323a3431, 'Add elegant style to your seating area with this beautifully painted cushion cover. Intricately designed, this decorative cushion cover is crafted from cotton fabric.  A creative blend of textures and tones, this cushion cover adds a focal point to any seat\r\n<ul>\r\n 	<li>Fabric: Cotton</li>\r\n 	<li>Pattern : Hand-woven</li>\r\n</ul>', 'Cushion Cover', '<h6>Cotton Hand-woven Cushion Cover</h6>', 'publish', 'open', 'closed', '', 'cushion-cover', '', '', 0x323031382d30332d30382030343a34363a3135, 0x323031382d30332d30382030343a34363a3135, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=192', 0, 'product', '', 0),
(193, 12, 0x323031382d30332d30382030343a33333a3035, 0x323031382d30332d30382030343a33333a3035, '', 'medium1.2915977.2', '', 'inherit', 'open', 'closed', '', 'medium1-2915977-2-2', '', '', 0x323031382d30332d30382030343a33333a3035, 0x323031382d30332d30382030343a33333a3035, '', 192, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/medium1.2915977.2-1.png', 0, 'attachment', 'image/png', 0),
(194, 12, 0x323031382d30332d30382030343a33333a3036, 0x323031382d30332d30382030343a33333a3036, '', '20028978_1', '', 'inherit', 'open', 'closed', '', '20028978_1-2', '', '', 0x323031382d30332d30382030343a33333a3036, 0x323031382d30332d30382030343a33333a3036, '', 192, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/20028978_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 12, 0x323031382d30332d30382030343a34333a3531, 0x323031382d30332d30382030343a34333a3531, 'Add elegant style to your seating area with this beautifully painted cushion cover. Intricately designed, this decorative cushion cover is crafted from cotton fabric.  A creative blend of textures and tones, this cushion cover adds a focal point to any seat\n<ul>\n 	<li>Fabric: Cotton</li>\n 	<li>Pattern : Woven</li>\n</ul>', 'Cushion Cover', '<h6>Cotton Hand-woven Cushion Cover</h6>', 'inherit', 'closed', 'closed', '', '192-autosave-v1', '', '', 0x323031382d30332d30382030343a34333a3531, 0x323031382d30332d30382030343a34333a3531, '', 192, 'http://localhost/wp/wordpress/2018/03/08/192-autosave-v1/', 0, 'revision', '', 0),
(196, 12, 0x323031382d30332d30382030353a30323a3131, 0x323031382d30332d30382030353a30323a3131, 'Silk thread Earrings\r\n\r\nBright, attractive Jewellery', 'Earrings', 'Silk thread Earring', 'publish', 'open', 'closed', '', 'earrings', '', '', 0x323031382d30332d30382030353a30323a3131, 0x323031382d30332d30382030353a30323a3131, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=196', 0, 'product', '', 0),
(197, 12, 0x323031382d30332d30382030353a30323a3236, 0x303030302d30302d30302030303a30303a3030, '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', 0x323031382d30332d30382030353a30323a3236, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?post_type=product&p=197', 0, 'product', '', 0),
(198, 9, 0x323031382d30332d30382030353a31363a3338, 0x323031382d30332d30382030353a31363a3338, 'Cotton Sanitary Pads\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Unique Designs.</span></li>\r\n 	<li><span class=\"a-list-item\">9 to 11.5 inches long.</span></li>\r\n 	<li><span class=\"a-list-item\">Reusable, Super Eco-friendly &amp; handmade pads</span></li>\r\n 	<li><span class=\"a-list-item\">Clasps/buttons made of coconut shell/wood.</span></li>\r\n 	<li><span class=\"a-list-item\">Hand wash and air dry recommended. </span></li>\r\n</ul>', 'Handmade Sanitary Pads', 'Reusable, cotton sanitary pads.', 'publish', 'open', 'closed', '', 'handmade-sanitary-pads', '', '', 0x323031382d30332d30382030353a31363a3338, 0x323031382d30332d30382030353a31363a3338, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=198', 0, 'product', '', 0),
(199, 9, 0x323031382d30332d30382030353a31313a3538, 0x323031382d30332d30382030353a31313a3538, '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1-3', '', '', 0x323031382d30332d30382030353a31313a3538, 0x323031382d30332d30382030353a31313a3538, '', 198, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 9, 0x323031382d30332d30382030353a31313a3539, 0x323031382d30332d30382030353a31313a3539, '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', 0x323031382d30332d30382030353a31313a3539, 0x323031382d30332d30382030353a31313a3539, '', 198, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 9, 0x323031382d30332d30382030353a31373a3133, 0x323031382d30332d30382030353a31373a3133, 'Cotton Sanitary Pads\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Unique Designs.</span></li>\r\n 	<li><span class=\"a-list-item\">9 to 11.5 inches long.</span></li>\r\n 	<li><span class=\"a-list-item\">Reusable, Super Eco-friendly &amp; handmade pads</span></li>\r\n 	<li><span class=\"a-list-item\">Clasps/buttons made of coconut shell/wood.</span></li>\r\n 	<li><span class=\"a-list-item\">Hand wash and air dry recommended. </span></li>\r\n</ul>', 'Handmade Sanitary Pads', 'Reusable, cotton sanitary pads.', 'inherit', 'closed', 'closed', '', '198-autosave-v1', '', '', 0x323031382d30332d30382030353a31373a3133, 0x323031382d30332d30382030353a31373a3133, '', 198, 'http://localhost/wp/wordpress/2018/03/08/198-autosave-v1/', 0, 'revision', '', 0),
(202, 9, 0x323031382d30332d30382030353a34363a3330, 0x323031382d30332d30382030353a34363a3330, '<ul>\r\n 	<li>Lining Material: Canvas</li>\r\n 	<li>Type: Casual Tote</li>\r\n 	<li>Interior: Cell phone pocket</li>\r\n 	<li>Closure Type: Open</li>\r\n 	<li>Usage: Versatile</li>\r\n</ul>', 'Shoulder Bag', 'Casual shoulder bag. Easy to carry.', 'publish', 'open', 'closed', '', 'shoulder-bag', '', '', 0x323031382d30332d30382030353a34363a3330, 0x323031382d30332d30382030353a34363a3330, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=202', 0, 'product', '', 0),
(203, 9, 0x323031382d30332d30382030353a34363a3537, 0x303030302d30302d30302030303a30303a3030, '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', 0x323031382d30332d30382030353a34363a3537, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?post_type=product&p=203', 0, 'product', '', 0),
(204, 7, 0x323031382d30332d30382030353a35363a3531, 0x323031382d30332d30382030353a35363a3531, 'White and deep purple crocheted flowers woven in a beautiful intricate style.', 'Women\'s Scarf', 'Crocheted Scarf.\r\n\r\nMust have for every women.', 'publish', 'open', 'closed', '', 'womens-scarf', '', '', 0x323031382d30332d30382030363a33363a3233, 0x323031382d30332d30382030363a33363a3233, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=204', 0, 'product', '', 0),
(205, 7, 0x323031382d30332d30382030353a35333a3232, 0x323031382d30332d30382030353a35333a3232, '', 'scarf', '', 'inherit', 'open', 'closed', '', 'scarf', '', '', 0x323031382d30332d30382030353a35333a3232, 0x323031382d30332d30382030353a35333a3232, '', 204, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/scarf.jpg', 0, 'attachment', 'image/jpeg', 0),
(206, 7, 0x323031382d30332d30382030363a35313a3137, 0x323031382d30332d30382030363a35313a3137, 'Crochet scarf is soft and variegated with a mix of purple and pink.\r\n\r\nThe colors of this handmade scarf are well blended.', 'Women\'s scarf', 'Beautiful scarf to add to your collection.', 'publish', 'open', 'closed', '', 'womens-scarf-2', '', '', 0x323031382d30332d30382030363a35313a3137, 0x323031382d30332d30382030363a35313a3137, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=206', 0, 'product', '', 0),
(207, 7, 0x323031382d30332d30382030363a35313a3039, 0x323031382d30332d30382030363a35313a3039, '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2-2', '', '', 0x323031382d30332d30382030363a35313a3039, 0x323031382d30332d30382030363a35313a3039, '', 206, 'http://localhost/wp/wordpress/wp-content/uploads/2018/03/download-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, 0x323031382d30332d30382030363a35373a3135, 0x323031382d30332d30382030363a35373a3135, '{\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"custom\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 06:57:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7aadb69a-9250-4534-89f2-7720c50ec94c', '', '', 0x323031382d30332d30382030363a35373a3135, 0x323031382d30332d30382030363a35373a3135, '', 0, 'http://localhost/wp/wordpress/2018/03/08/7aadb69a-9250-4534-89f2-7720c50ec94c/', 0, 'customize_changeset', '', 0),
(209, 1, 0x323031382d30332d30382030373a30323a3435, 0x323031382d30332d30382030373a30323a3435, '{\n    \"woocommerce_demo_store\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 07:02:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d798ab7-9127-487c-9c1a-3dc3a221d35f', '', '', 0x323031382d30332d30382030373a30323a3435, 0x323031382d30332d30382030373a30323a3435, '', 0, 'http://localhost/wp/wordpress/2018/03/08/4d798ab7-9127-487c-9c1a-3dc3a221d35f/', 0, 'customize_changeset', '', 0),
(210, 1, 0x323031382d30332d30382030373a30333a3537, 0x303030302d30302d30302030303a30303a3030, '{\n    \"woocommerce_demo_store\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 07:03:57\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '87e80c9e-7312-426e-b3f8-c196a11b9a43', '', '', 0x323031382d30332d30382030373a30333a3537, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=210', 0, 'customize_changeset', '', 0),
(211, 1, 0x323031382d30332d30382030373a31313a3439, 0x323031382d30332d30382030373a31313a3439, '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 07:11:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06140b48-38e7-49f9-874a-a338443190b1', '', '', 0x323031382d30332d30382030373a31313a3439, 0x323031382d30332d30382030373a31313a3439, '', 0, 'http://localhost/wp/wordpress/2018/03/08/06140b48-38e7-49f9-874a-a338443190b1/', 0, 'customize_changeset', '', 0),
(212, 1, 0x323031382d30332d30382030373a35343a3533, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30382030373a35343a3533, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=212', 0, 'page', '', 0),
(213, 1, 0x323031382d30332d30382030383a31303a3032, 0x323031382d30332d30382030383a31303a3032, '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 08:10:02\"\n    },\n    \"twentysixteen::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 08:10:02\"\n    },\n    \"twentysixteen::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 08:10:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '491489ca-462c-4965-8eb6-b3c53e9e1e96', '', '', 0x323031382d30332d30382030383a31303a3032, 0x323031382d30332d30382030383a31303a3032, '', 0, 'http://localhost/wp/wordpress/2018/03/08/491489ca-462c-4965-8eb6-b3c53e9e1e96/', 0, 'customize_changeset', '', 0),
(214, 1, 0x323031382d30332d30382030383a31353a3532, 0x323031382d30332d30382030383a31353a3532, '<blockquote>\n<h2><img class=\"alignnone wp-image-109\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/women-300x154.jpeg\" alt=\"\" width=\"676\" height=\"347\" /> <em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">ASpire. </em><em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">dream. realize.</em></h2>\n</blockquote>\nWe believe in you and now it\'s your turn to believe in yourself. [profilepress-registration id=\"2\"]\n\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', 0x323031382d30332d30382030383a31353a3532, 0x323031382d30332d30382030383a31353a3532, '', 11, 'http://localhost/wp/wordpress/2018/03/08/11-autosave-v1/', 0, 'revision', '', 0),
(215, 1, 0x323031382d30332d30382030383a31353a3537, 0x323031382d30332d30382030383a31353a3537, '<blockquote>\r\n<h2><img class=\"alignnone wp-image-109\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/women-300x154.jpeg\" alt=\"\" width=\"676\" height=\"347\" /> <em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">ASpire. </em><em style=\"font-size: 19px; letter-spacing: 0.13333em; text-transform: uppercase;\">dream. realize.</em></h2>\r\n</blockquote>\r\nWe believe in you and now it\'s your turn to believe in yourself. [profilepress-registration id=\"2\"]\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', 0x323031382d30332d30382030383a31353a3537, 0x323031382d30332d30382030383a31353a3537, '', 11, 'http://localhost/wp/wordpress/2018/03/08/11-revision-v1/', 0, 'revision', '', 0),
(216, 1, 0x323031382d30332d30382030383a33303a3034, 0x323031382d30332d30382030383a33303a3034, '{\n    \"widget_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czoxNDk6IkVhc3kgdG8gdXNlLCBTYXJhbCBBYWppdmlrYSwgYWltcyB0byBwcm92aWRlIGEgcGxhdGZvcm0gdGhhdCBhbnlib2R5IGNhbiB1c2UuDQoNCkluIGNhc2Ugb2YgYW55IHF1ZXJpZXMgeW91IGNhbiBhbHdheXMgY29udGFjdCB1cy4NCg0KSGFwcHkgU2hvcHBpbmchIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"479c375142d457e277f9ed27a0125462\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-08 08:28:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef386732-6cb0-49d2-b3ff-941c8f1442da', '', '', 0x323031382d30332d30382030383a33303a3034, 0x323031382d30332d30382030383a33303a3034, '', 0, 'http://localhost/wp/wordpress/?p=216', 0, 'customize_changeset', '', 0),
(217, 1, 0x323031382d30332d30382030383a33313a3331, 0x323031382d30332d30382030383a33313a3331, 'We would love to hear from you! Any queries, thoughts or suggestions, get in touch with us here:\n\n&nbsp;\n\n<em><img class=\"alignnone wp-image-166\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png\" alt=\"\" width=\"63\" height=\"63\" /></em><em>Email us at</em>: niska301@gmail.com', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', 0x323031382d30332d30382030383a33313a3331, 0x323031382d30332d30382030383a33313a3331, '', 9, 'http://localhost/wp/wordpress/2018/03/08/9-autosave-v1/', 0, 'revision', '', 0),
(218, 1, 0x323031382d30332d30382030383a33313a3335, 0x323031382d30332d30382030383a33313a3335, 'We would love to hear from you! Any queries, thoughts or suggestions, get in touch with us here:\r\n\r\n<em><img class=\"alignnone wp-image-166\" src=\"http://localhost/wp/wordpress/wp-content/uploads/2018/03/envelope.png\" alt=\"\" width=\"63\" height=\"63\" /></em><em>Email us at</em>: niska301@gmail.com', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', 0x323031382d30332d30382030383a33313a3335, 0x323031382d30332d30382030383a33313a3335, '', 9, 'http://localhost/wp/wordpress/2018/03/08/9-revision-v1/', 0, 'revision', '', 0),
(219, 13, 0x323031382d30332d30382031333a34333a3031, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30382031333a34333a3031, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=219', 0, 'post', '', 0),
(220, 7, 0x323031382d30332d30382031333a34353a3134, 0x303030302d30302d30302030303a30303a3030, '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', 0x323031382d30332d30382031333a34353a3134, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?post_type=product&p=220', 0, 'product', '', 0),
(221, 8, 0x323031382d30332d30382031343a30303a3539, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', 0x323031382d30332d30382031343a30303a3539, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?p=221', 0, 'post', '', 0),
(222, 8, 0x323031382d30332d30382031343a30323a3438, 0x323031382d30332d30382031343a30323a3438, 'Papanskammmmmma', 'this product', '', 'trash', 'open', 'closed', '', 'this-product__trashed', '', '', 0x323031382d30332d30382031343a30353a3339, 0x323031382d30332d30382031343a30353a3339, '', 0, 'http://localhost/wp/wordpress/?post_type=product&#038;p=222', 0, 'product', '', 0),
(223, 1, 0x323031382d30332d30382031343a35333a3038, 0x323031382d30332d30382031343a35333a3038, '//create a hidden field for role\r\nadd_action(\'register_form\',\'add_hidden_role_field\');\r\n\r\nfunction add_hidden_role_field(){\r\n    if (isset($_GET[\'role\'])){\r\n        echo \'<input id=\"user_email\" type=\"hidden\" tabindex=\"20\" size=\"25\" value=\"\'.$_GET[\'role\'].\'\" name=\"role\"/>\';\r\n    }\r\n}\r\n\r\nadd_action(\'user_register\', \'update_role\');\r\n\r\n//save the the role\r\nfunction update_role($user_id, $password=\"\", $meta=array()) {\r\n   if (isset($_POST[\'role\'])){\r\n       $userdata = array();\r\n       $userdata[\'ID\'] = $user_id;\r\n       $userdata[\'role\'] = $_POST[\'role\'];\r\n\r\n       //only allow if user role is my_role to avoid a few new admins to the site\r\n       if (($userdata[\'role\'] == \"seller\") or ($userdata[\'role\'] == \"buyer\")){\r\n          wp_update_user($userdata);\r\n       }\r\n   }\r\n}', 'test page', '', 'publish', 'closed', 'closed', '', 'test-page', '', '', 0x323031382d30332d30382031343a35333a3334, 0x323031382d30332d30382031343a35333a3334, '', 0, 'http://localhost/wp/wordpress/?page_id=223', 0, 'page', '', 0),
(224, 1, 0x323031382d30332d30382031343a35333a3038, 0x323031382d30332d30382031343a35333a3038, '<pre class=\"lang-php prettyprint prettyprinted\"><code><span class=\"com\">//create a hidden field for role</span><span class=\"pln\">\r\nadd_action</span><span class=\"pun\">(</span><span class=\"str\">\'register_form\'</span><span class=\"pun\">,</span><span class=\"str\">\'add_hidden_role_field\'</span><span class=\"pun\">);</span>\r\n\r\n<span class=\"kwd\">function</span><span class=\"pln\"> add_hidden_role_field</span><span class=\"pun\">(){</span>\r\n    <span class=\"kwd\">if</span> <span class=\"pun\">(</span><span class=\"pln\">isset</span><span class=\"pun\">(</span><span class=\"pln\">$_GET</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">])){</span><span class=\"pln\">\r\n        echo </span><span class=\"str\">\'&lt;input id=\"user_email\" type=\"hidden\" tabindex=\"20\" size=\"25\" value=\"\'</span><span class=\"pun\">.</span><span class=\"pln\">$_GET</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">].</span><span class=\"str\">\'\" name=\"role\"/&gt;\'</span><span class=\"pun\">;</span>\r\n    <span class=\"pun\">}</span>\r\n<span class=\"pun\">}</span><span class=\"pln\">\r\n\r\nadd_action</span><span class=\"pun\">(</span><span class=\"str\">\'user_register\'</span><span class=\"pun\">,</span> <span class=\"str\">\'update_role\'</span><span class=\"pun\">);</span>\r\n\r\n<span class=\"com\">//save the the role</span>\r\n<span class=\"kwd\">function</span><span class=\"pln\"> update_role</span><span class=\"pun\">(</span><span class=\"pln\">$user_id</span><span class=\"pun\">,</span><span class=\"pln\"> $password</span><span class=\"pun\">=</span><span class=\"str\">\"\"</span><span class=\"pun\">,</span><span class=\"pln\"> $meta</span><span class=\"pun\">=</span><span class=\"pln\">array</span><span class=\"pun\">())</span> <span class=\"pun\">{</span>\r\n   <span class=\"kwd\">if</span> <span class=\"pun\">(</span><span class=\"pln\">isset</span><span class=\"pun\">(</span><span class=\"pln\">$_POST</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">])){</span><span class=\"pln\">\r\n       $userdata </span><span class=\"pun\">=</span><span class=\"pln\"> array</span><span class=\"pun\">();</span><span class=\"pln\">\r\n       $userdata</span><span class=\"pun\">[</span><span class=\"str\">\'ID\'</span><span class=\"pun\">]</span> <span class=\"pun\">=</span><span class=\"pln\"> $user_id</span><span class=\"pun\">;</span><span class=\"pln\">\r\n       $userdata</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">]</span> <span class=\"pun\">=</span><span class=\"pln\"> $_POST</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">];</span>\r\n\r\n       <span class=\"com\">//only allow if user role is my_role to avoid a few new admins to the site</span>\r\n       <span class=\"kwd\">if</span> <span class=\"pun\">((</span><span class=\"pln\">$userdata</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">]</span> <span class=\"pun\">==</span> <span class=\"str\">\"seller\"</span><span class=\"pun\">)</span> <span class=\"kwd\">or</span> <span class=\"pun\">(</span><span class=\"pln\">$userdata</span><span class=\"pun\">[</span><span class=\"str\">\'role\'</span><span class=\"pun\">]</span> <span class=\"pun\">==</span> <span class=\"str\">\"buyer\"</span><span class=\"pun\">)){</span><span class=\"pln\">\r\n          wp_update_user</span><span class=\"pun\">(</span><span class=\"pln\">$userdata</span><span class=\"pun\">);</span>\r\n       <span class=\"pun\">}</span>\r\n   <span class=\"pun\">}</span>\r\n<span class=\"pun\">}</span></code></pre>', 'test page', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', 0x323031382d30332d30382031343a35333a3038, 0x323031382d30332d30382031343a35333a3038, '', 223, 'http://localhost/wp/wordpress/2018/03/08/223-revision-v1/', 0, 'revision', '', 0),
(225, 1, 0x323031382d30332d30382031343a35333a3334, 0x323031382d30332d30382031343a35333a3334, '//create a hidden field for role\r\nadd_action(\'register_form\',\'add_hidden_role_field\');\r\n\r\nfunction add_hidden_role_field(){\r\n    if (isset($_GET[\'role\'])){\r\n        echo \'<input id=\"user_email\" type=\"hidden\" tabindex=\"20\" size=\"25\" value=\"\'.$_GET[\'role\'].\'\" name=\"role\"/>\';\r\n    }\r\n}\r\n\r\nadd_action(\'user_register\', \'update_role\');\r\n\r\n//save the the role\r\nfunction update_role($user_id, $password=\"\", $meta=array()) {\r\n   if (isset($_POST[\'role\'])){\r\n       $userdata = array();\r\n       $userdata[\'ID\'] = $user_id;\r\n       $userdata[\'role\'] = $_POST[\'role\'];\r\n\r\n       //only allow if user role is my_role to avoid a few new admins to the site\r\n       if (($userdata[\'role\'] == \"seller\") or ($userdata[\'role\'] == \"buyer\")){\r\n          wp_update_user($userdata);\r\n       }\r\n   }\r\n}', 'test page', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', 0x323031382d30332d30382031343a35333a3334, 0x323031382d30332d30382031343a35333a3334, '', 223, 'http://localhost/wp/wordpress/2018/03/08/223-revision-v1/', 0, 'revision', '', 0),
(226, 1, 0x323031382d30332d30382031353a30313a3137, 0x303030302d30302d30302030303a30303a3030, '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', 0x323031382d30332d30382031353a30313a3137, 0x303030302d30302d30302030303a30303a3030, '', 0, 'http://localhost/wp/wordpress/?page_id=226', 0, 'page', '', 0),
(227, 1, 0x323031382d30332d30382031353a31353a3034, 0x323031382d30332d30382031353a31353a3034, '[insert_php]\r\n//create a hidden field for role\r\nadd_action(\'register_form\',\'add_hidden_role_field\');\r\n\r\nfunction add_hidden_role_field(){\r\n    if (isset($_GET[\'role\'])){\r\n        echo \'<input id=\"user_email\" type=\"hidden\" tabindex=\"20\" size=\"25\" value=\"\'.$_GET[\'role\'].\'\" name=\"role\"/>\';\r\n    }\r\n}\r\n\r\nadd_action(\'user_register\', \'update_role\');\r\n\r\n//save the the role\r\nfunction update_role($user_id, $password=\"\", $meta=array()) {\r\n   if (isset($_POST[\'role\'])){\r\n       $userdata = array();\r\n       $userdata[\'ID\'] = $user_id;\r\n       $userdata[\'role\'] = $_POST[\'role\'];\r\n\r\n       //only allow if user role is my_role to avoid a few new admins to the site\r\n       if (($userdata[\'role\'] == \"seller\") or ($userdata[\'role\'] == \"buyer\")){\r\n          wp_update_user($userdata);\r\n       }\r\n   }\r\n}\r\n\r\n[/insert_php]', 'test page', '', 'inherit', 'closed', 'closed', '', '223-autosave-v1', '', '', 0x323031382d30332d30382031353a31353a3034, 0x323031382d30332d30382031353a31353a3034, '', 223, 'http://localhost/wp/wordpress/2018/03/08/223-autosave-v1/', 0, 'revision', '', 0),
(228, 1, 0x323031382d30332d30382031353a31393a3534, 0x323031382d30332d30382031353a31393a3534, '[profilepress-login id=\"2\"]\r\n[insert_php]\r\n//create a hidden field for role\r\nadd_action(\'register_form\',\'add_hidden_role_field\');\r\n\r\nfunction add_hidden_role_field(){\r\n    if (isset($_GET[\'role\'])){\r\n        echo \'<input id=\"user_email\" type=\"hidden\" tabindex=\"20\" size=\"25\" value=\"\'.$_GET[\'role\'].\'\" name=\"role\"/>\';\r\n    }\r\n}\r\n\r\nadd_action(\'user_register\', \'update_role\');\r\n\r\n//save the the role\r\nfunction update_role($user_id, $password=\"\", $meta=array()) {\r\n   if (isset($_POST[\'role\'])){\r\n       $userdata = array();\r\n       $userdata[\'ID\'] = $user_id;\r\n       $userdata[\'role\'] = $_POST[\'role\'];\r\n\r\n       //only allow if user role is my_role to avoid a few new admins to the site\r\n       if (($userdata[\'role\'] == \"seller\") or ($userdata[\'role\'] == \"buyer\")){\r\n          wp_update_user($userdata);\r\n       }\r\n   }\r\n}\r\n[/insert_php]', 'Login', '', 'inherit', 'closed', 'closed', '', '105-autosave-v1', '', '', 0x323031382d30332d30382031353a31393a3534, 0x323031382d30332d30382031353a31393a3534, '', 105, 'http://localhost/wp/wordpress/2018/03/08/105-autosave-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_pp_login_builder`
--

DROP TABLE IF EXISTS `wp_pp_login_builder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_pp_login_builder` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_pp_login_builder`
--

LOCK TABLES `wp_pp_login_builder` WRITE;
/*!40000 ALTER TABLE `wp_pp_login_builder` DISABLE KEYS */;
INSERT INTO `wp_pp_login_builder` (`id`, `title`, `structure`, `css`, `date`) VALUES 
(1, 'FlatUI Login Theme', '<div class=\"login-form\">\r\n\r\n<div class=\"form-group\">\r\n[login-username placeholder=\"username\" class=\"form-control login-field\" id=\"login-name\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login-name\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-password placeholder=\"password\" class=\"form-control login-field\" id=\"login-pass\"]\r\n<label class=\"login-field-icon fui-lock\" for=\"login-pass\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-remember class=\"flat-checkbox\" id=\"remember-me\"]\r\n<label for=\"remember-me\" class=\"css-label lite-cyan-check\">Remember me</label>\r\n</div>\r\n\r\n[login-submit value=\"Sign In\" class=\"btn btn-primary btn-lg btn-block\"]\r\n\r\n\r\n<div class=\"form-group\"><br/>\r\n[link-registration class=\"reg\" label=\"Register\"] | [link-lost-password class=\"lostp\" label=\"Forgot Password?\"]\r\n</div>\r\n</div>\r\n', '/* css class for the login generated errors */\r\n\r\n.profilepress-login-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin:4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n/*\r\nThis login form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '2018-03-07'),
(2, 'Fzbuk Login Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n\r\n	<h1>Sign In</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[login-username placeholder=\"Username\" id=\"fzbuk-username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[login-password placeholder=\"Password\" id=\"fzbuk-password\"]\r\n		</label>\r\n\r\n		[login-submit value=\"Login\"]\r\n\r\n	</div>\r\n	<h5>[link-lost-password class=\"lostp\" label=\"Forgot Password?\"]</h5>\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Lato:400,700);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.profilepress-login-status a {\r\ncolor: #ea9629 !important;\r\nfont-weight:bold;\r\n}\r\n\r\n\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 40px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 14px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100% !important;\r\n  border: 1px solid #314d89;\r\n  outline: none !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif !important;\r\n  cursor: text !important;\r\n}\r\n.fzbuk-login-form input[type=\"text\"] {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: none;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n\r\n::-webkit-input-placeholder {\r\n    color:    #999;\r\n}\r\n:-moz-placeholder {\r\n    color:    #999;\r\n}\r\n::-moz-placeholder {\r\n    color:    #999;\r\n}\r\n:-ms-input-placeholder {\r\n    color:    #999;\r\n}\r\n', '2018-03-07'),
(3, 'FlatUI Login Theme', '<div class=\"login-form\">\r\n\r\n<div class=\"form-group\">\r\n[login-username placeholder=\"username\" class=\"form-control login-field\" id=\"login-name\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login-name\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-password placeholder=\"password\" class=\"form-control login-field\" id=\"login-pass\"]\r\n<label class=\"login-field-icon fui-lock\" for=\"login-pass\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-remember class=\"flat-checkbox\" id=\"remember-me\"]\r\n<label for=\"remember-me\" class=\"css-label lite-cyan-check\">Remember me</label>\r\n</div>\r\n\r\n[login-submit value=\"Sign In\" class=\"btn btn-primary btn-lg btn-block\"]\r\n\r\n\r\n<div class=\"form-group\"><br/>\r\n[link-registration class=\"reg\" label=\"Register\"] | [link-lost-password class=\"lostp\" label=\"Forgot Password?\"]\r\n</div>\r\n</div>\r\n', '/* css class for the login generated errors */\r\n\r\n.profilepress-login-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin:4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n/*\r\nThis login form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '2018-03-07'),
(4, 'Fzbuk Login Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n\r\n	<h1>Sign In</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[login-username placeholder=\"Username\" id=\"fzbuk-username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[login-password placeholder=\"Password\" id=\"fzbuk-password\"]\r\n		</label>\r\n\r\n		[login-submit value=\"Login\"]\r\n\r\n	</div>\r\n	<h5>[link-lost-password class=\"lostp\" label=\"Forgot Password?\"]</h5>\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Lato:400,700);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.profilepress-login-status a {\r\ncolor: #ea9629 !important;\r\nfont-weight:bold;\r\n}\r\n\r\n\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 40px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 14px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100% !important;\r\n  border: 1px solid #314d89;\r\n  outline: none !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif !important;\r\n  cursor: text !important;\r\n}\r\n.fzbuk-login-form input[type=\"text\"] {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: none;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n\r\n::-webkit-input-placeholder {\r\n    color:    #999;\r\n}\r\n:-moz-placeholder {\r\n    color:    #999;\r\n}\r\n::-moz-placeholder {\r\n    color:    #999;\r\n}\r\n:-ms-input-placeholder {\r\n    color:    #999;\r\n}\r\n', '2018-03-07'),
(5, 'FlatUI Login Theme', '<div class=\"login-form\">\r\n\r\n<div class=\"form-group\">\r\n[login-username placeholder=\"username\" class=\"form-control login-field\" id=\"login-name\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login-name\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-password placeholder=\"password\" class=\"form-control login-field\" id=\"login-pass\"]\r\n<label class=\"login-field-icon fui-lock\" for=\"login-pass\"></label>\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n[login-remember class=\"flat-checkbox\" id=\"remember-me\"]\r\n<label for=\"remember-me\" class=\"css-label lite-cyan-check\">Remember me</label>\r\n</div>\r\n\r\n[login-submit value=\"Sign In\" class=\"btn btn-primary btn-lg btn-block\"]\r\n\r\n\r\n<div class=\"form-group\"><br/>\r\n[link-registration class=\"reg\" label=\"Register\"] | [link-lost-password class=\"lostp\" label=\"Forgot Password?\"]\r\n</div>\r\n</div>\r\n', '/* css class for the login generated errors */\r\n\r\n.profilepress-login-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin:4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n/*\r\nThis login form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '2018-03-07'),
(6, 'Fzbuk Login Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n\r\n	<h1>Sign In</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[login-username placeholder=\"Username\" id=\"fzbuk-username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[login-password placeholder=\"Password\" id=\"fzbuk-password\"]\r\n		</label>\r\n\r\n		[login-submit value=\"Login\"]\r\n\r\n	</div>\r\n	<h5>[link-lost-password class=\"lostp\" label=\"Forgot Password?\"]</h5>\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Lato:400,700);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.profilepress-login-status a {\r\ncolor: #ea9629 !important;\r\nfont-weight:bold;\r\n}\r\n\r\n\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 40px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 14px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100% !important;\r\n  border: 1px solid #314d89;\r\n  outline: none !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif !important;\r\n  cursor: text !important;\r\n}\r\n.fzbuk-login-form input[type=\"text\"] {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: none;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n\r\n::-webkit-input-placeholder {\r\n    color:    #999;\r\n}\r\n:-moz-placeholder {\r\n    color:    #999;\r\n}\r\n::-moz-placeholder {\r\n    color:    #999;\r\n}\r\n:-ms-input-placeholder {\r\n    color:    #999;\r\n}\r\n', '2018-03-07'),
(7, 'Jakhu Login Theme', '<div class=\"jakhu-login-form\">\r\n\r\n	<div class=\"jakhu-header\">\r\n		<h1>Sign In</h1>\r\n		<span>Fill out the form below to login.</span>\r\n	</div>\r\n\r\n\r\n	<div class=\"jakhu-content\">\r\n		[login-username placeholder=\"Username\" class=\"jakhu-input jakhu-username\"]\r\n\r\n		[login-password placeholder=\"Password\" class=\"jakhu-input jakhu-password\"]\r\n	</div>\r\n\r\n	<div class=\"jakhu-footer\">\r\n		[login-submit value=\"Sign In\" class=\"jakhu-button\"]\r\n\r\n		[link-registration class=\"jakhu-login\" label=\"Sign Up\"]\r\n\r\n		<br/>\r\n\r\n		<div style=\"float: right; text-decoration: underline;\">\r\n			[link-lost-password class=\"jakhu-password-reset\" label=\"Forgot Password?\"]\r\n		</div>\r\n	</div>\r\n</div>', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n    width: 300px;\r\n	position: static;\r\n	margin: 10px auto;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 300px;\r\n	position: static;\r\n	margin: auto;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-password{\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Login button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Registration link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n/* password reset link */\r\n.jakhu-login-form .jakhu-footer .jakhu-password-reset {\r\n	display: block;\r\n	text-align:center\r\n	padding: 10px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #414848;\r\n	margin-top: 40px;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}', '2018-03-07');
/*!40000 ALTER TABLE `wp_pp_login_builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_pp_password_reset_builder`
--

DROP TABLE IF EXISTS `wp_pp_password_reset_builder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_pp_password_reset_builder` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler_structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_password_reset` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_pp_password_reset_builder`
--

LOCK TABLES `wp_pp_password_reset_builder` WRITE;
/*!40000 ALTER TABLE `wp_pp_password_reset_builder` DISABLE KEYS */;
INSERT INTO `wp_pp_password_reset_builder` (`id`, `title`, `structure`, `handler_structure`, `css`, `success_password_reset`, `date`) VALUES 
(1, 'FlatUI Password Reset', '<div class=\"login-form\">\r\n\r\n<p>\r\nPlease enter your username or email address.\r\nYou will receive a link to create a new password via email.</p>\r\n\r\n<div class=\"form-group\">\r\n[user-login id=\"login\" placeholder=\"Username or E-mail:\" class=\"form-control login-field\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login\"></label>\r\n</div>\r\n\r\n\r\n<p>\r\n[reset-submit value=\"Reset Password\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]\r\n</p>\r\n\r\n</div>', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin: 4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reset-status\">Check your email for further instructions.</div>', '2018-03-07'),
(2, 'Fzbuk Password Reset', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Forgot Password?</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[user-login id=\"login\" placeholder=\"Username or E-mail:\"]\r\n		</label>\r\n\r\n		[reset-submit value=\"Reset Password\"]\r\n\r\n	</div>\r\n	<h5>Back to [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n\r\n.fzbuk-login-form-wrap {\r\n\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  height: 300px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  font-size: 15px;\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"]  {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  font-weight: 400;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}', '<div class=\"profilepress-reset-status\">Check your e-mail for further instruction.</div>', '2018-03-07'),
(3, 'FlatUI Password Reset', '<div class=\"login-form\">\r\n\r\n<p>\r\nPlease enter your username or email address.\r\nYou will receive a link to create a new password via email.</p>\r\n\r\n<div class=\"form-group\">\r\n[user-login id=\"login\" placeholder=\"Username or E-mail:\" class=\"form-control login-field\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login\"></label>\r\n</div>\r\n\r\n\r\n<p>\r\n[reset-submit value=\"Reset Password\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]\r\n</p>\r\n\r\n</div>', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin: 4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reset-status\">Check your email for further instructions.</div>', '2018-03-07'),
(4, 'Fzbuk Password Reset', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Forgot Password?</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[user-login id=\"login\" placeholder=\"Username or E-mail:\"]\r\n		</label>\r\n\r\n		[reset-submit value=\"Reset Password\"]\r\n\r\n	</div>\r\n	<h5>Back to [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n\r\n.fzbuk-login-form-wrap {\r\n\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  height: 300px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  font-size: 15px;\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"]  {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  font-weight: 400;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}', '<div class=\"profilepress-reset-status\">Check your e-mail for further instruction.</div>', '2018-03-07'),
(5, 'FlatUI Password Reset', '<div class=\"login-form\">\r\n\r\n<p>\r\nPlease enter your username or email address.\r\nYou will receive a link to create a new password via email.</p>\r\n\r\n<div class=\"form-group\">\r\n[user-login id=\"login\" placeholder=\"Username or E-mail:\" class=\"form-control login-field\"]\r\n<label class=\"login-field-icon fui-user\" for=\"login\"></label>\r\n</div>\r\n\r\n\r\n<p>\r\n[reset-submit value=\"Reset Password\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]\r\n</p>\r\n\r\n</div>', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin: 4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reset-status\">Check your email for further instructions.</div>', '2018-03-07'),
(6, 'Fzbuk Password Reset', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Forgot Password?</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n\r\n		<label>\r\n			[user-login id=\"login\" placeholder=\"Username or E-mail:\"]\r\n		</label>\r\n\r\n		[reset-submit value=\"Reset Password\"]\r\n\r\n	</div>\r\n	<h5>Back to [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n\r\n.fzbuk-login-form-wrap {\r\n\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  height: 300px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \'\';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  font-size: 15px;\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"]  {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  font-weight: 400;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}', '<div class=\"profilepress-reset-status\">Check your e-mail for further instruction.</div>', '2018-03-07'),
(7, 'Jakhu Password Reset', '<div class=\"jakhu-login-form\">\r\n\r\n	<div class=\"jakhu-header\">\r\n		<h1>Forgot Password?</h1>\r\n		<span>Please enter your username or email address.\r\nYou will receive a link to create a new password via email.</span>\r\n	</div>\r\n\r\n	<div class=\"jakhu-content\">\r\n\r\n		[user-login id=\"login\" placeholder=\"Username or E-mail\" class=\"jakhu-input jakhu-username\"]\r\n	</div>\r\n\r\n	<div class=\"jakhu-footer\">\r\n		[reset-submit value=\"Reset Password\" class=\"jakhu-button\"]\r\n\r\n		<br/><br/>\r\n\r\n		<div style=\"float: right; text-decoration: underline;\">\r\n			[link-login class=\"jakhu-login\" label=\"Back to Login?\"]\r\n		</div>\r\n	</div>\r\n\r\n</div>\r\n', '<div class=\"pp-reset-password-form\">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for=\"password1\">New password<span class=\"req\">*</span></label>\r\n	[enter-password id=\"password1\" required autocomplete=\"off\"]\r\n\r\n	<label for=\"password2\">Re-enter new password<span class=\"req\">*</span></label>\r\n	[re-enter-password id=\"password2\" required autocomplete=\"off\"]\r\n\r\n	[password-reset-submit class=\"pp-reset-button pp-reset-button-block\" value=\"Save\"]\r\n</div>', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the password reset form generated errors */\r\n.profilepress-reset-status {\r\n    width: 300px;\r\n	position: static;\r\n	z-index:5;\r\n	margin: 10px 0;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 300px;\r\n	position: static;\r\n	z-index:5;\r\n\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n/* Second and Third input fourth fifth field */\r\n.jakhu-login-form .jakhu-content .jakhu-password{\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n/* Animation */\r\n.jakhu-input, .jakhu-user-icon, .jakhu-email-icon, .jakhu-pass-icon, .jakhu-button, .jakhu-login {\r\n	transition: all 0.5s;\r\n	-moz-transition: all 0.5s;\r\n	-webkit-transition: all 0.5s;\r\n	-o-transition: all 0.5s;\r\n	-ms-transition: all 0.5s;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Login button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Registration link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n/* Back to login link */\r\n.jakhu-login-form .jakhu-footer .jakhu-back-login {\r\n	display: block;\r\n	text-align:center\r\n	padding: 10px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #414848;\r\n	margin-top: 20px;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}', '<div class=\"profilepress-reset-status\">Check your email for further instructions.</div>', '2018-03-07');
/*!40000 ALTER TABLE `wp_pp_password_reset_builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_pp_registration_builder`
--

DROP TABLE IF EXISTS `wp_pp_registration_builder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_pp_registration_builder` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_registration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_pp_registration_builder`
--

LOCK TABLES `wp_pp_registration_builder` WRITE;
/*!40000 ALTER TABLE `wp_pp_registration_builder` DISABLE KEYS */;
INSERT INTO `wp_pp_registration_builder` (`id`, `title`, `structure`, `css`, `success_registration`, `date`) VALUES 
(1, 'FlatUI Registration Theme', '<div class=\"login-form\">\r\n    <div class=\"form-group\">[reg-username id=\"reg-username\" placeholder=\"Username\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-username\"></label></div>\r\n    <div class=\"form-group\">[reg-password id=\"reg-password\" placeholder=\"Password\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-lock\" for=\"reg-password\"></label></div>\r\n    <div class=\"form-group\">[reg-email id=\"reg-email\" placeholder=\"Email\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-mail\" for=\"reg-email\"></label></div>\r\n    <div class=\"form-group\">[reg-website class=\"form-control login-field\" placeholder=\"Website\" id=\"reg-website\" required]\r\n        <label class=\"login-field-icon fui-chat\" for=\"reg-website\"></label></div>\r\n    <div class=\"form-group\">[reg-nickname class=\"form-control login-field\" placeholder=\"Nickname\" id=\"id-nickname\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"id-nickname\"></label></div>\r\n    <div class=\"form-group\">[reg-first-name class=\"form-control login-field\" id=\"reg-firstname\" placeholder=\"First Name\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-firstname\"></label></div>\r\n    <div class=\"form-group\">[reg-last-name class=\"form-control login-field\" id=\"reg-lastname\" placeholder=\"Last Name\" required]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-lastname\"></label></div>\r\n    <div class=\"form-group\">[reg-submit value=\"Register\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]</div>\r\n    <div class=\"form-group\" style=\"text-align:center\">Have an account? [link-login label=\"Login\"]</div>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n  border-radius: 6px;\r\n  font-size: 17px;\r\n  line-height: 1.471;\r\n  padding: 10px 19px;\r\n  background-color: #e74c3c;\r\n  color: #ffffff;\r\n  font-weight: normal;\r\n  transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n  display: block;\r\n  text-align: center;\r\n  vertical-align: middle;\r\n  margin: 5px 0;\r\n}\r\n\r\n.profilepress-reg-status a {\r\n  color: #fff;\r\n  font-weight: bold;\r\n}\r\n\r\n.profilepress-reg-label {\r\n  padding: 1px 8px 2px 3px;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reg-status\">Registration Successful</div>', '2018-03-07'),
(2, 'Fzbuk Registration Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Sign Up</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n		<label>\r\n			[reg-username placeholder=\"Username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-email placeholder=\"Email Address\" class=\"fzbuk-input-middle\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-password placeholder=\"Password\"]\r\n		</label>\r\n\r\n		[reg-submit value=\"Register\"]\r\n\r\n	</div>\r\n	<h5>Have an Account? [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  text-align: center;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \"\";\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff !important;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\ninput.fzbuk-input-middle {\r\n  border-bottom: medium none !important;\r\n  border-radius: unset !important;\r\n  box-shadow: unset !important;\r\n  border-top: medium none !important;\r\n  width: 100% !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text !important;\r\n}\r\n\r\n\r\n.fzbuk-login-form input[type=\"email\"], .fzbuk-login-form input[type=\"text\"]  {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: 1px solid #eee;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n', '<div class=\"profilepress-reg-status\">Registration Successful.</div>', '2018-03-07'),
(3, 'FlatUI Registration Theme', '<div class=\"login-form\">\r\n    <div class=\"form-group\">[reg-username id=\"reg-username\" placeholder=\"Username\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-username\"></label></div>\r\n    <div class=\"form-group\">[reg-password id=\"reg-password\" placeholder=\"Password\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-lock\" for=\"reg-password\"></label></div>\r\n    <div class=\"form-group\">[reg-email id=\"reg-email\" placeholder=\"Email\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-mail\" for=\"reg-email\"></label></div>\r\n    <div class=\"form-group\">[reg-website class=\"form-control login-field\" placeholder=\"Website\" id=\"reg-website\" required]\r\n        <label class=\"login-field-icon fui-chat\" for=\"reg-website\"></label></div>\r\n    <div class=\"form-group\">[reg-nickname class=\"form-control login-field\" placeholder=\"Nickname\" id=\"id-nickname\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"id-nickname\"></label></div>\r\n    <div class=\"form-group\">[reg-first-name class=\"form-control login-field\" id=\"reg-firstname\" placeholder=\"First Name\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-firstname\"></label></div>\r\n    <div class=\"form-group\">[reg-last-name class=\"form-control login-field\" id=\"reg-lastname\" placeholder=\"Last Name\" required]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-lastname\"></label></div>\r\n    <div class=\"form-group\">[reg-submit value=\"Register\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]</div>\r\n    <div class=\"form-group\" style=\"text-align:center\">Have an account? [link-login label=\"Login\"]</div>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n  border-radius: 6px;\r\n  font-size: 17px;\r\n  line-height: 1.471;\r\n  padding: 10px 19px;\r\n  background-color: #e74c3c;\r\n  color: #ffffff;\r\n  font-weight: normal;\r\n  transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n  display: block;\r\n  text-align: center;\r\n  vertical-align: middle;\r\n  margin: 5px 0;\r\n}\r\n\r\n.profilepress-reg-status a {\r\n  color: #fff;\r\n  font-weight: bold;\r\n}\r\n\r\n.profilepress-reg-label {\r\n  padding: 1px 8px 2px 3px;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reg-status\">Registration Successful</div>', '2018-03-07'),
(4, 'Fzbuk Registration Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Sign Up</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n		<label>\r\n			[reg-username placeholder=\"Username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-email placeholder=\"Email Address\" class=\"fzbuk-input-middle\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-password placeholder=\"Password\"]\r\n		</label>\r\n\r\n		[reg-submit value=\"Register\"]\r\n\r\n	</div>\r\n	<h5>Have an Account? [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  text-align: center;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \"\";\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff !important;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\ninput.fzbuk-input-middle {\r\n  border-bottom: medium none !important;\r\n  border-radius: unset !important;\r\n  box-shadow: unset !important;\r\n  border-top: medium none !important;\r\n  width: 100% !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text !important;\r\n}\r\n\r\n\r\n.fzbuk-login-form input[type=\"email\"], .fzbuk-login-form input[type=\"text\"]  {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: 1px solid #eee;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n', '<div class=\"profilepress-reg-status\">Registration Successful.</div>', '2018-03-07'),
(5, 'FlatUI Registration Theme', '<div class=\"login-form\">\r\n    <div class=\"form-group\">[reg-username id=\"reg-username\" placeholder=\"Username\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-username\"></label></div>\r\n    <div class=\"form-group\">[reg-password id=\"reg-password\" placeholder=\"Password\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-lock\" for=\"reg-password\"></label></div>\r\n    <div class=\"form-group\">[reg-email id=\"reg-email\" placeholder=\"Email\" class=\"form-control login-field\"]\r\n        <label class=\"login-field-icon fui-mail\" for=\"reg-email\"></label></div>\r\n    <div class=\"form-group\">[reg-website class=\"form-control login-field\" placeholder=\"Website\" id=\"reg-website\" required]\r\n        <label class=\"login-field-icon fui-chat\" for=\"reg-website\"></label></div>\r\n    <div class=\"form-group\">[reg-nickname class=\"form-control login-field\" placeholder=\"Nickname\" id=\"id-nickname\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"id-nickname\"></label></div>\r\n    <div class=\"form-group\">[reg-first-name class=\"form-control login-field\" id=\"reg-firstname\" placeholder=\"First Name\"]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-firstname\"></label></div>\r\n    <div class=\"form-group\">[reg-last-name class=\"form-control login-field\" id=\"reg-lastname\" placeholder=\"Last Name\" required]\r\n        <label class=\"login-field-icon fui-user\" for=\"reg-lastname\"></label></div>\r\n    <div class=\"form-group\">[reg-submit value=\"Register\" class=\"btn btn-primary btn-lg btn-block\" id=\"submit-button\"]</div>\r\n    <div class=\"form-group\" style=\"text-align:center\">Have an account? [link-login label=\"Login\"]</div>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n  border-radius: 6px;\r\n  font-size: 17px;\r\n  line-height: 1.471;\r\n  padding: 10px 19px;\r\n  background-color: #e74c3c;\r\n  color: #ffffff;\r\n  font-weight: normal;\r\n  transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n  display: block;\r\n  text-align: center;\r\n  vertical-align: middle;\r\n  margin: 5px 0;\r\n}\r\n\r\n.profilepress-reg-status a {\r\n  color: #fff;\r\n  font-weight: bold;\r\n}\r\n\r\n.profilepress-reg-label {\r\n  padding: 1px 8px 2px 3px;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt\'s actually very pretty when implemented.\r\n*/', '<div class=\"profilepress-reg-status\">Registration Successful</div>', '2018-03-07'),
(6, 'Fzbuk Registration Theme', '<div class=\"fzbuk-login-form-wrap\">\r\n	<h1>Sign Up</h1>\r\n\r\n	<div class=\"fzbuk-login-form\">\r\n		<label>\r\n			[reg-username placeholder=\"Username\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-email placeholder=\"Email Address\" class=\"fzbuk-input-middle\"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-password placeholder=\"Password\"]\r\n		</label>\r\n\r\n		[reg-submit value=\"Register\"]\r\n\r\n	</div>\r\n	<h5>Have an Account? [link-login label=\"Login\"]</h5>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  text-align: center;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#5170ad\', endColorstr=\'#355493\',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: \"\";\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff !important;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type=\"text\"], .fzbuk-login-form input[type=\"password\"], .fzbuk-login-form input[type=\"email\"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\n  display: block;\r\n  margin: 0 !important;\r\n}\r\n\r\ninput.fzbuk-input-middle {\r\n  border-bottom: medium none !important;\r\n  border-radius: unset !important;\r\n  box-shadow: unset !important;\r\n  border-top: medium none !important;\r\n  width: 100% !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: \"Lato\", sans-serif;\r\n  cursor: text !important;\r\n}\r\n\r\n\r\n.fzbuk-login-form input[type=\"email\"], .fzbuk-login-form input[type=\"text\"]  {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type=\"password\"] {\r\n  border-top: 1px solid #eee;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type=\"submit\"] {\r\n  font-family: \"Lato\", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0e0e0\', endColorstr=\'#cecece\',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type=\"submit\"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n', '<div class=\"profilepress-reg-status\">Registration Successful.</div>', '2018-03-07'),
(7, 'Jakhu Registration Theme', '<div class=\"jakhu-login-form\">\r\n\r\n	<div class=\"jakhu-header\">\r\n		<h1>Sign Up</h1><span>Fill out the form to create an account.</span>\r\n	</div>\r\n\r\n	<div class=\"jakhu-content\">\r\n		[reg-username placeholder=\"Username\" class=\"jakhu-input jakhu-username\"]\r\n\r\n		[reg-email placeholder=\"Email\" class=\"jakhu-input jakhu-email\"]\r\n\r\n		[reg-password placeholder=\"Password\" class=\"jakhu-input jakhu-password\"]\r\n\r\n		[reg-first-name class=\"jakhu-input jakhu-first-name\" placeholder=\"First Name\" required]\r\n\r\n		[reg-last-name class=\"jakhu-input jakhu-last-name\" placeholder=\"Last Name\" required]\r\n\r\n	</div>\r\n	<div class=\"jakhu-footer\">\r\n		[reg-submit value=\"Register\" class=\"jakhu-button\"]\r\n\r\n		[link-login class=\"jakhu-login\" label=\"Login\"]\r\n	</div>\r\n\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the registration form generated errors */\r\n.profilepress-reg-status {\r\n    width: 350px;\r\n	position: static;\r\n	z-index:5;\r\n	margin: 10px 0;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 350px;\r\n	position: static;\r\n	z-index:5;\r\n\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n/* Second and Third input fourth fifth field */\r\n.jakhu-login-form .jakhu-content .jakhu-password, .jakhu-login-form .jakhu-content .jakhu-email, .jakhu-login-form .jakhu-content .jakhu-pass-icon, .jakhu-login-form .jakhu-content .jakhu-first-name, .jakhu-login-form .jakhu-content .jakhu-last-name {\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n\r\n/* Animation */\r\n.jakhu-input, .jakhu-user-icon, .jakhu-email-icon, .jakhu-pass-icon, .jakhu-button, .jakhu-login {\r\n	transition: all 0.5s;\r\n	-moz-transition: all 0.5s;\r\n	-webkit-transition: all 0.5s;\r\n	-o-transition: all 0.5s;\r\n	-ms-transition: all 0.5s;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Register button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Login link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: \'Bree Serif\', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}\r\n', '<div class=\"profilepress-reg-status\">Registration Successful</div>', '2018-03-07');
/*!40000 ALTER TABLE `wp_pp_registration_builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_signups`
--

DROP TABLE IF EXISTS `wp_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_signups` (
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  KEY `activation_key` (`activation_key`),
  KEY `domain` (`domain`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_signups`
--

LOCK TABLES `wp_signups` WRITE;
/*!40000 ALTER TABLE `wp_signups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES 
(23, 2, 0),
(25, 2, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(107, 1, 0),
(108, 1, 0),
(117, 2, 0),
(121, 1, 0),
(122, 1, 0),
(123, 1, 0),
(123, 6, 0),
(125, 1, 0),
(145, 7, 0),
(145, 21, 0),
(145, 22, 0),
(145, 23, 0),
(145, 24, 0),
(177, 7, 0),
(177, 21, 0),
(177, 25, 0),
(177, 26, 0),
(177, 27, 0),
(177, 28, 0),
(177, 29, 0),
(180, 7, 0),
(180, 30, 0),
(180, 32, 0),
(180, 33, 0),
(180, 34, 0),
(180, 35, 0),
(180, 36, 0),
(184, 2, 0),
(185, 7, 0),
(185, 23, 0),
(185, 37, 0),
(185, 38, 0),
(185, 39, 0),
(185, 40, 0),
(185, 41, 0),
(185, 42, 0),
(189, 7, 0),
(189, 38, 0),
(189, 41, 0),
(189, 43, 0),
(189, 44, 0),
(189, 45, 0),
(189, 46, 0),
(189, 47, 0),
(189, 48, 0),
(189, 49, 0),
(189, 50, 0),
(189, 51, 0),
(192, 7, 0),
(192, 23, 0),
(192, 38, 0),
(192, 50, 0),
(192, 52, 0),
(192, 53, 0),
(192, 54, 0),
(196, 7, 0),
(196, 30, 0),
(196, 32, 0),
(196, 55, 0),
(196, 56, 0),
(196, 57, 0),
(196, 58, 0),
(198, 7, 0),
(198, 23, 0),
(198, 59, 0),
(198, 60, 0),
(198, 61, 0),
(198, 62, 0),
(198, 63, 0),
(198, 64, 0),
(202, 7, 0),
(202, 21, 0),
(202, 65, 0),
(202, 66, 0),
(202, 67, 0),
(202, 68, 0),
(202, 69, 0),
(202, 70, 0),
(204, 7, 0),
(204, 13, 0),
(204, 38, 0),
(204, 42, 0),
(204, 45, 0),
(204, 46, 0),
(204, 71, 0),
(204, 72, 0),
(204, 73, 0),
(204, 74, 0),
(204, 75, 0),
(206, 7, 0),
(206, 38, 0),
(206, 45, 0),
(206, 46, 0),
(206, 71, 0),
(206, 72, 0),
(206, 73, 0),
(206, 74, 0),
(206, 76, 0),
(222, 7, 0),
(222, 20, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES 
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(5, 5, 'post_format', '', 0, 0),
(6, 6, 'post_format', '', 0, 0),
(7, 7, 'product_type', '', 0, 11),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 1),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 3),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 4),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_cat', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_cat', '', 0, 2),
(31, 31, 'product_cat', '', 0, 0),
(32, 32, 'product_tag', '', 0, 2),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'product_tag', '', 0, 1),
(37, 37, 'product_cat', '', 0, 1),
(38, 38, 'product_cat', '', 0, 5),
(39, 39, 'product_tag', '', 0, 1),
(40, 40, 'product_tag', '', 0, 1),
(41, 41, 'product_tag', '', 0, 2),
(42, 42, 'product_tag', '', 0, 2),
(43, 43, 'product_cat', '', 0, 1),
(44, 44, 'product_cat', '', 0, 1),
(45, 45, 'product_cat', '', 0, 3),
(46, 46, 'product_tag', '', 0, 3),
(47, 47, 'product_tag', '', 0, 1),
(48, 48, 'product_tag', '', 0, 1),
(49, 49, 'product_tag', '', 0, 1),
(50, 50, 'product_tag', '', 0, 2),
(51, 51, 'product_tag', '', 0, 1),
(52, 52, 'product_cat', '', 0, 1),
(53, 53, 'product_tag', '', 0, 1),
(54, 54, 'product_tag', '', 0, 1),
(55, 55, 'product_cat', '', 30, 1),
(56, 56, 'product_tag', '', 0, 1),
(57, 57, 'product_tag', '', 0, 1),
(58, 58, 'product_tag', '', 0, 1),
(59, 59, 'product_cat', '', 0, 1),
(60, 60, 'product_cat', '', 0, 1),
(61, 61, 'product_cat', '', 0, 1),
(62, 62, 'product_tag', '', 0, 1),
(63, 63, 'product_tag', '', 0, 1),
(64, 64, 'product_tag', '', 0, 1),
(65, 65, 'product_cat', '', 0, 1),
(66, 66, 'product_cat', '', 65, 1),
(67, 67, 'product_tag', '', 0, 1),
(68, 68, 'product_tag', '', 0, 1),
(69, 69, 'product_tag', '', 0, 1),
(70, 70, 'product_tag', '', 0, 1),
(71, 71, 'product_cat', '', 0, 2),
(72, 72, 'product_cat', '', 38, 2),
(73, 73, 'product_tag', '', 0, 2),
(74, 74, 'product_tag', '', 0, 2),
(75, 75, 'product_tag', '', 0, 1),
(76, 76, 'product_tag', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES 
(1, 21, 'order', '0'),
(2, 21, 'product_count_product_cat', '3'),
(3, 22, 'product_count_product_tag', '1'),
(4, 23, 'product_count_product_tag', '4'),
(5, 24, 'product_count_product_tag', '1'),
(6, 25, 'order', '0'),
(7, 25, 'product_count_product_cat', '1'),
(8, 26, 'product_count_product_tag', '1'),
(9, 27, 'product_count_product_tag', '1'),
(10, 28, 'product_count_product_tag', '1'),
(11, 29, 'product_count_product_tag', '1'),
(12, 30, 'order', '0'),
(13, 31, 'order', '0'),
(14, 30, 'product_count_product_cat', '2'),
(15, 32, 'product_count_product_tag', '2'),
(16, 33, 'product_count_product_tag', '1'),
(17, 34, 'product_count_product_tag', '1'),
(18, 35, 'product_count_product_tag', '1'),
(19, 36, 'product_count_product_tag', '1'),
(20, 37, 'order', '0'),
(21, 38, 'order', '0'),
(22, 38, 'product_count_product_cat', '5'),
(23, 37, 'product_count_product_cat', '1'),
(24, 39, 'product_count_product_tag', '1'),
(25, 40, 'product_count_product_tag', '1'),
(26, 41, 'product_count_product_tag', '2'),
(27, 42, 'product_count_product_tag', '2'),
(28, 43, 'order', '0'),
(29, 44, 'order', '0'),
(30, 45, 'order', '0'),
(31, 45, 'product_count_product_cat', '3'),
(32, 44, 'product_count_product_cat', '1'),
(33, 43, 'product_count_product_cat', '1'),
(34, 46, 'product_count_product_tag', '3'),
(35, 47, 'product_count_product_tag', '1'),
(36, 48, 'product_count_product_tag', '1'),
(37, 49, 'product_count_product_tag', '1'),
(38, 50, 'product_count_product_tag', '2'),
(39, 51, 'product_count_product_tag', '1'),
(40, 52, 'order', '0'),
(41, 52, 'product_count_product_cat', '1'),
(42, 53, 'product_count_product_tag', '1'),
(43, 54, 'product_count_product_tag', '1'),
(44, 55, 'order', '0'),
(45, 55, 'product_count_product_cat', '1'),
(46, 56, 'product_count_product_tag', '1'),
(47, 57, 'product_count_product_tag', '1'),
(48, 58, 'product_count_product_tag', '1'),
(49, 59, 'order', '0'),
(50, 60, 'order', '0'),
(51, 61, 'order', '0'),
(52, 61, 'product_count_product_cat', '1'),
(53, 60, 'product_count_product_cat', '1'),
(54, 59, 'product_count_product_cat', '1'),
(55, 62, 'product_count_product_tag', '1'),
(56, 63, 'product_count_product_tag', '1'),
(57, 64, 'product_count_product_tag', '1'),
(58, 65, 'order', '0'),
(59, 66, 'order', '0'),
(60, 65, 'product_count_product_cat', '1'),
(61, 66, 'product_count_product_cat', '1'),
(62, 67, 'product_count_product_tag', '1'),
(63, 68, 'product_count_product_tag', '1'),
(64, 69, 'product_count_product_tag', '1'),
(65, 70, 'product_count_product_tag', '1'),
(66, 71, 'order', '0'),
(67, 72, 'order', '0'),
(68, 72, 'product_count_product_cat', '2'),
(69, 71, 'product_count_product_cat', '2'),
(70, 73, 'product_count_product_tag', '2'),
(71, 74, 'product_count_product_tag', '2'),
(72, 75, 'product_count_product_tag', '1'),
(73, 76, 'product_count_product_tag', '1'),
(74, 20, 'product_count_product_cat', '0');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES 
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(5, 'post-format-aside', 'post-format-aside', 0),
(6, 'post-format-image', 'post-format-image', 0),
(7, 'simple', 'simple', 0),
(8, 'grouped', 'grouped', 0),
(9, 'variable', 'variable', 0),
(10, 'external', 'external', 0),
(11, 'exclude-from-search', 'exclude-from-search', 0),
(12, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(13, 'featured', 'featured', 0),
(14, 'outofstock', 'outofstock', 0),
(15, 'rated-1', 'rated-1', 0),
(16, 'rated-2', 'rated-2', 0),
(17, 'rated-3', 'rated-3', 0),
(18, 'rated-4', 'rated-4', 0),
(19, 'rated-5', 'rated-5', 0),
(20, 'Uncategorized', 'uncategorized', 0),
(21, 'Handbags', 'handbags', 0),
(22, 'handbag', 'handbag', 0),
(23, 'cotton', 'cotton', 0),
(24, 'slingbags', 'slingbags', 0),
(25, 'Embroidery', 'embroidery', 0),
(26, 'embroidery', 'embroidery', 0),
(27, 'handbags', 'handbags', 0),
(28, 'canvas', 'canvas', 0),
(29, 'clutch', 'clutch', 0),
(30, 'jewellery', 'jewellery', 0),
(31, 'silk', 'silk', 0),
(32, 'silk', 'silk', 0),
(33, 'thread', 'thread', 0),
(34, 'jewwllery', 'jewwllery', 0),
(35, 'necklace', 'necklace', 0),
(36, 'bangles', 'bangles', 0),
(37, 'sweaters', 'sweaters', 0),
(38, 'clothes', 'clothes', 0),
(39, 'sweater', 'sweater', 0),
(40, 'boys', 'boys', 0),
(41, 'baby', 'baby', 0),
(42, 'woollen', 'woollen', 0),
(43, 'shoes', 'shoes', 0),
(44, 'socks', 'socks', 0),
(45, 'crochet', 'crochet', 0),
(46, 'crochet', 'crochet', 0),
(47, 'shoes', 'shoes', 0),
(48, 'socks', 'socks', 0),
(49, 'toddler', 'toddler', 0),
(50, 'clothes', 'clothes', 0),
(51, 'knit', 'knit', 0),
(52, 'cushion covers', 'cushion-covers', 0),
(53, 'cushion cover', 'cushion-cover', 0),
(54, 'handmade', 'handmade', 0),
(55, 'earrings', 'earrings', 0),
(56, 'earrings', 'earrings', 0),
(57, 'red', 'red', 0),
(58, 'jewellery', 'jewellery', 0),
(59, 'personal', 'personal', 0),
(60, 'sanitary', 'sanitary', 0),
(61, 'pads', 'pads', 0),
(62, 'pads', 'pads', 0),
(63, 'sanitary napkins', 'sanitary-napkins', 0),
(64, 'reusable', 'reusable', 0),
(65, 'bags', 'bags', 0),
(66, 'Shoulder bag', 'shoulder-bag', 0),
(67, 'carry bag', 'carry-bag', 0),
(68, 'shoulder bag', 'shoulder-bag', 0),
(69, 'tote', 'tote', 0),
(70, 'bags', 'bags', 0),
(71, 'winters', 'winters', 0),
(72, 'scarves', 'scarves', 0),
(73, 'scarf', 'scarf', 0),
(74, 'women', 'women', 0),
(75, 'flowers', 'flowers', 0),
(76, 'winters', 'winters', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_user_registration_sessions`
--

DROP TABLE IF EXISTS `wp_user_registration_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_user_registration_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_user_registration_sessions`
--

LOCK TABLES `wp_user_registration_sessions` WRITE;
/*!40000 ALTER TABLE `wp_user_registration_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_user_registration_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES 
(1, 1, 'nickname', 'niska'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '46'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&advImgDetails=show'),
(20, 1, 'wp_user-settings-time', '1520520812'),
(21, 1, 'session_tokens', 'a:5:{s:64:\"8212fc572d19e64fad6ce89614053e6edc333958178247639548f7395c6b30b3\";a:4:{s:10:\"expiration\";i:1520689151;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520516351;}s:64:\"d1786f4d08a70338b41779ff2cc0950a088d9d1b7f3017b2ed6afdc2f17bb32c\";a:4:{s:10:\"expiration\";i:1520689983;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520517183;}s:64:\"8e66d71c1989b94b9bdf79e19cf98c953ab43b4e1888e3248036ca303fb6fe11\";a:4:{s:10:\"expiration\";i:1520692561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520519761;}s:64:\"3142f84db56b3afe793cd28fbf88ce31c574158d30eb27347a468c548353628c\";a:4:{s:10:\"expiration\";i:1520845954;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520673154;}s:64:\"b9351ab31f2b730da77dce946d5309f68fa7b91d8ce74070e98ba3d37b15c22a\";a:4:{s:10:\"expiration\";i:1520845957;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520673157;}}'),
(22, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_page', '2'),
(85, 6, 'nickname', 'Geeta'),
(86, 6, 'first_name', ''),
(87, 6, 'last_name', ''),
(88, 6, 'description', ''),
(89, 6, 'rich_editing', 'true'),
(90, 6, 'syntax_highlighting', 'true'),
(91, 6, 'comment_shortcuts', 'false'),
(92, 6, 'admin_color', 'fresh'),
(93, 6, 'use_ssl', '0'),
(94, 6, 'show_admin_bar_front', 'true'),
(95, 6, 'locale', ''),
(96, 6, 'wp_capabilities', 'a:2:{s:11:\"contributor\";b:1;s:5:\"women\";b:1;}'),
(97, 6, 'wp_user_level', '1'),
(99, 6, 'wp_dashboard_quick_press_last_post_id', '127'),
(100, 6, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(101, 6, 'wp_user-settings', 'libraryContent=browse'),
(102, 6, 'wp_user-settings-time', '1520438043'),
(103, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";a:10:{s:3:\"key\";s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";s:10:\"product_id\";i:206;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:215;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:215;s:8:\"line_tax\";i:0;}}}'),
(105, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";a:10:{s:3:\"key\";s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";s:10:\"product_id\";i:206;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:215;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:215;s:8:\"line_tax\";i:0;}}}'),
(106, 6, 'closedpostboxes_dashboard', 'a:0:{}'),
(107, 6, 'metaboxhidden_dashboard', 'a:0:{}'),
(108, 6, 'billing_first_name', ''),
(109, 6, 'billing_last_name', ''),
(110, 6, 'billing_company', ''),
(111, 6, 'billing_address_1', ''),
(112, 6, 'billing_address_2', ''),
(113, 6, 'billing_city', ''),
(114, 6, 'billing_postcode', ''),
(115, 6, 'billing_country', ''),
(116, 6, 'billing_state', ''),
(117, 6, 'billing_phone', ''),
(118, 6, 'billing_email', 'geeta101@gmail.com'),
(119, 6, 'shipping_first_name', ''),
(120, 6, 'shipping_last_name', ''),
(121, 6, 'shipping_company', ''),
(122, 6, 'shipping_address_1', ''),
(123, 6, 'shipping_address_2', ''),
(124, 6, 'shipping_city', ''),
(125, 6, 'shipping_postcode', ''),
(126, 6, 'shipping_country', ''),
(127, 6, 'shipping_state', ''),
(128, 6, 'last_update', '1520449908'),
(132, 6, 'session_tokens', 'a:1:{s:64:\"e2b007dd72eff4ac5b7e0b3f6d26d2dca236e1e1bdbd6d2ea1abff33cd28a7cc\";a:4:{s:10:\"expiration\";i:1520623255;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520450455;}}'),
(133, 6, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:70:\"fed_meta_boxes,woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(134, 6, 'screen_layout_product', '2'),
(135, 7, 'nickname', 'babita'),
(136, 7, 'first_name', ''),
(137, 7, 'last_name', ''),
(138, 7, 'description', ''),
(139, 7, 'rich_editing', 'true'),
(140, 7, 'syntax_highlighting', 'true'),
(141, 7, 'comment_shortcuts', 'false'),
(142, 7, 'admin_color', 'fresh'),
(143, 7, 'use_ssl', '0'),
(144, 7, 'show_admin_bar_front', 'true'),
(145, 7, 'locale', ''),
(146, 7, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(147, 7, 'wp_user_level', '1'),
(149, 7, 'wp_dashboard_quick_press_last_post_id', '181'),
(150, 7, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(151, 7, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(152, 8, 'nickname', 'shilpa'),
(153, 8, 'first_name', ''),
(154, 8, 'last_name', ''),
(155, 8, 'description', ''),
(156, 8, 'rich_editing', 'true'),
(157, 8, 'syntax_highlighting', 'true'),
(158, 8, 'comment_shortcuts', 'false'),
(159, 8, 'admin_color', 'fresh'),
(160, 8, 'use_ssl', '0'),
(161, 8, 'show_admin_bar_front', 'true'),
(162, 8, 'locale', ''),
(163, 8, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(164, 8, 'wp_user_level', '1'),
(165, 9, 'nickname', 'deepika'),
(166, 9, 'first_name', ''),
(167, 9, 'last_name', ''),
(168, 9, 'description', ''),
(169, 9, 'rich_editing', 'true'),
(170, 9, 'syntax_highlighting', 'true'),
(171, 9, 'comment_shortcuts', 'false'),
(172, 9, 'admin_color', 'fresh'),
(173, 9, 'use_ssl', '0'),
(174, 9, 'show_admin_bar_front', 'true'),
(175, 9, 'locale', ''),
(176, 9, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(177, 9, 'wp_user_level', '1'),
(178, 10, 'nickname', 'sita'),
(179, 10, 'first_name', ''),
(180, 10, 'last_name', ''),
(181, 10, 'description', ''),
(182, 10, 'rich_editing', 'true'),
(183, 10, 'syntax_highlighting', 'true'),
(184, 10, 'comment_shortcuts', 'false'),
(185, 10, 'admin_color', 'fresh'),
(186, 10, 'use_ssl', '0'),
(187, 10, 'show_admin_bar_front', 'true'),
(188, 10, 'locale', ''),
(189, 10, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(190, 10, 'wp_user_level', '1'),
(191, 11, 'nickname', 'laxmi'),
(192, 11, 'first_name', ''),
(193, 11, 'last_name', ''),
(194, 11, 'description', ''),
(195, 11, 'rich_editing', 'true'),
(196, 11, 'syntax_highlighting', 'true'),
(197, 11, 'comment_shortcuts', 'false'),
(198, 11, 'admin_color', 'fresh'),
(199, 11, 'use_ssl', '0'),
(200, 11, 'show_admin_bar_front', 'true'),
(201, 11, 'locale', ''),
(202, 11, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(203, 11, 'wp_user_level', '1'),
(204, 12, 'nickname', 'priyanka'),
(205, 12, 'first_name', ''),
(206, 12, 'last_name', ''),
(207, 12, 'description', ''),
(208, 12, 'rich_editing', 'true'),
(209, 12, 'syntax_highlighting', 'true'),
(210, 12, 'comment_shortcuts', 'false'),
(211, 12, 'admin_color', 'fresh'),
(212, 12, 'use_ssl', '0'),
(213, 12, 'show_admin_bar_front', 'true'),
(214, 12, 'locale', ''),
(215, 12, 'wp_capabilities', 'a:2:{s:5:\"women\";b:1;s:11:\"contributor\";b:1;}'),
(216, 12, 'wp_user_level', '1'),
(218, 10, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(219, 10, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(221, 10, 'wp_user-settings', 'libraryContent=browse'),
(222, 10, 'wp_user-settings-time', '1520482908'),
(224, 12, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(225, 12, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(226, 12, 'wp_user-settings', 'libraryContent=browse'),
(227, 12, 'wp_user-settings-time', '1520484165'),
(229, 9, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(230, 9, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(231, 9, 'wp_user-settings', 'libraryContent=browse'),
(232, 9, 'wp_user-settings-time', '1520486204'),
(234, 7, 'wp_user-settings', 'libraryContent=browse'),
(235, 7, 'wp_user-settings-time', '1520488615'),
(236, 13, 'nickname', 'nia'),
(237, 13, 'first_name', ''),
(238, 13, 'last_name', ''),
(239, 13, 'description', ''),
(240, 13, 'rich_editing', 'true'),
(241, 13, 'syntax_highlighting', 'true'),
(242, 13, 'comment_shortcuts', 'false'),
(243, 13, 'admin_color', 'fresh'),
(244, 13, 'use_ssl', '0'),
(245, 13, 'show_admin_bar_front', 'true'),
(246, 13, 'locale', ''),
(247, 13, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(248, 13, 'wp_user_level', '2'),
(250, 13, 'wp_dashboard_quick_press_last_post_id', '219'),
(251, 13, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";a:10:{s:3:\"key\";s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";s:10:\"product_id\";i:206;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:215;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:215;s:8:\"line_tax\";i:0;}}}'),
(252, 13, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(255, 8, 'wp_dashboard_quick_press_last_post_id', '221'),
(256, 8, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";a:10:{s:3:\"key\";s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";s:10:\"product_id\";i:206;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:215;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:215;s:8:\"line_tax\";i:0;}}}'),
(257, 8, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES 
(1, 'niska', '$P$BpaiA6989gPK6krOd4Wbycu7gC/XSQ/', 'niska', 'niska301@gmail.com', '', 0x323031382d30322d32332030363a30343a3534, '', 0, 'niska'),
(6, 'Geeta', '$P$Bw7.aT9uykcaTknAElFZ.WRxViaIQW/', 'geeta', 'geeta101@gmail.com', '', 0x323031382d30332d30372031353a33343a3237, '', 0, 'Geeta'),
(7, 'babita', '$P$BCx88WmTqq05aB3RlsJ3mJghOIzyvC0', 'babita', 'babita101@gmail.com', '', 0x323031382d30332d30382030333a34343a3038, '', 0, 'babita'),
(8, 'shilpa', '$P$B.bU.uTIaw5p/7LAUfjKhLjymDOdxo/', 'shilpa', 'shilpa101@gmail.com', '', 0x323031382d30332d30382030333a34363a3136, '', 0, 'shilpa'),
(9, 'deepika', '$P$BuH0P4l3732NAHEhf3xHHOzyiv2f...', 'deepika', 'deepika101@gmail.com', '', 0x323031382d30332d30382030333a34363a3337, '', 0, 'deepika'),
(10, 'sita', '$P$BGURzRnlkmIVOm/D4TFeaCCs1tv7.x/', 'sita', 'sita101@gmail.com', '', 0x323031382d30332d30382030333a34363a3536, '', 0, 'sita'),
(11, 'laxmi', '$P$BcX9MMVq6uP0hkYjVDpn64/R.mzOcQ.', 'laxmi', 'laxmi101@gmail.com', '', 0x323031382d30332d30382030333a34373a3135, '', 0, 'laxmi'),
(12, 'priyanka', '$P$BLmba0YoaLUyV8ENGqPdQ121kL75xx1', 'priyanka', 'priyanka101@gmail.com', '', 0x323031382d30332d30382030333a34373a3433, '', 0, 'priyanka'),
(13, 'nia', '$P$BchLJFZRIMSK4tD3TUZ8UFaRUjJJtM0', 'nia', 'qwerty@gmail.com', '', 0x323031382d30332d30382031333a34323a3334, '', 0, 'nia');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES 
(43, '1', 'a:11:{s:4:\"cart\";s:357:\"a:1:{s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";a:10:{s:3:\"key\";s:32:\"7eabe3a1649ffa2b3ff8c02ebfd5659f\";s:10:\"product_id\";i:206;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:215;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:215;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:6:\"215.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"10.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"215.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"225.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:380:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_eb89e827979ad4c9b28b5e522ea9b780\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"10.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:23:\"Women\'s scarf &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"UK\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"UK\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"niska301@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1520845956),
(42, '6', 'a:1:{s:8:\"customer\";s:736:\"a:26:{s:2:\"id\";s:1:\"6\";s:13:\"date_modified\";s:25:\"2018-03-07T19:11:48+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"UK\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"UK\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"geeta101@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1520692572),
(35, '7', 'a:1:{s:8:\"customer\";s:711:\"a:26:{s:2:\"id\";s:1:\"7\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"UK\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"UK\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"babita101@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1520689965),
(39, '8', 'a:1:{s:8:\"customer\";s:711:\"a:26:{s:2:\"id\";s:1:\"8\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"UK\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"UK\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"shilpa101@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1520690105);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES 
(1, 1, 'IN', 'country');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES 
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES 
(1, 'India', 0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Backup data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Backup routines for database 'WP'
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Backup completed on 2018-03-10 10:51:40
