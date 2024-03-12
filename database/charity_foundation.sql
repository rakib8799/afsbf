-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 12:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity_foundation`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `project_id`, `comment`, `user_name`, `user_email`, `user_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Good Project', 'Mehedi Khan Rakib', 'mkrakib328@gmail.com', '65efb7f73e761.jpeg', '2024-03-12 02:03:35', '2024-03-12 02:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_gallery` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `details`, `image`, `image_gallery`, `created_at`, `updated_at`) VALUES
(1, 'Education’s light is for all', 'We are conducting full free modern education for poor children. We are encouraging and bringing poor children for modern education. A large number of different age’s group children are getting free English and IT learning programme. We also visit schools, poor families in rural area to help their distressed children in education. We also provide basic needs for education.', '1.jpg', '[\"1.webp\",\"2.webp\",\"3.webp\",\"4.webp\"]', '2024-03-11 16:32:40', '2024-03-11 16:32:40'),
(2, 'Food program for street and floating family’s children', 'We visit slums, railway stations and try to help them with food packages, warm cloths. We give them financial help to continue their basic food. We try to follow up these ultra-poor babies.', '2.jpg', '[\"5.webp\",\"6.webp\"]', '2024-03-11 16:35:54', '2024-03-11 16:35:54'),
(3, 'Qurban for needy', 'During Eid_Al-Adha festival we should not forget the poor and needy in the world who experience suffering hunger and poverty due to conflict and natural disasters. Your Qurban’s meat is distribute to those needy who wait for this day for whole year We work voluntary, there is no admin cost.', '3.jpg', '', '2024-03-11 16:37:52', '2024-03-11 16:37:52'),
(4, 'Rural Women Empowerment', 'In Bangladesh, opportunity for poor women is very rare. We work with volunteers to help educate them to understand what they can do to be more independent and contribute to the family. We create job in Jute mils and garments to help them to get back in to jobs.', '4.jpg', '[\"7.webp\",\"8.webp\",\"9.webp\",\"10.webp\"]', '2024-03-11 16:41:15', '2024-03-11 16:41:15'),
(5, 'Sponsor an Orphan', 'As part of our program, we organise accommodation, food and education for orphan child. We are proud that we are able to give them the opportunity every child should have. You can be the next person to sponsor an orphan.\r\n\r\nSponsor an Orphan Just $ 20 /Month. No Admin cost \r\nSponsor an orphan for just $ 20 a month. Orphan sponsorship involves providing adequate income for the orphan to secure necessities of food, clothing, education, and health care. Giving them a better future! You have the right to contact regularly with sponsored orphan or ultra-poor children. We work voluntarily, there is no Admin cost like other charities. With trust, 100 % goes to beneficiary children.', '5.jpg', '[\"11.webp\",\"12.webp\",\"13.webp\",\"14.webp\",\"15.webp\",\"16.webp\"]', '2024-03-11 16:44:00', '2024-03-11 16:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payment`
--

CREATE TABLE `stripe_payment` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stripe_payment`
--

INSERT INTO `stripe_payment` (`id`, `fullname`, `email`, `title`, `currency`, `amount`, `transaction_id`, `payment_status`, `created_at`) VALUES
(8, 'MK Rakib', 'mkrakib328@gmail.com', 'Quick Donation-pi_3OtdyWGR1Myktj2w0f94352f', 'usd', 500.00, 'pi_3OtdyWGR1Myktj2w0f94352f', 'succeeded', '2024-03-13 04:39:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payment`
--
ALTER TABLE `stripe_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stripe_payment`
--
ALTER TABLE `stripe_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
