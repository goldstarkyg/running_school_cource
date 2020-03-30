-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2019 at 09:17 AM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `runnersc_school_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(67, 72, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(68, 73, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(69, 74, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(70, 75, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(71, 76, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(72, 77, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-05-20 12:57:43', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(73, 78, 'Gl5v9QHsYtBjtEFrmJxq4Mje1HQlQ0b9', 1, '2019-07-15 06:58:11', '2019-07-15 06:58:11', '2019-07-15 06:58:11'),
(74, 79, '6hWVLCv0EBnpH95kx0w5lmRpP9PbKnce', 1, '2019-07-15 06:59:16', '2019-07-15 06:59:16', '2019-07-15 06:59:16'),
(75, 80, 'yS7udbl5RjgT9nFWRri8Xpztc41786p0', 1, '2019-07-16 10:51:10', '2019-07-16 10:51:10', '2019-07-16 10:51:10'),
(76, 81, '3hQcNqxZS1RAQjJfUmeSFA0JA1BjWpDt', 1, '2019-07-16 10:57:04', '2019-07-16 10:57:03', '2019-07-16 10:57:04'),
(77, 82, 'z3PX2tdhyAIF99XVVQGRyDiKwhmSSiaB', 1, '2019-07-16 10:59:11', '2019-07-16 10:59:11', '2019-07-16 10:59:11'),
(78, 83, 'yGDD9tqkp6bSWAil0eQeR5etW50a7Mqo', 1, '2019-07-16 10:59:11', '2019-07-16 10:59:11', '2019-07-16 10:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `phone`, `comment`, `role`, `address`, `birthday`, `pic`, `status`, `accept_key`, `created_at`, `updated_at`, `deleted_at`) VALUES
(67, 'Michle', 'Jack', 'future.school@gmail.com', '12345678', 'I would like to run a school.\nPlease give me a reply. Thanks.', 2, NULL, NULL, '', 1, 'SoU7pMgtYt', '2019-07-15 00:46:33', '2019-07-15 00:46:33', NULL),
(68, 'Jhon', 'William', 'future.school2@gmail.com', '12345678', 'I would like to open a school.', 2, NULL, NULL, '', 1, 'focXLEyEyl', '2019-07-15 01:17:03', '2019-07-15 01:17:03', NULL),
(69, 'Thomas', 'Sam', 'future.personal@gmail.com', '12345768', 'I am a personal trainer.', 4, NULL, NULL, '', 1, 'tYnwO2xM91', '2019-07-15 01:55:24', '2019-07-15 01:55:24', NULL),
(70, 'Karl', 'Maria', 'future.personal2@gmail.com', '12345678', 'I am a personal trainer.\nPlease contact me!~', 4, NULL, NULL, '', 1, 'KSzBHIEJNd', '2019-07-15 01:56:04', '2019-07-15 01:56:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_lesson`
--

CREATE TABLE `course_lesson` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_name` varchar(100) DEFAULT NULL,
  `main_id` int(10) UNSIGNED DEFAULT '0',
  `level_id` int(10) UNSIGNED DEFAULT '0',
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_level`
--

CREATE TABLE `course_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_name` varchar(100) DEFAULT NULL,
  `level_content` tinytext,
  `level_pic` varchar(100) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED DEFAULT '0',
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_level`
--

INSERT INTO `course_level` (`id`, `level_name`, `level_content`, `level_pic`, `status`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Level 1', 'This is intermediate level course.', '/uploads/courses/7ofmCKBiQR.png', 1, 35, '2019-07-05 02:15:53', '2019-07-05 05:15:38', '2019-07-05 05:15:38'),
(5, 'Level 2', 'Athletes can join here.', NULL, NULL, 35, '2019-07-15 00:32:10', '2019-07-15 00:32:10', '0000-00-00 00:00:00'),
(6, 'Level 3', 'Professionals come on!', NULL, NULL, 35, '2019-07-15 00:32:48', '2019-07-15 00:32:48', '0000-00-00 00:00:00'),
(7, 'Level 1', 'Intermediate level', NULL, NULL, 39, '2019-07-15 00:33:09', '2019-07-15 00:33:09', '0000-00-00 00:00:00'),
(8, 'Level 2', 'Under 20 can join!', NULL, NULL, 39, '2019-07-15 00:33:24', '2019-07-15 00:33:24', '0000-00-00 00:00:00'),
(9, 'Level 1', 'Under 10 can join!', NULL, NULL, 38, '2019-07-15 00:33:39', '2019-07-15 00:33:39', '0000-00-00 00:00:00'),
(10, 'Level 2', 'Entry level course. Here under 20 can join!', NULL, NULL, 38, '2019-07-15 00:33:54', '2019-07-15 00:33:54', '0000-00-00 00:00:00'),
(11, 'Level 3', 'Professional Level! Experienced athletes please come on!', NULL, NULL, 38, '2019-07-15 00:34:23', '2019-07-15 00:34:23', '0000-00-00 00:00:00'),
(12, 'Level 4', 'Expert Level! Expertise welcome!', NULL, NULL, 38, '2019-07-15 00:34:40', '2019-07-15 00:34:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course_main`
--

CREATE TABLE `course_main` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `course_pic` varchar(200) DEFAULT NULL,
  `course_content` text,
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_main`
--

INSERT INTO `course_main` (`id`, `course_name`, `course_pic`, `course_content`, `from_date`, `to_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(35, 'Season 1(Running)', '/uploads/courses/z2cscetS1N.jpeg', 'Currently, we have less than 10 likes on Facebook, 0 Twitter, Instagram and Pinterest followers,\r\nWe have around 150 products to sell in different categories, each with at least 3-4 pictures and some with videos. So you will get enough content to publish and get user attention.\r\n', '2019-07-14 15:14:10', '2019-07-16 22:00:00', 1, '2019-07-03 23:34:08', '2019-07-04 01:16:23', '0000-00-00 00:00:00'),
(36, 'Test Course for My course', '/uploads/courses/SjI7l7TmSO.jpeg', 'This is content', '2019-07-15 02:29:43', '2019-07-30 22:00:00', 2, '2019-07-03 23:44:07', '2019-07-15 00:29:43', '2019-07-15 00:29:43'),
(37, 'My Course name aa', '/uploads/courses/xbGPxSD56F.png', 'This is my test course for test my name', '2019-07-15 02:29:57', '2019-07-30 22:00:00', 2, '2019-07-04 06:45:27', '2019-07-15 00:29:57', '2019-07-15 00:29:57'),
(38, 'Season 2(Running)', NULL, 'This is the course for EVERY ONE!\r\nHope your passion and upgrade!', '2019-07-14 22:00:00', '2019-09-18 22:00:00', 0, '2019-07-15 00:30:45', '2019-07-15 00:30:45', '0000-00-00 00:00:00'),
(39, 'Season 3(Running)', NULL, 'This is the course for woman.\r\nHello, your chance is here!', '2019-10-07 22:00:00', '2019-11-13 23:00:00', 0, '2019-07-15 00:31:41', '2019-07-15 00:31:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int(10) NOT NULL,
  `cat_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `cat_id`, `mailname`, `sender`, `subject`, `content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(92, NULL, 'to_manager_contact', 'School Support Center', '[School] A contact requested by any customer', 'Dear {user_name}<br><br>&nbsp;We received a request from a new customer.&nbsp; so please take the time to check the details below.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br>key: {key}</div><div><br></div><div>Please <a href=\'{domain}\'> click here</a> to visit<br><br></div>', NULL, '2019-06-29 17:03:08', NULL, NULL),
(93, NULL, 'to_customer_school_register', 'School Support Center', '[School] Your school information has been transferred to school center team', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been completed, so please take the time until arrived respond..<div>School center team will be transferred your confirm information after check.</div><div><div><br></div><div>If you have any questions, please contact School&nbsp; support center.<br>Please <a href=\"{domain}\"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>', NULL, '2019-06-29 16:57:24', NULL, NULL),
(101, NULL, 'to_customer_contact', 'School Support Center', '[School] Your contact requested to school center', 'Dear {user_name}<br><br>&nbsp;We received a request from a you.&nbsp; We will send you more detail after check your information.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br></div><div><br></div><div>Please <a href=\'{domain}\'> click here </a> to visit<br></div>', NULL, '2019-06-29 17:03:52', NULL, NULL),
(102, NULL, 'to_customer_contact_approved', 'School Support Center', '[School] Your contact information checked.', 'Dear {user_name}<br><br>&nbsp;You contact information checked. Please register with below key in register page.<br><br>━━━━━━━━━━━━━━━━━<br>■■Customer details■■<br>━━━━━━━━━━━━━━━━━<br>First name: {first_name}<br>Last name: {last_name}<br>E-mail: {email}<br>Phone: {phone}<div>Role:{role}<br>Comment: {comment}<br><span style=\"font-weight: bold; color: rgb(0, 0, 255);\">key: {key}</span><br><br></div><div>Please&nbsp;<a href=\"{domain}\" style=\"background-color: rgb(255, 255, 255);\">click here&nbsp;</a>to visit<br></div>', NULL, '2019-07-02 14:18:06', NULL, NULL),
(103, NULL, 'to_manager_school_register', 'School Support Center', '[School] A school information request has been sent from any customer.', 'Dear<br>A school information request has been sent from {user_name}.<div>Please check.</div><div><br><div><div>Please&nbsp;<a href=\"{domain}\" style=\"background-color: rgb(255, 255, 255);\">click here&nbsp;</a>to visit<br style=\"background-color: rgb(249, 249, 249);\"></div>\r\n                                                                                                                        </div></div>', NULL, '2019-07-02 14:18:43', NULL, NULL),
(104, NULL, 'to_customer_school_approve', 'School Support Center', '[School] Your school has been approved.', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been approved.<div>Your default password is 123456<br><div><div>Please update your password after login.</div><div><span style=\"color: inherit;\"><br></span></div><div><span style=\"color: inherit;\">If you have any questions, please contact school&nbsp; support center.</span><br></div><div><div>Please <a href=\"{domain}\"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>\r\n                                                                                                                        </div></div>', NULL, '2019-06-29 17:32:09', NULL, NULL),
(105, NULL, 'to_customer_school_reject', 'School Support Center', '[School] Your school information has been rejected.', 'Dear {user_name}<br>Thank you for choosing school. Your register requested has been rejected.<div><div><div><span style=\"color: inherit;\"><br></span></div><div><span style=\"color: inherit;\">If you have any questions, please contact school&nbsp; support center.</span><br></div><div><div>Please <a href=\"{domain}\"> click here </a> to visit<br><br></div>\r\n                                                                                                                        </div>\r\n                                                                                                                        </div></div>', NULL, '2019-06-29 17:33:31', NULL, NULL),
(106, NULL, 'to_athlete_verify', 'School Support Center', '[School] Go to link to verify your content.', 'Dear {user_name}<br><br>&nbsp;You contact information checked. Please click <a href=\"{verify}\"> here </a> to verify your content.<div>After verify, You will show all items in athlete page.<br><div><br>If you any questions,&nbsp;<span style=\"color: inherit;\">&nbsp;</span><a href=\"{domain}\" style=\"background-color: rgb(255, 255, 255);\">click here&nbsp;</a><span style=\"color: inherit;\">to visit school center.</span></div>\r\n                                                                                                                        </div>', NULL, '2019-07-02 14:34:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

CREATE TABLE `membership_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'testaaaa', 1, '2019-07-01 14:49:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_04_174350_soft_delete_users', 1),
(3, '2014_12_10_011106_add_fields_to_user_table', 1),
(4, '2015_11_10_140011_create_files_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `stock` int(5) NOT NULL DEFAULT '0',
  `price` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `pic`, `stock`, `price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5 staff t-shirts', '/uploads/packages/teesx6VvwN.jpeg', 5, 2, 3, '2019-07-01 06:47:35', '2019-07-01 06:58:25', '0000-00-00 00:00:00'),
(2, 'Know how Runner\'s School Italy', '/uploads/packages/ylomoKNqQZ.jpeg', 5, 3, 1, '2019-07-01 06:50:37', '2019-07-01 06:50:37', '0000-00-00 00:00:00'),
(3, 'Printing of 1000 A5 flyers', '/uploads/packages/ylomoKNqQZ.jpeg', 5, 3, 1, '2019-07-01 06:50:37', '2019-07-01 06:50:37', '0000-00-00 00:00:00'),
(4, 'Expo Banner', '/uploads/packages/ylomoKNqQZ.jpeg', 5, 4, 1, '2019-07-01 06:50:37', '2019-07-01 06:50:37', '0000-00-00 00:00:00'),
(5, 'Advertising placement', '/uploads/packages/ylomoKNqQZ.jpeg', 5, 5, 1, '2019-07-01 06:50:37', '2019-07-01 06:50:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'bkDjiGdwyBYRO1HUKFSwI3uNSkhFZZeF', '2019-05-20 21:14:50', '2019-05-20 21:14:50'),
(77, 1, 'l3OBWzwts8Cmg2JaNzXSixUhoNw3nJfA', '2019-06-29 06:15:20', '2019-06-29 06:15:20'),
(78, 1, 'faLk0MYbAjjUpPhLrUBxLnj0da9a51Fd', '2019-06-29 11:52:15', '2019-06-29 11:52:15'),
(79, 1, '2a01cDlo0z11h0HVI6V5tjnLlT87Dt0k', '2019-06-29 11:52:43', '2019-06-29 11:52:43'),
(80, 1, 'F5o3b7cC8Rk6jjf1h2sQbUpHWggkx09h', '2019-07-02 05:08:03', '2019-07-02 05:08:03'),
(81, 70, '74rto3oDDTA2PlO8w7AX2sRZgIH5F1ST', '2019-07-02 06:48:20', '2019-07-02 06:48:20'),
(82, 71, 'He1sFd3RwkXK0WcZPFxiT3SAxq2Ft5Ev', '2019-07-02 08:47:25', '2019-07-02 08:47:25'),
(83, 71, 'wlBXGm7Gj8lpfFNwHL72C7Aa3hXZHBbu', '2019-07-02 08:47:30', '2019-07-02 08:47:30'),
(84, 1, '8tuEDhM6C2G2V17f2SDPrMVvYuVV4QJj', '2019-07-14 13:02:36', '2019-07-14 13:02:36'),
(85, 67, 'EiUzr5yprNt0SAe5Qa9jF1eAA6OykLXz', '2019-07-14 13:06:28', '2019-07-14 13:06:28'),
(86, 67, 'Q9q7vHAj0wCTIgsJdAzxkCQXSMTTx639', '2019-07-14 13:11:44', '2019-07-14 13:11:44'),
(87, 67, 'CcQkUy9DI9PYoGT54dqRCzwlFnVOaUNF', '2019-07-14 13:12:55', '2019-07-14 13:12:55'),
(88, 67, '5Nk8zoRL0DAUEpmwUIBvxXZtnByUdIN0', '2019-07-14 13:51:46', '2019-07-14 13:51:46'),
(89, 1, 'ptQ9hIWRjTSLI6fkFipKWmcYaKoAFFyl', '2019-07-14 13:52:56', '2019-07-14 13:52:56'),
(90, 67, 'vSVTETaModthRedprTGotUdHvqyz5Myt', '2019-07-14 13:53:24', '2019-07-14 13:53:24'),
(91, 67, 'F4MaIhHqhCDA9qxXbHzIGxQQZ9wj9KuJ', '2019-07-14 13:56:10', '2019-07-14 13:56:10'),
(92, 67, 'ImlQ51vfysC8TDcq8YnBQzzRevTEoJCU', '2019-07-14 13:56:32', '2019-07-14 13:56:32'),
(93, 67, 'RKIoUGAnllzMR7HEgKDYWaj6j0DbELXo', '2019-07-14 14:23:10', '2019-07-14 14:23:10'),
(94, 67, '1StLXClkYSDpcZchsuY5W3qAeppOvVel', '2019-07-14 14:23:31', '2019-07-14 14:23:31'),
(95, 67, 'Xj64W5NFBcg2DZicAx1yRuNbLfi091LK', '2019-07-14 14:24:02', '2019-07-14 14:24:02'),
(96, 67, 'ZaZ1C3yBuERR18REOMf8Fe17GPn2OcPx', '2019-07-14 14:35:39', '2019-07-14 14:35:39'),
(97, 1, 'wIwTZlN5lieTfEeF00W4w28NZprCtoOL', '2019-07-14 18:08:04', '2019-07-14 18:08:04'),
(98, 1, 'AdjtGpaXrY5YWP86uMi6tTNJb0EoKUO6', '2019-07-14 18:08:37', '2019-07-14 18:08:37'),
(99, 1, 'p8Kz5jCeJb2tw7z9eVoka1V5sFpSAs3I', '2019-07-15 00:29:06', '2019-07-15 00:29:06'),
(100, 1, 'T7Mqjzu1tC6al5hAp31w5mjXv9IPIAYm', '2019-07-15 00:35:05', '2019-07-15 00:35:05'),
(101, 1, 'rEuo6n1hiq1DgOR5OhB9pRrdvLJmr5Rt', '2019-07-15 00:46:48', '2019-07-15 00:46:48'),
(102, 1, 'wm6R9d2Gb4zqyRZjPuqKle72mIa4iSWs', '2019-07-15 01:10:13', '2019-07-15 01:10:13'),
(103, 1, 'DUn23NYxquzIXqmjIU7trKc0CDgtxSSS', '2019-07-15 01:12:08', '2019-07-15 01:12:08'),
(104, 1, 'oamvmnsD29i3D4qf9D5xsaiUIuL8v9o4', '2019-07-15 01:17:10', '2019-07-15 01:17:10'),
(105, 1, 'Yv2vZAJJo2QqcshDoSezksIrU8dnQ4aK', '2019-07-15 01:32:02', '2019-07-15 01:32:02'),
(106, 1, 'nuwBaczSJrveYbBg9PwMARTabc4qAG6h', '2019-07-15 01:41:43', '2019-07-15 01:41:43'),
(107, 1, 'phMp1SiV8ytc5vK6gOyVIMd05HMjd768', '2019-07-15 01:44:27', '2019-07-15 01:44:27'),
(108, 72, 'zYBn1cLlQ8ROrBAQnzVfeRGjYwqt9GxY', '2019-07-15 01:51:10', '2019-07-15 01:51:10'),
(109, 74, '2gbToyQRC92GEHNxIlqKMJjxKigP19e9', '2019-07-15 01:53:17', '2019-07-15 01:53:17'),
(110, 1, 'NnP8P7GXCS45EFOu2aPvpRxMR6LfCVuE', '2019-07-15 01:56:41', '2019-07-15 01:56:41'),
(111, 72, 'xhqPp6SV5UtBL0V774X8VXNkIpWJEbQS', '2019-07-15 01:57:53', '2019-07-15 01:57:53'),
(112, 1, 'jXJCOqYCsVDNKYd7jOFKMbCIlg8OrfO2', '2019-07-15 04:53:22', '2019-07-15 04:53:22'),
(113, 76, 'h9fdMuG1DYBIsjlVkFNoVSz8jnt24fcA', '2019-07-15 04:56:44', '2019-07-15 04:56:44'),
(114, 1, 'rElnEkj0rX0kPc1nTrLEZDlIPOkvxq0a', '2019-07-15 06:45:23', '2019-07-15 06:45:23'),
(115, 1, 'Cev2hRPXyyGy7bE8KNkujV1bLB7FxMt7', '2019-07-15 06:52:09', '2019-07-15 06:52:09'),
(116, 76, 'GAT3uinJgcxxFcx5yYdRWVxqqBvvpbtO', '2019-07-15 06:55:55', '2019-07-15 06:55:55'),
(117, 1, 'z1Dg6DjndGKKqoUTD3p0qKf9Wwv9pFJb', '2019-07-15 06:59:23', '2019-07-15 06:59:23'),
(118, 78, 'JjOzmUtnyCEptXRhotxrGUrQv9niqKO1', '2019-07-15 07:00:20', '2019-07-15 07:00:20'),
(119, 79, 'Mxse6McGcO87g42EQP9oDdWx7QNdcbTR', '2019-07-15 07:01:07', '2019-07-15 07:01:07'),
(120, 72, 'H8frjWKPSDr3pVLmHqxJIlx8scJN9Krq', '2019-07-15 07:01:40', '2019-07-15 07:01:40'),
(121, 1, '2i0DK3XolegNKmiZIhNFOyFHBSXEVNAI', '2019-07-15 07:40:20', '2019-07-15 07:40:20'),
(122, 72, 'wCAIOdlvt9HSZ43QmDyp9fXhNhtMsYaI', '2019-07-15 07:43:26', '2019-07-15 07:43:26'),
(123, 1, 'uZyqZR61AYvzY6e021BOPMQ8oiNMm19r', '2019-07-16 10:46:51', '2019-07-16 10:46:51'),
(124, 72, 'ykgJKonGsG8zXDiskupzvJm6t2Z4hoUC', '2019-07-16 11:00:04', '2019-07-16 11:00:04'),
(125, 72, 'S0shtfA6AxPTecEJPSJlDfVXgO6ycitN', '2019-07-16 11:05:24', '2019-07-16 11:05:24'),
(126, 72, 'Q3sj9KutRDfpcFH127RYxA1jE2vnVfvr', '2019-07-16 11:07:20', '2019-07-16 11:07:20'),
(127, 1, 'wcxFwH3Nn1mQ9AwtBtDc3mEiLSI0HLoA', '2019-07-16 11:20:33', '2019-07-16 11:20:33'),
(128, 72, 'F1ORXnDu3MLwW6Y2oq3gND3B1nBEQOcj', '2019-07-16 11:28:11', '2019-07-16 11:28:11'),
(129, 73, 'tk6oWXk8UUWgjsQt7yrjuEMrOdN251Hy', '2019-07-16 11:41:26', '2019-07-16 11:41:26'),
(130, 73, 'VAlyofLtuyBndpdZ5cGZ3ybQuYmyY5WA', '2019-07-16 12:14:54', '2019-07-16 12:14:54'),
(131, 72, 'fWuLYk0Ewg0ArSIpTqZwqI4z0rRHp9Ii', '2019-07-16 12:27:33', '2019-07-16 12:27:33'),
(132, 73, 'D7SyZNZaJhM2JXunfvI3twrx0ZqPvYA4', '2019-07-16 12:28:11', '2019-07-16 12:28:11'),
(133, 73, '4stkL7IO1y0Ael4pBNCuyOmTnrZu65rI', '2019-07-16 12:47:14', '2019-07-16 12:47:14'),
(134, 1, 'rhvii3Wmk7dEXaUQvDXpCBWsoud8DC3A', '2019-07-16 14:29:06', '2019-07-16 14:29:06'),
(135, 1, 'kdN64fPHGfG22NMS3NSMChDfwHvA1Kcb', '2019-07-16 14:30:37', '2019-07-16 14:30:37'),
(136, 72, 'u0QBssISnLG0YKwR64bW8sX0PAFT0hAc', '2019-07-16 23:15:26', '2019-07-16 23:15:26'),
(137, 73, '0x6P1XH4814BKZgJUS1UAcWkSWVP0A3S', '2019-07-16 23:26:30', '2019-07-16 23:26:30'),
(138, 73, '77eFWgrKrvgN6pIerFjK6685UvGtZc54', '2019-07-16 23:53:33', '2019-07-16 23:53:33'),
(139, 1, 'dTRgYoOhL2aBa2mLmwm4gw7CNhAlfMnG', '2019-07-17 05:26:08', '2019-07-17 05:26:08'),
(140, 73, '8aswJb5cUwQTAo3fKzPQumMoVWzHCIXW', '2019-07-17 05:30:40', '2019-07-17 05:30:40'),
(141, 72, '7vSRocFW5YjY8gIVyqp7KE7Sz4cCBelz', '2019-07-17 06:34:12', '2019-07-17 06:34:12'),
(142, 72, 'czsBihBEnczkaSSi8sNyQDnDDoZsPvDP', '2019-07-17 06:40:21', '2019-07-17 06:40:21'),
(143, 72, 'GH1orA1rBGesi7A8zjSlm55Cxy9QtZHW', '2019-07-17 06:45:49', '2019-07-17 06:45:49'),
(144, 73, 'oyDQ4qlvKhrHTkhNVcUFNXsEA9N23MOD', '2019-07-17 06:47:30', '2019-07-17 06:47:30'),
(145, 1, 'WBanEbG8ooKIyW9IaOZI9UCrqZ29Cr3a', '2019-07-17 06:51:16', '2019-07-17 06:51:16'),
(146, 1, 'uglYZCs4wwKAjs5oIBqlCk2hmJU2DgLG', '2019-07-18 07:57:30', '2019-07-18 07:57:30'),
(147, 72, 'Tf9M7Sb0mtKLKbJ5K1Ij1ef4fACpxIz7', '2019-07-18 07:57:52', '2019-07-18 07:57:52'),
(148, 1, 'NOFFkqnKmcfZrxIGXOn2MxWAPSaR6s3I', '2019-07-18 07:58:34', '2019-07-18 07:58:34'),
(149, 73, 'ia2i5UOWBd4AOA8j03byd7IA0WmcJNHb', '2019-07-18 08:00:13', '2019-07-18 08:00:13'),
(150, 1, 'VsurMwiV7v8KgqcqemnRT0nlt5vVaGoI', '2019-07-19 23:53:46', '2019-07-19 23:53:46'),
(151, 1, 'NC3eVLAZxT6BW9cGkUqALEzDItAeaG8O', '2019-07-20 01:07:27', '2019-07-20 01:07:27'),
(152, 72, 'udIZecvYohgOPv63rj6NmavfsstH5EBP', '2019-07-20 01:08:22', '2019-07-20 01:08:22'),
(153, 1, 'g7UOzz9CHb5Bki9dBDFN1lpc8drvgwIS', '2019-07-20 01:14:51', '2019-07-20 01:14:51'),
(154, 72, 'zDP5HNDHT9TFZAMI0YMHm7MlhtJQUYen', '2019-07-20 01:15:13', '2019-07-20 01:15:13'),
(155, 80, 'C8NteRKfwghTEe4ebJ19zd5nQgRSbCKt', '2019-07-22 19:10:40', '2019-07-22 19:10:40'),
(156, 80, '2moSWl23tErNUUfxP5TvSTcPQrtRcEHD', '2019-07-22 19:20:04', '2019-07-22 19:20:04'),
(157, 80, 'prUM5enBBM6NAkttjjeAsVUF3gXgHQen', '2019-07-24 04:13:55', '2019-07-24 04:13:55'),
(158, 1, 'cKLDFRM9wYvophGmlfje2qnx8TnHJCZd', '2019-07-24 07:42:40', '2019-07-24 07:42:40'),
(159, 80, '5xSKGSgsddazEvyDq0xV3MSYX1IRPi6N', '2019-07-24 10:47:28', '2019-07-24 10:47:28'),
(160, 80, 'ikBw0aoFiuvNZ3nfxDGD5z0Eun0UNDXF', '2019-07-24 16:08:34', '2019-07-24 16:08:34'),
(161, 1, 'ETm6c6BFFkrVBqGtT5YIvjLqALiQIuKd', '2019-07-25 01:04:39', '2019-07-25 01:04:39'),
(162, 1, 'ud86psCK9K1V7t1xB8U0aZKCGr378jTe', '2019-07-25 02:14:58', '2019-07-25 02:14:58'),
(163, 1, 'RYpNhfrSbcLKiGcpeEjPdH63brfBzMq6', '2019-07-25 02:19:01', '2019-07-25 02:19:01'),
(164, 1, 'rC00mL6hEwGAqWJXXoDhyUX351Bf5qKM', '2019-07-25 02:20:48', '2019-07-25 02:20:48'),
(165, 1, 'MsQfWjxnhNSrnDVfbI5f1vDySO1gwgDj', '2019-07-25 02:33:19', '2019-07-25 02:33:19'),
(166, 1, 'tVfjW0Tjhs8CtMzM5rOKV6BFqqSb6gap', '2019-07-25 02:41:47', '2019-07-25 02:41:47'),
(167, 1, 'xm5maFkf91KGcJObXUDzPyhcJrIE3WJk', '2019-07-25 02:47:59', '2019-07-25 02:47:59'),
(168, 1, 'DQBlyWiPKcYMEsI1JAYASHhlFnnRsnts', '2019-07-25 02:50:35', '2019-07-25 02:50:35'),
(169, 1, '69Shz4DrWAPVac7yge9BwDbaNLYQKndZ', '2019-07-25 03:03:03', '2019-07-25 03:03:03'),
(170, 1, 'ZnjFCTQZQ2MTnM0DLyoiJuivY21tAvgS', '2019-07-25 03:11:21', '2019-07-25 03:11:21'),
(171, 1, 'pJWsXyxJSwpG4lzUjgm0kgZkzTrOhAPr', '2019-07-25 03:22:25', '2019-07-25 03:22:25'),
(172, 1, '4YTjbzt9iPpwa7pbjFEhEYnVdju08rdm', '2019-07-25 03:29:08', '2019-07-25 03:29:08'),
(173, 1, 'Zz83tPthSt07oS9sk0usGeNGaAlnfF6F', '2019-07-25 05:07:53', '2019-07-25 05:07:53'),
(174, 80, 'NX7B6aNnln7Bcy8OKyyB0skhKVbDKBWn', '2019-07-25 05:09:21', '2019-07-25 05:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) DEFAULT '0',
  `province_name` varchar(100) DEFAULT NULL,
  `city_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `region_id`, `province_name`, `city_list`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Aosta', 'Allein, Antey-Saint-André, Aosta, Arnad, Arvier, Avise, Ayas, Aymavilles, Bard, Bionaz, Brissogne, Brusson, Challand-Saint-Anselme, Challand-Saint-Victor, Chambave, Chamois, Champdepraz, Champorcher, Charvensod, Châtillon, Cogne, Courmayeur, Donnas, Doues, Emarèse, Etroubles, Fénis, Fontainemore, Gaby, Gignod, Gressan, Gressoney-La-Trinité, Gressoney-Saint-Jean, Hône, Introd, Issime, Issogne, Jovençan, La Magdeleine, La Salle, La Thuile, Lillianes, Montjovet, Morgex, Nus, Ollomont, Oyace, Perloz, Pollein, Pontboset, Pontey, Pont-Saint-Martin, Pré-Saint-Didier, Quart, Rhêmes-Notre-Dame, Rhêmes-Saint-Georges, Roisan, Saint-Christophe, Saint-Denis, Saint-Marcel, Saint-Nicolas, Saint-Oyen, Saint-Pierre, Saint-Rhémy-en-Bosses, Saint-Vincent, Sarre, Torgnon, Valgrisenche, Valpelline, Valsavarenche, Valtournenche, Verrayes, Verrès, Villeneuve', '2019-05-30 20:00:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 9, 'Chieti', 'Altino, Archi, Ari, Arielli, Atessa, Bomba, Borrello, Bucchianico, Canosa Sannita, Carpineto Sinello, Carunchio, Casacanditella, Casalanguida, Casalbordino, Casalincontrada, Casoli, Castel Frentano, Castelguidone, Castiglione Messer Marino, Celenza sul Trigno, Chieti, Civitaluparella, Civitella Messer Raimondo, Colledimacine, Colledimezzo, Crecchio, Cupello, Dogliola, Fallo, Fara Filiorum Petri, Fara San Martino, Filetto, Fossacesia, Fraine, Francavilla al Mare, Fresagrandinaria, Frisa, Furci, Gamberale, Gessopalena, Gissi, Giuliano Teatino, Guardiagrele, Guilmi, Lama dei Peligni, Lanciano, Lentella, Lettopalena, Liscia, Miglianico, Montazzoli, Montebello sul Sangro, Monteferrante, Montelapiano, Montenerodomo, Monteodorisio, Mozzagrogna, Orsogna, Ortona, Paglieta, Palena, Palmoli, Palombaro, Pennadomo, Pennapiedimonte, Perano, Pietraferrazzana, Pizzoferrato, Poggiofiorito, Pollutri, Pretoro, Quadri, Rapino, Ripa Teatina, Rocca San Giovanni, Roccamontepiano, Roccascalegna, Roccaspinalveti, Roio del Sangro, Rosello, San Buono, San Giovanni Lipioni, San Giovanni Teatino, San Martino sulla Marrucina, San Salvo, San Vito Chietino, Santa Maria Imbaro, Sant\'Eusanio del Sangro, Scerni, Schiavi di Abruzzo, Taranta Peligna, Tollo, Torino di Sangro, Tornareccio, Torrebruna, Torrevecchia Teatina, Torricella Peligna, Treglio, Tufillo, Vacri, Vasto, Villa Santa Maria, Villalfonsina, Villamagna', '2019-05-30 20:01:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, 'L Aquila', 'Acciano, Aielli, Alfedena, Anversa degli Abruzzi, Ateleta, Avezzano, Balsorano, Barete, Barisciano, Barrea, Bisegna, Bugnara, Cagnano Amiterno, Calascio, Campo di Giove, Campotosto, Canistro, Cansano, Capestrano, Capistrello, Capitignano, Caporciano, Cappadocia, Carapelle Calvisio, Carsoli, Castel del Monte, Castel di Ieri, Castel di Sangro, Castellafiume, Castelvecchio Calvisio, Castelvecchio Subequo, Celano, Cerchio, Civita d\'Antino, Civitella Alfedena, Civitella Roveto, Cocullo, Collarmele, Collelongo, Collepietro, Corfinio, Fagnano Alto, Fontecchio, Fossa, Gagliano Aterno, Gioia dei Marsi, Goriano Sicoli, Introdacqua, L\'Aquila, Lecce nei Marsi, Luco dei Marsi, Lucoli, Magliano de\' Marsi, Massa d\'Albe, Molina Aterno, Montereale, Morino, Navelli, Ocre, Ofena, Opi, Oricola, Ortona dei Marsi, Ortucchio, Ovindoli, Pacentro, Pereto, Pescasseroli, Pescina, Pescocostanzo, Pettorano sul Gizio, Pizzoli, Poggio Picenze, Prata d\'Ansidonia, Pratola Peligna, Prezza, Raiano, Rivisondoli, Rocca di Botte, Rocca di Cambio, Rocca di Mezzo, Rocca Pia, Roccacasale, Roccaraso, San Benedetto dei Marsi, San Benedetto in Perillis, San Demetrio ne\' Vestini, San Pio delle Camere, San Vincenzo Valle Roveto, Sante Marie, Sant\'Eusanio Forconese, Santo Stefano di Sessanio, Scanno, Scontrone, Scoppito, Scurcola Marsicana, Secinaro, Sulmona, Tagliacozzo, Tione degli Abruzzi, Tornimparte, Trasacco, Villa Santa Lucia degli Abruzzi, Villa Sant\'Angelo, Villalago, Villavallelonga, Villetta Barrea, Vittorito', '2019-05-30 20:01:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 9, 'Pescara', 'Abbateggio, Alanno, Bolognano, Brittoli, Bussi sul Tirino, Cappelle sul Tavo, Caramanico Terme, Carpineto della Nora, Castiglione a Casauria, Catignano, Cepagatti, Città Sant\'Angelo, Civitaquana, Civitella Casanova, Collecorvino, Corvara, Cugnoli, Elice, Farindola, Lettomanoppello, Loreto Aprutino, Manoppello, Montebello di Bertona, Montesilvano, Moscufo, Nocciano, Penne, Pescara, Pescosansonesco, Pianella, Picciano, Pietranico, Popoli, Roccamorice, Rosciano, Salle, San Valentino in Abruzzo Citeriore, Sant\'Eufemia a Maiella, Scafa, Serramonacesca, Spoltore, Tocco da Casauria, Torre De\' Passeri, Turrivalignani, Vicoli, Villa Celiera', '2019-05-30 20:01:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 9, 'Teramo', 'Alba Adriatica, Ancarano, Arsita, Atri, Basciano, Bellante, Bisenti, Campli, Canzano, Castel Castagna, Castellalto, Castelli, Castiglione Messer Raimondo, Castilenti, Cellino Attanasio, Cermignano, Civitella del Tronto, Colledara, Colonnella, Controguerra, Corropoli, Cortino, Crognaleto, Fano Adriano, Giulianova, Isola del Gran Sasso d\'Italia, Martinsicuro, Montefino, Montorio al Vomano, Morro d\'Oro, Mosciano Sant\'Angelo, Nereto, Notaresco, Penna Sant\'Andrea, Pietracamela, Pineto, Rocca Santa Maria, Roseto degli Abruzzi, Sant\'Egidio alla Vibrata, Sant\'Omero, Silvi, Teramo, Torano Nuovo, Torricella Sicura, Tortoreto, Tossicia, Valle Castellana', '2019-05-30 20:01:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 14, 'Matera', 'Accettura, Aliano, Bernalda, Calciano, Cirigliano, Colobraro, Craco, Ferrandina, Garaguso, Gorgoglione, Grassano, Grottole, Irsina, Matera, Miglionico, Montalbano Jonico, Montescaglioso, Nova Siri, Oliveto Lucano, Pisticci, Policoro, Pomarico, Rotondella, Salandra, San Giorgio Lucano, San Mauro Forte, Scanzano Jonico, Stigliano, Tricarico, Tursi, Valsinni', '2019-05-30 20:03:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 14, 'Potenza', 'Abriola, Acerenza, Albano di Lucania, Anzi, Armento, Atella, Avigliano, Balvano, Banzi, Baragiano, Barile, Bella, Brienza, Brindisi Montagna, Calvello, Calvera, Campomaggiore, Cancellara, Carbone, Castelgrande, Castelluccio Inferiore, Castelluccio Superiore, Castelmezzano, Castelsaraceno, Castronuovo di Sant\'Andrea, Cersosimo, Chiaromonte, Corleto Perticara, Episcopia, Fardella, Filiano, Forenza, Francavilla in Sinni, Gallicchio, Genzano di Lucania, Ginestra, Grumento Nova, Guardia Perticara, Lagonegro, Latronico, Laurenzana, Lauria, Lavello, Maratea, Marsico Nuovo, Marsicovetere, Maschito, Melfi, Missanello, Moliterno, Montemilone, Montemurro, Muro Lucano, Nemoli, Noepoli, Oppido Lucano, Palazzo San Gervasio, Paterno, Pescopagano, Picerno, Pietragalla, Pietrapertosa, Pignola, Potenza, Rapolla, Rapone, Rionero in Vulture, Ripacandida, Rivello, Roccanova, Rotonda, Ruoti, Ruvo del Monte, San Chirico Nuovo, San Chirico Raparo, San Costantino Albanese, San Fele, San Martino d\'Agri, San Paolo Albanese, San Severino Lucano, Sant\'Angelo Le Fratte, Sant\'Arcangelo, Sarconi, Sasso di Castalda, Satriano di Lucania, Savoia di Lucania, Senise, Spinoso, Teana, Terranova di Pollino, Tito, Tolve, Tramutola, Trecchina, Trivigno, Vaglio Basilicata, Venosa, Vietri di Potenza, Viggianello, Viggiano', '2019-05-30 20:04:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 15, 'Catanzaro', 'Albi, Amaroni, Amato, Andali, Argusto, Badolato, Belcastro, Borgia, Botricello, Caraffa di Catanzaro, Cardinale, Carlopoli, Catanzaro, Cenadi, Centrache, Cerva, Chiaravalle Centrale, Cicala, Conflenti, Cortale, Cropani, Curinga, Davoli, Decollatura, Falerna, Feroleto Antico, Fossato Serralta, Gagliato, Gasperina, Gimigliano, Girifalco, Gizzeria, Guardavalle, Isca sullo Ionio, Jacurso, Lamezia Terme, Magisano, Maida, Marcedusa, Marcellinara, Martirano, Martirano Lombardo, Miglierina, Montauro, Montepaone, Motta Santa Lucia, Nocera Terinese, Olivadi, Palermiti, Pentone, Petrizzi, Petronà, Pianopoli, Platania, San Floro, San Mango d\'Aquino, San Pietro a Maida, San Pietro Apostolo, San Sostene, San Vito sullo Ionio, Santa Caterina dello Ionio, Sant\'Andrea Apostolo dello Ionio, Satriano, Sellia, Sellia Marina, Serrastretta, Sersale, Settingiano, Simeri Crichi, Sorbo San Basile, Soverato, Soveria Mannelli, Soveria Simeri, Squillace, Stalettì, Taverna, Tiriolo, Torre di Ruggiero, Vallefiorita, Zagarise', '2019-05-30 20:06:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 15, 'Cosenza', 'Acquaformosa, Acquappesa, Acri, Aiello Calabro, Aieta, Albidona, Alessandria del Carretto, Altilia, Altomonte, Amantea, Amendolara, Aprigliano, Belmonte Calabro, Belsito, Belvedere Marittimo, Bianchi, Bisignano, Bocchigliero, Bonifati, Buonvicino, Calopezzati, Caloveto, Campana, Canna, Cariati, Carolei, Carpanzano, Casole Bruzio, Cassano all\'Ionio, Castiglione Cosentino, Castrolibero, Castroregio, Castrovillari, Celico, Cellara, Cerchiara di Calabria, Cerisano, Cervicati, Cerzeto, Cetraro, Civita, Cleto, Colosimi, Corigliano Calabro, Cosenza, Cropalati, Crosia, Diamante, Dipignano, Domanico, Fagnano Castello, Falconara Albanese, Figline Vegliaturo, Firmo, Fiumefreddo Bruzio, Francavilla Marittima, Frascineto, Fuscaldo, Grimaldi, Grisolia, Guardia Piemontese, Lago, Laino Borgo, Laino Castello, Lappano, Lattarico, Longobardi, Longobucco, Lungro, Luzzi, Maierà, Malito, Malvito, Mandatoriccio, Mangone, Marano Marchesato, Marano Principato, Marzi, Mendicino, Mongrassano, Montalto Uffugo, Montegiordano, Morano Calabro, Mormanno, Mottafollone, Nocara, Oriolo, Orsomarso, Paludi, Panettieri, Paola, Papasidero, Parenti, Paterno Calabro, Pedace, Pedivigliano, Piane Crati, Pietrafitta, Pietrapaola, Plataci, Praia a Mare, Rende, Rocca Imperiale, Roggiano Gravina, Rogliano, Rose, Roseto Capo Spulico, Rossano, Rota Greca, Rovito, San Basile, San Benedetto Ullano, San Cosmo Albanese, San Demetrio Corone, San Donato di Ninea, San Fili, San Giorgio Albanese, San Giovanni in Fiore, San Lorenzo Bellizzi, San Lorenzo del Vallo, San Lucido, San Marco Argentano, San Martino di Finita, San Nicola Arcella, San Pietro in Amantea, San Pietro in Guarano, San Sosti, San Vincenzo la Costa, Sangineto, Santa Caterina Albanese, Santa Domenica Talao, Santa Maria del Cedro, Santa Sofia D\'Epiro, Sant\'Agata di Esaro, Santo Stefano di Rogliano, Saracena, Scala Coeli, Scalea, Scigliano, Serra d\'Aiello, Serra Pedace, Spezzano Albanese, Spezzano della Sila, Spezzano Piccolo, Tarsia, Terranova da Sibari, Terravecchia, Torano Castello, Tortora, Trebisacce, Trenta, Vaccarizzo Albanese, Verbicaro, Villapiana, Zumpano', '2019-05-30 20:06:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 15, 'Crotone', 'Belvedere di Spinello, Caccuri, Carfizzi, Casabona, Castelsilano, Cerenzia, Cirò, Cirò Marina, Cotronei, Crotone, Crucoli, Cutro, Isola di Capo Rizzuto, Melissa, Mesoraca, Pallagorio, Petilia Policastro, Rocca di Neto, Roccabernarda, San Mauro Marchesato, San Nicola dell\'Alto, Santa Severina, Savelli, Scandale, Strongoli, Umbriatico, Verzino', '2019-05-30 20:06:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 15, 'Reggio Calabria', 'Africo, Agnana Calabra, Anoia, Antonimina, Ardore, Bagaladi, Bagnara Calabra, Benestare, Bianco, Bivongi, Bova, Bova Marina, Bovalino, Brancaleone, Bruzzano Zeffirio, Calanna, Camini, Campo Calabro, Candidoni, Canolo, Caraffa del Bianco, Cardeto, Careri, Casignana, Caulonia, Ciminà, Cinquefrondi, Cittanova, Condofuri, Cosoleto, Delianuova, Feroleto della Chiesa, Ferruzzano, Fiumara, Galatro, Gerace, Giffone, Gioia Tauro, Gioiosa Ionica, Grotteria, Laganadi, Laureana di Borrello, Locri, Mammola, Marina di Gioiosa Ionica, Maropati, Martone, Melicuccà, Melicucco, Melito di Porto Salvo, Molochio, Monasterace, Montebello Ionico, Motta San Giovanni, Oppido Mamertina, Palizzi, Palmi, Pazzano, Placanica, Platì, Polistena, Portigliola, Reggio Calabria, Riace, Rizziconi, Roccaforte del Greco, Roccella Ionica, Roghudi, Rosarno, Samo, San Ferdinando, San Giorgio Morgeto, San Giovanni di Gerace, San Lorenzo, San Luca, San Pietro di Caridà, San Procopio, San Roberto, Santa Cristina d\'Aspromonte, Sant\'Agata del Bianco, Sant\'Alessio in Aspromonte, Sant\'Eufemia d\'Aspromonte, Sant\'Ilario dello Ionio, Santo Stefano in Aspromonte, Scido, Scilla, Seminara, Serrata, Siderno, Sinopoli, Staiti, Stignano, Stilo, Taurianova, Terranova Sappo Minulio, Varapodio, Villa San Giovanni', '2019-05-30 20:06:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 15, 'Vibo Valentia', 'Acquaro, Arena, Briatico, Brognaturo, Capistrano, Cessaniti, Dasà, Dinami, Drapia, Fabrizia, Filadelfia, Filandari, Filogaso, Francavilla Angitola, Francica, Gerocarne, Ionadi, Joppolo, Limbadi, Maierato, Mileto, Mongiana, Monterosso Calabro, Nardodipace, Nicotera, Parghelia, Pizzo, Pizzoni, Polia, Ricadi, Rombiolo, San Calogero, San Costantino Calabro, San Gregorio d\'Ippona, San Nicola da Crissa, Sant\'Onofrio, Serra San Bruno, Simbario, Sorianello, Soriano Calabro, Spadola, Spilinga, Stefanaconi, Tropea, Vallelonga, Vazzano, Vibo Valentia, Zaccanopoli, Zambrone, Zungri', '2019-05-30 20:06:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 16, 'Avellino', 'Aiello del Sabato, Altavilla Irpina, Andretta, Aquilonia, Ariano Irpino, Atripalda, Avella, Avellino, Bagnoli Irpino, Baiano, Bisaccia, Bonito, Cairano, Calabritto, Calitri, Candida, Caposele, Capriglia Irpina, Carife, Casalbore, Cassano Irpino, Castel Baronia, Castelfranci, Castelvetere sul Calore, Cervinara, Cesinali, Chianche, Chiusano di San Domenico, Contrada, Conza della Campania, Domicella, Flumeri, Fontanarosa, Forino, Frigento, Gesualdo, Greci, Grottaminarda, Grottolella, Guardia Lombardi, Lacedonia, Lapio, Lauro, Lioni, Luogosano, Manocalzati, Marzano di Nola, Melito Irpino, Mercogliano, Mirabella Eclano, Montaguto, Montecalvo Irpino, Montefalcione, Monteforte Irpino, Montefredane, Montefusco, Montella, Montemarano, Montemiletto, Monteverde, Montoro, Morra De Sanctis, Moschiano, Mugnano del Cardinale, Nusco, Ospedaletto d\'Alpinolo, Pago del Vallo di Lauro, Parolise, Paternopoli, Petruro Irpino, Pietradefusi, Pietrastornina, Prata di Principato Ultra, Pratola Serra, Quadrelle, Quindici, Rocca San Felice, Roccabascerana, Rotondi, Salza Irpina, San Mango sul Calore, San Martino Valle Caudina, San Michele di Serino, San Nicola Baronia, San Potito Ultra, San Sossio Baronia, Santa Lucia di Serino, Santa Paolina, Sant\'Andrea di Conza, Sant\'Angelo a Scala, Sant\'Angelo all\'Esca, Sant\'Angelo dei Lombardi, Santo Stefano del Sole, Savignano Irpino, Scampitella, Senerchia, Serino, Sirignano, Solofra, Sorbo Serpico, Sperone, Sturno, Summonte, Taurano, Taurasi, Teora, Torella dei Lombardi, Torre Le Nocelle, Torrioni, Trevico, Tufo, Vallata, Vallesaccarda, Venticano, Villamaina, Villanova del Battista, Volturara Irpina, Zungoli', '2019-05-30 20:08:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 16, 'Benevento', 'Airola, Amorosi, Apice, Apollosa, Arpaia, Arpaise, Baselice, Benevento, Bonea, Bucciano, Buonalbergo, Calvi, Campolattaro, Campoli del Monte Taburno, Casalduni, Castelfranco in Miscano, Castelpagano, Castelpoto, Castelvenere, Castelvetere in Val Fortore, Cautano, Ceppaloni, Cerreto Sannita, Circello, Colle Sannita, Cusano Mutri, Dugenta, Durazzano, Faicchio, Foglianise, Foiano di Val Fortore, Forchia, Fragneto L\'Abate, Fragneto Monforte, Frasso Telesino, Ginestra degli Schiavoni, Guardia Sanframondi, Limatola, Melizzano, Moiano, Molinara, Montefalcone di Val Fortore, Montesarchio, Morcone, Paduli, Pago Veiano, Pannarano, Paolisi, Paupisi, Pesco Sannita, Pietraroja, Pietrelcina, Ponte, Pontelandolfo, Puglianello, Reino, San Bartolomeo in Galdo, San Giorgio del Sannio, San Giorgio La Molara, San Leucio del Sannio, San Lorenzello, San Lorenzo Maggiore, San Lupo, San Marco dei Cavoti, San Martino Sannita, San Nazzaro, San Nicola Manfredi, San Salvatore Telesino, Santa Croce del Sannio, Sant\'Agata De\' Goti, Sant\'Angelo a Cupolo, Sant\'Arcangelo Trimonte, Sassinoro, Solopaca, Telese Terme, Tocco Caudio, Torrecuso, Vitulano', '2019-05-30 20:09:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 16, 'Caserta', 'Ailano, Alife, Alvignano, Arienzo, Aversa, Baia e Latina, Bellona, Caianello, Caiazzo, Calvi Risorta, Camigliano, Cancello ed Arnone, Capodrise, Capriati a Volturno, Capua, Carinaro, Carinola, Casagiove, Casal di Principe, Casaluce, Casapesenna, Casapulla, Caserta, Castel Campagnano, Castel di Sasso, Castel Morrone, Castel Volturno, Castello del Matese, Cellole, Cervino, Cesa, Ciorlano, Conca della Campania, Curti, Dragoni, Falciano del Massico, Fontegreca, Formicola, Francolise, Frignano, Gallo Matese, Galluccio, Giano Vetusto, Gioia Sannitica, Grazzanise, Gricignano di Aversa, Letino, Liberi, Lusciano, Macerata Campania, Maddaloni, Marcianise, Marzano Appio, Mignano Monte Lungo, Mondragone, Orta di Atella, Parete, Pastorano, Piana di Monte Verna, Piedimonte Matese, Pietramelara, Pietravairano, Pignataro Maggiore, Pontelatone, Portico di Caserta, Prata Sannita, Pratella, Presenzano, Raviscanina, Recale, Riardo, Rocca D\'Evandro, Roccamonfina, Roccaromana, Rocchetta e Croce, Ruviano, San Cipriano d\'Aversa, San Felice a Cancello, San Gregorio Matese, San Marcellino, San Marco Evangelista, San Nicola la Strada, San Pietro Infine, San Potito Sannitico, San Prisco, San Tammaro, Santa Maria a Vico, Santa Maria Capua Vetere, Santa Maria La Fossa, Sant\'Angelo d\'Alife, Sant\'Arpino, Sessa Aurunca, Sparanise, Succivo, Teano, Teverola, Tora e Piccilli, Trentola-Ducenta, Vairano Patenora, Valle Agricola, Valle di Maddaloni, Villa di Briano, Villa Literno, Vitulazio', '2019-05-30 20:09:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 'Naples', 'Acerra, Afragola, Agerola, Anacapri, Arzano, Bacoli, Barano d\'Ischia, Boscoreale, Boscotrecase, Brusciano, Caivano, Calvizzano, Camposano, Capri, Carbonara di Nola, Cardito, Casalnuovo di Napoli, Casamarciano, Casamicciola Terme, Casandrino, Casavatore, Casola di Napoli, Casoria, Castellammare di Stabia, Castello di Cisterna, Cercola, Cicciano, Cimitile, Comiziano, Crispano, Ercolano, Forio, Frattamaggiore, Frattaminore, Giugliano in Campania, Gragnano, Grumo Nevano, Ischia, Lacco Ameno, Lettere, Liveri, Marano di Napoli, Mariglianella, Marigliano, Massa di Somma, Massa Lubrense, Melito di Napoli, Meta, Monte di Procida, Mugnano di Napoli, Naples, Nola, Ottaviano, Palma Campania, Piano di Sorrento, Pimonte, Poggiomarino, Pollena Trocchia, Pomigliano d\'Arco, Pompei, Portici, Pozzuoli, Procida, Qualiano, Quarto, Roccarainola, San Gennaro Vesuviano, San Giorgio a Cremano, San Giuseppe Vesuviano, San Paolo Bel Sito, San Sebastiano al Vesuvio, San Vitaliano, Santa Maria la Carità, Sant\'Agnello, Sant\'Anastasia, Sant\'Antimo, Sant\'Antonio Abate, Saviano, Scisciano, Serrara Fontana, Somma Vesuviana, Sorrento, Striano, Terzigno, Torre Annunziata, Torre del Greco, Trecase, Tufino, Vico Equense, Villaricca, Visciano, Volla', '2019-05-30 20:09:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 16, 'Salerno', 'Acerno, Agropoli, Albanella, Alfano, Altavilla Silentina, Amalfi, Angri, Aquara, Ascea, Atena Lucana, Atrani, Auletta, Baronissi, Battipaglia, Bellizzi, Bellosguardo, Bracigliano, Buccino, Buonabitacolo, Caggiano, Calvanico, Camerota, Campagna, Campora, Cannalonga, Capaccio, Casal Velino, Casalbuono, Casaletto Spartano, Caselle in Pittari, Castel San Giorgio, Castel San Lorenzo, Castelcivita, Castellabate, Castelnuovo Cilento, Castelnuovo di Conza, Castiglione del Genovesi, Cava de\' Tirreni, Celle di Bulgheria, Centola, Ceraso, Cetara, Cicerale, Colliano, Conca dei Marini, Controne, Contursi Terme, Corbara, Corleto Monforte, Cuccaro Vetere, Eboli, Felitto, Fisciano, Furore, Futani, Giffoni Sei Casali, Giffoni Valle Piana, Gioi, Giungano, Ispani, Laureana Cilento, Laurino, Laurito, Laviano, Lustra, Magliano Vetere, Maiori, Mercato San Severino, Minori, Moio della Civitella, Montano Antilia, Monte San Giacomo, Montecorice, Montecorvino Pugliano, Montecorvino Rovella, Monteforte Cilento, Montesano sulla Marcellana, Morigerati, Nocera Inferiore, Nocera Superiore, Novi Velia, Ogliastro Cilento, Olevano sul Tusciano, Oliveto Citra, Omignano, Orria, Ottati, Padula, Pagani, Palomonte, Pellezzano, Perdifumo, Perito, Pertosa, Petina, Piaggine, Pisciotta, Polla, Pollica, Pontecagnano Faiano, Positano, Postiglione, Praiano, Prignano Cilento, Ravello, Ricigliano, Roccadaspide, Roccagloriosa, Roccapiemonte, Rofrano, Romagnano al Monte, Roscigno, Rutino, Sacco, Sala Consilina, Salento, Salerno, Salvitelle, San Cipriano Picentino, San Giovanni a Piro, San Gregorio Magno, San Mango Piemonte, San Marzano sul Sarno, San Mauro Cilento, San Mauro La Bruca, San Pietro al Tanagro, San Rufo, San Valentino Torio, Santa Marina, Sant\'Angelo a Fasanella, Sant\'Arsenio, Sant\'Egidio del Monte Albino, Santomenna, Sanza, Sapri, Sarno, Sassano, Scafati, Scala, Serramezzana, Serre, Sessa Cilento, Siano, Sicignano degli Alburni, Stella Cilento, Stio, Teggiano, Torchiara, Torraca, Torre Orsaia, Tortorella, Tramonti, Trentinara, Valle dell\'Angelo, Vallo della Lucania, Valva, Vibonati, Vietri sul Mare', '2019-05-30 20:09:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 'Bologna', 'Alto Reno Terme, Anzola dell\'Emilia, Argelato, Baricella, Bentivoglio, Bologna, Borgo Tossignano, Budrio, Calderara di Reno, Camugnano, Casalecchio di Reno, Casalfiumanese, Castel d\'Aiano, Castel del Rio, Castel di Casio, Castel Guelfo di Bologna, Castel Maggiore, Castel San Pietro Terme, Castello d\'Argile, Castenaso, Castiglione dei Pepoli, Crevalcore, Dozza, Fontanelice, Gaggio Montano, Galliera, Granarolo dell\'Emilia, Grizzana Morandi, Imola, Lizzano in Belvedere, Loiano, Malalbergo, Marzabotto, Medicina, Minerbio, Molinella, Monghidoro, Monte San Pietro, Monterenzio, Monzuno, Mordano, Ozzano dell\'Emilia, Pianoro, Pieve di Cento, Sala Bolognese, San Benedetto Val di Sambro, San Giorgio di Piano, San Giovanni in Persiceto, San Lazzaro di Savena, San Pietro in Casale, Sant\'Agata Bolognese, Sasso Marconi, Valsamoggia, Vergato, Zola Predosa', '2019-05-30 20:11:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 'Ferrara', 'Argenta, Berra, Bondeno, Cento, Codigoro, Comacchio, Copparo, Ferrara, Fiscaglia, Formignana, Goro, Jolanda di Savoia, Lagosanto, Masi Torello, Mesola, Mirabello, Ostellato, Poggio Renatico, Portomaggiore, Ro, Sant\'Agostino, Tresigallo, Vigarano Mainarda, Voghiera', '2019-05-30 20:11:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 'Forlì-Cesena', 'Bagno di Romagna, Bertinoro, Borghi, Castrocaro Terme e Terra del Sole, Cesena, Cesenatico, Civitella di Romagna, Dovadola, Forlì, Forlimpopoli, Galeata, Gambettola, Gatteo, Longiano, Meldola, Mercato Saraceno, Modigliana, Montiano, Portico e San Benedetto, Predappio, Premilcuore, Rocca San Casciano, Roncofreddo, San Mauro Pascoli, Santa Sofia, Sarsina, Savignano sul Rubicone, Sogliano al Rubicone, Tredozio, Verghereto', '2019-05-30 20:11:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'Modena', 'Bastiglia, Bomporto, Campogalliano, Camposanto, Carpi, Castelfranco Emilia, Castelnuovo Rangone, Castelvetro di Modena, Cavezzo, Concordia sulla Secchia, Fanano, Finale Emilia, Fiorano Modenese, Fiumalbo, Formigine, Frassinoro, Guiglia, Lama Mocogno, Maranello, Marano sul Panaro, Medolla, Mirandola, Modena, Montecreto, Montefiorino, Montese, Nonantola, Novi di Modena, Palagano, Pavullo nel Frignano, Pievepelago, Polinago, Prignano sulla Secchia, Ravarino, Riolunato, San Cesario sul Panaro, San Felice sul Panaro, San Possidonio, San Prospero, Sassuolo, Savignano sul Panaro, Serramazzoni, Sestola, Soliera, Spilamberto, Vignola, Zocca', '2019-05-30 20:11:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 'Parma', 'Albareto, Bardi, Bedonia, Berceto, Bore, Borgo Val di Taro, Busseto, Calestano, Collecchio, Colorno, Compiano, Corniglio, Felino, Fidenza, Fontanellato, Fontevivo, Fornovo di Taro, Langhirano, Lesignano de\' Bagni, Medesano, Mezzani, Monchio delle Corti, Montechiarugolo, Neviano degli Arduini, Noceto, Palanzano, Parma, Pellegrino Parmense, Polesine Zibello, Roccabianca, Sala Baganza, Salsomaggiore Terme, San Secondo Parmense, Sissa Trecasali, Solignano, Soragna, Sorbolo, Terenzo, Tizzano Val Parma, Tornolo, Torrile, Traversetolo, Valmozzola, Varano de\' Melegari, Varsi', '2019-05-30 20:11:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2, 'Piacenza', 'Agazzano, Alseno, Besenzone, Bettola, Bobbio, Borgonovo Val Tidone, Cadeo, Calendasco, Caminata, Caorso, Carpaneto Piacentino, Castel San Giovanni, Castell\'Arquato, Castelvetro Piacentino, Cerignale, Coli, Corte Brugnatella, Cortemaggiore, Farini, Ferriere, Fiorenzuola d\'Arda, Gazzola, Gossolengo, Gragnano Trebbiense, Gropparello, Lugagnano Val D\'Arda, Monticelli d\'Ongina, Morfasso, Nibbiano, Ottone, Pecorara, Piacenza, Pianello Val Tidone, Piozzano, Podenzano, Ponte dell\'Olio, Pontenure, Rivergaro, Rottofreno, San Giorgio Piacentino, San Pietro in Cerro, Sarmato, Travo, Vernasca, Vigolzone, Villanova sull\'Arda, Zerba, Ziano Piacentino', '2019-05-30 20:11:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2, 'Ravenna', 'Alfonsine, Bagnacavallo, Bagnara di Romagna, Brisighella, Casola Valsenio, Castel Bolognese, Cervia, Conselice, Cotignola, Faenza, Fusignano, Lugo, Massa Lombarda, Ravenna, Riolo Terme, Russi, Sant\'Agata sul Santerno, Solarolo', '2019-05-30 20:11:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2, 'Reggio Emilia', 'Albinea, Bagnolo in Piano, Baiso, Bibbiano, Boretto, Brescello, Cadelbosco di Sopra, Campagnola Emilia, Campegine, Canossa, Carpineti, Casalgrande, Casina, Castellarano, Castelnovo di Sotto, Castelnovo ne\' Monti, Cavriago, Correggio, Fabbrico, Gattatico, Gualtieri, Guastalla, Luzzara, Montecchio Emilia, Novellara, Poviglio, Quattro Castella, Reggio Emilia, Reggiolo, Rio Saliceto, Rolo, Rubiera, San Martino in Rio, San Polo d\'Enza, Sant\'Ilario d\'Enza, Scandiano, Toano, Ventasso, Vetto, Vezzano sul Crostolo, Viano, Villa Minozzo', '2019-05-30 20:11:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 2, 'Rimini', 'Bellaria-Igea Marina, Casteldelci, Cattolica, Coriano, Gemmano, Maiolo, Misano Adriatico, Mondaino, Montefiore Conca, Montegridolfo, Montescudo - Montecolombo, Morciano di Romagna, Novafeltria, Pennabilli, Poggio Torriana, Riccione, Rimini, Saludecio, San Clemente, San Giovanni in Marignano, San Leo, Sant\'Agata Feltria, Santarcangelo di Romagna, Talamello, Verucchio', '2019-05-30 20:11:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 3, 'Gorizia', 'Capriva del Friuli, Cormons, Doberdò del Lago, Dolegna del Collio, Farra d\'Isonzo, Fogliano Redipuglia, Gorizia, Gradisca d\'Isonzo, Grado, Mariano del Friuli, Medea, Monfalcone, Moraro, Mossa, Romans d\'Isonzo, Ronchi dei Legionari, Sagrado, San Canzian d\'Isonzo, San Floriano del Collio, San Lorenzo Isontino, San Pier d\'Isonzo, Savogna d\'Isonzo, Staranzano, Turriaco, Villesse', '2019-05-30 20:16:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 3, 'Pordenone', 'Andreis, Arba, Aviano, Azzano Decimo, Barcis, Brugnera, Budoia, Caneva, Casarsa della Delizia, Castelnovo del Friuli, Cavasso Nuovo, Chions, Cimolais, Claut, Clauzetto, Cordenons, Cordovado, Erto e Casso, Fanna, Fiume Veneto, Fontanafredda, Frisanco, Maniago, Meduno, Montereale Valcellina, Morsano al Tagliamento, Pasiano di Pordenone, Pinzano al Tagliamento, Polcenigo, Porcia, Pordenone, Prata di Pordenone, Pravisdomini, Roveredo in Piano, Sacile, San Giorgio della Richinvelda, San Martino al Tagliamento, San Quirino, San Vito al Tagliamento, Sequals, Sesto al Reghena, Spilimbergo, Tramonti di Sopra, Tramonti di Sotto, Travesio, Vajont, Valvasone Arzene, Vito d\'Asio, Vivaro, Zoppola', '2019-05-30 20:16:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 'Trieste', 'Duino-Aurisina, Monrupino, Muggia, San Dorligo della Valle-Dolina, Sgonico, Trieste', '2019-05-30 20:16:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 3, 'Udine', 'Aiello del Friuli, Amaro, Ampezzo, Aquileia, Arta Terme, Artegna, Attimis, Bagnaria Arsa, Basiliano, Bertiolo, Bicinicco, Bordano, Buja, Buttrio, Camino al Tagliamento, Campoformido, Campolongo Tapogliano, Carlino, Cassacco, Castions di Strada, Cavazzo Carnico, Cercivento, Cervignano del Friuli, Chiopris-Viscone, Chiusaforte, Cividale del Friuli, Codroipo, Colloredo di Monte Albano, Comeglians, Corno di Rosazzo, Coseano, Dignano, Dogna, Drenchia, Enemonzo, Faedis, Fagagna, Fiumicello, Flaibano, Forgaria nel Friuli, Forni Avoltri, Forni di Sopra, Forni di Sotto, Gemona del Friuli, Gonars, Grimacco, Latisana, Lauco, Lestizza, Lignano Sabbiadoro, Ligosullo, Lusevera, Magnano in Riviera, Majano, Malborghetto Valbruna, Manzano, Marano Lagunare, Martignacco, Mereto di Tomba, Moggio Udinese, Moimacco, Montenars, Mortegliano, Moruzzo, Muzzana del Turgnano, Nimis, Osoppo, Ovaro, Pagnacco, Palazzolo dello Stella, Palmanova, Paluzza, Pasian di Prato, Paularo, Pavia di Udine, Pocenia, Pontebba, Porpetto, Povoletto, Pozzuolo del Friuli, Pradamano, Prato Carnico, Precenicco, Premariacco, Preone, Prepotto, Pulfero, Ragogna, Ravascletto, Raveo, Reana del Rojale, Remanzacco, Resia, Resiutta, Rigolato, Rive D\'Arcano, Rivignano Teor, Ronchis, Ruda, San Daniele del Friuli, San Giorgio di Nogaro, San Giovanni al Natisone, San Leonardo, San Pietro al Natisone, San Vito al Torre, San Vito di Fagagna, Santa Maria La Longa, Sauris, Savogna, Sedegliano, Socchieve, Stregna, Sutrio, Taipana, Talmassons, Tarcento, Tarvisio, Tavagnacco, Terzo d\'Aquileia, Tolmezzo, Torreano, Torviscosa, Trasaghis, Treppo Carnico, Treppo Grande, Tricesimo, Trivignano Udinese, Udine, Varmo, Venzone, Verzegnis, Villa Santina, Villa Vicentina, Visco, Zuglio', '2019-05-30 20:16:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 10, 'Frosinone', 'Acquafondata, Acuto, Alatri, Alvito, Amaseno, Anagni, Aquino, Arce, Arnara, Arpino, Atina, Ausonia, Belmonte Castello, Boville Ernica, Broccostella, Campoli Appennino, Casalattico, Casalvieri, Cassino, Castelliri, Castelnuovo Parano, Castro dei Volsci, Castrocielo, Ceccano, Ceprano, Cervaro, Colfelice, Colle San Magno, Collepardo, Coreno Ausonio, Esperia, Falvaterra, Ferentino, Filettino, Fiuggi, Fontana Liri, Fontechiari, Frosinone, Fumone, Gallinaro, Giuliano di Roma, Guarcino, Isola del Liri, Monte San Giovanni Campano, Morolo, Paliano, Pastena, Patrica, Pescosolido, Picinisco, Pico, Piedimonte San Germano, Piglio, Pignataro Interamna, Pofi, Pontecorvo, Posta Fibreno, Ripi, Rocca d\'Arce, Roccasecca, San Biagio Saracinisco, San Donato Val di Comino, San Giorgio a Liri, San Giovanni Incarico, San Vittore del Lazio, Sant\'Ambrogio sul Garigliano, Sant\'Andrea del Garigliano, Sant\'Apollinare, Sant\'Elia Fiumerapido, Santopadre, Serrone, Settefrati, Sgurgola, Sora, Strangolagalli, Supino, Terelle, Torre Cajetani, Torrice, Trevi nel Lazio, Trivigliano, Vallecorsa, Vallemaio, Vallerotonda, Veroli, Vicalvi, Vico nel Lazio, Villa Latina, Villa Santa Lucia, Villa Santo Stefano, Viticuso', '2019-05-30 20:18:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 10, 'Latina', 'Aprilia, Bassiano, Campodimele, Castelforte, Cisterna di Latina, Cori, Fondi, Formia, Gaeta, Itri, Latina, Lenola, Maenza, Minturno, Monte San Biagio, Norma, Pontinia, Ponza, Priverno, Prossedi, Rocca Massima, Roccagorga, Roccasecca dei Volsci, Sabaudia, San Felice Circeo, Santi Cosma e Damiano, Sermoneta, Sezze, Sonnino, Sperlonga, Spigno Saturnia, Terracina, Ventotene', '2019-05-30 20:18:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 10, 'Rieti', 'Accumoli, Amatrice, Antrodoco, Ascrea, Belmonte in Sabina, Borbona, Borgo Velino, Borgorose, Cantalice, Cantalupo in Sabina, Casaprota, Casperia, Castel di Tora, Castel Sant\'Angelo, Castelnuovo di Farfa, Cittaducale, Cittareale, Collalto Sabino, Colle di Tora, Collegiove, Collevecchio, Colli sul Velino, Concerviano, Configni, Contigliano, Cottanello, Fara in Sabina, Fiamignano, Forano, Frasso Sabino, Greccio, Labro, Leonessa, Longone Sabino, Magliano Sabina, Marcetelli, Micigliano, Mompeo, Montasola, Monte San Giovanni in Sabina, Montebuono, Monteleone Sabino, Montenero Sabino, Montopoli di Sabina, Morro Reatino, Nespolo, Orvinio, Paganico Sabino, Pescorocchiano, Petrella Salto, Poggio Bustone, Poggio Catino, Poggio Mirteto, Poggio Moiano, Poggio Nativo, Poggio San Lorenzo, Posta, Pozzaglia Sabina, Rieti, Rivodutri, Rocca Sinibalda, Roccantica, Salisano, Scandriglia, Selci, Stimigliano, Tarano, Toffia, Torri in Sabina, Torricella in Sabina, Turania, Vacone, Varco Sabino', '2019-05-30 20:18:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 10, 'Rome', 'Affile, Agosta, Albano Laziale, Allumiere, Anguillara Sabazia, Anticoli Corrado, Anzio, Arcinazzo Romano, Ardea, Ariccia, Arsoli, Artena, Bellegra, Bracciano, Camerata Nuova, Campagnano di Roma, Canale Monterano, Canterano, Capena, Capranica Prenestina, Carpineto Romano, Casape, Castel Gandolfo, Castel Madama, Castel San Pietro Romano, Castelnuovo di Porto, Cave, Cerreto Laziale, Cervara di Roma, Cerveteri, Ciampino, Ciciliano, Cineto Romano, Civitavecchia, Civitella San Paolo, Colleferro, Colonna, Fiano Romano, Filacciano, Fiumicino, Fonte Nuova, Formello, Frascati, Gallicano nel Lazio, Gavignano, Genazzano, Genzano di Roma, Gerano, Gorga, Grottaferrata, Guidonia Montecelio, Jenne, Labico, Ladispoli, Lanuvio, Lariano, Licenza, Magliano Romano, Mandela, Manziana, Marano Equo, Marcellina, Marino, Mazzano Romano, Mentana, Monte Compatri, Monte Porzio Catone, Monteflavio, Montelanico, Montelibretti, Monterotondo, Montorio Romano, Moricone, Morlupo, Nazzano, Nemi, Nerola, Nettuno, Olevano Romano, Palestrina, Palombara Sabina, Percile, Pisoniano, Poli, Pomezia, Ponzano Romano, Riano, Rignano Flaminio, Riofreddo, Rocca Canterano, Rocca di Cave, Rocca di Papa, Rocca Priora, Rocca Santo Stefano, Roccagiovine, Roiate, Rome, Roviano, Sacrofano, Sambuci, San Cesareo, San Gregorio da Sassola, San Polo dei Cavalieri, San Vito Romano, Santa Marinella, Sant\'Angelo Romano, Sant\'Oreste, Saracinesco, Segni, Subiaco, Tivoli, Tolfa, Torrita Tiberina, Trevignano Romano, Vallepietra, Vallinfreda, Valmontone, Velletri, Vicovaro, Vivaro Romano, Zagarolo', '2019-05-30 20:18:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 10, 'Viterbo', 'Acquapendente, Arlena di Castro, Bagnoregio, Barbarano Romano, Bassano in Teverina, Bassano Romano, Blera, Bolsena, Bomarzo, Calcata, Canepina, Canino, Capodimonte, Capranica, Caprarola, Carbognano, Castel Sant\'Elia, Castiglione in Teverina, Celleno, Cellere, Civita Castellana, Civitella d\'Agliano, Corchiano, Fabrica di Roma, Faleria, Farnese, Gallese, Gradoli, Graffignano, Grotte di Castro, Ischia di Castro, Latera, Lubriano, Marta, Montalto di Castro, Monte Romano, Montefiascone, Monterosi, Nepi, Onano, Oriolo Romano, Orte, Piansano, Proceno, Ronciglione, San Lorenzo Nuovo, Soriano nel Cimino, Sutri, Tarquinia, Tessennano, Tuscania, Valentano, Vallerano, Vasanello, Vejano, Vetralla, Vignanello, Villa San Giovanni in Tuscia, Viterbo, Vitorchiano', '2019-05-30 20:18:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 13, 'Ancona', 'Agugliano, Ancona, Arcevia, Barbara, Belvedere Ostrense, Camerano, Camerata Picena, Castelbellino, Castelfidardo, Castelleone di Suasa, Castelplanio, Cerreto d\'Esi, Chiaravalle, Corinaldo, Cupramontana, Fabriano, Falconara Marittima, Filottrano, Genga, Jesi, Loreto, Maiolati Spontini, Mergo, Monsano, Monte Roberto, Monte San Vito, Montecarotto, Montemarciano, Morro d\'Alba, Numana, Offagna, Osimo, Ostra, Ostra Vetere, Poggio San Marcello, Polverigi, Rosora, San Marcello, San Paolo di Jesi, Santa Maria Nuova, Sassoferrato, Senigallia, Serra de\' Conti, Serra San Quirico, Sirolo, Staffolo, Trecastelli', '2019-05-30 20:21:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 13, 'Ascoli Piceno', 'Acquasanta Terme, Acquaviva Picena, Appignano del Tronto, Arquata del Tronto, Ascoli Piceno, Carassai, Castel di Lama, Castignano, Castorano, Colli del Tronto, Comunanza, Cossignano, Cupra Marittima, Folignano, Force, Grottammare, Maltignano, Massignano, Monsampolo del Tronto, Montalto delle Marche, Montedinove, Montefiore dell\'Aso, Montegallo, Montemonaco, Monteprandone, Offida, Palmiano, Ripatransone, Roccafluvione, Rotella, San Benedetto del Tronto, Spinetoli, Venarotta', '2019-05-30 20:21:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 13, 'Fermo', 'Altidona, Amandola, Belmonte Piceno, Campofilone, Falerone, Fermo, Francavilla d\'Ete, Grottazzolina, Lapedona, Magliano di Tenna, Massa Fermana, Monsampietro Morico, Montappone, Monte Giberto, Monte Rinaldo, Monte San Pietrangeli, Monte Urano, Monte Vidon Combatte, Monte Vidon Corrado, Montefalcone Appennino, Montefortino, Montegiorgio, Montegranaro, Monteleone di Fermo, Montelparo, Monterubbiano, Montottone, Moresco, Ortezzano, Pedaso, Petritoli, Ponzano di Fermo, Porto San Giorgio, Porto Sant\'Elpidio, Rapagnano, Santa Vittoria in Matenano, Sant\'Elpidio a Mare, Servigliano, Smerillo, Torre San Patrizio', '2019-05-30 20:21:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 13, 'Macerata', 'Acquacanina, Apiro, Appignano, Belforte del Chienti, Bolognola, Caldarola, Camerino, Camporotondo di Fiastrone, Castelraimondo, Castelsantangelo sul Nera, Cessapalombo, Cingoli, Civitanova Marche, Colmurano, Corridonia, Esanatoglia, Fiastra, Fiordimonte, Fiuminata, Gagliole, Gualdo, Loro Piceno, Macerata, Matelica, Mogliano, Monte Cavallo, Monte San Giusto, Monte San Martino, Montecassiano, Montecosaro, Montefano, Montelupone, Morrovalle, Muccia, Penna San Giovanni, Petriolo, Pieve Torina, Pievebovigliana, Pioraco, Poggio San Vicino, Pollenza, Porto Recanati, Potenza Picena, Recanati, Ripe San Ginesio, San Ginesio, San Severino Marche, Sant\'Angelo in Pontano, Sarnano, Sefro, Serrapetrona, Serravalle di Chienti, Tolentino, Treia, Urbisaglia, Ussita, Visso', '2019-05-30 20:21:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 13, 'Pesaro e Urbino', 'Acqualagna, Apecchio, Auditore, Barchi, Belforte all\'Isauro, Borgo Pace, Cagli, Cantiano, Carpegna, Cartoceto, Fano, Fermignano, Fossombrone, Fratte Rosa, Frontino, Frontone, Gabicce Mare, Gradara, Isola del Piano, Lunano, Macerata Feltria, Mercatello sul Metauro, Mercatino Conca, Mombaroccio, Mondavio, Mondolfo, Monte Cerignone, Monte Grimano Terme, Monte Porzio, Montecalvo in Foglia, Monteciccardo, Montecopiolo, Montefelcino, Montelabbate, Montemaggiore al Metauro, Orciano di Pesaro, Peglio, Pergola, Pesaro, Petriano, Piagge, Piandimeleto, Pietrarubbia, Piobbico, Saltara, San Costanzo, San Giorgio di Pesaro, San Lorenzo in Campo, Sant\'Angelo in Vado, Sant\'Ippolito, Sassocorvaro, Sassofeltrio, Serra Sant\'Abbondio, Serrungarina, Tavoleto, Tavullia, Urbania, Urbino, Vallefoglia', '2019-05-30 20:21:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 4, 'Genoa', 'Arenzano, Avegno, Bargagli, Bogliasco, Borzonasca, Busalla, Camogli, Campo Ligure, Campomorone, Carasco, Casarza Ligure, Casella, Castiglione Chiavarese, Ceranesi, Chiavari, Cicagna, Cogoleto, Cogorno, Coreglia Ligure, Crocefieschi, Davagna, Fascia, Favale di Malvaro, Fontanigorda, Genoa, Gorreto, Isola del Cantone, Lavagna, Leivi, Lorsica, Lumarzo, Masone, Mele, Mezzanego, Mignanego, Moconesi, Moneglia, Montebruno, Montoggio, Ne, Neirone, Orero, Pieve Ligure, Portofino, Propata, Rapallo, Recco, Rezzoaglio, Ronco Scrivia, Rondanina, Rossiglione, Rovegno, San Colombano Certenoli, Santa Margherita Ligure, Santo Stefano d\'Aveto, Sant\'Olcese, Savignone, Serra Riccò, Sestri Levante, Sori, Tiglieto, Torriglia, Tribogna, Uscio, Valbrevenna, Vobbia, Zoagli', '2019-05-30 20:24:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 4, 'Imperia', 'Airole, Apricale, Aquila d\'Arroscia, Armo, Aurigo, Badalucco, Bajardo, Bordighera, Borghetto d\'Arroscia, Borgomaro, Camporosso, Caravonica, Carpasio, Castel Vittorio, Castellaro, Ceriana, Cervo, Cesio, Chiusanico, Chiusavecchia, Cipressa, Civezza, Cosio d\'Arroscia, Costarainera, Diano Arentino, Diano Castello, Diano Marina, Diano San Pietro, Dolceacqua, Dolcedo, Imperia, Isolabona, Lucinasco, Mendatica, Molini di Triora, Montalto Ligure, Montegrosso Pian Latte, Olivetta San Michele, Ospedaletti, Perinaldo, Pietrabruna, Pieve di Teco, Pigna, Pompeiana, Pontedassio, Pornassio, Prelà, Ranzo, Rezzo, Riva Ligure, Rocchetta Nervina, San Bartolomeo al Mare, San Biagio della Cima, San Lorenzo al Mare, Sanremo, Santo Stefano al Mare, Seborga, Soldano, Taggia, Terzorio, Triora, Vallebona, Vallecrosia, Vasia, Ventimiglia, Vessalico, Villa Faraldi', '2019-05-30 20:24:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 4, 'La Spezia', 'Ameglia, Arcola, Beverino, Bolano, Bonassola, Borghetto di Vara, Brugnato, Calice al Cornoviglio, Carro, Carrodano, Castelnuovo Magra, Deiva Marina, Follo, Framura, La Spezia, Lerici, Levanto, Maissana, Monterosso al Mare, Ortonovo, Pignone, Portovenere, Riccò del Golfo di Spezia, Riomaggiore, Rocchetta di Vara, Santo Stefano di Magra, Sarzana, Sesta Godano, Varese Ligure, Vernazza, Vezzano Ligure, Zignago', '2019-05-30 20:24:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 4, 'Savona', 'Alassio, Albenga, Albisola Superiore, Albissola Marina, Altare, Andora, Arnasco, Balestrino, Bardineto, Bergeggi, Boissano, Borghetto Santo Spirito, Borgio Verezzi, Bormida, Cairo Montenotte, Calice Ligure, Calizzano, Carcare, Casanova Lerrone, Castelbianco, Castelvecchio di Rocca Barbena, Celle Ligure, Cengio, Ceriale, Cisano sul Neva, Cosseria, Dego, Erli, Finale Ligure, Garlenda, Giustenice, Giusvalla, Laigueglia, Loano, Magliolo, Mallare, Massimino, Millesimo, Mioglia, Murialdo, Nasino, Noli, Onzo, Orco Feglino, Ortovero, Osiglia, Pallare, Piana Crixia, Pietra Ligure, Plodio, Pontinvrea, Quiliano, Rialto, Roccavignale, Sassello, Savona, Spotorno, Stella, Stellanello, Testico, Toirano, Tovo San Giacomo, Urbe, Vado Ligure, Varazze, Vendone, Vezzi Portio, Villanova d\'Albenga, Zuccarello', '2019-05-30 20:24:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 6, 'Bergamo', 'Adrara San Martino, Adrara San Rocco, Albano Sant\'Alessandro, Albino, Algua, Almè, Almenno San Bartolomeo, Almenno San Salvatore, Alzano Lombardo, Ambivere, Antegnate, Arcene, Ardesio, Arzago d\'Adda, Averara, Aviatico, Azzano San Paolo, Azzone, Bagnatica, Barbata, Bariano, Barzana, Bedulita, Berbenno, Bergamo, Berzo San Fermo, Bianzano, Blello, Bolgare, Boltiere, Bonate Sopra, Bonate Sotto, Borgo di Terzo, Bossico, Bottanuco, Bracca, Branzi, Brembate, Brembate di Sopra, Brignano Gera d\'Adda, Brumano, Brusaporto, Calcinate, Calcio, Calusco d\'Adda, Calvenzano, Camerata Cornello, Canonica d\'Adda, Capizzone, Capriate San Gervasio, Caprino Bergamasco, Caravaggio, Carobbio degli Angeli, Carona, Carvico, Casazza, Casirate d\'Adda, Casnigo, Cassiglio, Castel Rozzone, Castelli Calepio, Castione della Presolana, Castro, Cavernago, Cazzano Sant\'Andrea, Cenate Sopra, Cenate Sotto, Cene, Cerete, Chignolo d\'Isola, Chiuduno, Cisano Bergamasco, Ciserano, Cividate al Piano, Clusone, Colere, Cologno al Serio, Colzate, Comun Nuovo, Corna Imagna, Cornalba, Cortenuova, Costa di Mezzate, Costa Serina, Costa Valle Imagna, Costa Volpino, Covo, Credaro, Curno, Cusio, Dalmine, Dossena, Endine Gaiano, Entratico, Fara Gera d\'Adda, Fara Olivana con Sola, Filago, Fino del Monte, Fiorano al Serio, Fontanella, Fonteno, Foppolo, Foresto Sparso, Fornovo San Giovanni, Fuipiano Valle Imagna, Gandellino, Gandino, Gandosso, Gaverina Terme, Gazzaniga, Ghisalba, Gorlago, Gorle, Gorno, Grassobbio, Gromo, Grone, Grumello del Monte, Isola di Fondra, Isso, Lallio, Leffe, Lenna, Levate, Locatello, Lovere, Lurano, Luzzana, Madone, Mapello, Martinengo, Medolago, Mezzoldo, Misano di Gera d\'Adda, Moio de\' Calvi, Monasterolo del Castello, Montello, Morengo, Mornico al Serio, Mozzanica, Mozzo, Nembro, Olmo al Brembo, Oltre il Colle, Oltressenda Alta, Oneta, Onore, Orio al Serio, Ornica, Osio Sopra, Osio Sotto, Pagazzano, Paladina, Palazzago, Palosco, Parre, Parzanica, Pedrengo, Peia, Pianico, Piario, Piazza Brembana, Piazzatorre, Piazzolo, Pognano, Ponte Nossa, Ponte San Pietro, Ponteranica, Pontida, Pontirolo Nuovo, Pradalunga, Predore, Premolo, Presezzo, Pumenengo, Ranica, Ranzanico, Riva di Solto, Rogno, Romano di Lombardia, Roncobello, Roncola, Rota d\'Imagna, Rovetta, San Giovanni Bianco, San Paolo d\'Argon, San Pellegrino Terme, Santa Brigida, Sant\'Omobono Terme, Sarnico, Scanzorosciate, Schilpario, Sedrina, Selvino, Seriate, Serina, Solto Collina, Solza, Songavazzo, Sorisole, Sotto il Monte Giovanni XXIII, Sovere, Spinone al Lago, Spirano, Stezzano, Strozza, Suisio, Taleggio, Tavernola Bergamasca, Telgate, Terno d\'Isola, Torre Boldone, Torre de\' Roveri, Torre Pallavicina, Trescore Balneario, Treviglio, Treviolo, Ubiale Clanezzo, Urgnano, Val Brembilla, Valbondione, Valbrembo, Valgoglio, Valleve, Valnegra, Valtorta, Vedeseta, Verdellino, Verdello, Vertova, Viadanica, Vigano San Martino, Vigolo, Villa d\'Adda, Villa d\'Almè, Villa di Serio, Villa d\'Ogna, Villongo, Vilminore di Scalve, Zandobbio, Zanica, Zogno', '2019-05-30 20:26:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 6, 'Brescia', 'Acquafredda, Adro, Agnosine, Alfianello, Anfo, Angolo Terme, Artogne, Azzano Mella, Bagnolo Mella, Bagolino, Barbariga, Barghe, Bassano Bresciano, Bedizzole, Berlingo, Berzo Demo, Berzo Inferiore, Bienno, Bione, Borgo San Giacomo, Borgosatollo, Borno, Botticino, Bovegno, Bovezzo, Brandico, Braone, Breno, Brescia, Brione, Caino, Calcinato, Calvagese della Riviera, Calvisano, Capo di Ponte, Capovalle, Capriano del Colle, Capriolo, Carpenedolo, Castegnato, Castel Mella, Castelcovati, Castenedolo, Casto, Castrezzato, Cazzago San Martino, Cedegolo, Cellatica, Cerveno, Ceto, Cevo, Chiari, Cigole, Cimbergo, Cividate Camuno, Coccaglio, Collebeato, Collio, Cologne, Comezzano-Cizzago, Concesio, Corte Franca, Corteno Golgi, Corzano, Darfo Boario Terme, Dello, Desenzano del Garda, Edolo, Erbusco, Esine, Fiesse, Flero, Gambara, Gardone Riviera, Gardone Val Trompia, Gargnano, Gavardo, Ghedi, Gianico, Gottolengo, Gussago, Idro, Incudine, Irma, Iseo, Isorella, Lavenone, Leno, Limone sul Garda, Lodrino, Lograto, Lonato del Garda, Longhena, Losine, Lozio, Lumezzane, Maclodio, Magasa, Mairano, Malegno, Malonno, Manerba del Garda, Manerbio, Marcheno, Marmentino, Marone, Mazzano, Milzano, Moniga del Garda, Monno, Monte Isola, Monticelli Brusati, Montichiari, Montirone, Mura, Muscoline, Nave, Niardo, Nuvolento, Nuvolera, Odolo, Offlaga, Ome, Ono San Pietro, Orzinuovi, Orzivecchi, Ospitaletto, Ossimo, Padenghe sul Garda, Paderno Franciacorta, Paisco Loveno, Paitone, Palazzolo sull\'Oglio, Paratico, Paspardo, Passirano, Pavone del Mella, Pertica Alta, Pertica Bassa, Pezzaze, Pian Camuno, Piancogno, Pisogne, Polaveno, Polpenazze del Garda, Pompiano, Poncarale, Ponte di Legno, Pontevico, Pontoglio, Pozzolengo, Pralboino, Preseglie, Prevalle, Provaglio d\'Iseo, Provaglio Val Sabbia, Puegnago sul Garda, Quinzano d\'Oglio, Remedello, Rezzato, Roccafranca, Rodengo Saiano, Roè Volciano, Roncadelle, Rovato, Rudiano, Sabbio Chiese, Sale Marasino, Salò, San Felice del Benaco, San Gervasio Bresciano, San Paolo, San Zeno Naviglio, Sarezzo, Saviore dell\'Adamello, Sellero, Seniga, Serle, Sirmione, Soiano del Lago, Sonico, Sulzano, Tavernole sul Mella, Temù, Tignale, Torbole Casaglia, Toscolano-Maderno, Travagliato, Tremosine sul Garda, Trenzano, Treviso Bresciano, Urago d\'Oglio, Vallio Terme, Valvestino, Verolanuova, Verolavecchia, Vestone, Vezza d\'Oglio, Villa Carcina, Villachiara, Villanuova sul Clisi, Vione, Visano, Vobarno, Zone', '2019-05-30 20:26:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 6, 'Como', 'Albavilla, Albese con Cassano, Albiolo, Alserio, Alzate Brianza, Anzano del Parco, Appiano Gentile, Argegno, Arosio, Asso, Barni, Bellagio, Bene Lario, Beregazzo con Figliaro, Binago, Bizzarone, Blessagno, Blevio, Bregnano, Brenna, Brienno, Brunate, Bulgarograsso, Cabiate, Cadorago, Caglio, Cagno, Campione d\'Italia, Cantù, Canzo, Capiago Intimiano, Carate Urio, Carbonate, Carimate, Carlazzo, Carugo, Casasco d\'Intelvi, Caslino d\'Erba, Casnate con Bernate, Cassina Rizzardi, Castelmarte, Castelnuovo Bozzente, Castiglione d\'Intelvi, Cavallasca, Cavargna, Cerano d\'Intelvi, Cermenate, Cernobbio, Cirimido, Claino con Osteno, Colonno, Colverde, Como, Corrido, Cremia, Cucciago, Cusino, Dizzasco, Domaso, Dongo, Dosso del Liro, Erba, Eupilio, Faggeto Lario, Faloppio, Fenegrò, Figino Serenza, Fino Mornasco, Garzeno, Gera Lario, Grandate, Grandola ed Uniti, Gravedona ed Uniti, Griante, Guanzate, Inverigo, Laglio, Laino, Lambrugo, Lanzo d\'Intelvi, Lasnigo, Lezzeno, Limido Comasco, Lipomo, Livo, Locate Varesino, Lomazzo, Longone al Segrino, Luisago, Lurago d\'Erba, Lurago Marinone, Lurate Caccivio, Magreglio, Mariano Comense, Maslianico, Menaggio, Merone, Moltrasio, Monguzzo, Montano Lucino, Montemezzo, Montorfano, Mozzate, Musso, Nesso, Novedrate, Olgiate Comasco, Oltrona di San Mamette, Orsenigo, Peglio, Pellio Intelvi, Pianello del Lario, Pigra, Plesio, Pognana Lario, Ponna, Ponte Lambro, Porlezza, Proserpio, Pusiano, Ramponio Verna, Rezzago, Rodero, Ronago, Rovellasca, Rovello Porro, Sala Comacina, San Bartolomeo Val Cavargna, San Fedele Intelvi, San Fermo della Battaglia, San Nazzaro Val Cavargna, San Siro, Schignano, Senna Comasco, Solbiate, Sorico, Sormano, Stazzona, Tavernerio, Torno, Tremezzina, Trezzone, Turate, Uggiate-Trevano, Val Rezzo, Valbrona, Valmorea, Valsolda, Veleso, Veniano, Vercana, Vertemate con Minoprio, Villa Guardia, Zelbio', '2019-05-30 20:26:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `province` (`id`, `region_id`, `province_name`, `city_list`, `created_at`, `updated_at`, `deleted_at`) VALUES
(48, 6, 'Cremona', 'Acquanegra Cremonese, Agnadello, Annicco, Azzanello, Bagnolo Cremasco, Bonemerse, Bordolano, Ca\' d\'Andrea, Calvatone, Camisano, Campagnola Cremasca, Capergnanica, Cappella Cantone, Cappella de\' Picenardi, Capralba, Casalbuttano ed Uniti, Casale Cremasco-Vidolasco, Casaletto Ceredano, Casaletto di Sopra, Casaletto Vaprio, Casalmaggiore, Casalmorano, Castel Gabbiano, Casteldidone, Castelleone, Castelverde, Castelvisconti, Cella Dati, Chieve, Cicognolo, Cingia de\' Botti, Corte de\' Cortesi con Cignone, Corte de\' Frati, Credera Rubbiano, Crema, Cremona, Cremosano, Crotta d\'Adda, Cumignano sul Naviglio, Derovere, Dovera, Drizzona, Fiesco, Formigara, Gabbioneta-Binanuova, Gadesco-Pieve Delmona, Genivolta, Gerre de\' Caprioli, Gombito, Grontardo, Grumello Cremonese ed Uniti, Gussola, Isola Dovarese, Izano, Madignano, Malagnino, Martignana di Po, Monte Cremasco, Montodine, Moscazzano, Motta Baluffi, Offanengo, Olmeneta, Ostiano, Paderno Ponchielli, Palazzo Pignano, Pandino, Persico Dosimo, Pescarolo ed Uniti, Pessina Cremonese, Piadena, Pianengo, Pieranica, Pieve d\'Olmi, Pieve San Giacomo, Pizzighettone, Pozzaglio ed Uniti, Quintano, Ricengo, Ripalta Arpina, Ripalta Cremasca, Ripalta Guerina, Rivarolo del Re ed Uniti, Rivolta d\'Adda, Robecco d\'Oglio, Romanengo, Salvirola, San Bassano, San Daniele Po, San Giovanni in Croce, San Martino del Lago, Scandolara Ravara, Scandolara Ripa d\'Oglio, Sergnano, Sesto ed Uniti, Solarolo Rainerio, Soncino, Soresina, Sospiro, Spinadesco, Spineda, Spino d\'Adda, Stagno Lombardo, Ticengo, Torlino Vimercati, Tornata, Torre de\' Picenardi, Torricella del Pizzo, Trescore Cremasco, Trigolo, Vaiano Cremasco, Vailate, Vescovato, Volongo, Voltido', '2019-05-30 20:26:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 6, 'Lecco', 'Abbadia Lariana, Airuno, Annone di Brianza, Ballabio, Barzago, Barzanò, Barzio, Bellano, Bosisio Parini, Brivio, Bulciago, Calco, Calolziocorte, Carenno, Casargo, Casatenovo, Cassago Brianza, Cassina Valsassina, Castello di Brianza, Cernusco Lombardone, Cesana Brianza, Civate, Colico, Colle Brianza, Cortenova, Costa Masnaga, Crandola Valsassina, Cremella, Cremeno, Dervio, Dolzago, Dorio, Ello, Erve, Esino Lario, Galbiate, Garbagnate Monastero, Garlate, Imbersago, Introbio, Introzzo, La Valletta Brianza, Lecco, Lierna, Lomagna, Malgrate, Mandello del Lario, Margno, Merate, Missaglia, Moggio, Molteno, Monte Marenzo, Montevecchia, Monticello Brianza, Morterone, Nibionno, Oggiono, Olgiate Molgora, Olginate, Oliveto Lario, Osnago, Paderno d\'Adda, Pagnona, Parlasco, Pasturo, Perledo, Pescate, Premana, Primaluna, Robbiate, Rogeno, Santa Maria Hoè, Sirone, Sirtori, Sueglio, Suello, Taceno, Torre de\' Busi, Tremenico, Valgreghentino, Valmadrera, Varenna, Vendrogno, Vercurago, Verderio, Vestreno, Viganò', '2019-05-30 20:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 6, 'Lodi', 'Abbadia Cerreto, Bertonico, Boffalora d\'Adda, Borghetto Lodigiano, Borgo San Giovanni, Brembio, Camairago, Casaletto Lodigiano, Casalmaiocco, Casalpusterlengo, Caselle Landi, Caselle Lurani, Castelnuovo Bocca d\'Adda, Castiglione d\'Adda, Castiraga Vidardo, Cavacurta, Cavenago d\'Adda, Cervignano d\'Adda, Codogno, Comazzo, Cornegliano Laudense, Corno Giovine, Cornovecchio, Corte Palasio, Crespiatica, Fombio, Galgagnano, Graffignana, Guardamiglio, Livraga, Lodi, Lodi Vecchio, Maccastorna, Mairago, Maleo, Marudo, Massalengo, Meleti, Merlino, Montanaso Lombardo, Mulazzano, Orio Litta, Ospedaletto Lodigiano, Ossago Lodigiano, Pieve Fissiraga, Salerano sul Lambro, San Fiorano, San Martino in Strada, San Rocco al Porto, Sant\'Angelo Lodigiano, Santo Stefano Lodigiano, Secugnago, Senna Lodigiana, Somaglia, Sordio, Tavazzano con Villavesco, Terranova dei Passerini, Turano Lodigiano, Valera Fratta, Villanova del Sillaro, Zelo Buon Persico', '2019-05-30 20:26:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 6, 'Mantova', 'Acquanegra sul Chiese, Asola, Bagnolo San Vito, Bigarello, Borgo Virgilio, Borgofranco sul Po, Bozzolo, Canneto sull\'Oglio, Carbonara di Po, Casalmoro, Casaloldo, Casalromano, Castel d\'Ario, Castel Goffredo, Castelbelforte, Castellucchio, Castiglione delle Stiviere, Cavriana, Ceresara, Commessaggio, Curtatone, Dosolo, Felonica, Gazoldo degli Ippoliti, Gazzuolo, Goito, Gonzaga, Guidizzolo, Magnacavallo, Mantova, Marcaria, Mariana Mantovana, Marmirolo, Medole, Moglia, Monzambano, Motteggiana, Ostiglia, Pegognaga, Pieve di Coriano, Piubega, Poggio Rusco, Pomponesco, Ponti sul Mincio, Porto Mantovano, Quingentole, Quistello, Redondesco, Revere, Rivarolo Mantovano, Rodigo, Roncoferraro, Roverbella, Sabbioneta, San Benedetto Po, San Giacomo delle Segnate, San Giorgio di Mantova, San Giovanni del Dosso, San Martino dall\'Argine, Schivenoglia, Sermide, Serravalle a Po, Solferino, Sustinente, Suzzara, Viadana, Villa Poma, Villimpenta, Volta Mantovana', '2019-05-30 20:26:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 6, 'Milan', 'Abbiategrasso, Albairate, Arconate, Arese, Arluno, Assago, Baranzate, Bareggio, Basiano, Basiglio, Bellinzago Lombardo, Bernate Ticino, Besate, Binasco, Boffalora Sopra Ticino, Bollate, Bresso, Bubbiano, Buccinasco, Buscate, Bussero, Busto Garolfo, Calvignasco, Cambiago, Canegrate, Carpiano, Carugate, Casarile, Casorezzo, Cassano d\'Adda, Cassina de\' Pecchi, Cassinetta di Lugagnano, Castano Primo, Cernusco sul Naviglio, Cerro al Lambro, Cerro Maggiore, Cesano Boscone, Cesate, Cinisello Balsamo, Cisliano, Cologno Monzese, Colturano, Corbetta, Cormano, Cornaredo, Corsico, Cuggiono, Cusago, Cusano Milanino, Dairago, Dresano, Gaggiano, Garbagnate Milanese, Gessate, Gorgonzola, Grezzago, Gudo Visconti, Inveruno, Inzago, Lacchiarella, Lainate, Legnano, Liscate, Locate di Triulzi, Magenta, Magnago, Marcallo con Casone, Masate, Mediglia, Melegnano, Melzo, Mesero, Milan, Morimondo, Motta Visconti, Nerviano, Nosate, Novate Milanese, Noviglio, Opera, Ossona, Ozzero, Paderno Dugnano, Pantigliate, Parabiago, Paullo, Pero, Peschiera Borromeo, Pessano con Bornago, Pieve Emanuele, Pioltello, Pogliano Milanese, Pozzo d\'Adda, Pozzuolo Martesana, Pregnana Milanese, Rescaldina, Rho, Robecchetto con Induno, Robecco sul Naviglio, Rodano, Rosate, Rozzano, San Colombano al Lambro, San Donato Milanese, San Giorgio su Legnano, San Giuliano Milanese, San Vittore Olona, San Zenone al Lambro, Santo Stefano Ticino, Sedriano, Segrate, Senago, Sesto San Giovanni, Settala, Settimo Milanese, Solaro, Trezzano Rosa, Trezzano sul Naviglio, Trezzo sull\'Adda, Tribiano, Truccazzano, Turbigo, Vanzaghello, Vanzago, Vaprio d\'Adda, Vermezzo, Vernate, Vignate, Villa Cortese, Vimodrone, Vittuone, Vizzolo Predabissi, Zelo Surrigone, Zibido San Giacomo', '2019-05-30 20:27:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 6, 'Monza e della Brianza', 'Agrate Brianza, Aicurzio, Albiate, Arcore, Barlassina, Bellusco, Bernareggio, Besana in Brianza, Biassono, Bovisio-Masciago, Briosco, Brugherio, Burago di Molgora, Busnago, Camparada, Caponago, Carate Brianza, Carnate, Cavenago di Brianza, Ceriano Laghetto, Cesano Maderno, Cogliate, Concorezzo, Cornate d\'Adda, Correzzana, Desio, Giussano, Lazzate, Lentate sul Seveso, Lesmo, Limbiate, Lissone, Macherio, Meda, Mezzago, Misinto, Monza, Muggiò, Nova Milanese, Ornago, Renate, Roncello, Ronco Briantino, Seregno, Seveso, Sovico, Sulbiate, Triuggio, Usmate Velate, Varedo, Vedano al Lambro, Veduggio con Colzano, Verano Brianza, Villasanta, Vimercate', '2019-05-30 20:27:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 6, 'Pavia', 'Alagna, Albaredo Arnaboldi, Albonese, Albuzzano, Arena Po, Badia Pavese, Bagnaria, Barbianello, Bascapè, Bastida Pancarana, Battuda, Belgioioso, Bereguardo, Borgarello, Borgo Priolo, Borgo San Siro, Borgoratto Mormorolo, Bornasco, Bosnasco, Brallo di Pregola, Breme, Bressana Bottarone, Broni, Calvignano, Campospinoso, Candia Lomellina, Canevino, Canneto Pavese, Carbonara al Ticino, Casanova Lonati, Casatisma, Casei Gerola, Casorate Primo, Cassolnovo, Castana, Casteggio, Castelletto di Branduzzo, Castello d\'Agogna, Castelnovetto, Cava Manara, Cecima, Ceranova, Ceretto Lomellina, Cergnago, Certosa di Pavia, Cervesina, Chignolo Po, Cigognola, Cilavegna, Codevilla, Confienza, Copiano, Corana, Cornale e Bastida, Corteolona e Genzone, Corvino San Quirico, Costa de\' Nobili, Cozzo, Cura Carpignano, Dorno, Ferrera Erbognone, Filighera, Fortunago, Frascarolo, Galliavola, Gambarana, Gambolò, Garlasco, Gerenzago, Giussago, Godiasco Salice Terme, Golferenzo, Gravellona Lomellina, Gropello Cairoli, Inverno e Monteleone, Landriano, Langosco, Lardirago, Linarolo, Lirio, Lomello, Lungavilla, Magherno, Marcignago, Marzano, Mede, Menconico, Mezzana Bigli, Mezzana Rabattone, Mezzanino, Miradolo Terme, Montalto Pavese, Montebello della Battaglia, Montecalvo Versiggia, Montescano, Montesegale, Monticelli Pavese, Montù Beccaria, Mornico Losana, Mortara, Nicorvo, Olevano di Lomellina, Oliva Gessi, Ottobiano, Palestro, Pancarana, Parona, Pavia, Pietra de\' Giorgi, Pieve Albignola, Pieve del Cairo, Pieve Porto Morone, Pinarolo Po, Pizzale, Ponte Nizza, Portalbera, Rea, Redavalle, Retorbido, Rivanazzano Terme, Robbio, Robecco Pavese, Rocca de\' Giorgi, Rocca Susella, Rognano, Romagnese, Roncaro, Rosasco, Rovescala, Ruino, San Cipriano Po, San Damiano al Colle, San Genesio ed Uniti, San Giorgio di Lomellina, San Martino Siccomario, San Zenone al Po, Sannazzaro de\' Burgondi, Santa Cristina e Bissone, Santa Giuletta, Santa Margherita di Staffora, Santa Maria della Versa, Sant\'Alessio con Vialone, Sant\'Angelo Lomellina, Sartirana Lomellina, Scaldasole, Semiana, Silvano Pietra, Siziano, Sommo, Spessa, Stradella, Suardi, Torrazza Coste, Torre Beretti e Castellaro, Torre d\'Arese, Torre de\' Negri, Torre d\'Isola, Torrevecchia Pia, Torricella Verzate, Travacò Siccomario, Trivolzio, Tromello, Trovo, Val di Nizza, Valeggio, Valle Lomellina, Valle Salimbene, Valverde, Varzi, Velezzo Lomellina, Vellezzo Bellini, Verretto, Verrua Po, Vidigulfo, Vigevano, Villa Biscossi, Villanova d\'Ardenghi, Villanterio, Vistarino, Voghera, Volpara, Zavattarello, Zeccone, Zeme, Zenevredo, Zerbo, Zerbolò, Zinasco', '2019-05-30 20:27:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 6, 'Sondrio', 'Albaredo per San Marco, Albosaggia, Andalo Valtellino, Aprica, Ardenno, Bema, Berbenno di Valtellina, Bianzone, Bormio, Buglio in Monte, Caiolo, Campodolcino, Caspoggio, Castello dell\'Acqua, Castione Andevenno, Cedrasco, Cercino, Chiavenna, Chiesa in Valmalenco, Chiuro, Cino, Civo, Colorina, Cosio Valtellino, Dazio, Delebio, Dubino, Faedo Valtellino, Forcola, Fusine, Gerola Alta, Gordona, Grosio, Grosotto, Lanzada, Livigno, Lovero, Madesimo, Mantello, Mazzo di Valtellina, Mello, Mese, Montagna in Valtellina, Morbegno, Novate Mezzola, Pedesina, Piantedo, Piateda, Piuro, Poggiridenti, Ponte in Valtellina, Postalesio, Prata Camportaccio, Rasura, Rogolo, Samolaco, San Giacomo Filippo, Sernio, Sondalo, Sondrio, Spriana, Talamona, Tartano, Teglio, Tirano, Torre di Santa Maria, Tovo di Sant\'Agata, Traona, Tresivio, Val Masino, Valdidentro, Valdisotto, Valfurva, Verceia, Vervio, Villa di Chiavenna, Villa di Tirano', '2019-05-30 20:27:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 6, 'Varese', 'Agra, Albizzate, Angera, Arcisate, Arsago Seprio, Azzate, Azzio, Barasso, Bardello, Bedero Valcuvia, Besano, Besnate, Besozzo, Biandronno, Bisuschio, Bodio Lomnago, Brebbia, Bregano, Brenta, Brezzo di Bedero, Brinzio, Brissago-Valtravaglia, Brunello, Brusimpiano, Buguggiate, Busto Arsizio, Cadegliano-Viconago, Cadrezzate, Cairate, Cantello, Caravate, Cardano al Campo, Carnago, Caronno Pertusella, Caronno Varesino, Casale Litta, Casalzuigno, Casciago, Casorate Sempione, Cassano Magnago, Cassano Valcuvia, Castellanza, Castello Cabiaglio, Castelseprio, Castelveccana, Castiglione Olona, Castronno, Cavaria con Premezzo, Cazzago Brabbia, Cislago, Cittiglio, Clivio, Cocquio-Trevisago, Comabbio, Comerio, Cremenaga, Crosio della Valle, Cuasso al Monte, Cugliate-Fabiasco, Cunardo, Curiglia con Monteviasco, Cuveglio, Cuvio, Daverio, Dumenza, Duno, Fagnano Olona, Ferno, Ferrera di Varese, Gallarate, Galliate Lombardo, Gavirate, Gazzada Schianno, Gemonio, Gerenzano, Germignaga, Golasecca, Gorla Maggiore, Gorla Minore, Gornate Olona, Grantola, Inarzo, Induno Olona, Ispra, Jerago con Orago, Lavena Ponte Tresa, Laveno-Mombello, Leggiuno, Lonate Ceppino, Lonate Pozzolo, Lozza, Luino, Luvinate, Maccagno con Pino e Veddasca, Malgesso, Malnate, Marchirolo, Marnate, Marzio, Masciago Primo, Mercallo, Mesenzana, Montegrino Valtravaglia, Monvalle, Morazzone, Mornago, Oggiona con Santo Stefano, Olgiate Olona, Origgio, Orino, Osmate, Porto Ceresio, Porto Valtravaglia, Rancio Valcuvia, Ranco, Saltrio, Samarate, Sangiano, Saronno, Sesto Calende, Solbiate Arno, Solbiate Olona, Somma Lombardo, Sumirago, Taino, Ternate, Tradate, Travedona-Monate, Tronzano Lago Maggiore, Uboldo, Valganna, Varano Borghi, Varese, Vedano Olona, Venegono Inferiore, Venegono Superiore, Vergiate, Viggiù, Vizzola Ticino', '2019-05-30 20:27:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 18, 'Campobasso', 'Acquaviva Collecroce, Baranello, Bojano, Bonefro, Busso, Campobasso, Campochiaro, Campodipietra, Campolieto, Campomarino, Casacalenda, Casalciprano, Castelbottaccio, Castellino del Biferno, Castelmauro, Castropignano, Cercemaggiore, Cercepiccola, Civitacampomarano, Colle d\'Anchise, Colletorto, Duronia, Ferrazzano, Fossalto, Gambatesa, Gildone, Guardialfiera, Guardiaregia, Guglionesi, Jelsi, Larino, Limosano, Lucito, Lupara, Macchia Valfortore, Mafalda, Matrice, Mirabello Sannitico, Molise, Monacilioni, Montagano, Montecilfone, Montefalcone nel Sannio, Montelongo, Montemitro, Montenero di Bisaccia, Montorio nei Frentani, Morrone del Sannio, Oratino, Palata, Petacciato, Petrella Tifernina, Pietracatella, Pietracupa, Portocannone, Provvidenti, Riccia, Ripabottoni, Ripalimosani, Roccavivara, Rotello, Salcito, San Biase, San Felice del Molise, San Giacomo degli Schiavoni, San Giovanni in Galdo, San Giuliano del Sannio, San Giuliano di Puglia, San Martino in Pensilis, San Massimo, San Polo Matese, Santa Croce di Magliano, Sant\'Angelo Limosano, Sant\'Elia a Pianisi, Sepino, Spinete, Tavenna, Termoli, Torella del Sannio, Toro, Trivento, Tufara, Ururi, Vinchiaturo', '2019-05-30 20:32:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 18, 'Isernia', 'Acquaviva d\'Isernia, Agnone, Bagnoli del Trigno, Belmonte del Sannio, Cantalupo nel Sannio, Capracotta, Carovilli, Carpinone, Castel del Giudice, Castel San Vincenzo, Castelpetroso, Castelpizzuto, Castelverrino, Cerro al Volturno, Chiauci, Civitanova del Sannio, Colli a Volturno, Conca Casale, Filignano, Forlì del Sannio, Fornelli, Frosolone, Isernia, Longano, Macchia d\'Isernia, Macchiagodena, Miranda, Montaquila, Montenero Val Cocchiara, Monteroduni, Pesche, Pescolanciano, Pescopennataro, Pettoranello del Molise, Pietrabbondante, Pizzone, Poggio Sannita, Pozzilli, Rionero Sannitico, Roccamandolfi, Roccasicura, Rocchetta a Volturno, San Pietro Avellana, Santa Maria del Molise, Sant\'Agapito, Sant\'Angelo del Pesco, Sant\'Elena Sannita, Scapoli, Sessano del Molise, Sesto Campano, Vastogirardi, Venafro', '2019-05-30 20:32:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 5, 'Alessandria', 'Acqui Terme, Albera Ligure, Alessandria, Alfiano Natta, Alice Bel Colle, Alluvioni Cambiò, Altavilla Monferrato, Alzano Scrivia, Arquata Scrivia, Avolasca, Balzola, Basaluzzo, Bassignana, Belforte Monferrato, Bergamasco, Berzano di Tortona, Bistagno, Borghetto di Borbera, Borgo San Martino, Borgoratto Alessandrino, Bosco Marengo, Bosio, Bozzole, Brignano-Frascata, Cabella Ligure, Camagna Monferrato, Camino, Cantalupo Ligure, Capriata d\'Orba, Carbonara Scrivia, Carentino, Carezzano, Carpeneto, Carrega Ligure, Carrosio, Cartosio, Casal Cermelli, Casale Monferrato, Casaleggio Boiro, Casalnoceto, Casasco, Cassano Spinola, Cassine, Cassinelle, Castellania, Castellar Guidobono, Castellazzo Bormida, Castelletto d\'Erro, Castelletto d\'Orba, Castelletto Merli, Castelletto Monferrato, Castelnuovo Bormida, Castelnuovo Scrivia, Castelspina, Cavatore, Cella Monte, Cereseto, Cerreto Grue, Cerrina Monferrato, Coniolo, Conzano, Costa Vescovato, Cremolino, Cuccaro Monferrato, Denice, Dernice, Fabbrica Curone, Felizzano, Fraconalto, Francavilla Bisio, Frascaro, Frassinello Monferrato, Frassineto Po, Fresonara, Frugarolo, Fubine, Gabiano, Gamalero, Garbagna, Gavazzana, Gavi, Giarole, Gremiasco, Grognardo, Grondona, Guazzora, Isola Sant\'Antonio, Lerma, Lu, Malvicino, Masio, Melazzo, Merana, Mirabello Monferrato, Molare, Molino dei Torti, Mombello Monferrato, Momperone, Moncestino, Mongiardino Ligure, Monleale, Montacuto, Montaldeo, Montaldo Bormida, Montecastello, Montechiaro d\'Acqui, Montegioco, Montemarzino, Morano sul Po, Morbello, Mornese, Morsasco, Murisengo, Novi Ligure, Occimiano, Odalengo Grande, Odalengo Piccolo, Olivola, Orsara Bormida, Ottiglio, Ovada, Oviglio, Ozzano Monferrato, Paderna, Pareto, Parodi Ligure, Pasturana, Pecetto di Valenza, Pietra Marazzi, Piovera, Pomaro Monferrato, Pontecurone, Pontestura, Ponti, Ponzano Monferrato, Ponzone, Pozzol Groppo, Pozzolo Formigaro, Prasco, Predosa, Quargnento, Quattordio, Ricaldone, Rivalta Bormida, Rivarone, Rocca Grimalda, Roccaforte Ligure, Rocchetta Ligure, Rosignano Monferrato, Sala Monferrato, Sale, San Cristoforo, San Giorgio Monferrato, San Salvatore Monferrato, San Sebastiano Curone, Sant\'Agata Fossili, Sardigliano, Sarezzano, Serralunga di Crea, Serravalle Scrivia, Sezzadio, Silvano d\'Orba, Solero, Solonghello, Spigno Monferrato, Spineto Scrivia, Stazzano, Strevi, Tagliolo Monferrato, Tassarolo, Terruggia, Terzo, Ticineto, Tortona, Treville, Trisobbio, Valenza, Valmacca, Vignale Monferrato, Vignole Borbera, Viguzzolo, Villadeati, Villalvernia, Villamiroglio, Villanova Monferrato, Villaromagnano, Visone, Volpedo, Volpeglino, Voltaggio', '2019-05-30 20:33:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 5, 'Asti', 'Agliano Terme, Albugnano, Antignano, Aramengo, Asti, Azzano d\'Asti, Baldichieri d\'Asti, Belveglio, Berzano di San Pietro, Bruno, Bubbio, Buttigliera d\'Asti, Calamandrana, Calliano, Calosso, Camerano Casasco, Canelli, Cantarana, Capriglio, Casorzo, Cassinasco, Castagnole delle Lanze, Castagnole Monferrato, Castel Boglione, Castel Rocchero, Castell\'Alfero, Castellero, Castelletto Molina, Castello di Annone, Castelnuovo Belbo, Castelnuovo Calcea, Castelnuovo Don Bosco, Cellarengo, Celle Enomondo, Cerreto d\'Asti, Cerro Tanaro, Cessole, Chiusano d\'Asti, Cinaglio, Cisterna d\'Asti, Coazzolo, Cocconato, Corsione, Cortandone, Cortanze, Cortazzone, Cortiglione, Cossombrato, Costigliole d\'Asti, Cunico, Dusino San Michele, Ferrere, Fontanile, Frinco, Grana, Grazzano Badoglio, Incisa Scapaccino, Isola d\'Asti, Loazzolo, Maranzana, Maretto, Moasca, Mombaldone, Mombaruzzo, Mombercelli, Monale, Monastero Bormida, Moncalvo, Moncucco Torinese, Mongardino, Montabone, Montafia, Montaldo Scarampi, Montechiaro d\'Asti, Montegrosso d\'Asti, Montemagno, Montiglio Monferrato, Moransengo, Nizza Monferrato, Olmo Gentile, Passerano Marmorito, Penango, Piea, Pino d\'Asti, Piovà Massaia, Portacomaro, Quaranti, Refrancore, Revigliasco d\'Asti, Roatto, Robella, Rocca d\'Arazzo, Roccaverano, Rocchetta Palafea, Rocchetta Tanaro, San Damiano d\'Asti, San Giorgio Scarampi, San Martino Alfieri, San Marzano Oliveto, San Paolo Solbrito, Scurzolengo, Serole, Sessame, Settime, Soglio, Tigliole, Tonco, Tonengo, Vaglio Serra, Valfenera, Vesime, Viale, Viarigi, Vigliano d\'Asti, Villa San Secondo, Villafranca d\'Asti, Villanova d\'Asti, Vinchio', '2019-05-30 20:34:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 5, 'Biella', 'Ailoche, Andorno Micca, Benna, Biella, Bioglio, Borriana, Brusnengo, Callabiana, Camandona, Camburzano, Campiglia Cervo, Candelo, Caprile, Casapinta, Castelletto Cervo, Cavaglià, Cerreto Castello, Cerrione, Coggiola, Cossato, Crevacuore, Curino, Donato, Dorzano, Gaglianico, Gifflenga, Graglia, Lessona, Magnano, Massazza, Masserano, Mezzana Mortigliengo, Miagliano, Mongrando, Mosso, Mottalciata, Muzzano, Netro, Occhieppo Inferiore, Occhieppo Superiore, Pettinengo, Piatto, Piedicavallo, Pollone, Ponderano, Portula, Pralungo, Pray, Quaregna, Ronco Biellese, Roppolo, Rosazza, Sagliano Micca, Sala Biellese, Salussola, Sandigliano, Selve Marcone, Soprana, Sordevolo, Sostegno, Strona, Tavigliano, Ternengo, Tollegno, Torrazzo, Trivero, Valdengo, Vallanzengo, Valle Mosso, Valle San Nicolao, Veglio, Verrone, Vigliano Biellese, Villa del Bosco, Villanova Biellese, Viverone, Zimone, Zubiena, Zumaglia', '2019-05-30 20:34:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 5, 'Cuneo', 'Acceglio, Aisone, Alba, Albaretto della Torre, Alto, Argentera, Arguello, Bagnasco, Bagnolo Piemonte, Baldissero d\'Alba, Barbaresco, Barge, Barolo, Bastia Mondovì, Battifollo, Beinette, Bellino, Belvedere Langhe, Bene Vagienna, Benevello, Bergolo, Bernezzo, Bonvicino, Borgo San Dalmazzo, Borgomale, Bosia, Bossolasco, Boves, Bra, Briaglia, Briga Alta, Brondello, Brossasco, Busca, Camerana, Camo, Canale, Canosio, Caprauna, Caraglio, Caramagna Piemonte, Cardè, Carrù, Cartignano, Casalgrasso, Castagnito, Casteldelfino, Castellar, Castelletto Stura, Castelletto Uzzone, Castellinaldo d\'Alba, Castellino Tanaro, Castelmagno, Castelnuovo di Ceva, Castiglione Falletto, Castiglione Tinella, Castino, Cavallerleone, Cavallermaggiore, Celle di Macra, Centallo, Ceresole Alba, Cerretto Langhe, Cervasca, Cervere, Ceva, Cherasco, Chiusa di Pesio, Cigliè, Cissone, Clavesana, Corneliano d\'Alba, Cortemilia, Cossano Belbo, Costigliole Saluzzo, Cravanzana, Crissolo, Cuneo, Demonte, Diano d\'Alba, Dogliani, Dronero, Elva, Entracque, Envie, Farigliano, Faule, Feisoglio, Fossano, Frabosa Soprana, Frabosa Sottana, Frassino, Gaiola, Gambasca, Garessio, Genola, Gorzegno, Gottasecca, Govone, Grinzane Cavour, Guarene, Igliano, Isasca, La Morra, Lagnasco, Lequio Berria, Lequio Tanaro, Lesegno, Levice, Limone Piemonte, Lisio, Macra, Magliano Alfieri, Magliano Alpi, Mango, Manta, Marene, Margarita, Marmora, Marsaglia, Martiniana Po, Melle, Moiola, Mombarcaro, Mombasiglio, Monastero di Vasco, Monasterolo Casotto, Monasterolo di Savigliano, Monchiero, Mondovì, Monesiglio, Monforte d\'Alba, Montà, Montaldo di Mondovì, Montaldo Roero, Montanera, Montelupo Albese, Montemale di Cuneo, Monterosso Grana, Monteu Roero, Montezemolo, Monticello d\'Alba, Moretta, Morozzo, Murazzano, Murello, Narzole, Neive, Neviglie, Niella Belbo, Niella Tanaro, Novello, Nucetto, Oncino, Ormea, Ostana, Paesana, Pagno, Pamparato, Paroldo, Perletto, Perlo, Peveragno, Pezzolo Valle Uzzone, Pianfei, Piasco, Pietraporzio, Piobesi d\'Alba, Piozzo, Pocapaglia, Polonghera, Pontechianale, Pradleves, Prazzo, Priero, Priocca, Priola, Prunetto, Racconigi, Revello, Rifreddo, Rittana, Roaschia, Roascio, Robilante, Roburent, Rocca Cigliè, Rocca de\' Baldi, Roccabruna, Roccaforte Mondovì, Roccasparvera, Roccavione, Rocchetta Belbo, Roddi, Roddino, Rodello, Rossana, Ruffia, Sale delle Langhe, Sale San Giovanni, Saliceto, Salmour, Saluzzo, Sambuco, Sampeyre, San Benedetto Belbo, San Damiano Macra, San Michele Mondovì, Sanfrè, Sanfront, Santa Vittoria d\'Alba, Sant\'Albano Stura, Santo Stefano Belbo, Santo Stefano Roero, Savigliano, Scagnello, Scarnafigi, Serralunga d\'Alba, Serravalle Langhe, Sinio, Somano, Sommariva del Bosco, Sommariva Perno, Stroppo, Tarantasca, Torre Bormida, Torre Mondovì, Torre San Giorgio, Torresina, Treiso, Trezzo Tinella, Trinità, Valdieri, Valgrana, Valloriate, Valmala, Venasca, Verduno, Vernante, Verzuolo, Vezza d\'Alba, Vicoforte, Vignolo, Villafalletto, Villanova Mondovì, Villanova Solaro, Villar San Costanzo, Vinadio, Viola, Vottignasco', '2019-05-30 20:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 5, 'Novara', 'Agrate Conturbia, Ameno, Armeno, Arona, Barengo, Bellinzago Novarese, Biandrate, Boca, Bogogno, Bolzano Novarese, Borgo Ticino, Borgolavezzaro, Borgomanero, Briga Novarese, Briona, Caltignaga, Cameri, Carpignano Sesia, Casalbeltrame, Casaleggio Novara, Casalino, Casalvolone, Castellazzo Novarese, Castelletto Sopra Ticino, Cavaglietto, Cavaglio d\'Agogna, Cavallirio, Cerano, Colazza, Comignago, Cressa, Cureggio, Divignano, Dormelletto, Fara Novarese, Fontaneto d\'Agogna, Galliate, Garbagna Novarese, Gargallo, Gattico, Ghemme, Gozzano, Granozzo con Monticello, Grignasco, Invorio, Landiona, Lesa, Maggiora, Mandello Vitta, Marano Ticino, Massino Visconti, Meina, Mezzomerico, Miasino, Momo, Nebbiuno, Nibbiola, Novara, Oleggio, Oleggio Castello, Orta San Giulio, Paruzzaro, Pella, Pettenasco, Pisano, Pogno, Pombia, Prato Sesia, Recetto, Romagnano Sesia, Romentino, San Maurizio d\'Opaglio, San Nazzaro Sesia, San Pietro Mosezzo, Sillavengo, Sizzano, Soriso, Sozzago, Suno, Terdobbiate, Tornaco, Trecate, Vaprio d\'Agogna, Varallo Pombia, Veruno, Vespolate, Vicolungo, Vinzaglio', '2019-05-30 20:34:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 5, 'Turin', 'Agliè, Airasca, Ala di Stura, Albiano d\'Ivrea, Alice Superiore, Almese, Alpette, Alpignano, Andezeno, Andrate, Angrogna, Arignano, Avigliana, Azeglio, Bairo, Balangero, Baldissero Canavese, Baldissero Torinese, Balme, Banchette, Barbania, Bardonecchia, Barone Canavese, Beinasco, Bibiana, Bobbio Pellice, Bollengo, Borgaro Torinese, Borgiallo, Borgofranco d\'Ivrea, Borgomasino, Borgone Susa, Bosconero, Brandizzo, Bricherasio, Brosso, Brozolo, Bruino, Brusasco, Bruzolo, Buriasco, Burolo, Busano, Bussoleno, Buttigliera Alta, Cafasse, Caluso, Cambiano, Campiglione Fenile, Candia Canavese, Candiolo, Canischio, Cantalupa, Cantoira, Caprie, Caravino, Carema, Carignano, Carmagnola, Casalborgone, Cascinette d\'Ivrea, Caselette, Caselle Torinese, Castagneto Po, Castagnole Piemonte, Castellamonte, Castelnuovo Nigra, Castiglione Torinese, Cavagnolo, Cavour, Cercenasco, Ceres, Ceresole Reale, Cesana Torinese, Chialamberto, Chianocco, Chiaverano, Chieri, Chiesanuova, Chiomonte, Chiusa di San Michele, Chivasso, Ciconio, Cintano, Cinzano, Ciriè, Claviere, Coassolo Torinese, Coazze, Collegno, Colleretto Castelnuovo, Colleretto Giacosa, Condove, Corio, Cossano Canavese, Cuceglio, Cumiana, Cuorgnè, Druento, Exilles, Favria, Feletto, Fenestrelle, Fiano, Fiorano Canavese, Foglizzo, Forno Canavese, Frassinetto, Front, Frossasco, Garzigliana, Gassino Torinese, Germagnano, Giaglione, Giaveno, Givoletto, Gravere, Groscavallo, Grosso, Grugliasco, Ingria, Inverso Pinasca, Isolabella, Issiglio, Ivrea, La Cassa, La Loggia, Lanzo Torinese, Lauriano, Leini, Lemie, Lessolo, Levone, Locana, Lombardore, Lombriasco, Loranzè, Lugnacco, Luserna San Giovanni, Lusernetta, Lusigliè, Macello, Maglione, Marentino, Massello, Mathi, Mattie, Mazzè, Meana di Susa, Mercenasco, Meugliano, Mezzenile, Mombello di Torino, Mompantero, Monastero di Lanzo, Moncalieri, Moncenisio, Montaldo Torinese, Montalenghe, Montalto Dora, Montanaro, Monteu da Po, Moriondo Torinese, Nichelino, Noasca, Nole, Nomaglio, None, Novalesa, Oglianico, Orbassano, Orio Canavese, Osasco, Osasio, Oulx, Ozegna, Palazzo Canavese, Pancalieri, Parella, Pavarolo, Pavone Canavese, Pecco, Pecetto Torinese, Perosa Argentina, Perosa Canavese, Perrero, Pertusio, Pessinetto, Pianezza, Pinasca, Pinerolo, Pino Torinese, Piobesi Torinese, Piossasco, Piscina, Piverone, Poirino, Pomaretto, Pont-Canavese, Porte, Pragelato, Prali, Pralormo, Pramollo, Prarostino, Prascorsano, Pratiglione, Quagliuzzo, Quassolo, Quincinetto, Reano, Ribordone, Riva Presso Chieri, Rivalba, Rivalta di Torino, Rivara, Rivarolo Canavese, Rivarossa, Rivoli, Robassomero, Rocca Canavese, Roletto, Romano Canavese, Ronco Canavese, Rondissone, Rorà, Rosta, Roure, Rubiana, Rueglio, Salassa, Salbertrand, Salerano Canavese, Salza di Pinerolo, Samone, San Benigno Canavese, San Carlo Canavese, San Colombano Belmonte, San Didero, San Francesco al Campo, San Germano Chisone, San Gillio, San Giorgio Canavese, San Giorio di Susa, San Giusto Canavese, San Martino Canavese, San Maurizio Canavese, San Mauro Torinese, San Pietro Val Lemina, San Ponso, San Raffaele Cimena, San Sebastiano da Po, San Secondo di Pinerolo, Sangano, Sant\'Ambrogio di Torino, Sant\'Antonino di Susa, Santena, Sauze di Cesana, Sauze d\'Oulx, Scalenghe, Scarmagno, Sciolze, Sestriere, Settimo Rottaro, Settimo Torinese, Settimo Vittone, Sparone, Strambinello, Strambino, Susa, Tavagnasco, Torrazza Piemonte, Torre Canavese, Torre Pellice, Trana, Trausella, Traversella, Traves, Trofarello, Turin, Usseaux, Usseglio, Vaie, Val della Torre, Valgioie, Vallo Torinese, Valperga, Valprato Soana, Varisella, Vauda Canavese, Venaria Reale, Venaus, Verolengo, Verrua Savoia, Vestignè, Vialfrè, Vico Canavese, Vidracco, Vigone, Villafranca Piemonte, Villanova Canavese, Villar Dora, Villar Focchiardo, Villar Pellice, Villar Perosa, Villarbasse, Villareggia, Villastellone, Vinovo, Virle Piemonte, Vische, Vistrorio, Viù, Volpiano, Volvera', '2019-05-30 20:34:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 5, 'Verbano-Cusio-Ossola', 'Antrona Schieranco, Anzola d\'Ossola, Arizzano, Arola, Aurano, Baceno, Bannio Anzino, Baveno, Bee, Belgirate, Beura-Cardezza, Bognanco, Borgomezzavalle, Brovello-Carpugnino, Calasca-Castiglione, Cambiasca, Cannero Riviera, Cannobio, Caprezzo, Casale Corte Cerro, Cavaglio-Spoccia, Ceppo Morelli, Cesara, Cossogno, Craveggia, Crevoladossola, Crodo, Cursolo-Orasso, Domodossola, Druogno, Falmenta, Formazza, Germagno, Ghiffa, Gignese, Gravellona Toce, Gurro, Intragna, Loreglia, Macugnaga, Madonna del Sasso, Malesco, Masera, Massiola, Mergozzo, Miazzina, Montecrestese, Montescheno, Nonio, Oggebbio, Omegna, Ornavasso, Pallanzeno, Piedimulera, Pieve Vergonte, Premeno, Premia, Premosello-Chiovenda, Quarna Sopra, Quarna Sotto, Re, San Bernardino Verbano, Santa Maria Maggiore, Stresa, Toceno, Trarego Viggiona, Trasquera, Trontano, Valstrona, Vanzone con San Carlo, Varzo, Verbania, Vignone, Villadossola, Villette, Vogogna', '2019-05-30 20:34:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 5, 'Vercelli', 'Alagna Valsesia, Albano Vercellese, Alice Castello, Arborio, Asigliano Vercellese, Balmuccia, Balocco, Bianzè, Boccioleto, Borgo d\'Ale, Borgo Vercelli, Borgosesia, Breia, Buronzo, Campertogno, Carcoforo, Caresana, Caresanablot, Carisio, Casanova Elvo, Cellio, Cervatto, Cigliano, Civiasco, Collobiano, Costanzana, Cravagliana, Crescentino, Crova, Desana, Fobello, Fontanetto Po, Formigliana, Gattinara, Ghislarengo, Greggio, Guardabosone, Lamporo, Lenta, Lignana, Livorno Ferraris, Lozzolo, Mollia, Moncrivello, Motta de\' Conti, Olcenengo, Oldenico, Palazzolo Vercellese, Pertengo, Pezzana, Pila, Piode, Postua, Prarolo, Quarona, Quinto Vercellese, Rassa, Rima San Giuseppe, Rimasco, Rimella, Riva Valdobbia, Rive, Roasio, Ronsecco, Rossa, Rovasenda, Sabbia, Salasco, Sali Vercellese, Saluggia, San Germano Vercellese, San Giacomo Vercellese, Santhià, Scopa, Scopello, Serravalle Sesia, Stroppiana, Tricerro, Trino, Tronzano Vercellese, Valduggia, Varallo, Vercelli, Villarboit, Villata, Vocca', '2019-05-30 20:34:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 17, 'Bari', 'Acquaviva delle Fonti, Adelfia, Alberobello, Altamura, Bari, Binetto, Bitetto, Bitonto, Bitritto, Capurso, Casamassima, Cassano delle Murge, Castellana Grotte, Cellamare, Conversano, Corato, Gioia del Colle, Giovinazzo, Gravina in Puglia, Grumo Appula, Locorotondo, Modugno, Mola di Bari, Molfetta, Monopoli, Noci, Noicàttaro, Palo del Colle, Poggiorsini, Polignano a Mare, Putignano, Rutigliano, Ruvo di Puglia, Sammichele di Bari, Sannicandro di Bari, Santeramo in Colle, Terlizzi, Toritto, Triggiano, Turi, Valenzano', '2019-05-30 20:38:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 17, 'Barletta-Andria-Trani', 'Andria, Barletta, Bisceglie, Canosa di Puglia, Margherita di Savoia, Minervino Murge, San Ferdinando di Puglia, Spinazzola, Trani, Trinitapoli', '2019-05-30 20:38:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 17, 'Brindisi', 'Brindisi, Carovigno, Ceglie Messapica, Cellino San Marco, Cisternino, Erchie, Fasano, Francavilla Fontana, Latiano, Mesagne, Oria, Ostuni, San Donaci, San Michele Salentino, San Pancrazio Salentino, San Pietro Vernotico, San Vito dei Normanni, Torchiarolo, Torre Santa Susanna, Villa Castelli', '2019-05-30 20:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 17, 'Foggia', 'Accadia, Alberona, Anzano di Puglia, Apricena, Ascoli Satriano, Biccari, Bovino, Cagnano Varano, Candela, Carapelle, Carlantino, Carpino, Casalnuovo Monterotaro, Casalvecchio di Puglia, Castelluccio dei Sauri, Castelluccio Valmaggiore, Castelnuovo della Daunia, Celenza Valfortore, Celle di San Vito, Cerignola, Chieuti, Deliceto, Faeto, Foggia, Ischitella, Isole Tremiti, Lesina, Lucera, Manfredonia, Mattinata, Monte Sant\'Angelo, Monteleone di Puglia, Motta Montecorvino, Ordona, Orsara di Puglia, Orta Nova, Panni, Peschici, Pietramontecorvino, Poggio Imperiale, Rignano Garganico, Rocchetta Sant\'Antonio, Rodi Garganico, Roseto Valfortore, San Giovanni Rotondo, San Marco in Lamis, San Marco la Catola, San Nicandro Garganico, San Paolo di Civitate, San Severo, Sant\'Agata di Puglia, Serracapriola, Stornara, Stornarella, Torremaggiore, Troia, Vico del Gargano, Vieste, Volturara Appula, Volturino, Zapponeta', '2019-05-30 20:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 17, 'Lecce', 'Acquarica del Capo, Alessano, Alezio, Alliste, Andrano, Aradeo, Arnesano, Bagnolo del Salento, Botrugno, Calimera, Campi Salentina, Cannole, Caprarica di Lecce, Carmiano, Carpignano Salentino, Casarano, Castri di Lecce, Castrignano de\' Greci, Castrignano del Capo, Castro, Cavallino, Collepasso, Copertino, Corigliano d\'Otranto, Corsano, Cursi, Cutrofiano, Diso, Gagliano del Capo, Galatina, Galatone, Gallipoli, Giuggianello, Giurdignano, Guagnano, Lecce, Lequile, Leverano, Lizzanello, Maglie, Martano, Martignano, Matino, Melendugno, Melissano, Melpignano, Miggiano, Minervino di Lecce, Monteroni di Lecce, Montesano Salentino, Morciano di Leuca, Muro Leccese, Nardò, Neviano, Nociglia, Novoli, Ortelle, Otranto, Palmariggi, Parabita, Patù, Poggiardo, Porto Cesareo, Presicce, Racale, Ruffano, Salice Salentino, Salve, San Cassiano, San Cesario di Lecce, San Donato di Lecce, San Pietro in Lama, Sanarica, Sannicola, Santa Cesarea Terme, Scorrano, Seclì, Sogliano Cavour, Soleto, Specchia, Spongano, Squinzano, Sternatia, Supersano, Surano, Surbo, Taurisano, Taviano, Tiggiano, Trepuzzi, Tricase, Tuglie, Ugento, Uggiano La Chiesa, Veglie, Vernole, Zollino', '2019-05-30 20:38:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 17, 'Taranto', 'Avetrana, Carosino, Castellaneta, Crispiano, Faggiano, Fragagnano, Ginosa, Grottaglie, Laterza, Leporano, Lizzano, Manduria, Martina Franca, Maruggio, Massafra, Monteiasi, Montemesola, Monteparano, Mottola, Palagianello, Palagiano, Pulsano, Roccaforzata, San Giorgio Ionico, San Marzano di San Giuseppe, Sava, Statte, Taranto, Torricella', '2019-05-30 20:38:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 20, 'Cagliari', 'Armungia, Assemini, Ballao, Barrali, Burcei, Cagliari, Capoterra, Castiadas, Decimomannu, Decimoputzu, Dolianova, Domus De Maria, Donori, Elmas, Escalaplano, Escolca, Esterzili, Gergei, Gesico, Goni, Guamaggiore, Guasila, Isili, Mandas, Maracalagonis, Monastir, Monserrato, Muravera, Nuragus, Nurallao, Nuraminis, Nurri, Orroli, Ortacesus, Pimentel, Pula, Quartu Sant\'Elena, Quartucciu, Sadali, Samatzai, San Basilio, San Nicolò Gerrei, San Sperate, San Vito, Sant\'Andrea Frius, Sarroch, Selargius, Selegas, Senorbì, Serdiana, Serri, Sestu, Settimo San Pietro, Seulo, Siliqua, Silius, Sinnai, Siurgus Donigala, Soleminis, Suelli, Teulada, Ussana, Uta, Vallermosa, Villa San Pietro, Villanova Tulo, Villaputzu, Villasalto, Villasimius, Villasor, Villaspeciosa', '2019-05-30 20:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 20, 'Carbonia-Iglesias', 'Buggerru, Calasetta, Carbonia, Carloforte, Domusnovas, Fluminimaggiore, Giba, Gonnesa, Iglesias, Masainas, Musei, Narcao, Nuxis, Perdaxius, Piscinas, Portoscuso, San Giovanni Suergiu, Santadi, Sant\'Anna Arresi, Sant\'Antioco, Tratalias, Villamassargia, Villaperuccio', '2019-05-30 20:42:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 20, 'Medio Campidano', 'Arbus, Barumini, Collinas, Furtei, Genuri, Gesturi, Gonnosfanadiga, Guspini, Las Plassas, Lunamatrona, Pabillonis, Pauli Arbarei, Samassi, San Gavino Monreale, Sanluri, Sardara, Segariu, Serramanna, Serrenti, Setzu, Siddi, Tuili, Turri, Ussaramanna, Villacidro, Villamar, Villanovaforru, Villanovafranca', '2019-05-30 20:42:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 20, 'Nuoro', 'Aritzo, Atzara, Austis, Belvì, Birori, Bitti, Bolotana, Borore, Bortigali, Desulo, Dorgali, Dualchi, Fonni, Gadoni, Galtellì, Gavoi, Irgoli, Lei, Loculi, Lodè, Lodine, Lula, Macomer, Mamoiada, Meana Sardo, Noragugume, Nuoro, Oliena, Ollolai, Olzai, Onanì, Onifai, Oniferi, Orani, Orgosolo, Orosei, Orotelli, Ortueri, Orune, Osidda, Ottana, Ovodda, Posada, Sarule, Silanus, Sindia, Siniscola, Sorgono, Teti, Tiana, Tonara, Torpè', '2019-05-30 20:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 20, 'Ogliastra', 'Arzana, Bari Sardo, Baunei, Cardedu, Elini, Gairo, Girasole, Ilbono, Jerzu, Lanusei, Loceri, Lotzorai, Osini, Perdasdefogu, Seui, Talana, Tertenia, Tortolì, Triei, Ulassai, Urzulei, Ussassai, Villagrande Strisaili', '2019-05-30 20:42:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 20, 'Olbia-Tempio', 'Aggius, Aglientu, Alà dei Sardi, Arzachena, Badesi, Berchidda, Bortigiadas, Buddusò, Budoni, Calangianus, Golfo Aranci, La Maddalena, Loiri Porto San Paolo, Luogosanto, Luras, Monti, Olbia, Oschiri, Padru, Palau, San Teodoro, Santa Teresa Gallura, Sant\'Antonio di Gallura, Telti, Tempio Pausania, Trinità d\'Agultu e Vignola', '2019-05-30 20:42:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 20, 'Oristano', 'Abbasanta, Aidomaggiore, Albagiara, Ales, Allai, Arborea, Ardauli, Assolo, Asuni, Baradili, Baratili San Pietro, Baressa, Bauladu, Bidonì, Bonarcado, Boroneddu, Bosa, Busachi, Cabras, Cuglieri, Curcuris, Flussio, Fordongianus, Genoni, Ghilarza, Gonnoscodina, Gonnosnò, Gonnostramatza, Laconi, Magomadas, Marrubiu, Masullas, Milis, Modolo, Mogorella, Mogoro, Montresta, Morgongiori, Narbolia, Neoneli, Norbello, Nughedu Santa Vittoria, Nurachi, Nureci, Ollastra, Oristano, Palmas Arborea, Pau, Paulilatino, Pompu, Riola Sardo, Ruinas, Sagama, Samugheo, San Nicolò d\'Arcidano, San Vero Milis, Santa Giusta, Santu Lussurgiu, Scano di Montiferro, Sedilo, Seneghe, Senis, Sennariolo, Siamaggiore, Siamanna, Siapiccia, Simala, Simaxis, Sini, Siris, Soddì, Solarussa, Sorradile, Suni, Tadasuni, Terralba, Tinnura, Tramatza, Tresnuraghes, Ulà Tirso, Uras, Usellus, Villa Sant\'Antonio, Villa Verde, Villanova Truschedu, Villaurbana, Zeddiani, Zerfaliu', '2019-05-30 20:42:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 20, 'Sassari', 'Alghero, Anela, Ardara, Banari, Benetutti, Bessude, Bonnanaro, Bono, Bonorva, Borutta, Bottidda, Bultei, Bulzi, Burgos, Cargeghe, Castelsardo, Cheremule, Chiaramonti, Codrongianos, Cossoine, Erula, Esporlatu, Florinas, Giave, Illorai, Ittireddu, Ittiri, Laerru, Mara, Martis, Monteleone Rocca Doria, Mores, Muros, Nughedu San Nicolò, Nule, Nulvi, Olmedo, Osilo, Ossi, Ozieri, Padria, Pattada, Perfugas, Ploaghe, Porto Torres, Pozzomaggiore, Putifigari, Romana, Santa Maria Coghinas, Sassari, Sedini, Semestene, Sennori, Siligo, Sorso, Stintino, Tergu, Thiesi, Tissi, Torralba, Tula, Uri, Usini, Valledoria, Viddalba, Villanova Monteleone', '2019-05-30 20:42:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 19, 'Agrigento', 'Agrigento, Alessandria della Rocca, Aragona, Bivona, Burgio, Calamonaci, Caltabellotta, Camastra, Cammarata, Campobello di Licata, Canicattì, Casteltermini, Castrofilippo, Cattolica Eraclea, Cianciana, Comitini, Favara, Grotte, Joppolo Giancaxio, Lampedusa e Linosa, Licata, Lucca Sicula, Menfi, Montallegro, Montevago, Naro, Palma di Montechiaro, Porto Empedocle, Racalmuto, Raffadali, Ravanusa, Realmonte, Ribera, Sambuca di Sicilia, San Biagio Platani, San Giovanni Gemini, Santa Elisabetta, Santa Margherita di Belice, Sant\'Angelo Muxaro, Santo Stefano Quisquina, Sciacca, Siculiana, Villafranca Sicula', '2019-05-30 20:47:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 19, 'Caltanissetta', 'Acquaviva Platani, Bompensiere, Butera, Caltanissetta, Campofranco, Delia, Gela, Marianopoli, Mazzarino, Milena, Montedoro, Mussomeli, Niscemi, Resuttano, Riesi, San Cataldo, Santa Caterina Villarmosa, Serradifalco, Sommatino, Sutera, Vallelunga Pratameno, Villalba', '2019-05-30 20:47:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 19, 'Catania', 'Aci Bonaccorsi, Aci Castello, Aci Catena, Aci Sant\'Antonio, Acireale, Adrano, Belpasso, Biancavilla, Bronte, Calatabiano, Caltagirone, Camporotondo Etneo, Castel di Iudica, Castiglione di Sicilia, Catania, Fiumefreddo di Sicilia, Giarre, Grammichele, Gravina di Catania, Licodia Eubea, Linguaglossa, Maletto, Maniace, Mascali, Mascalucia, Mazzarrone, Militello in Val di Catania, Milo, Mineo, Mirabella Imbaccari, Misterbianco, Motta Sant\'Anastasia, Nicolosi, Palagonia, Paternò, Pedara, Piedimonte Etneo, Raddusa, Ragalna, Ramacca, Randazzo, Riposto, San Cono, San Giovanni la Punta, San Gregorio di Catania, San Michele di Ganzaria, San Pietro Clarenza, Santa Maria di Licodia, Santa Venerina, Sant\'Agata Li Battiati, Sant\'Alfio, Scordia, Trecastagni, Tremestieri Etneo, Valverde, Viagrande, Vizzini, Zafferana Etnea', '2019-05-30 20:47:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 19, 'Enna', 'Agira, Aidone, Assoro, Barrafranca, Calascibetta, Catenanuova, Centuripe, Cerami, Enna, Gagliano Castelferrato, Leonforte, Nicosia, Nissoria, Piazza Armerina, Pietraperzia, Regalbuto, Sperlinga, Troina, Valguarnera Caropepe, Villarosa', '2019-05-30 20:47:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 19, 'Messina', 'Acquedolci, Alcara Li Fusi, Alì, Alì Terme, Antillo, Barcellona Pozzo di Gotto, Basicò, Brolo, Capizzi, Capo d\'Orlando, Capri Leone, Caronia, Casalvecchio Siculo, Castel di Lucio, Castell\'Umberto, Castelmola, Castroreale, Cesarò, Condrò, Falcone, Ficarra, Fiumedinisi, Floresta, Fondachelli-Fantina, Forza d\'Agrò, Francavilla di Sicilia, Frazzanò, Furci Siculo, Furnari, Gaggi, Galati Mamertino, Gallodoro, Giardini-Naxos, Gioiosa Marea, Graniti, Gualtieri Sicaminò, Itala, Leni, Letojanni, Librizzi, Limina, Lipari, Longi, Malfa, Malvagna, Mandanici, Mazzarrà Sant\'Andrea, Merì, Messina, Milazzo, Militello Rosmarino, Mirto, Mistretta, Moio Alcantara, Monforte San Giorgio, Mongiuffi Melia, Montagnareale, Montalbano Elicona, Motta Camastra, Motta d\'Affermo, Naso, Nizza di Sicilia, Novara di Sicilia, Oliveri, Pace del Mela, Pagliara, Patti, Pettineo, Piraino, Raccuja, Reitano, Roccafiorita, Roccalumera, Roccavaldina, Roccella Valdemone, Rodì Milici, Rometta, San Filippo del Mela, San Fratello, San Marco D\'Alunzio, San Pier Niceto, San Piero Patti, San Salvatore di Fitalia, San Teodoro, Santa Domenica Vittoria, Santa Lucia del Mela, Santa Marina Salina, Santa Teresa di Riva, Sant\'Agata di Militello, Sant\'Alessio Siculo, Sant\'Angelo di Brolo, Santo Stefano di Camastra, Saponara, Savoca, Scaletta Zanclea, Sinagra, Spadafora, Taormina, Terme Vigliatore, Torregrotta, Torrenova, Tortorici, Tripi, Tusa, Ucria, Valdina, Venetico, Villafranca Tirrena', '2019-05-30 20:47:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 19, 'Palermo', 'Alia, Alimena, Aliminusa, Altavilla Milicia, Altofonte, Bagheria, Balestrate, Baucina, Belmonte Mezzagno, Bisacquino, Blufi, Bolognetta, Bompietro, Borgetto, Caccamo, Caltavuturo, Campofelice di Fitalia, Campofelice di Roccella, Campofiorito, Camporeale, Capaci, Carini, Castelbuono, Casteldaccia, Castellana Sicula, Castronovo di Sicilia, Cefalà Diana, Cefalù, Cerda, Chiusa Sclafani, Ciminna, Cinisi, Collesano, Contessa Entellina, Corleone, Ficarazzi, Gangi, Geraci Siculo, Giardinello, Giuliana, Godrano, Gratteri, Isnello, Isola delle Femmine, Lascari, Lercara Friddi, Marineo, Mezzojuso, Misilmeri, Monreale, Montelepre, Montemaggiore Belsito, Palazzo Adriano, Palermo, Partinico, Petralia Soprana, Petralia Sottana, Piana degli Albanesi, Polizzi Generosa, Pollina, Prizzi, Roccamena, Roccapalumba, San Cipirello, San Giuseppe Jato, San Mauro Castelverde, Santa Cristina Gela, Santa Flavia, Sciara, Scillato, Sclafani Bagni, Termini Imerese, Terrasini, Torretta, Trabia, Trappeto, Ustica, Valledolmo, Ventimiglia di Sicilia, Vicari, Villabate, Villafrati', '2019-05-30 20:47:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 19, 'Ragusa', 'Acate, Chiaramonte Gulfi, Comiso, Giarratana, Ispica, Modica, Monterosso Almo, Pozzallo, Ragusa, Santa Croce Camerina, Scicli, Vittoria', '2019-05-30 20:47:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 19, 'Siracusa', 'Augusta, Avola, Buccheri, Buscemi, Canicattini Bagni, Carlentini, Cassaro, Ferla, Floridia, Francofonte, Lentini, Melilli, Noto, Pachino, Palazzolo Acreide, Portopalo di Capo Passero, Priolo Gargallo, Rosolini, Siracusa, Solarino, Sortino', '2019-05-30 20:47:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 19, 'Trapani', 'Alcamo, Buseto Palizzolo, Calatafimi Segesta, Campobello di Mazara, Castellammare del Golfo, Castelvetrano, Custonaci, Erice, Favignana, Gibellina, Marsala, Mazara del Vallo, Paceco, Pantelleria, Partanna, Petrosino, Poggioreale, Salaparuta, Salemi, San Vito Lo Capo, Santa Ninfa, Trapani, Valderice, Vita', '2019-05-30 20:47:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 11, 'Arezzo', 'Anghiari, Arezzo, Badia Tedalda, Bibbiena, Bucine, Capolona, Caprese Michelangelo, Castel Focognano, Castel San Niccolò, Castelfranco Piandiscò, Castiglion Fibocchi, Castiglion Fiorentino, Cavriglia, Chitignano, Chiusi della Verna, Civitella in Val di Chiana, Cortona, Foiano della Chiana, Laterina, Loro Ciuffenna, Lucignano, Marciano della Chiana, Monte San Savino, Montemignaio, Monterchi, Montevarchi, Ortignano Raggiolo, Pergine Valdarno, Pieve Santo Stefano, Poppi, Pratovecchio Stia, San Giovanni Valdarno, Sansepolcro, Sestino, Subbiano, Talla, Terranuova Bracciolini', '2019-05-30 20:51:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 11, 'Florence', 'Bagno a Ripoli, Barberino di Mugello, Barberino Val d\'Elsa, Borgo San Lorenzo, Calenzano, Campi Bisenzio, Capraia e Limite, Castelfiorentino, Cerreto Guidi, Certaldo, Dicomano, Empoli, Fiesole, Figline e Incisa Valdarno, Firenzuola, Florence, Fucecchio, Gambassi Terme, Greve in Chianti, Impruneta, Lastra a Signa, Londa, Marradi, Montaione, Montelupo Fiorentino, Montespertoli, Palazzuolo sul Senio, Pelago, Pontassieve, Reggello, Rignano sull\'Arno, Rufina, San Casciano in Val di Pesa, San Godenzo, Scandicci, Scarperia e San Piero, Sesto Fiorentino, Signa, Tavarnelle Val di Pesa, Vaglia, Vicchio, Vinci', '2019-05-30 20:51:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 11, 'Grosseto', 'Arcidosso, Campagnatico, Capalbio, Castel del Piano, Castell\'Azzara, Castiglione della Pescaia, Cinigiano, Civitella Paganico, Follonica, Gavorrano, Grosseto, Isola del Giglio, Magliano in Toscana, Manciano, Massa Marittima, Monte Argentario, Monterotondo Marittimo, Montieri, Orbetello, Pitigliano, Roccalbegna, Roccastrada, Santa Fiora, Scansano, Scarlino, Seggiano, Semproniano, Sorano', '2019-05-30 20:51:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 11, 'Livorno', 'Bibbona, Campiglia Marittima, Campo nell\'Elba, Capoliveri, Capraia Isola, Castagneto Carducci, Cecina, Collesalvetti, Livorno, Marciana, Marciana Marina, Piombino, Porto Azzurro, Portoferraio, Rio Marina, Rio nell\'Elba, Rosignano Marittimo, San Vincenzo, Sassetta, Suvereto', '2019-05-30 20:51:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 11, 'Lucca', 'Altopascio, Bagni di Lucca, Barga, Borgo a Mozzano, Camaiore, Camporgiano, Capannori, Careggine, Castelnuovo di Garfagnana, Castiglione di Garfagnana, Coreglia Antelminelli, Fabbriche di Vergemoli, Forte dei Marmi, Fosciandora, Gallicano, Lucca, Massarosa, Minucciano, Molazzana, Montecarlo, Pescaglia, Piazza al Serchio, Pietrasanta, Pieve Fosciana, Porcari, San Romano in Garfagnana, Seravezza, Sillano Giuncugnano, Stazzema, Vagli Sotto, Viareggio, Villa Basilica, Villa Collemandina', '2019-05-30 20:51:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 11, 'Massa-Carrara', 'Aulla, Bagnone, Carrara, Casola in Lunigiana, Comano, Filattiera, Fivizzano, Fosdinovo, Licciana Nardi, Massa, Montignoso, Mulazzo, Podenzana, Pontremoli, Tresana, Villafranca in Lunigiana, Zeri', '2019-05-30 20:51:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 11, 'Pisa', 'Bientina, Buti, Calci, Calcinaia, Capannoli, Casale Marittimo, Casciana Terme Lari, Cascina, Castelfranco di Sotto, Castellina Marittima, Castelnuovo di Val di Cecina, Chianni, Crespina Lorenzana, Fauglia, Guardistallo, Lajatico, Montecatini Val di Cecina, Montescudaio, Monteverdi Marittimo, Montopoli in Val d\'Arno, Orciano Pisano, Palaia, Peccioli, Pisa, Pomarance, Ponsacco, Pontedera, Riparbella, San Giuliano Terme, San Miniato, Santa Croce sull\'Arno, Santa Luce, Santa Maria a Monte, Terricciola, Vecchiano, Vicopisano, Volterra', '2019-05-30 20:51:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 11, 'Pistoia', 'Abetone, Agliana, Buggiano, Chiesina Uzzanese, Cutigliano, Lamporecchio, Larciano, Marliana, Massa e Cozzile, Monsummano Terme, Montale, Montecatini-Terme, Pescia, Pieve a Nievole, Pistoia, Piteglio, Ponte Buggianese, Quarrata, Sambuca Pistoiese, San Marcello Pistoiese, Serravalle Pistoiese, Uzzano', '2019-05-30 20:51:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `province` (`id`, `region_id`, `province_name`, `city_list`, `created_at`, `updated_at`, `deleted_at`) VALUES
(98, 11, 'Prato', 'Cantagallo, Carmignano, Montemurlo, Poggio a Caiano, Prato, Vaiano, Vernio', '2019-05-30 20:51:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 11, 'Siena', 'Abbadia San Salvatore, Asciano, Buonconvento, Casole d\'Elsa, Castellina in Chianti, Castelnuovo Berardenga, Castiglione d\'Orcia, Cetona, Chianciano Terme, Chiusdino, Chiusi, Colle di Val d\'Elsa, Gaiole in Chianti, Montalcino, Montepulciano, Monteriggioni, Monteroni d\'Arbia, Monticiano, Murlo, Piancastagnaio, Pienza, Poggibonsi, Radda in Chianti, Radicofani, Radicondoli, Rapolano Terme, San Casciano dei Bagni, San Gimignano, San Giovanni d\'Asso, San Quirico d\'Orcia, Sarteano, Siena, Sinalunga, Sovicille, Torrita di Siena, Trequanda', '2019-05-30 20:51:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 7, 'Bolzano', 'Aldino, Andriano, Anterivo, Appiano sulla Strada del Vino, Avelengo, Badia, Barbiano, Bolzano, Braies, Brennero, Bressanone, Bronzolo, Brunico, Caines, Caldaro sulla Strada del Vino, Campo di Trens, Campo Tures, Castelbello-Ciardes, Castelrotto, Cermes, Chienes, Chiusa, Cornedo all\'Isarco, Cortaccia sulla Strada del Vino, Cortina sulla Strada del Vino, Corvara in Badia, Curon Venosta, Dobbiaco, Egna, Falzes, Fiè allo Sciliar, Fortezza, Funes, Gais, Gargazzone, Glorenza, La Valle, Laces, Lagundo, Laion, Laives, Lana, Lasa, Lauregno, Luson, Magrè sulla Strada del Vino, Malles Venosta, Marebbe, Marlengo, Martello, Meltina, Merano, Monguelfo-Tesido, Montagna, Moso in Passiria, Nalles, Naturno, Naz-Sciaves, Nova Levante, Nova Ponente, Ora, Ortisei, Parcines, Perca, Plaus, Ponte Gardena, Postal, Prato allo Stelvio, Predoi, Proves, Racines, Rasun-Anterselva, Renon, Rifiano, Rio di Pusteria, Rodengo, Salorno, San Candido, San Genesio Atesino, San Leonardo in Passiria, San Lorenzo di Sebato, San Martino in Badia, San Martino in Passiria, San Pancrazio, Santa Cristina Valgardena, Sarentino, Scena, Selva dei Molini, Selva di Val Gardena, Senales, Senale-San Felice, Sesto, Silandro, Sluderno, Stelvio, Terento, Terlano, Termeno sulla Strada del Vino, Tesimo, Tires, Tirolo, Trodena nel parco naturale, Tubre, Ultimo, Vadena, Val di Vizze, Valdaora, Valle Aurina, Valle di Casies, Vandoies, Varna, Velturno, Verano, Villabassa, Villandro, Vipiteno', '2019-05-30 20:55:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 7, 'Trento', 'Ala, Albiano, Aldeno, Altavalle, Altopiano della Vigolana, Amblar-Don, Andalo, Arco, Avio, Baselga di Pinè, Bedollo, Besenello, Bieno, Bleggio Superiore, Bocenago, Bondone, Borgo Chiese, Borgo Lares, Borgo Valsugana, Brentonico, Bresimo, Brez, Caderzone Terme, Cagnò, Calceranica al Lago, Caldes, Caldonazzo, Calliano, Campitello di Fassa, Campodenno, Canal San Bovo, Canazei, Capriana, Carano, Carisolo, Carzano, Castel Condino, Castel Ivano, Castelfondo, Castello Tesino, Castello-Molina di Fiemme, Castelnuovo, Cavalese, Cavareno, Cavedago, Cavedine, Cavizzana, Cembra Lisignago, Cimone, Cinte Tesino, Cis, Civezzano, Cles, Cloz, Comano Terme, Commezzadura, Contà, Croviana, Daiano, Dambel, Denno, Dimaro Folgarida, Drena, Dro, Faedo, Fai della Paganella, Fiavè, Fierozzo, Folgaria, Fondo, Fornace, Frassilongo, Garniga Terme, Giovo, Giustino, Grigno, Imer, Isera, Lavarone, Lavis, Ledro, Levico Terme, Livo, Lona-Lases, Luserna, Madruzzo, Malè, Malosco, Massimeno, Mazzin, Mezzana, Mezzano, Mezzocorona, Mezzolombardo, Moena, Molveno, Mori, Nago-Torbole, Nave San Rocco, Nogaredo, Nomi, Novaledo, Ospedaletto, Ossana, Palù del Fersina, Panchià, Peio, Pellizzano, Pelugo, Pergine Valsugana, Pieve di Bono-Prezzo, Pieve Tesino, Pinzolo, Pomarolo, Porte di Rendena, Pozza di Fassa, Predaia, Predazzo, Primiero San Martino di Castrozza, Rabbi, Revò, Riva del Garda, Romallo, Romeno, Roncegno Terme, Ronchi Valsugana, Ronzo-Chienis, Ronzone, Roverè della Luna, Rovereto, Ruffrè-Mendola, Rumo, Sagron Mis, Samone, San Lorenzo Dorsino, San Michele all\'Adige, Sant\'Orsola Terme, Sanzeno, Sarnonico, Scurelle, Segonzano, Sella Giudicarie, Sfruz, Soraga, Sover, Spiazzo, Spormaggiore, Sporminore, Stenico, Storo, Strembo, Telve, Telve di Sopra, Tenna, Tenno, Terragnolo, Terzolas, Tesero, Tione di Trento, Ton, Torcegno, Trambileno, Tre Ville, Trento, Valdaone, Valfloriana, Vallarsa, Vallelaghi, Varena, Vermiglio, Vignola-Falesina, Vigo di Fassa, Villa Lagarina, Ville d\'Anaunia, Volano, Zambana, Ziano di Fiemme', '2019-05-30 20:55:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 12, 'Perugia', 'Assisi, Bastia Umbra, Bettona, Bevagna, Campello sul Clitunno, Cannara, Cascia, Castel Ritaldi, Castiglione del Lago, Cerreto di Spoleto, Citerna, Città della Pieve, Città di Castello, Collazzone, Corciano, Costacciaro, Deruta, Foligno, Fossato di Vico, Fratta Todina, Giano dell\'Umbria, Gualdo Cattaneo, Gualdo Tadino, Gubbio, Lisciano Niccone, Magione, Marsciano, Massa Martana, Monte Castello di Vibio, Monte Santa Maria Tiberina, Montefalco, Monteleone di Spoleto, Montone, Nocera Umbra, Norcia, Paciano, Panicale, Passignano sul Trasimeno, Perugia, Piegaro, Pietralunga, Poggiodomo, Preci, San Giustino, Sant\'Anatolia di Narco, Scheggia e Pascelupo, Scheggino, Sellano, Sigillo, Spello, Spoleto, Todi, Torgiano, Trevi, Tuoro sul Trasimeno, Umbertide, Valfabbrica, Vallo di Nera, Valtopina', '2019-05-30 20:57:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 12, 'Terni', 'Acquasparta, Allerona, Alviano, Amelia, Arrone, Attigliano, Avigliano Umbro, Baschi, Calvi dell\'Umbria, Castel Giorgio, Castel Viscardo, Fabro, Ferentillo, Ficulle, Giove, Guardea, Lugnano in Teverina, Montecastrilli, Montecchio, Montefranco, Montegabbione, Monteleone d\'Orvieto, Narni, Orvieto, Otricoli, Parrano, Penna in Teverina, Polino, Porano, San Gemini, San Venanzo, Stroncone, Terni', '2019-05-30 20:57:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 8, 'Belluno', 'Agordo, Alano di Piave, Alleghe, Alpago, Arsiè, Auronzo di Cadore, Belluno, Borca di Cadore, Calalzo di Cadore, Canale d\'Agordo, Cencenighe Agordino, Cesiomaggiore, Chies d\'Alpago, Cibiana di Cadore, Colle Santa Lucia, Comelico Superiore, Cortina d\'Ampezzo, Danta di Cadore, Domegge di Cadore, Falcade, Feltre, Fonzaso, Gosaldo, La Valle Agordina, Lamon, Lentiai, Limana, Livinallongo del Col di Lana, Longarone, Lorenzago di Cadore, Lozzo di Cadore, Mel, Ospitale di Cadore, Pedavena, Perarolo di Cadore, Pieve di Cadore, Ponte nelle Alpi, Quero Vas, Rivamonte Agordino, Rocca Pietore, San Gregorio nelle Alpi, San Nicolò di Comelico, San Pietro di Cadore, San Tomaso Agordino, San Vito di Cadore, Santa Giustina, Santo Stefano di Cadore, Sappada, Sedico, Selva di Cadore, Seren del Grappa, Sospirolo, Soverzene, Sovramonte, Taibon Agordino, Tambre, Trichiana, Val di Zoldo, Vallada Agordina, Valle di Cadore, Vigo di Cadore, Vodo Cadore, Voltago Agordino, Zoppè di Cadore', '2019-05-30 20:58:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 8, 'Padova', 'Abano Terme, Agna, Albignasego, Anguillara Veneta, Arquà Petrarca, Arre, Arzergrande, Bagnoli di Sopra, Baone, Barbona, Battaglia Terme, Boara Pisani, Borgoricco, Bovolenta, Brugine, Cadoneghe, Campo San Martino, Campodarsego, Campodoro, Camposampiero, Candiana, Carceri, Carmignano di Brenta, Cartura, Casale di Scodosia, Casalserugo, Castelbaldo, Cervarese Santa Croce, Cinto Euganeo, Cittadella, Codevigo, Conselve, Correzzola, Curtarolo, Due Carrare, Este, Fontaniva, Galliera Veneta, Galzignano Terme, Gazzo, Grantorto, Granze, Legnaro, Limena, Loreggia, Lozzo Atestino, Maserà di Padova, Masi, Massanzago, Megliadino San Fidenzio, Megliadino San Vitale, Merlara, Mestrino, Monselice, Montagnana, Montegrotto Terme, Noventa Padovana, Ospedaletto Euganeo, Padova, Pernumia, Piacenza d\'Adige, Piazzola sul Brenta, Piombino Dese, Piove di Sacco, Polverara, Ponso, Ponte San Nicolò, Pontelongo, Pozzonovo, Rovolon, Rubano, Saccolongo, Saletto, San Giorgio delle Pertiche, San Giorgio in Bosco, San Martino di Lupari, San Pietro in Gu, San Pietro Viminario, Santa Giustina in Colle, Santa Margherita d\'Adige, Sant\'Angelo di Piove di Sacco, Sant\'Elena, Sant\'Urbano, Saonara, Selvazzano Dentro, Solesino, Stanghella, Teolo, Terrassa Padovana, Tombolo, Torreglia, Trebaseleghe, Tribano, Urbana, Veggiano, Vescovana, Vighizzolo d\'Este, Vigodarzere, Vigonza, Villa del Conte, Villa Estense, Villafranca Padovana, Villanova di Camposampiero, Vo\'', '2019-05-30 20:58:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 8, 'Rovigo', 'Adria, Ariano nel Polesine, Arquà Polesine, Badia Polesine, Bagnolo di Po, Bergantino, Bosaro, Calto, Canaro, Canda, Castelguglielmo, Castelmassa, Castelnovo Bariano, Ceneselli, Ceregnano, Corbola, Costa di Rovigo, Crespino, Ficarolo, Fiesso Umbertiano, Frassinelle Polesine, Fratta Polesine, Gaiba, Gavello, Giacciano con Baruchella, Guarda Veneta, Lendinara, Loreo, Lusia, Melara, Occhiobello, Papozze, Pettorazza Grimani, Pincara, Polesella, Pontecchio Polesine, Porto Tolle, Porto Viro, Rosolina, Rovigo, Salara, San Bellino, San Martino di Venezze, Stienta, Taglio di Po, Trecenta, Villadose, Villamarzana, Villanova del Ghebbo, Villanova Marchesana', '2019-05-30 20:58:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 8, 'Treviso', 'Altivole, Arcade, Asolo, Borso del Grappa, Breda di Piave, Caerano di San Marco, Cappella Maggiore, Carbonera, Casale sul Sile, Casier, Castelcucco, Castelfranco Veneto, Castello di Godego, Cavaso del Tomba, Cessalto, Chiarano, Cimadolmo, Cison di Valmarino, Codognè, Colle Umberto, Conegliano, Cordignano, Cornuda, Crespano del Grappa, Crocetta del Montello, Farra di Soligo, Follina, Fontanelle, Fonte, Fregona, Gaiarine, Giavera del Montello, Godega di Sant\'Urbano, Gorgo al Monticano, Istrana, Loria, Mansuè, Mareno di Piave, Maser, Maserada sul Piave, Meduna di Livenza, Miane, Mogliano Veneto, Monastier di Treviso, Monfumo, Montebelluna, Morgano, Moriago della Battaglia, Motta di Livenza, Nervesa della Battaglia, Oderzo, Ormelle, Orsago, Paderno del Grappa, Paese, Pederobba, Pieve di Soligo, Ponte di Piave, Ponzano Veneto, Portobuffolè, Possagno, Povegliano, Preganziol, Quinto di Treviso, Refrontolo, Resana, Revine Lago, Riese Pio X, Roncade, Salgareda, San Biagio di Callalta, San Fior, San Pietro di Feletto, San Polo di Piave, San Vendemiano, San Zenone degli Ezzelini, Santa Lucia di Piave, Sarmede, Segusino, Sernaglia della Battaglia, Silea, Spresiano, Susegana, Tarzo, Trevignano, Treviso, Valdobbiadene, Vazzola, Vedelago, Vidor, Villorba, Vittorio Veneto, Volpago del Montello, Zenson di Piave, Zero Branco', '2019-05-30 20:58:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 8, 'Venice', 'Annone Veneto, Campagna Lupia, Campolongo Maggiore, Camponogara, Caorle, Cavallino-Treporti, Cavarzere, Ceggia, Chioggia, Cinto Caomaggiore, Cona, Concordia Sagittaria, Dolo, Eraclea, Fiesso d\'Artico, Fossalta di Piave, Fossalta di Portogruaro, Fossò, Gruaro, Jesolo, Marcon, Martellago, Meolo, Mira, Mirano, Musile di Piave, Noale, Noventa di Piave, Pianiga, Portogruaro, Pramaggiore, Quarto d\'Altino, Salzano, San Donà di Piave, San Michele al Tagliamento, San Stino di Livenza, Santa Maria di Sala, Scorzè, Spinea, Stra, Teglio Veneto, Torre di Mosto, Venice, Vigonovo', '2019-05-30 20:58:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 8, 'Verona', 'Affi, Albaredo d\'Adige, Angiari, Arcole, Badia Calavena, Bardolino, Belfiore, Bevilacqua, Bonavigo, Boschi Sant\'Anna, Bosco Chiesanuova, Bovolone, Brentino Belluno, Brenzone sul Garda, Bussolengo, Buttapietra, Caldiero, Caprino Veronese, Casaleone, Castagnaro, Castel d\'Azzano, Castelnuovo del Garda, Cavaion Veronese, Cazzano di Tramigna, Cerea, Cerro Veronese, Cologna Veneta, Colognola ai Colli, Concamarise, Costermano, Dolcè, Erbè, Erbezzo, Ferrara di Monte Baldo, Fumane, Garda, Gazzo Veronese, Grezzana, Illasi, Isola della Scala, Isola Rizza, Lavagno, Lazise, Legnago, Malcesine, Marano di Valpolicella, Mezzane di Sotto, Minerbe, Montecchia di Crosara, Monteforte d\'Alpone, Mozzecane, Negrar, Nogara, Nogarole Rocca, Oppeano, Palù, Pastrengo, Pescantina, Peschiera del Garda, Povegliano Veronese, Pressana, Rivoli Veronese, Roncà, Ronco all\'Adige, Roverchiara, Roverè Veronese, Roveredo di Guà, Salizzole, San Bonifacio, San Giovanni Ilarione, San Giovanni Lupatoto, San Martino Buon Albergo, San Mauro di Saline, San Pietro di Morubio, San Pietro in Cariano, San Zeno di Montagna, Sanguinetto, Sant\'Ambrogio di Valpolicella, Sant\'Anna d\'Alfaedo, Selva di Progno, Soave, Sommacampagna, Sona, Sorgà, Terrazzo, Torri del Benaco, Tregnago, Trevenzuolo, Valeggio sul Mincio, Velo Veronese, Verona, Veronella, Vestenanova, Vigasio, Villa Bartolomea, Villafranca di Verona, Zevio, Zimella', '2019-05-30 20:58:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 8, 'Vicenza', 'Agugliaro, Albettone, Alonte, Altavilla Vicentina, Altissimo, Arcugnano, Arsiero, Arzignano, Asiago, Asigliano Veneto, Barbarano Vicentino, Bassano del Grappa, Bolzano Vicentino, Breganze, Brendola, Bressanvido, Brogliano, Caldogno, Caltrano, Calvene, Camisano Vicentino, Campiglia dei Berici, Campolongo sul Brenta, Carrè, Cartigliano, Cassola, Castegnero, Castelgomberto, Chiampo, Chiuppano, Cismon del Grappa, Cogollo del Cengio, Conco, Cornedo Vicentino, Costabissara, Creazzo, Crespadoro, Dueville, Enego, Fara Vicentino, Foza, Gallio, Gambellara, Gambugliano, Grancona, Grisignano di Zocco, Grumolo delle Abbadesse, Isola Vicentina, Laghi, Lastebasse, Longare, Lonigo, Lugo di Vicenza, Lusiana, Malo, Marano Vicentino, Marostica, Mason Vicentino, Molvena, Monte di Malo, Montebello Vicentino, Montecchio Maggiore, Montecchio Precalcino, Montegalda, Montegaldella, Monteviale, Monticello Conte Otto, Montorso Vicentino, Mossano, Mussolente, Nanto, Nogarole Vicentino, Nove, Noventa Vicentina, Orgiano, Pedemonte, Pianezze, Piovene Rocchette, Pojana Maggiore, Posina, Pove del Grappa, Pozzoleone, Quinto Vicentino, Recoaro Terme, Roana, Romano d\'Ezzelino, Rosà, Rossano Veneto, Rotzo, Salcedo, San Germano dei Berici, San Nazario, San Pietro Mussolino, San Vito di Leguzzano, Sandrigo, Santorso, Sarcedo, Sarego, Schiavon, Schio, Solagna, Sossano, Sovizzo, Tezze sul Brenta, Thiene, Tonezza del Cimone, Torrebelvicino, Torri di Quartesolo, Trissino, Valdagno, Valdastico, Valli del Pasubio, Valstagna, Velo d\'Astico, Vicenza, Villaga, Villaverla, Zanè, Zermeghedo, Zovencedo, Zugliano', '2019-05-30 20:58:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_name` varchar(50) DEFAULT NULL,
  `state_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region_name`, `state_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aosta Valley', 1, '2019-05-30 17:39:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Emilia-Romagna', 1, '2019-05-30 17:39:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Friuli-Venezia Giulia', 1, '2019-05-30 17:39:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Liguria', 1, '2019-05-30 17:39:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Piemonte', 1, '2019-05-30 17:39:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Lombardia', 1, '2019-05-30 17:39:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Trentino-Alto Adige', 1, '2019-05-30 17:39:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Veneto', 1, '2019-05-30 17:40:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Abruzzo', 2, '2019-05-30 17:41:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Lazio', 2, '2019-05-30 17:41:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Toscana', 2, '2019-05-30 17:41:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Umbria', 2, '2019-05-30 17:41:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Le Marche', 2, '2019-05-30 17:41:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Basilicata', 3, '2019-05-30 17:42:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Calabria', 3, '2019-05-30 17:42:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Campania', 3, '2019-05-30 17:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Puglia', 3, '2019-05-30 17:42:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Molise', 3, '2019-05-30 17:42:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Sicilia', 3, '2019-05-30 17:42:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Sardegna', 3, '2019-05-30 17:42:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"admin\":1}', '2019-05-20 12:57:43', '2019-05-20 12:57:43'),
(2, 'school', 'School Admin', NULL, '2019-05-20 12:57:44', '2019-05-30 00:14:52'),
(3, 'technical', 'Technical Person', NULL, '2019-05-20 09:19:01', '2019-05-20 09:19:12'),
(4, 'personal', 'Personal Trainer', NULL, '2019-05-22 09:19:16', '2019-05-22 09:19:20'),
(5, 'student', 'Student', NULL, '2019-05-28 09:19:24', '2019-05-29 09:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-20 12:57:44', '2019-05-20 12:57:44'),
(72, 2, '2019-07-15 01:26:14', '2019-07-15 01:26:14'),
(73, 3, '2019-07-15 01:27:52', '2019-07-15 01:27:52'),
(74, 2, '2019-07-15 01:30:35', '2019-07-15 01:30:35'),
(75, 3, '2019-07-15 01:31:57', '2019-07-15 01:31:57'),
(76, 2, '2019-07-15 04:52:04', '2019-07-15 04:52:04'),
(77, 3, '2019-07-15 04:53:12', '2019-07-15 04:53:12'),
(78, 2, '2019-07-15 06:58:11', '2019-07-15 06:58:11'),
(79, 3, '2019-07-15 06:59:16', '2019-07-15 06:59:16'),
(80, 5, '2019-07-16 10:51:10', '2019-07-16 10:51:10'),
(81, 1, '2019-05-20 12:57:44', '2019-05-20 12:57:44'),
(81, 5, '2019-07-16 10:57:04', '2019-07-16 10:57:04'),
(83, 5, '2019-07-16 10:59:17', '2019-07-16 10:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `membership_type` int(5) UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lati` varchar(20) DEFAULT NULL,
  `longi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `logo_path`, `banner_path`, `reference_asd`, `company_code`, `state`, `region`, `province`, `city`, `address`, `postal_code`, `user_id`, `status`, `membership_type`, `created_at`, `updated_at`, `deleted_at`, `lati`, `longi`) VALUES
(43, 'Fast School', '/uploads/schools/x5PiDaLBwR.jpeg', '/uploads/schools/gugEQAZi6s.jpeg', '1234', '12312412', 'Italy', 'Abruzzo', 'Chieti', 'Archi', 'HIghway street', '34231', 72, 1, 0, '2019-07-15 01:26:14', '2019-07-15 06:52:55', '0000-00-00 00:00:00', '41.90370080000001', '12.496235200000001'),
(44, 'Fitness School', '/uploads/schools/1xmW9nSZ4f.png', '/uploads/schools/gLi6HnbEJ8.jpeg', 'weoiu234idkf', '23940923', 'Italy', 'Basilicata', 'Potenza', 'Barile', 'asdlfj xcvmzxncvsd wer', '29349', 74, 1, 0, '2019-07-15 01:30:35', '2019-07-15 06:52:45', '0000-00-00 00:00:00', '41.90180080000001', '12.493235200000001'),
(45, 'My Fast School', '/uploads/schools/zb9tmTLIiS.jpeg', '/uploads/schools/46AnO3gMEK.jpeg', 'weiuroisdf3', '342342', 'Italy', 'Calabria', 'Crotone', 'Crotone', 'asdf asd fasd fsd', '32423423', 76, 1, 0, '2019-07-15 04:52:04', '2019-07-15 06:52:35', '0000-00-00 00:00:00', '41.90110080000001', '12.494235200000001'),
(46, 'Runner\'s School', '/uploads/schools/pZQWHGclHT.png', '/uploads/schools/7PW5Szr5qN.jpeg', 'sdafasdf', '32424', 'Italy', 'Molise', 'Isernia', 'Filignano', 'dsafasd fasdf asdf asdf', '1234123', 78, 1, 0, '2019-07-15 06:58:11', '2019-07-15 06:59:52', '0000-00-00 00:00:00', '41.90180080000001', '12.496235200000001');

-- --------------------------------------------------------

--
-- Table structure for table `school_course`
--

CREATE TABLE `school_course` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `trainer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `activated` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_course`
--

INSERT INTO `school_course` (`id`, `school_id`, `pic`, `course_id`, `level_id`, `course_name`, `course_desc`, `course_dates`, `course_days`, `course_seats`, `price`, `status`, `trainer_id`, `author_id`, `activated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 42, NULL, 35, 4, 'EVERYONE come on!', 'We are going to open course for EVERYONE!', '[{\"lesson_name\":\"Lesson 1\",\"lesson_desc\":\"We learn the concept of running\",\"lesson_date\":\"2019-07-15\",\"start_time\":\"08:00\",\"end_time\":\"09:00\"},{\"lesson_name\":\"Lesson 2\",\"lesson_desc\":\"Hello, everybody come on my side to learn everything!\\nThis is our basic course for us!\",\"lesson_date\":\"2019-07-16\",\"start_time\":\"10:00\",\"end_time\":\"11:00\"}]', 15, 30, 12, 0, 0, 67, 0, '2019-07-14 15:16:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 45, NULL, 35, 4, 'Summar Course', 'We welcome you guys here!', '[{\"lesson_name\":\"Lesson 1\",\"lesson_desc\":\"This is the lesson we will open for fashionates!\",\"lesson_date\":\"2019-07-08\",\"start_time\":\"11:12\",\"end_time\":\"12:31\"},{\"lesson_name\":\"Lesson 2\",\"lesson_desc\":\"Running concepts lesson. Here goes our lesson scripts.\",\"lesson_date\":\"2019-07-09\",\"start_time\":\"09:10\",\"end_time\":\"11:00\"}]', 15, 25, 15, 0, 0, 76, 0, '2019-07-15 06:57:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 43, NULL, 35, 4, 'Fitness Course', 'This is the course for children. Come on!', '[{\"lesson_name\":\"Lesson 1\",\"lesson_desc\":\"We are going to have a wonderful time in a beach!\",\"lesson_date\":\"2019-07-15\",\"start_time\":\"12:12\",\"end_time\":\"13:13\"},{\"lesson_name\":\"Lesson 2\",\"lesson_desc\":\"Basic concepts of interesting.\",\"lesson_date\":\"2019-07-16\",\"start_time\":\"00:31\",\"end_time\":\"02:12\"}]', 15, 22, 15, 2, 73, 72, 2, '2019-07-15 09:02:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 43, NULL, 35, 5, 'Advanced Course', 'Under 25 is limited!', '[{\"lesson_name\":\"Lesson 1\",\"lesson_desc\":\"Here is my lesson prepared.\",\"lesson_date\":\"2019-07-16\",\"start_time\":\"08:00\",\"end_time\":\"09:00\"},{\"lesson_name\":\"Lesson 2\",\"lesson_desc\":\"We will go to a mountain for running course.\",\"lesson_date\":\"2019-07-17\",\"start_time\":\"10:01\",\"end_time\":\"11:00\"},{\"lesson_name\":\"Lesson 3\",\"lesson_desc\":\"We are going to run across the beach!\",\"lesson_date\":\"2019-07-18\",\"start_time\":\"02:13\",\"end_time\":\"14:34\"}]', 15, 30, 19, 2, 73, 72, 2, '2019-07-15 09:44:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 43, NULL, 35, 6, 'Expert Level Course', 'This is the course requires high skilled athtletes only!', '[{\"lesson_name\":\"Lesson 1\",\"lesson_desc\":\"Intermediate level\",\"lesson_date\":\"2019-07-17\",\"start_time\":\"08:10\",\"end_time\":\"09:10\"},{\"lesson_name\":\"Lesson 2\",\"lesson_desc\":\"Second stage level\",\"lesson_date\":\"2019-07-18\",\"start_time\":\"09:00\",\"end_time\":\"10:00\"},{\"lesson_name\":\"Lesson 3\",\"lesson_desc\":\"Journey Level\",\"lesson_date\":\"2019-07-19\",\"start_time\":\"08:00\",\"end_time\":\"09:00\"},{\"lesson_name\":\"Lesson 4\",\"lesson_desc\":\"Very funny level\",\"lesson_date\":\"2019-07-22\",\"start_time\":\"09:00\",\"end_time\":\"10:00\"}]', 15, 20, 15, 1, 73, 72, 1, '2019-07-17 01:17:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_course_date`
--

CREATE TABLE `school_course_date` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lesson_name` varchar(200) DEFAULT NULL,
  `lesson_desc` text,
  `lesson_date` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `trainer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_course_date`
--

INSERT INTO `school_course_date` (`id`, `school_course_id`, `course_id`, `level_id`, `lesson_name`, `lesson_desc`, `lesson_date`, `start_time`, `end_time`, `status`, `trainer_id`, `author_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 18, 0, 0, NULL, NULL, '2019-06-08', NULL, NULL, 0, 1, 2, '2019-07-05 22:34:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 18, 0, 0, NULL, NULL, ' 2019-06-12', NULL, NULL, 0, 1, 2, '2019-07-05 22:34:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 18, 0, 0, NULL, NULL, ' 2019-06-15', NULL, NULL, 0, 1, 2, '2019-07-05 22:34:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 19, 1, 1, 'this is course name', 'lesson title', '2019-06-08', NULL, NULL, 1, 1, 2, '2019-07-05 23:08:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 19, 1, 1, 'this is course name', 'lesson title', '2019-06-12', NULL, NULL, 1, 1, 2, '2019-07-05 23:08:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 19, 1, 1, 'my lesson', 'lesson desc', '2019-06-15', '09:00', '14:00', 0, 1, 2, '2019-07-05 23:08:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 20, 1, 1, NULL, NULL, '2019-06-08', NULL, NULL, 0, 1, 1, '2019-07-06 00:23:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 20, 1, 1, NULL, NULL, '2019-06-12', NULL, NULL, 0, 1, 1, '2019-07-06 00:23:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 20, 1, 1, 'my lesson', 'lesson desc', '2019-06-15', '09:00', '14:00', 1, 1, 1, '2019-07-06 00:23:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 21, 21, 0, 'Lesson 1', 'We learn the concept of running', '2019-07-15', '08:00', '09:00', 0, 0, 67, '2019-07-14 15:18:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 21, 21, 0, 'Lesson 2', 'Hello, everybody come on my side to learn everything!\nThis is our basic course for us!', '2019-07-16', '10:00', '11:00', 0, 0, 67, '2019-07-14 15:18:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 22, 22, 0, 'Lesson 1', 'This is the lesson we will open for fashionates!', '2019-07-08', '11:12', '12:31', 0, 0, 76, '2019-07-15 06:59:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 22, 22, 0, 'Lesson 2', 'Running concepts lesson. Here goes our lesson scripts.', '2019-07-09', '09:10', '11:00', 0, 0, 76, '2019-07-15 06:59:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 23, 35, 4, 'Lesson 1', 'We are going to have a wonderful time in a beach!', '2019-07-15', '12:12', '13:13', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 23, 35, 4, 'Lesson 2', 'Basic concepts of interesting.', '2019-07-16', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 24, 35, 5, 'Lesson 1', 'Here is my lesson prepared.', '2019-07-16', '08:00', '09:00', 2, 73, 72, '2019-07-16 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 24, 35, 5, 'Lesson 2', 'We will go to a mountain for running course.', '2019-07-17', '10:01', '11:00', 2, 73, 72, '2019-07-16 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 24, 35, 5, 'Lesson 3', 'We are going to run across the beach!', '2019-07-18', '02:13', '14:34', 2, 73, 72, '2019-07-16 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 24, 35, 5, 'Lesson 4', 'We are going to run across the beach!', '2019-07-19', '02:13', '14:34', 2, 73, 72, '2019-07-17 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 24, 35, 5, 'Lesson 5', 'We are going to run across the beach!', '2019-07-20', '02:13', '14:34', 2, 73, 72, '2019-07-18 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 24, 35, 5, 'Lesson 6', 'We are going to run across the beach!', '2019-07-21', '02:13', '14:34', 2, 73, 72, '2019-07-19 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 24, 35, 5, 'Lesson 7', 'We are going to run across the beach!', '2019-07-22', '02:13', '14:34', 2, 73, 72, '2019-07-20 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 24, 35, 5, 'Lesson 8', 'We are going to run across the beach!', '2019-07-23', '02:13', '14:34', 2, 73, 72, '2019-07-21 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 24, 35, 5, 'Lesson 9', 'We are going to run across the beach!', '2019-07-24', '02:13', '14:34', 2, 73, 72, '2019-07-22 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 24, 35, 5, 'Lesson 10', 'We are going to run across the beach!', '2019-07-25', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 24, 35, 5, 'Lesson 11', 'We are going to run across the beach!', '2019-07-27', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 24, 35, 5, 'Lesson 12', 'We are going to run across the beach!', '2019-07-28', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 24, 35, 5, 'Lesson 13', 'We are going to run across the beach!', '2019-07-29', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 24, 35, 5, 'Lesson 14', 'We are going to run across the beach!', '2019-07-30', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 24, 35, 5, 'Lesson 15', 'We are going to run across the beach!', '2019-07-31', '02:13', '14:34', 2, 73, 72, '2019-07-23 13:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 23, 35, 4, 'Lesson 3', 'Basic concepts of interesting.', '2019-07-17', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 23, 35, 4, 'Lesson 4', 'Basic concepts of interesting.', '2019-07-18', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 23, 35, 4, 'Lesson 5', 'Basic concepts of interesting.', '2019-07-19', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 23, 35, 4, 'Lesson 6', 'Basic concepts of interesting.', '2019-07-20', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 23, 35, 4, 'Lesson 7', 'Basic concepts of interesting.', '2019-07-21', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 23, 35, 4, 'Lesson 8', 'Basic concepts of interesting.', '2019-07-22', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 23, 35, 4, 'Lesson 9', 'Basic concepts of interesting.', '2019-07-23', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 23, 35, 4, 'Lesson 10', 'Basic concepts of interesting.', '2019-07-24', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 23, 35, 4, 'Lesson 11', 'Basic concepts of interesting.', '2019-07-25', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 23, 35, 4, 'Lesson 12', 'Basic concepts of interesting.', '2019-07-26', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 23, 35, 4, 'Lesson 13', 'Basic concepts of interesting.', '2019-07-27', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 23, 35, 4, 'Lesson 14', 'Basic concepts of interesting.', '2019-07-28', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 23, 35, 4, 'Lesson 15', 'Basic concepts of interesting.', '2019-07-29', '00:31', '02:12', 2, 0, 72, '2019-07-15 09:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 25, 35, 6, 'Lesson 1', 'Intermediate level', '2019-07-17', '08:10', '09:10', 1, 73, 72, '2019-07-17 01:19:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 25, 35, 6, 'Lesson 2', 'Second stage level', '2019-07-18', '09:00', '10:00', 1, 73, 72, '2019-07-17 01:19:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 25, 35, 6, 'Lesson 3', 'Journey Level', '2019-07-19', '08:00', '09:00', 1, 73, 72, '2019-07-17 01:19:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 25, 35, 6, 'Lesson 4', 'Very funny level', '2019-07-22', '09:00', '10:00', 1, 73, 72, '2019-07-17 01:19:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_course_date_attend`
--

CREATE TABLE `school_course_date_attend` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `school_course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reservation_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `athlete_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `trainer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attend` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` varchar(256) NOT NULL,
  `score` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_course_date_attend`
--

INSERT INTO `school_course_date_attend` (`id`, `course_id`, `level_id`, `school_course_id`, `reservation_id`, `athlete_id`, `trainer_id`, `attend`, `created_at`, `updated_at`, `deleted_at`, `review`, `score`) VALUES
(6, 1, 1, 20, 2, 1, 1, '[{\"25\":\"2\"},{\"24\":\"2\"},{\"23\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(7, 35, 4, 23, 3, 80, 73, '[{\"33\":\"1\"},{\"34\":\"1\"},{\"56\":\"1\"},{\"59\":\"1\"},{\"57\":\"1\"},{\"58\":\"1\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'It was excellent experiences ever!', 4),
(8, 35, 4, 23, 4, 81, 73, '[{\"33\":\"2\"},{\"34\":\"0\"},{\"55\":\"0\"},{\"56\":\"1\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'He was fantastic!', 4),
(9, 35, 4, 23, 5, 82, 73, '[{\"33\":\"1\"},{\"34\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'It was really nice job!!!!', 4),
(10, 35, 5, 24, 6, 80, 73, '[{\"38\":\"1\"},{\"39\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'She was nice!', 4),
(11, 35, 5, 24, 7, 81, 73, '[{\"38\":\"1\"},{\"39\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'This was good experiences!', 3),
(12, 35, 5, 24, 8, 82, 73, '[{\"38\":\"1\"},{\"39\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Expert!!!', 5),
(18, 35, 6, 25, 9, 80, 73, '[{\"74\":\"1\"},{\"75\":\"1\"},{\"76\":\"1\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(19, 35, 6, 25, 10, 81, 73, '[{\"74\":\"1\"},{\"75\":\"2\"},{\"76\":\"1\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(20, 35, 6, 25, 11, 82, 73, '[{\"74\":\"1\"},{\"75\":\"1\"},{\"76\":\"2\"}]', '2019-07-08 21:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `school_course_date_review`
--

CREATE TABLE `school_course_date_review` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `school_course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `to_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `star1` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `star2` tinyint(2) DEFAULT '0',
  `star3` tinyint(2) DEFAULT '0',
  `star4` tinyint(2) DEFAULT '0',
  `star5` tinyint(2) DEFAULT '0',
  `review` text,
  `score` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_course_date_review`
--

INSERT INTO `school_course_date_review` (`id`, `course_id`, `level_id`, `school_course_id`, `from_id`, `to_id`, `star1`, `star2`, `star3`, `star4`, `star5`, `review`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 35, 4, 23, 80, 73, 0, 0, 0, 0, 0, 'He is very nice!', 4, '2019-07-24 18:18:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_course_reservation`
--

CREATE TABLE `school_course_reservation` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL,
  `original_amount` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `pay_amount` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `athlete_file` varchar(200) DEFAULT NULL,
  `description` text,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bio` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_course_reservation`
--

INSERT INTO `school_course_reservation` (`id`, `school_course_id`, `user_id`, `course_id`, `level_id`, `original_amount`, `pay_amount`, `athlete_file`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `bio`) VALUES
(1, 1, 1, NULL, NULL, 40, 40, '/uploads/courses/reservationfUWCAAme4n.jpeg', 'This is text', 0, '2019-07-06 17:17:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 20, 1, 1, 1, 40, 40, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 3, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(3, 23, 80, 35, 4, 40, 40, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, 23, 81, 35, 4, 40, 40, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(5, 23, 82, 35, 4, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(6, 24, 80, 35, 5, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, 24, 81, 35, 5, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(8, 24, 82, 35, 5, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 2, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, 25, 80, 35, 6, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 3, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(10, 25, 81, 35, 6, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 3, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(11, 25, 82, 35, 6, 40, 35, '/uploads/courses/reservation1qFuIbJ4DT.jpeg', 'This is text', 3, '2019-07-06 17:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(12, 22, 80, 35, 4, 0, 0, '/uploads/courses/reservationwZiDDJDVhn.png', 'I wanna follow your course. So interesting.\r\nPlease invite me to join your team as a member of running course.\r\nThanks!', 0, '2019-07-24 06:16:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'I wanna follow your course. So interesting.\r\nPlease invite me to join your team as a member of running course.\r\nThanks!');

-- --------------------------------------------------------

--
-- Table structure for table `school_download`
--

CREATE TABLE `school_download` (
  `school_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_package`
--

CREATE TABLE `school_package` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `pay_amount` varchar(50) DEFAULT NULL,
  `pay_status` tinyint(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_package`
--

INSERT INTO `school_package` (`id`, `package_id`, `user_id`, `pay_amount`, `pay_status`, `created_at`) VALUES
(6, 4, 2, '50', 1, '2019-07-05 15:42:17'),
(7, 1, 67, '50', 1, '2019-07-14 15:07:12'),
(8, 1, 67, '50', 1, '2019-07-14 15:11:57'),
(9, 1, 67, '50', 1, '2019-07-14 16:23:40'),
(10, 1, 67, '50', 1, '2019-07-14 16:26:38'),
(11, 1, 72, '50', 1, '2019-07-15 03:51:19'),
(12, 1, 74, '50', 1, '2019-07-15 03:53:26'),
(13, 1, 76, '50', 1, '2019-07-15 06:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `school_pay_history`
--

CREATE TABLE `school_pay_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `pay_amount` varchar(50) DEFAULT NULL,
  `pay_currency` varchar(30) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `payer_id` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `intent` varchar(50) DEFAULT NULL,
  `purchase_units` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school_upload`
--

CREATE TABLE `school_upload` (
  `school_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_upload`
--

INSERT INTO `school_upload` (`school_id`, `type`, `url`, `size`) VALUES
(42, 'jpeg', '/uploads/schools/cGxd1mhpk2.jpeg', '25218'),
(43, 'png', '/uploads/schools/O6DtwygWvZ.png', '16961'),
(44, 'svg', '/uploads/schools/fpnLRv3R7L.svg', '112249'),
(45, 'png', '/uploads/schools/gSC2zfxvgZ.png', '15167'),
(46, 'png', '/uploads/schools/3yB0YtkIOh.png', '16961');

-- --------------------------------------------------------

--
-- Table structure for table `school_user`
--

CREATE TABLE `school_user` (
  `school_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_user`
--

INSERT INTO `school_user` (`school_id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(42, 67, 2, '2019-06-29 17:01:20', '0000-00-00 00:00:00'),
(43, 72, 2, '2019-07-15 03:26:14', '0000-00-00 00:00:00'),
(43, 73, 3, '2019-07-15 03:27:52', '0000-00-00 00:00:00'),
(44, 74, 2, '2019-07-15 03:30:35', '0000-00-00 00:00:00'),
(44, 75, 3, '2019-07-15 03:31:57', '0000-00-00 00:00:00'),
(45, 76, 2, '2019-07-15 06:52:04', '0000-00-00 00:00:00'),
(45, 77, 3, '2019-07-15 06:53:12', '0000-00-00 00:00:00'),
(46, 78, 2, '2019-07-15 08:58:11', '0000-00-00 00:00:00'),
(46, 79, 3, '2019-07-15 08:59:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Italy', '2019-05-30 17:36:28', NULL, NULL),
(2, 'Central Italy', '2019-05-30 17:36:35', NULL, NULL),
(3, 'Southern Italy', '2019-05-30 17:36:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(48, NULL, 'global', NULL, '2019-07-02 05:07:59', '2019-07-02 05:07:59'),
(49, NULL, 'ip', '::1', '2019-07-02 05:07:59', '2019-07-02 05:07:59'),
(50, 1, 'user', NULL, '2019-07-02 05:07:59', '2019-07-02 05:07:59'),
(51, NULL, 'global', NULL, '2019-07-15 01:56:14', '2019-07-15 01:56:14'),
(52, NULL, 'ip', '66.111.62.195', '2019-07-15 01:56:14', '2019-07-15 01:56:14'),
(53, 1, 'user', NULL, '2019-07-15 01:56:14', '2019-07-15 01:56:14'),
(54, NULL, 'global', NULL, '2019-07-15 01:56:22', '2019-07-15 01:56:22'),
(55, NULL, 'ip', '66.111.62.195', '2019-07-15 01:56:22', '2019-07-15 01:56:22'),
(56, 1, 'user', NULL, '2019-07-15 01:56:22', '2019-07-15 01:56:22'),
(57, NULL, 'global', NULL, '2019-07-15 01:56:32', '2019-07-15 01:56:32'),
(58, NULL, 'ip', '66.111.62.195', '2019-07-15 01:56:32', '2019-07-15 01:56:32'),
(59, 1, 'user', NULL, '2019-07-15 01:56:32', '2019-07-15 01:56:32'),
(60, NULL, 'global', NULL, '2019-07-15 06:53:53', '2019-07-15 06:53:53'),
(61, NULL, 'ip', '204.14.77.93', '2019-07-15 06:53:53', '2019-07-15 06:53:53'),
(62, 76, 'user', NULL, '2019-07-15 06:53:53', '2019-07-15 06:53:53'),
(63, NULL, 'global', NULL, '2019-07-16 12:47:11', '2019-07-16 12:47:11'),
(64, NULL, 'ip', '64.52.100.209', '2019-07-16 12:47:11', '2019-07-16 12:47:11'),
(65, 73, 'user', NULL, '2019-07-16 12:47:11', '2019-07-16 12:47:11'),
(66, NULL, 'global', NULL, '2019-07-19 23:53:10', '2019-07-19 23:53:10'),
(67, NULL, 'ip', '188.43.136.32', '2019-07-19 23:53:10', '2019-07-19 23:53:10'),
(68, 1, 'user', NULL, '2019-07-19 23:53:10', '2019-07-19 23:53:10'),
(69, NULL, 'global', NULL, '2019-07-19 23:53:28', '2019-07-19 23:53:28'),
(70, NULL, 'ip', '188.43.136.32', '2019-07-19 23:53:28', '2019-07-19 23:53:28'),
(71, 1, 'user', NULL, '2019-07-19 23:53:28', '2019-07-19 23:53:28'),
(72, NULL, 'global', NULL, '2019-07-22 19:06:43', '2019-07-22 19:06:43'),
(73, NULL, 'ip', '204.14.77.204', '2019-07-22 19:06:43', '2019-07-22 19:06:43'),
(74, 80, 'user', NULL, '2019-07-22 19:06:43', '2019-07-22 19:06:43'),
(75, NULL, 'global', NULL, '2019-07-22 19:06:47', '2019-07-22 19:06:47'),
(76, NULL, 'ip', '204.14.77.204', '2019-07-22 19:06:47', '2019-07-22 19:06:47'),
(77, 80, 'user', NULL, '2019-07-22 19:06:47', '2019-07-22 19:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `status` tinyint(2) UNSIGNED DEFAULT '0',
  `verify_code` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lati` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longi` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `mobile_phone`, `gender`, `dob`, `birth_place`, `nationality`, `pic`, `country`, `state`, `region`, `province`, `city`, `address`, `postal`, `group`, `vat_number`, `fiscal_code`, `membership_type`, `bio`, `certified_type`, `card_number`, `token`, `status`, `verify_code`, `created_at`, `updated_at`, `deleted_at`, `lati`, `longi`) VALUES
(1, 'admin@admin.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-25 05:07:53', 'John', 'Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'MTU2NDAzODUyNEZScWFWUnNkdFVYdWtCWFpQa1dH', 1, NULL, '2019-05-20 12:57:43', '2019-07-25 05:07:53', NULL, NULL, NULL),
(72, 'future.school@gmail.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-20 01:15:13', 'Michle', 'Jack', '12345678', '1', '1986-03-09', NULL, NULL, '/uploads/users/Q9qhkQrkBF.jpeg', NULL, 'Italy', 'Abruzzo', 'Pescara', 'Bolognano', 'Highway street', '23412', 0, '2341e', '12341', 2, 'I am a school manager.', NULL, NULL, 'MTU2MzU5MjUzOUR4eWpKWWZuempCWEpyckh0S3Ri', 1, NULL, '2019-07-15 01:26:14', '2019-07-20 01:15:13', NULL, NULL, NULL),
(73, 'marry@gmail.com', '$2y$10$tqjmePYfOhQ2L/jRwKh5JOxyCJlRbk0lK7yUu8SYrFS6F3YdKWQnK', NULL, '2019-07-18 08:00:13', 'Marry', 'Kong', '12345687', '2', '1981-06-20', 'aslkdfj asdf asdf', 'Italian', '/uploads/users/vX6pqkJeP9.jpeg', NULL, 'Italy', 'Abruzzo', 'L Aquila', 'Anversa degli Abruzzi', 'sadf sadf wer e qer', '23412', 0, '21342', '12341', 1, 'I am a technical manager.', '1', '21341', 'MTU2MzQ0NDAzNTZjRDZueHFyVlRSZlFlb3Vlcncz', 1, NULL, '2019-07-15 01:27:52', '2019-07-18 08:00:13', NULL, NULL, NULL),
(74, 'future.school2@gmail.com', '$2y$10$/PjbJUFdwG2ri.eytwSO9.JaCjqLfNKFebPjmnu.62rnXI5IqmZTq', NULL, '2019-07-15 01:53:17', 'Jhon', 'William', '12345678', '1', '1997-02-12', NULL, NULL, '/uploads/users/H4SyMeu6K3.jpeg', NULL, 'Italy', 'Basilicata', 'Potenza', 'Barile', 'poiuiou owieur', 'sdfas', 0, '34234', '3241', 3, 'I am a school administrator.', NULL, NULL, 'MTU2MzE2MjgzMWt2QmV2MUtHZHVYR1FCcloxQjFC', 1, NULL, '2019-07-15 01:30:35', '2019-07-15 01:53:17', NULL, NULL, NULL),
(75, 'katharin@gmail.com', '$2y$10$QVTQqFE9rIrFDEhTNbRh8.EzGvpIFeEcCbCgkqgh8yLnZzPByjzDq', NULL, NULL, 'Karathin', 'Thaem', '12345678', '2', '1985-02-19', 'asdf asd fasdf', 'Italian', '/uploads/users/rcW69Js5tV.jpeg', NULL, 'Italy', 'Calabria', 'Reggio Calabria', 'Anoia', 'dsaf asdf asdf asdf', '3423', 0, 'sadfa', '31241', 2, 'sdf asdf asdf sadf', '3', '23423', NULL, 1, NULL, '2019-07-15 01:31:57', '2019-07-15 01:31:57', NULL, NULL, NULL),
(76, 'future.school3@gmail.com', '$2y$10$PcdG.iRaHIShS5.zr/4t1uk1.fwujlDZXUHVmsfww9a4odUJvPHGS', NULL, '2019-07-15 06:55:55', 'asdfasd', 'asdfasdf', '123412341234', '2', '2019-06-18', NULL, NULL, '/uploads/users/9QGeKYrAvG.jpeg', NULL, 'Italy', 'Aosta Valley', 'Aosta', 'Arnad', 'sdf asfasdf', '12431234', 0, '12341234', '12341234', 3, 'sdfsdf asdf sadf', NULL, NULL, 'MTU2MzE4MDk3NXFZMXhLUDZFdTh2UmNUQktTdWls', 1, NULL, '2019-07-15 04:52:04', '2019-07-15 06:55:55', NULL, NULL, NULL),
(77, 'future.tech3@gmail.com', '$2y$10$1xIzw1xms8c71flW2xUUvu8MkWsYJ7AU1AdDVUPtOuWm3ZLYkLNea', NULL, NULL, 'Maya', 'Sope', '1412342134123', '2', '2019-06-25', 'asfdasdf', 'Italian', '/uploads/users/AOWtjkIXoZ.jpeg', NULL, 'Italy', 'Basilicata', 'Potenza', 'Bella', 'sdf asdf asdf', '21341234', 0, '21341234', '1234123', 2, 'asdfa sdfsadf', '2', '21341234', NULL, 1, NULL, '2019-07-15 04:53:12', '2019-07-15 04:53:12', NULL, NULL, NULL),
(78, 'future.school5@gmail.com', '$2y$10$/7vDXhpzjWijQuIeWa9qU.KjlI9vIOd91p9vAVGM5BnjqqYGCh1Xu', NULL, '2019-07-15 07:00:20', 'Jhon', 'Son', '12342134', '1', '2019-06-19', NULL, NULL, '/uploads/users/mH6BA6GxlT.jpeg', NULL, 'Italy', 'Calabria', 'Crotone', 'Casabona', 'dsfsa fasdfsadf', '2314123', 0, '24312143', '2314213', 2, 'asdf sadf asdf', NULL, NULL, 'MTU2MzE4MTIzMnhNZG5nQ2pDQmNQTUhqUzZIU29k', 1, NULL, '2019-07-15 06:58:11', '2019-07-15 07:00:20', NULL, NULL, NULL),
(79, 'future.tech5@gmail.com', '$2y$10$K49pfpFC9i6.Zkp/1v0xb.Pz11.LAij1/G796U7Pyh..gLHo5ohk.', NULL, '2019-07-15 07:01:07', 'Jane', 'Miss', '12341234', '2', '2019-06-19', 'sadfasd asdfsad', 'Italian', '/uploads/users/8eV3Stq1IH.jpeg', NULL, 'Italy', 'Calabria', 'Reggio Calabria', 'Camini', 'asdfasfd asdf', '234123', 0, '2134213', '21341234 123', 2, 'sadf asdf asdf', '2', '21341234', 'MTU2MzE4MTI2N3QxTWk0VDA3ekRMWTBJdFJFRjdt', 1, NULL, '2019-07-15 06:59:16', '2019-07-15 07:01:07', NULL, NULL, NULL),
(80, 'future.athlete1@gmail.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-25 05:09:21', 'Sun', 'Shine', '1234134', '1', '1997-06-15', 'sadf asdf asd asdf', 'Italian', '/uploads/users/wwZ1ITo5z0.jpeg', NULL, 'Italy', 'Aosta Valley', 'Aosta', 'Arnad', 'asdf asf asd fasfd', '234123', 0, '234123', '1234213', 2, 'saf asdf as df', '2', '2341234', 'MTU2NDAzODU2MXI2dGQ3ZGw5UkRwcWs0WVVwZXBH', 1, 'YWFhYWFhYWE6ZnV0dXJlLmF0aGxldGUxQGdtYWlsLmNvbQ==', '2019-07-16 10:51:10', '2019-07-25 05:09:21', NULL, NULL, NULL),
(81, 'future.athlete2@gmail.com', '$2y$10$S2i/1gMg3pIDUT2AGPajBu7LAIjT5PVUx571Ji4viQd2O14HJ.LoK', NULL, NULL, 'Never', 'Mind', '12341234', '2', '2005-05-22', 'asdf asdf asdf', 'Italian', '/uploads/users/fGyfHM04LM.jpeg', NULL, 'Italy', 'Calabria', 'Crotone', 'Amato', 'sdfasdf asdf asdf', '1234123', 0, '12341234', '324123', 2, 'asdfasdf', '2', '1234', NULL, 1, 'YWFhYWFhYWE6ZnV0dXJlLmF0aGxldGUyQGdtYWlsLmNvbQ==', '2019-07-16 10:57:03', '2019-07-16 10:57:03', NULL, NULL, NULL),
(82, 'future.athlete3@gmail.com', '$2y$10$gB5CXGchdIoxSa3Ch2qsMOqx917wc5mKNC.F3EORpH3vnYADOtUuW', NULL, NULL, 'Rainny', 'Day', '13241234', '2', '2004-01-18', 'sdf asdf asdf', 'Italian', '/uploads/users/VOyHpnPTcx.jpeg', NULL, 'Italy', 'Campania', 'Potenza', 'Anzi', 'fasfasfasdfasdf asdf asdf asdf', '12341234', 0, '12341234', '2142134', 2, 'asdfas fda sdf', '2', '21341234', NULL, 1, 'YWFhYWFhYWE6ZnV0dXJlLmF0aGxldGUzQGdtYWlsLmNvbQ==', '2019-07-16 10:59:11', '2019-07-16 10:59:11', NULL, NULL, NULL),
(83, 'admin123412@admin.com', '$2y$10$a8dGI57dC3bZCg/OS2rKwOMBEsDcKBn9HeQdOOI5gOSQxTMZ9reiS', NULL, '2019-07-18 07:58:34', 'John1', 'Doe1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS', 1, NULL, '2019-05-20 12:57:43', '2019-07-18 07:58:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_download`
--

CREATE TABLE `user_download` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_upload`
--

CREATE TABLE `user_upload` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_upload`
--

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
(73, 'png', '/uploads/users/B46EMRBWoa.png', '15925'),
(75, 'png', '/uploads/users/BOrAO0bNex.png', '15167'),
(77, 'png', '/uploads/users/DjvHdF7Hrp.png', '16961'),
(79, 'png', '/uploads/users/nxxm1ESQ08.png', '16961'),
(80, 'png', '/uploads/users/ebxzOlorGF.png', '15925'),
(81, 'png', '/uploads/users/bkK9CwacBp.png', '15925'),
(82, 'png', '/uploads/users/WWnz7bipkc.png', '16961');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_level`
--
ALTER TABLE `course_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_main`
--
ALTER TABLE `course_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_type`
--
ALTER TABLE `membership_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_course`
--
ALTER TABLE `school_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_course_date`
--
ALTER TABLE `school_course_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_course_date_attend`
--
ALTER TABLE `school_course_date_attend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_course_date_review`
--
ALTER TABLE `school_course_date_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_course_reservation`
--
ALTER TABLE `school_course_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_package`
--
ALTER TABLE `school_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `school_pay_history`
--
ALTER TABLE `school_pay_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `school_user`
--
ALTER TABLE `school_user`
  ADD PRIMARY KEY (`school_id`,`user_id`,`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_level`
--
ALTER TABLE `course_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `course_main`
--
ALTER TABLE `course_main`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `membership_type`
--
ALTER TABLE `membership_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `school_course`
--
ALTER TABLE `school_course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `school_course_date`
--
ALTER TABLE `school_course_date`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `school_course_date_attend`
--
ALTER TABLE `school_course_date_attend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `school_course_date_review`
--
ALTER TABLE `school_course_date_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `school_course_reservation`
--
ALTER TABLE `school_course_reservation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `school_package`
--
ALTER TABLE `school_package`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `school_pay_history`
--
ALTER TABLE `school_pay_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
