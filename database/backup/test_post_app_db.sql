/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB : Database - app
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`app` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `app`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2016_06_01_000001_create_oauth_auth_codes_table',2),
(6,'2016_06_01_000002_create_oauth_access_tokens_table',2),
(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),
(8,'2016_06_01_000004_create_oauth_clients_table',2),
(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),
(10,'2022_05_09_074305_create_products_table',3);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('0ee170446b0997702f3c0bf51ff1a9b39751fecc95effd5abbacd8c405ef1b835ffd078dec58a950',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:25:28','2022-05-09 08:25:28','2023-05-09 08:25:28'),
('4a6d7ed52b09fc72c7f873506d398a90ad76fb7605d028999a5547f8c5e77a2cc47ab483bce5fb72',3,3,'Laravel9PassportAuth','[]',0,'2022-05-09 09:59:36','2022-05-09 09:59:36','2023-05-09 09:59:36'),
('4fec824803912c283a8dd39748021a2a50ea0d1839d9f5e2ea019b416f58482b5ae21ac3260ef6b1',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:28:09','2022-05-09 08:28:09','2023-05-09 08:28:09'),
('51b7bff7a922a79a0f239499f76e9ca99f3cbb07f8eb9c8816d4edfec8177674b40553bdb5f6cb3b',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:27:48','2022-05-09 08:27:48','2023-05-09 08:27:48'),
('5eb5afef9b0d6655e33422f77a0098ef49937c5a648654b8cb03d3e54606c402bec86a2e0be02b33',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:24:35','2022-05-09 08:24:35','2023-05-09 08:24:35'),
('764f723bc909dbe7d8a0305dc6460417e07af1250b5ed41b02ea974db714e5905ce7154c07bfa5fc',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 10:02:52','2022-05-09 10:02:52','2023-05-09 10:02:52'),
('7f6be6e4698504a54515f1c87a57588fe1a3ec87051126c2e70557781af64e3f4c5bac58eebf0f45',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 09:59:10','2022-05-09 09:59:10','2023-05-09 09:59:10'),
('d59f6f51880f47e9d326dda1ccfc729de9a57af69ece7b9793b4d31be39a38d1e2ed44a413012254',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:27:46','2022-05-09 08:27:46','2023-05-09 08:27:46'),
('f54c3a19b080d43649461080916c1a000c8d7aa39c7e5e0e860faea2e6127f4adb4b3f32ab1c39eb',2,3,'Laravel9PassportAuth','[]',0,'2022-05-09 08:27:50','2022-05-09 08:27:50','2023-05-09 08:27:50');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','w20JH2io11jXjAHnZnE3f5xJII0XfTjwJauPnHML',NULL,'http://localhost',1,0,0,'2022-05-09 06:42:03','2022-05-09 06:42:03'),
(2,NULL,'Laravel Password Grant Client','fdbdvMo4yRp9bGRryHkCkO2X8ko62i4mKbEHsv0R','users','http://localhost',0,1,0,'2022-05-09 06:42:03','2022-05-09 06:42:03'),
(3,NULL,'Laravel Personal Access Client','WM5pbI9wSM0RYiLuxM3nvILCebRTd6B1zK7IBtRc',NULL,'http://localhost',1,0,0,'2022-05-09 06:56:46','2022-05-09 06:56:46'),
(4,NULL,'Laravel Password Grant Client','eJ4jrSBNwZVpEFNEkpGWr2de4lKh4Z37nmpXYgoe','users','http://localhost',0,1,0,'2022-05-09 06:56:46','2022-05-09 06:56:46');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2022-05-09 06:42:03','2022-05-09 06:42:03'),
(2,3,'2022-05-09 06:56:46','2022-05-09 06:56:46');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',2,'Laravel9PassportAuth','14eb4ac191d2ce4429ca759db1e2700e7687e3ad7f37cd71b96e8de194c2de02','[\"*\"]',NULL,'2022-05-09 07:22:02','2022-05-09 07:22:02'),
(2,'App\\Models\\User',2,'Laravel9PassportAuth','d8213ab402861beefdc01aa8ed0691ad3931111c5e894a198dd0d4194d57bad6','[\"*\"]',NULL,'2022-05-09 07:23:27','2022-05-09 07:23:27'),
(3,'App\\Models\\User',3,'Laravel9PassportAuth','2ce249db7eaf4b0dec6751080ca6a25e5fb42ede2d4568e1f4ea90c60e4bda2b','[\"*\"]',NULL,'2022-05-09 07:25:45','2022-05-09 07:25:45'),
(4,'App\\Models\\User',3,'Laravel9PassportAuth','ef809f3a6981a87cdece3b35734544c9e856ba5feeaaf4c3c505382f27f8422f','[\"*\"]',NULL,'2022-05-09 07:26:05','2022-05-09 07:26:05'),
(5,'App\\Models\\User',2,'Laravel9PassportAuth','7ed4e36ae888bf5dad2181d29048af1a926762ba317e2cccccc06d540877fc39','[\"*\"]',NULL,'2022-05-09 07:26:38','2022-05-09 07:26:38'),
(6,'App\\Models\\User',2,'Laravel9PassportAuth','183498dbb5100d0dfca8a58f2221b9308dd94239ff2d70895ad19c6de3b6ca1d','[\"*\"]',NULL,'2022-05-09 07:26:41','2022-05-09 07:26:41'),
(7,'App\\Models\\User',2,'Laravel9PassportAuth','7fea69f74c2818e16450aa7dc05fade51bc73630b2d9cdfc0407a9e1b70d9c88','[\"*\"]',NULL,'2022-05-09 07:26:42','2022-05-09 07:26:42'),
(8,'App\\Models\\User',3,'Laravel9PassportAuth','59369915850fbd70c405221cb53b5b457b05a8c521dc25bfd963b5f907219b73','[\"*\"]',NULL,'2022-05-09 07:26:45','2022-05-09 07:26:45'),
(9,'App\\Models\\User',3,'Laravel9PassportAuth','76263d8edfa1c00d79587423cb3c122b041e9f923213ea3e49da5ac3b152b758','[\"*\"]',NULL,'2022-05-09 07:37:53','2022-05-09 07:37:53'),
(10,'App\\Models\\User',3,'Laravel9PassportAuth','6a7fbd0aafb502f10b5611bb5015bcdb231d13d377366f208cbedc76231cbb03','[\"*\"]',NULL,'2022-05-09 07:37:54','2022-05-09 07:37:54'),
(11,'App\\Models\\User',3,'Laravel9PassportAuth','af3e42404df51593021a516da6926cbda886fe199bfe12ee729e80578ad9f36d','[\"*\"]',NULL,'2022-05-09 07:37:56','2022-05-09 07:37:56'),
(12,'App\\Models\\User',2,'Laravel9PassportAuth','d5c38915b3089103f52aec21f7966f0c68e9f1d612acab6c80b42f1e59f7e5c6','[\"*\"]',NULL,'2022-05-09 08:04:36','2022-05-09 08:04:36'),
(13,'App\\Models\\User',2,'Laravel9PassportAuth','4ac5a7de1dd7882165e539a61b7310472b14b489195f46a846d0ac8078b8f0b1','[\"*\"]',NULL,'2022-05-09 08:05:10','2022-05-09 08:05:10'),
(14,'App\\Models\\User',2,'Laravel9PassportAuth','ba3602f6beb793d5449b89a458e82b3ef63deb571d2be669cd2b63e4a9b99c74','[\"*\"]',NULL,'2022-05-09 08:06:40','2022-05-09 08:06:40'),
(15,'App\\Models\\User',2,'Laravel9PassportAuth','06b4282087e28ed031b1475ed24764cd9f1e2e1b825559164795226250c32cc5','[\"*\"]',NULL,'2022-05-09 08:10:02','2022-05-09 08:10:02'),
(16,'App\\Models\\User',2,'Laravel9PassportAuth','af37bc25cf09205f640022ad3913a88034531e09955127ba410c65112f2cd994','[\"*\"]',NULL,'2022-05-09 08:10:02','2022-05-09 08:10:02'),
(17,'App\\Models\\User',2,'Laravel9PassportAuth','cc60ee3f7fa25e4ff6f8db5a95d8d72e0f3a681e6cc02858c9c14221f2748353','[\"*\"]',NULL,'2022-05-09 08:10:48','2022-05-09 08:10:48'),
(18,'App\\Models\\User',2,'Laravel9PassportAuth','5dba5bb9bd20be5997fac24b4d936a788d90e1a8874f335fd3c4506904b8ffc2','[\"*\"]',NULL,'2022-05-09 08:10:56','2022-05-09 08:10:56'),
(19,'App\\Models\\User',2,'Laravel9PassportAuth','581441893a6386b42e27daceeec47290ec62eb722f61f01fa34b6b3352a98aea','[\"*\"]',NULL,'2022-05-09 08:12:50','2022-05-09 08:12:50'),
(20,'App\\Models\\User',2,'Laravel9PassportAuth','c565a17944d3a4f94e8898a7044bc16776312f92c4b59b2aeaa1043c6b0bfc51','[\"*\"]',NULL,'2022-05-09 08:15:04','2022-05-09 08:15:04'),
(21,'App\\Models\\User',2,'Laravel9PassportAuth','17ae7a472335d1657e7158901e8eb6d85c9e2939720730a69fe1f5a2da6dcea0','[\"*\"]',NULL,'2022-05-09 08:19:45','2022-05-09 08:19:45'),
(22,'App\\Models\\User',2,'Laravel9PassportAuth','d3e329a32fd75b3c02802fd7a9173f02db66fd2b74a80a94bb962a153639dbac','[\"*\"]',NULL,'2022-05-09 08:22:06','2022-05-09 08:22:06'),
(23,'App\\Models\\User',2,'Laravel9PassportAuth','3eacd9d4b457a2c7dc21aba15c761278ae55e63fc268b6f9a16dd96ebb374929','[\"*\"]',NULL,'2022-05-09 08:22:13','2022-05-09 08:22:13'),
(24,'App\\Models\\User',2,'Laravel9PassportAuth','d93e24e3f5fc05c8c1ed45b46d167c86194a6034d6064980b8c2f30e66371a9f','[\"*\"]',NULL,'2022-05-09 08:23:22','2022-05-09 08:23:22');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`detail`,`created_at`,`updated_at`,`created_by`) values 
(8,'aaa','bbbb','2022-05-09 09:11:39','2022-05-09 09:33:40',3),
(9,'new 1','...','2022-05-09 09:53:42','2022-05-09 09:53:42',3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`type`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`type`) values 
(2,'root_admin','admin@gmail.com',NULL,'$2y$10$AUztmTh9c//rCPvTvoP5SOIvUOHavEMJ8rfj/4WH0PY88leRdg39i',NULL,'2022-05-09 06:24:30','2022-05-09 06:24:30',1),
(3,'admin2','admin2@gmail.com',NULL,'$2y$10$cgiyAV1gIGag2wY82rsUheG75y.a3qQJdcPcb3uza7LSO1sfj03Wq',NULL,'2022-05-09 07:24:59','2022-05-09 07:24:59',2),
(4,'admin3','',NULL,'',NULL,NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
