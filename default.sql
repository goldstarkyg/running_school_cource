-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for school_test
CREATE DATABASE IF NOT EXISTS `school_test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `school_test`;

-- Dumping structure for table school_test.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.activations: ~3 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 14:57:43', '2019-05-20 14:57:43', '2019-05-20 14:57:43'),
	(66, 82, 'F5IoPK1OUFxuEhqYuOUb13cIDGVJnkxQ', 1, NULL, '2019-07-15 10:32:18', '2019-07-15 10:32:18'),
	(67, 83, '202av7qkfTtgZ076T6dEp7635qooJMpH', 1, '2019-07-15 16:12:18', '2019-07-15 16:12:18', '2019-07-15 16:12:18'),
	(68, 81, '202av7qkfTtgZ076T6dEp7635qooJMpH', 1, '2019-07-17 10:35:14', '2019-07-17 10:35:15', '2019-07-17 10:35:16');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table school_test.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `comment` text,
  `role` tinyint(2) DEFAULT '0',
  `address` varchar(200) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `accept_key` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.contact: ~0 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `phone`, `comment`, `role`, `address`, `birthday`, `pic`, `status`, `accept_key`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(14, 'Mikle', 'Roan', 'test123@gmail.com', '12345678', 'I am a student.', 4, NULL, NULL, '', 1, 'O5viuFPGvH', '2019-07-15 06:51:29', '2019-07-15 06:51:29', NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table school_test.course_lesson
CREATE TABLE IF NOT EXISTS `course_lesson` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(100) DEFAULT NULL,
  `main_id` int(10) unsigned DEFAULT '0',
  `level_id` int(10) unsigned DEFAULT '0',
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) unsigned DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.course_lesson: ~0 rows (approximately)
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;

-- Dumping structure for table school_test.course_level
CREATE TABLE IF NOT EXISTS `course_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(100) DEFAULT NULL,
  `level_content` tinytext,
  `level_pic` varchar(100) DEFAULT NULL,
  `status` tinyint(2) unsigned DEFAULT '0',
  `course_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.course_level: ~11 rows (approximately)
/*!40000 ALTER TABLE `course_level` DISABLE KEYS */;
INSERT INTO `course_level` (`id`, `level_name`, `level_content`, `level_pic`, `status`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(4, 'Level 1', 'Intermediate level111', '/uploads/courses/7ofmCKBiQR.png', 1, 35, '2019-07-05 04:15:53', '2019-07-15 03:06:40', '2019-07-05 07:15:38'),
	(5, 'Level 2', 'this is content111222', '/uploads/courses/7ofmCKBiQR.png', 1, 35, '2019-07-15 08:48:56', '2019-07-15 03:11:21', '0000-00-00 00:00:00'),
	(6, 'Level 3', 'this is content2226666', '/uploads/courses/7ofmCKBiQR.png', 1, 35, '2019-07-15 08:49:16', '2019-07-15 03:11:33', '0000-00-00 00:00:00'),
	(7, 'Level 1', 'this is content', '/uploads/courses/7ofmCKBiQR.png', 1, 36, '2019-07-15 08:49:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Level 2', 'this is content', '/uploads/courses/7ofmCKBiQR.png', 1, 36, '2019-07-15 08:49:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'Level 1', 'this is content', '/uploads/courses/7ofmCKBiQR.png', 1, 39, '2019-07-15 08:50:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Level 2', 'this is content', '/uploads/courses/7ofmCKBiQR.png', 1, 39, '2019-07-15 08:50:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 'Level 4', 'This is very high level!', NULL, NULL, 35, '2019-07-15 03:11:52', '2019-07-15 03:11:52', '0000-00-00 00:00:00'),
	(12, 'Level 1', 'Intermediate Level', NULL, NULL, 37, '2019-07-15 03:12:10', '2019-07-15 03:12:10', '0000-00-00 00:00:00'),
	(13, 'Level 2', 'This is the second easiest course that users can take part in!', NULL, NULL, 37, '2019-07-15 03:12:45', '2019-07-15 03:12:45', '0000-00-00 00:00:00'),
	(14, 'Level 3', 'This is the third level!', NULL, NULL, 36, '2019-07-15 03:14:35', '2019-07-15 03:14:35', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `course_level` ENABLE KEYS */;

-- Dumping structure for table school_test.course_main
CREATE TABLE IF NOT EXISTS `course_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(200) DEFAULT NULL,
  `course_pic` varchar(200) DEFAULT NULL,
  `course_content` text,
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.course_main: ~4 rows (approximately)
/*!40000 ALTER TABLE `course_main` DISABLE KEYS */;
INSERT INTO `course_main` (`id`, `course_name`, `course_pic`, `course_content`, `from_date`, `to_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(35, 'Season 1', '/uploads/courses/z2cscetS1N.jpeg', 'Currently, we have less than 10 likes on Facebook, 0 Twitter, Instagram and Pinterest followers,\r\nWe have around 150 products to sell in different categories, each with at least 3-4 pictures and some with videos. So you will get enough content to publish and get user attention.', '2019-07-04 00:00:00', '2019-07-16 00:00:00', 1, '2019-07-04 01:34:08', '2019-07-14 20:40:39', '0000-00-00 00:00:00'),
	(36, 'Season 2', '/uploads/courses/SjI7l7TmSO.jpeg', 'This is content', '2019-07-15 08:49:33', '2019-07-31 00:00:00', 0, '2019-07-04 01:44:07', '2019-07-05 17:44:22', '0000-00-00 00:00:00'),
	(37, 'My Course name aa', '/uploads/courses/xbGPxSD56F.png', 'This is my test course for test my name', '2019-07-06 02:44:19', '2019-07-31 00:00:00', 0, '2019-07-04 08:45:27', '2019-07-05 17:44:19', '2019-07-04 13:41:21'),
	(38, 'asdfasdf', NULL, 'asdfasdf', '2019-07-15 04:49:16', '2019-07-16 00:00:00', 2, '2019-07-14 19:43:39', '2019-07-14 20:49:16', '2019-07-14 20:49:16'),
	(39, 'Season 3', NULL, 'This course is for old man!\nWell, our purpose is to carry out the task in time!\nThanks in advance! Best wishes.', '2019-07-03 00:00:00', '2019-07-03 00:00:00', 0, '2019-07-14 19:44:29', '2019-07-14 19:44:29', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `course_main` ENABLE KEYS */;

-- Dumping structure for table school_test.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.files: ~0 rows (approximately)
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table school_test.mail_templates
CREATE TABLE IF NOT EXISTS `mail_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- Dumping data for table school_test.mail_templates: ~8 rows (approximately)
/*!40000 ALTER TABLE `mail_templates` DISABLE KEYS */;
INSERT INTO `mail_templates` (`id`, `cat_id`, `mailname`, `sender`, `subject`, `content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(92, NULL, 'to_manager_contact', 'School Support Center', '[School] A contact requested by any customer', 'Dear {user_name}<br><br>&nbsp;We received a request from a new customer.&nbsp; so please take the time to check the details below.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br>key: {key}</div><div><br></div><div>Please <a href=\'{domain}\'> click here</a> to visit<br><br></div>', NULL, '2019-06-29 19:03:08', NULL, NULL),
	(93, NULL, 'to_customer_school_register', 'School Support Center', '[School] Your school information has been transferred to school center team', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been completed, so please take the time until arrived respond..<div>School center team will be transferred your confirm information after check.</div><div><div><br></div><div>If you have any questions, please contact School&nbsp; support center.<br>Please <a href="{domain}"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>', NULL, '2019-06-29 18:57:24', NULL, NULL),
	(101, NULL, 'to_customer_contact', 'School Support Center', '[School] Your contact requested to school center', 'Dear {user_name}<br><br>&nbsp;We received a request from a you.&nbsp; We will send you more detail after check your information.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br></div><div><br></div><div>Please <a href=\'{domain}\'> click here </a> to visit<br></div>', NULL, '2019-06-29 19:03:52', NULL, NULL),
	(102, NULL, 'to_customer_contact_approved', 'School Support Center', '[School] Your contact information checked.', 'Dear {user_name}<br><br>&nbsp;You contact information checked. Please register with below key in register page.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br><span style="font-weight: bold; color: rgb(0, 0, 255);">key: {key}</span><br><br></div><div>Please&nbsp;<a href="{domain}" style="background-color: rgb(255, 255, 255);">click here&nbsp;</a>to visit<br></div>', NULL, '2019-07-02 16:18:06', NULL, NULL),
	(103, NULL, 'to_manager_school_register', 'School Support Center', '[School] A school information request has been sent from any customer.', 'Dear<br>A school information request has been sent from {user_name}.<div>Please check.</div><div><br><div><div>Please&nbsp;<a href="{domain}" style="background-color: rgb(255, 255, 255);">click here&nbsp;</a>to visit<br style="background-color: rgb(249, 249, 249);"></div>\r\n                                                                                                                        </div></div>', NULL, '2019-07-02 16:18:43', NULL, NULL),
	(104, NULL, 'to_customer_school_approve', 'School Support Center', '[School] Your school has been approved.', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been approved.<div>Your default password is 123456<br><div><div>Please update your password after login.</div><div><span style="color: inherit;"><br></span></div><div><span style="color: inherit;">If you have any questions, please contact school&nbsp; support center.</span><br></div><div><div>Please <a href="{domain}"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>\r\n                                                                                                                        </div></div>', NULL, '2019-06-29 19:32:09', NULL, NULL),
	(105, NULL, 'to_customer_school_reject', 'School Support Center', '[School] Your school information has been rejected.', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been rejected.<div><div><div><span style="color: inherit;"><br></span></div><div><span style="color: inherit;">If you have any questions, please contact school&nbsp; support center.</span><br></div><div><div>Please <a href="{domain}"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>\r\n                                                                                                                        </div></div>', NULL, '2019-06-29 19:33:31', NULL, NULL),
	(106, NULL, 'to_athlete_verify', 'School Support Center', '[School] Go to link to verify your content.', 'Dear {user_name}<br><br>&nbsp;You contact information checked. Please click <a href="{verify}"> here </a> to verify your content.<div>After verify, You will show all items in athlete page.<br><div><br>If you any questions,&nbsp;<span style="color: inherit;">&nbsp;</span><a href="{domain}" style="background-color: rgb(255, 255, 255);">click here&nbsp;</a><span style="color: inherit;">to visit school center.</span></div>\r\n                                                                                                                        </div>', NULL, '2019-07-02 16:34:23', NULL, NULL);
/*!40000 ALTER TABLE `mail_templates` ENABLE KEYS */;

-- Dumping structure for table school_test.membership_type
CREATE TABLE IF NOT EXISTS `membership_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(2) unsigned DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.membership_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `membership_type` DISABLE KEYS */;
INSERT INTO `membership_type` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(2, 'testaaaa', 1, '2019-07-01 16:49:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `membership_type` ENABLE KEYS */;

-- Dumping structure for table school_test.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
	(2, '2014_10_04_174350_soft_delete_users', 1),
	(3, '2014_12_10_011106_add_fields_to_user_table', 1),
	(4, '2015_11_10_140011_create_files_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table school_test.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `stock` int(5) NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.packages: ~5 rows (approximately)
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` (`id`, `name`, `pic`, `stock`, `price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '5 staff t-shirts', '/uploads/packages/teesx6VvwN.jpeg', 5, 5, 1, '2019-07-01 08:47:35', '2019-07-01 08:58:25', '0000-00-00 00:00:00'),
	(2, 'Know how Runner\'s School Italy', '/uploads/packages/ylomoKNqQZ.jpeg', 5, 3, 1, '2019-07-01 08:50:37', '2019-07-01 08:50:37', '0000-00-00 00:00:00'),
	(3, 'Printing of 1000 A5 flyers', NULL, 1, 4, 1, '2019-07-15 00:09:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Expo Banner', NULL, 1, 2, 1, '2019-07-15 00:09:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Advertising placement', NULL, 1, 3, 1, '2019-07-15 00:09:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;

-- Dumping structure for table school_test.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.persistences: ~48 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 1, 'bkDjiGdwyBYRO1HUKFSwI3uNSkhFZZeF', '2019-05-20 23:14:50', '2019-05-20 23:14:50'),
	(2, 83, 'seV7OvipZStNuKfaLFw4h8p1vGzP47GT', '2019-07-21 13:14:27', '2019-07-21 13:14:27'),
	(3, 83, '6hDOwLZMgf6XKF2HE8yWXPahk9x53lFT', '2019-07-21 13:15:56', '2019-07-21 13:15:56'),
	(4, 83, 'MEq9FzjpAbLh0hmfJLvIZwThK4bSZ4tP', '2019-07-21 13:18:15', '2019-07-21 13:18:15'),
	(5, 83, 'XWPJWrZE16izksSmwCXJ8Gj6KlmydsSI', '2019-07-21 13:36:57', '2019-07-21 13:36:57'),
	(6, 83, 'dlIp9ObVAJW5b1K3FAYdAVF6HHXBXki0', '2019-07-21 15:07:17', '2019-07-21 15:07:17'),
	(7, 83, 'SaLM3eKn3QzDcQeNEe1jedOHd84XhDXO', '2019-07-21 15:07:53', '2019-07-21 15:07:53'),
	(8, 83, 'jVk8RbGvmA7lBeQbzjVZscKnlpffkg14', '2019-07-21 15:11:55', '2019-07-21 15:11:55'),
	(9, 83, 'XkptQcx0cVlBjjaAtF4oPs11eQhofJQr', '2019-07-21 15:12:43', '2019-07-21 15:12:43'),
	(10, 83, 'lFGeVIGuXPyZQDuJ9w8XYlTijTCDfvXI', '2019-07-21 15:15:40', '2019-07-21 15:15:40'),
	(11, 83, 'YXahgqs8nV6hXgCHtiVrHDALfyfHYaIh', '2019-07-21 15:22:52', '2019-07-21 15:22:52'),
	(12, 83, 'wvP0KFs2LDuxeyFTs542OpLGVFskGr9v', '2019-07-21 15:23:13', '2019-07-21 15:23:13'),
	(13, 83, 'iM9iO57b7fTsdm5Kd6K3RRPwWVyxYHz3', '2019-07-21 15:23:37', '2019-07-21 15:23:37'),
	(14, 83, 'bL1acNoKJwCtZmLkDgTGzx7L3vt54gB5', '2019-07-21 15:24:09', '2019-07-21 15:24:09'),
	(15, 83, 'V8PNgzpO8oOj6cS7ScrdqiIdmANRPC4C', '2019-07-21 15:24:38', '2019-07-21 15:24:38'),
	(16, 83, 'jt1OeLCq1YmCTSWWBVPyrdgOXKarl3Su', '2019-07-21 15:25:56', '2019-07-21 15:25:56'),
	(17, 83, 'EyNZcvDffelLtoF436eRsHHCflP2pnSs', '2019-07-21 15:26:42', '2019-07-21 15:26:42'),
	(18, 83, 'NCPHAC54dmZldRlX9zVXbxkmcta3f02Q', '2019-07-21 15:27:14', '2019-07-21 15:27:14'),
	(19, 83, '7yThWvZmnnFAclbD8cF0GwTfduLLBWzR', '2019-07-21 15:28:58', '2019-07-21 15:28:58'),
	(20, 83, 'TBv1l7gZmAJXUaukstm3wXL9MPjMH6ZZ', '2019-07-21 15:29:28', '2019-07-21 15:29:28'),
	(21, 83, '14pVhgYI3vlxOIrGuEuypcZvx1v5dqJk', '2019-07-21 15:34:59', '2019-07-21 15:34:59'),
	(22, 83, 'gM50SujWxcbL7JgH5XROThbLfBV6D72v', '2019-07-21 15:35:38', '2019-07-21 15:35:38'),
	(23, 83, 'k0CR0EtDGICVzmId4etyCINMAx3q303u', '2019-07-21 15:39:03', '2019-07-21 15:39:03'),
	(24, 83, 'xpJQl3BJv2hRKtsaJi9t5Xhfcvklg3Cl', '2019-07-21 15:39:27', '2019-07-21 15:39:27'),
	(25, 83, 'dMm7XAkBOKKfZZF9Cq0pAhQGTI5mXk5r', '2019-07-21 15:39:39', '2019-07-21 15:39:39'),
	(26, 83, '7NoWvlOMUecvnpjHTAefBV3kjZi775X8', '2019-07-21 15:40:11', '2019-07-21 15:40:11'),
	(27, 83, 's4ishW9n7zKQApGsxiA8rCrg57fyPoIg', '2019-07-21 15:40:54', '2019-07-21 15:40:54'),
	(28, 83, 'XF3gYvp2a4iRPotXRGOrjTUcmvXRXARC', '2019-07-21 15:41:19', '2019-07-21 15:41:19'),
	(29, 83, 'FtoWlAyg8HufkfYiM2UY7MuYzRLH8eKv', '2019-07-21 15:43:31', '2019-07-21 15:43:31'),
	(30, 83, 'Mw7PBu46dpeU2csti5tmlIzMSlCdEVoe', '2019-07-21 15:44:03', '2019-07-21 15:44:03'),
	(31, 83, '6dcOCJyAA5syFHrFqUENlDinsz0u4sqQ', '2019-07-21 15:49:27', '2019-07-21 15:49:27'),
	(32, 83, '8anrUu6GiUY5KnDwPVQZrVvgpdVAAo1x', '2019-07-21 15:51:22', '2019-07-21 15:51:22'),
	(33, 83, 'CSTjmjpOCq5aZ6tNC9ywhiPh7KnvNIMZ', '2019-07-21 15:55:32', '2019-07-21 15:55:32'),
	(34, 83, 'YlMj6GL7RWMlu1HrVHYBCT6k5AIJkbvn', '2019-07-21 15:56:22', '2019-07-21 15:56:22'),
	(35, 83, 'EV1NkPKYhysLDiHyZ3c7zVuUidLTHkaJ', '2019-07-21 15:57:38', '2019-07-21 15:57:38'),
	(36, 83, 'eqUVZZbWq7csMXnKXlvL1G4UKOlMSHDn', '2019-07-21 15:59:30', '2019-07-21 15:59:30'),
	(37, 83, 'QkiNy5yMUuzVWZMfcQLYz0hMWmDwCWyS', '2019-07-21 16:02:01', '2019-07-21 16:02:01'),
	(38, 83, '7KBhnNH7fugX9Yt4wvpkrp22WZGEUxpS', '2019-07-21 16:04:25', '2019-07-21 16:04:25'),
	(39, 83, 'Sa4IHpyjeQ06pgls2x71vFj0Mt6zygkv', '2019-07-21 16:05:08', '2019-07-21 16:05:08'),
	(40, 83, 'ph7yF9FWKlyNomAWAZRxdGdQJn07KBi4', '2019-07-21 16:11:05', '2019-07-21 16:11:05'),
	(41, 83, 'NNWttFjPwCwh9W8bCDCPzoUwqDJRzy6s', '2019-07-21 16:12:02', '2019-07-21 16:12:02'),
	(42, 83, 'NsmOWUDDyMjMesp40w5AU6jyGO5Jr9C6', '2019-07-21 16:20:26', '2019-07-21 16:20:26'),
	(43, 83, 'OLUqa3vlOydeJKemoDua8ignAaljDOnX', '2019-07-21 16:20:38', '2019-07-21 16:20:38'),
	(44, 83, 'Y6VPMkjsFoa93gpB8dwTE4NdKVMRqLz5', '2019-07-21 18:55:57', '2019-07-21 18:55:57'),
	(45, 83, 'mXjurWahZP9gsblHG1YVuGmdZT8fhuNR', '2019-07-22 08:38:40', '2019-07-22 08:38:40'),
	(46, 83, 'vKrOh6lzPVNo1xlokIvvmHdPYIj6MOcC', '2019-07-22 15:41:31', '2019-07-22 15:41:31'),
	(47, 83, '4rfRS4kOx5F7xNJNJCsufrMN8H9q1hQc', '2019-07-22 15:42:21', '2019-07-22 15:42:21'),
	(48, 83, 'X6kpjJEi4bxAV3PJ54TpBj6IoHrLWYrX', '2019-07-22 21:41:30', '2019-07-22 21:41:30'),
	(49, 83, '0tlJUB6ZFzPeULgTI48PSwr3AF4JqiT3', '2019-07-24 07:26:52', '2019-07-24 07:26:52');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table school_test.province
CREATE TABLE IF NOT EXISTS `province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` int(10) DEFAULT '0',
  `province_name` varchar(100) DEFAULT NULL,
  `city_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.province: ~110 rows (approximately)
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (`id`, `region_id`, `province_name`, `city_list`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'Aosta', 'Allein, Antey-Saint-André, Aosta, Arnad, Arvier, Avise, Ayas, Aymavilles, Bard, Bionaz, Brissogne, Brusson, Challand-Saint-Anselme, Challand-Saint-Victor, Chambave, Chamois, Champdepraz, Champorcher, Charvensod, Châtillon, Cogne, Courmayeur, Donnas, Doues, Emarèse, Etroubles, Fénis, Fontainemore, Gaby, Gignod, Gressan, Gressoney-La-Trinité, Gressoney-Saint-Jean, Hône, Introd, Issime, Issogne, Jovençan, La Magdeleine, La Salle, La Thuile, Lillianes, Montjovet, Morgex, Nus, Ollomont, Oyace, Perloz, Pollein, Pontboset, Pontey, Pont-Saint-Martin, Pré-Saint-Didier, Quart, Rhêmes-Notre-Dame, Rhêmes-Saint-Georges, Roisan, Saint-Christophe, Saint-Denis, Saint-Marcel, Saint-Nicolas, Saint-Oyen, Saint-Pierre, Saint-Rhémy-en-Bosses, Saint-Vincent, Sarre, Torgnon, Valgrisenche, Valpelline, Valsavarenche, Valtournenche, Verrayes, Verrès, Villeneuve', '2019-05-30 22:00:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 9, 'Chieti', 'Altino, Archi, Ari, Arielli, Atessa, Bomba, Borrello, Bucchianico, Canosa Sannita, Carpineto Sinello, Carunchio, Casacanditella, Casalanguida, Casalbordino, Casalincontrada, Casoli, Castel Frentano, Castelguidone, Castiglione Messer Marino, Celenza sul Trigno, Chieti, Civitaluparella, Civitella Messer Raimondo, Colledimacine, Colledimezzo, Crecchio, Cupello, Dogliola, Fallo, Fara Filiorum Petri, Fara San Martino, Filetto, Fossacesia, Fraine, Francavilla al Mare, Fresagrandinaria, Frisa, Furci, Gamberale, Gessopalena, Gissi, Giuliano Teatino, Guardiagrele, Guilmi, Lama dei Peligni, Lanciano, Lentella, Lettopalena, Liscia, Miglianico, Montazzoli, Montebello sul Sangro, Monteferrante, Montelapiano, Montenerodomo, Monteodorisio, Mozzagrogna, Orsogna, Ortona, Paglieta, Palena, Palmoli, Palombaro, Pennadomo, Pennapiedimonte, Perano, Pietraferrazzana, Pizzoferrato, Poggiofiorito, Pollutri, Pretoro, Quadri, Rapino, Ripa Teatina, Rocca San Giovanni, Roccamontepiano, Roccascalegna, Roccaspinalveti, Roio del Sangro, Rosello, San Buono, San Giovanni Lipioni, San Giovanni Teatino, San Martino sulla Marrucina, San Salvo, San Vito Chietino, Santa Maria Imbaro, Sant\'Eusanio del Sangro, Scerni, Schiavi di Abruzzo, Taranta Peligna, Tollo, Torino di Sangro, Tornareccio, Torrebruna, Torrevecchia Teatina, Torricella Peligna, Treglio, Tufillo, Vacri, Vasto, Villa Santa Maria, Villalfonsina, Villamagna', '2019-05-30 22:01:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 9, 'L Aquila', 'Acciano, Aielli, Alfedena, Anversa degli Abruzzi, Ateleta, Avezzano, Balsorano, Barete, Barisciano, Barrea, Bisegna, Bugnara, Cagnano Amiterno, Calascio, Campo di Giove, Campotosto, Canistro, Cansano, Capestrano, Capistrello, Capitignano, Caporciano, Cappadocia, Carapelle Calvisio, Carsoli, Castel del Monte, Castel di Ieri, Castel di Sangro, Castellafiume, Castelvecchio Calvisio, Castelvecchio Subequo, Celano, Cerchio, Civita d\'Antino, Civitella Alfedena, Civitella Roveto, Cocullo, Collarmele, Collelongo, Collepietro, Corfinio, Fagnano Alto, Fontecchio, Fossa, Gagliano Aterno, Gioia dei Marsi, Goriano Sicoli, Introdacqua, L\'Aquila, Lecce nei Marsi, Luco dei Marsi, Lucoli, Magliano de\' Marsi, Massa d\'Albe, Molina Aterno, Montereale, Morino, Navelli, Ocre, Ofena, Opi, Oricola, Ortona dei Marsi, Ortucchio, Ovindoli, Pacentro, Pereto, Pescasseroli, Pescina, Pescocostanzo, Pettorano sul Gizio, Pizzoli, Poggio Picenze, Prata d\'Ansidonia, Pratola Peligna, Prezza, Raiano, Rivisondoli, Rocca di Botte, Rocca di Cambio, Rocca di Mezzo, Rocca Pia, Roccacasale, Roccaraso, San Benedetto dei Marsi, San Benedetto in Perillis, San Demetrio ne\' Vestini, San Pio delle Camere, San Vincenzo Valle Roveto, Sante Marie, Sant\'Eusanio Forconese, Santo Stefano di Sessanio, Scanno, Scontrone, Scoppito, Scurcola Marsicana, Secinaro, Sulmona, Tagliacozzo, Tione degli Abruzzi, Tornimparte, Trasacco, Villa Santa Lucia degli Abruzzi, Villa Sant\'Angelo, Villalago, Villavallelonga, Villetta Barrea, Vittorito', '2019-05-30 22:01:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 9, 'Pescara', 'Abbateggio, Alanno, Bolognano, Brittoli, Bussi sul Tirino, Cappelle sul Tavo, Caramanico Terme, Carpineto della Nora, Castiglione a Casauria, Catignano, Cepagatti, Città Sant\'Angelo, Civitaquana, Civitella Casanova, Collecorvino, Corvara, Cugnoli, Elice, Farindola, Lettomanoppello, Loreto Aprutino, Manoppello, Montebello di Bertona, Montesilvano, Moscufo, Nocciano, Penne, Pescara, Pescosansonesco, Pianella, Picciano, Pietranico, Popoli, Roccamorice, Rosciano, Salle, San Valentino in Abruzzo Citeriore, Sant\'Eufemia a Maiella, Scafa, Serramonacesca, Spoltore, Tocco da Casauria, Torre De\' Passeri, Turrivalignani, Vicoli, Villa Celiera', '2019-05-30 22:01:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 9, 'Teramo', 'Alba Adriatica, Ancarano, Arsita, Atri, Basciano, Bellante, Bisenti, Campli, Canzano, Castel Castagna, Castellalto, Castelli, Castiglione Messer Raimondo, Castilenti, Cellino Attanasio, Cermignano, Civitella del Tronto, Colledara, Colonnella, Controguerra, Corropoli, Cortino, Crognaleto, Fano Adriano, Giulianova, Isola del Gran Sasso d\'Italia, Martinsicuro, Montefino, Montorio al Vomano, Morro d\'Oro, Mosciano Sant\'Angelo, Nereto, Notaresco, Penna Sant\'Andrea, Pietracamela, Pineto, Rocca Santa Maria, Roseto degli Abruzzi, Sant\'Egidio alla Vibrata, Sant\'Omero, Silvi, Teramo, Torano Nuovo, Torricella Sicura, Tortoreto, Tossicia, Valle Castellana', '2019-05-30 22:01:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 14, 'Matera', 'Accettura, Aliano, Bernalda, Calciano, Cirigliano, Colobraro, Craco, Ferrandina, Garaguso, Gorgoglione, Grassano, Grottole, Irsina, Matera, Miglionico, Montalbano Jonico, Montescaglioso, Nova Siri, Oliveto Lucano, Pisticci, Policoro, Pomarico, Rotondella, Salandra, San Giorgio Lucano, San Mauro Forte, Scanzano Jonico, Stigliano, Tricarico, Tursi, Valsinni', '2019-05-30 22:03:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 14, 'Potenza', 'Abriola, Acerenza, Albano di Lucania, Anzi, Armento, Atella, Avigliano, Balvano, Banzi, Baragiano, Barile, Bella, Brienza, Brindisi Montagna, Calvello, Calvera, Campomaggiore, Cancellara, Carbone, Castelgrande, Castelluccio Inferiore, Castelluccio Superiore, Castelmezzano, Castelsaraceno, Castronuovo di Sant\'Andrea, Cersosimo, Chiaromonte, Corleto Perticara, Episcopia, Fardella, Filiano, Forenza, Francavilla in Sinni, Gallicchio, Genzano di Lucania, Ginestra, Grumento Nova, Guardia Perticara, Lagonegro, Latronico, Laurenzana, Lauria, Lavello, Maratea, Marsico Nuovo, Marsicovetere, Maschito, Melfi, Missanello, Moliterno, Montemilone, Montemurro, Muro Lucano, Nemoli, Noepoli, Oppido Lucano, Palazzo San Gervasio, Paterno, Pescopagano, Picerno, Pietragalla, Pietrapertosa, Pignola, Potenza, Rapolla, Rapone, Rionero in Vulture, Ripacandida, Rivello, Roccanova, Rotonda, Ruoti, Ruvo del Monte, San Chirico Nuovo, San Chirico Raparo, San Costantino Albanese, San Fele, San Martino d\'Agri, San Paolo Albanese, San Severino Lucano, Sant\'Angelo Le Fratte, Sant\'Arcangelo, Sarconi, Sasso di Castalda, Satriano di Lucania, Savoia di Lucania, Senise, Spinoso, Teana, Terranova di Pollino, Tito, Tolve, Tramutola, Trecchina, Trivigno, Vaglio Basilicata, Venosa, Vietri di Potenza, Viggianello, Viggiano', '2019-05-30 22:04:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 15, 'Catanzaro', 'Albi, Amaroni, Amato, Andali, Argusto, Badolato, Belcastro, Borgia, Botricello, Caraffa di Catanzaro, Cardinale, Carlopoli, Catanzaro, Cenadi, Centrache, Cerva, Chiaravalle Centrale, Cicala, Conflenti, Cortale, Cropani, Curinga, Davoli, Decollatura, Falerna, Feroleto Antico, Fossato Serralta, Gagliato, Gasperina, Gimigliano, Girifalco, Gizzeria, Guardavalle, Isca sullo Ionio, Jacurso, Lamezia Terme, Magisano, Maida, Marcedusa, Marcellinara, Martirano, Martirano Lombardo, Miglierina, Montauro, Montepaone, Motta Santa Lucia, Nocera Terinese, Olivadi, Palermiti, Pentone, Petrizzi, Petronà, Pianopoli, Platania, San Floro, San Mango d\'Aquino, San Pietro a Maida, San Pietro Apostolo, San Sostene, San Vito sullo Ionio, Santa Caterina dello Ionio, Sant\'Andrea Apostolo dello Ionio, Satriano, Sellia, Sellia Marina, Serrastretta, Sersale, Settingiano, Simeri Crichi, Sorbo San Basile, Soverato, Soveria Mannelli, Soveria Simeri, Squillace, Stalettì, Taverna, Tiriolo, Torre di Ruggiero, Vallefiorita, Zagarise', '2019-05-30 22:06:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 15, 'Cosenza', 'Acquaformosa, Acquappesa, Acri, Aiello Calabro, Aieta, Albidona, Alessandria del Carretto, Altilia, Altomonte, Amantea, Amendolara, Aprigliano, Belmonte Calabro, Belsito, Belvedere Marittimo, Bianchi, Bisignano, Bocchigliero, Bonifati, Buonvicino, Calopezzati, Caloveto, Campana, Canna, Cariati, Carolei, Carpanzano, Casole Bruzio, Cassano all\'Ionio, Castiglione Cosentino, Castrolibero, Castroregio, Castrovillari, Celico, Cellara, Cerchiara di Calabria, Cerisano, Cervicati, Cerzeto, Cetraro, Civita, Cleto, Colosimi, Corigliano Calabro, Cosenza, Cropalati, Crosia, Diamante, Dipignano, Domanico, Fagnano Castello, Falconara Albanese, Figline Vegliaturo, Firmo, Fiumefreddo Bruzio, Francavilla Marittima, Frascineto, Fuscaldo, Grimaldi, Grisolia, Guardia Piemontese, Lago, Laino Borgo, Laino Castello, Lappano, Lattarico, Longobardi, Longobucco, Lungro, Luzzi, Maierà, Malito, Malvito, Mandatoriccio, Mangone, Marano Marchesato, Marano Principato, Marzi, Mendicino, Mongrassano, Montalto Uffugo, Montegiordano, Morano Calabro, Mormanno, Mottafollone, Nocara, Oriolo, Orsomarso, Paludi, Panettieri, Paola, Papasidero, Parenti, Paterno Calabro, Pedace, Pedivigliano, Piane Crati, Pietrafitta, Pietrapaola, Plataci, Praia a Mare, Rende, Rocca Imperiale, Roggiano Gravina, Rogliano, Rose, Roseto Capo Spulico, Rossano, Rota Greca, Rovito, San Basile, San Benedetto Ullano, San Cosmo Albanese, San Demetrio Corone, San Donato di Ninea, San Fili, San Giorgio Albanese, San Giovanni in Fiore, San Lorenzo Bellizzi, San Lorenzo del Vallo, San Lucido, San Marco Argentano, San Martino di Finita, San Nicola Arcella, San Pietro in Amantea, San Pietro in Guarano, San Sosti, San Vincenzo la Costa, Sangineto, Santa Caterina Albanese, Santa Domenica Talao, Santa Maria del Cedro, Santa Sofia D\'Epiro, Sant\'Agata di Esaro, Santo Stefano di Rogliano, Saracena, Scala Coeli, Scalea, Scigliano, Serra d\'Aiello, Serra Pedace, Spezzano Albanese, Spezzano della Sila, Spezzano Piccolo, Tarsia, Terranova da Sibari, Terravecchia, Torano Castello, Tortora, Trebisacce, Trenta, Vaccarizzo Albanese, Verbicaro, Villapiana, Zumpano', '2019-05-30 22:06:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 15, 'Crotone', 'Belvedere di Spinello, Caccuri, Carfizzi, Casabona, Castelsilano, Cerenzia, Cirò, Cirò Marina, Cotronei, Crotone, Crucoli, Cutro, Isola di Capo Rizzuto, Melissa, Mesoraca, Pallagorio, Petilia Policastro, Rocca di Neto, Roccabernarda, San Mauro Marchesato, San Nicola dell\'Alto, Santa Severina, Savelli, Scandale, Strongoli, Umbriatico, Verzino', '2019-05-30 22:06:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 15, 'Reggio Calabria', 'Africo, Agnana Calabra, Anoia, Antonimina, Ardore, Bagaladi, Bagnara Calabra, Benestare, Bianco, Bivongi, Bova, Bova Marina, Bovalino, Brancaleone, Bruzzano Zeffirio, Calanna, Camini, Campo Calabro, Candidoni, Canolo, Caraffa del Bianco, Cardeto, Careri, Casignana, Caulonia, Ciminà, Cinquefrondi, Cittanova, Condofuri, Cosoleto, Delianuova, Feroleto della Chiesa, Ferruzzano, Fiumara, Galatro, Gerace, Giffone, Gioia Tauro, Gioiosa Ionica, Grotteria, Laganadi, Laureana di Borrello, Locri, Mammola, Marina di Gioiosa Ionica, Maropati, Martone, Melicuccà, Melicucco, Melito di Porto Salvo, Molochio, Monasterace, Montebello Ionico, Motta San Giovanni, Oppido Mamertina, Palizzi, Palmi, Pazzano, Placanica, Platì, Polistena, Portigliola, Reggio Calabria, Riace, Rizziconi, Roccaforte del Greco, Roccella Ionica, Roghudi, Rosarno, Samo, San Ferdinando, San Giorgio Morgeto, San Giovanni di Gerace, San Lorenzo, San Luca, San Pietro di Caridà, San Procopio, San Roberto, Santa Cristina d\'Aspromonte, Sant\'Agata del Bianco, Sant\'Alessio in Aspromonte, Sant\'Eufemia d\'Aspromonte, Sant\'Ilario dello Ionio, Santo Stefano in Aspromonte, Scido, Scilla, Seminara, Serrata, Siderno, Sinopoli, Staiti, Stignano, Stilo, Taurianova, Terranova Sappo Minulio, Varapodio, Villa San Giovanni', '2019-05-30 22:06:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 15, 'Vibo Valentia', 'Acquaro, Arena, Briatico, Brognaturo, Capistrano, Cessaniti, Dasà, Dinami, Drapia, Fabrizia, Filadelfia, Filandari, Filogaso, Francavilla Angitola, Francica, Gerocarne, Ionadi, Joppolo, Limbadi, Maierato, Mileto, Mongiana, Monterosso Calabro, Nardodipace, Nicotera, Parghelia, Pizzo, Pizzoni, Polia, Ricadi, Rombiolo, San Calogero, San Costantino Calabro, San Gregorio d\'Ippona, San Nicola da Crissa, Sant\'Onofrio, Serra San Bruno, Simbario, Sorianello, Soriano Calabro, Spadola, Spilinga, Stefanaconi, Tropea, Vallelonga, Vazzano, Vibo Valentia, Zaccanopoli, Zambrone, Zungri', '2019-05-30 22:06:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 16, 'Avellino', 'Aiello del Sabato, Altavilla Irpina, Andretta, Aquilonia, Ariano Irpino, Atripalda, Avella, Avellino, Bagnoli Irpino, Baiano, Bisaccia, Bonito, Cairano, Calabritto, Calitri, Candida, Caposele, Capriglia Irpina, Carife, Casalbore, Cassano Irpino, Castel Baronia, Castelfranci, Castelvetere sul Calore, Cervinara, Cesinali, Chianche, Chiusano di San Domenico, Contrada, Conza della Campania, Domicella, Flumeri, Fontanarosa, Forino, Frigento, Gesualdo, Greci, Grottaminarda, Grottolella, Guardia Lombardi, Lacedonia, Lapio, Lauro, Lioni, Luogosano, Manocalzati, Marzano di Nola, Melito Irpino, Mercogliano, Mirabella Eclano, Montaguto, Montecalvo Irpino, Montefalcione, Monteforte Irpino, Montefredane, Montefusco, Montella, Montemarano, Montemiletto, Monteverde, Montoro, Morra De Sanctis, Moschiano, Mugnano del Cardinale, Nusco, Ospedaletto d\'Alpinolo, Pago del Vallo di Lauro, Parolise, Paternopoli, Petruro Irpino, Pietradefusi, Pietrastornina, Prata di Principato Ultra, Pratola Serra, Quadrelle, Quindici, Rocca San Felice, Roccabascerana, Rotondi, Salza Irpina, San Mango sul Calore, San Martino Valle Caudina, San Michele di Serino, San Nicola Baronia, San Potito Ultra, San Sossio Baronia, Santa Lucia di Serino, Santa Paolina, Sant\'Andrea di Conza, Sant\'Angelo a Scala, Sant\'Angelo all\'Esca, Sant\'Angelo dei Lombardi, Santo Stefano del Sole, Savignano Irpino, Scampitella, Senerchia, Serino, Sirignano, Solofra, Sorbo Serpico, Sperone, Sturno, Summonte, Taurano, Taurasi, Teora, Torella dei Lombardi, Torre Le Nocelle, Torrioni, Trevico, Tufo, Vallata, Vallesaccarda, Venticano, Villamaina, Villanova del Battista, Volturara Irpina, Zungoli', '2019-05-30 22:08:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 16, 'Benevento', 'Airola, Amorosi, Apice, Apollosa, Arpaia, Arpaise, Baselice, Benevento, Bonea, Bucciano, Buonalbergo, Calvi, Campolattaro, Campoli del Monte Taburno, Casalduni, Castelfranco in Miscano, Castelpagano, Castelpoto, Castelvenere, Castelvetere in Val Fortore, Cautano, Ceppaloni, Cerreto Sannita, Circello, Colle Sannita, Cusano Mutri, Dugenta, Durazzano, Faicchio, Foglianise, Foiano di Val Fortore, Forchia, Fragneto L\'Abate, Fragneto Monforte, Frasso Telesino, Ginestra degli Schiavoni, Guardia Sanframondi, Limatola, Melizzano, Moiano, Molinara, Montefalcone di Val Fortore, Montesarchio, Morcone, Paduli, Pago Veiano, Pannarano, Paolisi, Paupisi, Pesco Sannita, Pietraroja, Pietrelcina, Ponte, Pontelandolfo, Puglianello, Reino, San Bartolomeo in Galdo, San Giorgio del Sannio, San Giorgio La Molara, San Leucio del Sannio, San Lorenzello, San Lorenzo Maggiore, San Lupo, San Marco dei Cavoti, San Martino Sannita, San Nazzaro, San Nicola Manfredi, San Salvatore Telesino, Santa Croce del Sannio, Sant\'Agata De\' Goti, Sant\'Angelo a Cupolo, Sant\'Arcangelo Trimonte, Sassinoro, Solopaca, Telese Terme, Tocco Caudio, Torrecuso, Vitulano', '2019-05-30 22:09:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 16, 'Caserta', 'Ailano, Alife, Alvignano, Arienzo, Aversa, Baia e Latina, Bellona, Caianello, Caiazzo, Calvi Risorta, Camigliano, Cancello ed Arnone, Capodrise, Capriati a Volturno, Capua, Carinaro, Carinola, Casagiove, Casal di Principe, Casaluce, Casapesenna, Casapulla, Caserta, Castel Campagnano, Castel di Sasso, Castel Morrone, Castel Volturno, Castello del Matese, Cellole, Cervino, Cesa, Ciorlano, Conca della Campania, Curti, Dragoni, Falciano del Massico, Fontegreca, Formicola, Francolise, Frignano, Gallo Matese, Galluccio, Giano Vetusto, Gioia Sannitica, Grazzanise, Gricignano di Aversa, Letino, Liberi, Lusciano, Macerata Campania, Maddaloni, Marcianise, Marzano Appio, Mignano Monte Lungo, Mondragone, Orta di Atella, Parete, Pastorano, Piana di Monte Verna, Piedimonte Matese, Pietramelara, Pietravairano, Pignataro Maggiore, Pontelatone, Portico di Caserta, Prata Sannita, Pratella, Presenzano, Raviscanina, Recale, Riardo, Rocca D\'Evandro, Roccamonfina, Roccaromana, Rocchetta e Croce, Ruviano, San Cipriano d\'Aversa, San Felice a Cancello, San Gregorio Matese, San Marcellino, San Marco Evangelista, San Nicola la Strada, San Pietro Infine, San Potito Sannitico, San Prisco, San Tammaro, Santa Maria a Vico, Santa Maria Capua Vetere, Santa Maria La Fossa, Sant\'Angelo d\'Alife, Sant\'Arpino, Sessa Aurunca, Sparanise, Succivo, Teano, Teverola, Tora e Piccilli, Trentola-Ducenta, Vairano Patenora, Valle Agricola, Valle di Maddaloni, Villa di Briano, Villa Literno, Vitulazio', '2019-05-30 22:09:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 16, 'Naples', 'Acerra, Afragola, Agerola, Anacapri, Arzano, Bacoli, Barano d\'Ischia, Boscoreale, Boscotrecase, Brusciano, Caivano, Calvizzano, Camposano, Capri, Carbonara di Nola, Cardito, Casalnuovo di Napoli, Casamarciano, Casamicciola Terme, Casandrino, Casavatore, Casola di Napoli, Casoria, Castellammare di Stabia, Castello di Cisterna, Cercola, Cicciano, Cimitile, Comiziano, Crispano, Ercolano, Forio, Frattamaggiore, Frattaminore, Giugliano in Campania, Gragnano, Grumo Nevano, Ischia, Lacco Ameno, Lettere, Liveri, Marano di Napoli, Mariglianella, Marigliano, Massa di Somma, Massa Lubrense, Melito di Napoli, Meta, Monte di Procida, Mugnano di Napoli, Naples, Nola, Ottaviano, Palma Campania, Piano di Sorrento, Pimonte, Poggiomarino, Pollena Trocchia, Pomigliano d\'Arco, Pompei, Portici, Pozzuoli, Procida, Qualiano, Quarto, Roccarainola, San Gennaro Vesuviano, San Giorgio a Cremano, San Giuseppe Vesuviano, San Paolo Bel Sito, San Sebastiano al Vesuvio, San Vitaliano, Santa Maria la Carità, Sant\'Agnello, Sant\'Anastasia, Sant\'Antimo, Sant\'Antonio Abate, Saviano, Scisciano, Serrara Fontana, Somma Vesuviana, Sorrento, Striano, Terzigno, Torre Annunziata, Torre del Greco, Trecase, Tufino, Vico Equense, Villaricca, Visciano, Volla', '2019-05-30 22:09:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 16, 'Salerno', 'Acerno, Agropoli, Albanella, Alfano, Altavilla Silentina, Amalfi, Angri, Aquara, Ascea, Atena Lucana, Atrani, Auletta, Baronissi, Battipaglia, Bellizzi, Bellosguardo, Bracigliano, Buccino, Buonabitacolo, Caggiano, Calvanico, Camerota, Campagna, Campora, Cannalonga, Capaccio, Casal Velino, Casalbuono, Casaletto Spartano, Caselle in Pittari, Castel San Giorgio, Castel San Lorenzo, Castelcivita, Castellabate, Castelnuovo Cilento, Castelnuovo di Conza, Castiglione del Genovesi, Cava de\' Tirreni, Celle di Bulgheria, Centola, Ceraso, Cetara, Cicerale, Colliano, Conca dei Marini, Controne, Contursi Terme, Corbara, Corleto Monforte, Cuccaro Vetere, Eboli, Felitto, Fisciano, Furore, Futani, Giffoni Sei Casali, Giffoni Valle Piana, Gioi, Giungano, Ispani, Laureana Cilento, Laurino, Laurito, Laviano, Lustra, Magliano Vetere, Maiori, Mercato San Severino, Minori, Moio della Civitella, Montano Antilia, Monte San Giacomo, Montecorice, Montecorvino Pugliano, Montecorvino Rovella, Monteforte Cilento, Montesano sulla Marcellana, Morigerati, Nocera Inferiore, Nocera Superiore, Novi Velia, Ogliastro Cilento, Olevano sul Tusciano, Oliveto Citra, Omignano, Orria, Ottati, Padula, Pagani, Palomonte, Pellezzano, Perdifumo, Perito, Pertosa, Petina, Piaggine, Pisciotta, Polla, Pollica, Pontecagnano Faiano, Positano, Postiglione, Praiano, Prignano Cilento, Ravello, Ricigliano, Roccadaspide, Roccagloriosa, Roccapiemonte, Rofrano, Romagnano al Monte, Roscigno, Rutino, Sacco, Sala Consilina, Salento, Salerno, Salvitelle, San Cipriano Picentino, San Giovanni a Piro, San Gregorio Magno, San Mango Piemonte, San Marzano sul Sarno, San Mauro Cilento, San Mauro La Bruca, San Pietro al Tanagro, San Rufo, San Valentino Torio, Santa Marina, Sant\'Angelo a Fasanella, Sant\'Arsenio, Sant\'Egidio del Monte Albino, Santomenna, Sanza, Sapri, Sarno, Sassano, Scafati, Scala, Serramezzana, Serre, Sessa Cilento, Siano, Sicignano degli Alburni, Stella Cilento, Stio, Teggiano, Torchiara, Torraca, Torre Orsaia, Tortorella, Tramonti, Trentinara, Valle dell\'Angelo, Vallo della Lucania, Valva, Vibonati, Vietri sul Mare', '2019-05-30 22:09:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 2, 'Bologna', 'Alto Reno Terme, Anzola dell\'Emilia, Argelato, Baricella, Bentivoglio, Bologna, Borgo Tossignano, Budrio, Calderara di Reno, Camugnano, Casalecchio di Reno, Casalfiumanese, Castel d\'Aiano, Castel del Rio, Castel di Casio, Castel Guelfo di Bologna, Castel Maggiore, Castel San Pietro Terme, Castello d\'Argile, Castenaso, Castiglione dei Pepoli, Crevalcore, Dozza, Fontanelice, Gaggio Montano, Galliera, Granarolo dell\'Emilia, Grizzana Morandi, Imola, Lizzano in Belvedere, Loiano, Malalbergo, Marzabotto, Medicina, Minerbio, Molinella, Monghidoro, Monte San Pietro, Monterenzio, Monzuno, Mordano, Ozzano dell\'Emilia, Pianoro, Pieve di Cento, Sala Bolognese, San Benedetto Val di Sambro, San Giorgio di Piano, San Giovanni in Persiceto, San Lazzaro di Savena, San Pietro in Casale, Sant\'Agata Bolognese, Sasso Marconi, Valsamoggia, Vergato, Zola Predosa', '2019-05-30 22:11:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 2, 'Ferrara', 'Argenta, Berra, Bondeno, Cento, Codigoro, Comacchio, Copparo, Ferrara, Fiscaglia, Formignana, Goro, Jolanda di Savoia, Lagosanto, Masi Torello, Mesola, Mirabello, Ostellato, Poggio Renatico, Portomaggiore, Ro, Sant\'Agostino, Tresigallo, Vigarano Mainarda, Voghiera', '2019-05-30 22:11:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 2, 'Forlì-Cesena', 'Bagno di Romagna, Bertinoro, Borghi, Castrocaro Terme e Terra del Sole, Cesena, Cesenatico, Civitella di Romagna, Dovadola, Forlì, Forlimpopoli, Galeata, Gambettola, Gatteo, Longiano, Meldola, Mercato Saraceno, Modigliana, Montiano, Portico e San Benedetto, Predappio, Premilcuore, Rocca San Casciano, Roncofreddo, San Mauro Pascoli, Santa Sofia, Sarsina, Savignano sul Rubicone, Sogliano al Rubicone, Tredozio, Verghereto', '2019-05-30 22:11:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 2, 'Modena', 'Bastiglia, Bomporto, Campogalliano, Camposanto, Carpi, Castelfranco Emilia, Castelnuovo Rangone, Castelvetro di Modena, Cavezzo, Concordia sulla Secchia, Fanano, Finale Emilia, Fiorano Modenese, Fiumalbo, Formigine, Frassinoro, Guiglia, Lama Mocogno, Maranello, Marano sul Panaro, Medolla, Mirandola, Modena, Montecreto, Montefiorino, Montese, Nonantola, Novi di Modena, Palagano, Pavullo nel Frignano, Pievepelago, Polinago, Prignano sulla Secchia, Ravarino, Riolunato, San Cesario sul Panaro, San Felice sul Panaro, San Possidonio, San Prospero, Sassuolo, Savignano sul Panaro, Serramazzoni, Sestola, Soliera, Spilamberto, Vignola, Zocca', '2019-05-30 22:11:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(22, 2, 'Parma', 'Albareto, Bardi, Bedonia, Berceto, Bore, Borgo Val di Taro, Busseto, Calestano, Collecchio, Colorno, Compiano, Corniglio, Felino, Fidenza, Fontanellato, Fontevivo, Fornovo di Taro, Langhirano, Lesignano de\' Bagni, Medesano, Mezzani, Monchio delle Corti, Montechiarugolo, Neviano degli Arduini, Noceto, Palanzano, Parma, Pellegrino Parmense, Polesine Zibello, Roccabianca, Sala Baganza, Salsomaggiore Terme, San Secondo Parmense, Sissa Trecasali, Solignano, Soragna, Sorbolo, Terenzo, Tizzano Val Parma, Tornolo, Torrile, Traversetolo, Valmozzola, Varano de\' Melegari, Varsi', '2019-05-30 22:11:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 2, 'Piacenza', 'Agazzano, Alseno, Besenzone, Bettola, Bobbio, Borgonovo Val Tidone, Cadeo, Calendasco, Caminata, Caorso, Carpaneto Piacentino, Castel San Giovanni, Castell\'Arquato, Castelvetro Piacentino, Cerignale, Coli, Corte Brugnatella, Cortemaggiore, Farini, Ferriere, Fiorenzuola d\'Arda, Gazzola, Gossolengo, Gragnano Trebbiense, Gropparello, Lugagnano Val D\'Arda, Monticelli d\'Ongina, Morfasso, Nibbiano, Ottone, Pecorara, Piacenza, Pianello Val Tidone, Piozzano, Podenzano, Ponte dell\'Olio, Pontenure, Rivergaro, Rottofreno, San Giorgio Piacentino, San Pietro in Cerro, Sarmato, Travo, Vernasca, Vigolzone, Villanova sull\'Arda, Zerba, Ziano Piacentino', '2019-05-30 22:11:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 2, 'Ravenna', 'Alfonsine, Bagnacavallo, Bagnara di Romagna, Brisighella, Casola Valsenio, Castel Bolognese, Cervia, Conselice, Cotignola, Faenza, Fusignano, Lugo, Massa Lombarda, Ravenna, Riolo Terme, Russi, Sant\'Agata sul Santerno, Solarolo', '2019-05-30 22:11:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 2, 'Reggio Emilia', 'Albinea, Bagnolo in Piano, Baiso, Bibbiano, Boretto, Brescello, Cadelbosco di Sopra, Campagnola Emilia, Campegine, Canossa, Carpineti, Casalgrande, Casina, Castellarano, Castelnovo di Sotto, Castelnovo ne\' Monti, Cavriago, Correggio, Fabbrico, Gattatico, Gualtieri, Guastalla, Luzzara, Montecchio Emilia, Novellara, Poviglio, Quattro Castella, Reggio Emilia, Reggiolo, Rio Saliceto, Rolo, Rubiera, San Martino in Rio, San Polo d\'Enza, Sant\'Ilario d\'Enza, Scandiano, Toano, Ventasso, Vetto, Vezzano sul Crostolo, Viano, Villa Minozzo', '2019-05-30 22:11:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(26, 2, 'Rimini', 'Bellaria-Igea Marina, Casteldelci, Cattolica, Coriano, Gemmano, Maiolo, Misano Adriatico, Mondaino, Montefiore Conca, Montegridolfo, Montescudo - Montecolombo, Morciano di Romagna, Novafeltria, Pennabilli, Poggio Torriana, Riccione, Rimini, Saludecio, San Clemente, San Giovanni in Marignano, San Leo, Sant\'Agata Feltria, Santarcangelo di Romagna, Talamello, Verucchio', '2019-05-30 22:11:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 3, 'Gorizia', 'Capriva del Friuli, Cormons, Doberdò del Lago, Dolegna del Collio, Farra d\'Isonzo, Fogliano Redipuglia, Gorizia, Gradisca d\'Isonzo, Grado, Mariano del Friuli, Medea, Monfalcone, Moraro, Mossa, Romans d\'Isonzo, Ronchi dei Legionari, Sagrado, San Canzian d\'Isonzo, San Floriano del Collio, San Lorenzo Isontino, San Pier d\'Isonzo, Savogna d\'Isonzo, Staranzano, Turriaco, Villesse', '2019-05-30 22:16:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 3, 'Pordenone', 'Andreis, Arba, Aviano, Azzano Decimo, Barcis, Brugnera, Budoia, Caneva, Casarsa della Delizia, Castelnovo del Friuli, Cavasso Nuovo, Chions, Cimolais, Claut, Clauzetto, Cordenons, Cordovado, Erto e Casso, Fanna, Fiume Veneto, Fontanafredda, Frisanco, Maniago, Meduno, Montereale Valcellina, Morsano al Tagliamento, Pasiano di Pordenone, Pinzano al Tagliamento, Polcenigo, Porcia, Pordenone, Prata di Pordenone, Pravisdomini, Roveredo in Piano, Sacile, San Giorgio della Richinvelda, San Martino al Tagliamento, San Quirino, San Vito al Tagliamento, Sequals, Sesto al Reghena, Spilimbergo, Tramonti di Sopra, Tramonti di Sotto, Travesio, Vajont, Valvasone Arzene, Vito d\'Asio, Vivaro, Zoppola', '2019-05-30 22:16:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 3, 'Trieste', 'Duino-Aurisina, Monrupino, Muggia, San Dorligo della Valle-Dolina, Sgonico, Trieste', '2019-05-30 22:16:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 3, 'Udine', 'Aiello del Friuli, Amaro, Ampezzo, Aquileia, Arta Terme, Artegna, Attimis, Bagnaria Arsa, Basiliano, Bertiolo, Bicinicco, Bordano, Buja, Buttrio, Camino al Tagliamento, Campoformido, Campolongo Tapogliano, Carlino, Cassacco, Castions di Strada, Cavazzo Carnico, Cercivento, Cervignano del Friuli, Chiopris-Viscone, Chiusaforte, Cividale del Friuli, Codroipo, Colloredo di Monte Albano, Comeglians, Corno di Rosazzo, Coseano, Dignano, Dogna, Drenchia, Enemonzo, Faedis, Fagagna, Fiumicello, Flaibano, Forgaria nel Friuli, Forni Avoltri, Forni di Sopra, Forni di Sotto, Gemona del Friuli, Gonars, Grimacco, Latisana, Lauco, Lestizza, Lignano Sabbiadoro, Ligosullo, Lusevera, Magnano in Riviera, Majano, Malborghetto Valbruna, Manzano, Marano Lagunare, Martignacco, Mereto di Tomba, Moggio Udinese, Moimacco, Montenars, Mortegliano, Moruzzo, Muzzana del Turgnano, Nimis, Osoppo, Ovaro, Pagnacco, Palazzolo dello Stella, Palmanova, Paluzza, Pasian di Prato, Paularo, Pavia di Udine, Pocenia, Pontebba, Porpetto, Povoletto, Pozzuolo del Friuli, Pradamano, Prato Carnico, Precenicco, Premariacco, Preone, Prepotto, Pulfero, Ragogna, Ravascletto, Raveo, Reana del Rojale, Remanzacco, Resia, Resiutta, Rigolato, Rive D\'Arcano, Rivignano Teor, Ronchis, Ruda, San Daniele del Friuli, San Giorgio di Nogaro, San Giovanni al Natisone, San Leonardo, San Pietro al Natisone, San Vito al Torre, San Vito di Fagagna, Santa Maria La Longa, Sauris, Savogna, Sedegliano, Socchieve, Stregna, Sutrio, Taipana, Talmassons, Tarcento, Tarvisio, Tavagnacco, Terzo d\'Aquileia, Tolmezzo, Torreano, Torviscosa, Trasaghis, Treppo Carnico, Treppo Grande, Tricesimo, Trivignano Udinese, Udine, Varmo, Venzone, Verzegnis, Villa Santina, Villa Vicentina, Visco, Zuglio', '2019-05-30 22:16:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 10, 'Frosinone', 'Acquafondata, Acuto, Alatri, Alvito, Amaseno, Anagni, Aquino, Arce, Arnara, Arpino, Atina, Ausonia, Belmonte Castello, Boville Ernica, Broccostella, Campoli Appennino, Casalattico, Casalvieri, Cassino, Castelliri, Castelnuovo Parano, Castro dei Volsci, Castrocielo, Ceccano, Ceprano, Cervaro, Colfelice, Colle San Magno, Collepardo, Coreno Ausonio, Esperia, Falvaterra, Ferentino, Filettino, Fiuggi, Fontana Liri, Fontechiari, Frosinone, Fumone, Gallinaro, Giuliano di Roma, Guarcino, Isola del Liri, Monte San Giovanni Campano, Morolo, Paliano, Pastena, Patrica, Pescosolido, Picinisco, Pico, Piedimonte San Germano, Piglio, Pignataro Interamna, Pofi, Pontecorvo, Posta Fibreno, Ripi, Rocca d\'Arce, Roccasecca, San Biagio Saracinisco, San Donato Val di Comino, San Giorgio a Liri, San Giovanni Incarico, San Vittore del Lazio, Sant\'Ambrogio sul Garigliano, Sant\'Andrea del Garigliano, Sant\'Apollinare, Sant\'Elia Fiumerapido, Santopadre, Serrone, Settefrati, Sgurgola, Sora, Strangolagalli, Supino, Terelle, Torre Cajetani, Torrice, Trevi nel Lazio, Trivigliano, Vallecorsa, Vallemaio, Vallerotonda, Veroli, Vicalvi, Vico nel Lazio, Villa Latina, Villa Santa Lucia, Villa Santo Stefano, Viticuso', '2019-05-30 22:18:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 10, 'Latina', 'Aprilia, Bassiano, Campodimele, Castelforte, Cisterna di Latina, Cori, Fondi, Formia, Gaeta, Itri, Latina, Lenola, Maenza, Minturno, Monte San Biagio, Norma, Pontinia, Ponza, Priverno, Prossedi, Rocca Massima, Roccagorga, Roccasecca dei Volsci, Sabaudia, San Felice Circeo, Santi Cosma e Damiano, Sermoneta, Sezze, Sonnino, Sperlonga, Spigno Saturnia, Terracina, Ventotene', '2019-05-30 22:18:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(33, 10, 'Rieti', 'Accumoli, Amatrice, Antrodoco, Ascrea, Belmonte in Sabina, Borbona, Borgo Velino, Borgorose, Cantalice, Cantalupo in Sabina, Casaprota, Casperia, Castel di Tora, Castel Sant\'Angelo, Castelnuovo di Farfa, Cittaducale, Cittareale, Collalto Sabino, Colle di Tora, Collegiove, Collevecchio, Colli sul Velino, Concerviano, Configni, Contigliano, Cottanello, Fara in Sabina, Fiamignano, Forano, Frasso Sabino, Greccio, Labro, Leonessa, Longone Sabino, Magliano Sabina, Marcetelli, Micigliano, Mompeo, Montasola, Monte San Giovanni in Sabina, Montebuono, Monteleone Sabino, Montenero Sabino, Montopoli di Sabina, Morro Reatino, Nespolo, Orvinio, Paganico Sabino, Pescorocchiano, Petrella Salto, Poggio Bustone, Poggio Catino, Poggio Mirteto, Poggio Moiano, Poggio Nativo, Poggio San Lorenzo, Posta, Pozzaglia Sabina, Rieti, Rivodutri, Rocca Sinibalda, Roccantica, Salisano, Scandriglia, Selci, Stimigliano, Tarano, Toffia, Torri in Sabina, Torricella in Sabina, Turania, Vacone, Varco Sabino', '2019-05-30 22:18:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(34, 10, 'Rome', 'Affile, Agosta, Albano Laziale, Allumiere, Anguillara Sabazia, Anticoli Corrado, Anzio, Arcinazzo Romano, Ardea, Ariccia, Arsoli, Artena, Bellegra, Bracciano, Camerata Nuova, Campagnano di Roma, Canale Monterano, Canterano, Capena, Capranica Prenestina, Carpineto Romano, Casape, Castel Gandolfo, Castel Madama, Castel San Pietro Romano, Castelnuovo di Porto, Cave, Cerreto Laziale, Cervara di Roma, Cerveteri, Ciampino, Ciciliano, Cineto Romano, Civitavecchia, Civitella San Paolo, Colleferro, Colonna, Fiano Romano, Filacciano, Fiumicino, Fonte Nuova, Formello, Frascati, Gallicano nel Lazio, Gavignano, Genazzano, Genzano di Roma, Gerano, Gorga, Grottaferrata, Guidonia Montecelio, Jenne, Labico, Ladispoli, Lanuvio, Lariano, Licenza, Magliano Romano, Mandela, Manziana, Marano Equo, Marcellina, Marino, Mazzano Romano, Mentana, Monte Compatri, Monte Porzio Catone, Monteflavio, Montelanico, Montelibretti, Monterotondo, Montorio Romano, Moricone, Morlupo, Nazzano, Nemi, Nerola, Nettuno, Olevano Romano, Palestrina, Palombara Sabina, Percile, Pisoniano, Poli, Pomezia, Ponzano Romano, Riano, Rignano Flaminio, Riofreddo, Rocca Canterano, Rocca di Cave, Rocca di Papa, Rocca Priora, Rocca Santo Stefano, Roccagiovine, Roiate, Rome, Roviano, Sacrofano, Sambuci, San Cesareo, San Gregorio da Sassola, San Polo dei Cavalieri, San Vito Romano, Santa Marinella, Sant\'Angelo Romano, Sant\'Oreste, Saracinesco, Segni, Subiaco, Tivoli, Tolfa, Torrita Tiberina, Trevignano Romano, Vallepietra, Vallinfreda, Valmontone, Velletri, Vicovaro, Vivaro Romano, Zagarolo', '2019-05-30 22:18:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 10, 'Viterbo', 'Acquapendente, Arlena di Castro, Bagnoregio, Barbarano Romano, Bassano in Teverina, Bassano Romano, Blera, Bolsena, Bomarzo, Calcata, Canepina, Canino, Capodimonte, Capranica, Caprarola, Carbognano, Castel Sant\'Elia, Castiglione in Teverina, Celleno, Cellere, Civita Castellana, Civitella d\'Agliano, Corchiano, Fabrica di Roma, Faleria, Farnese, Gallese, Gradoli, Graffignano, Grotte di Castro, Ischia di Castro, Latera, Lubriano, Marta, Montalto di Castro, Monte Romano, Montefiascone, Monterosi, Nepi, Onano, Oriolo Romano, Orte, Piansano, Proceno, Ronciglione, San Lorenzo Nuovo, Soriano nel Cimino, Sutri, Tarquinia, Tessennano, Tuscania, Valentano, Vallerano, Vasanello, Vejano, Vetralla, Vignanello, Villa San Giovanni in Tuscia, Viterbo, Vitorchiano', '2019-05-30 22:18:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 13, 'Ancona', 'Agugliano, Ancona, Arcevia, Barbara, Belvedere Ostrense, Camerano, Camerata Picena, Castelbellino, Castelfidardo, Castelleone di Suasa, Castelplanio, Cerreto d\'Esi, Chiaravalle, Corinaldo, Cupramontana, Fabriano, Falconara Marittima, Filottrano, Genga, Jesi, Loreto, Maiolati Spontini, Mergo, Monsano, Monte Roberto, Monte San Vito, Montecarotto, Montemarciano, Morro d\'Alba, Numana, Offagna, Osimo, Ostra, Ostra Vetere, Poggio San Marcello, Polverigi, Rosora, San Marcello, San Paolo di Jesi, Santa Maria Nuova, Sassoferrato, Senigallia, Serra de\' Conti, Serra San Quirico, Sirolo, Staffolo, Trecastelli', '2019-05-30 22:21:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 13, 'Ascoli Piceno', 'Acquasanta Terme, Acquaviva Picena, Appignano del Tronto, Arquata del Tronto, Ascoli Piceno, Carassai, Castel di Lama, Castignano, Castorano, Colli del Tronto, Comunanza, Cossignano, Cupra Marittima, Folignano, Force, Grottammare, Maltignano, Massignano, Monsampolo del Tronto, Montalto delle Marche, Montedinove, Montefiore dell\'Aso, Montegallo, Montemonaco, Monteprandone, Offida, Palmiano, Ripatransone, Roccafluvione, Rotella, San Benedetto del Tronto, Spinetoli, Venarotta', '2019-05-30 22:21:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 13, 'Fermo', 'Altidona, Amandola, Belmonte Piceno, Campofilone, Falerone, Fermo, Francavilla d\'Ete, Grottazzolina, Lapedona, Magliano di Tenna, Massa Fermana, Monsampietro Morico, Montappone, Monte Giberto, Monte Rinaldo, Monte San Pietrangeli, Monte Urano, Monte Vidon Combatte, Monte Vidon Corrado, Montefalcone Appennino, Montefortino, Montegiorgio, Montegranaro, Monteleone di Fermo, Montelparo, Monterubbiano, Montottone, Moresco, Ortezzano, Pedaso, Petritoli, Ponzano di Fermo, Porto San Giorgio, Porto Sant\'Elpidio, Rapagnano, Santa Vittoria in Matenano, Sant\'Elpidio a Mare, Servigliano, Smerillo, Torre San Patrizio', '2019-05-30 22:21:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 13, 'Macerata', 'Acquacanina, Apiro, Appignano, Belforte del Chienti, Bolognola, Caldarola, Camerino, Camporotondo di Fiastrone, Castelraimondo, Castelsantangelo sul Nera, Cessapalombo, Cingoli, Civitanova Marche, Colmurano, Corridonia, Esanatoglia, Fiastra, Fiordimonte, Fiuminata, Gagliole, Gualdo, Loro Piceno, Macerata, Matelica, Mogliano, Monte Cavallo, Monte San Giusto, Monte San Martino, Montecassiano, Montecosaro, Montefano, Montelupone, Morrovalle, Muccia, Penna San Giovanni, Petriolo, Pieve Torina, Pievebovigliana, Pioraco, Poggio San Vicino, Pollenza, Porto Recanati, Potenza Picena, Recanati, Ripe San Ginesio, San Ginesio, San Severino Marche, Sant\'Angelo in Pontano, Sarnano, Sefro, Serrapetrona, Serravalle di Chienti, Tolentino, Treia, Urbisaglia, Ussita, Visso', '2019-05-30 22:21:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 13, 'Pesaro e Urbino', 'Acqualagna, Apecchio, Auditore, Barchi, Belforte all\'Isauro, Borgo Pace, Cagli, Cantiano, Carpegna, Cartoceto, Fano, Fermignano, Fossombrone, Fratte Rosa, Frontino, Frontone, Gabicce Mare, Gradara, Isola del Piano, Lunano, Macerata Feltria, Mercatello sul Metauro, Mercatino Conca, Mombaroccio, Mondavio, Mondolfo, Monte Cerignone, Monte Grimano Terme, Monte Porzio, Montecalvo in Foglia, Monteciccardo, Montecopiolo, Montefelcino, Montelabbate, Montemaggiore al Metauro, Orciano di Pesaro, Peglio, Pergola, Pesaro, Petriano, Piagge, Piandimeleto, Pietrarubbia, Piobbico, Saltara, San Costanzo, San Giorgio di Pesaro, San Lorenzo in Campo, Sant\'Angelo in Vado, Sant\'Ippolito, Sassocorvaro, Sassofeltrio, Serra Sant\'Abbondio, Serrungarina, Tavoleto, Tavullia, Urbania, Urbino, Vallefoglia', '2019-05-30 22:21:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 4, 'Genoa', 'Arenzano, Avegno, Bargagli, Bogliasco, Borzonasca, Busalla, Camogli, Campo Ligure, Campomorone, Carasco, Casarza Ligure, Casella, Castiglione Chiavarese, Ceranesi, Chiavari, Cicagna, Cogoleto, Cogorno, Coreglia Ligure, Crocefieschi, Davagna, Fascia, Favale di Malvaro, Fontanigorda, Genoa, Gorreto, Isola del Cantone, Lavagna, Leivi, Lorsica, Lumarzo, Masone, Mele, Mezzanego, Mignanego, Moconesi, Moneglia, Montebruno, Montoggio, Ne, Neirone, Orero, Pieve Ligure, Portofino, Propata, Rapallo, Recco, Rezzoaglio, Ronco Scrivia, Rondanina, Rossiglione, Rovegno, San Colombano Certenoli, Santa Margherita Ligure, Santo Stefano d\'Aveto, Sant\'Olcese, Savignone, Serra Riccò, Sestri Levante, Sori, Tiglieto, Torriglia, Tribogna, Uscio, Valbrevenna, Vobbia, Zoagli', '2019-05-30 22:24:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 4, 'Imperia', 'Airole, Apricale, Aquila d\'Arroscia, Armo, Aurigo, Badalucco, Bajardo, Bordighera, Borghetto d\'Arroscia, Borgomaro, Camporosso, Caravonica, Carpasio, Castel Vittorio, Castellaro, Ceriana, Cervo, Cesio, Chiusanico, Chiusavecchia, Cipressa, Civezza, Cosio d\'Arroscia, Costarainera, Diano Arentino, Diano Castello, Diano Marina, Diano San Pietro, Dolceacqua, Dolcedo, Imperia, Isolabona, Lucinasco, Mendatica, Molini di Triora, Montalto Ligure, Montegrosso Pian Latte, Olivetta San Michele, Ospedaletti, Perinaldo, Pietrabruna, Pieve di Teco, Pigna, Pompeiana, Pontedassio, Pornassio, Prelà, Ranzo, Rezzo, Riva Ligure, Rocchetta Nervina, San Bartolomeo al Mare, San Biagio della Cima, San Lorenzo al Mare, Sanremo, Santo Stefano al Mare, Seborga, Soldano, Taggia, Terzorio, Triora, Vallebona, Vallecrosia, Vasia, Ventimiglia, Vessalico, Villa Faraldi', '2019-05-30 22:24:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 4, 'La Spezia', 'Ameglia, Arcola, Beverino, Bolano, Bonassola, Borghetto di Vara, Brugnato, Calice al Cornoviglio, Carro, Carrodano, Castelnuovo Magra, Deiva Marina, Follo, Framura, La Spezia, Lerici, Levanto, Maissana, Monterosso al Mare, Ortonovo, Pignone, Portovenere, Riccò del Golfo di Spezia, Riomaggiore, Rocchetta di Vara, Santo Stefano di Magra, Sarzana, Sesta Godano, Varese Ligure, Vernazza, Vezzano Ligure, Zignago', '2019-05-30 22:24:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 4, 'Savona', 'Alassio, Albenga, Albisola Superiore, Albissola Marina, Altare, Andora, Arnasco, Balestrino, Bardineto, Bergeggi, Boissano, Borghetto Santo Spirito, Borgio Verezzi, Bormida, Cairo Montenotte, Calice Ligure, Calizzano, Carcare, Casanova Lerrone, Castelbianco, Castelvecchio di Rocca Barbena, Celle Ligure, Cengio, Ceriale, Cisano sul Neva, Cosseria, Dego, Erli, Finale Ligure, Garlenda, Giustenice, Giusvalla, Laigueglia, Loano, Magliolo, Mallare, Massimino, Millesimo, Mioglia, Murialdo, Nasino, Noli, Onzo, Orco Feglino, Ortovero, Osiglia, Pallare, Piana Crixia, Pietra Ligure, Plodio, Pontinvrea, Quiliano, Rialto, Roccavignale, Sassello, Savona, Spotorno, Stella, Stellanello, Testico, Toirano, Tovo San Giacomo, Urbe, Vado Ligure, Varazze, Vendone, Vezzi Portio, Villanova d\'Albenga, Zuccarello', '2019-05-30 22:24:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(45, 6, 'Bergamo', 'Adrara San Martino, Adrara San Rocco, Albano Sant\'Alessandro, Albino, Algua, Almè, Almenno San Bartolomeo, Almenno San Salvatore, Alzano Lombardo, Ambivere, Antegnate, Arcene, Ardesio, Arzago d\'Adda, Averara, Aviatico, Azzano San Paolo, Azzone, Bagnatica, Barbata, Bariano, Barzana, Bedulita, Berbenno, Bergamo, Berzo San Fermo, Bianzano, Blello, Bolgare, Boltiere, Bonate Sopra, Bonate Sotto, Borgo di Terzo, Bossico, Bottanuco, Bracca, Branzi, Brembate, Brembate di Sopra, Brignano Gera d\'Adda, Brumano, Brusaporto, Calcinate, Calcio, Calusco d\'Adda, Calvenzano, Camerata Cornello, Canonica d\'Adda, Capizzone, Capriate San Gervasio, Caprino Bergamasco, Caravaggio, Carobbio degli Angeli, Carona, Carvico, Casazza, Casirate d\'Adda, Casnigo, Cassiglio, Castel Rozzone, Castelli Calepio, Castione della Presolana, Castro, Cavernago, Cazzano Sant\'Andrea, Cenate Sopra, Cenate Sotto, Cene, Cerete, Chignolo d\'Isola, Chiuduno, Cisano Bergamasco, Ciserano, Cividate al Piano, Clusone, Colere, Cologno al Serio, Colzate, Comun Nuovo, Corna Imagna, Cornalba, Cortenuova, Costa di Mezzate, Costa Serina, Costa Valle Imagna, Costa Volpino, Covo, Credaro, Curno, Cusio, Dalmine, Dossena, Endine Gaiano, Entratico, Fara Gera d\'Adda, Fara Olivana con Sola, Filago, Fino del Monte, Fiorano al Serio, Fontanella, Fonteno, Foppolo, Foresto Sparso, Fornovo San Giovanni, Fuipiano Valle Imagna, Gandellino, Gandino, Gandosso, Gaverina Terme, Gazzaniga, Ghisalba, Gorlago, Gorle, Gorno, Grassobbio, Gromo, Grone, Grumello del Monte, Isola di Fondra, Isso, Lallio, Leffe, Lenna, Levate, Locatello, Lovere, Lurano, Luzzana, Madone, Mapello, Martinengo, Medolago, Mezzoldo, Misano di Gera d\'Adda, Moio de\' Calvi, Monasterolo del Castello, Montello, Morengo, Mornico al Serio, Mozzanica, Mozzo, Nembro, Olmo al Brembo, Oltre il Colle, Oltressenda Alta, Oneta, Onore, Orio al Serio, Ornica, Osio Sopra, Osio Sotto, Pagazzano, Paladina, Palazzago, Palosco, Parre, Parzanica, Pedrengo, Peia, Pianico, Piario, Piazza Brembana, Piazzatorre, Piazzolo, Pognano, Ponte Nossa, Ponte San Pietro, Ponteranica, Pontida, Pontirolo Nuovo, Pradalunga, Predore, Premolo, Presezzo, Pumenengo, Ranica, Ranzanico, Riva di Solto, Rogno, Romano di Lombardia, Roncobello, Roncola, Rota d\'Imagna, Rovetta, San Giovanni Bianco, San Paolo d\'Argon, San Pellegrino Terme, Santa Brigida, Sant\'Omobono Terme, Sarnico, Scanzorosciate, Schilpario, Sedrina, Selvino, Seriate, Serina, Solto Collina, Solza, Songavazzo, Sorisole, Sotto il Monte Giovanni XXIII, Sovere, Spinone al Lago, Spirano, Stezzano, Strozza, Suisio, Taleggio, Tavernola Bergamasca, Telgate, Terno d\'Isola, Torre Boldone, Torre de\' Roveri, Torre Pallavicina, Trescore Balneario, Treviglio, Treviolo, Ubiale Clanezzo, Urgnano, Val Brembilla, Valbondione, Valbrembo, Valgoglio, Valleve, Valnegra, Valtorta, Vedeseta, Verdellino, Verdello, Vertova, Viadanica, Vigano San Martino, Vigolo, Villa d\'Adda, Villa d\'Almè, Villa di Serio, Villa d\'Ogna, Villongo, Vilminore di Scalve, Zandobbio, Zanica, Zogno', '2019-05-30 22:26:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 6, 'Brescia', 'Acquafredda, Adro, Agnosine, Alfianello, Anfo, Angolo Terme, Artogne, Azzano Mella, Bagnolo Mella, Bagolino, Barbariga, Barghe, Bassano Bresciano, Bedizzole, Berlingo, Berzo Demo, Berzo Inferiore, Bienno, Bione, Borgo San Giacomo, Borgosatollo, Borno, Botticino, Bovegno, Bovezzo, Brandico, Braone, Breno, Brescia, Brione, Caino, Calcinato, Calvagese della Riviera, Calvisano, Capo di Ponte, Capovalle, Capriano del Colle, Capriolo, Carpenedolo, Castegnato, Castel Mella, Castelcovati, Castenedolo, Casto, Castrezzato, Cazzago San Martino, Cedegolo, Cellatica, Cerveno, Ceto, Cevo, Chiari, Cigole, Cimbergo, Cividate Camuno, Coccaglio, Collebeato, Collio, Cologne, Comezzano-Cizzago, Concesio, Corte Franca, Corteno Golgi, Corzano, Darfo Boario Terme, Dello, Desenzano del Garda, Edolo, Erbusco, Esine, Fiesse, Flero, Gambara, Gardone Riviera, Gardone Val Trompia, Gargnano, Gavardo, Ghedi, Gianico, Gottolengo, Gussago, Idro, Incudine, Irma, Iseo, Isorella, Lavenone, Leno, Limone sul Garda, Lodrino, Lograto, Lonato del Garda, Longhena, Losine, Lozio, Lumezzane, Maclodio, Magasa, Mairano, Malegno, Malonno, Manerba del Garda, Manerbio, Marcheno, Marmentino, Marone, Mazzano, Milzano, Moniga del Garda, Monno, Monte Isola, Monticelli Brusati, Montichiari, Montirone, Mura, Muscoline, Nave, Niardo, Nuvolento, Nuvolera, Odolo, Offlaga, Ome, Ono San Pietro, Orzinuovi, Orzivecchi, Ospitaletto, Ossimo, Padenghe sul Garda, Paderno Franciacorta, Paisco Loveno, Paitone, Palazzolo sull\'Oglio, Paratico, Paspardo, Passirano, Pavone del Mella, Pertica Alta, Pertica Bassa, Pezzaze, Pian Camuno, Piancogno, Pisogne, Polaveno, Polpenazze del Garda, Pompiano, Poncarale, Ponte di Legno, Pontevico, Pontoglio, Pozzolengo, Pralboino, Preseglie, Prevalle, Provaglio d\'Iseo, Provaglio Val Sabbia, Puegnago sul Garda, Quinzano d\'Oglio, Remedello, Rezzato, Roccafranca, Rodengo Saiano, Roè Volciano, Roncadelle, Rovato, Rudiano, Sabbio Chiese, Sale Marasino, Salò, San Felice del Benaco, San Gervasio Bresciano, San Paolo, San Zeno Naviglio, Sarezzo, Saviore dell\'Adamello, Sellero, Seniga, Serle, Sirmione, Soiano del Lago, Sonico, Sulzano, Tavernole sul Mella, Temù, Tignale, Torbole Casaglia, Toscolano-Maderno, Travagliato, Tremosine sul Garda, Trenzano, Treviso Bresciano, Urago d\'Oglio, Vallio Terme, Valvestino, Verolanuova, Verolavecchia, Vestone, Vezza d\'Oglio, Villa Carcina, Villachiara, Villanuova sul Clisi, Vione, Visano, Vobarno, Zone', '2019-05-30 22:26:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 6, 'Como', 'Albavilla, Albese con Cassano, Albiolo, Alserio, Alzate Brianza, Anzano del Parco, Appiano Gentile, Argegno, Arosio, Asso, Barni, Bellagio, Bene Lario, Beregazzo con Figliaro, Binago, Bizzarone, Blessagno, Blevio, Bregnano, Brenna, Brienno, Brunate, Bulgarograsso, Cabiate, Cadorago, Caglio, Cagno, Campione d\'Italia, Cantù, Canzo, Capiago Intimiano, Carate Urio, Carbonate, Carimate, Carlazzo, Carugo, Casasco d\'Intelvi, Caslino d\'Erba, Casnate con Bernate, Cassina Rizzardi, Castelmarte, Castelnuovo Bozzente, Castiglione d\'Intelvi, Cavallasca, Cavargna, Cerano d\'Intelvi, Cermenate, Cernobbio, Cirimido, Claino con Osteno, Colonno, Colverde, Como, Corrido, Cremia, Cucciago, Cusino, Dizzasco, Domaso, Dongo, Dosso del Liro, Erba, Eupilio, Faggeto Lario, Faloppio, Fenegrò, Figino Serenza, Fino Mornasco, Garzeno, Gera Lario, Grandate, Grandola ed Uniti, Gravedona ed Uniti, Griante, Guanzate, Inverigo, Laglio, Laino, Lambrugo, Lanzo d\'Intelvi, Lasnigo, Lezzeno, Limido Comasco, Lipomo, Livo, Locate Varesino, Lomazzo, Longone al Segrino, Luisago, Lurago d\'Erba, Lurago Marinone, Lurate Caccivio, Magreglio, Mariano Comense, Maslianico, Menaggio, Merone, Moltrasio, Monguzzo, Montano Lucino, Montemezzo, Montorfano, Mozzate, Musso, Nesso, Novedrate, Olgiate Comasco, Oltrona di San Mamette, Orsenigo, Peglio, Pellio Intelvi, Pianello del Lario, Pigra, Plesio, Pognana Lario, Ponna, Ponte Lambro, Porlezza, Proserpio, Pusiano, Ramponio Verna, Rezzago, Rodero, Ronago, Rovellasca, Rovello Porro, Sala Comacina, San Bartolomeo Val Cavargna, San Fedele Intelvi, San Fermo della Battaglia, San Nazzaro Val Cavargna, San Siro, Schignano, Senna Comasco, Solbiate, Sorico, Sormano, Stazzona, Tavernerio, Torno, Tremezzina, Trezzone, Turate, Uggiate-Trevano, Val Rezzo, Valbrona, Valmorea, Valsolda, Veleso, Veniano, Vercana, Vertemate con Minoprio, Villa Guardia, Zelbio', '2019-05-30 22:26:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 6, 'Cremona', 'Acquanegra Cremonese, Agnadello, Annicco, Azzanello, Bagnolo Cremasco, Bonemerse, Bordolano, Ca\' d\'Andrea, Calvatone, Camisano, Campagnola Cremasca, Capergnanica, Cappella Cantone, Cappella de\' Picenardi, Capralba, Casalbuttano ed Uniti, Casale Cremasco-Vidolasco, Casaletto Ceredano, Casaletto di Sopra, Casaletto Vaprio, Casalmaggiore, Casalmorano, Castel Gabbiano, Casteldidone, Castelleone, Castelverde, Castelvisconti, Cella Dati, Chieve, Cicognolo, Cingia de\' Botti, Corte de\' Cortesi con Cignone, Corte de\' Frati, Credera Rubbiano, Crema, Cremona, Cremosano, Crotta d\'Adda, Cumignano sul Naviglio, Derovere, Dovera, Drizzona, Fiesco, Formigara, Gabbioneta-Binanuova, Gadesco-Pieve Delmona, Genivolta, Gerre de\' Caprioli, Gombito, Grontardo, Grumello Cremonese ed Uniti, Gussola, Isola Dovarese, Izano, Madignano, Malagnino, Martignana di Po, Monte Cremasco, Montodine, Moscazzano, Motta Baluffi, Offanengo, Olmeneta, Ostiano, Paderno Ponchielli, Palazzo Pignano, Pandino, Persico Dosimo, Pescarolo ed Uniti, Pessina Cremonese, Piadena, Pianengo, Pieranica, Pieve d\'Olmi, Pieve San Giacomo, Pizzighettone, Pozzaglio ed Uniti, Quintano, Ricengo, Ripalta Arpina, Ripalta Cremasca, Ripalta Guerina, Rivarolo del Re ed Uniti, Rivolta d\'Adda, Robecco d\'Oglio, Romanengo, Salvirola, San Bassano, San Daniele Po, San Giovanni in Croce, San Martino del Lago, Scandolara Ravara, Scandolara Ripa d\'Oglio, Sergnano, Sesto ed Uniti, Solarolo Rainerio, Soncino, Soresina, Sospiro, Spinadesco, Spineda, Spino d\'Adda, Stagno Lombardo, Ticengo, Torlino Vimercati, Tornata, Torre de\' Picenardi, Torricella del Pizzo, Trescore Cremasco, Trigolo, Vaiano Cremasco, Vailate, Vescovato, Volongo, Voltido', '2019-05-30 22:26:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 6, 'Lecco', 'Abbadia Lariana, Airuno, Annone di Brianza, Ballabio, Barzago, Barzanò, Barzio, Bellano, Bosisio Parini, Brivio, Bulciago, Calco, Calolziocorte, Carenno, Casargo, Casatenovo, Cassago Brianza, Cassina Valsassina, Castello di Brianza, Cernusco Lombardone, Cesana Brianza, Civate, Colico, Colle Brianza, Cortenova, Costa Masnaga, Crandola Valsassina, Cremella, Cremeno, Dervio, Dolzago, Dorio, Ello, Erve, Esino Lario, Galbiate, Garbagnate Monastero, Garlate, Imbersago, Introbio, Introzzo, La Valletta Brianza, Lecco, Lierna, Lomagna, Malgrate, Mandello del Lario, Margno, Merate, Missaglia, Moggio, Molteno, Monte Marenzo, Montevecchia, Monticello Brianza, Morterone, Nibionno, Oggiono, Olgiate Molgora, Olginate, Oliveto Lario, Osnago, Paderno d\'Adda, Pagnona, Parlasco, Pasturo, Perledo, Pescate, Premana, Primaluna, Robbiate, Rogeno, Santa Maria Hoè, Sirone, Sirtori, Sueglio, Suello, Taceno, Torre de\' Busi, Tremenico, Valgreghentino, Valmadrera, Varenna, Vendrogno, Vercurago, Verderio, Vestreno, Viganò', '2019-05-30 22:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 6, 'Lodi', 'Abbadia Cerreto, Bertonico, Boffalora d\'Adda, Borghetto Lodigiano, Borgo San Giovanni, Brembio, Camairago, Casaletto Lodigiano, Casalmaiocco, Casalpusterlengo, Caselle Landi, Caselle Lurani, Castelnuovo Bocca d\'Adda, Castiglione d\'Adda, Castiraga Vidardo, Cavacurta, Cavenago d\'Adda, Cervignano d\'Adda, Codogno, Comazzo, Cornegliano Laudense, Corno Giovine, Cornovecchio, Corte Palasio, Crespiatica, Fombio, Galgagnano, Graffignana, Guardamiglio, Livraga, Lodi, Lodi Vecchio, Maccastorna, Mairago, Maleo, Marudo, Massalengo, Meleti, Merlino, Montanaso Lombardo, Mulazzano, Orio Litta, Ospedaletto Lodigiano, Ossago Lodigiano, Pieve Fissiraga, Salerano sul Lambro, San Fiorano, San Martino in Strada, San Rocco al Porto, Sant\'Angelo Lodigiano, Santo Stefano Lodigiano, Secugnago, Senna Lodigiana, Somaglia, Sordio, Tavazzano con Villavesco, Terranova dei Passerini, Turano Lodigiano, Valera Fratta, Villanova del Sillaro, Zelo Buon Persico', '2019-05-30 22:26:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 6, 'Mantova', 'Acquanegra sul Chiese, Asola, Bagnolo San Vito, Bigarello, Borgo Virgilio, Borgofranco sul Po, Bozzolo, Canneto sull\'Oglio, Carbonara di Po, Casalmoro, Casaloldo, Casalromano, Castel d\'Ario, Castel Goffredo, Castelbelforte, Castellucchio, Castiglione delle Stiviere, Cavriana, Ceresara, Commessaggio, Curtatone, Dosolo, Felonica, Gazoldo degli Ippoliti, Gazzuolo, Goito, Gonzaga, Guidizzolo, Magnacavallo, Mantova, Marcaria, Mariana Mantovana, Marmirolo, Medole, Moglia, Monzambano, Motteggiana, Ostiglia, Pegognaga, Pieve di Coriano, Piubega, Poggio Rusco, Pomponesco, Ponti sul Mincio, Porto Mantovano, Quingentole, Quistello, Redondesco, Revere, Rivarolo Mantovano, Rodigo, Roncoferraro, Roverbella, Sabbioneta, San Benedetto Po, San Giacomo delle Segnate, San Giorgio di Mantova, San Giovanni del Dosso, San Martino dall\'Argine, Schivenoglia, Sermide, Serravalle a Po, Solferino, Sustinente, Suzzara, Viadana, Villa Poma, Villimpenta, Volta Mantovana', '2019-05-30 22:26:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 6, 'Milan', 'Abbiategrasso, Albairate, Arconate, Arese, Arluno, Assago, Baranzate, Bareggio, Basiano, Basiglio, Bellinzago Lombardo, Bernate Ticino, Besate, Binasco, Boffalora Sopra Ticino, Bollate, Bresso, Bubbiano, Buccinasco, Buscate, Bussero, Busto Garolfo, Calvignasco, Cambiago, Canegrate, Carpiano, Carugate, Casarile, Casorezzo, Cassano d\'Adda, Cassina de\' Pecchi, Cassinetta di Lugagnano, Castano Primo, Cernusco sul Naviglio, Cerro al Lambro, Cerro Maggiore, Cesano Boscone, Cesate, Cinisello Balsamo, Cisliano, Cologno Monzese, Colturano, Corbetta, Cormano, Cornaredo, Corsico, Cuggiono, Cusago, Cusano Milanino, Dairago, Dresano, Gaggiano, Garbagnate Milanese, Gessate, Gorgonzola, Grezzago, Gudo Visconti, Inveruno, Inzago, Lacchiarella, Lainate, Legnano, Liscate, Locate di Triulzi, Magenta, Magnago, Marcallo con Casone, Masate, Mediglia, Melegnano, Melzo, Mesero, Milan, Morimondo, Motta Visconti, Nerviano, Nosate, Novate Milanese, Noviglio, Opera, Ossona, Ozzero, Paderno Dugnano, Pantigliate, Parabiago, Paullo, Pero, Peschiera Borromeo, Pessano con Bornago, Pieve Emanuele, Pioltello, Pogliano Milanese, Pozzo d\'Adda, Pozzuolo Martesana, Pregnana Milanese, Rescaldina, Rho, Robecchetto con Induno, Robecco sul Naviglio, Rodano, Rosate, Rozzano, San Colombano al Lambro, San Donato Milanese, San Giorgio su Legnano, San Giuliano Milanese, San Vittore Olona, San Zenone al Lambro, Santo Stefano Ticino, Sedriano, Segrate, Senago, Sesto San Giovanni, Settala, Settimo Milanese, Solaro, Trezzano Rosa, Trezzano sul Naviglio, Trezzo sull\'Adda, Tribiano, Truccazzano, Turbigo, Vanzaghello, Vanzago, Vaprio d\'Adda, Vermezzo, Vernate, Vignate, Villa Cortese, Vimodrone, Vittuone, Vizzolo Predabissi, Zelo Surrigone, Zibido San Giacomo', '2019-05-30 22:27:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 6, 'Monza e della Brianza', 'Agrate Brianza, Aicurzio, Albiate, Arcore, Barlassina, Bellusco, Bernareggio, Besana in Brianza, Biassono, Bovisio-Masciago, Briosco, Brugherio, Burago di Molgora, Busnago, Camparada, Caponago, Carate Brianza, Carnate, Cavenago di Brianza, Ceriano Laghetto, Cesano Maderno, Cogliate, Concorezzo, Cornate d\'Adda, Correzzana, Desio, Giussano, Lazzate, Lentate sul Seveso, Lesmo, Limbiate, Lissone, Macherio, Meda, Mezzago, Misinto, Monza, Muggiò, Nova Milanese, Ornago, Renate, Roncello, Ronco Briantino, Seregno, Seveso, Sovico, Sulbiate, Triuggio, Usmate Velate, Varedo, Vedano al Lambro, Veduggio con Colzano, Verano Brianza, Villasanta, Vimercate', '2019-05-30 22:27:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(54, 6, 'Pavia', 'Alagna, Albaredo Arnaboldi, Albonese, Albuzzano, Arena Po, Badia Pavese, Bagnaria, Barbianello, Bascapè, Bastida Pancarana, Battuda, Belgioioso, Bereguardo, Borgarello, Borgo Priolo, Borgo San Siro, Borgoratto Mormorolo, Bornasco, Bosnasco, Brallo di Pregola, Breme, Bressana Bottarone, Broni, Calvignano, Campospinoso, Candia Lomellina, Canevino, Canneto Pavese, Carbonara al Ticino, Casanova Lonati, Casatisma, Casei Gerola, Casorate Primo, Cassolnovo, Castana, Casteggio, Castelletto di Branduzzo, Castello d\'Agogna, Castelnovetto, Cava Manara, Cecima, Ceranova, Ceretto Lomellina, Cergnago, Certosa di Pavia, Cervesina, Chignolo Po, Cigognola, Cilavegna, Codevilla, Confienza, Copiano, Corana, Cornale e Bastida, Corteolona e Genzone, Corvino San Quirico, Costa de\' Nobili, Cozzo, Cura Carpignano, Dorno, Ferrera Erbognone, Filighera, Fortunago, Frascarolo, Galliavola, Gambarana, Gambolò, Garlasco, Gerenzago, Giussago, Godiasco Salice Terme, Golferenzo, Gravellona Lomellina, Gropello Cairoli, Inverno e Monteleone, Landriano, Langosco, Lardirago, Linarolo, Lirio, Lomello, Lungavilla, Magherno, Marcignago, Marzano, Mede, Menconico, Mezzana Bigli, Mezzana Rabattone, Mezzanino, Miradolo Terme, Montalto Pavese, Montebello della Battaglia, Montecalvo Versiggia, Montescano, Montesegale, Monticelli Pavese, Montù Beccaria, Mornico Losana, Mortara, Nicorvo, Olevano di Lomellina, Oliva Gessi, Ottobiano, Palestro, Pancarana, Parona, Pavia, Pietra de\' Giorgi, Pieve Albignola, Pieve del Cairo, Pieve Porto Morone, Pinarolo Po, Pizzale, Ponte Nizza, Portalbera, Rea, Redavalle, Retorbido, Rivanazzano Terme, Robbio, Robecco Pavese, Rocca de\' Giorgi, Rocca Susella, Rognano, Romagnese, Roncaro, Rosasco, Rovescala, Ruino, San Cipriano Po, San Damiano al Colle, San Genesio ed Uniti, San Giorgio di Lomellina, San Martino Siccomario, San Zenone al Po, Sannazzaro de\' Burgondi, Santa Cristina e Bissone, Santa Giuletta, Santa Margherita di Staffora, Santa Maria della Versa, Sant\'Alessio con Vialone, Sant\'Angelo Lomellina, Sartirana Lomellina, Scaldasole, Semiana, Silvano Pietra, Siziano, Sommo, Spessa, Stradella, Suardi, Torrazza Coste, Torre Beretti e Castellaro, Torre d\'Arese, Torre de\' Negri, Torre d\'Isola, Torrevecchia Pia, Torricella Verzate, Travacò Siccomario, Trivolzio, Tromello, Trovo, Val di Nizza, Valeggio, Valle Lomellina, Valle Salimbene, Valverde, Varzi, Velezzo Lomellina, Vellezzo Bellini, Verretto, Verrua Po, Vidigulfo, Vigevano, Villa Biscossi, Villanova d\'Ardenghi, Villanterio, Vistarino, Voghera, Volpara, Zavattarello, Zeccone, Zeme, Zenevredo, Zerbo, Zerbolò, Zinasco', '2019-05-30 22:27:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(55, 6, 'Sondrio', 'Albaredo per San Marco, Albosaggia, Andalo Valtellino, Aprica, Ardenno, Bema, Berbenno di Valtellina, Bianzone, Bormio, Buglio in Monte, Caiolo, Campodolcino, Caspoggio, Castello dell\'Acqua, Castione Andevenno, Cedrasco, Cercino, Chiavenna, Chiesa in Valmalenco, Chiuro, Cino, Civo, Colorina, Cosio Valtellino, Dazio, Delebio, Dubino, Faedo Valtellino, Forcola, Fusine, Gerola Alta, Gordona, Grosio, Grosotto, Lanzada, Livigno, Lovero, Madesimo, Mantello, Mazzo di Valtellina, Mello, Mese, Montagna in Valtellina, Morbegno, Novate Mezzola, Pedesina, Piantedo, Piateda, Piuro, Poggiridenti, Ponte in Valtellina, Postalesio, Prata Camportaccio, Rasura, Rogolo, Samolaco, San Giacomo Filippo, Sernio, Sondalo, Sondrio, Spriana, Talamona, Tartano, Teglio, Tirano, Torre di Santa Maria, Tovo di Sant\'Agata, Traona, Tresivio, Val Masino, Valdidentro, Valdisotto, Valfurva, Verceia, Vervio, Villa di Chiavenna, Villa di Tirano', '2019-05-30 22:27:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(56, 6, 'Varese', 'Agra, Albizzate, Angera, Arcisate, Arsago Seprio, Azzate, Azzio, Barasso, Bardello, Bedero Valcuvia, Besano, Besnate, Besozzo, Biandronno, Bisuschio, Bodio Lomnago, Brebbia, Bregano, Brenta, Brezzo di Bedero, Brinzio, Brissago-Valtravaglia, Brunello, Brusimpiano, Buguggiate, Busto Arsizio, Cadegliano-Viconago, Cadrezzate, Cairate, Cantello, Caravate, Cardano al Campo, Carnago, Caronno Pertusella, Caronno Varesino, Casale Litta, Casalzuigno, Casciago, Casorate Sempione, Cassano Magnago, Cassano Valcuvia, Castellanza, Castello Cabiaglio, Castelseprio, Castelveccana, Castiglione Olona, Castronno, Cavaria con Premezzo, Cazzago Brabbia, Cislago, Cittiglio, Clivio, Cocquio-Trevisago, Comabbio, Comerio, Cremenaga, Crosio della Valle, Cuasso al Monte, Cugliate-Fabiasco, Cunardo, Curiglia con Monteviasco, Cuveglio, Cuvio, Daverio, Dumenza, Duno, Fagnano Olona, Ferno, Ferrera di Varese, Gallarate, Galliate Lombardo, Gavirate, Gazzada Schianno, Gemonio, Gerenzano, Germignaga, Golasecca, Gorla Maggiore, Gorla Minore, Gornate Olona, Grantola, Inarzo, Induno Olona, Ispra, Jerago con Orago, Lavena Ponte Tresa, Laveno-Mombello, Leggiuno, Lonate Ceppino, Lonate Pozzolo, Lozza, Luino, Luvinate, Maccagno con Pino e Veddasca, Malgesso, Malnate, Marchirolo, Marnate, Marzio, Masciago Primo, Mercallo, Mesenzana, Montegrino Valtravaglia, Monvalle, Morazzone, Mornago, Oggiona con Santo Stefano, Olgiate Olona, Origgio, Orino, Osmate, Porto Ceresio, Porto Valtravaglia, Rancio Valcuvia, Ranco, Saltrio, Samarate, Sangiano, Saronno, Sesto Calende, Solbiate Arno, Solbiate Olona, Somma Lombardo, Sumirago, Taino, Ternate, Tradate, Travedona-Monate, Tronzano Lago Maggiore, Uboldo, Valganna, Varano Borghi, Varese, Vedano Olona, Venegono Inferiore, Venegono Superiore, Vergiate, Viggiù, Vizzola Ticino', '2019-05-30 22:27:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(57, 18, 'Campobasso', 'Acquaviva Collecroce, Baranello, Bojano, Bonefro, Busso, Campobasso, Campochiaro, Campodipietra, Campolieto, Campomarino, Casacalenda, Casalciprano, Castelbottaccio, Castellino del Biferno, Castelmauro, Castropignano, Cercemaggiore, Cercepiccola, Civitacampomarano, Colle d\'Anchise, Colletorto, Duronia, Ferrazzano, Fossalto, Gambatesa, Gildone, Guardialfiera, Guardiaregia, Guglionesi, Jelsi, Larino, Limosano, Lucito, Lupara, Macchia Valfortore, Mafalda, Matrice, Mirabello Sannitico, Molise, Monacilioni, Montagano, Montecilfone, Montefalcone nel Sannio, Montelongo, Montemitro, Montenero di Bisaccia, Montorio nei Frentani, Morrone del Sannio, Oratino, Palata, Petacciato, Petrella Tifernina, Pietracatella, Pietracupa, Portocannone, Provvidenti, Riccia, Ripabottoni, Ripalimosani, Roccavivara, Rotello, Salcito, San Biase, San Felice del Molise, San Giacomo degli Schiavoni, San Giovanni in Galdo, San Giuliano del Sannio, San Giuliano di Puglia, San Martino in Pensilis, San Massimo, San Polo Matese, Santa Croce di Magliano, Sant\'Angelo Limosano, Sant\'Elia a Pianisi, Sepino, Spinete, Tavenna, Termoli, Torella del Sannio, Toro, Trivento, Tufara, Ururi, Vinchiaturo', '2019-05-30 22:32:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(58, 18, 'Isernia', 'Acquaviva d\'Isernia, Agnone, Bagnoli del Trigno, Belmonte del Sannio, Cantalupo nel Sannio, Capracotta, Carovilli, Carpinone, Castel del Giudice, Castel San Vincenzo, Castelpetroso, Castelpizzuto, Castelverrino, Cerro al Volturno, Chiauci, Civitanova del Sannio, Colli a Volturno, Conca Casale, Filignano, Forlì del Sannio, Fornelli, Frosolone, Isernia, Longano, Macchia d\'Isernia, Macchiagodena, Miranda, Montaquila, Montenero Val Cocchiara, Monteroduni, Pesche, Pescolanciano, Pescopennataro, Pettoranello del Molise, Pietrabbondante, Pizzone, Poggio Sannita, Pozzilli, Rionero Sannitico, Roccamandolfi, Roccasicura, Rocchetta a Volturno, San Pietro Avellana, Santa Maria del Molise, Sant\'Agapito, Sant\'Angelo del Pesco, Sant\'Elena Sannita, Scapoli, Sessano del Molise, Sesto Campano, Vastogirardi, Venafro', '2019-05-30 22:32:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(59, 5, 'Alessandria', 'Acqui Terme, Albera Ligure, Alessandria, Alfiano Natta, Alice Bel Colle, Alluvioni Cambiò, Altavilla Monferrato, Alzano Scrivia, Arquata Scrivia, Avolasca, Balzola, Basaluzzo, Bassignana, Belforte Monferrato, Bergamasco, Berzano di Tortona, Bistagno, Borghetto di Borbera, Borgo San Martino, Borgoratto Alessandrino, Bosco Marengo, Bosio, Bozzole, Brignano-Frascata, Cabella Ligure, Camagna Monferrato, Camino, Cantalupo Ligure, Capriata d\'Orba, Carbonara Scrivia, Carentino, Carezzano, Carpeneto, Carrega Ligure, Carrosio, Cartosio, Casal Cermelli, Casale Monferrato, Casaleggio Boiro, Casalnoceto, Casasco, Cassano Spinola, Cassine, Cassinelle, Castellania, Castellar Guidobono, Castellazzo Bormida, Castelletto d\'Erro, Castelletto d\'Orba, Castelletto Merli, Castelletto Monferrato, Castelnuovo Bormida, Castelnuovo Scrivia, Castelspina, Cavatore, Cella Monte, Cereseto, Cerreto Grue, Cerrina Monferrato, Coniolo, Conzano, Costa Vescovato, Cremolino, Cuccaro Monferrato, Denice, Dernice, Fabbrica Curone, Felizzano, Fraconalto, Francavilla Bisio, Frascaro, Frassinello Monferrato, Frassineto Po, Fresonara, Frugarolo, Fubine, Gabiano, Gamalero, Garbagna, Gavazzana, Gavi, Giarole, Gremiasco, Grognardo, Grondona, Guazzora, Isola Sant\'Antonio, Lerma, Lu, Malvicino, Masio, Melazzo, Merana, Mirabello Monferrato, Molare, Molino dei Torti, Mombello Monferrato, Momperone, Moncestino, Mongiardino Ligure, Monleale, Montacuto, Montaldeo, Montaldo Bormida, Montecastello, Montechiaro d\'Acqui, Montegioco, Montemarzino, Morano sul Po, Morbello, Mornese, Morsasco, Murisengo, Novi Ligure, Occimiano, Odalengo Grande, Odalengo Piccolo, Olivola, Orsara Bormida, Ottiglio, Ovada, Oviglio, Ozzano Monferrato, Paderna, Pareto, Parodi Ligure, Pasturana, Pecetto di Valenza, Pietra Marazzi, Piovera, Pomaro Monferrato, Pontecurone, Pontestura, Ponti, Ponzano Monferrato, Ponzone, Pozzol Groppo, Pozzolo Formigaro, Prasco, Predosa, Quargnento, Quattordio, Ricaldone, Rivalta Bormida, Rivarone, Rocca Grimalda, Roccaforte Ligure, Rocchetta Ligure, Rosignano Monferrato, Sala Monferrato, Sale, San Cristoforo, San Giorgio Monferrato, San Salvatore Monferrato, San Sebastiano Curone, Sant\'Agata Fossili, Sardigliano, Sarezzano, Serralunga di Crea, Serravalle Scrivia, Sezzadio, Silvano d\'Orba, Solero, Solonghello, Spigno Monferrato, Spineto Scrivia, Stazzano, Strevi, Tagliolo Monferrato, Tassarolo, Terruggia, Terzo, Ticineto, Tortona, Treville, Trisobbio, Valenza, Valmacca, Vignale Monferrato, Vignole Borbera, Viguzzolo, Villadeati, Villalvernia, Villamiroglio, Villanova Monferrato, Villaromagnano, Visone, Volpedo, Volpeglino, Voltaggio', '2019-05-30 22:33:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 5, 'Asti', 'Agliano Terme, Albugnano, Antignano, Aramengo, Asti, Azzano d\'Asti, Baldichieri d\'Asti, Belveglio, Berzano di San Pietro, Bruno, Bubbio, Buttigliera d\'Asti, Calamandrana, Calliano, Calosso, Camerano Casasco, Canelli, Cantarana, Capriglio, Casorzo, Cassinasco, Castagnole delle Lanze, Castagnole Monferrato, Castel Boglione, Castel Rocchero, Castell\'Alfero, Castellero, Castelletto Molina, Castello di Annone, Castelnuovo Belbo, Castelnuovo Calcea, Castelnuovo Don Bosco, Cellarengo, Celle Enomondo, Cerreto d\'Asti, Cerro Tanaro, Cessole, Chiusano d\'Asti, Cinaglio, Cisterna d\'Asti, Coazzolo, Cocconato, Corsione, Cortandone, Cortanze, Cortazzone, Cortiglione, Cossombrato, Costigliole d\'Asti, Cunico, Dusino San Michele, Ferrere, Fontanile, Frinco, Grana, Grazzano Badoglio, Incisa Scapaccino, Isola d\'Asti, Loazzolo, Maranzana, Maretto, Moasca, Mombaldone, Mombaruzzo, Mombercelli, Monale, Monastero Bormida, Moncalvo, Moncucco Torinese, Mongardino, Montabone, Montafia, Montaldo Scarampi, Montechiaro d\'Asti, Montegrosso d\'Asti, Montemagno, Montiglio Monferrato, Moransengo, Nizza Monferrato, Olmo Gentile, Passerano Marmorito, Penango, Piea, Pino d\'Asti, Piovà Massaia, Portacomaro, Quaranti, Refrancore, Revigliasco d\'Asti, Roatto, Robella, Rocca d\'Arazzo, Roccaverano, Rocchetta Palafea, Rocchetta Tanaro, San Damiano d\'Asti, San Giorgio Scarampi, San Martino Alfieri, San Marzano Oliveto, San Paolo Solbrito, Scurzolengo, Serole, Sessame, Settime, Soglio, Tigliole, Tonco, Tonengo, Vaglio Serra, Valfenera, Vesime, Viale, Viarigi, Vigliano d\'Asti, Villa San Secondo, Villafranca d\'Asti, Villanova d\'Asti, Vinchio', '2019-05-30 22:34:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 5, 'Biella', 'Ailoche, Andorno Micca, Benna, Biella, Bioglio, Borriana, Brusnengo, Callabiana, Camandona, Camburzano, Campiglia Cervo, Candelo, Caprile, Casapinta, Castelletto Cervo, Cavaglià, Cerreto Castello, Cerrione, Coggiola, Cossato, Crevacuore, Curino, Donato, Dorzano, Gaglianico, Gifflenga, Graglia, Lessona, Magnano, Massazza, Masserano, Mezzana Mortigliengo, Miagliano, Mongrando, Mosso, Mottalciata, Muzzano, Netro, Occhieppo Inferiore, Occhieppo Superiore, Pettinengo, Piatto, Piedicavallo, Pollone, Ponderano, Portula, Pralungo, Pray, Quaregna, Ronco Biellese, Roppolo, Rosazza, Sagliano Micca, Sala Biellese, Salussola, Sandigliano, Selve Marcone, Soprana, Sordevolo, Sostegno, Strona, Tavigliano, Ternengo, Tollegno, Torrazzo, Trivero, Valdengo, Vallanzengo, Valle Mosso, Valle San Nicolao, Veglio, Verrone, Vigliano Biellese, Villa del Bosco, Villanova Biellese, Viverone, Zimone, Zubiena, Zumaglia', '2019-05-30 22:34:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(62, 5, 'Cuneo', 'Acceglio, Aisone, Alba, Albaretto della Torre, Alto, Argentera, Arguello, Bagnasco, Bagnolo Piemonte, Baldissero d\'Alba, Barbaresco, Barge, Barolo, Bastia Mondovì, Battifollo, Beinette, Bellino, Belvedere Langhe, Bene Vagienna, Benevello, Bergolo, Bernezzo, Bonvicino, Borgo San Dalmazzo, Borgomale, Bosia, Bossolasco, Boves, Bra, Briaglia, Briga Alta, Brondello, Brossasco, Busca, Camerana, Camo, Canale, Canosio, Caprauna, Caraglio, Caramagna Piemonte, Cardè, Carrù, Cartignano, Casalgrasso, Castagnito, Casteldelfino, Castellar, Castelletto Stura, Castelletto Uzzone, Castellinaldo d\'Alba, Castellino Tanaro, Castelmagno, Castelnuovo di Ceva, Castiglione Falletto, Castiglione Tinella, Castino, Cavallerleone, Cavallermaggiore, Celle di Macra, Centallo, Ceresole Alba, Cerretto Langhe, Cervasca, Cervere, Ceva, Cherasco, Chiusa di Pesio, Cigliè, Cissone, Clavesana, Corneliano d\'Alba, Cortemilia, Cossano Belbo, Costigliole Saluzzo, Cravanzana, Crissolo, Cuneo, Demonte, Diano d\'Alba, Dogliani, Dronero, Elva, Entracque, Envie, Farigliano, Faule, Feisoglio, Fossano, Frabosa Soprana, Frabosa Sottana, Frassino, Gaiola, Gambasca, Garessio, Genola, Gorzegno, Gottasecca, Govone, Grinzane Cavour, Guarene, Igliano, Isasca, La Morra, Lagnasco, Lequio Berria, Lequio Tanaro, Lesegno, Levice, Limone Piemonte, Lisio, Macra, Magliano Alfieri, Magliano Alpi, Mango, Manta, Marene, Margarita, Marmora, Marsaglia, Martiniana Po, Melle, Moiola, Mombarcaro, Mombasiglio, Monastero di Vasco, Monasterolo Casotto, Monasterolo di Savigliano, Monchiero, Mondovì, Monesiglio, Monforte d\'Alba, Montà, Montaldo di Mondovì, Montaldo Roero, Montanera, Montelupo Albese, Montemale di Cuneo, Monterosso Grana, Monteu Roero, Montezemolo, Monticello d\'Alba, Moretta, Morozzo, Murazzano, Murello, Narzole, Neive, Neviglie, Niella Belbo, Niella Tanaro, Novello, Nucetto, Oncino, Ormea, Ostana, Paesana, Pagno, Pamparato, Paroldo, Perletto, Perlo, Peveragno, Pezzolo Valle Uzzone, Pianfei, Piasco, Pietraporzio, Piobesi d\'Alba, Piozzo, Pocapaglia, Polonghera, Pontechianale, Pradleves, Prazzo, Priero, Priocca, Priola, Prunetto, Racconigi, Revello, Rifreddo, Rittana, Roaschia, Roascio, Robilante, Roburent, Rocca Cigliè, Rocca de\' Baldi, Roccabruna, Roccaforte Mondovì, Roccasparvera, Roccavione, Rocchetta Belbo, Roddi, Roddino, Rodello, Rossana, Ruffia, Sale delle Langhe, Sale San Giovanni, Saliceto, Salmour, Saluzzo, Sambuco, Sampeyre, San Benedetto Belbo, San Damiano Macra, San Michele Mondovì, Sanfrè, Sanfront, Santa Vittoria d\'Alba, Sant\'Albano Stura, Santo Stefano Belbo, Santo Stefano Roero, Savigliano, Scagnello, Scarnafigi, Serralunga d\'Alba, Serravalle Langhe, Sinio, Somano, Sommariva del Bosco, Sommariva Perno, Stroppo, Tarantasca, Torre Bormida, Torre Mondovì, Torre San Giorgio, Torresina, Treiso, Trezzo Tinella, Trinità, Valdieri, Valgrana, Valloriate, Valmala, Venasca, Verduno, Vernante, Verzuolo, Vezza d\'Alba, Vicoforte, Vignolo, Villafalletto, Villanova Mondovì, Villanova Solaro, Villar San Costanzo, Vinadio, Viola, Vottignasco', '2019-05-30 22:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 5, 'Novara', 'Agrate Conturbia, Ameno, Armeno, Arona, Barengo, Bellinzago Novarese, Biandrate, Boca, Bogogno, Bolzano Novarese, Borgo Ticino, Borgolavezzaro, Borgomanero, Briga Novarese, Briona, Caltignaga, Cameri, Carpignano Sesia, Casalbeltrame, Casaleggio Novara, Casalino, Casalvolone, Castellazzo Novarese, Castelletto Sopra Ticino, Cavaglietto, Cavaglio d\'Agogna, Cavallirio, Cerano, Colazza, Comignago, Cressa, Cureggio, Divignano, Dormelletto, Fara Novarese, Fontaneto d\'Agogna, Galliate, Garbagna Novarese, Gargallo, Gattico, Ghemme, Gozzano, Granozzo con Monticello, Grignasco, Invorio, Landiona, Lesa, Maggiora, Mandello Vitta, Marano Ticino, Massino Visconti, Meina, Mezzomerico, Miasino, Momo, Nebbiuno, Nibbiola, Novara, Oleggio, Oleggio Castello, Orta San Giulio, Paruzzaro, Pella, Pettenasco, Pisano, Pogno, Pombia, Prato Sesia, Recetto, Romagnano Sesia, Romentino, San Maurizio d\'Opaglio, San Nazzaro Sesia, San Pietro Mosezzo, Sillavengo, Sizzano, Soriso, Sozzago, Suno, Terdobbiate, Tornaco, Trecate, Vaprio d\'Agogna, Varallo Pombia, Veruno, Vespolate, Vicolungo, Vinzaglio', '2019-05-30 22:34:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 5, 'Turin', 'Agliè, Airasca, Ala di Stura, Albiano d\'Ivrea, Alice Superiore, Almese, Alpette, Alpignano, Andezeno, Andrate, Angrogna, Arignano, Avigliana, Azeglio, Bairo, Balangero, Baldissero Canavese, Baldissero Torinese, Balme, Banchette, Barbania, Bardonecchia, Barone Canavese, Beinasco, Bibiana, Bobbio Pellice, Bollengo, Borgaro Torinese, Borgiallo, Borgofranco d\'Ivrea, Borgomasino, Borgone Susa, Bosconero, Brandizzo, Bricherasio, Brosso, Brozolo, Bruino, Brusasco, Bruzolo, Buriasco, Burolo, Busano, Bussoleno, Buttigliera Alta, Cafasse, Caluso, Cambiano, Campiglione Fenile, Candia Canavese, Candiolo, Canischio, Cantalupa, Cantoira, Caprie, Caravino, Carema, Carignano, Carmagnola, Casalborgone, Cascinette d\'Ivrea, Caselette, Caselle Torinese, Castagneto Po, Castagnole Piemonte, Castellamonte, Castelnuovo Nigra, Castiglione Torinese, Cavagnolo, Cavour, Cercenasco, Ceres, Ceresole Reale, Cesana Torinese, Chialamberto, Chianocco, Chiaverano, Chieri, Chiesanuova, Chiomonte, Chiusa di San Michele, Chivasso, Ciconio, Cintano, Cinzano, Ciriè, Claviere, Coassolo Torinese, Coazze, Collegno, Colleretto Castelnuovo, Colleretto Giacosa, Condove, Corio, Cossano Canavese, Cuceglio, Cumiana, Cuorgnè, Druento, Exilles, Favria, Feletto, Fenestrelle, Fiano, Fiorano Canavese, Foglizzo, Forno Canavese, Frassinetto, Front, Frossasco, Garzigliana, Gassino Torinese, Germagnano, Giaglione, Giaveno, Givoletto, Gravere, Groscavallo, Grosso, Grugliasco, Ingria, Inverso Pinasca, Isolabella, Issiglio, Ivrea, La Cassa, La Loggia, Lanzo Torinese, Lauriano, Leini, Lemie, Lessolo, Levone, Locana, Lombardore, Lombriasco, Loranzè, Lugnacco, Luserna San Giovanni, Lusernetta, Lusigliè, Macello, Maglione, Marentino, Massello, Mathi, Mattie, Mazzè, Meana di Susa, Mercenasco, Meugliano, Mezzenile, Mombello di Torino, Mompantero, Monastero di Lanzo, Moncalieri, Moncenisio, Montaldo Torinese, Montalenghe, Montalto Dora, Montanaro, Monteu da Po, Moriondo Torinese, Nichelino, Noasca, Nole, Nomaglio, None, Novalesa, Oglianico, Orbassano, Orio Canavese, Osasco, Osasio, Oulx, Ozegna, Palazzo Canavese, Pancalieri, Parella, Pavarolo, Pavone Canavese, Pecco, Pecetto Torinese, Perosa Argentina, Perosa Canavese, Perrero, Pertusio, Pessinetto, Pianezza, Pinasca, Pinerolo, Pino Torinese, Piobesi Torinese, Piossasco, Piscina, Piverone, Poirino, Pomaretto, Pont-Canavese, Porte, Pragelato, Prali, Pralormo, Pramollo, Prarostino, Prascorsano, Pratiglione, Quagliuzzo, Quassolo, Quincinetto, Reano, Ribordone, Riva Presso Chieri, Rivalba, Rivalta di Torino, Rivara, Rivarolo Canavese, Rivarossa, Rivoli, Robassomero, Rocca Canavese, Roletto, Romano Canavese, Ronco Canavese, Rondissone, Rorà, Rosta, Roure, Rubiana, Rueglio, Salassa, Salbertrand, Salerano Canavese, Salza di Pinerolo, Samone, San Benigno Canavese, San Carlo Canavese, San Colombano Belmonte, San Didero, San Francesco al Campo, San Germano Chisone, San Gillio, San Giorgio Canavese, San Giorio di Susa, San Giusto Canavese, San Martino Canavese, San Maurizio Canavese, San Mauro Torinese, San Pietro Val Lemina, San Ponso, San Raffaele Cimena, San Sebastiano da Po, San Secondo di Pinerolo, Sangano, Sant\'Ambrogio di Torino, Sant\'Antonino di Susa, Santena, Sauze di Cesana, Sauze d\'Oulx, Scalenghe, Scarmagno, Sciolze, Sestriere, Settimo Rottaro, Settimo Torinese, Settimo Vittone, Sparone, Strambinello, Strambino, Susa, Tavagnasco, Torrazza Piemonte, Torre Canavese, Torre Pellice, Trana, Trausella, Traversella, Traves, Trofarello, Turin, Usseaux, Usseglio, Vaie, Val della Torre, Valgioie, Vallo Torinese, Valperga, Valprato Soana, Varisella, Vauda Canavese, Venaria Reale, Venaus, Verolengo, Verrua Savoia, Vestignè, Vialfrè, Vico Canavese, Vidracco, Vigone, Villafranca Piemonte, Villanova Canavese, Villar Dora, Villar Focchiardo, Villar Pellice, Villar Perosa, Villarbasse, Villareggia, Villastellone, Vinovo, Virle Piemonte, Vische, Vistrorio, Viù, Volpiano, Volvera', '2019-05-30 22:34:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(65, 5, 'Verbano-Cusio-Ossola', 'Antrona Schieranco, Anzola d\'Ossola, Arizzano, Arola, Aurano, Baceno, Bannio Anzino, Baveno, Bee, Belgirate, Beura-Cardezza, Bognanco, Borgomezzavalle, Brovello-Carpugnino, Calasca-Castiglione, Cambiasca, Cannero Riviera, Cannobio, Caprezzo, Casale Corte Cerro, Cavaglio-Spoccia, Ceppo Morelli, Cesara, Cossogno, Craveggia, Crevoladossola, Crodo, Cursolo-Orasso, Domodossola, Druogno, Falmenta, Formazza, Germagno, Ghiffa, Gignese, Gravellona Toce, Gurro, Intragna, Loreglia, Macugnaga, Madonna del Sasso, Malesco, Masera, Massiola, Mergozzo, Miazzina, Montecrestese, Montescheno, Nonio, Oggebbio, Omegna, Ornavasso, Pallanzeno, Piedimulera, Pieve Vergonte, Premeno, Premia, Premosello-Chiovenda, Quarna Sopra, Quarna Sotto, Re, San Bernardino Verbano, Santa Maria Maggiore, Stresa, Toceno, Trarego Viggiona, Trasquera, Trontano, Valstrona, Vanzone con San Carlo, Varzo, Verbania, Vignone, Villadossola, Villette, Vogogna', '2019-05-30 22:34:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 5, 'Vercelli', 'Alagna Valsesia, Albano Vercellese, Alice Castello, Arborio, Asigliano Vercellese, Balmuccia, Balocco, Bianzè, Boccioleto, Borgo d\'Ale, Borgo Vercelli, Borgosesia, Breia, Buronzo, Campertogno, Carcoforo, Caresana, Caresanablot, Carisio, Casanova Elvo, Cellio, Cervatto, Cigliano, Civiasco, Collobiano, Costanzana, Cravagliana, Crescentino, Crova, Desana, Fobello, Fontanetto Po, Formigliana, Gattinara, Ghislarengo, Greggio, Guardabosone, Lamporo, Lenta, Lignana, Livorno Ferraris, Lozzolo, Mollia, Moncrivello, Motta de\' Conti, Olcenengo, Oldenico, Palazzolo Vercellese, Pertengo, Pezzana, Pila, Piode, Postua, Prarolo, Quarona, Quinto Vercellese, Rassa, Rima San Giuseppe, Rimasco, Rimella, Riva Valdobbia, Rive, Roasio, Ronsecco, Rossa, Rovasenda, Sabbia, Salasco, Sali Vercellese, Saluggia, San Germano Vercellese, San Giacomo Vercellese, Santhià, Scopa, Scopello, Serravalle Sesia, Stroppiana, Tricerro, Trino, Tronzano Vercellese, Valduggia, Varallo, Vercelli, Villarboit, Villata, Vocca', '2019-05-30 22:34:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 17, 'Bari', 'Acquaviva delle Fonti, Adelfia, Alberobello, Altamura, Bari, Binetto, Bitetto, Bitonto, Bitritto, Capurso, Casamassima, Cassano delle Murge, Castellana Grotte, Cellamare, Conversano, Corato, Gioia del Colle, Giovinazzo, Gravina in Puglia, Grumo Appula, Locorotondo, Modugno, Mola di Bari, Molfetta, Monopoli, Noci, Noicàttaro, Palo del Colle, Poggiorsini, Polignano a Mare, Putignano, Rutigliano, Ruvo di Puglia, Sammichele di Bari, Sannicandro di Bari, Santeramo in Colle, Terlizzi, Toritto, Triggiano, Turi, Valenzano', '2019-05-30 22:38:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(68, 17, 'Barletta-Andria-Trani', 'Andria, Barletta, Bisceglie, Canosa di Puglia, Margherita di Savoia, Minervino Murge, San Ferdinando di Puglia, Spinazzola, Trani, Trinitapoli', '2019-05-30 22:38:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(69, 17, 'Brindisi', 'Brindisi, Carovigno, Ceglie Messapica, Cellino San Marco, Cisternino, Erchie, Fasano, Francavilla Fontana, Latiano, Mesagne, Oria, Ostuni, San Donaci, San Michele Salentino, San Pancrazio Salentino, San Pietro Vernotico, San Vito dei Normanni, Torchiarolo, Torre Santa Susanna, Villa Castelli', '2019-05-30 22:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(70, 17, 'Foggia', 'Accadia, Alberona, Anzano di Puglia, Apricena, Ascoli Satriano, Biccari, Bovino, Cagnano Varano, Candela, Carapelle, Carlantino, Carpino, Casalnuovo Monterotaro, Casalvecchio di Puglia, Castelluccio dei Sauri, Castelluccio Valmaggiore, Castelnuovo della Daunia, Celenza Valfortore, Celle di San Vito, Cerignola, Chieuti, Deliceto, Faeto, Foggia, Ischitella, Isole Tremiti, Lesina, Lucera, Manfredonia, Mattinata, Monte Sant\'Angelo, Monteleone di Puglia, Motta Montecorvino, Ordona, Orsara di Puglia, Orta Nova, Panni, Peschici, Pietramontecorvino, Poggio Imperiale, Rignano Garganico, Rocchetta Sant\'Antonio, Rodi Garganico, Roseto Valfortore, San Giovanni Rotondo, San Marco in Lamis, San Marco la Catola, San Nicandro Garganico, San Paolo di Civitate, San Severo, Sant\'Agata di Puglia, Serracapriola, Stornara, Stornarella, Torremaggiore, Troia, Vico del Gargano, Vieste, Volturara Appula, Volturino, Zapponeta', '2019-05-30 22:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 17, 'Lecce', 'Acquarica del Capo, Alessano, Alezio, Alliste, Andrano, Aradeo, Arnesano, Bagnolo del Salento, Botrugno, Calimera, Campi Salentina, Cannole, Caprarica di Lecce, Carmiano, Carpignano Salentino, Casarano, Castri di Lecce, Castrignano de\' Greci, Castrignano del Capo, Castro, Cavallino, Collepasso, Copertino, Corigliano d\'Otranto, Corsano, Cursi, Cutrofiano, Diso, Gagliano del Capo, Galatina, Galatone, Gallipoli, Giuggianello, Giurdignano, Guagnano, Lecce, Lequile, Leverano, Lizzanello, Maglie, Martano, Martignano, Matino, Melendugno, Melissano, Melpignano, Miggiano, Minervino di Lecce, Monteroni di Lecce, Montesano Salentino, Morciano di Leuca, Muro Leccese, Nardò, Neviano, Nociglia, Novoli, Ortelle, Otranto, Palmariggi, Parabita, Patù, Poggiardo, Porto Cesareo, Presicce, Racale, Ruffano, Salice Salentino, Salve, San Cassiano, San Cesario di Lecce, San Donato di Lecce, San Pietro in Lama, Sanarica, Sannicola, Santa Cesarea Terme, Scorrano, Seclì, Sogliano Cavour, Soleto, Specchia, Spongano, Squinzano, Sternatia, Supersano, Surano, Surbo, Taurisano, Taviano, Tiggiano, Trepuzzi, Tricase, Tuglie, Ugento, Uggiano La Chiesa, Veglie, Vernole, Zollino', '2019-05-30 22:38:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 17, 'Taranto', 'Avetrana, Carosino, Castellaneta, Crispiano, Faggiano, Fragagnano, Ginosa, Grottaglie, Laterza, Leporano, Lizzano, Manduria, Martina Franca, Maruggio, Massafra, Monteiasi, Montemesola, Monteparano, Mottola, Palagianello, Palagiano, Pulsano, Roccaforzata, San Giorgio Ionico, San Marzano di San Giuseppe, Sava, Statte, Taranto, Torricella', '2019-05-30 22:38:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 20, 'Cagliari', 'Armungia, Assemini, Ballao, Barrali, Burcei, Cagliari, Capoterra, Castiadas, Decimomannu, Decimoputzu, Dolianova, Domus De Maria, Donori, Elmas, Escalaplano, Escolca, Esterzili, Gergei, Gesico, Goni, Guamaggiore, Guasila, Isili, Mandas, Maracalagonis, Monastir, Monserrato, Muravera, Nuragus, Nurallao, Nuraminis, Nurri, Orroli, Ortacesus, Pimentel, Pula, Quartu Sant\'Elena, Quartucciu, Sadali, Samatzai, San Basilio, San Nicolò Gerrei, San Sperate, San Vito, Sant\'Andrea Frius, Sarroch, Selargius, Selegas, Senorbì, Serdiana, Serri, Sestu, Settimo San Pietro, Seulo, Siliqua, Silius, Sinnai, Siurgus Donigala, Soleminis, Suelli, Teulada, Ussana, Uta, Vallermosa, Villa San Pietro, Villanova Tulo, Villaputzu, Villasalto, Villasimius, Villasor, Villaspeciosa', '2019-05-30 22:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(74, 20, 'Carbonia-Iglesias', 'Buggerru, Calasetta, Carbonia, Carloforte, Domusnovas, Fluminimaggiore, Giba, Gonnesa, Iglesias, Masainas, Musei, Narcao, Nuxis, Perdaxius, Piscinas, Portoscuso, San Giovanni Suergiu, Santadi, Sant\'Anna Arresi, Sant\'Antioco, Tratalias, Villamassargia, Villaperuccio', '2019-05-30 22:42:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 20, 'Medio Campidano', 'Arbus, Barumini, Collinas, Furtei, Genuri, Gesturi, Gonnosfanadiga, Guspini, Las Plassas, Lunamatrona, Pabillonis, Pauli Arbarei, Samassi, San Gavino Monreale, Sanluri, Sardara, Segariu, Serramanna, Serrenti, Setzu, Siddi, Tuili, Turri, Ussaramanna, Villacidro, Villamar, Villanovaforru, Villanovafranca', '2019-05-30 22:42:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 20, 'Nuoro', 'Aritzo, Atzara, Austis, Belvì, Birori, Bitti, Bolotana, Borore, Bortigali, Desulo, Dorgali, Dualchi, Fonni, Gadoni, Galtellì, Gavoi, Irgoli, Lei, Loculi, Lodè, Lodine, Lula, Macomer, Mamoiada, Meana Sardo, Noragugume, Nuoro, Oliena, Ollolai, Olzai, Onanì, Onifai, Oniferi, Orani, Orgosolo, Orosei, Orotelli, Ortueri, Orune, Osidda, Ottana, Ovodda, Posada, Sarule, Silanus, Sindia, Siniscola, Sorgono, Teti, Tiana, Tonara, Torpè', '2019-05-30 22:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(77, 20, 'Ogliastra', 'Arzana, Bari Sardo, Baunei, Cardedu, Elini, Gairo, Girasole, Ilbono, Jerzu, Lanusei, Loceri, Lotzorai, Osini, Perdasdefogu, Seui, Talana, Tertenia, Tortolì, Triei, Ulassai, Urzulei, Ussassai, Villagrande Strisaili', '2019-05-30 22:42:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(78, 20, 'Olbia-Tempio', 'Aggius, Aglientu, Alà dei Sardi, Arzachena, Badesi, Berchidda, Bortigiadas, Buddusò, Budoni, Calangianus, Golfo Aranci, La Maddalena, Loiri Porto San Paolo, Luogosanto, Luras, Monti, Olbia, Oschiri, Padru, Palau, San Teodoro, Santa Teresa Gallura, Sant\'Antonio di Gallura, Telti, Tempio Pausania, Trinità d\'Agultu e Vignola', '2019-05-30 22:42:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(79, 20, 'Oristano', 'Abbasanta, Aidomaggiore, Albagiara, Ales, Allai, Arborea, Ardauli, Assolo, Asuni, Baradili, Baratili San Pietro, Baressa, Bauladu, Bidonì, Bonarcado, Boroneddu, Bosa, Busachi, Cabras, Cuglieri, Curcuris, Flussio, Fordongianus, Genoni, Ghilarza, Gonnoscodina, Gonnosnò, Gonnostramatza, Laconi, Magomadas, Marrubiu, Masullas, Milis, Modolo, Mogorella, Mogoro, Montresta, Morgongiori, Narbolia, Neoneli, Norbello, Nughedu Santa Vittoria, Nurachi, Nureci, Ollastra, Oristano, Palmas Arborea, Pau, Paulilatino, Pompu, Riola Sardo, Ruinas, Sagama, Samugheo, San Nicolò d\'Arcidano, San Vero Milis, Santa Giusta, Santu Lussurgiu, Scano di Montiferro, Sedilo, Seneghe, Senis, Sennariolo, Siamaggiore, Siamanna, Siapiccia, Simala, Simaxis, Sini, Siris, Soddì, Solarussa, Sorradile, Suni, Tadasuni, Terralba, Tinnura, Tramatza, Tresnuraghes, Ulà Tirso, Uras, Usellus, Villa Sant\'Antonio, Villa Verde, Villanova Truschedu, Villaurbana, Zeddiani, Zerfaliu', '2019-05-30 22:42:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 20, 'Sassari', 'Alghero, Anela, Ardara, Banari, Benetutti, Bessude, Bonnanaro, Bono, Bonorva, Borutta, Bottidda, Bultei, Bulzi, Burgos, Cargeghe, Castelsardo, Cheremule, Chiaramonti, Codrongianos, Cossoine, Erula, Esporlatu, Florinas, Giave, Illorai, Ittireddu, Ittiri, Laerru, Mara, Martis, Monteleone Rocca Doria, Mores, Muros, Nughedu San Nicolò, Nule, Nulvi, Olmedo, Osilo, Ossi, Ozieri, Padria, Pattada, Perfugas, Ploaghe, Porto Torres, Pozzomaggiore, Putifigari, Romana, Santa Maria Coghinas, Sassari, Sedini, Semestene, Sennori, Siligo, Sorso, Stintino, Tergu, Thiesi, Tissi, Torralba, Tula, Uri, Usini, Valledoria, Viddalba, Villanova Monteleone', '2019-05-30 22:42:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 19, 'Agrigento', 'Agrigento, Alessandria della Rocca, Aragona, Bivona, Burgio, Calamonaci, Caltabellotta, Camastra, Cammarata, Campobello di Licata, Canicattì, Casteltermini, Castrofilippo, Cattolica Eraclea, Cianciana, Comitini, Favara, Grotte, Joppolo Giancaxio, Lampedusa e Linosa, Licata, Lucca Sicula, Menfi, Montallegro, Montevago, Naro, Palma di Montechiaro, Porto Empedocle, Racalmuto, Raffadali, Ravanusa, Realmonte, Ribera, Sambuca di Sicilia, San Biagio Platani, San Giovanni Gemini, Santa Elisabetta, Santa Margherita di Belice, Sant\'Angelo Muxaro, Santo Stefano Quisquina, Sciacca, Siculiana, Villafranca Sicula', '2019-05-30 22:47:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 19, 'Caltanissetta', 'Acquaviva Platani, Bompensiere, Butera, Caltanissetta, Campofranco, Delia, Gela, Marianopoli, Mazzarino, Milena, Montedoro, Mussomeli, Niscemi, Resuttano, Riesi, San Cataldo, Santa Caterina Villarmosa, Serradifalco, Sommatino, Sutera, Vallelunga Pratameno, Villalba', '2019-05-30 22:47:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 19, 'Catania', 'Aci Bonaccorsi, Aci Castello, Aci Catena, Aci Sant\'Antonio, Acireale, Adrano, Belpasso, Biancavilla, Bronte, Calatabiano, Caltagirone, Camporotondo Etneo, Castel di Iudica, Castiglione di Sicilia, Catania, Fiumefreddo di Sicilia, Giarre, Grammichele, Gravina di Catania, Licodia Eubea, Linguaglossa, Maletto, Maniace, Mascali, Mascalucia, Mazzarrone, Militello in Val di Catania, Milo, Mineo, Mirabella Imbaccari, Misterbianco, Motta Sant\'Anastasia, Nicolosi, Palagonia, Paternò, Pedara, Piedimonte Etneo, Raddusa, Ragalna, Ramacca, Randazzo, Riposto, San Cono, San Giovanni la Punta, San Gregorio di Catania, San Michele di Ganzaria, San Pietro Clarenza, Santa Maria di Licodia, Santa Venerina, Sant\'Agata Li Battiati, Sant\'Alfio, Scordia, Trecastagni, Tremestieri Etneo, Valverde, Viagrande, Vizzini, Zafferana Etnea', '2019-05-30 22:47:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(84, 19, 'Enna', 'Agira, Aidone, Assoro, Barrafranca, Calascibetta, Catenanuova, Centuripe, Cerami, Enna, Gagliano Castelferrato, Leonforte, Nicosia, Nissoria, Piazza Armerina, Pietraperzia, Regalbuto, Sperlinga, Troina, Valguarnera Caropepe, Villarosa', '2019-05-30 22:47:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 19, 'Messina', 'Acquedolci, Alcara Li Fusi, Alì, Alì Terme, Antillo, Barcellona Pozzo di Gotto, Basicò, Brolo, Capizzi, Capo d\'Orlando, Capri Leone, Caronia, Casalvecchio Siculo, Castel di Lucio, Castell\'Umberto, Castelmola, Castroreale, Cesarò, Condrò, Falcone, Ficarra, Fiumedinisi, Floresta, Fondachelli-Fantina, Forza d\'Agrò, Francavilla di Sicilia, Frazzanò, Furci Siculo, Furnari, Gaggi, Galati Mamertino, Gallodoro, Giardini-Naxos, Gioiosa Marea, Graniti, Gualtieri Sicaminò, Itala, Leni, Letojanni, Librizzi, Limina, Lipari, Longi, Malfa, Malvagna, Mandanici, Mazzarrà Sant\'Andrea, Merì, Messina, Milazzo, Militello Rosmarino, Mirto, Mistretta, Moio Alcantara, Monforte San Giorgio, Mongiuffi Melia, Montagnareale, Montalbano Elicona, Motta Camastra, Motta d\'Affermo, Naso, Nizza di Sicilia, Novara di Sicilia, Oliveri, Pace del Mela, Pagliara, Patti, Pettineo, Piraino, Raccuja, Reitano, Roccafiorita, Roccalumera, Roccavaldina, Roccella Valdemone, Rodì Milici, Rometta, San Filippo del Mela, San Fratello, San Marco D\'Alunzio, San Pier Niceto, San Piero Patti, San Salvatore di Fitalia, San Teodoro, Santa Domenica Vittoria, Santa Lucia del Mela, Santa Marina Salina, Santa Teresa di Riva, Sant\'Agata di Militello, Sant\'Alessio Siculo, Sant\'Angelo di Brolo, Santo Stefano di Camastra, Saponara, Savoca, Scaletta Zanclea, Sinagra, Spadafora, Taormina, Terme Vigliatore, Torregrotta, Torrenova, Tortorici, Tripi, Tusa, Ucria, Valdina, Venetico, Villafranca Tirrena', '2019-05-30 22:47:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 19, 'Palermo', 'Alia, Alimena, Aliminusa, Altavilla Milicia, Altofonte, Bagheria, Balestrate, Baucina, Belmonte Mezzagno, Bisacquino, Blufi, Bolognetta, Bompietro, Borgetto, Caccamo, Caltavuturo, Campofelice di Fitalia, Campofelice di Roccella, Campofiorito, Camporeale, Capaci, Carini, Castelbuono, Casteldaccia, Castellana Sicula, Castronovo di Sicilia, Cefalà Diana, Cefalù, Cerda, Chiusa Sclafani, Ciminna, Cinisi, Collesano, Contessa Entellina, Corleone, Ficarazzi, Gangi, Geraci Siculo, Giardinello, Giuliana, Godrano, Gratteri, Isnello, Isola delle Femmine, Lascari, Lercara Friddi, Marineo, Mezzojuso, Misilmeri, Monreale, Montelepre, Montemaggiore Belsito, Palazzo Adriano, Palermo, Partinico, Petralia Soprana, Petralia Sottana, Piana degli Albanesi, Polizzi Generosa, Pollina, Prizzi, Roccamena, Roccapalumba, San Cipirello, San Giuseppe Jato, San Mauro Castelverde, Santa Cristina Gela, Santa Flavia, Sciara, Scillato, Sclafani Bagni, Termini Imerese, Terrasini, Torretta, Trabia, Trappeto, Ustica, Valledolmo, Ventimiglia di Sicilia, Vicari, Villabate, Villafrati', '2019-05-30 22:47:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(87, 19, 'Ragusa', 'Acate, Chiaramonte Gulfi, Comiso, Giarratana, Ispica, Modica, Monterosso Almo, Pozzallo, Ragusa, Santa Croce Camerina, Scicli, Vittoria', '2019-05-30 22:47:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(88, 19, 'Siracusa', 'Augusta, Avola, Buccheri, Buscemi, Canicattini Bagni, Carlentini, Cassaro, Ferla, Floridia, Francofonte, Lentini, Melilli, Noto, Pachino, Palazzolo Acreide, Portopalo di Capo Passero, Priolo Gargallo, Rosolini, Siracusa, Solarino, Sortino', '2019-05-30 22:47:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(89, 19, 'Trapani', 'Alcamo, Buseto Palizzolo, Calatafimi Segesta, Campobello di Mazara, Castellammare del Golfo, Castelvetrano, Custonaci, Erice, Favignana, Gibellina, Marsala, Mazara del Vallo, Paceco, Pantelleria, Partanna, Petrosino, Poggioreale, Salaparuta, Salemi, San Vito Lo Capo, Santa Ninfa, Trapani, Valderice, Vita', '2019-05-30 22:47:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(90, 11, 'Arezzo', 'Anghiari, Arezzo, Badia Tedalda, Bibbiena, Bucine, Capolona, Caprese Michelangelo, Castel Focognano, Castel San Niccolò, Castelfranco Piandiscò, Castiglion Fibocchi, Castiglion Fiorentino, Cavriglia, Chitignano, Chiusi della Verna, Civitella in Val di Chiana, Cortona, Foiano della Chiana, Laterina, Loro Ciuffenna, Lucignano, Marciano della Chiana, Monte San Savino, Montemignaio, Monterchi, Montevarchi, Ortignano Raggiolo, Pergine Valdarno, Pieve Santo Stefano, Poppi, Pratovecchio Stia, San Giovanni Valdarno, Sansepolcro, Sestino, Subbiano, Talla, Terranuova Bracciolini', '2019-05-30 22:51:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(91, 11, 'Florence', 'Bagno a Ripoli, Barberino di Mugello, Barberino Val d\'Elsa, Borgo San Lorenzo, Calenzano, Campi Bisenzio, Capraia e Limite, Castelfiorentino, Cerreto Guidi, Certaldo, Dicomano, Empoli, Fiesole, Figline e Incisa Valdarno, Firenzuola, Florence, Fucecchio, Gambassi Terme, Greve in Chianti, Impruneta, Lastra a Signa, Londa, Marradi, Montaione, Montelupo Fiorentino, Montespertoli, Palazzuolo sul Senio, Pelago, Pontassieve, Reggello, Rignano sull\'Arno, Rufina, San Casciano in Val di Pesa, San Godenzo, Scandicci, Scarperia e San Piero, Sesto Fiorentino, Signa, Tavarnelle Val di Pesa, Vaglia, Vicchio, Vinci', '2019-05-30 22:51:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(92, 11, 'Grosseto', 'Arcidosso, Campagnatico, Capalbio, Castel del Piano, Castell\'Azzara, Castiglione della Pescaia, Cinigiano, Civitella Paganico, Follonica, Gavorrano, Grosseto, Isola del Giglio, Magliano in Toscana, Manciano, Massa Marittima, Monte Argentario, Monterotondo Marittimo, Montieri, Orbetello, Pitigliano, Roccalbegna, Roccastrada, Santa Fiora, Scansano, Scarlino, Seggiano, Semproniano, Sorano', '2019-05-30 22:51:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(93, 11, 'Livorno', 'Bibbona, Campiglia Marittima, Campo nell\'Elba, Capoliveri, Capraia Isola, Castagneto Carducci, Cecina, Collesalvetti, Livorno, Marciana, Marciana Marina, Piombino, Porto Azzurro, Portoferraio, Rio Marina, Rio nell\'Elba, Rosignano Marittimo, San Vincenzo, Sassetta, Suvereto', '2019-05-30 22:51:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(94, 11, 'Lucca', 'Altopascio, Bagni di Lucca, Barga, Borgo a Mozzano, Camaiore, Camporgiano, Capannori, Careggine, Castelnuovo di Garfagnana, Castiglione di Garfagnana, Coreglia Antelminelli, Fabbriche di Vergemoli, Forte dei Marmi, Fosciandora, Gallicano, Lucca, Massarosa, Minucciano, Molazzana, Montecarlo, Pescaglia, Piazza al Serchio, Pietrasanta, Pieve Fosciana, Porcari, San Romano in Garfagnana, Seravezza, Sillano Giuncugnano, Stazzema, Vagli Sotto, Viareggio, Villa Basilica, Villa Collemandina', '2019-05-30 22:51:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(95, 11, 'Massa-Carrara', 'Aulla, Bagnone, Carrara, Casola in Lunigiana, Comano, Filattiera, Fivizzano, Fosdinovo, Licciana Nardi, Massa, Montignoso, Mulazzo, Podenzana, Pontremoli, Tresana, Villafranca in Lunigiana, Zeri', '2019-05-30 22:51:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(96, 11, 'Pisa', 'Bientina, Buti, Calci, Calcinaia, Capannoli, Casale Marittimo, Casciana Terme Lari, Cascina, Castelfranco di Sotto, Castellina Marittima, Castelnuovo di Val di Cecina, Chianni, Crespina Lorenzana, Fauglia, Guardistallo, Lajatico, Montecatini Val di Cecina, Montescudaio, Monteverdi Marittimo, Montopoli in Val d\'Arno, Orciano Pisano, Palaia, Peccioli, Pisa, Pomarance, Ponsacco, Pontedera, Riparbella, San Giuliano Terme, San Miniato, Santa Croce sull\'Arno, Santa Luce, Santa Maria a Monte, Terricciola, Vecchiano, Vicopisano, Volterra', '2019-05-30 22:51:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(97, 11, 'Pistoia', 'Abetone, Agliana, Buggiano, Chiesina Uzzanese, Cutigliano, Lamporecchio, Larciano, Marliana, Massa e Cozzile, Monsummano Terme, Montale, Montecatini-Terme, Pescia, Pieve a Nievole, Pistoia, Piteglio, Ponte Buggianese, Quarrata, Sambuca Pistoiese, San Marcello Pistoiese, Serravalle Pistoiese, Uzzano', '2019-05-30 22:51:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(98, 11, 'Prato', 'Cantagallo, Carmignano, Montemurlo, Poggio a Caiano, Prato, Vaiano, Vernio', '2019-05-30 22:51:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(99, 11, 'Siena', 'Abbadia San Salvatore, Asciano, Buonconvento, Casole d\'Elsa, Castellina in Chianti, Castelnuovo Berardenga, Castiglione d\'Orcia, Cetona, Chianciano Terme, Chiusdino, Chiusi, Colle di Val d\'Elsa, Gaiole in Chianti, Montalcino, Montepulciano, Monteriggioni, Monteroni d\'Arbia, Monticiano, Murlo, Piancastagnaio, Pienza, Poggibonsi, Radda in Chianti, Radicofani, Radicondoli, Rapolano Terme, San Casciano dei Bagni, San Gimignano, San Giovanni d\'Asso, San Quirico d\'Orcia, Sarteano, Siena, Sinalunga, Sovicille, Torrita di Siena, Trequanda', '2019-05-30 22:51:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(100, 7, 'Bolzano', 'Aldino, Andriano, Anterivo, Appiano sulla Strada del Vino, Avelengo, Badia, Barbiano, Bolzano, Braies, Brennero, Bressanone, Bronzolo, Brunico, Caines, Caldaro sulla Strada del Vino, Campo di Trens, Campo Tures, Castelbello-Ciardes, Castelrotto, Cermes, Chienes, Chiusa, Cornedo all\'Isarco, Cortaccia sulla Strada del Vino, Cortina sulla Strada del Vino, Corvara in Badia, Curon Venosta, Dobbiaco, Egna, Falzes, Fiè allo Sciliar, Fortezza, Funes, Gais, Gargazzone, Glorenza, La Valle, Laces, Lagundo, Laion, Laives, Lana, Lasa, Lauregno, Luson, Magrè sulla Strada del Vino, Malles Venosta, Marebbe, Marlengo, Martello, Meltina, Merano, Monguelfo-Tesido, Montagna, Moso in Passiria, Nalles, Naturno, Naz-Sciaves, Nova Levante, Nova Ponente, Ora, Ortisei, Parcines, Perca, Plaus, Ponte Gardena, Postal, Prato allo Stelvio, Predoi, Proves, Racines, Rasun-Anterselva, Renon, Rifiano, Rio di Pusteria, Rodengo, Salorno, San Candido, San Genesio Atesino, San Leonardo in Passiria, San Lorenzo di Sebato, San Martino in Badia, San Martino in Passiria, San Pancrazio, Santa Cristina Valgardena, Sarentino, Scena, Selva dei Molini, Selva di Val Gardena, Senales, Senale-San Felice, Sesto, Silandro, Sluderno, Stelvio, Terento, Terlano, Termeno sulla Strada del Vino, Tesimo, Tires, Tirolo, Trodena nel parco naturale, Tubre, Ultimo, Vadena, Val di Vizze, Valdaora, Valle Aurina, Valle di Casies, Vandoies, Varna, Velturno, Verano, Villabassa, Villandro, Vipiteno', '2019-05-30 22:55:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(101, 7, 'Trento', 'Ala, Albiano, Aldeno, Altavalle, Altopiano della Vigolana, Amblar-Don, Andalo, Arco, Avio, Baselga di Pinè, Bedollo, Besenello, Bieno, Bleggio Superiore, Bocenago, Bondone, Borgo Chiese, Borgo Lares, Borgo Valsugana, Brentonico, Bresimo, Brez, Caderzone Terme, Cagnò, Calceranica al Lago, Caldes, Caldonazzo, Calliano, Campitello di Fassa, Campodenno, Canal San Bovo, Canazei, Capriana, Carano, Carisolo, Carzano, Castel Condino, Castel Ivano, Castelfondo, Castello Tesino, Castello-Molina di Fiemme, Castelnuovo, Cavalese, Cavareno, Cavedago, Cavedine, Cavizzana, Cembra Lisignago, Cimone, Cinte Tesino, Cis, Civezzano, Cles, Cloz, Comano Terme, Commezzadura, Contà, Croviana, Daiano, Dambel, Denno, Dimaro Folgarida, Drena, Dro, Faedo, Fai della Paganella, Fiavè, Fierozzo, Folgaria, Fondo, Fornace, Frassilongo, Garniga Terme, Giovo, Giustino, Grigno, Imer, Isera, Lavarone, Lavis, Ledro, Levico Terme, Livo, Lona-Lases, Luserna, Madruzzo, Malè, Malosco, Massimeno, Mazzin, Mezzana, Mezzano, Mezzocorona, Mezzolombardo, Moena, Molveno, Mori, Nago-Torbole, Nave San Rocco, Nogaredo, Nomi, Novaledo, Ospedaletto, Ossana, Palù del Fersina, Panchià, Peio, Pellizzano, Pelugo, Pergine Valsugana, Pieve di Bono-Prezzo, Pieve Tesino, Pinzolo, Pomarolo, Porte di Rendena, Pozza di Fassa, Predaia, Predazzo, Primiero San Martino di Castrozza, Rabbi, Revò, Riva del Garda, Romallo, Romeno, Roncegno Terme, Ronchi Valsugana, Ronzo-Chienis, Ronzone, Roverè della Luna, Rovereto, Ruffrè-Mendola, Rumo, Sagron Mis, Samone, San Lorenzo Dorsino, San Michele all\'Adige, Sant\'Orsola Terme, Sanzeno, Sarnonico, Scurelle, Segonzano, Sella Giudicarie, Sfruz, Soraga, Sover, Spiazzo, Spormaggiore, Sporminore, Stenico, Storo, Strembo, Telve, Telve di Sopra, Tenna, Tenno, Terragnolo, Terzolas, Tesero, Tione di Trento, Ton, Torcegno, Trambileno, Tre Ville, Trento, Valdaone, Valfloriana, Vallarsa, Vallelaghi, Varena, Vermiglio, Vignola-Falesina, Vigo di Fassa, Villa Lagarina, Ville d\'Anaunia, Volano, Zambana, Ziano di Fiemme', '2019-05-30 22:55:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(102, 12, 'Perugia', 'Assisi, Bastia Umbra, Bettona, Bevagna, Campello sul Clitunno, Cannara, Cascia, Castel Ritaldi, Castiglione del Lago, Cerreto di Spoleto, Citerna, Città della Pieve, Città di Castello, Collazzone, Corciano, Costacciaro, Deruta, Foligno, Fossato di Vico, Fratta Todina, Giano dell\'Umbria, Gualdo Cattaneo, Gualdo Tadino, Gubbio, Lisciano Niccone, Magione, Marsciano, Massa Martana, Monte Castello di Vibio, Monte Santa Maria Tiberina, Montefalco, Monteleone di Spoleto, Montone, Nocera Umbra, Norcia, Paciano, Panicale, Passignano sul Trasimeno, Perugia, Piegaro, Pietralunga, Poggiodomo, Preci, San Giustino, Sant\'Anatolia di Narco, Scheggia e Pascelupo, Scheggino, Sellano, Sigillo, Spello, Spoleto, Todi, Torgiano, Trevi, Tuoro sul Trasimeno, Umbertide, Valfabbrica, Vallo di Nera, Valtopina', '2019-05-30 22:57:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(103, 12, 'Terni', 'Acquasparta, Allerona, Alviano, Amelia, Arrone, Attigliano, Avigliano Umbro, Baschi, Calvi dell\'Umbria, Castel Giorgio, Castel Viscardo, Fabro, Ferentillo, Ficulle, Giove, Guardea, Lugnano in Teverina, Montecastrilli, Montecchio, Montefranco, Montegabbione, Monteleone d\'Orvieto, Narni, Orvieto, Otricoli, Parrano, Penna in Teverina, Polino, Porano, San Gemini, San Venanzo, Stroncone, Terni', '2019-05-30 22:57:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(104, 8, 'Belluno', 'Agordo, Alano di Piave, Alleghe, Alpago, Arsiè, Auronzo di Cadore, Belluno, Borca di Cadore, Calalzo di Cadore, Canale d\'Agordo, Cencenighe Agordino, Cesiomaggiore, Chies d\'Alpago, Cibiana di Cadore, Colle Santa Lucia, Comelico Superiore, Cortina d\'Ampezzo, Danta di Cadore, Domegge di Cadore, Falcade, Feltre, Fonzaso, Gosaldo, La Valle Agordina, Lamon, Lentiai, Limana, Livinallongo del Col di Lana, Longarone, Lorenzago di Cadore, Lozzo di Cadore, Mel, Ospitale di Cadore, Pedavena, Perarolo di Cadore, Pieve di Cadore, Ponte nelle Alpi, Quero Vas, Rivamonte Agordino, Rocca Pietore, San Gregorio nelle Alpi, San Nicolò di Comelico, San Pietro di Cadore, San Tomaso Agordino, San Vito di Cadore, Santa Giustina, Santo Stefano di Cadore, Sappada, Sedico, Selva di Cadore, Seren del Grappa, Sospirolo, Soverzene, Sovramonte, Taibon Agordino, Tambre, Trichiana, Val di Zoldo, Vallada Agordina, Valle di Cadore, Vigo di Cadore, Vodo Cadore, Voltago Agordino, Zoppè di Cadore', '2019-05-30 22:58:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(105, 8, 'Padova', 'Abano Terme, Agna, Albignasego, Anguillara Veneta, Arquà Petrarca, Arre, Arzergrande, Bagnoli di Sopra, Baone, Barbona, Battaglia Terme, Boara Pisani, Borgoricco, Bovolenta, Brugine, Cadoneghe, Campo San Martino, Campodarsego, Campodoro, Camposampiero, Candiana, Carceri, Carmignano di Brenta, Cartura, Casale di Scodosia, Casalserugo, Castelbaldo, Cervarese Santa Croce, Cinto Euganeo, Cittadella, Codevigo, Conselve, Correzzola, Curtarolo, Due Carrare, Este, Fontaniva, Galliera Veneta, Galzignano Terme, Gazzo, Grantorto, Granze, Legnaro, Limena, Loreggia, Lozzo Atestino, Maserà di Padova, Masi, Massanzago, Megliadino San Fidenzio, Megliadino San Vitale, Merlara, Mestrino, Monselice, Montagnana, Montegrotto Terme, Noventa Padovana, Ospedaletto Euganeo, Padova, Pernumia, Piacenza d\'Adige, Piazzola sul Brenta, Piombino Dese, Piove di Sacco, Polverara, Ponso, Ponte San Nicolò, Pontelongo, Pozzonovo, Rovolon, Rubano, Saccolongo, Saletto, San Giorgio delle Pertiche, San Giorgio in Bosco, San Martino di Lupari, San Pietro in Gu, San Pietro Viminario, Santa Giustina in Colle, Santa Margherita d\'Adige, Sant\'Angelo di Piove di Sacco, Sant\'Elena, Sant\'Urbano, Saonara, Selvazzano Dentro, Solesino, Stanghella, Teolo, Terrassa Padovana, Tombolo, Torreglia, Trebaseleghe, Tribano, Urbana, Veggiano, Vescovana, Vighizzolo d\'Este, Vigodarzere, Vigonza, Villa del Conte, Villa Estense, Villafranca Padovana, Villanova di Camposampiero, Vo\'', '2019-05-30 22:58:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(106, 8, 'Rovigo', 'Adria, Ariano nel Polesine, Arquà Polesine, Badia Polesine, Bagnolo di Po, Bergantino, Bosaro, Calto, Canaro, Canda, Castelguglielmo, Castelmassa, Castelnovo Bariano, Ceneselli, Ceregnano, Corbola, Costa di Rovigo, Crespino, Ficarolo, Fiesso Umbertiano, Frassinelle Polesine, Fratta Polesine, Gaiba, Gavello, Giacciano con Baruchella, Guarda Veneta, Lendinara, Loreo, Lusia, Melara, Occhiobello, Papozze, Pettorazza Grimani, Pincara, Polesella, Pontecchio Polesine, Porto Tolle, Porto Viro, Rosolina, Rovigo, Salara, San Bellino, San Martino di Venezze, Stienta, Taglio di Po, Trecenta, Villadose, Villamarzana, Villanova del Ghebbo, Villanova Marchesana', '2019-05-30 22:58:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(107, 8, 'Treviso', 'Altivole, Arcade, Asolo, Borso del Grappa, Breda di Piave, Caerano di San Marco, Cappella Maggiore, Carbonera, Casale sul Sile, Casier, Castelcucco, Castelfranco Veneto, Castello di Godego, Cavaso del Tomba, Cessalto, Chiarano, Cimadolmo, Cison di Valmarino, Codognè, Colle Umberto, Conegliano, Cordignano, Cornuda, Crespano del Grappa, Crocetta del Montello, Farra di Soligo, Follina, Fontanelle, Fonte, Fregona, Gaiarine, Giavera del Montello, Godega di Sant\'Urbano, Gorgo al Monticano, Istrana, Loria, Mansuè, Mareno di Piave, Maser, Maserada sul Piave, Meduna di Livenza, Miane, Mogliano Veneto, Monastier di Treviso, Monfumo, Montebelluna, Morgano, Moriago della Battaglia, Motta di Livenza, Nervesa della Battaglia, Oderzo, Ormelle, Orsago, Paderno del Grappa, Paese, Pederobba, Pieve di Soligo, Ponte di Piave, Ponzano Veneto, Portobuffolè, Possagno, Povegliano, Preganziol, Quinto di Treviso, Refrontolo, Resana, Revine Lago, Riese Pio X, Roncade, Salgareda, San Biagio di Callalta, San Fior, San Pietro di Feletto, San Polo di Piave, San Vendemiano, San Zenone degli Ezzelini, Santa Lucia di Piave, Sarmede, Segusino, Sernaglia della Battaglia, Silea, Spresiano, Susegana, Tarzo, Trevignano, Treviso, Valdobbiadene, Vazzola, Vedelago, Vidor, Villorba, Vittorio Veneto, Volpago del Montello, Zenson di Piave, Zero Branco', '2019-05-30 22:58:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(108, 8, 'Venice', 'Annone Veneto, Campagna Lupia, Campolongo Maggiore, Camponogara, Caorle, Cavallino-Treporti, Cavarzere, Ceggia, Chioggia, Cinto Caomaggiore, Cona, Concordia Sagittaria, Dolo, Eraclea, Fiesso d\'Artico, Fossalta di Piave, Fossalta di Portogruaro, Fossò, Gruaro, Jesolo, Marcon, Martellago, Meolo, Mira, Mirano, Musile di Piave, Noale, Noventa di Piave, Pianiga, Portogruaro, Pramaggiore, Quarto d\'Altino, Salzano, San Donà di Piave, San Michele al Tagliamento, San Stino di Livenza, Santa Maria di Sala, Scorzè, Spinea, Stra, Teglio Veneto, Torre di Mosto, Venice, Vigonovo', '2019-05-30 22:58:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(109, 8, 'Verona', 'Affi, Albaredo d\'Adige, Angiari, Arcole, Badia Calavena, Bardolino, Belfiore, Bevilacqua, Bonavigo, Boschi Sant\'Anna, Bosco Chiesanuova, Bovolone, Brentino Belluno, Brenzone sul Garda, Bussolengo, Buttapietra, Caldiero, Caprino Veronese, Casaleone, Castagnaro, Castel d\'Azzano, Castelnuovo del Garda, Cavaion Veronese, Cazzano di Tramigna, Cerea, Cerro Veronese, Cologna Veneta, Colognola ai Colli, Concamarise, Costermano, Dolcè, Erbè, Erbezzo, Ferrara di Monte Baldo, Fumane, Garda, Gazzo Veronese, Grezzana, Illasi, Isola della Scala, Isola Rizza, Lavagno, Lazise, Legnago, Malcesine, Marano di Valpolicella, Mezzane di Sotto, Minerbe, Montecchia di Crosara, Monteforte d\'Alpone, Mozzecane, Negrar, Nogara, Nogarole Rocca, Oppeano, Palù, Pastrengo, Pescantina, Peschiera del Garda, Povegliano Veronese, Pressana, Rivoli Veronese, Roncà, Ronco all\'Adige, Roverchiara, Roverè Veronese, Roveredo di Guà, Salizzole, San Bonifacio, San Giovanni Ilarione, San Giovanni Lupatoto, San Martino Buon Albergo, San Mauro di Saline, San Pietro di Morubio, San Pietro in Cariano, San Zeno di Montagna, Sanguinetto, Sant\'Ambrogio di Valpolicella, Sant\'Anna d\'Alfaedo, Selva di Progno, Soave, Sommacampagna, Sona, Sorgà, Terrazzo, Torri del Benaco, Tregnago, Trevenzuolo, Valeggio sul Mincio, Velo Veronese, Verona, Veronella, Vestenanova, Vigasio, Villa Bartolomea, Villafranca di Verona, Zevio, Zimella', '2019-05-30 22:58:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(110, 8, 'Vicenza', 'Agugliaro, Albettone, Alonte, Altavilla Vicentina, Altissimo, Arcugnano, Arsiero, Arzignano, Asiago, Asigliano Veneto, Barbarano Vicentino, Bassano del Grappa, Bolzano Vicentino, Breganze, Brendola, Bressanvido, Brogliano, Caldogno, Caltrano, Calvene, Camisano Vicentino, Campiglia dei Berici, Campolongo sul Brenta, Carrè, Cartigliano, Cassola, Castegnero, Castelgomberto, Chiampo, Chiuppano, Cismon del Grappa, Cogollo del Cengio, Conco, Cornedo Vicentino, Costabissara, Creazzo, Crespadoro, Dueville, Enego, Fara Vicentino, Foza, Gallio, Gambellara, Gambugliano, Grancona, Grisignano di Zocco, Grumolo delle Abbadesse, Isola Vicentina, Laghi, Lastebasse, Longare, Lonigo, Lugo di Vicenza, Lusiana, Malo, Marano Vicentino, Marostica, Mason Vicentino, Molvena, Monte di Malo, Montebello Vicentino, Montecchio Maggiore, Montecchio Precalcino, Montegalda, Montegaldella, Monteviale, Monticello Conte Otto, Montorso Vicentino, Mossano, Mussolente, Nanto, Nogarole Vicentino, Nove, Noventa Vicentina, Orgiano, Pedemonte, Pianezze, Piovene Rocchette, Pojana Maggiore, Posina, Pove del Grappa, Pozzoleone, Quinto Vicentino, Recoaro Terme, Roana, Romano d\'Ezzelino, Rosà, Rossano Veneto, Rotzo, Salcedo, San Germano dei Berici, San Nazario, San Pietro Mussolino, San Vito di Leguzzano, Sandrigo, Santorso, Sarcedo, Sarego, Schiavon, Schio, Solagna, Sossano, Sovizzo, Tezze sul Brenta, Thiene, Tonezza del Cimone, Torrebelvicino, Torri di Quartesolo, Trissino, Valdagno, Valdastico, Valli del Pasubio, Valstagna, Velo d\'Astico, Vicenza, Villaga, Villaverla, Zanè, Zermeghedo, Zovencedo, Zugliano', '2019-05-30 22:58:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;

-- Dumping structure for table school_test.region
CREATE TABLE IF NOT EXISTS `region` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(50) DEFAULT NULL,
  `state_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.region: ~20 rows (approximately)
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`id`, `region_name`, `state_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Aosta Valley', 1, '2019-05-30 19:39:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Emilia-Romagna', 1, '2019-05-30 19:39:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Friuli-Venezia Giulia', 1, '2019-05-30 19:39:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Liguria', 1, '2019-05-30 19:39:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Piemonte', 1, '2019-05-30 19:39:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'Lombardia', 1, '2019-05-30 19:39:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 'Trentino-Alto Adige', 1, '2019-05-30 19:39:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Veneto', 1, '2019-05-30 19:40:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'Abruzzo', 2, '2019-05-30 19:41:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Lazio', 2, '2019-05-30 19:41:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 'Toscana', 2, '2019-05-30 19:41:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 'Umbria', 2, '2019-05-30 19:41:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 'Le Marche', 2, '2019-05-30 19:41:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 'Basilicata', 3, '2019-05-30 19:42:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 'Calabria', 3, '2019-05-30 19:42:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 'Campania', 3, '2019-05-30 19:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 'Puglia', 3, '2019-05-30 19:42:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 'Molise', 3, '2019-05-30 19:42:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 'Sicilia', 3, '2019-05-30 19:42:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 'Sardegna', 3, '2019-05-30 19:42:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;

-- Dumping structure for table school_test.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table school_test.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Admin', '{"admin":1}', '2019-05-20 14:57:43', '2019-05-20 14:57:43'),
	(2, 'school', 'School Admin', NULL, '2019-05-20 14:57:44', '2019-05-30 02:14:52'),
	(3, 'technical', 'Technical Person', NULL, '2019-05-20 11:19:01', '2019-05-20 11:19:12'),
	(4, 'personal', 'Personal Trainer', NULL, '2019-05-22 11:19:16', '2019-05-22 11:19:20'),
	(5, 'student', 'Student', NULL, '2019-05-28 11:19:24', '2019-05-29 11:19:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table school_test.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.role_users: ~9 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-05-20 14:57:44', '2019-05-20 14:57:44'),
	(76, 2, '2019-07-15 07:15:56', '2019-07-15 07:15:56'),
	(77, 3, '2019-07-15 07:16:47', '2019-07-15 07:16:47'),
	(78, 2, '2019-07-15 07:20:57', '2019-07-15 07:20:57'),
	(79, 3, '2019-07-15 07:22:02', '2019-07-15 07:22:02'),
	(80, 2, '2019-07-15 08:25:36', '2019-07-15 08:25:36'),
	(81, 5, '2019-07-15 08:26:37', '2019-07-15 08:26:37'),
	(82, 4, '2019-07-15 10:31:59', '2019-07-15 10:31:59'),
	(83, 5, '2019-07-15 16:12:19', '2019-07-15 16:12:19');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table school_test.schools
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `banner_path` varchar(200) DEFAULT NULL,
  `reference_asd` varchar(150) DEFAULT NULL,
  `company_code` varchar(150) DEFAULT NULL,
  `state` varchar(200) DEFAULT '0',
  `region` varchar(200) DEFAULT '0',
  `province` varchar(200) DEFAULT '0',
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `membership_type` int(5) unsigned DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lati` varchar(20) DEFAULT NULL,
  `longi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.schools: ~3 rows (approximately)
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` (`id`, `name`, `logo_path`, `banner_path`, `reference_asd`, `company_code`, `state`, `region`, `province`, `city`, `address`, `postal_code`, `user_id`, `status`, `membership_type`, `created_at`, `updated_at`, `deleted_at`, `lati`, `longi`) VALUES
	(43, 'Fast School', '/uploads/schools/z1fnX62Ta5.png', '/uploads/schools/qfOWy3gVkm.jpeg', 'eirkjdfi234kjd', '2i3u4iidf', 'Italy', 'Aosta Valley', 'Aosta', 'Allein', 'asdfasdf', '3940293', 76, 1, 0, '2019-07-15 07:15:56', '2019-07-15 09:35:22', '0000-00-00 00:00:00', '41.90370080000001', '12.496235200000001'),
	(44, 'High School', '/uploads/schools/7xmPTDlVVb.jpeg', '/uploads/schools/oLwu8uQrda.jpeg', 'sdfoi', '983290iief', 'Italy', 'Basilicata', 'Potenza', 'Acerenza', 'asdf asdf sdf', '98ew09f23', 78, 1, 0, '2019-07-15 07:20:57', '2019-07-15 09:35:11', '0000-00-00 00:00:00', '41.90180080000001', '12.493235200000001'),
	(45, 'TheBestSchool', '/uploads/schools/F7x0km9HJF.png', '/uploads/schools/MWpcYPKCPG.jpeg', 'dsadflkjasdlk', '32423432', 'Italy', 'Aosta Valley', 'Aosta', 'Challand-Saint-Anselme', 'sadfsa fas d', '212134', 80, 1, 0, '2019-07-15 08:25:36', '2019-07-15 09:35:04', '0000-00-00 00:00:00', '41.90110080000001', '12.494235200000001');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;

-- Dumping structure for table school_test.school_course
CREATE TABLE IF NOT EXISTS `school_course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(10) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `course_desc` text,
  `course_dates` text,
  `course_days` int(3) DEFAULT NULL,
  `course_seats` int(5) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `trainer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_course: ~6 rows (approximately)
/*!40000 ALTER TABLE `school_course` DISABLE KEYS */;
INSERT INTO `school_course` (`id`, `school_id`, `pic`, `course_id`, `level_id`, `course_name`, `course_desc`, `course_dates`, `course_days`, `course_seats`, `price`, `status`, `trainer_id`, `author_id`, `activated`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(26, 45, NULL, 35, 4, 'Course for athletes', 'This is the very basic course we are running for.', '[{"lesson_name":"Lesson 1","lesson_desc":"We hope to meet there.","lesson_date":"2019-07-09","start_time":"08:00","end_time":"09:00"},{"lesson_name":"Lesson 2","lesson_desc":"We hope for a meeting","lesson_date":"2019-07-10","start_time":"09:00","end_time":"10:00"},{"lesson_name":"Lesson 3","lesson_desc":"Running around a beach!","lesson_date":"2019-07-11","start_time":"09:00","end_time":"10:00"}]', 15, 25, 15, 0, 0, 82, 0, '2019-07-15 19:53:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 45, NULL, 35, 4, 'Running Course', 'We are going to mountain beach during this course.', '[{"lesson_name":"Lesson 1","lesson_desc":"Running Concepts","lesson_date":"2019-07-15","start_time":"09:00","end_time":"10:59"},{"lesson_name":"Lesson 2","lesson_desc":"We are running on the moon","lesson_date":"2019-07-16","start_time":"09:00","end_time":"10:00"}]', 15, 25, 15, 2, 0, 80, 2, '2019-07-15 20:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 45, NULL, 35, 5, 'Amature course', 'We run along the beach!', '[{"lesson_name":"Lesson 1","lesson_desc":"We are coming from the team.","lesson_date":"2019-07-15","start_time":"00:21","end_time":"00:01"},{"lesson_name":"Lesson 2","lesson_desc":"We are very happy to hear that!","lesson_date":"2019-07-16","start_time":"03:02","end_time":"04:05"}]', 15, 30, 15, 1, 82, 80, 1, '2019-07-15 20:08:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 45, NULL, 35, 6, 'Very funny Course', 'Everybody come on!', '[{"lesson_name":"Lesson 1","lesson_desc":"Let\'s start running along the beach!","lesson_date":"2019-07-17","start_time":"08:00","end_time":"09:00"},{"lesson_name":"Lesson 3","lesson_desc":"We hope to come this lesson in the meantime.","lesson_date":"2019-07-22","start_time":"08:00","end_time":"09:00"},{"lesson_name":"Lesson 2","lesson_desc":"sdfsdafasdf","lesson_date":"2019-07-18","start_time":"14:34","end_time":"15:45"},{"lesson_name":"Lesson 4","lesson_desc":"fasdfas","lesson_date":"2019-07-23","start_time":"00:34","end_time":"02:34"}]', 15, 30, 20, 1, 82, 80, 1, '2019-07-15 20:08:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 45, NULL, 35, 6, 'kjhkjhkjh', 'jhgjghjhg', '[{"lesson_name":"jhgjhhjg","lesson_desc":"fhghgfhgf","lesson_date":"2019-07-16","start_time":"03:24","end_time":"05:45"},{"lesson_name":"khjhjk","lesson_desc":"hgjjgjh","lesson_date":"2019-07-17","start_time":"00:11","end_time":"00:33"}]', 15, 44, 22, 1, 82, 80, 1, '2019-07-16 03:39:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 45, NULL, 35, 11, 'Mountain Course', 'This is actually course we are looking for!', '[{"lesson_name":"Lesson 1","lesson_desc":"Let\'s begin our lesson for today.","lesson_date":"2019-07-17","start_time":"09:00","end_time":"10:00"},{"lesson_name":"Lesson 2","lesson_desc":"This is the second lesson we have to do!","lesson_date":"2019-07-18","start_time":"14:00","end_time":"15:00"}]', 15, 20, 15, 0, 0, 80, 0, '2019-07-17 16:33:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `school_course` ENABLE KEYS */;

-- Dumping structure for table school_test.school_course_date
CREATE TABLE IF NOT EXISTS `school_course_date` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lesson_name` varchar(200) DEFAULT NULL,
  `lesson_desc` text,
  `lesson_date` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `trainer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_course_date: ~18 rows (approximately)
/*!40000 ALTER TABLE `school_course_date` DISABLE KEYS */;
INSERT INTO `school_course_date` (`id`, `school_course_id`, `course_id`, `level_id`, `lesson_name`, `lesson_desc`, `lesson_date`, `start_time`, `end_time`, `status`, `trainer_id`, `author_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(59, 26, 35, 3, 'Lesson 1', 'We hope to meet there.', '2019-07-09', '08:00', '09:00', 0, 0, 82, '2019-07-15 19:56:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 26, 35, 3, 'Lesson 2', 'We hope for a meeting', '2019-07-10', '09:00', '10:00', 0, 0, 82, '2019-07-15 19:56:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 26, 35, 3, 'Lesson 3', 'Running around a beach!', '2019-07-11', '09:00', '10:00', 0, 0, 82, '2019-07-15 19:56:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 27, 35, 4, 'Lesson 1', 'Running Concepts', '2019-07-15', '09:00', '10:59', 0, 0, 80, '2019-07-15 20:07:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 27, 35, 4, 'Lesson 2', 'We are running on the moon', '2019-07-16', '09:00', '10:00', 0, 0, 80, '2019-07-15 20:07:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 28, 35, 5, 'Lesson 1', 'We are coming from the team.', '2019-07-15', '00:21', '00:01', 0, 82, 80, '2019-07-15 20:09:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 28, 35, 5, 'Lesson 2', 'We are very happy to hear that!', '2019-07-16', '03:02', '04:05', 0, 82, 80, '2019-07-15 20:09:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 28, 35, 5, 'Lesson 3', 'We hope to come this lesson in the meantime.', '2019-07-23', '08:00', '09:00', 0, 82, 80, '2019-07-16 00:58:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 28, 35, 5, 'Lesson 4', 'We hope to come this lesson in the meantime.', '2019-07-24', '08:00', '09:00', 0, 82, 80, '2019-07-16 00:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 28, 35, 5, 'Lesson 5', 'We hope to come this lesson in the meantime.', '2019-07-25', '08:00', '09:00', 0, 82, 80, '2019-07-16 00:59:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 30, 30, 0, 'jhgjhhjg', 'fhghgfhgf', '2019-07-16', '03:24', '05:45', 0, 0, 80, '2019-07-16 03:40:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 30, 30, 0, 'khjhjk', 'hgjjgjh', '2019-07-17', '00:11', '00:33', 0, 0, 80, '2019-07-16 03:40:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 29, 29, 6, 'Lesson 1', 'Let\'s start running along the beach!', '2019-07-17', '08:00', '09:00', 1, 82, 80, '2019-07-16 10:12:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 29, 29, 6, 'Lesson 3', 'We hope to come this lesson in the meantime.', '2019-07-22', '08:00', '09:00', 1, 82, 80, '2019-07-16 10:12:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 29, 29, 6, 'Lesson 2', 'sdfsdafasdf', '2019-07-18', '14:34', '15:45', 1, 82, 80, '2019-07-16 10:12:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 29, 29, 6, 'Lesson 4', 'fasdfas', '2019-07-23', '00:34', '02:34', 1, 82, 80, '2019-07-16 10:12:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 31, 35, 11, 'Lesson 1', 'Let\'s begin our lesson for today.', '2019-07-17', '09:00', '10:00', 0, 0, 80, '2019-07-17 16:34:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 31, 35, 11, 'Lesson 2', 'This is the second lesson we have to do!', '2019-07-18', '14:00', '15:00', 0, 0, 80, '2019-07-17 16:34:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `school_course_date` ENABLE KEYS */;

-- Dumping structure for table school_test.school_course_date_attend
CREATE TABLE IF NOT EXISTS `school_course_date_attend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `school_course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reservation_id` int(10) unsigned NOT NULL DEFAULT '0',
  `athlete_id` int(10) unsigned NOT NULL DEFAULT '0',
  `trainer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attend` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` text,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_course_date_attend: ~2 rows (approximately)
/*!40000 ALTER TABLE `school_course_date_attend` DISABLE KEYS */;
INSERT INTO `school_course_date_attend` (`id`, `course_id`, `level_id`, `school_course_id`, `reservation_id`, `athlete_id`, `trainer_id`, `attend`, `created_at`, `updated_at`, `deleted_at`, `review`, `score`) VALUES
	(9, 35, 5, 28, 9, 83, 82, '[{"66":"2"},{"67":"1"},{"71":"0"},{"72":"2"},{"73":"1"}]', '2019-07-16 00:04:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'I am a man! This is very nice!', 3),
	(10, 35, 5, 28, 10, 81, 82, '[{"66":"2"},{"67":"1"},{"71":"0"},{"72":"2"},{"73":"1"}]', '2019-07-17 10:36:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Not good', 2);
/*!40000 ALTER TABLE `school_course_date_attend` ENABLE KEYS */;

-- Dumping structure for table school_test.school_course_date_review
CREATE TABLE IF NOT EXISTS `school_course_date_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `school_course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_id` int(10) unsigned NOT NULL DEFAULT '0',
  `to_id` int(10) unsigned NOT NULL DEFAULT '0',
  `star1` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `star2` tinyint(2) DEFAULT '0',
  `star3` tinyint(2) DEFAULT '0',
  `star4` tinyint(2) DEFAULT '0',
  `star5` tinyint(2) DEFAULT '0',
  `review` text,
  `score` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_course_date_review: ~1 rows (approximately)
/*!40000 ALTER TABLE `school_course_date_review` DISABLE KEYS */;
INSERT INTO `school_course_date_review` (`id`, `course_id`, `level_id`, `school_course_id`, `from_id`, `to_id`, `star1`, `star2`, `star3`, `star4`, `star5`, `review`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(2, 35, 5, 28, 83, 82, 0, 0, 0, 0, 0, 'This was really bad experiences!', 1, '2019-07-24 15:50:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 35, 5, 28, 82, 83, 0, 0, 0, 0, 0, 'Fast man!', 5, '2019-07-24 16:21:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `school_course_date_review` ENABLE KEYS */;

-- Dumping structure for table school_test.school_course_reservation
CREATE TABLE IF NOT EXISTS `school_course_reservation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL,
  `original_amount` int(5) unsigned NOT NULL DEFAULT '0',
  `pay_amount` int(5) unsigned NOT NULL DEFAULT '0',
  `athlete_file` varchar(200) DEFAULT NULL,
  `description` text,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bio` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_course_reservation: ~0 rows (approximately)
/*!40000 ALTER TABLE `school_course_reservation` DISABLE KEYS */;
INSERT INTO `school_course_reservation` (`id`, `school_course_id`, `user_id`, `course_id`, `level_id`, `original_amount`, `pay_amount`, `athlete_file`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `bio`) VALUES
	(26, 28, 83, 35, 4, 0, 0, '/uploads/courses/reservationCif90VdTwn.jpeg', 'dfasdfasdf', 1, '2019-07-22 23:07:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dfasdfasdf'),
	(27, 26, 83, 35, 4, 0, 0, '/uploads/courses/reservationvDeMwY2YKU.png', 'asdfasdfasdf', 0, '2019-07-24 19:06:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asdfasdfasdf');
/*!40000 ALTER TABLE `school_course_reservation` ENABLE KEYS */;

-- Dumping structure for table school_test.school_download
CREATE TABLE IF NOT EXISTS `school_download` (
  `school_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_download: ~0 rows (approximately)
/*!40000 ALTER TABLE `school_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_download` ENABLE KEYS */;

-- Dumping structure for table school_test.school_package
CREATE TABLE IF NOT EXISTS `school_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `pay_amount` varchar(50) DEFAULT NULL,
  `pay_status` tinyint(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_package: ~1 rows (approximately)
/*!40000 ALTER TABLE `school_package` DISABLE KEYS */;
INSERT INTO `school_package` (`id`, `package_id`, `user_id`, `pay_amount`, `pay_status`, `created_at`) VALUES
	(7, 1, 82, '50', 1, '2019-07-15 19:53:08'),
	(8, 1, 80, '50', 1, '2019-07-16 00:02:44');
/*!40000 ALTER TABLE `school_package` ENABLE KEYS */;

-- Dumping structure for table school_test.school_pay_history
CREATE TABLE IF NOT EXISTS `school_pay_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `pay_amount` varchar(50) DEFAULT NULL,
  `pay_currency` varchar(30) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `payer_id` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `intent` varchar(50) DEFAULT NULL,
  `purchase_units` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_pay_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `school_pay_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_pay_history` ENABLE KEYS */;

-- Dumping structure for table school_test.school_upload
CREATE TABLE IF NOT EXISTS `school_upload` (
  `school_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_upload: ~3 rows (approximately)
/*!40000 ALTER TABLE `school_upload` DISABLE KEYS */;
INSERT INTO `school_upload` (`school_id`, `type`, `url`, `size`) VALUES
	(43, 'png', '/uploads/schools/3YRwQgikfi.png', '16961'),
	(44, 'png', '/uploads/schools/uGmnwO3yaM.png', '15167'),
	(45, 'jpeg', '/uploads/schools/imEHueHCYc.jpeg', '3823');
/*!40000 ALTER TABLE `school_upload` ENABLE KEYS */;

-- Dumping structure for table school_test.school_user
CREATE TABLE IF NOT EXISTS `school_user` (
  `school_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`school_id`,`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.school_user: ~7 rows (approximately)
/*!40000 ALTER TABLE `school_user` DISABLE KEYS */;
INSERT INTO `school_user` (`school_id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(43, 76, 2, '2019-07-15 15:15:56', '0000-00-00 00:00:00'),
	(43, 77, 3, '2019-07-15 15:16:47', '0000-00-00 00:00:00'),
	(44, 78, 2, '2019-07-15 15:20:57', '0000-00-00 00:00:00'),
	(44, 79, 3, '2019-07-15 15:22:02', '0000-00-00 00:00:00'),
	(45, 80, 2, '2019-07-15 16:25:37', '0000-00-00 00:00:00'),
	(45, 81, 5, '2019-07-15 16:26:37', '0000-00-00 00:00:00'),
	(45, 82, 5, '2019-07-15 18:32:18', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `school_user` ENABLE KEYS */;

-- Dumping structure for table school_test.state
CREATE TABLE IF NOT EXISTS `state` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.state: ~3 rows (approximately)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`id`, `state_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Italy', '2019-05-30 19:36:28', NULL, NULL),
	(2, 'Central Italy', '2019-05-30 19:36:35', NULL, NULL),
	(3, 'Southern Italy', '2019-05-30 19:36:40', NULL, NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

-- Dumping structure for table school_test.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.throttle: ~9 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
	(48, NULL, 'global', NULL, '2019-07-02 07:07:59', '2019-07-02 07:07:59'),
	(49, NULL, 'ip', '::1', '2019-07-02 07:07:59', '2019-07-02 07:07:59'),
	(50, 1, 'user', NULL, '2019-07-02 07:07:59', '2019-07-02 07:07:59'),
	(51, NULL, 'global', NULL, '2019-07-21 15:40:08', '2019-07-21 15:40:08'),
	(52, NULL, 'ip', '::1', '2019-07-21 15:40:08', '2019-07-21 15:40:08'),
	(53, 83, 'user', NULL, '2019-07-21 15:40:08', '2019-07-21 15:40:08'),
	(54, NULL, 'global', NULL, '2019-07-22 15:41:26', '2019-07-22 15:41:26'),
	(55, NULL, 'ip', '::1', '2019-07-22 15:41:26', '2019-07-22 15:41:26'),
	(56, 83, 'user', NULL, '2019-07-22 15:41:26', '2019-07-22 15:41:26');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table school_test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `birth_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` tinyint(2) DEFAULT '0',
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiscal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_type` int(5) DEFAULT '0',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `certified_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) unsigned DEFAULT '0',
  `verify_code` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lati` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longi` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school_test.users: ~9 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `mobile_phone`, `gender`, `dob`, `birth_place`, `nationality`, `pic`, `country`, `state`, `region`, `province`, `city`, `address`, `postal`, `group`, `vat_number`, `fiscal_code`, `membership_type`, `bio`, `certified_type`, `card_number`, `token`, `status`, `verify_code`, `created_at`, `updated_at`, `deleted_at`, `lati`, `longi`) VALUES
	(1, 'admin@admin.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-02 07:08:03', 'John', 'Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, 'MTIzNDU2Nzg5OmZ1dHVyZS5zeWcxMTE4QGdtYWlsLmNvbQ==', '2019-05-20 14:57:43', '2019-07-02 07:08:03', '2019-07-12 18:01:05', NULL, NULL),
	(76, 'future.school@gmail.com', '$2y$10$5GG.Suq3Rjn5lJ7qNq7E7uYpkRE/voKaBm3BSWJ6VeFC3hBUjmVJO', NULL, NULL, 'Mikle', 'Jonson', '12345678', '1', '2019-06-23', NULL, NULL, '/uploads/users/PimNfF9sLa.jpeg', NULL, 'Italy', 'Abruzzo', 'Chieti', 'Altino', 'asfdf wef adsf asdf', '3242asdf', 0, '23423asdf', '34asfasdf', 2, 'I am a school administrator.', NULL, NULL, 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, NULL, '2019-07-15 07:15:56', '2019-07-15 07:15:56', NULL, NULL, NULL),
	(77, 'future.tech@gmail.com', '$2y$10$TbrtFSm/Hd0uV6UfTaVaKuj1P4L5QXzxKC7mAalIREs1w4rjxCyKC', NULL, NULL, 'Karly', 'Axim', '12341234', '2', '2019-06-25', 'asdfasf asdf asdf', 'Italian', '/uploads/users/d4MrZ1nNbd.jpeg', NULL, 'Italy', 'Abruzzo', 'L Aquila', 'Alfedena', 'asdf asdf asfdd', '3423424', 0, '424242', '324123424', 2, 'asdf asdf asdf', '3', '4234234', 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, NULL, '2019-07-15 07:16:47', '2019-07-15 07:16:47', NULL, NULL, NULL),
	(78, 'future.school2@gmail.com', '$2y$10$VJCtq6lyM0KRvvDvtLpyF.JsDLBlKjT.Ps/HXqXu7hclzhoOH.CIa', NULL, NULL, 'Ali', 'Thonm', '12341234', '2', '2019-06-17', NULL, NULL, '/uploads/users/nv91iHLCZq.jpeg', NULL, 'Italy', 'Aosta Valley', 'Aosta', 'Antey-Saint-André', 'asdfasf asdf', '234123', 0, '234234242', '234ldsafui1', 2, 'sadf asdf asdf', NULL, NULL, 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, NULL, '2019-07-15 07:20:57', '2019-07-15 07:20:57', NULL, NULL, NULL),
	(79, 'future.tech2@gmail.com', '$2y$10$kWhV49rEs3ZTfrTDLepgUecl8uSeuJLfBUczadByQKyPOow4EPhq6', NULL, NULL, 'Jhon', 'Marry', '23141234', '2', '2019-06-26', 'sadf safd sadf', 'Italiain', '/uploads/users/Dfea9HT4e9.jpeg', NULL, 'Italy', 'Aosta Valley', 'Aosta', 'Aosta', 'asdf asdf asdfsd', '2142134', 0, '2342134', '3241234', 2, 'saf asdf asdf', '2', '2341234', 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, NULL, '2019-07-15 07:22:02', '2019-07-15 07:22:02', NULL, NULL, NULL),
	(80, 'future.school4@gmail.com', '$2y$10$nTzv9ERsrZPNNXSUVbM4a.1kkfGKy8V23nI/.EQEsK9SZ6uqamXFK', NULL, NULL, 'Marry', 'Jackson', '32141243', '1', '2019-06-11', NULL, NULL, '/uploads/users/jvjcEVXqwn.jpeg', NULL, 'Italy', 'Basilicata', 'Potenza', 'Castelmezzano', 'asdf as fsadf', '21432134', 0, '32141243', '23442134', 2, 'asfsadf', NULL, NULL, 'MTU2MzM1NTQ2NU5JTU12RnVvWkNhb3lVRm5HUERE', 1, NULL, '2019-07-15 08:25:35', '2019-07-15 08:25:35', NULL, NULL, NULL),
	(81, 'furture.athlete2@gmail.com', '$2y$10$YhSzyNXyabD000g2FEyOlOrTmOb6qKqeBWduHu.2uu/Rwqomf0eW.', NULL, NULL, 'Karl', 'Spring', '12341234321', '2', '2019-06-17', 'sdafsadf', 'Italian', '/uploads/users/yB0rpSbpv2.jpeg', NULL, 'Italy', 'Aosta Valley', 'Aosta', 'Aosta', 'sdf asdfasdf', '41423', 0, '23141423', '23141234', 2, 'sadf sadf', '2', '1243213', 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, NULL, '2019-07-15 08:26:37', '2019-07-15 08:26:37', NULL, NULL, NULL),
	(82, 'future.personal5@gmail.com', '$2y$10$qg89NMXBGKwbVgTvtajpd.m5GZhNj/LkYRl4DJWBsfPOIdUpBVChy', NULL, NULL, 'Nadal', 'Rinda', '12341234', '2', '2019-06-17', 'asdfa sdfasd fasdf', 'Italian', '/uploads/users/nv91iHLCZq.jpeg', NULL, 'Italy', 'Calabria', 'Reggio Calabria', 'Calanna', 'sdf asfasdfasdf sdf sad', '1241234', 0, '21341234', '12412341', 1, 'sadf asdf', '3', '21341234', 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx', 1, 'MTIzNDU2Nzg5OmZ1dHVyZS5zeWcxMTE4QGdtYWlsLmNvbQ==', '2019-07-15 10:31:59', '2019-07-15 10:31:59', NULL, NULL, NULL),
	(83, 'future.athlete@gmail.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-24 07:26:52', 'Mario', 'Jack', '12341234', '2', '1993-05-10', 'asdlkfj asdlkf j', 'Italian', '/uploads/users/FinXEqVUyO.jpeg', NULL, 'Italy', 'Puglia', 'Foggia', 'Carpino', 'dasd fasd fasdf', '23lk4j324', 0, '23lk4j', '32lk4j234', 2, 'asfdsadf', '3', '2134123234', 'MTU2Mzk1MzIxMjgzNWM1cHZ4ejk5Q1VYU2R0QTFv', 1, 'YWFhYWFhYWE6ZnV0dXJlLmF0aGxldGVAZ21haWwuY29t', '2019-07-15 16:12:18', '2019-07-24 07:26:52', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table school_test.user_download
CREATE TABLE IF NOT EXISTS `user_download` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.user_download: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_download` ENABLE KEYS */;

-- Dumping structure for table school_test.user_upload
CREATE TABLE IF NOT EXISTS `user_upload` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table school_test.user_upload: ~29 rows (approximately)
/*!40000 ALTER TABLE `user_upload` DISABLE KEYS */;
INSERT INTO `user_upload` (`user_id`, `type`, `url`, `size`) VALUES
	(63, 'docx', '/uploads/users/bpWD8wju1V.docx', '25056'),
	(68, 'jpeg', '/uploads/users/hnFCrPBRoB.jpeg', '58313'),
	(68, 'png', '/uploads/users/61IKtEcooN.png', '6364'),
	(69, 'jpeg', '/uploads/users/rza6FpwXxZ.jpeg', '58313'),
	(69, 'png', '/uploads/users/4BP92GOpRB.png', '6364'),
	(69, 'jpeg', '/uploads/users/gExvZMVJQm.jpeg', '58313'),
	(69, 'png', '/uploads/users/Oepf4laLOp.png', '6364'),
	(69, 'jpeg', '/uploads/users/5O7QDfrnmu.jpeg', '58313'),
	(69, 'png', '/uploads/users/2Whnbxo23p.png', '6364'),
	(69, 'jpeg', '/uploads/users/9nBfRpirhM.jpeg', '58313'),
	(69, 'png', '/uploads/users/Ukvd45nL1h.png', '6364'),
	(70, 'jpeg', '/uploads/users/JjfaFRHb5F.jpeg', '58313'),
	(70, 'png', '/uploads/users/PAHKNeeBRD.png', '6364'),
	(70, 'jpeg', '/uploads/users/OQuGTMTjvd.jpeg', '58313'),
	(70, 'png', '/uploads/users/c6RgSgnQIT.png', '6364'),
	(70, 'jpeg', '/uploads/users/4jG2NQs7Nq.jpeg', '58313'),
	(70, 'png', '/uploads/users/I4yznmTPVV.png', '6364'),
	(70, 'jpeg', '/uploads/users/2fs0yXebdc.jpeg', '58313'),
	(70, 'png', '/uploads/users/EACV2XsXsM.png', '6364'),
	(71, 'jpeg', '/uploads/users/hoec0AEPLC.jpeg', '58313'),
	(71, 'png', '/uploads/users/FQxQggBnjz.png', '6364'),
	(72, 'png', '/uploads/users/FQxQggBnjz.png', '6364'),
	(73, 'jpeg', '/uploads/users/DeDKKfIDx7.jpeg', '4067'),
	(73, 'jpeg', '/uploads/users/YWmFY8Ea6h.jpeg', '5626'),
	(74, 'jpeg', '/uploads/users/SpKYgKbDsx.jpeg', '4067'),
	(77, 'png', '/uploads/users/rNVcqQmNDb.png', '16961'),
	(79, 'png', '/uploads/users/A4sVOmXHhr.png', '15283'),
	(81, 'jpeg', '/uploads/users/oqzUiQ5uT5.jpeg', '5626'),
	(82, 'png', '/uploads/users/VsvNR9sElI.png', '16961'),
	(83, 'png', '/uploads/users/Q9hWEBvKoK.png', '16961');
/*!40000 ALTER TABLE `user_upload` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
