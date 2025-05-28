-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: tramway.proxy.rlwy.net:43491
-- Generation Time: May 28, 2025 at 04:20 PM
-- Server version: 9.2.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `qr_code_id` int DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `user_id`, `qr_code_id`, `image`, `created_at`) VALUES
(1, 1, 1, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-09 12:07:06'),
(3, 2, 13, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747242191/banner/tkpjxtzmu9nkxcg9cc5y.png', '2025-05-14 17:03:11'),
(4, 1, 15, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296627/banner/fbwc9vfupu21tpn7bdqf.png', '2025-05-15 08:10:27'),
(5, 2, 18, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747336964/banner/zcbgoaqs9vys0doq3mo6.png', '2025-05-15 19:22:45'),
(6, 2, 16, '', '2025-05-15 19:24:31'),
(7, 2, 16, '', '2025-05-15 19:24:50'),
(8, 3, 19, '', '2025-05-16 06:12:57'),
(9, 2, 20, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747417891/banner/pvxxlq6ixubqjgt2ahwk.png', '2025-05-16 17:51:32'),
(10, 6, 22, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747495845/banner/vscxqi4ycr8mgxfgfw2h.png', '2025-05-17 15:30:46'),
(11, 1, 24, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747681529/banner/lswqghwmuhs6ofl8wlni.png', '2025-05-19 19:05:30'),
(12, 1, 25, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747682831/banner/rijvbutk65rvkbpy3iyd.png', '2025-05-19 19:27:11'),
(13, 1, 26, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747683206/banner/k2tjtag8gqhrdcuga5wq.png', '2025-05-19 19:33:27'),
(14, 2, NULL, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747721837/banner/ascnyjonnz6vfo0982tw.jpg', '2025-05-20 06:17:17'),
(15, 1, 29, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747810969/banner/xbwyea6g6gh50gmq7whc.png', '2025-05-21 07:02:52'),
(16, 1, 32, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747857049/banner/hotd5cvkofu320oybrzv.png', '2025-05-21 19:50:50'),
(17, 1, 32, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747857204/banner/hay7zcgjbnnhoekglqe8.png', '2025-05-21 19:53:25'),
(18, 1, 36, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748032121/banner/yma7rkwm1j6uikb7pumx.png', '2025-05-23 20:28:42'),
(19, 1, 36, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748032539/banner/zxzzjhpue4iy1cmqaqhg.png', '2025-05-23 20:35:40'),
(20, 1, 63, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748257376/banner/qib2k8j1hwthbfq19jsc.png', '2025-05-26 11:02:57'),
(21, 1, 63, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748257759/banner/np8pe7qoyttkh79q6tb4.png', '2025-05-26 11:09:20'),
(22, 1, 63, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748258191/banner/ce2gydxc4z78lvyrjbtn.png', '2025-05-26 11:16:32'),
(23, 1, 63, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748258669/banner/cj28ny4msqhwbdrwjyb1.png', '2025-05-26 11:24:29'),
(24, 1, 64, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748260306/banner/aprueeyyjtpex0g56fbj.png', '2025-05-26 11:51:47'),
(25, 1, 64, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748260505/banner/d1azrokoam7quftlzhnt.png', '2025-05-26 11:55:05'),
(26, 1, 74, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748265710/banner/yemmwzwo0qnzlcea55ui.png', '2025-05-26 13:21:50'),
(27, 1, 78, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324211/banner/usommqanvd6uezcdlmjs.png', '2025-05-27 05:36:52'),
(28, 1, 78, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324212/banner/anycw39mph64st0bfzvj.png', '2025-05-27 05:36:52'),
(29, 1, 79, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324450/banner/zfjlxef9a5ehkd7yqozd.png', '2025-05-27 05:40:50'),
(30, 1, 80, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324986/banner/ajzfplvmavjvs9bmzqq7.png', '2025-05-27 05:49:46'),
(31, 1, 81, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748352788/banner/pplncam2jyl1jfa5dv5x.png', '2025-05-27 13:33:08'),
(32, 1, 82, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748353103/banner/kuypb2tmovl6mgjw4ncj.png', '2025-05-27 13:38:23'),
(33, 1, 95, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748412371/banner/vocww3wejbs4snpvoxtc.png', '2025-05-28 06:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `image` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `business_name`, `business_type`, `first_name`, `last_name`, `location`, `email`, `password`, `status`, `image`) VALUES
(1, 'white Technology ', 'IT', 'undefinedtfgxdtfd', 'undefined', 'test', 'company@gmail.com', '$2b$10$tP0b4eRiYbiDo19ihMzbiuxbwLccHEf2SA3bqz8EXqnwAr1.j4wFa', '1', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747570915/jkfqsuzyeaic45roa9s6.jpg'),
(2, 'Glimmers', 'restaurant', 'undefined', 'undefined', 'test', 'ktech@gmail.com', '$2b$10$nOD4s0zz2uvjbgXsezX2OOkOogbhMAZz/BoH0yWibPuaRH3XNOUu2', '1', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746868330/e2jlmyrcg9xpm0r3ibrd.jpg'),
(6, 'white tech', NULL, 'saklen ', 'khan', 'test', 'saklenkhan000@gmail.com', '$2b$10$ZbWxRCp2gFrXC9ehRS5yLedTUvjUlupBg5.bDP/.3caEMYljQxnHS', '1', 'https://i.ibb.co/G6qJtrz/download-2.png'),
(7, 'ApexHealth', 'Healthcare', 'rahul', 'sharma', 'New York', 'joshi@apexhealth.com', '$2b$10$XIGwkr5PsI6sSD/X6J0sB.HyNoqMZj5mduZ6YlCEIkGn2KcQOPL9K', '1', NULL),
(8, 'ApexHealth', 'Healthcare', 'rahul', 'sharma', 'New York', 'joshi15@apexhealth.com', '$2b$10$6Fibjpwka7Tbg0ktwUob9.2lSeR4Ake9gOh4D6JWj8JvD6IQyCVUm', '1', NULL),
(9, 'sfsdf', NULL, 'fsf', 'sffs', 'test', 'company12@gmail.com', '$2b$10$fwwXxkGe.poxFGhzmqyHKORrXxvcbK5/A4mSbRpaGrFFnR/fxYd5m', '1', 'https://i.ibb.co/G6qJtrz/download-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `full_name`, `email`, `phone`, `contact`, `notes`, `created_at`) VALUES
(1, 'Rehan', 'admin@gmail.com', '+1 234 567 8900', 'email', 'gr', '2025-05-14 13:27:50'),
(2, 'Rohit Mehra', 'rohit.mehra92@example.com', '+919911223344', 'phone', 'Anniversary dinner, need candlelight setup', '2025-05-20 05:38:38'),
(3, 'Rohit Mehra', 'rohit.mehra92@example.com', '+919911223344', 'phone', 'Anniversary dinner, need candlelight setup', '2025-05-20 05:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_business`
--

CREATE TABLE `google_business` (
  `id` int NOT NULL,
  `google_business_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qr_code_url` text COLLATE utf8mb4_general_ci,
  `banner_url` text COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `group_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `description`) VALUES
(2, 'admin', 'Can manage users and settings but with limited access compared to superadmin.'),
(3, 'company', 'Represents a company-level group with access to relevant modules.');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int NOT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `month_duration` int NOT NULL,
  `num_establishments` int DEFAULT '1',
  `free_trial_days` int DEFAULT '0',
  `plan_details` text COLLATE utf8mb4_general_ci,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_name`, `month_duration`, `num_establishments`, `free_trial_days`, `plan_details`, `price`, `created_at`, `updated_at`, `order_id`) VALUES
(6, 'Basic Plan', 3, 5, 10, 'Basic features with moderate limits', 199.99, '2025-04-08 07:24:01', '2025-04-10 08:26:40', '6D88E6900947636DBAE2778E'),
(7, 'Growth Plan', 9, 20, 14, 'Designed for growing businesses with extra flexibility', 799.00, '2025-04-08 07:24:21', '2025-04-08 11:01:47', '98720869A3F62490190DD986'),
(8, 'Pro Plan', 6, 10, 14, 'Includes everything in the basic plan plus analytics', 499.99, '2025-04-08 07:24:41', '2025-04-08 07:24:41', '35FF8189E88E068D00E4589B'),
(9, 'Pro Plan', 6, 10, 14, 'Includes everything in the basic plan plus analytics', 499.99, '2025-05-20 12:16:52', '2025-05-20 12:16:52', 'DC4881EC0EB39DCA1727E1C4');

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `business_rating` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`id`, `user_id`, `language`, `url`, `headline`, `logo`, `business_rating`, `location`, `place_id`, `image`, `created_at`) VALUES
(1, 1, 'indonesian', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746871133/logos/byffbj7zmaog87suoa14.jpg', '4', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792376/qrcodes/xwzgonajezmd2hvwfueh.jpg', '2025-05-12 07:25:28'),
(2, 1, 'english', 'https://maps.google.com/?cid=10996660161490466921', 'ACCORD HOYEL', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746871133/logos/byffbj7zmaog87suoa14.jpg', '5', 'Paris', 'ChIJ-Qr6Qxdy5kcRaThUcSf8m5g', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746801218/qrcodes/vzfbiogq0nx9wfflfntn.jpg', '2025-05-12 07:25:38'),
(3, 1, 'arabic', 'https://maps.google.com/?cid=4575499892845547193', 'Pizzeria', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746871133/logos/byffbj7zmaog87suoa14.jpg', '4', 'London', 'ChIJIYHXYKMFdkgRuY7lFulwfz8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746868744/qrcodes/syrwzdmmpm56fzj3amgl.png', '2025-05-12 07:25:47'),
(7, 2, 'hindi', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan techology', '', '0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747159705/qrcodes/mbaewcfou5uwasqx7zuk.jpg', '2025-05-13 18:08:25'),
(12, 1, 'malay', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747210357/logos/vxmu95kqyzmzkuwio8xt.jpg', '3', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747210355/qrcodes/a5oimpbm5d1vvxsp4qrp.jpg', '2025-05-14 08:12:37'),
(13, 2, 'afrikaans', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan techology', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747241383/logos/aqkcycxlcnb3ryek10g8.png', '3', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747241382/qrcodes/pk5ue5m5az57tbglihvg.jpg', '2025-05-14 16:49:44'),
(14, 1, 'french', 'https://maps.google.com/?cid=6475347132037679337', 'Ok business test', '', '0', 'Paris', 'ChIJYeCgBdvf5UcR6UhzougN3Vk', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747287584/qrcodes/qk0koshmlnmkua7fpspn.png', '2025-05-15 05:39:45'),
(15, 1, 'dutch', 'https://maps.google.com/?cid=3201064848314877542', 'apna sweets', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296590/logos/f9emh5jglbm7tnihibxe.jpg', '4', 'indore ', 'ChIJh0oU81X9YjkRZkbMAoV3bCw', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296589/qrcodes/b25mrx6tya0jd3ih92v0.jpg', '2025-05-15 08:09:51'),
(16, 2, 'Abkhazian', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', '', '3.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-15 19:16:17'),
(18, 2, 'albanian', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technoogy', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747336945/logos/u5vsjpnqvcud68vgsoim.png', '3', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747336944/qrcodes/mzqngdmewamf0wfp1t5a.png', '2025-05-15 19:22:26'),
(19, 2, 'Abkhazian', 'https://maps.google.com/?cid=12641052234459792620', 'Kiaan technology ', '', '4.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-16 06:08:47'),
(20, 2, 'english', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747417853/logos/m3t7bcpzxsdbqnx25fo2.png', '3', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747417852/qrcodes/hckrpxos2it2mu3aqlcm.png', '2025-05-16 17:50:54'),
(21, 6, 'english', 'https://maps.google.com/?cid=1487539439922658279', 'white technology', '', '3', ' Mumbai Maharashtra ', 'ChIJAQDkDCHO5zsR5zv5QT3NpBQ', '', '2025-05-17 15:27:20'),
(22, 6, 'english', 'https://maps.google.com/?cid=1487539439922658279', 'white technology', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747495819/logos/c9tki6p19sl93rmfloam.png', '3', ' Mumbai Maharashtra ', 'ChIJAQDkDCHO5zsR5zv5QT3NpBQ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747495818/qrcodes/bxunyx9hyggc9igzhvak.png', '2025-05-17 15:30:19'),
(23, 1, 'arabic', 'https://maps.google.com/?cid=7620286281879373900', 'ryy', '', '3', 'indore', 'ChIJZSOdJoT9YjkRTMgz1v-xwGk', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747676573/qrcodes/i3ib2ouhurwoqcxktcu6.png', '2025-05-19 17:42:53'),
(24, 1, 'english', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747681506/logos/wo19r9dhgwy0vhilnzjf.jpg', '4', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747681504/qrcodes/kwzpqbjnbswclkcsn7z3.jpg', '2025-05-19 19:05:06'),
(25, 2, 'Norwegian', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan tech', '', '4.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-19 19:14:12'),
(26, 2, 'English', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', '', '3.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-19 19:31:23'),
(27, 2, 'dsdd', 'https://example.com/page', 'Scan Me!gfg', '', 'dd', 'indore', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747720847/qrcodes/g5mnw781dhgyhxuraerx.jpg', '2025-05-20 06:00:48'),
(28, 2, 'Afar', 'https://maps.google.com/?cid=2880303610939590502', 'health care ', '', '4.0', 'indore', 'ChIJU6KNHqLiYjkRZkdUp9_k-Cc', '', '2025-05-21 06:53:06'),
(29, 1, 'albanian', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747810694/logos/vugx2zcplbvcqnevrms0.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747810692/qrcodes/ikfsvsjwlaqzsqiln9ca.jpg', '2025-05-21 06:58:14'),
(30, 1, 'afrikaans', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747852875/logos/ueqogxrwoh9qrzx2ou3r.png', '3', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747852874/qrcodes/mitzhsqmoab4ut7nv7dj.png', '2025-05-21 18:41:16'),
(31, 2, 'Afar', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', '', '3.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-21 19:37:41'),
(32, 2, 'Afar', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technology', '', '3.0', 'indore', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-21 19:45:25'),
(33, 2, 'English', 'https://maps.google.com/?cid=2317652250215450619', 'apna helath care', '', '5.0', 'indore ', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', '', '2025-05-22 06:48:40'),
(34, 2, 'Abkhazian', 'https://maps.google.com/?cid=2317652250215450619', 'apna helath care ', '', '5.0', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', '', '2025-05-22 06:52:10'),
(35, 2, 'Afar', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technolo', '', '0.0', 'indore m.p', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-23 20:09:30'),
(36, 2, 'Afar', 'https://maps.google.com/?cid=12641052234459792620', 'kiaan technolo', '', '0.0', 'indore m.p', 'ChIJ0c8kykH8YjkR7EQiNggKbq8', '', '2025-05-23 20:17:27'),
(37, 1, 'amharic', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748096152/logos/wx9bfuygszmkyzzlmtzg.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', '', '2025-05-24 14:15:53'),
(38, 1, 'amharic', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748096301/logos/ip9m7gzqjjufe2xf2uwx.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', '', '2025-05-24 14:18:22'),
(39, 1, 'afrikaans', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097201/logos/wb2sbq0qs6wb2dwmip2f.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097200/qrcodes/r231xcnzoyn16cgjzgjo.png', '2025-05-24 14:33:21'),
(40, 1, 'armenian', 'https://maps.google.com/?cid=2317652250215450619', 'apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097377/logos/ci4nqwupxlu3swp5p1zd.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097376/qrcodes/fzrlfwyfmvqxptsxox91.png', '2025-05-24 14:36:18'),
(41, 1, 'armenian', 'https://maps.google.com/?cid=2317652250215450619', 'apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097515/logos/fbz6rtwb7jlvjnhf6yg7.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748097514/qrcodes/inuyfkbnau3haaq0mq7a.png', '2025-05-24 14:38:36'),
(42, 2, 'dsdd', 'https://example.com/page', 'Scan Me!gfg', '', 'dd', 'indore', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', '', '2025-05-24 18:32:23'),
(43, 2, 'dsdd', 'https://example.com/page', 'Scan Me!gfg', '', 'null', 'indore', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', '', '2025-05-24 18:55:09'),
(44, 2, '', 'https://example.com/page', 'Scan Me!gfg', '', '3', '', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', '', '2025-05-24 18:57:26'),
(45, 2, 'Hindi', 'https://example.com/page', 'Scan Me!gfg', '', '3', 'gdfgdgdfg', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748113085/qrcodes/orcplfbpuj71w51agm8z.jpg', '2025-05-24 18:58:05'),
(46, 2, '', 'https://example.com/page', 'Scan Me!gfg', '', '3', '', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', '', '2025-05-24 19:01:09'),
(47, 2, '', 'https://example.com/page', 'Scan Me!gfg', '', '3', '', 'ChIJreE9nc3jYjkR9T9Yn-Y-r-s', '', '2025-05-26 05:11:09'),
(48, 1, 'basque', 'https://maps.google.com/?cid=2317652250215450619', 'Apna care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748239373/logos/dniruwnc0quvrxzxxrvk.jpg', '5', 'Indore ', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748239372/qrcodes/bwrk8qhgjod5z9nhiy6a.png', '2025-05-26 06:02:54'),
(49, 1, 'armenian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241235/logos/arm3rajrplhhkmalrtwq.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241234/qrcodes/zyyrughhii4ezxodzkhz.png', '2025-05-26 06:33:55'),
(50, 1, 'armenian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241609/logos/gmn93qyi9jsyjzvdoexx.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241609/qrcodes/mzzquczl7pt0h1iiq2j5.png', '2025-05-26 06:40:10'),
(51, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241876/logos/w1zw4nqko1o8q2g989rc.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748241875/qrcodes/nq0msdlnshitfrtvr3kp.png', '2025-05-26 06:44:36'),
(52, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748242013/logos/c5hefbee80c9mhegnb8l.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748242012/qrcodes/y3meqe0glubzqipq7khy.png', '2025-05-26 06:46:53'),
(53, 1, 'armenian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748243005/logos/ejvlxia55itioeohmoic.png', '4', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748243004/qrcodes/hihvvqabbmt6dspn5sbr.png', '2025-05-26 07:03:26'),
(54, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748243275/logos/a4cklwflxlh6obqj3j2u.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748243274/qrcodes/dcpd1sfskvwauvpcrgnq.png', '2025-05-26 07:07:55'),
(55, 1, 'albanian', 'https://maps.google.com/?cid=1147225604337442146', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748250630/logos/q6lutyosdzrqcoqstguj.png', '5', 'indoere', 'ChIJk3XdwIDRxUcRYh3E35vD6w8', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748250629/qrcodes/yvqh3wplghvprivf12gx.png', '2025-05-26 09:10:30'),
(56, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748254083/logos/lqdj7m14vnknbmaxfocu.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748254082/qrcodes/mmg7hdtuqdn2x89gkcyf.png', '2025-05-26 10:08:03'),
(57, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748254257/logos/dmlxuipz6yuigx53vsbo.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748254256/qrcodes/hhvv1wvhpi36kk3hgywn.png', '2025-05-26 10:10:57'),
(58, 1, 'albanian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748255093/logos/iagvuojf9no6jld3zheb.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748255092/qrcodes/okns7r0v8w3c2qvfw9yn.png', '2025-05-26 10:24:54'),
(59, 1, 'albanian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748255983/logos/ku0tol7wzbenfgnzkczf.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748255982/qrcodes/b9eijzl5xaobsykiisjh.png', '2025-05-26 10:39:43'),
(60, 1, 'afrikaans', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256176/logos/pvbrh8o6hdhcwveukdbc.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256175/qrcodes/eo941bdqjgl8n8gi901g.png', '2025-05-26 10:42:57'),
(61, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256421/logos/ccqcxmpp8h45uwruimvn.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256420/qrcodes/gjyk3svnzomqs9fc8xnu.png', '2025-05-26 10:47:01'),
(62, 1, 'basque', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256975/logos/vzbr6up45vln1hvegj54.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748256974/qrcodes/vo9yyvtkdsg80yo8sluo.png', '2025-05-26 10:56:15'),
(63, 1, 'arabic', 'https://maps.google.com/?cid=9502633190062572397', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748257343/logos/sck79d8b31kjoam5ti5c.png', '5', 'indoore', 'ChIJW1aPjpcLxkcRbUOEDIoi4IM', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748257342/qrcodes/ve13jdidoiqcuagqpc2z.png', '2025-05-26 11:02:23'),
(64, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748260288/logos/cwm7zcck1htmlieiry6p.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748260286/qrcodes/ufesn7pddxqu85lfteiv.png', '2025-05-26 11:51:28'),
(65, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261307/logos/qmlfyifc9jodvurzdrez.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261306/qrcodes/u88qxyhpx4x89dkgs4cj.png', '2025-05-26 12:08:28'),
(66, 1, 'armenian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261627/logos/ed92xz4lic3ncvgzqkdn.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261626/qrcodes/hqcofnlp3mbzv1qjupbw.png', '2025-05-26 12:13:48'),
(67, 1, 'armenian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261694/logos/fszp0z5s0jdeaheukvtz.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748261693/qrcodes/ifope6a2rmzdqoyzpxes.png', '2025-05-26 12:14:54'),
(68, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262031/logos/hhptedehb5jiy89qnoar.jpg', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262029/qrcodes/oyzgygvgb2k96fqxfyj8.png', '2025-05-26 12:20:31'),
(69, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262369/logos/g2qacvl3eb7q8t9gvnvt.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262368/qrcodes/f5gf9hvvnoq4py7bfijc.png', '2025-05-26 12:26:10'),
(70, 1, 'albanian', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262883/logos/ghpdaesvezvbir8oqxbn.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748262882/qrcodes/ylpdhtqojdb47xelqjxp.png', '2025-05-26 12:34:44'),
(71, 1, 'basque', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748263151/logos/iljvfrvomnbpjbx2psur.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748263150/qrcodes/mzrs1zkacxalfouyhlf0.png', '2025-05-26 12:39:11'),
(72, 1, 'amharic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748263805/logos/juhb3cg2693x5cgrxq4w.png', '5', 'indore', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748263805/qrcodes/qapnpgt0k6aibocr0y30.png', '2025-05-26 12:50:06'),
(73, 1, 'arabic', 'https://maps.google.com/?cid=17447033556040200240', 'REVIEW US!', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748264936/logos/bhzwo9ul4svilx5mizi0.png', '5', 'indore ', 'ChIJ1wsQtijjYjkRMLAYtJRQIPI', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748264935/qrcodes/y3xecigxz2m7jczxymzi.png', '2025-05-26 13:08:56'),
(74, 1, 'armenian', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748265671/logos/scrgwkig59zwarysbk8n.png', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748265670/qrcodes/d8kjpz1fniovcljddpkx.png', '2025-05-26 13:21:12'),
(78, 1, 'arabic', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324150/logos/ecagnone1rgldrrlpdph.svg', '5', 'Indore ', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324149/qrcodes/mtll26fhplugbdhvkixm.png', '2025-05-27 05:35:52'),
(79, 1, 'basque', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324265/logos/qotywa6jsrdnuzff6zku.png', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324264/qrcodes/j4aeqzigrxjtivgnhayc.png', '2025-05-27 05:37:46'),
(80, 1, 'basque', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324975/logos/kznjzgtsg5axmbw1qokx.svg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748324974/qrcodes/e4o3eocjan7rqnjsltrm.png', '2025-05-27 05:49:37'),
(81, 1, 'amharic', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748352647/logos/s4pinke0v8ttjyecjnwv.png', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748352646/qrcodes/nqfmfvxyixzwur3879qi.png', '2025-05-27 13:30:48'),
(82, 1, 'amharic', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748352863/logos/tg59cfuh8hnsyoqm3qk1.png', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748352862/qrcodes/w2grmd464ndmzjh6hrz9.png', '2025-05-27 13:34:24'),
(83, 1, 'afrikaans', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748354540/logos/jkukxp2pjrjxjdvpfmxz.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748354539/qrcodes/iopvlasudkdyeioiduve.png', '2025-05-27 14:02:21'),
(84, 1, 'armenian', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748354770/logos/d4ulnjmv2xnbh8xvd7m0.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748354769/qrcodes/xmxbg6gjn5xfwhqsphu8.png', '2025-05-27 14:06:11'),
(85, 9, 'albanian', 'https://maps.google.com/?cid=1818653225754291910', 'jhuuh', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748362711/logos/aoaqdygmsfyzfgqwwnc2.png', '5', 'indore', 'ChIJoWnqMNUdYzkRxu6zInknPRk', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748362710/qrcodes/pjefthbh2zavtcn2quaw.png', '2025-05-27 16:18:32'),
(86, 9, 'albanian', 'https://maps.google.com/?cid=9306830753464869826', 'hghg', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748362800/logos/rpe4sadedhdb6ejhilrp.png', '5', 'lig indore', 'ChIJO-SP2Xf9YjkRwmP0tEKBKIE', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748362798/qrcodes/cukfbzisynojw48bmigu.png', '2025-05-27 16:20:00'),
(90, 9, '', 'https://maps.google.com/?cid=10510744322626566380', '', '', '3', '', 'ChIJISdOSCzjYjkR7Dgc60Wq3ZE', '', '2025-05-27 17:39:48'),
(92, 9, 'Hindi', 'https://maps.google.com/?cid=10267616431577268909', 'Isks', '', 'null', 'Indore', 'ChIJTQp9oOH9YjkRrYIgjr7mfY4', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748367908/qrcodes/ixqmz6jjsenrvwt1ldi9.jpg', '2025-05-27 17:45:08'),
(93, 9, 'French', 'https://maps.google.com/?cid=10277956345871225932', 'Jsjjs', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748367992/logos/awdqpe1w1mk0sv2k8idr.jpg', 'null', 'Lig indore', 'ChIJARWPBs_9YjkRTFSgdNeioo4', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748367991/qrcodes/sf6audin3kpwso3tbnwo.jpg', '2025-05-27 17:46:33'),
(94, 9, 'French', 'https://maps.google.com/?cid=1980877017187167627', 'Vf', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748368096/logos/k1adrt1rwuloncogpqdm.jpg', '3', 'Indore', 'ChIJq6qqqib9YjkRiy0t6SZ9fRs', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748368095/qrcodes/kgfkkzs7wjoqcuk00ixo.jpg', '2025-05-27 17:48:17'),
(95, 1, 'albanian', 'https://maps.google.com/?cid=2317652250215450619', 'apna care ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748412332/logos/z4ykxrtw93lqe0mv3zgb.jpg', '5', 'indore', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1748412331/qrcodes/fqrlclmyt9cxgzsbc8hr.png', '2025-05-28 06:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `qr_code_id` int NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feedback` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `qr_code_id`, `description`, `feedback`, `rating`, `email`, `image`, `created_at`) VALUES
(1, 1, 1, 'Offer', 'Bad Food quality and staff behavior is so unprofessional ', '3', 'Rehan', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-09 12:40:59'),
(2, 1, 1, 'Offer', 'Amazing experience good staff behavior food quality also good ', '3', 'Rohit ', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-09 12:52:20'),
(3, 1, 3, NULL, 'achi service thi but location is out of area thi', '3', 'rehanmultanikiaantech@gmail.com', '', '2025-05-14 08:14:20'),
(4, 1, 1, 'Offer', 'bad food  quality but but your restaurant is located good place.', '2', 'rehanmultanikiaantech@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-14 09:09:40'),
(5, 1, 1, 'Offer', 'bad food  quality but but your restaurant is located good place.', '2', 'rehanmultanikiaantech@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-14 09:10:34'),
(6, 1, 1, 'Offer', 'bad food  quality but but your restaurant is located good place.', '2', 'rehanmultanikiaantech@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-14 09:11:46'),
(7, 1, 1, 'Offer', 'bad food  quality but but your restaurant is located good place.', '2', 'rehanmultanikiaantech@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-14 09:13:47'),
(8, 1, 15, 'offer', 'staff behavior is good but restaurant not located is good place ', '3', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296627/banner/fbwc9vfupu21tpn7bdqf.png', '2025-05-15 08:15:09'),
(9, 1, 15, 'offer', '', '5', 'rehamn@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296627/banner/fbwc9vfupu21tpn7bdqf.png', '2025-05-15 08:16:00'),
(10, 1, 15, 'offer', 'exellent services ', '5', 'rehamn@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747296627/banner/fbwc9vfupu21tpn7bdqf.png', '2025-05-15 08:16:36'),
(11, 1, 1, 'Offer', 'Good staff behavior food quality is alos good ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:35:40'),
(12, 1, 1, 'Offer', 'Good staff behavior food quality is alos good ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:36:19'),
(13, 1, 1, 'Good Product', 'I absolutely loved it!', '5', 'sdds@gmail.com', 'https://hrb5wx2v-3000.inc1.devtunnels.ms/api/getBannerDetails?user_id=1&qr_code_id=7', '2025-05-20 12:50:12'),
(14, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:09'),
(15, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:14'),
(16, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:14'),
(17, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:15'),
(18, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:15'),
(19, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:15'),
(20, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:15'),
(21, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:16'),
(22, 9, 88, '', 'Yshd', '4', 'hdhs', '', '2025-05-27 16:58:16'),
(23, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:12'),
(24, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:14'),
(25, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:14'),
(26, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:15'),
(27, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:15'),
(28, 9, 88, '', 'Jsjs', '4', 'nsksk', '', '2025-05-27 16:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `review_analysis`
--

CREATE TABLE `review_analysis` (
  `id` bigint UNSIGNED NOT NULL,
  `problems` text COLLATE utf8mb4_general_ci,
  `sentiment` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `summary` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `emotional_tone` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `solutions` text COLLATE utf8mb4_general_ci,
  `user_id` int DEFAULT NULL,
  `review_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `qr_code_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_analysis`
--

INSERT INTO `review_analysis` (`id`, `problems`, `sentiment`, `summary`, `rating`, `email`, `emotional_tone`, `reply`, `solutions`, `user_id`, `review_id`, `qr_code_id`, `created_at`, `updated_at`) VALUES
(1, '[\"Bad food quality\",\"Unprofessional staff behavior\"]', 'negative', 'Customer was unhappy with the food quality and staff behavior, which was perceived as unprofessional. We will take steps to improve these areas.', '3', '', 'angry', 'Dear valued customer, we apologize for the disappointing experience you had at our restaurant. We take all feedback seriously and will take immediate action to address the issues you\'ve raised. We will re-train our chefs to improve food quality and provide our staff with customer service training to enhance their professionalism. Thank you for your feedback.', '[\"Improve food quality by re-training chefs and updating recipes\",\"Provide staff with customer service training to enhance their professionalism\"]', 1, '1', 1, '2025-05-09 12:41:07', '2025-05-09 12:41:07'),
(2, '[]', 'positive', 'Customer had a great experience with good staff behavior and food quality, no complaints or suggestions for improvement.', '3', '', 'satisfied', 'Thank you for sharing your positive experience with us! We\'re glad to hear that our staff behavior and food quality met your expectations. We\'ll continue to strive for excellence in all aspects of our service.', '[]', 1, '2', 1, '2025-05-09 12:52:31', '2025-05-09 12:52:31'),
(3, '[\"restaurant location\"]', 'negative', 'Customer is generally satisfied with the staff but has concerns about the restaurant\'s location, which is affecting their overall experience.', '3', 'rehan@gmail.com', 'neutral', 'Thank you for your feedback. We\'re glad to hear that our staff behavior is meeting your expectations. We\'ll take your suggestion about our location into consideration and explore ways to make our restaurant more appealing to customers.', '[\"Consider relocating the restaurant to a more accessible and desirable location\",\"Highlight the restaurant\'s unique features and attractions to make up for the less-than-ideal location\"]', 1, '8', 15, '2025-05-15 08:15:12', '2025-05-15 08:15:12'),
(4, '[]', 'positive', 'Dit is een positieve review met geen specifieke problemen of suggesties voor verbetering.', '5', 'rehamn@gmail.com', 'satisfied', 'Dank je wel voor je positieve feedback! We zijn blij dat je tevreden bent met je bezoek aan ons restaurant. We kijken ernaar uit om je weer te mogen bedienen in de toekomst.', '[]', 1, '9', 15, '2025-05-15 08:16:04', '2025-05-15 08:16:04'),
(5, '[]', 'positive', 'De klant is tevreden met de diensten en laat een positieve review achter.', '5', 'rehamn@gmail.com', 'satisfied', 'Dank je wel voor je positieve review! We zijn blij dat je tevreden bent met onze diensten. Kom gerust terug en geniet van een heerlijke maaltijd bij ons!', '[]', 1, '10', 15, '2025-05-15 08:16:41', '2025-05-15 08:16:41'),
(6, '[]', 'positive', 'Customer had a positive experience with good staff behavior and food quality.', '4', 'rehan@gmail.com', 'satisfied', 'Thank you for your kind words! We\'re glad to hear that you enjoyed your experience with us. We\'ll continue to strive for excellence in both staff behavior and food quality.', '[]', 1, '11', 1, '2025-05-17 06:35:42', '2025-05-17 06:35:42'),
(7, '[]', 'positive', 'Customer had a positive experience with good staff behavior and food quality.', '4', 'rehan@gmail.com', 'satisfied', 'Thank you for your kind words! We\'re glad to hear that you enjoyed your experience with us. We\'ll continue to strive for excellence in both staff behavior and food quality.', '[]', 1, '12', 1, '2025-05-17 06:36:21', '2025-05-17 06:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `review_customization`
--

CREATE TABLE `review_customization` (
  `id` int NOT NULL,
  `rating_count` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_customization`
--

INSERT INTO `review_customization` (`id`, `rating_count`, `created_at`) VALUES
(1, '10', '2025-05-20 12:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `review_survey`
--

CREATE TABLE `review_survey` (
  `id` int NOT NULL,
  `survey_review` text COLLATE utf8mb4_general_ci,
  `user_id` int DEFAULT NULL,
  `qr_code_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_survey`
--

INSERT INTO `review_survey` (`id`, `survey_review`, `user_id`, `qr_code_id`) VALUES
(1, '[\"Company location ?\",\"Staff behavior \"]', 1, 1),
(2, '[\"why didn\'t you like the food?\"]', 1, 2),
(3, '[\"Is location good ?\",\"desert quality?\",\"staff behavior?\"]', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_id` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `image` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `googleBusinessProfile` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `group_id`, `status`, `image`, `googleBusinessProfile`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2b$10$B6KI7zGMh28mXjAFuVlCJOewREfMKSctLYI1B7y2cgnyu9pUIK6PK', '0000000000', '2', '1', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747679767/qdkodj80lrftjzghngzz.jpg', '', '2025-04-22 07:03:03', '2025-05-19 18:36:08'),
(2, 'John Doe', 'john@example.com', '$2b$10$XhgxfFsO5ILMTQ3jO4MfheiQZytZAfjFvNMfp8l7LTaOm2FcOe0o.', '9876543210', '2', '1', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747743246/user_images/kij0q14fjq4vdhuzbo7r.jpg', '0', '2025-05-20 12:14:07', '2025-05-20 12:17:59'),
(3, 'John Doe', 'hello@gmail.com', '$2b$10$cmFQm.Lr6x8wl0S8WaSFlOfRv2v.neEcIx0YX0m3RvzvJG/Jwolf.', '9876543210', '2', '0', '', '0', '2025-05-20 16:13:02', '2025-05-20 16:13:02'),
(4, 'John Doe', 'hello1@gmail.com', '$2b$10$p1QxNSwZHSEW7yhFwen2l.EECTr5YFOvOZS/lDqgwrH8ycE62i7i.', '9876543210', '2', '0', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747757967/user_images/zsihjbrdc0kdekwzl4pt.png', '0', '2025-05-20 16:19:27', '2025-05-20 16:19:27'),
(5, 'Svhs', 'Hfh@gmail.com', '$2b$10$R8vB2frUvryJh5xjPHD4o.S.zqrXSmil2iE0Eo7IO.zUbGB74tEvK', '4666464646', '2', '0', '', '0', '2025-05-20 17:25:46', '2025-05-20 17:25:46'),
(6, 'gdsg', 'hghf@gmail.com', '$2b$10$BbPGcqDDhB9zvAG84YlFLuah87Ro2Qf9MYT7zrYB/Yz5cNOrNhOGK', '2365635635', '2', '0', '', '0', '2025-05-21 18:01:52', '2025-05-21 18:01:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_business`
--
ALTER TABLE `google_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_analysis`
--
ALTER TABLE `review_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_customization`
--
ALTER TABLE `review_customization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_survey`
--
ALTER TABLE `review_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `google_business`
--
ALTER TABLE `google_business`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `review_analysis`
--
ALTER TABLE `review_analysis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review_customization`
--
ALTER TABLE `review_customization`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_survey`
--
ALTER TABLE `review_survey`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
