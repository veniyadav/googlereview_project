-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 11:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `google-review`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qr_code_id` int(11) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `user_id`, `qr_code_id`, `image`, `created_at`) VALUES
(1, 1, 1, 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 05:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `business_name`, `business_type`, `first_name`, `last_name`, `location`, `email`, `password`, `status`, `image`) VALUES
(1, 'ABC Company', 'uytguyfg', 'Jhon', 'doe', 'test', 'company@gmail.com', '$2b$10$7snkG6McPMPONuv3rVty8.xyNrXfssuXFiLqFP9SBjp8yTyP.h6r', '1', 'https://i.ibb.co/G6qJtrz/download-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `google_business`
--

CREATE TABLE `google_business` (
  `id` int(11) NOT NULL,
  `google_business_id` varchar(255) NOT NULL,
  `qr_code_url` text DEFAULT NULL,
  `banner_url` text NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
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
  `id` int(11) NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `month_duration` int(11) NOT NULL,
  `num_establishments` int(11) DEFAULT 1,
  `free_trial_days` int(11) DEFAULT 0,
  `plan_details` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_name`, `month_duration`, `num_establishments`, `free_trial_days`, `plan_details`, `price`, `created_at`, `updated_at`, `order_id`) VALUES
(6, 'Basic Plan', 3, 5, 10, 'Basic features with moderate limits', 199.99, '2025-04-08 07:24:01', '2025-04-10 08:26:40', '6D88E6900947636DBAE2778E'),
(7, 'Growth Plan', 9, 20, 14, 'Designed for growing businesses with extra flexibility', 799.00, '2025-04-08 07:24:21', '2025-04-08 11:01:47', '98720869A3F62490190DD986'),
(8, 'Pro Plan', 6, 10, 14, 'Includes everything in the basic plan plus analytics', 499.99, '2025-04-08 07:24:41', '2025-04-08 07:24:41', '35FF8189E88E068D00E4589B');

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `business_rating` varchar(255) NOT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `qr_color` varchar(255) NOT NULL,
  `offer` varchar(500) NOT NULL,
  `place_id` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`id`, `user_id`, `language`, `url`, `headline`, `logo`, `business_rating`, `business_type`, `location`, `footer`, `size`, `qr_color`, `offer`, `place_id`, `image`, `created_at`) VALUES
(1, 1, 'english', 'https://maps.google.com/?cid=2317652250215450619', 'Apna health care', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461536/logos/gkugcfnqyuz5xaizc9nz.png', '5', NULL, 'indore', 'footer', '300', '#000000', 'offer', 'ChIJ438vDeTjYjkR-wf6LnH0KSA', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461535/qrcodes/nq9d8ncw9dvrsgz9qczm.jpg', '2025-05-17 05:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qr_code_id` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `rating` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `qr_code_id`, `description`, `feedback`, `rating`, `email`, `image`, `created_at`) VALUES
(1, 1, 1, 'offer', 'poor resturant bad location ', '3', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 05:59:43'),
(2, 1, 1, 'Offer', 'Good staff behavior food quality is alos good ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:37:00'),
(3, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:37:55'),
(4, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:53:16'),
(5, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 06:54:39'),
(6, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 07:00:00'),
(7, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 07:00:42'),
(8, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 07:00:53'),
(9, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 07:01:29'),
(10, 1, 1, 'Offer', 'Good staff behavior food quality is not good you can improve ', '4', 'rehan@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746792426/banner/b5jcdtwnyny8qirrsmas.png', '2025-05-17 07:02:09'),
(11, 1, 1, 'offer', 'vbyfgn yhnjyhmyhmu m', '4', 'eljnen@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:03:05'),
(12, 1, 1, 'offer', 'vbyfgn yhnjyhmyhmu m', '4', 'eljnen@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:03:46'),
(13, 1, 1, 'offer', 'ewfrbbrbrb', '3', 'test@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:04:27'),
(14, 1, 1, 'offer', 'ewfrbbrbrb', '3', 'test@gmail.com', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:05:10'),
(15, 1, 1, 'offer', 'rbrbrbrfb', '4', 'efvrgb', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:06:01'),
(16, 1, 1, 'offer', 'vrvrvrv', '3', 'edvrdvr', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:06:20'),
(17, 1, 1, 'offer', 'vrvrvrv', '3', 'edvrdvr', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:08:45'),
(18, 1, 1, 'offer', 'vrvrvrv', '3', 'edvrdvr', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:09:39'),
(19, 1, 1, 'offer', 'vrvrvrv', '5', 'edvrdvr', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1747461545/banner/jmianiv2g5autqhbv7g2.png', '2025-05-17 07:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `review_analysis`
--

CREATE TABLE `review_analysis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `problems` text DEFAULT NULL,
  `sentiment` varchar(50) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `emotional_tone` varchar(100) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `solutions` text DEFAULT NULL,
  `rating` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review_id` varchar(255) NOT NULL DEFAULT '1',
  `qr_code_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_analysis`
--

INSERT INTO `review_analysis` (`id`, `problems`, `sentiment`, `email`, `summary`, `emotional_tone`, `reply`, `solutions`, `rating`, `user_id`, `review_id`, `qr_code_id`, `created_at`, `updated_at`) VALUES
(1, '[\"bad location\"]', 'negative', 'rehan@gmail.com', 'Customer was dissatisfied with the restaurant\'s location, which negatively impacted their experience. We\'ll look into relocating or highlighting the unique aspects of our current location to improve customer satisfaction.', 'disappointed', 'Thank you for sharing your feedback with us. We apologize for the inconvenience caused by our location. We\'ll take your suggestion into consideration and explore ways to make our restaurant more accessible to our customers.', '[\"Consider relocating to a more accessible and convenient location\",\"Highlight the unique aspects of the current location to attract customers who value it\"]', '3', 1, '1', 1, '2025-04-17 05:59:44', '2025-05-17 05:59:44'),
(2, '[]', 'positive', 'rehan@gmail.com', 'Customer had a positive experience with good staff behavior and food quality.', 'satisfied', 'Thank you for your kind words! We\'re glad to hear that you enjoyed your experience with us. We\'ll continue to strive for excellence in both staff behavior and food quality.', '[]', '4', 1, '2', 1, '2025-05-17 06:37:01', '2025-05-17 06:37:01'),
(3, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer appreciated the staff behavior but was disappointed with the food quality, suggesting improvements to enhance the dining experience.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. Your feedback is valuable to us.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '3', 1, '2025-05-17 06:37:57', '2025-05-17 06:37:57'),
(4, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer is satisfied with the staff but unhappy with the food quality, suggesting improvements to be made.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. We appreciate your loyalty and hope to serve you better in the future.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '4', 1, '2025-05-17 06:53:18', '2025-05-17 06:53:18'),
(5, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer is satisfied with the staff behavior but unhappy with the food quality, suggesting improvements to be made.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. We appreciate your loyalty and hope to serve you better in the future.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '5', 1, '2025-05-17 06:54:41', '2025-05-17 06:54:41'),
(6, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer is satisfied with the staff but unhappy with the food quality, suggesting improvements to be made.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. We appreciate your loyalty and hope to serve you better in the future.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '8', 1, '2025-05-17 07:00:55', '2025-05-17 07:00:55'),
(7, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer is satisfied with the staff behavior but unhappy with the food quality, suggesting improvements to be made.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. We appreciate your loyalty and hope to serve you better in the future.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '9', 1, '2025-05-17 07:01:30', '2025-05-17 07:01:30'),
(8, '[\"food quality is not good\"]', 'negative', 'rehan@gmail.com', 'Customer is satisfied with the staff but unhappy with the food quality, suggesting improvements to be made.', 'satisfied (but with a complaint)', 'Thank you for your feedback. We apologize for the subpar food quality and will take your suggestions into consideration to improve our dishes. We appreciate your loyalty and hope to serve you better in the future.', '[\"Improve the quality of food by using fresh ingredients, training the chefs, and implementing quality control measures.\",\"Consider customer feedback and make necessary changes to the menu or cooking methods.\"]', '4', 1, '10', 1, '2025-05-17 07:02:11', '2025-05-17 07:02:11'),
(9, NULL, NULL, 'eljnen@gmail.com', NULL, NULL, NULL, NULL, '4', 1, '11', 1, '2025-05-17 07:03:06', '2025-05-17 07:03:06'),
(10, NULL, NULL, 'eljnen@gmail.com', NULL, NULL, NULL, NULL, '4', 1, '12', 1, '2025-05-17 07:03:48', '2025-05-17 07:03:48'),
(11, '[\"Unclear or incoherent review\"]', 'negative', 'test@gmail.com', 'Review is unclear and requires clarification.', 'confused', 'Sorry to hear that you\'re having trouble with your review. Could you please provide more context or clarify what you\'re trying to say? We\'ll do our best to help.', '[\"Request for clarification or more information\"]', '3', 1, '13', 1, '2025-05-17 07:04:29', '2025-05-17 07:04:29'),
(12, '[\"Unclear or incoherent review\"]', 'negative', 'test@gmail.com', 'Review is unclear and requires clarification.', 'confused', 'Sorry to hear that you\'re having trouble with your review. Could you please provide more context or clarify what you\'re trying to say? We\'ll do our best to help.', '[\"Request for clarification or more information\"]', '3', 1, '14', 1, '2025-05-17 07:05:12', '2025-05-17 07:05:12'),
(13, '[\"Unclear or incoherent review\"]', 'negative', 'efvrgb', 'The review is unclear and incoherent, making it difficult to provide a meaningful response.', 'confused', 'Sorry to hear that you\'re having trouble with your review. Could you please provide more context or clarify what you\'re trying to say? We\'ll do our best to help.', '[\"Request for clarification or more information\"]', '4', 1, '15', 1, '2025-05-17 07:06:02', '2025-05-17 07:06:02'),
(14, '[\"Unclear or missing content in the review\"]', 'negative', 'edvrdvr', 'The customer\'s review is unclear and lacks specific details, making it difficult to identify the issue and provide a suitable response.', 'confused', 'Sorry to hear that your review is unclear. Could you please provide more details about your experience at our restaurant/hotel?', '[\"Request the customer to provide more details about their experience\"]', '3', 1, '16', 1, '2025-05-17 07:06:22', '2025-05-17 07:06:22'),
(15, '[\"Unclear or missing content in the review\"]', 'negative', 'edvrdvr', 'The customer\'s review is unclear and lacks specific details about their experience.', 'confused', 'Sorry to hear that your review is unclear. Could you please provide more details about your experience at our restaurant/hotel?', '[\"Request the customer to provide more details about their experience\"]', '3', 1, '18', 1, '2025-05-17 07:09:40', '2025-05-17 07:09:40'),
(16, '[]', 'positive', 'edvrdvr', 'Customer expressed gratitude and satisfaction with their experience at the restaurant.', 'satisfied', 'Thank you so much for your kind words! We\'re thrilled to hear that you had a great experience at our restaurant. We\'re committed to providing the best service and food to our customers, and it\'s wonderful to know that we\'re meeting our goals. We look forward to serving you again soon!', '[]', '5', 1, '19', 1, '2025-05-17 07:09:50', '2025-05-17 07:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `review_customization`
--

CREATE TABLE `review_customization` (
  `id` int(11) NOT NULL,
  `rating_count` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_survey`
--

CREATE TABLE `review_survey` (
  `id` int(11) NOT NULL,
  `survey_review` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qr_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `group_id` varchar(15) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(500) NOT NULL,
  `googleBusinessProfile` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `group_id`, `status`, `image`, `googleBusinessProfile`, `created_at`, `updated_at`) VALUES
(1, 'Health care', 'admin@gmail.com', '$2b$10$qWZ/bX3.xipHiUNznT67o.i0LNhdEc/cW7J5UttD/GD8Kww0qJS5.', '0000000000', '2', '1', 'https://res.cloudinary.com/dkqcqrrbp/image/upload/v1746865926/m7zzqqvhrrea8ynsinev.png', '', '2025-04-22 07:03:03', '2025-05-10 08:32:06');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `google_business`
--
ALTER TABLE `google_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `review_analysis`
--
ALTER TABLE `review_analysis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `review_customization`
--
ALTER TABLE `review_customization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_survey`
--
ALTER TABLE `review_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
