-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2025 at 05:43 PM
-- Server version: 8.0.41-0ubuntu0.22.04.1
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_categories`
--

CREATE TABLE `about_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_categories`
--

INSERT INTO `about_categories` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'History', 'history', 1, '2024-09-23 07:10:22', '2024-09-23 07:10:22'),
(3, 'Who we are', 'who-we-are', 1, '2024-09-23 07:10:29', '2024-09-23 07:10:29'),
(4, 'Income', 'income', 1, '2024-09-23 09:10:08', '2024-09-23 09:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `category_id`, `heading`, `text`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 2, 'History Behind Us', '<p><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">In a quiet village, surrounded by green fields, Arfan Familys Smiling Baby Foundation started on November 15, 2015. The story behind this organization is touching and deeply emotional, connected to its founder, M.A. Arfan.</span><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">Not long before,&nbsp; Arfan and his wife were excited to become parents. They welcomed two beautiful baby girls into their lives. But their joy quickly turned to sorrow. Due to neglect at a government hospital and lack of money for proper care, both daughters passed away&mdash;one after nine days and the other after thirty days. The pain of losing them was unimaginable, leaving their hearts broken.</span><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">From this deep sadness, a new determination arose. MA. Arfan promised himself that no other parent should have to suffer like he did. He decided to help orphans and underprivileged children, bringing smiles and hope to their lives. This led to the creation of the \"Arfan Familys Smiling Baby Foundation.\"</span><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">The foundation began with just 14 children and two volunteers. With support from the local community and dedicated volunteers, it started to grow. M.A. Arfan&rsquo;s father, the late&nbsp; Abdur Rashid, provided guidance and encouragement, helping the organization succeed.</span><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">In 2016, the foundation officially became a registered non-profit organization with recognition from the Australian government. The small tin shed transformed into a modern three-story building, complete with classrooms, a library, and computer facilities.</span><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><br style=\"color: #0000ff; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: \'times new roman\', serif; font-size: small; background-color: #ffffff;\">Today, through MA. Arfan&rsquo;s hard work and love, the foundation has made a difference in the lives of many children. The memory of his daughters inspires him, as the Arfan Family\'s Smiling Baby Foundation continues to bring hope and a brighter future to countless children in need.</span></p>', 'about_photo-1727097211.jpg', 1, '2024-09-23 07:13:31', '2024-09-27 21:28:55'),
(5, 3, 'Who we are', '<p>Founded in 2016, the Arfan Family\'s Smiling Baby Foundation is dedicated to uplifting orphaned and ultra-poor children in Bangladesh by providing food, education, and essential support. Focused on rural and semi-urban communities affected by domestic violence, abandonment, and loss, the foundation aims to protect the most vulnerable. Through its work, the organization offers relief and hope to those in desperate need, empowering children to build brighter futures. With a focus on care and development, the foundation continues its mission of transforming lives.</p>', 'about_photo-1727097396.jpg', 1, '2024-09-23 07:16:36', '2024-09-23 09:22:20'),
(6, 4, 'Our Sustainable Income', '<p>We empowered rural women to produce eco-friendly jute bags, turning a simple idea into a global initiative. Our jute bags are highly appreciated for their durability and sustainability and have gained a large popularity in both Bangladesh and internationally, especially in Australia. For their quality and environmental benefits our bags are highly praised, and now they are being showcased in international trade fairs and exported to various countries. Unlike typical charities, our organization&rsquo;s income generation relies entirely on these jute bag sales, funding our mission to support children and women in need.</p>', 'about_photo-1727104357.jpg', 1, '2024-09-23 09:12:37', '2024-09-23 09:12:37'),
(12, 3, 'Welcome to AFSBF', '<p>dsghdfhfdjhnddgfdg</p>', 'about_photo-1727494017.jpg', 1, '2024-09-27 07:31:39', '2024-09-27 21:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$ON9leP5qhBQGZ2oj0hE.POr3ju4GcX/QanIO.cEGQCIbTsVBid6TO', '1726833191.jpg', NULL, '2024-09-09 13:27:33', '2024-09-20 06:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `appeals`
--

CREATE TABLE `appeals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appeals`
--

INSERT INTO `appeals` (`id`, `name`, `slug`, `description`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Specialized Children Hospital', 'specialized-children-hospital', '<p class=\"mb-4\" style=\"box-sizing: border-box; padding: 0px; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff; margin: 0px 0px 1.5rem !important 0px;\">Thousand of unprivileged, orphan, distressed, victim and street children will get full-free specialized medical treatment.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\"><span class=\"fw-bold\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700 !important;\">Place:</span>&nbsp;Balipara Road, Darirampur, Trishal, Mymensingh-2220, Bangladesh.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\"><span class=\"fw-bold\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700 !important;\">Beneficiaries:</span>&nbsp;Unprivileged, Orphan, Distressed, Victim and Street Children.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\"><span class=\"fw-bold\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700 !important;\">Deliverable:</span>&nbsp;Full Free Specialized Medical Treatment.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\"><span class=\"fw-bold\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700 !important;\">Estimated Budget:</span>&nbsp;AUD 3.25K</p>', 'appeal_photo-1726328557.png', 1, '2024-09-14 09:42:37', '2024-09-25 12:24:40'),
(2, 'Lorem ipsum dolor sit - 1', 'lorem-ipsum-dolor-sit-1', '<p>Tempor erat elitr rebum at dita Diam dolor diam ipsum sit diam amet diam eos tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos</p>', 'appeal_photo-1726328871.jpg', 1, '2024-09-14 09:47:51', '2024-09-14 09:48:22'),
(3, 'Lorem ipsum dolor sit - 2', 'lorem-ipsum-dolor-sit-2', '<p>Tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos</p>', 'appeal_photo-1726328894.jpg', 1, '2024-09-14 09:48:14', '2024-09-14 09:48:14'),
(4, 'Lorem ipsum dolor sit - 3', 'lorem-ipsum-dolor-sit-3', '<p>Tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos</p>', 'appeal_photo-1726328924.jpg', 1, '2024-09-14 09:48:44', '2024-09-14 09:48:44'),
(5, 'Lorem ipsum dolor sit - 4', 'lorem-ipsum-dolor-sit-4', '<p>Tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos tempor erat elitr rebum at dita Diam&nbsp;dolor diam ipsum sit diam amet diam eos</p>', 'appeal_photo-1726328945.jpg', 1, '2024-09-14 09:49:05', '2024-09-14 09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `appeal_photos`
--

CREATE TABLE `appeal_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `appeal_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appeal_photos`
--

INSERT INTO `appeal_photos` (`id`, `appeal_id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'appeal_photo-1727379567-66f5b86fca9a4.png', 1, '2024-09-26 13:39:27', '2024-09-26 13:39:27'),
(2, 1, 'appeal_photo-1727379586-66f5b882bec2d.png', 1, '2024-09-26 13:39:46', '2024-09-26 13:39:46'),
(3, 1, 'appeal_photo-1727379586-66f5b882bee17.png', 1, '2024-09-26 13:39:47', '2024-09-26 13:39:47'),
(4, 2, 'appeal_photo-1727419802-66f6559a02e92.png', 1, '2024-09-27 00:50:02', '2024-09-27 00:50:02'),
(5, 2, 'appeal_photo-1727419802-66f6559a12197.png', 1, '2024-09-27 00:50:02', '2024-09-27 00:50:02'),
(6, 2, 'appeal_photo-1727419886-66f655ee3dce7.txt', 1, '2024-09-27 00:51:26', '2024-09-27 00:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `appeal_videos`
--

CREATE TABLE `appeal_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `appeal_id` bigint UNSIGNED NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appeal_videos`
--

INSERT INTO `appeal_videos` (`id`, `appeal_id`, `video`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'w0_DuxhL0ug', 1, '2024-09-26 13:36:06', '2024-09-26 13:36:06'),
(2, 1, 'w0_DuxhL0ug', 1, '2024-09-26 13:37:34', '2024-09-26 13:37:34'),
(3, 1, 'w0_DuxhL0ug', 1, '2024-09-26 13:37:34', '2024-09-26 13:37:34'),
(4, 2, 'w0_DuxhL0ug', 1, '2024-09-27 00:51:55', '2024-09-27 00:51:55'),
(5, 2, 'w0_DuxhL0ug', 1, '2024-09-27 00:51:55', '2024-09-27 00:51:55'),
(6, 2, 'fdhf', 1, '2024-09-27 00:53:44', '2024-09-27 00:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `causes`
--

CREATE TABLE `causes` (
  `id` bigint UNSIGNED NOT NULL,
  `orphan_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal` int DEFAULT NULL,
  `raised` int DEFAULT NULL,
  `is_featured` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `orphan_id`, `name`, `slug`, `short_description`, `description`, `featured_photo`, `goal`, `raised`, `is_featured`, `created_at`, `updated_at`) VALUES
(3, 6, 'Ruhul Amin', 'ruhul-amin', 'In Wikipedia\'s early days, editors added Template:Orphan to mark both orphaned articles and articles with relatively few incoming links. The use of the template has since been restricted. It is now recommended to only place the {{Orphan}} tag if the article has zero incoming links from other articles. The template is only shown temporarily, under certain circumstances.', '<p>In Wikipedia\'s early days, editors added Template:Orphan to mark both orphaned articles and articles with relatively few incoming links. The use of the template has since been restricted. It is now recommended to only place the {{Orphan}} tag if the article has zero incoming links from other articles. The template is only shown temporarily, under certain circumstances. Adding this template to any article is not strictly necessary, and many editors prefer to add it only when they believe that the article should be linked from many others.</p>\r\n<p>&nbsp;</p>\r\n<p>A single, relevant incoming link is sufficient to remove the tag. Three or more incoming links will help ensure the article is reachable by readers.[1] Editors may also remove the tag from any article if they believe that de-orphaning is unlikely to be successful, or if they have attempted to provide incoming links. See &sect; What if I can\'t de-orphan it? below for more information.</p>\r\n<p>&nbsp;</p>\r\n<p>The following pages do not count as incoming links:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Disambiguation pages</strong></p>\r\n<p>Any article in mainspace that is linked only in a hatnote</p>\r\n<p>Redirects and Soft redirects</p>\r\n<p>&nbsp; &nbsp; ...except that incoming links to the redirects do count</p>\r\n<p><strong>Discussion pages of articles</strong></p>\r\n<p>Wikipedia pages outside of article space</p>\r\n<p>The following pages do count as incoming links:</p>\r\n<p>&nbsp;</p>\r\n<p>Any article in mainspace except those specifically excluded above (This includes links only present in collapsed navboxes.)</p>\r\n<p>List of... articles</p>\r\n<p>Set indexes</p>\r\n<p>On redirects</p>\r\n<p>Neither soft nor hard redirects should normally be tagged as orphans.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>On disambiguation pages</strong></p>\r\n<p>Disambiguation pages themselves often should be orphaned. The only mainspace pages that should link to them are other disambiguation pages, and articles with hatnote links to them (via templates such as {{Other uses}}). Please do not place the {{Orphan}} template on disambiguation pages. See also Wikipedia:Disambiguation &sect; Links to disambiguation pages.</p>', 'orphan_photo-1727495404.jpg', 100, 50, 'yes', '2024-09-27 21:50:20', '2024-09-27 23:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `cause_donations`
--

CREATE TABLE `cause_donations` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_donations`
--

INSERT INTO `cause_donations` (`id`, `cause_id`, `user_id`, `price`, `currency`, `donation_type`, `payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '50', 'usd', 'one_time', 'cs_test_a1vsgBHwLKedfDQS3xkuvPjG68PGAQT48HxxmnEgZW5MM5cN274CYUio4l', 'Stripe', 'COMPLETED', '2024-09-27 23:36:01', '2024-09-27 23:36:01'),
(2, NULL, 5, '100', 'usd', 'monthly', 'cs_test_a15IgRWWzO00IuRiUiQ5Zn8GMd07Fgl47uPjwIGk7SYQ4m1Q8vIdzz6C8L', 'Stripe', 'COMPLETED', '2024-09-27 23:41:06', '2024-09-27 23:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `cause_faqs`
--

CREATE TABLE `cause_faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` int NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cause_photos`
--

CREATE TABLE `cause_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_photos`
--

INSERT INTO `cause_photos` (`id`, `cause_id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'cause_photo-1727495531-66f77d6b19222.jpg', 1, '2024-09-27 21:52:11', '2024-09-27 21:52:11'),
(2, 3, 'cause_photo-1727495531-66f77d6b195ba.jpg', 1, '2024-09-27 21:52:11', '2024-09-27 21:52:11'),
(3, 3, 'cause_photo-1727495531-66f77d6b19762.jpg', 1, '2024-09-27 21:52:11', '2024-09-27 21:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `cause_videos`
--

CREATE TABLE `cause_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_id` bigint UNSIGNED NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_videos`
--

INSERT INTO `cause_videos` (`id`, `cause_id`, `video`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'w0_DuxhL0ug', 1, '2024-09-27 21:52:34', '2024-09-27 21:52:34'),
(2, 3, 'w0_DuxhL0ug', 1, '2024-09-27 21:52:34', '2024-09-27 21:52:34'),
(3, 3, 'w0_DuxhL0ug', 1, '2024-09-27 21:52:34', '2024-09-27 21:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Good One', 1, 'MKR', 'mkrakib007@gmail.com', 'Active', '2024-09-20 11:34:36', '2024-09-20 11:38:36'),
(3, 'Fabulous', 1, 'Mehedi Khan Rakib', 'mkrcoding1998@gmail.com', 'Active', '2024-09-20 11:45:56', '2024-09-20 11:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `counter1_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter1_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter2_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter2_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter3_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter3_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter4_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter4_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `counter1_number`, `counter1_name`, `counter2_number`, `counter2_name`, `counter3_number`, `counter3_name`, `counter4_number`, `counter4_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1120', 'Donations', '200', 'Volunteers', '150', 'Appeals', '25', 'Programs organized', 'active', '2024-09-25 13:05:56', '2024-09-25 13:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `phone_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AFG', '93', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(2, 'Albania', 'ALB', '355', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(3, 'Algeria', 'DZA', '213', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(4, 'American Samoa', 'ASM', '1684', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(5, 'Andorra', 'AND', '376', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(6, 'Angola', 'AGO', '244', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(7, 'Anguilla', 'AIA', '1264', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(8, 'Antarctica', NULL, '0', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(9, 'Antigua and Barbuda', 'ATG', '1268', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(10, 'Argentina', 'ARG', '54', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(11, 'Armenia', 'ARM', '374', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(12, 'Aruba', 'ABW', '297', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(13, 'Australia', 'AUS', '61', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(14, 'Austria', 'AUT', '43', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(15, 'Azerbaijan', 'AZE', '994', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(16, 'Bahamas', 'BHS', '1242', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(17, 'Bahrain', 'BHR', '973', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(18, 'Bangladesh', 'BGD', '880', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(19, 'Barbados', 'BRB', '1246', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(20, 'Belarus', 'BLR', '375', 1, '2024-09-09 13:27:23', '2024-09-09 13:27:23'),
(21, 'Belgium', 'BEL', '32', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(22, 'Belize', 'BLZ', '501', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(23, 'Benin', 'BEN', '229', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(24, 'Bermuda', 'BMU', '1441', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(25, 'Bhutan', 'BTN', '975', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(26, 'Bolivia', 'BOL', '591', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(27, 'Bosnia and Herzegovina', 'BIH', '387', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(28, 'Botswana', 'BWA', '267', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(29, 'Bouvet Island', NULL, '0', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(30, 'Brazil', 'BRA', '55', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(31, 'British Indian Ocean Territory', NULL, '246', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(32, 'Brunei Darussalam', 'BRN', '673', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(33, 'Bulgaria', 'BGR', '359', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(34, 'Burkina Faso', 'BFA', '226', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(35, 'Burundi', 'BDI', '257', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(36, 'Cambodia', 'KHM', '855', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(37, 'Cameroon', 'CMR', '237', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(38, 'Canada', 'CAN', '1', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(39, 'Cape Verde', 'CPV', '238', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(40, 'Cayman Islands', 'CYM', '1345', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(41, 'Central African Republic', 'CAF', '236', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(42, 'Chad', 'TCD', '235', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(43, 'Chile', 'CHL', '56', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(44, 'China', 'CHN', '86', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(45, 'Christmas Island', NULL, '61', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(46, 'Cocos (Keeling) Islands', NULL, '672', 1, '2024-09-09 13:27:24', '2024-09-09 13:27:24'),
(47, 'Colombia', 'COL', '57', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(48, 'Comoros', 'COM', '269', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(49, 'Congo', 'COG', '242', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(50, 'Congo, the Democratic Republic of the', 'COD', '242', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(51, 'Cook Islands', 'COK', '682', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(52, 'Costa Rica', 'CRI', '506', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(53, 'Cote D\'Ivoire', 'CIV', '225', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(54, 'Croatia', 'HRV', '385', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(55, 'Cuba', 'CUB', '53', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(56, 'Cyprus', 'CYP', '357', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(57, 'Czech Republic', 'CZE', '420', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(58, 'Denmark', 'DNK', '45', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(59, 'Djibouti', 'DJI', '253', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(60, 'Dominica', 'DMA', '1767', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(61, 'Dominican Republic', 'DOM', '1809', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(62, 'Ecuador', 'ECU', '593', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(63, 'Egypt', 'EGY', '20', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(64, 'El Salvador', 'SLV', '503', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(65, 'Equatorial Guinea', 'GNQ', '240', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(66, 'Eritrea', 'ERI', '291', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(67, 'Estonia', 'EST', '372', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(68, 'Ethiopia', 'ETH', '251', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(69, 'Falkland Islands (Malvinas)', 'FLK', '500', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(70, 'Faroe Islands', 'FRO', '298', 1, '2024-09-09 13:27:25', '2024-09-09 13:27:25'),
(71, 'Fiji', 'FJI', '679', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(72, 'Finland', 'FIN', '358', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(73, 'France', 'FRA', '33', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(74, 'French Guiana', 'GUF', '594', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(75, 'French Polynesia', 'PYF', '689', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(76, 'French Southern Territories', NULL, '0', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(77, 'Gabon', 'GAB', '241', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(78, 'Gambia', 'GMB', '220', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(79, 'Georgia', 'GEO', '995', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(80, 'Germany', 'DEU', '49', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(81, 'Ghana', 'GHA', '233', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(82, 'Gibraltar', 'GIB', '350', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(83, 'Greece', 'GRC', '30', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(84, 'Greenland', 'GRL', '299', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(85, 'Grenada', 'GRD', '1473', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(86, 'Guadeloupe', 'GLP', '590', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(87, 'Guam', 'GUM', '1671', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(88, 'Guatemala', 'GTM', '502', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(89, 'Guinea', 'GIN', '224', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(90, 'Guinea-Bissau', 'GNB', '245', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(91, 'Guyana', 'GUY', '592', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(92, 'Haiti', 'HTI', '509', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(93, 'Heard Island and Mcdonald Islands', NULL, '0', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(94, 'Holy See (Vatican City State)', 'VAT', '39', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(95, 'Honduras', 'HND', '504', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(96, 'Hong Kong', 'HKG', '852', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(97, 'Hungary', 'HUN', '36', 1, '2024-09-09 13:27:26', '2024-09-09 13:27:26'),
(98, 'Iceland', 'ISL', '354', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(99, 'India', 'IND', '91', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(100, 'Indonesia', 'IDN', '62', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(101, 'Iran, Islamic Republic of', 'IRN', '98', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(102, 'Iraq', 'IRQ', '964', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(103, 'Ireland', 'IRL', '353', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(104, 'Israel', 'ISR', '972', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(105, 'Italy', 'ITA', '39', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(106, 'Jamaica', 'JAM', '1876', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(107, 'Japan', 'JPN', '81', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(108, 'Jordan', 'JOR', '962', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(109, 'Kazakhstan', 'KAZ', '7', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(110, 'Kenya', 'KEN', '254', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(111, 'Kiribati', 'KIR', '686', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(112, 'Korea, Democratic People\'s Republic of', 'PRK', '850', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(113, 'Korea, Republic of', 'KOR', '82', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(114, 'Kuwait', 'KWT', '965', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(115, 'Kyrgyzstan', 'KGZ', '996', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(116, 'Lao People\'s Democratic Republic', 'LAO', '856', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(117, 'Latvia', 'LVA', '371', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(118, 'Lebanon', 'LBN', '961', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(119, 'Lesotho', 'LSO', '266', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(120, 'Liberia', 'LBR', '231', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(121, 'Libyan Arab Jamahiriya', 'LBY', '218', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(122, 'Liechtenstein', 'LIE', '423', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(123, 'Lithuania', 'LTU', '370', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(124, 'Luxembourg', 'LUX', '352', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(125, 'Macao', 'MAC', '853', 1, '2024-09-09 13:27:27', '2024-09-09 13:27:27'),
(126, 'Macedonia, the Former Yugoslav Republic of', 'MKD', '389', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(127, 'Madagascar', 'MDG', '261', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(128, 'Malawi', 'MWI', '265', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(129, 'Malaysia', 'MYS', '60', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(130, 'Maldives', 'MDV', '960', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(131, 'Mali', 'MLI', '223', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(132, 'Malta', 'MLT', '356', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(133, 'Marshall Islands', 'MHL', '692', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(134, 'Martinique', 'MTQ', '596', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(135, 'Mauritania', 'MRT', '222', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(136, 'Mauritius', 'MUS', '230', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(137, 'Mayotte', NULL, '269', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(138, 'Mexico', 'MEX', '52', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(139, 'Micronesia, Federated States of', 'FSM', '691', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(140, 'Moldova, Republic of', 'MDA', '373', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(141, 'Monaco', 'MCO', '377', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(142, 'Mongolia', 'MNG', '976', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(143, 'Montserrat', 'MSR', '1664', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(144, 'Morocco', 'MAR', '212', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(145, 'Mozambique', 'MOZ', '258', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(146, 'Myanmar', 'MMR', '95', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(147, 'Namibia', 'NAM', '264', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(148, 'Nauru', 'NRU', '674', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(149, 'Nepal', 'NPL', '977', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(150, 'Netherlands', 'NLD', '31', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(151, 'Netherlands Antilles', 'ANT', '599', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(152, 'New Caledonia', 'NCL', '687', 1, '2024-09-09 13:27:28', '2024-09-09 13:27:28'),
(153, 'New Zealand', 'NZL', '64', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(154, 'Nicaragua', 'NIC', '505', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(155, 'Niger', 'NER', '227', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(156, 'Nigeria', 'NGA', '234', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(157, 'Niue', 'NIU', '683', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(158, 'Norfolk Island', 'NFK', '672', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(159, 'Northern Mariana Islands', 'MNP', '1670', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(160, 'Norway', 'NOR', '47', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(161, 'Oman', 'OMN', '968', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(162, 'Pakistan', 'PAK', '92', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(163, 'Palau', 'PLW', '680', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(164, 'Palestinian Territory, Occupied', NULL, '970', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(165, 'Panama', 'PAN', '507', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(166, 'Papua New Guinea', 'PNG', '675', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(167, 'Paraguay', 'PRY', '595', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(168, 'Peru', 'PER', '51', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(169, 'Philippines', 'PHL', '63', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(170, 'Pitcairn', 'PCN', '0', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(171, 'Poland', 'POL', '48', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(172, 'Portugal', 'PRT', '351', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(173, 'Puerto Rico', 'PRI', '1787', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(174, 'Qatar', 'QAT', '974', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(175, 'Reunion', 'REU', '262', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(176, 'Romania', 'ROM', '40', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(177, 'Russian Federation', 'RUS', '70', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(178, 'Rwanda', 'RWA', '250', 1, '2024-09-09 13:27:29', '2024-09-09 13:27:29'),
(179, 'Saint Helena', 'SHN', '290', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(180, 'Saint Kitts and Nevis', 'KNA', '1869', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(181, 'Saint Lucia', 'LCA', '1758', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(182, 'Saint Pierre and Miquelon', 'SPM', '508', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(183, 'Saint Vincent and the Grenadines', 'VCT', '1784', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(184, 'Samoa', 'WSM', '684', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(185, 'San Marino', 'SMR', '378', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(186, 'Sao Tome and Principe', 'STP', '239', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(187, 'Saudi Arabia', 'SAU', '966', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(188, 'Senegal', 'SEN', '221', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(189, 'Serbia and Montenegro', NULL, '381', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(190, 'Seychelles', 'SYC', '248', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(191, 'Sierra Leone', 'SLE', '232', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(192, 'Singapore', 'SGP', '65', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(193, 'Slovakia', 'SVK', '421', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(194, 'Slovenia', 'SVN', '386', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(195, 'Solomon Islands', 'SLB', '677', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(196, 'Somalia', 'SOM', '252', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(197, 'South Africa', 'ZAF', '27', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(198, 'South Georgia and the South Sandwich Islands', NULL, '0', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(199, 'Spain', 'ESP', '34', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(200, 'Sri Lanka', 'LKA', '94', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(201, 'Sudan', 'SDN', '249', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(202, 'Suriname', 'SUR', '597', 1, '2024-09-09 13:27:30', '2024-09-09 13:27:30'),
(203, 'Svalbard and Jan Mayen', 'SJM', '47', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(204, 'Swaziland', 'SWZ', '268', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(205, 'Sweden', 'SWE', '46', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(206, 'Switzerland', 'CHE', '41', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(207, 'Syrian Arab Republic', 'SYR', '963', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(208, 'Taiwan, Province of China', 'TWN', '886', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(209, 'Tajikistan', 'TJK', '992', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(210, 'Tanzania, United Republic of', 'TZA', '255', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(211, 'Thailand', 'THA', '66', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(212, 'Timor-Leste', NULL, '670', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(213, 'Togo', 'TGO', '228', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(214, 'Tokelau', 'TKL', '690', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(215, 'Tonga', 'TON', '676', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(216, 'Trinidad and Tobago', 'TTO', '1868', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(217, 'Tunisia', 'TUN', '216', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(218, 'Turkey', 'TUR', '90', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(219, 'Turkmenistan', 'TKM', '7370', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(220, 'Turks and Caicos Islands', 'TCA', '1649', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(221, 'Tuvalu', 'TUV', '688', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(222, 'Uganda', 'UGA', '256', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(223, 'Ukraine', 'UKR', '380', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(224, 'United Arab Emirates', 'ARE', '971', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(225, 'United Kingdom', 'GBR', '44', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(226, 'United States', 'USA', '1', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(227, 'United States Minor Outlying Islands', NULL, '1', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(228, 'Uruguay', 'URY', '598', 1, '2024-09-09 13:27:31', '2024-09-09 13:27:31'),
(229, 'Uzbekistan', 'UZB', '998', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(230, 'Vanuatu', 'VUT', '678', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(231, 'Venezuela', 'VEN', '58', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(232, 'Viet Nam', 'VNM', '84', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(233, 'Virgin Islands, British', 'VGB', '1284', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(234, 'Virgin Islands, U.S.', 'VIR', '1340', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(235, 'Wallis and Futuna', 'WLF', '681', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(236, 'Western Sahara', 'ESH', '212', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(237, 'Yemen', 'YEM', '967', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(238, 'Zambia', 'ZMB', '260', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(239, 'Zimbabwe', 'ZWE', '263', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(240, 'Serbia', 'SRB', '381', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(241, 'Asia / Pacific Region', '0', '0', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(242, 'Montenegro', 'MNE', '382', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(243, 'Aland Islands', 'ALA', '358', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(244, 'Bonaire, Sint Eustatius and Saba', 'BES', '599', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(245, 'Curacao', 'CUW', '599', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(246, 'Guernsey', 'GGY', '44', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(247, 'Isle of Man', 'IMN', '44', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(248, 'Jersey', 'JEY', '44', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(249, 'Kosovo', '---', '381', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(250, 'Saint Barthelemy', 'BLM', '590', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(251, 'Saint Martin', 'MAF', '590', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(252, 'Sint Maarten', 'SXM', '1', 1, '2024-09-09 13:27:32', '2024-09-09 13:27:32'),
(253, 'South Sudan', 'SSD', '211', 1, '2024-09-09 13:27:33', '2024-09-09 13:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', NULL, NULL),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', NULL, NULL),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', NULL, NULL),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd', NULL, NULL),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', NULL, NULL),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', NULL, NULL),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', NULL, NULL),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', NULL, NULL),
(9, 1, 'Coxsbazar', 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd', NULL, NULL),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', NULL, NULL),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', NULL, NULL),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', NULL, NULL),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', NULL, NULL),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', NULL, NULL),
(15, 2, 'Rajshahi', 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd', NULL, NULL),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', NULL, NULL),
(17, 2, 'Joypurhat', 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd', NULL, NULL),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', NULL, NULL),
(19, 2, 'Naogaon', 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd', NULL, NULL),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', NULL, NULL),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd', NULL, NULL),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', NULL, NULL),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', NULL, NULL),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', NULL, NULL),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', NULL, NULL),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', NULL, NULL),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', NULL, NULL),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', NULL, NULL),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', NULL, NULL),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd', NULL, NULL),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', NULL, NULL),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd', NULL, NULL),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd', NULL, NULL),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', NULL, NULL),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd', NULL, NULL),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', NULL, NULL),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', NULL, NULL),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', NULL, NULL),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', NULL, NULL),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', NULL, NULL),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', NULL, NULL),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd', NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', NULL, NULL),
(44, 6, 'Tangail', 'টাঙ্গাইল', NULL, NULL, 'www.tangail.gov.bd', NULL, NULL),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', NULL, NULL),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd', NULL, NULL),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', NULL, NULL),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd', NULL, NULL),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', NULL, NULL),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', NULL, NULL),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', NULL, NULL),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', NULL, NULL),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', NULL, NULL),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', NULL, NULL),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd', NULL, NULL),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', NULL, NULL),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', NULL, NULL),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', NULL, NULL),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', NULL, NULL),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', NULL, NULL),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', NULL, NULL),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', NULL, NULL, 'www.mymensingh.gov.bd', NULL, NULL),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', NULL, NULL),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd', NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd', NULL, NULL),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd', NULL, NULL),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd', NULL, NULL),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd', NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd', NULL, NULL),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd', NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `executives`
--

CREATE TABLE `executives` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `executives`
--

INSERT INTO `executives` (`id`, `name`, `designation`, `phone`, `email`, `country_id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Abdur Rashid', 'Chairman', '01727027277', 'mkrcoding1998@gmail.com', 18, 'executive_photo-1726759522.jpg', 1, '2024-09-10 10:40:52', '2024-09-19 09:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `heading`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-utensils', 'Food', '<p>Lorem ipsum dolor sit amet, consectetur&nbsp; adipiscing elit, sed do eiusmod</p>', 1, '2024-09-13 05:12:48', '2024-09-13 07:41:06'),
(2, 'fas fa-briefcase-medical', 'Medicine', '<p>Lorem ipsum dolor sit amet, consectetur&nbsp; adipiscing elit, sed do eiusmod</p>', 1, '2024-09-13 05:19:53', '2024-09-13 07:41:20'),
(3, 'fas fa-graduation-cap', 'Education', '<p>Lorem ipsum dolor sit amet, consectetur&nbsp; adipiscing elit, sed do eiusmod</p>', 1, '2024-09-13 05:21:31', '2024-09-13 07:41:37'),
(4, 'fas fa-tshirt', 'Cloths', '<p>Lorem ipsum dolor sit amet, consectetur&nbsp; adipiscing elit, sed do eiusmod</p>', 1, '2024-09-13 05:22:14', '2024-09-13 07:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'What is your charity\'s mission and focus?', '<p>Our charity\'s mission is to make a positive impact in the lives of those in need. We focus on providing support in areas such as education, healthcare, disaster relief, and addressing hunger and homelessness. We also raise awareness about critical social and environmental issues.</p>', 1, '2024-09-20 08:15:44', '2024-09-25 12:44:10'),
(2, 'How can I make a donation to support your charity?', '<p>Making a donation to support our charity is easy and greatly appreciated. You can donate online through our secure website by clicking on the \"Donate Now\" button. We also accept donations through various other methods, such as bank transfers, checks, or in-kind contributions. Visit our \"Donate\" page for more details on the various donation options.</p>', 1, '2024-09-20 08:16:06', '2024-09-20 08:16:06'),
(3, 'Is my donation tax-deductible, and will I receive a receipt for tax purposes?', '<p>Yes, your donation is tax-deductible to the extent allowed by law. After making a donation, you will receive a receipt via email or mail, depending on your preference. This receipt will contain all the necessary information you need for tax purposes, including our charity\'s tax ID number.</p>', 1, '2024-09-20 08:16:25', '2024-09-20 08:16:25'),
(4, 'How can I get involved as a volunteer or participate in your charity\'s programs?', '<p>We welcome volunteers and individuals interested in participating in our programs. To get involved, please visit our \"Volunteer Opportunities\" page for information on upcoming events, projects, and how to apply. You can also sign up for our newsletter to stay informed about volunteer opportunities and programs.</p>', 1, '2024-09-20 08:16:43', '2024-09-20 08:16:43'),
(5, 'Can I designate my donation to a specific program or project within your charity?', '<p>Yes, you can often designate your donation to a specific program, project, or cause that aligns with your passion and interests. During the donation process, you will have the option to specify where you\'d like your contribution to be directed. If you have questions about specific designations, please contact our support team for further assistance.</p>', 1, '2024-09-20 08:17:08', '2024-09-20 08:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` int DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `heading`, `counter`, `text`, `button_text`, `button_link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Donate For Children', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod&nbsp;&nbsp;</p>', 'Donate Now', 'http://127.0.0.1:8000/donate', 1, '2024-09-27 03:55:49', '2024-09-27 03:55:49'),
(2, 'Served Over', 100, '<p>Orphan And Distressed Children over Bangladesh for the better life of them.&nbsp;</p>', 'Read More', 'http://127.0.0.1:8000/', 1, '2024-09-27 03:58:02', '2024-09-27 03:58:02'),
(3, 'Our Volunteer', NULL, '<p>More then 100 dedicated volunteers work restlessly over countryside in Bangladesh.</p>', 'Be A Volunteer', 'http://127.0.0.1:8000/', 1, '2024-09-27 03:58:33', '2024-09-27 03:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_items`
--

CREATE TABLE `home_page_items` (
  `id` bigint UNSIGNED NOT NULL,
  `cause_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_subheading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_subheading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subheading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_items`
--

INSERT INTO `home_page_items` (`id`, `cause_heading`, `cause_subheading`, `cause_status`, `feature_background`, `feature_status`, `event_heading`, `event_subheading`, `event_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `created_at`, `updated_at`) VALUES
(1, 'Featured Causes', 'Our organization focuses on providing services to the homeless peoples.', 'Show', 'feature_background_1704118837.jpg', 'Show', 'Upcoming Events', 'You can organize events and help us to raise fund for the poor people.', 'Show', 'Our Happy Clients', 'testimonial_background_1704118881.jpg', 'Show', 'Latest News', 'Check out the latest news and updates from our blog post', 'Show', NULL, '2024-01-01 13:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2019_11_27_040657_create_divisions_table', 1),
(5, '2019_11_27_040723_create_districts_table', 1),
(6, '2019_11_27_040803_create_upazilas_table', 1),
(7, '2021_09_13_035432_create_unions_table', 1),
(8, '2023_08_23_082120_create_countries_table', 1),
(9, '2023_10_25_025642_create_admins_table', 1),
(33, '2024_01_01_063218_create_home_page_items_table', 1),
(35, '2024_01_03_015900_create_other_page_items_table', 1),
(37, '2024_08_02_065729_create_orphans_table', 1),
(38, '2024_09_01_153915_create_executives_table', 1),
(39, '2024_09_01_153918_create_volunteers_table', 1),
(49, '2023_12_18_012545_create_facilities_table', 6),
(56, '2023_12_21_012747_create_programs_table', 9),
(57, '2024_09_09_170512_create_appeals_table', 10),
(70, '2023_12_18_092400_create_testimonials_table', 18),
(71, '2023_12_19_011946_create_faqs_table', 19),
(72, '2023_12_20_010842_create_post_categories_table', 20),
(73, '2023_12_20_024713_create_posts_table', 21),
(74, '2023_12_20_104933_create_comments_table', 22),
(76, '2023_12_20_105413_create_replies_table', 23),
(78, '2023_10_30_123652_create_about_categories_table', 24),
(79, '2023_10_30_143652_create_about_sections_table', 25),
(88, '2024_01_02_011608_create_settings_table', 29),
(89, '2023_10_30_082935_create_sliders_table', 30),
(91, '2023_12_18_174537_create_counters_table', 32),
(95, '2023_12_19_085139_create_photo_categories_table', 33),
(96, '2023_12_19_094426_create_photos_table', 34),
(97, '2023_12_19_152009_create_video_categories_table', 35),
(98, '2023_12_19_173657_create_videos_table', 36),
(99, '2024_09_10_170512_create_appeal_photos_table', 37),
(100, '2024_09_11_170512_create_appeal_videos_table', 38),
(103, '2023_12_28_133200_create_causes_table', 39),
(104, '2024_01_01_012821_create_cause_faqs_table', 40),
(106, '2024_09_12_170512_create_cause_photos_table', 42),
(107, '2024_09_13_170512_create_cause_videos_table', 43),
(108, '0001_01_01_000000_create_users_table', 44),
(109, '2024_01_01_022624_create_cause_donations_table', 45),
(110, '2023_12_24_015803_create_program_tickets_table', 46),
(111, '2024_09_04_034437_create_features_table', 47),
(112, '2023_12_20_024715_create_news_table', 48),
(113, '2024_09_27_173107_create_pages_banner_table', 49);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `description`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'First Newss', 'first-newss', '<p>First News sdgdfhjtsdgfrgr</p>', 'news_1727454419.jpg', 1, '2024-09-27 10:25:57', '2024-09-27 10:26:59'),
(2, 'Second News', 'second-news', '<p>afsdghgrfdht</p>', 'news_1727455902.jpg', 1, '2024-09-27 10:51:33', '2024-09-27 10:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `orphans`
--

CREATE TABLE `orphans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `economic_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship_with_guardian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `support_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reported_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orphans`
--

INSERT INTO `orphans` (`id`, `name`, `date_of_birth`, `age`, `gender`, `economic_status`, `guardian_name`, `relationship_with_guardian`, `mobile_number`, `email_address`, `description`, `support_type`, `photo`, `village_city`, `upazila`, `district`, `division`, `reported_by`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Ruhul Amin', '2000-10-12', 24, 'male', 'orphan', 'Salina Parvin', 'mother', '01727027277', 'mkrcoding1998@gmail.com', 'Two years of experience', 'education', 'orphan_photo-1727495404.jpg', 'Mymensingh', '466', '62', '8', '2', 'approved', '2024-09-27 21:50:04', '2024-09-27 21:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `other_page_items`
--

CREATE TABLE `other_page_items` (
  `id` bigint UNSIGNED NOT NULL,
  `terms_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_page_items`
--

INSERT INTO `other_page_items` (`id`, `terms_content`, `privacy_content`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum, quando melius ad ius. Qui populo elaboraret te, eam ei prima dolores, vis et semper minimum forensibus. Simul semper vivendo no eam, alienum iracundia constituam in quo. An eius dicta impetus his, atqui graeco vel eu.<br /><br />Eros omnis recusabo eu vim, et mandamus vulputate his. Detracto torquatos sit id, nec eu alienum disputando. Augue putant ex vis, case inermis comprehensam mei id. Eu percipit platonem vis, cum ea dolore utroque volumus.<br /><br />Minim gubergren moderatius et quo, augue quidam in sea. In duo movet sanctus omittam, fabulas forensibus no sed. Sed tation noluisse id, mei alii platonem ea, fuisset deseruisse an has. Nemore ancillae disputando at mei, ei his melius epicuri, vim democritum elaboraret concludaturque an. Ut quidam euismod molestiae usu. Eum commune mediocritatem at, ignota repudiare vituperatoribus et est.<br /><br />Ad quem maluisset cum, audiam tritani ne mei. Id has inani eloquentiam, his virtute eloquentiam ut, ad duo modus commune. Et eam consul pericula necessitatibus. Sit ei enim exerci blandit.<br /><br />Euripidis definitionem in pri, an pro fuisset tincidunt. Ius at aperiam fabulas, ocurreret voluptatibus ad pri. Homero iuvaret luptatum ius no. Ea eam enim laudem adversarium, dico errem sed ea.</p>', '<p>Mei te amet neglegentur. Pri in nulla molestiae, quo ut melius discere moderatius, ut mel falli delectus definiebas. Ius an mazim verear copiosae. Has eu omnes praesent consequuntur, pri ut sonet putant ancillae, perpetua facilisis in usu. Cu pro natum aliquip dissentiunt, no erant numquam suscipit mei.<br /><br />Mea ut dicunt eligendi accusamus, ex aliquando signiferumque duo. At pro unum timeam commodo, reque pertinacia incorrupte vix an, quis eligendi atomorum no ius. Vim tota commune ei, vis everti propriae eu. Eu etiam persius est, porro voluptaria mei et, vis at explicari sententiae disputando.<br /><br />Putent volutpat persecuti ad eam. Mea ridens timeam ei, cu usu posse deserunt. Vix ut aperiri corrumpit laboramus. Sit movet percipit an, qui magna volumus cu, mei errem voluptatum ea. At vim essent latine.<br /><br />Te maiorum philosophia vituperatoribus duo. Sea ad utroque deleniti adipiscing, sed porro fugit errem ex. Qui wisi reprimique honestatis in. Putent possim evertitur mei no, cu errem dolore interpretaris mea. Id graecis corpora duo, ad saperet percipit incorrupte eam, ea modus hendrerit posidonium sea.<br /><br />Ei cum autem ubique nostro, cu usu nostrud theophrastus. At velit aperiri honestatis qui, sit ei suas assentior interpretaris, mazim virtute voluptatum pro cu. Eu vis imperdiet reprimique, in mel utinam verear. Alterum vituperata has et.</p>', NULL, '2024-01-02 14:09:49'),
(2, '<p>Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum, quando melius ad ius. Qui populo elaboraret te, eam ei prima dolores, vis et semper minimum forensibus. Simul semper vivendo no eam, alienum iracundia constituam in quo. An eius dicta impetus his, atqui graeco vel eu.<br /><br />Eros omnis recusabo eu vim, et mandamus vulputate his. Detracto torquatos sit id, nec eu alienum disputando. Augue putant ex vis, case inermis comprehensam mei id. Eu percipit platonem vis, cum ea dolore utroque volumus.<br /><br />Minim gubergren moderatius et quo, augue quidam in sea. In duo movet sanctus omittam, fabulas forensibus no sed. Sed tation noluisse id, mei alii platonem ea, fuisset deseruisse an has. Nemore ancillae disputando at mei, ei his melius epicuri, vim democritum elaboraret concludaturque an. Ut quidam euismod molestiae usu. Eum commune mediocritatem at, ignota repudiare vituperatoribus et est.<br /><br />Ad quem maluisset cum, audiam tritani ne mei. Id has inani eloquentiam, his virtute eloquentiam ut, ad duo modus commune. Et eam consul pericula necessitatibus. Sit ei enim exerci blandit.<br /><br />Euripidis definitionem in pri, an pro fuisset tincidunt. Ius at aperiam fabulas, ocurreret voluptatibus ad pri. Homero iuvaret luptatum ius no. Ea eam enim laudem adversarium, dico errem sed ea.</p>', NULL, '2024-09-15 02:34:44', '2024-09-15 02:34:44'),
(3, NULL, '<p>Mei te amet neglegentur. Pri in nulla molestiae, quo ut melius discere moderatius, ut mel falli delectus definiebas. Ius an mazim verear copiosae. Has eu omnes praesent consequuntur, pri ut sonet putant ancillae, perpetua facilisis in usu. Cu pro natum aliquip dissentiunt, no erant numquam suscipit mei.<br /><br />Mea ut dicunt eligendi accusamus, ex aliquando signiferumque duo. At pro unum timeam commodo, reque pertinacia incorrupte vix an, quis eligendi atomorum no ius. Vim tota commune ei, vis everti propriae eu. Eu etiam persius est, porro voluptaria mei et, vis at explicari sententiae disputando.<br /><br />Putent volutpat persecuti ad eam. Mea ridens timeam ei, cu usu posse deserunt. Vix ut aperiri corrumpit laboramus. Sit movet percipit an, qui magna volumus cu, mei errem voluptatum ea. At vim essent latine.<br /><br />Te maiorum philosophia vituperatoribus duo. Sea ad utroque deleniti adipiscing, sed porro fugit errem ex. Qui wisi reprimique honestatis in. Putent possim evertitur mei no, cu errem dolore interpretaris mea. Id graecis corpora duo, ad saperet percipit incorrupte eam, ea modus hendrerit posidonium sea.<br /><br />Ei cum autem ubique nostro, cu usu nostrud theophrastus. At velit aperiri honestatis qui, sit ei suas assentior interpretaris, mazim virtute voluptatum pro cu. Eu vis imperdiet reprimique, in mel utinam verear. Alterum vituperata has et.</p>', '2024-09-15 02:34:49', '2024-09-15 02:34:49'),
(4, '<p>Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum, quando melius ad ius. Qui populo elaboraret te, eam ei prima dolores, vis et semper minimum forensibus. Simul semper vivendo no eam, alienum iracundia constituam in quo. An eius dicta impetus his, atqui graeco vel eu.<br /><br />Eros omnis recusabo eu vim, et mandamus vulputate his. Detracto torquatos sit id, nec eu alienum disputando. Augue putant ex vis, case inermis comprehensam mei id. Eu percipit platonem vis, cum ea dolore utroque volumus.<br /><br />Minim gubergren moderatius et quo, augue quidam in sea. In duo movet sanctus omittam, fabulas forensibus no sed. Sed tation noluisse id, mei alii platonem ea, fuisset deseruisse an has. Nemore ancillae disputando at mei, ei his melius epicuri, vim democritum elaboraret concludaturque an. Ut quidam euismod molestiae usu. Eum commune mediocritatem at, ignota repudiare vituperatoribus et est.<br /><br />Ad quem maluisset cum, audiam tritani ne mei. Id has inani eloquentiam, his virtute eloquentiam ut, ad duo modus commune. Et eam consul pericula necessitatibus. Sit ei enim exerci blandit.<br /><br />Euripidis definitionem in pri, an pro fuisset tincidunt. Ius at aperiam fabulas, ocurreret voluptatibus ad pri. Homero iuvaret luptatum ius no. Ea eam enim laudem adversarium, dico errem sed ea.</p>', NULL, '2024-09-26 01:49:09', '2024-09-26 01:49:09'),
(5, NULL, '<p>Mei te amet neglegentur. Pri in nulla molestiae, quo ut melius discere moderatius, ut mel falli delectus definiebas. Ius an mazim verear copiosae. Has eu omnes praesent consequuntur, pri ut sonet putant ancillae, perpetua facilisis in usu. Cu pro natum aliquip dissentiunt, no erant numquam suscipit mei.<br /><br />Mea ut dicunt eligendi accusamus, ex aliquando signiferumque duo. At pro unum timeam commodo, reque pertinacia incorrupte vix an, quis eligendi atomorum no ius. Vim tota commune ei, vis everti propriae eu. Eu etiam persius est, porro voluptaria mei et, vis at explicari sententiae disputando.<br /><br />Putent volutpat persecuti ad eam. Mea ridens timeam ei, cu usu posse deserunt. Vix ut aperiri corrumpit laboramus. Sit movet percipit an, qui magna volumus cu, mei errem voluptatum ea. At vim essent latine.<br /><br />Te maiorum philosophia vituperatoribus duo. Sea ad utroque deleniti adipiscing, sed porro fugit errem ex. Qui wisi reprimique honestatis in. Putent possim evertitur mei no, cu errem dolore interpretaris mea. Id graecis corpora duo, ad saperet percipit incorrupte eam, ea modus hendrerit posidonium sea.<br /><br />Ei cum autem ubique nostro, cu usu nostrud theophrastus. At velit aperiri honestatis qui, sit ei suas assentior interpretaris, mazim virtute voluptatum pro cu. Eu vis imperdiet reprimique, in mel utinam verear. Alterum vituperata has et.</p>', '2024-09-26 01:49:13', '2024-09-26 01:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages_banner`
--

CREATE TABLE `pages_banner` (
  `id` bigint UNSIGNED NOT NULL,
  `appeal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_history` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_who` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `executive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volunteer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_gallery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_gallery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `story` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_volunteer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `be_sponsor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_banner`
--

INSERT INTO `pages_banner` (`id`, `appeal`, `about_history`, `about_who`, `executive`, `volunteer`, `program`, `photo_gallery`, `video_gallery`, `story`, `testimonial`, `join_volunteer`, `be_sponsor`, `blog`, `news`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'pages_banner_appeal-1727464191.jpg', 'pages_banner_about_history-1727464945.jpg', 'pages_banner_about_who-1727464945.jpg', 'pages_banner_executive-1727464945.jpg', 'pages_banner_volunteer-1727464945.jpg', 'pages_banner_program-1727464982.jpg', 'pages_banner_photo_gallery-1727464982.jpg', 'pages_banner_video_gallery-1727464982.jpg', 'pages_banner_story-1727464982.jpg', 'pages_banner_testimonial-1727464982.jpg', 'pages_banner_join_volunteer-1727464982.jpg', 'pages_banner_be_sponsor-1727464982.jpg', 'pages_banner_blog-1727464982.jpg', 'pages_banner_news-1727464982.jpg', 'pages_banner_contact-1727464982.jpg', '2024-09-27 13:09:51', '2024-09-27 13:23:02'),
(2, NULL, '/tmp/phpYkwdfG', '/tmp/phpV72r3i', '/tmp/php3BOv7k', '/tmp/php66zo77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-27 13:10:31', '2024-09-27 13:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo_category_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo_category_id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 1, 'gallery_photo-1727334819-66f509a3666de.png', 1, '2024-09-26 01:13:39', '2024-09-26 01:13:39'),
(3, 2, 'gallery_photo-1727334838-66f509b63109a.png', 1, '2024-09-26 01:13:58', '2024-09-26 01:13:58'),
(4, 2, 'gallery_photo-1727334838-66f509b63134e.png', 1, '2024-09-26 01:13:58', '2024-09-26 01:13:58'),
(5, 2, 'gallery_photo-1727334838-66f509b6314a9.png', 1, '2024-09-26 01:13:58', '2024-09-26 01:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `photo_categories`
--

CREATE TABLE `photo_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_categories`
--

INSERT INTO `photo_categories` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Appeal', 'appeal', 1, '2024-09-26 00:10:43', '2024-09-26 00:11:44'),
(2, 'Program', 'program', 1, '2024-09-26 00:10:48', '2024-09-26 01:07:56'),
(3, 'Donation', 'donation', 1, '2024-09-26 00:11:37', '2024-09-26 00:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_category_id`, `title`, `slug`, `short_description`, `description`, `photo`, `tags`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cause Donation', 'cause-donation', 'Cause Donationfhjrtjutjut', '<p>Cause Donationsdgrfyhhtehdfsfsdfa</p>', 'post_1726852155.jpg', 'cause,post', 1, '2024-09-20 11:09:15', '2024-09-20 11:33:33'),
(2, 2, 'Successful Story', 'successful-story', 'In Wikipedia\'s early days, editors added Template:Orphan to mark both orphaned articles and articles with relatively few incoming links. The use of the template has since been restricted.', '<p>In Wikipedia\'s early days, editors added Template:Orphan to mark both orphaned articles and articles with relatively few incoming links. The use of the template has since been restricted. It is now recommended to only place the {{Orphan}} tag if the article has zero incoming links from other articles. The template is only shown temporarily, under certain circumstances. Adding this template to any article is not strictly necessary, and many editors prefer to add it only when they believe that the article should be linked from many others.</p>\r\n<p>&nbsp;</p>\r\n<p>A single, relevant incoming link is sufficient to remove the tag. Three or more incoming links will help ensure the article is reachable by readers.[1] Editors may also remove the tag from any article if they believe that de-orphaning is unlikely to be successful, or if they have attempted to provide incoming links. See &sect; What if I can\'t de-orphan it? below for more information.</p>\r\n<p>&nbsp;</p>\r\n<p>The following pages do not count as incoming links:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Disambiguation pages</strong></p>\r\n<p>Any article in mainspace that is linked only in a hatnote</p>\r\n<p>Redirects and Soft redirects</p>\r\n<p>&nbsp; &nbsp; ...except that incoming links to the redirects do count</p>\r\n<p><strong>Discussion pages of articles</strong></p>\r\n<p>Wikipedia pages outside of article space</p>\r\n<p>The following pages do count as incoming links:</p>\r\n<p>&nbsp;</p>\r\n<p>Any article in mainspace except those specifically excluded above (This includes links only present in collapsed navboxes.)</p>\r\n<p>List of... articles</p>\r\n<p>Set indexes</p>\r\n<p>On redirects</p>\r\n<p>Neither soft nor hard redirects should normally be tagged as orphans.</p>\r\n<p>&nbsp;</p>\r\n<p>On disambiguation pages</p>\r\n<p>Disambiguation pages themselves often should be orphaned. The only mainspace pages that should link to them are other disambiguation pages, and articles with hatnote links to them (via templates such as {{Other uses}}). Please do not place the {{Orphan}} template on disambiguation pages. See also Wikipedia:Disambiguation &sect; Links to disambiguation pages.</p>', 'post_1727494538.jpg', 'success,story', 1, '2024-09-22 23:31:04', '2024-09-28 00:21:22'),
(3, 1, 'New blog', 'new-blog', 'dhfhfrdhrfdeh', '<p>fdshedjrtegtehrger</p>', 'post_1727450928.jpg', 'htr,ghjhgy', 1, '2024-09-27 09:28:48', '2024-09-27 09:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cause', 'cause', 1, '2024-09-20 11:08:08', '2024-09-26 01:25:42'),
(2, 'Successful stories', 'successful-stories', 1, '2024-09-22 23:29:13', '2024-09-22 23:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` int DEFAULT NULL,
  `total_seat` int DEFAULT NULL,
  `booked_seat` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `slug`, `type`, `short_description`, `description`, `photo`, `start_date_time`, `end_date_time`, `location`, `map`, `price`, `total_seat`, `booked_seat`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Global Education Expo 2024', 'global-education-expo-2024', 'trade show', 'Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum.', '<p><span style=\"color: #333333; font-family: Lora, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum.</span></p>\r\n<p><span style=\"color: #333333; font-family: Lora, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum.</span></p>\r\n<p><span style=\"color: #333333; font-family: Lora, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, cum ei ponderum mandamus, ei altera quidam sapientem eum. Iriure timeam perpetua ut cum.</span></p>', 'program_photo-1727444264.jpg', '2024-09-16T10:00', '2024-09-18T17:00', 'Bangabandhu International Conference Center, Dhaka, Bangladesh', NULL, 100, 50, 49, 1, '2024-09-13 12:22:02', '2024-09-27 07:37:44'),
(2, 'Global Education Expo - 2 2024', 'global-education-expo-2-2024', 'trade show', 'Tempor erat elitr rebum at dita Diam\r\ndolor diam ipsum sit diam amet diam eos', '<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam dolor diam ipsum sit diam amet diam eos</span></p>\r\n<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam </span><span style=\"white-space-collapse: preserve;\">dolor diam ipsum sit diam amet diam eos</span></p>\r\n<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam </span><span style=\"white-space-collapse: preserve;\">dolor diam ipsum sit diam amet diam eos</span></p>', 'program_photo-1726254847.jpg', '2024-07-26T10:00', '2024-07-27T17:00', 'Bangabandhu International Conference Center, Dhaka, Bangladesh', NULL, 100, 50, NULL, 1, '2024-09-13 13:14:07', '2024-09-13 13:14:07'),
(3, 'Global Education Expo - 3 2024', 'global-education-expo-3-2024', 'conference', 'Tempor erat elitr rebum at dita Diam dolor diam ipsum sit diam amet diam eos', '<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam </span><span style=\"white-space-collapse: preserve;\">dolor diam ipsum sit diam amet diam eos</span></p>\r\n<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam </span><span style=\"white-space-collapse: preserve;\">dolor diam ipsum sit diam amet diam eos</span></p>\r\n<p><span style=\"white-space-collapse: preserve;\">Tempor erat elitr rebum at dita Diam </span><span style=\"white-space-collapse: preserve;\">dolor diam ipsum sit diam amet diam eos</span></p>', 'program_photo-1726254936.jpg', '2024-09-26T10:00', '2024-09-28T17:00', 'Bangabandhu International Conference Center, Dhaka, Bangladesh', NULL, 100, 50, 7, 1, '2024-09-13 13:15:36', '2024-09-27 02:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `program_photos`
--

CREATE TABLE `program_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `program_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_photos`
--

INSERT INTO `program_photos` (`id`, `program_id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 2, 'program_photo-1727368215.png', 1, '2024-09-26 10:30:15', '2024-09-26 10:30:15'),
(5, 2, 'program_photo-1727370899-66f59693b6840.png', 1, '2024-09-26 11:14:59', '2024-09-26 11:14:59'),
(6, 2, 'program_photo-1727370899-66f59693b6c57.png', 1, '2024-09-26 11:14:59', '2024-09-26 11:14:59'),
(7, 2, 'program_photo-1727371332.webp', 1, '2024-09-26 11:14:59', '2024-09-26 11:22:12'),
(8, 2, 'program_photo-1727372585-66f59d291a39e.png', 1, '2024-09-26 11:43:05', '2024-09-26 11:43:05'),
(9, 2, 'program_photo-1727372585-66f59d291a699.png', 1, '2024-09-26 11:43:05', '2024-09-26 11:43:05'),
(10, 2, 'program_photo-1727372585-66f59d291a831.png', 1, '2024-09-26 11:43:05', '2024-09-26 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `program_tickets`
--

CREATE TABLE `program_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `program_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `unit_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_tickets` int NOT NULL,
  `total_price` int NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_videos`
--

CREATE TABLE `program_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `program_id` bigint UNSIGNED NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_videos`
--

INSERT INTO `program_videos` (`id`, `program_id`, `video`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 2, 'w0_DuxhL0ug', 1, '2024-09-26 11:14:35', '2024-09-26 11:14:35'),
(7, 2, 'w0_DuxhL0ug', 1, '2024-09-26 11:14:35', '2024-09-26 11:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `comment_id`, `name`, `email`, `user_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thanks', 1, NULL, NULL, 'Admin', 'Active', '2024-09-20 11:45:13', '2024-09-20 11:45:13'),
(2, 'Yeah, it\'s a great one', 3, 'MKDev', 'mkrakib328@gmail.com', 'Visitor', 'Pending', '2024-09-20 11:46:53', '2024-09-20 11:46:53'),
(3, 'Yeah, it\'s a great one', 3, 'MKDev', 'mkrakib328@gmail.com', 'Visitor', 'Pending', '2024-09-20 11:47:27', '2024-09-20 11:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cNAc4mGKcW0DAr9y9RuCK2FVGGXuNfThFKWyEyyP', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlFlb0dsbHByeTk5RFdxVWUzQkY5WWEweHBZbUJyWmhvcnl2cXhEQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9ncmFtcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745775664),
('Ny6UbF4rucwLZjmcBcgEGhH7bX3BOgYEJMFn0yI7', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6ImhIQTVic2FTQms3cVBjT29ocUV5MzN2eTNpYlNCMldEVHg2ZzNZTVYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo4OiJjYXVzZV9pZCI7czoxOiIzIjtzOjQ6Im5hbWUiO3M6MTc6Ik1laGVkaSBLaGFuIFJha2liIjtzOjU6ImVtYWlsIjtzOjIzOiJta3Jjb2RpbmcxOTk4QGdtYWlsLmNvbSI7czo3OiJhZGRyZXNzIjtzOjI5OiI4My8xLzUgR29oYWlsa2FuZGkgUm9hZCxTYWRhciI7czo1OiJwaG9uZSI7czoxMToiMDE3MjcwMjcyNzciO3M6NToicHJpY2UiO3M6MzoiMTAwIjtzOjEzOiJkb25hdGlvbl90eXBlIjtzOjc6Im1vbnRobHkiO30=', 1727509868),
('Q9r0vXBABuDhE4EfDayoevpQZ7iPvAaGSsdRzbRj', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGhmMXpkV2FlQ280VHVwcDd4dThWN2NjeGdMWE8yQ2ZpMGNEZWVPQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734583022);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` json DEFAULT NULL,
  `top_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_1_country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_1_country_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_2_country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_2_country_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `map_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo_1`, `logo_2`, `favicon`, `banner`, `seo_company_name`, `seo_title`, `seo_short_description`, `seo_keywords`, `top_address`, `top_phone`, `top_email`, `footer_address`, `footer_phone`, `footer_email`, `footer_logo`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `copyright`, `contact_address_1`, `contact_phone_1`, `contact_email_1`, `contact_address_2`, `contact_phone_2`, `contact_email_2`, `map_1_country_name`, `map_1_country_photo`, `map_2_country_name`, `map_2_country_photo`, `map_1`, `map_2`, `created_at`, `updated_at`) VALUES
(1, 'settings_logo_1-1727442605.png', 'settings_logo_2-1727497070.svg', 'settings_favicon-1727278882.png', 'settings_banner-1727278882.jpg', 'ARFAN FAMILYS SMILING BABY FOUNDATION', 'AFSBF - Arfan Familys Smiling Baby Foundation', 'This is a charity-based website', '[\"smiling\", \"charity\", \"baby\", \"foundation\"]', '2A/ 242 South Terrace, Bankstown, NSW', '+61287390332', 'info@afsbf.org', '2A/ 242 South Terrace, Bankstown, NSW', '+61287390332', 'info@afsbf.org', 'settings_footer_logo-1727279807.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.linkedin.com', 'https://www.instagram.com', 'AFSBF - ARFAN FAMILYS SMILING BABY FOUNDATION, All Right Reserved. Designed By Sabrina Sultana & Developed by Mehedi Khan Rakib', '2A/ 242 South Terrace, Bankstown, NSW', '+61287390332', 'info@afsbf.org', 'Balipara Rd, Darirampur, Trishal, 2220, Mymensingh', '+8801708169667', 'info@afsbf.org', 'Australia', 'settings_map_1_country_photo-1727280150.webp', 'Bangladesh', 'settings_map_2_country_photo-1727280150.webp', '<iframe src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=2A/%20242%20South%20Terrace+(Smiling%20Baby%20Foundation)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\" style=\"border: 0; width: 100%; height: 50vh\" allowFullScreen=\"allowFullScreen\" loading=\"lazy\" data-aos=\"fade-up\"></iframe>', '<iframe src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Smiling%20Baby%20Foundation,%20Darrirampur,%202220+(Smiling%20Baby%20Foundation)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\" style=\"border: 0; width: 100%; height: 50vh\" allowFullScreen=\"allowFullScreen\" loading=\"lazy\" data-aos=\"fade-up\"></iframe>', '2024-09-25 09:41:22', '2024-09-27 22:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `heading`, `text`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Arfan Family\'s Smiling Baby Foundation', '<p>Better life for Distressed and Orphan Children</p>', 'slider_photo-1727281261.jpg', 1, '2024-09-25 10:21:01', '2024-09-25 10:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'testimonial_photo-1726841710.jpg', 'Robert Krol', 'CEO, ABC Company', '<p>Volunteering with this charity has been a transformative experience. Their unwavering dedication to helping those in need is truly inspiring. I\'m proud to be part of their mission, witnessing the remarkable impact they make. I\'m grateful for the opportunity to contribute to their efforts.</p>', 1, '2024-09-20 08:15:10', '2024-09-25 12:43:49'),
(2, 'testimonial_photo-1726940223.jpg', 'Mehedi Khan Rakib', 'Chairman', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.</p>', 1, '2024-09-21 11:37:03', '2024-09-21 11:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` bigint UNSIGNED NOT NULL,
  `upazila_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Subil', 'সুবিল', 'subilup.comilla.gov.bd', NULL, NULL),
(2, 1, 'North Gunaighor', 'উত্তর গুনাইঘর', 'gunaighornorthup.comilla.gov.bd', NULL, NULL),
(3, 1, 'South Gunaighor', 'দক্ষিণ গুনাইঘর', 'gunaighorsouth.comilla.gov.bd', NULL, NULL),
(4, 1, 'Boroshalghor', 'বড়শালঘর', 'boroshalghorup.comilla.gov.bd', NULL, NULL),
(5, 1, 'Rajameher', 'রাজামেহার', 'rajameherup.comila.gov.bd', NULL, NULL),
(6, 1, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.comilla.gov.bd', NULL, NULL),
(7, 1, 'Rasulpur', 'রসুলপুর', 'rasulpurup.comilla.gov.bd', NULL, NULL),
(8, 1, 'Fatehabad', 'ফতেহাবাদ', 'fatehabadup.comilla.gov.bd', NULL, NULL),
(9, 1, 'Elahabad', 'এলাহাবাদ', 'elahabadup.comilla.gov.bd', NULL, NULL),
(10, 1, 'Jafargonj', 'জাফরগঞ্জ', 'jafargonjup.comilla.gov.bd', NULL, NULL),
(11, 1, 'Dhampti', 'ধামতী', 'dhamptiup.comilla.gov.bd', NULL, NULL),
(12, 1, 'Mohanpur', 'মোহনপুর', 'mohanpurup.comilla.gov.bd', NULL, NULL),
(13, 1, 'Vani', 'ভানী', 'vaniup.comilla.gov.bd', NULL, NULL),
(14, 1, 'Barkamta', 'বরকামতা', 'barkamtaup.comilla.gov.bd', NULL, NULL),
(15, 1, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.comilla.gov.bd', NULL, NULL),
(16, 2, 'Aganagar', 'আগানগর', 'aganagarup.comilla.gov.bd', NULL, NULL),
(17, 2, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.comilla.gov.bd', NULL, NULL),
(18, 2, 'North Khoshbas', 'উত্তর খোশবাস', 'khoshbasnorthup.comilla.gov.bd', NULL, NULL),
(19, 2, 'South Khoshbas', 'দক্ষিন খোশবাস', 'khoshbassouthup.comilla.gov.bd', NULL, NULL),
(20, 2, 'Jhalam', 'ঝলম', 'jhalamup.comilla.gov.bd', NULL, NULL),
(21, 2, 'Chitodda', 'চিতড্ডা', 'chitoddaup.comilla.gov.bd', NULL, NULL),
(22, 2, 'North Shilmuri', 'উত্তর শিলমুড়ি', 'shilmurinorthup.comilla.gov.bd', NULL, NULL),
(23, 2, 'South Shilmuri', 'দক্ষিন শিলমুড়ি', 'shilmurisouthup.comilla.gov.bd', NULL, NULL),
(24, 2, 'Galimpur', 'গালিমপুর', 'galimpurup.comilla.gov.bd', NULL, NULL),
(25, 2, 'Shakpur', 'শাকপুর', 'shakpurup.comilla.gov.bd', NULL, NULL),
(26, 2, 'Bhaukshar', 'ভাউকসার', 'bhauksharup.comilla.gov.bd', NULL, NULL),
(27, 2, 'Adda', 'আড্ডা', 'addaup.comilla.gov.bd', NULL, NULL),
(28, 2, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd', NULL, NULL),
(29, 2, 'Payalgacha', 'পয়ালগাছা', 'payalgachaup.comilla.gov.bd', NULL, NULL),
(30, 2, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.comilla.gov.bd', NULL, NULL),
(31, 3, 'Shidli', 'শিদলাই', 'shidliup.comilla.gov.bd', NULL, NULL),
(32, 3, 'Chandla', 'চান্দলা', 'chandlaup.comilla.gov.bd', NULL, NULL),
(33, 3, 'Shashidal', 'শশীদল', 'shashidalup.comilla.gov.bd', NULL, NULL),
(34, 3, 'Dulalpur', 'দুলালপুর', 'dulalpurup2.comilla.gov.bd', NULL, NULL),
(35, 3, 'Brahmanpara Sadar', 'ব্রাহ্মনপাড়া সদর', 'brahmanparasadarup.comilla.gov.bd', NULL, NULL),
(36, 3, 'Shahebabad', 'সাহেবাবাদ', 'shahebabadup.comilla.gov.bd', NULL, NULL),
(37, 3, 'Malapara', 'মালাপাড়া', 'malaparaup.comilla.gov.bd', NULL, NULL),
(38, 3, 'Madhabpur', 'মাধবপুর', 'madhabpurup.comilla.gov.bd', NULL, NULL),
(39, 4, 'Shuhilpur', 'সুহিলপুর', 'shuhilpurup.comilla.gov.bd', NULL, NULL),
(40, 4, 'Bataghashi', 'বাতাঘাসি', 'bataghashiup.comilla.gov.bd', NULL, NULL),
(41, 4, 'Joag', 'জোয়াগ', 'joagup.comilla.gov.bd', NULL, NULL),
(42, 4, 'Borcarai', 'বরকরই', 'borcaraiup.comilla.gov.bd', NULL, NULL),
(43, 4, 'Madhaiya', 'মাধাইয়া', 'madhaiyaup.comilla.gov.bd', NULL, NULL),
(44, 4, 'Dollai Nowabpur', 'দোল্লাই নবাবপুর', 'dollainowabpurup.comilla.gov.bd', NULL, NULL),
(45, 4, 'Mohichial', 'মহিচাইল', 'mohichialup.comilla.gov.bd', NULL, NULL),
(46, 4, 'Gollai', 'গল্লাই', 'gollaiup.comilla.gov.bd', NULL, NULL),
(47, 4, 'Keronkhal', 'কেরণখাল', 'keronkhalup.comilla.gov.bd', NULL, NULL),
(48, 4, 'Maijkhar', 'মাইজখার', 'maijkharup.comilla.gov.bd', NULL, NULL),
(49, 4, 'Etberpur', 'এতবারপুর', 'etberpurup.comilla.gov.bd', NULL, NULL),
(50, 4, 'Barera', 'বাড়েরা', 'bareraup.comilla.gov.bd', NULL, NULL),
(51, 4, 'Borcoit', 'বরকইট', 'borcoitup.comilla.gov.bd', NULL, NULL),
(52, 5, 'Sreepur', 'শ্রীপুর', 'sreepurup.comilla.gov.bd', NULL, NULL),
(53, 5, 'Kashinagar', 'কাশিনগর', 'kashinagarup.comilla.gov.bd', NULL, NULL),
(54, 5, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.comilla.gov.bd', NULL, NULL),
(55, 5, 'Shuvapur', 'শুভপুর', 'shuvapurup.comilla.gov.bd', NULL, NULL),
(56, 5, 'Ghulpasha', 'ঘোলপাশা', 'ghulpashaup.comilla.gov.bd', NULL, NULL),
(57, 5, 'Moonshirhat', 'মুন্সীরহাট', 'moonshirhatup.comilla.gov.bd', NULL, NULL),
(58, 5, 'Batisha', 'বাতিসা', 'batishaup.comilla.gov.bd', NULL, NULL),
(59, 5, 'Kankapait', 'কনকাপৈত', 'kankapaitup.comilla.gov.bd', NULL, NULL),
(60, 5, 'Cheora', 'চিওড়া', 'cheoraup.comilla.gov.bd', NULL, NULL),
(61, 5, 'Jagannatdighi', 'জগন্নাথদিঘী', 'jagannatdighiup.comilla.gov.bd', NULL, NULL),
(62, 5, 'Goonabati', 'গুনবতী', 'goonabatiup.comilla.gov.bd', NULL, NULL),
(63, 5, 'Alkara', 'আলকরা', 'alkaraup.comilla.gov.bd', NULL, NULL),
(64, 6, 'Doulotpur', 'দৌলতপুর', 'doulotpurup.comilla.gov.bd', NULL, NULL),
(65, 6, 'Daudkandi', 'দাউদকান্দি', 'daudkandinorthup.comilla.gov.bd', NULL, NULL),
(66, 6, 'North Eliotgonj', 'উত্তর ইলিয়টগঞ্জ', 'eliotgonjnorthup.comilla.gov.bd', NULL, NULL),
(67, 6, 'South Eliotgonj', 'দক্ষিন ইলিয়টগঞ্জ', 'eliotgonjsouthup.comilla.gov.bd', NULL, NULL),
(68, 6, 'Zinglatoli', 'জিংলাতলী', 'zinglatoliup.comilla.gov.bd', NULL, NULL),
(69, 6, 'Sundolpur', 'সুন্দলপুর', 'sundolpurup.comilla.gov.bd', NULL, NULL),
(70, 6, 'Gouripur', 'গৌরীপুর', 'gouripurup.comilla.gov.bd', NULL, NULL),
(71, 6, 'East Mohammadpur', 'পুর্ব মোহাম্মদপুর', 'mohammadpureastup.comilla.gov.bd', NULL, NULL),
(72, 6, 'West Mohammadpur', 'পশ্চিম মোহাম্মদপুর', 'mohammadpurwestup.comilla.gov.bd', NULL, NULL),
(73, 6, 'Goalmari', 'গোয়ালমারী', 'goalmariup.comilla.gov.bd', NULL, NULL),
(74, 6, 'Maruka', 'মারুকা', 'marukaup.comilla.gov.bd', NULL, NULL),
(75, 6, 'Betessor', 'বিটেশ্বর', 'betessorup.comilla.gov.bd', NULL, NULL),
(76, 6, 'Podua', 'পদুয়া', 'poduaup.comilla.gov.bd', NULL, NULL),
(77, 6, 'West Passgacia', 'পশ্চিম পাচঁগাছিয়া', 'passgaciawestup.comilla.gov.bd', NULL, NULL),
(78, 6, 'Baropara', 'বারপাড়া', 'baroparaup2.comilla.gov.bd', NULL, NULL),
(79, 7, 'Mathabanga', 'মাথাভাঙ্গা', 'mathabangaup.comilla.gov.bd', NULL, NULL),
(80, 7, 'Gagutiea', 'ঘাগুটিয়া', 'gagutieaup.comilla.gov.bd', NULL, NULL),
(81, 7, 'Asadpur', 'আছাদপুর', 'asadpurup.comilla.gov.bd', NULL, NULL),
(82, 7, 'Chanderchor', 'চান্দেরচর', 'chanderchorup.comilla.gov.bd', NULL, NULL),
(83, 7, 'Vashania', 'ভাষানিয়া', 'vashaniaup.comilla.gov.bd', NULL, NULL),
(84, 7, 'Nilokhi', 'নিলখী', 'nilokhiup.comilla.gov.bd', NULL, NULL),
(85, 7, 'Garmora', 'ঘারমোড়া', 'garmoraup.comilla.gov.bd', NULL, NULL),
(86, 7, 'Joypur', 'জয়পুর', 'joypurup.comilla.gov.bd', NULL, NULL),
(87, 7, 'Dulalpur', 'দুলালপুর', 'dulalpurup1.comilla.gov.bd', NULL, NULL),
(88, 8, 'Bakoi', 'বাকই', 'bakoiup.comilla.gov.bd', NULL, NULL),
(89, 8, 'Mudafargonj', 'মুদাফফর গঞ্জ', 'mudafargonjup.comilla.gov.bd', NULL, NULL),
(90, 8, 'Kandirpar', 'কান্দিরপাড়', 'kandirparup.comilla.gov.bd', NULL, NULL),
(91, 8, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.comilla.gov.bd', NULL, NULL),
(92, 8, 'Uttarda', 'উত্তরদা', 'uttardaup.comilla.gov.bd', NULL, NULL),
(93, 8, 'Laksam Purba', 'লাকসাম পুর্ব', 'laksampurbaup.comilla.gov.bd', NULL, NULL),
(94, 8, 'Azgora', 'আজগরা', 'azgoraup.comilla.gov.bd', NULL, NULL),
(95, 9, 'Sreekil', 'শ্রীকাইল', 'sreekilup.comilla.gov.bd', NULL, NULL),
(96, 9, 'Akubpur', 'আকুবপুর', 'akubpurup.comilla.gov.bd', NULL, NULL),
(97, 9, 'Andicot', 'আন্দিকোট', 'andicotup.comilla.gov.bd', NULL, NULL),
(98, 9, 'Purbadair (East)', 'পুর্বধৈইর (পুর্ব)', 'purbadaireastup.comilla.gov.bd', NULL, NULL),
(99, 9, 'Purbadair (West)', 'পুর্বধৈইর (পশ্চিম)', 'purbadairwestup.comilla.gov.bd', NULL, NULL),
(100, 9, 'Bangara (East)', 'বাঙ্গরা (পূর্ব)', 'bangaraeastup.comilla.gov.bd', NULL, NULL),
(101, 9, 'Bangara (West)', 'বাঙ্গরা (পশ্চিম)', 'bangarawestup.comilla.gov.bd', NULL, NULL),
(102, 9, 'Chapitala', 'চাপিতলা', 'chapitalaup.comilla.gov.bd', NULL, NULL),
(103, 9, 'Camalla', 'কামাল্লা', 'camallaup.comilla.gov.bd', NULL, NULL),
(104, 9, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.comilla.gov.bd', NULL, NULL),
(105, 9, 'Ramachandrapur (North)', 'রামচন্দ্রপুর (উত্তর)', 'ramachandrapurnorthup.comilla.gov.bd', NULL, NULL),
(106, 9, 'Ramachandrapur (South)', 'রামচন্দ্রপুর (দক্ষিন)', 'ramachandrapursouthup.comilla.gov.bd', NULL, NULL),
(107, 9, 'Muradnagar Sadar', 'মুরাদনগর সদর', 'muradnagarsadarup.comilla.gov.bd', NULL, NULL),
(108, 9, 'Nobipur (East)', 'নবীপুর (পুর্ব)', 'nobipureastup.comilla.gov.bd', NULL, NULL),
(109, 9, 'Nobipur (West)', 'নবীপুর (পশ্চিম)', 'nobipurwestup.comilla.gov.bd', NULL, NULL),
(110, 9, 'Damgar', 'ধামঘর', 'damgarup.comilla.gov.bd', NULL, NULL),
(111, 9, 'Jahapur', 'জাহাপুর', 'jahapurup.comilla.gov.bd', NULL, NULL),
(112, 9, 'Salikandi', 'ছালিয়াকান্দি', 'salikandiup.comilla.gov.bd', NULL, NULL),
(113, 9, 'Darura', 'দারোরা', 'daruraup.comilla.gov.bd', NULL, NULL),
(114, 9, 'Paharpur', 'পাহাড়পুর', 'paharpurup.comilla.gov.bd', NULL, NULL),
(115, 9, 'Babutipara', 'বাবুটিপাড়া', 'babutiparaup.comilla.gov.bd', NULL, NULL),
(116, 9, 'Tanki', 'টনকী', 'tankiup.comilla.gov.bd', NULL, NULL),
(117, 10, 'Bangadda', 'বাঙ্গড্ডা', 'bangadda.comilla.gov.bd', NULL, NULL),
(118, 10, 'Paria', 'পেরিয়া', 'pariaup.comilla.gov.bd', NULL, NULL),
(119, 10, 'Raykot', 'রায়কোট', 'raykotup.comilla.gov.bd', NULL, NULL),
(120, 10, 'Mokara', 'মোকরা', 'mokaraup.comilla.gov.bd', NULL, NULL),
(121, 10, 'Makrabpur', 'মক্রবপুর', 'makrabpurup.comilla.gov.bd', NULL, NULL),
(122, 10, 'Heshakhal', 'হেসাখাল', 'heshakhalup.comilla.gov.bd', NULL, NULL),
(123, 10, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd', NULL, NULL),
(124, 10, 'Judda', 'জোড্ডা', 'juddaup.comilla.gov.bd', NULL, NULL),
(125, 10, 'Dhalua', 'ঢালুয়া', 'dhaluaup.comilla.gov.bd', NULL, NULL),
(126, 10, 'Doulkha', 'দৌলখাঁড়', 'doulkhaup.comilla.gov.bd', NULL, NULL),
(127, 10, 'Boxgonj', 'বক্সগঞ্জ', 'boxgonjup.comilla.gov.bd', NULL, NULL),
(128, 10, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.comilla.gov.bd', NULL, NULL),
(129, 11, 'Kalirbazer', 'কালীর বাজার', 'kalirbazerup.comilla.gov.bd', NULL, NULL),
(130, 11, 'North Durgapur', 'উত্তর দুর্গাপুর', 'durgapurnorthup.comilla.gov.bd', NULL, NULL),
(131, 11, 'South Durgapur', 'দক্ষিন দুর্গাপুর', 'durgapursouthup.comilla.gov.bd', NULL, NULL),
(132, 11, 'Amratoli', 'আমড়াতলী', 'amratoliup.comilla.gov.bd', NULL, NULL),
(133, 11, 'Panchthubi', 'পাঁচথুবী', 'panchthubiup.comilla.gov.bd', NULL, NULL),
(134, 11, 'Jagannatpur', 'জগন্নাথপুর', 'jagannatpurup.comilla.gov.bd', NULL, NULL),
(135, 12, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.comilla.gov.bd', NULL, NULL),
(136, 12, 'Chalibanga', 'চালিভাঙ্গা', 'chalibangaup.comilla.gov.bd', NULL, NULL),
(137, 12, 'Radanagar', 'রাধানগর', 'radanagarup.comilla.gov.bd', NULL, NULL),
(138, 12, 'Manikarchar', 'মানিকারচর', 'manikarcharup.comilla.gov.bd', NULL, NULL),
(139, 12, 'Barakanda', 'বড়কান্দা', 'barakandaup.comilla.gov.bd', NULL, NULL),
(140, 12, 'Govindapur', 'গোবিন্দপুর', 'govindapurup1.comilla.gov.bd', NULL, NULL),
(141, 12, 'Luterchar', 'লুটেরচর', 'lutercharup.comilla.gov.bd', NULL, NULL),
(142, 12, 'Vaorkhola', 'ভাওরখোলা', 'vaorkholaup.comilla.gov.bd', NULL, NULL),
(143, 13, 'Baishgaon', 'বাইশগাঁও', 'baishgaonup.comilla.gov.bd', NULL, NULL),
(144, 13, 'Shoroshpur', 'সরসপুর', 'shoroshpurup.comilla.gov.bd', NULL, NULL),
(145, 13, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.comilla.gov.bd', NULL, NULL),
(146, 13, 'Jholam (North)', 'ঝলম (উত্তর)', 'jholamnorthup.comilla.gov.bd', NULL, NULL),
(147, 13, 'Jholam (South)', 'ঝলম (দক্ষিন)', 'jholamsouthup.comilla.gov.bd', NULL, NULL),
(148, 13, 'Moishatua', 'মৈশাতুয়া', 'moishatuaup.comilla.gov.bd', NULL, NULL),
(149, 13, 'Lokkhanpur', 'লক্ষনপুর', 'lokkhanpurup.comilla.gov.bd', NULL, NULL),
(150, 13, 'Khela', 'খিলা', 'khelaup.comilla.gov.bd', NULL, NULL),
(151, 13, 'Uttarhowla', 'উত্তর হাওলা', 'uttarhowlaup.comilla.gov.bd', NULL, NULL),
(152, 13, 'Natherpetua', 'নাথেরপেটুয়া', 'natherpetuaup.comilla.gov.bd', NULL, NULL),
(153, 13, 'Bipulashar', 'বিপুলাসার', 'bipulasharup.comilla.gov.bd', NULL, NULL),
(154, 14, 'Chuwara', 'চৌয়ারা', 'chuwaraup.comilla.gov.bd', NULL, NULL),
(155, 14, 'Baropara', 'বারপাড়া', 'baroparaup1.comilla.gov.bd', NULL, NULL),
(156, 14, 'Jorkanoneast', 'জোড়কানন (পুর্ব)', 'jorkanoneastup.comilla.gov.bd', NULL, NULL),
(157, 14, 'Goliara', 'গলিয়ারা', 'goliaraup.comilla.gov.bd', NULL, NULL),
(158, 14, 'Jorkanonwest', 'জোড়কানন (পশ্চিম)', 'jorkanonwestup.comilla.gov.bd', NULL, NULL),
(159, 14, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd', NULL, NULL),
(160, 14, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd', NULL, NULL),
(161, 14, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd', NULL, NULL),
(162, 14, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd', NULL, NULL),
(163, 14, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd', NULL, NULL),
(164, 14, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd', NULL, NULL),
(165, 14, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd', NULL, NULL),
(166, 14, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd', NULL, NULL),
(167, 14, 'Bijoypur', 'বিজয়পুর', 'bijoypurup.comilla.gov.bd', NULL, NULL),
(168, 15, 'Satani', 'সাতানী', 'sataniup.comilla.gov.bd', NULL, NULL),
(169, 15, 'Jagatpur', 'জগতপুর', 'jagatpurup.comilla.gov.bd', NULL, NULL),
(170, 15, 'Balorampur', 'বলরামপুর', 'balorampurup.comilla.gov.bd', NULL, NULL),
(171, 15, 'Karikandi', 'কড়িকান্দি', 'karikandiup.comilla.gov.bd', NULL, NULL),
(172, 15, 'Kalakandi', 'কলাকান্দি', 'kalakandiup.comilla.gov.bd', NULL, NULL),
(173, 15, 'Vitikandi', 'ভিটিকান্দি', 'vitikandiup.comilla.gov.bd', NULL, NULL),
(174, 15, 'Narayandia', 'নারান্দিয়া', 'narayandiaup.comilla.gov.bd', NULL, NULL),
(175, 15, 'Zearkandi', 'জিয়ারকান্দি', 'zearkandiup.comilla.gov.bd', NULL, NULL),
(176, 15, 'Majidpur', 'মজিদপুর', 'majidpurup.comilla.gov.bd', NULL, NULL),
(177, 16, 'Moynamoti', 'ময়নামতি', 'moynamotiup.comilla.gov.bd', NULL, NULL),
(178, 16, 'Varella', 'ভারেল্লা', 'varellaup.comilla.gov.bd', NULL, NULL),
(179, 16, 'Mokam', 'মোকাম', 'mokamup.comilla.gov.bd', NULL, NULL),
(180, 16, 'Burichang Sadar', 'বুড়িচং সদর', 'burichangsadarup.comilla.gov.bd', NULL, NULL),
(181, 16, 'Bakshimul', 'বাকশীমূল', 'bakshimulup.comilla.gov.bd', NULL, NULL),
(182, 16, 'Pirjatrapur', 'পীরযাত্রাপুর', 'pirjatrapurup.comilla.gov.bd', NULL, NULL),
(183, 16, 'Sholonal', 'ষোলনল', 'sholonalup.comilla.gov.bd', NULL, NULL),
(184, 16, 'Rajapur', 'রাজাপুর', 'rajapurup.comilla.gov.bd', NULL, NULL),
(185, 17, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd', NULL, NULL),
(186, 17, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd', NULL, NULL),
(187, 17, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd', NULL, NULL),
(188, 17, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd', NULL, NULL),
(189, 17, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd', NULL, NULL),
(190, 17, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd', NULL, NULL),
(191, 17, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd', NULL, NULL),
(192, 17, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd', NULL, NULL),
(193, 18, 'Mohamaya', 'মহামায়া', 'mohamayaup.feni.gov.bd', NULL, NULL),
(194, 18, 'Pathannagar', 'পাঠাননগর', 'pathannagarup.feni.gov.bd', NULL, NULL),
(195, 18, 'Subhapur', 'শুভপুর', 'subhapurup.feni.gov.bd', NULL, NULL),
(196, 18, 'Radhanagar', 'রাধানগর', 'radhanagarup.feni.gov.bd', NULL, NULL),
(197, 18, 'Gopal', 'ঘোপাল', 'gopalup.feni.gov.bd', NULL, NULL),
(198, 19, 'Sarishadi', 'শর্শদি', 'sarishadiup.feni.gov.bd', NULL, NULL),
(199, 19, 'Panchgachia', 'পাঁচগাছিয়া', 'panchgachiaup.feni.gov.bd', NULL, NULL),
(200, 19, 'Dhormapur', 'ধর্মপুর', 'dhormapurup.feni.gov.bd', NULL, NULL),
(201, 19, 'Kazirbag', 'কাজিরবাগ', 'kazirbagup.feni.gov.bd', NULL, NULL),
(202, 19, 'Kalidah', 'কালিদহ', 'kalidahup.feni.gov.bd', NULL, NULL),
(203, 19, 'Baligaon', 'বালিগাঁও', 'baligaonup.feni.gov.bd', NULL, NULL),
(204, 19, 'Dholia', 'ধলিয়া', 'dholiaup.feni.gov.bd', NULL, NULL),
(205, 19, 'Lemua', 'লেমুয়া', 'lemuaup.feni.gov.bd', NULL, NULL),
(206, 19, 'Chonua', 'ছনুয়া', 'chonuaup.feni.gov.bd', NULL, NULL),
(207, 19, 'Motobi', 'মোটবী', 'motobiup.feni.gov.bd', NULL, NULL),
(208, 19, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.feni.gov.bd', NULL, NULL),
(209, 19, 'Forhadnogor', 'ফরহাদনগর', 'forhadnogorup.feni.gov.bd', NULL, NULL),
(210, 20, 'Charmozlishpur', 'চরমজলিশপুর', 'charmozlishpurup.feni.gov.bd', NULL, NULL),
(211, 20, 'Bogadana', 'বগাদানা', 'bogadanaup.feni.gov.bd', NULL, NULL),
(212, 20, 'Motigonj', 'মতিগঞ্জ', 'motigonjup.feni.gov.bd', NULL, NULL),
(213, 20, 'Mongolkandi', 'মঙ্গলকান্দি', 'mongolkandiup.feni.gov.bd', NULL, NULL),
(214, 20, 'Chardorbesh', 'চরদরবেশ', 'chardorbeshup.feni.gov.bd', NULL, NULL),
(215, 20, 'Chorchandia', 'চরচান্দিয়া', 'chorchandiaup.feni.gov.bd', NULL, NULL),
(216, 20, 'Sonagazi', 'সোনাগাজী', 'sonagaziup.feni.gov.bd', NULL, NULL),
(217, 20, 'Amirabad', 'আমিরাবাদ', 'amirabadup.feni.gov.bd', NULL, NULL),
(218, 20, 'Nababpur', 'নবাবপুর', 'nababpurup.feni.gov.bd', NULL, NULL),
(219, 21, 'Fulgazi', 'ফুলগাজী', 'fulgaziup.feni.gov.bd', NULL, NULL),
(220, 21, 'Munshirhat', 'মুন্সিরহাট', 'munshirhatup.feni.gov.bd', NULL, NULL),
(221, 21, 'Dorbarpur', 'দরবারপুর', 'dorbarpurup.feni.gov.bd', NULL, NULL),
(222, 21, 'Anandopur', 'আনন্দপুর', 'anandopurup.feni.gov.bd', NULL, NULL),
(223, 21, 'Amzadhat', 'আমজাদহাট', 'amzadhatup.feni.gov.bd', NULL, NULL),
(224, 21, 'Gmhat', 'জি,এম, হাট', 'gmhatup.feni.gov.bd', NULL, NULL),
(225, 22, 'Mizanagar', 'মির্জানগর', 'mizanagarup.feni.gov.bd', NULL, NULL),
(226, 22, 'Ctholia', 'চিথলিয়া', 'ctholiaup.feni.gov.bd', NULL, NULL),
(227, 22, 'Boxmahmmud', 'বক্সমাহমুদ', 'boxmahmmudup.feni.gov.bd', NULL, NULL),
(228, 23, 'Sindurpur', 'সিন্দুরপুর', 'sindurpurup.feni.gov.bd', NULL, NULL),
(229, 23, 'Rajapur', 'রাজাপুর', 'rajapurup.feni.gov.bd', NULL, NULL),
(230, 23, 'Purbachandrapur', 'পূর্বচন্দ্রপুর', 'purbachandrapurup.feni.gov.bd', NULL, NULL),
(231, 23, 'Ramnagar', 'রামনগর', 'ramnagarup.feni.gov.bd', NULL, NULL),
(232, 23, 'Yeakubpur', 'ইয়াকুবপুর', 'yeakubpur.feni.gov.bd', NULL, NULL),
(233, 23, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyanup.feni.gov.bd', NULL, NULL),
(234, 23, 'Matubhuiyan', 'মাতুভূঞা', 'matubhuiyanup.feni.gov.bd', NULL, NULL),
(235, 23, 'Jayloskor', 'জায়লস্কর', 'jayloskorup.feni.gov.bd', NULL, NULL),
(236, 24, 'Basudeb', 'বাসুদেব', 'basudeb.brahmanbaria.gov.bd', NULL, NULL),
(237, 24, 'Machihata', 'মাছিহাতা', 'machihata.brahmanbaria.gov.bd', NULL, NULL),
(238, 24, 'Sultanpur', 'সুলতানপুর', 'sultanpur.brahmanbaria.gov.bd', NULL, NULL),
(239, 24, 'Ramrail', 'রামরাইল', 'ramrail.brahmanbaria.gov.bd', NULL, NULL),
(240, 24, 'Sadekpur', 'সাদেকপুর', 'sadekpur.brahmanbaria.gov.bd', NULL, NULL),
(241, 24, 'Talsahar', 'তালশহর', 'talsahar.brahmanbaria.gov.bd', NULL, NULL),
(242, 24, 'Natai', 'নাটাই (দক্ষিন)', 'natais.brahmanbaria.gov.bd', NULL, NULL),
(243, 24, 'Natai', 'নাটাই (উত্তর)', 'natain.brahmanbaria.gov.bd', NULL, NULL),
(244, 24, 'Shuhilpur', 'সুহিলপুর', 'shuhilpur.brahmanbaria.gov.bd', NULL, NULL),
(245, 24, 'Bodhal', 'বুধল', 'bodhal.brahmanbaria.gov.bd', NULL, NULL),
(246, 24, 'Majlishpur', 'মজলিশপুর', 'majlishpur.brahmanbaria.gov.bd', NULL, NULL),
(247, 25, 'Mulagram', 'মূলগ্রাম', 'mulagramup.brahmanbaria.gov.bd', NULL, NULL),
(248, 25, 'Mehari', 'মেহারী', 'mehariup.brahmanbaria.gov.bd', NULL, NULL),
(249, 25, 'Badair', 'বাদৈর', 'badairup.brahmanbaria.gov.bd', NULL, NULL),
(250, 25, 'Kharera', 'খাড়েরা', 'khareraup.brahmanbaria.gov.bd', NULL, NULL),
(251, 25, 'Benauty', 'বিনাউটি', 'benautyup.brahmanbaria.gov.bd', NULL, NULL),
(252, 25, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.brahmanbaria.gov.bd', NULL, NULL),
(253, 25, 'Kasbaw', 'কসবা', 'kasbawup.brahmanbaria.gov.bd', NULL, NULL),
(254, 25, 'Kuti', 'কুটি', 'kutiup.brahmanbaria.gov.bd', NULL, NULL),
(255, 25, 'Kayempur', 'কাইমপুর', 'kayempurup.brahmanbaria.gov.bd', NULL, NULL),
(256, 25, 'Bayek', 'বায়েক', 'bayekup.brahmanbaria.gov.bd', NULL, NULL),
(257, 26, 'Chatalpar', 'চাতলপাড়', 'chatalparup.brahmanbaria.gov.bd', NULL, NULL),
(258, 26, 'Bhalakut', 'ভলাকুট', 'bhalakutup.brahmanbaria.gov.bd ', NULL, NULL),
(259, 26, 'Kunda', 'কুন্ডা', 'kundaup.brahmanbaria.gov.bd', NULL, NULL),
(260, 26, 'Goalnagar', 'গোয়ালনগর', 'goalnagarup.brahmanbaria.gov.bd', NULL, NULL),
(261, 26, 'Nasirnagar', 'নাসিরনগর', 'nasirnagarup.brahmanbaria.gov.bd', NULL, NULL),
(262, 26, 'Burishwar', 'বুড়িশ্বর', 'burishwarup.brahmanbaria.gov.bd', NULL, NULL),
(263, 26, 'Fandauk', 'ফান্দাউক', 'fandaukup.brahmanbaria.gov.bd', NULL, NULL),
(264, 26, 'Goniauk', 'গুনিয়াউক', 'goniaukup.brahmanbaria.gov.bd', NULL, NULL),
(265, 26, 'Chapartala', 'চাপৈরতলা', 'chapartalaup.brahmanbaria.gov.bd', NULL, NULL),
(266, 26, 'Dharnondol', 'ধরমন্ডল', 'dharnondolup.brahmanbaria.gov.bd', NULL, NULL),
(267, 26, 'Haripur', 'হরিপুর', 'haripurup.brahmanbaria.gov.bd', NULL, NULL),
(268, 26, 'Purbabhag', 'পূর্বভাগ', 'purbabhagup.brahmanbaria.gov.bd', NULL, NULL),
(269, 26, 'Gokarna', 'গোকর্ণ', 'gokarnaup.brahmanbaria.gov.bd', NULL, NULL),
(270, 27, 'Auraol', 'অরুয়াইল', 'auraolup.brahmanbaria.gov.bd', NULL, NULL),
(271, 27, 'Pakshimuul', 'পাকশিমুল', 'pakshimuulup.brahmanbaria.gov.bd', NULL, NULL),
(272, 27, 'Chunta', 'চুন্টা', 'chuntaup.brahmanbaria.gov.bd', NULL, NULL),
(273, 27, 'Kalikaccha', 'কালীকচ্ছ', 'kalikacchaup.brahmanbaria.gov.bd', NULL, NULL),
(274, 27, 'Panishor', 'পানিশ্বর', 'panishorup.brahmanbaria.gov.bd', NULL, NULL),
(275, 27, 'Sarail', 'সরাইল সদর', 'sarailup.brahmanbaria.gov.bd', NULL, NULL),
(276, 27, 'Noagoun', 'নোয়াগাঁও', 'noagounup.brahmanbaria.gov.bd', NULL, NULL),
(277, 27, 'Shahajadapur', 'শাহজাদাপুর', 'shahajadapurup.brahmanbaria.gov.bd', NULL, NULL),
(278, 27, 'Shahbazpur', 'শাহবাজপুর', 'shahbazpurup.brahmanbaria.gov.bd', NULL, NULL),
(279, 28, 'Ashuganj', 'আশুগঞ্জ সদর', 'ashuganjup.brahmanbaria.gov.bd', NULL, NULL),
(280, 28, 'Charchartala', 'চরচারতলা', 'charchartalaup.brahmanbaria.gov.bd', NULL, NULL),
(281, 28, 'Durgapur', 'দুর্গাপুর', 'durgapurup.brahmanbaria.gov.bd', NULL, NULL),
(282, 28, 'Araishidha', 'আড়াইসিধা', 'araishidhaup.brahmanbaria.gov.bd', NULL, NULL),
(283, 28, 'Talshaharw', 'তালশহর(পঃ)', 'talshaharwup.brahmanbaria.gov.bd', NULL, NULL),
(284, 28, 'Sarifpur', 'শরীফপুর', 'sarifpurup.brahmanbaria.gov.bd', NULL, NULL),
(285, 28, 'Lalpur', 'লালপুর', 'lalpurup.brahmanbaria.gov.bd', NULL, NULL),
(286, 28, 'Tarua', 'তারুয়া', 'taruaup.brahmanbaria.gov.bd', NULL, NULL),
(287, 29, 'Monionda', 'মনিয়ন্দ', 'moniondaup.brahmanbaria.gov.bd', NULL, NULL),
(288, 29, 'Dharkhar', 'ধরখার', 'dharkharup.brahmanbaria.gov.bd', NULL, NULL),
(289, 29, 'Mogra', 'মোগড়া', 'mograup.brahmanbaria.gov.bd', NULL, NULL),
(290, 29, 'Akhauran', 'আখাউড়া (উঃ)', 'akhauranup.brahmanbaria.gov.bd', NULL, NULL),
(291, 29, 'Akhauras', 'আখাউড়া (দঃ)', 'akhaurasup.brahmanbaria.gov.bd', NULL, NULL),
(292, 30, 'Barail', 'বড়াইল', 'barailup.brahmanbaria.gov.bd', NULL, NULL),
(293, 30, 'Birgaon', 'বীরগাঁও', 'birgaonup.brahmanbaria.gov.bd', NULL, NULL),
(294, 30, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.brahmanbaria.gov.bd', NULL, NULL),
(295, 30, 'Nathghar', 'নাটঘর', 'nathgharup.brahmanbaria.gov.bd', NULL, NULL),
(296, 30, 'Biddayakut', 'বিদ্যাকুট', 'biddayakutup.brahmanbaria.gov.bd', NULL, NULL),
(297, 30, 'Nabinagare', 'নবীনগর (পূর্ব)', 'nabinagareup.brahmanbaria.gov.bd', NULL, NULL),
(298, 30, 'Nabinagarw', 'নবীনগর(পশ্চিম)', 'nabinagarwup.brahmanbaria.gov.bd', NULL, NULL),
(299, 30, 'Bitghar', 'বিটঘর', 'bitgharup.brahmanbaria.gov.bd', NULL, NULL),
(300, 30, 'Shibpur', 'শিবপুর', 'shibpurup.brahmanbaria.gov.bd', NULL, NULL),
(301, 30, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.brahmanbaria.gov.bd', NULL, NULL),
(302, 30, 'Jinudpur', 'জিনোদপুর', 'jinudpurup.brahmanbaria.gov.bd', NULL, NULL),
(303, 30, 'Laurfatehpur', 'লাউরফতেপুর', 'laurfatehpurup.brahmanbaria.gov.bd', NULL, NULL),
(304, 30, 'Ibrahimpur', 'ইব্রাহিমপুর', 'ibrahimpurup.brahmanbaria.gov.bd', NULL, NULL),
(305, 30, 'Satmura', 'সাতমোড়া', 'satmuraup.brahmanbaria.gov.bd', NULL, NULL),
(306, 30, 'Shamogram', 'শ্যামগ্রাম', 'shamogramup.brahmanbaria.gov.bd', NULL, NULL),
(307, 30, 'Rasullabad', 'রসুল্লাবাদ', 'rasullabadup.brahmanbaria.gov.bd', NULL, NULL),
(308, 30, 'Barikandi', 'বড়িকান্দি', 'barikandiup.brahmanbaria.gov.bd', NULL, NULL),
(309, 30, 'Salimganj', 'ছলিমগঞ্জ', 'salimganjup.brahmanbaria.gov.bd', NULL, NULL),
(310, 30, 'Ratanpur', 'রতনপুর', 'ratanpurup.brahmanbaria.gov.bd', NULL, NULL),
(311, 30, 'Kaitala (North)', 'কাইতলা (উত্তর)', 'kaitalanup.brahmanbaria.gov.bd', NULL, NULL),
(312, 30, 'Kaitala (South)', 'কাইতলা (দক্ষিন)', 'kaitalasup.brahmanbaria.gov.bd', NULL, NULL),
(313, 31, 'Tazkhali', 'তেজখালী', 'tazkhaliup.brahmanbaria.gov.bd', NULL, NULL),
(314, 31, 'Pahariya Kandi', 'পাহাড়িয়া কান্দি', 'pahariyakandiup.brahmanbaria.gov.bd', NULL, NULL),
(315, 31, 'Dariadulat', 'দরিয়াদৌলত', 'dariadulatup.brahmanbaria.gov.bd', NULL, NULL),
(316, 31, 'Sonarampur', 'সোনারামপুর', 'sonarampurup.brahmanbaria.gov.bd', NULL, NULL),
(317, 31, 'Darikandi', 'দড়িকান্দি', 'darikandiup.brahmanbaria.gov.bd', NULL, NULL),
(318, 31, 'Saifullyakandi', 'ছয়ফুল্লাকান্দি', 'saifullyakandiup.brahmanbaria.gov.bd', NULL, NULL),
(319, 31, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampurup.brahmanbaria.gov.bd', NULL, NULL),
(320, 31, 'Ayabpur', 'আইয়ুবপুর', 'ayabpurup.brahmanbaria.gov.bd', NULL, NULL),
(321, 31, 'Fardabad', 'ফরদাবাদ', 'fardabadup.brahmanbaria.gov.bd', NULL, NULL),
(322, 31, 'Rupushdi', 'রুপসদী পশ্চিম', 'rupushdiup.brahmanbaria.gov.bd', NULL, NULL),
(323, 31, 'Salimabad', 'ছলিমাবাদ', 'salimabadup.brahmanbaria.gov.bd', NULL, NULL),
(324, 31, 'Ujanchar', 'উজানচর পূর্ব', 'ujancharup.brahmanbaria.gov.bd', NULL, NULL),
(325, 31, 'Manikpur', 'মানিকপুর', 'manikpurup.brahmanbaria.gov.bd', NULL, NULL),
(326, 32, 'Bhudanty', 'বুধন্তি', 'bhudantyup.brahmanbaria.gov.bd', NULL, NULL),
(327, 32, 'Chandura', 'চান্দুরা', 'chanduraup.brahmanbaria.gov.bd', NULL, NULL),
(328, 32, 'Ichapura', 'ইছাপুরা', 'ichapuraup.brahmanbaria.gov.bd', NULL, NULL),
(329, 32, 'Champaknagar', 'চম্পকনগর', 'champaknagarup.brahmanbaria.gov.bd', NULL, NULL),
(330, 32, 'Harashpur', 'হরষপুর', 'harashpurup.brahmanbaria.gov.bd', NULL, NULL),
(331, 32, 'Pattan', 'পত্তন', 'pattanup.brahmanbaria.gov.bd', NULL, NULL),
(332, 32, 'Singerbil', 'সিংগারবিল', 'singerbilup.brahmanbaria.gov.bd', NULL, NULL),
(333, 32, 'Bishupor', 'বিষ্ণুপুর', 'bishuporup.brahmanbaria.gov.bd', NULL, NULL),
(334, 32, 'Charislampur', 'চর-ইসলামপুর', 'charislampurup.brahmanbaria.gov.bd', NULL, NULL),
(335, 32, 'Paharpur', 'পাহাড়পুর', 'paharpurup.brahmanbaria.gov.bd', NULL, NULL),
(336, 33, 'Jibtali', 'জীবতলি', 'jibtaliup.rangamati.gov.bd', NULL, NULL),
(337, 33, 'Sapchari', 'সাপছড়ি', 'sapchariup.rangamati.gov.bd', NULL, NULL),
(338, 33, 'Kutukchari', 'কুতুকছড়ি', 'kutukchariup.rangamati.gov.bd', NULL, NULL),
(339, 33, 'Bandukbhanga', 'বন্দুকভাঙ্গা', 'bandukbhangaup.rangamati.gov.bd', NULL, NULL),
(340, 33, 'Balukhali', 'বালুখালী', 'balukhaliup.rangamati.gov.bd', NULL, NULL),
(341, 33, 'Mogban', 'মগবান', 'mogbanup.rangamati.gov.bd', NULL, NULL),
(342, 34, 'Raikhali', 'রাইখালী', 'raikhaliup.rangamati.gov.bd', NULL, NULL),
(343, 34, 'Kaptai', 'কাপ্তাই', 'kaptaiup.rangamati.gov.bd', NULL, NULL),
(344, 34, 'Wagga', 'ওয়াজ্ঞা', 'waggaup.rangamati.gov.bd', NULL, NULL),
(345, 34, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.rangamati.gov.bd', NULL, NULL),
(346, 34, 'Chitmorom', 'চিৎমরম', 'chitmoromup.rangamati.gov.bd', NULL, NULL),
(347, 35, 'Ghagra', 'ঘাগড়া', 'ghagraup.rangamati.gov.bd', NULL, NULL),
(348, 35, 'Fatikchari', 'ফটিকছড়ি', 'fatikchariup.rangamati.gov.bd', NULL, NULL),
(349, 35, 'Betbunia', 'বেতবুনিয়া', 'betbuniaup.rangamati.gov.bd', NULL, NULL),
(350, 35, 'Kalampati', 'কলমপতি', 'kalampatiup.rangamati.gov.bd', NULL, NULL),
(351, 36, 'Sajek', 'সাজেক', 'sajekup.rangamati.gov.bd', NULL, NULL),
(352, 36, 'Amtali', 'আমতলী', 'amtaliup.rangamati.gov.bd', NULL, NULL),
(353, 36, 'Bongoltali', 'বঙ্গলতলী', 'bongoltaliup.rangamati.gov.bd', NULL, NULL),
(354, 36, 'Rupokari', 'রুপকারী', 'rupokariup.rangamati.gov.bd', NULL, NULL),
(355, 36, 'Marisha', 'মারিশ্যা', 'marishaup.rangamati.gov.bd', NULL, NULL),
(356, 36, 'Khedarmara', 'খেদারমারা', 'khedarmaraup.rangamati.gov.bd', NULL, NULL),
(357, 36, 'Sharoyatali', 'সারোয়াতলী', 'sharoyataliup.rangamati.gov.bd', NULL, NULL),
(358, 36, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichariup.rangamati.gov.bd', NULL, NULL),
(359, 37, 'Subalong', 'সুবলং', 'subalongup.rangamati.gov.bd', NULL, NULL),
(360, 37, 'Barkal', 'বরকল', 'barkalup.rangamati.gov.bd', NULL, NULL),
(361, 37, 'Bushanchara', 'ভূষনছড়া', 'bushancharaup.rangamati.gov.bd', NULL, NULL),
(362, 37, 'Aimachara', 'আইমাছড়া', 'aimacharaup.rangamati.gov.bd', NULL, NULL),
(363, 37, 'Borohorina', 'বড় হরিণা', 'borohorinaup.rangamati.gov.bd', NULL, NULL),
(364, 38, 'Langad', 'লংগদু', 'langaduup.rangamati.gov.bd', NULL, NULL),
(365, 38, 'Maeinimukh', 'মাইনীমুখ', 'maeinimukhup.rangamati.gov.bd', NULL, NULL),
(366, 38, 'Vasannadam', 'ভাসান্যাদম', 'vasannadamup.rangamati.gov.bd', NULL, NULL),
(367, 38, 'Bogachattar', 'বগাচতর', 'bogachattarup.rangamati.gov.bd', NULL, NULL),
(368, 38, 'Gulshakhali', 'গুলশাখালী', 'gulshakhaliup.rangamati.gov.bd', NULL, NULL),
(369, 38, 'Kalapakujja', 'কালাপাকুজ্যা', 'kalapakujjaup.rangamati.gov.bd', NULL, NULL),
(370, 38, 'Atarakchara', 'আটারকছড়া', 'atarakcharaup.rangamati.gov.bd', NULL, NULL),
(371, 39, 'Ghilachari', 'ঘিলাছড়ি', 'ghilachariup.rangamati.gov.bd', NULL, NULL),
(372, 39, 'Gaindya', 'গাইন্দ্যা', 'gaindyaup.rangamati.gov.bd', NULL, NULL),
(373, 39, 'Bangalhalia', 'বাঙ্গালহালিয়া', 'bangalhaliaup.rangamati.gov.bd', NULL, NULL),
(374, 40, 'Kengrachari', 'কেংড়াছড়ি', 'kengrachariup.rangamati.gov.bd', NULL, NULL),
(375, 40, 'Belaichari', 'বিলাইছড়ি', 'belaichariup.rangamati.gov.bd', NULL, NULL),
(376, 40, 'Farua', 'ফারুয়া', 'faruaup.rangamati.gov.bd', NULL, NULL),
(377, 41, 'Juraichari', 'জুরাছড়ি', 'juraichariup.rangamati.gov.bd', NULL, NULL),
(378, 41, 'Banajogichara', 'বনযোগীছড়া', 'banajogicharaup.rangamati.gov.bd', NULL, NULL),
(379, 41, 'Moidong', 'মৈদং', 'moidongup.rangamati.gov.bd', NULL, NULL),
(380, 41, 'Dumdumya', 'দুমদুম্যা', 'dumdumyaup.rangamati.gov.bd', NULL, NULL),
(381, 42, 'Sabekkhong', 'সাবেক্ষ্যং', 'sabekkhongup.rangamati.gov.bd', NULL, NULL),
(382, 42, 'Naniarchar', 'নানিয়ারচর', 'naniarcharup.rangamati.gov.bd', NULL, NULL),
(383, 42, 'Burighat', 'বুড়িঘাট', 'burighatup.rangamati.gov.bd', NULL, NULL),
(384, 42, 'Ghilachhari', 'ঘিলাছড়ি', 'ghilachhariup.rangamati.gov.bd', NULL, NULL),
(385, 43, 'Charmatua', 'চরমটুয়া', 'charmatuaup.noakhali.gov.bd', NULL, NULL),
(386, 43, 'Dadpur', 'দাদপুর', 'dadpurup.noakhali.gov.bd', NULL, NULL),
(387, 43, 'Noannoi', 'নোয়ান্নই', 'noannoiup.noakhali.gov.bd', NULL, NULL),
(388, 43, 'Kadirhanif', 'কাদির হানিফ', 'kadirhanifup.noakhali.gov.bd', NULL, NULL),
(389, 43, 'Binodpur', 'বিনোদপুর', 'binodpurup.noakhali.gov.bd', NULL, NULL),
(390, 43, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.noakhali.gov.bd', NULL, NULL),
(391, 43, 'Aujbalia', 'এওজবালিয়া', 'aujbaliaup.noakhali.gov.bd', NULL, NULL),
(392, 43, 'Kaladara', 'কালাদরপ', 'kaladarapup.noakhali.gov.bd', NULL, NULL),
(393, 43, 'Ashwadia', 'অশ্বদিয়া', 'ashwadiaup.noakhali.gov.bd', NULL, NULL),
(394, 43, 'Newajpur', 'নিয়াজপুর', 'newajpurup.noakhali.gov.bd', NULL, NULL),
(395, 43, 'East Charmatua', 'পূর্ব চরমটুয়া', 'eastcharmatuap.noakhali.gov.bd', NULL, NULL),
(396, 43, 'Andarchar', 'আন্ডারচর', 'andarcharup.noakhali.gov.bd', NULL, NULL),
(397, 43, 'Noakhali', 'নোয়াখালী', 'noakhaliup.noakhali.gov.bd', NULL, NULL),
(398, 44, 'Sirajpur', 'সিরাজপুর', 'sirajpurup.noakhali.gov.bd', NULL, NULL),
(399, 44, 'Charparboti', 'চরপার্বতী', 'charparbotiup.noakhali.gov.bd', NULL, NULL),
(400, 44, 'Charhazari', 'চরহাজারী', 'charhazariup.noakhali.gov.bd', NULL, NULL),
(401, 44, 'Charkakra', 'চরকাঁকড়া', 'charkakraup.noakhali.gov.bd', NULL, NULL),
(402, 44, 'Charfakira', 'চরফকিরা', 'charfakiraup.noakhali.gov.bd', NULL, NULL),
(403, 44, 'Musapur', 'মুসাপুর', 'musapurup.noakhali.gov.bd', NULL, NULL),
(404, 44, 'Charelahi', 'চরএলাহী', 'charelahiup.noakhali.gov.bd', NULL, NULL),
(405, 44, 'Rampur', 'রামপুর', 'rampurup.noakhali.gov.bd', NULL, NULL),
(406, 45, 'Amanullapur', 'আমানউল্ল্যাপুর', 'amanullapurup.noakhali.gov.bd', NULL, NULL),
(407, 45, 'Gopalpur', 'গোপালপুর', 'gopalpurup.noakhali.gov.bd', NULL, NULL),
(408, 45, 'Jirtali', 'জিরতলী', 'jirtaliup.noakhali.gov.bd', NULL, NULL),
(409, 45, 'Kutubpur', 'কুতবপুর', 'kutubpurup.noakhali.gov.bd', NULL, NULL),
(410, 45, 'Alyearpur', 'আলাইয়ারপুর', 'alyearpurup.noakhali.gov.bd', NULL, NULL),
(411, 45, 'Chayani', 'ছয়ানী', 'chayaniup.noakhali.gov.bd', NULL, NULL),
(412, 45, 'Rajganj', 'রাজগঞ্জ', 'rajganjup.noakhali.gov.bd', NULL, NULL),
(413, 45, 'Eklashpur', 'একলাশপুর', 'eklashpurup.noakhali.gov.bd', NULL, NULL),
(414, 45, 'Begumganj', 'বেগমগঞ্জ', 'begumganjup.noakhali.gov.bd', NULL, NULL),
(415, 45, 'Mirwarishpur', 'মিরওয়ারিশপুর', 'mirwarishpurup.noakhali.gov.bd', NULL, NULL),
(416, 45, 'Narottampur', 'নরোত্তমপুর', 'narottampurup.noakhali.gov.bd', NULL, NULL),
(417, 45, 'Durgapur', 'দূর্গাপুর', 'durgapurup.noakhali.gov.bd', NULL, NULL),
(418, 45, 'Rasulpur', 'রসুলপুর', 'rasulpurup.noakhali.gov.bd', NULL, NULL),
(419, 45, 'Hajipur', 'হাজীপুর', 'hajipurup.noakhali.gov.bd', NULL, NULL),
(420, 45, 'Sharifpur', 'শরীফপুর', 'sharifpurup.noakhali.gov.bd', NULL, NULL),
(421, 45, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.noakhali.gov.bd', NULL, NULL),
(422, 46, 'Sukhchar', 'সুখচর', 'sukhcharup.noakhali.gov.bd', NULL, NULL),
(423, 46, 'Nolchira', 'নলচিরা', 'nolchiraup.noakhali.gov.bd', NULL, NULL),
(424, 46, 'Charishwar', 'চরঈশ্বর', 'charishwarup.noakhali.gov.bd', NULL, NULL),
(425, 46, 'Charking', 'চরকিং', 'charkingup.noakhali.gov.bd', NULL, NULL),
(426, 46, 'Tomoroddi', 'তমরদ্দি', 'tomoroddiup.noakhali.gov.bd', NULL, NULL),
(427, 46, 'Sonadiya', 'সোনাদিয়া', 'sonadiyaup.noakhali.gov.bd', NULL, NULL),
(428, 46, 'Burirchar', 'বুড়িরচর', 'burircharup.noakhali.gov.bd', NULL, NULL),
(429, 46, 'Jahajmara', 'জাহাজমারা', 'jahajmaraup.noakhali.gov.bd', NULL, NULL),
(430, 46, 'Nijhumdwi', 'নিঝুমদ্বীপ', 'nijhumdwipup.noakhali.gov.bd', NULL, NULL),
(431, 47, 'Charjabbar', 'চরজাব্বার', 'charjabbarup.noakhali.gov.bd', NULL, NULL),
(432, 47, 'Charbata', 'চরবাটা', 'charbataup.noakhali.gov.bd', NULL, NULL),
(433, 47, 'Charclerk', 'চরক্লার্ক', 'charclerkup.noakhali.gov.bd', NULL, NULL),
(434, 47, 'Charwapda', 'চরওয়াপদা', 'charwapdaup.noakhali.gov.bd', NULL, NULL),
(435, 47, 'Charjubilee', 'চরজুবলী', 'charjubileeup.noakhali.gov.bd', NULL, NULL),
(436, 47, 'Charaman Ullah', 'চরআমান উল্যা', 'charamanullahup.noakhali.gov.bd', NULL, NULL),
(437, 47, 'East Charbata', 'পূর্ব চরবাটা', 'eastcharbataup.noakhali.gov.bd', NULL, NULL),
(438, 47, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.noakhali.gov.bd', NULL, NULL),
(439, 48, 'Narottampur', 'নরোত্তমপুর', 'narottampurup1.noakhali.gov.bd', NULL, NULL),
(440, 48, 'Dhanshiri', 'ধানসিঁড়ি', 'dhanshiriup.noakhali.gov.bd', NULL, NULL),
(441, 48, 'Sundalpur', 'সুন্দলপুর', 'sundalpurup.noakhali.gov.bd', NULL, NULL),
(442, 48, 'Ghoshbag', 'ঘোষবাগ', 'ghoshbagup.noakhali.gov.bd', NULL, NULL),
(443, 48, 'Chaprashirhat', 'চাপরাশিরহাট', 'chaprashirhatup.noakhali.gov.bd', NULL, NULL),
(444, 48, 'Dhanshalik', 'ধানশালিক', 'dhanshalikup.noakhali.gov.bd', NULL, NULL),
(445, 48, 'Batoiya', 'বাটইয়া', 'batoiyaup.noakhali.gov.bd', NULL, NULL),
(446, 49, 'Chhatarpaia', 'ছাতারপাইয়া', 'chhatarpaiaup.noakhali.gov.bd', NULL, NULL),
(447, 49, 'Kesharpar', 'কেশরপাড়া', 'kesharparup.noakhali.gov.bd', NULL, NULL),
(448, 49, 'Dumurua', 'ডুমুরুয়া', 'dumuruaup.noakhali.gov.bd', NULL, NULL),
(449, 49, 'Kadra', 'কাদরা', 'kadraup.noakhali.gov.bd', NULL, NULL),
(450, 49, 'Arjuntala', 'অর্জুনতলা', 'arjuntalaup.noakhali.gov.bd', NULL, NULL),
(451, 49, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.noakhali.gov.bd', NULL, NULL),
(452, 49, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup7.noakhali.gov.bd', NULL, NULL),
(453, 49, 'Nabipur', 'নবীপুর', 'nabipurup.noakhali.gov.bd', NULL, NULL),
(454, 49, 'Bejbagh', 'বিজবাগ', 'bejbaghup.noakhali.gov.bd', NULL, NULL),
(455, 50, 'Sahapur', 'সাহাপুর', 'sahapurup.noakhali.gov.bd', NULL, NULL),
(456, 50, 'Ramnarayanpur', 'রামনারায়নপুর', 'ramnarayanpurup.noakhali.gov.bd', NULL, NULL),
(457, 50, 'Porokote', 'পরকোট', 'porokoteup.noakhali.gov.bd', NULL, NULL),
(458, 50, 'Badalkot', 'বাদলকোট', 'badalkotup.noakhali.gov.bd', NULL, NULL),
(459, 50, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.noakhali.gov.bd', NULL, NULL),
(460, 50, 'Hat-Pukuria Ghatlabag', 'হাট-পুকুরিয়া ঘাটলাবাগ', 'hatpukuriaghatlabagup.noakhali.gov.bd', NULL, NULL),
(461, 50, 'Noakhala', 'নোয়াখলা', 'noakhalaup.noakhali.gov.bd', NULL, NULL),
(462, 50, 'Khilpara', 'খিলপাড়া', 'khilparaup.noakhali.gov.bd', NULL, NULL),
(463, 50, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpuru5p.noakhali.gov.bd', NULL, NULL),
(464, 51, 'Joyag', 'জয়াগ', 'joyagup.noakhali.gov.bd', NULL, NULL),
(465, 51, 'Nodona', 'নদনা', 'nodonaup.noakhali.gov.bd', NULL, NULL),
(466, 51, 'Chashirhat', 'চাষীরহাট', 'chashirhatup.noakhali.gov.bd', NULL, NULL),
(467, 51, 'Barogaon', 'বারগাঁও', 'barogaonup.noakhali.gov.bd', NULL, NULL),
(468, 51, 'Ambarnagor', 'অম্বরনগর', 'ambarnagorup.noakhali.gov.bd', NULL, NULL),
(469, 51, 'Nateshwar', 'নাটেশ্বর', 'nateshwarup.noakhali.gov.bd', NULL, NULL),
(470, 51, 'Bajra', 'বজরা', 'bajraup.noakhali.gov.bd', NULL, NULL),
(471, 51, 'Sonapur', 'সোনাপুর', 'sonapurup.noakhali.gov.bd', NULL, NULL),
(472, 51, 'Deoti', 'দেওটি', 'deotiup.noakhali.gov.bd', NULL, NULL),
(473, 51, 'Amishapara', 'আমিশাপাড়া', 'amishaparaup.noakhali.gov.bd', NULL, NULL),
(474, 52, 'Gazipur', 'গাজীপুর', 'gazipurup.chandpur.gov.bd', NULL, NULL),
(475, 52, 'Algidurgapur (North)', 'আলগী দুর্গাপুর (উত্তর)', 'algidurgapurnorthup.chandpur.gov.bd', NULL, NULL),
(476, 52, 'Algidurgapur (South)', 'আলগী দুর্গাপুর (দক্ষিণ)', 'algidurgapursouth.chandpur.gov.bd', NULL, NULL),
(477, 52, 'Nilkamal', 'নীলকমল', 'nilkamalup.chandpur.gov.bd', NULL, NULL),
(478, 52, 'Haimchar', 'হাইমচর', 'haimcharup.chandpur.gov.bd', NULL, NULL),
(479, 52, 'Charbhairabi', 'চরভৈরবী', 'charbhairabiup.chandpur.gov.bd', NULL, NULL),
(480, 53, 'Pathair', 'পাথৈর', 'pathairup.chandpur.gov.bd', NULL, NULL),
(481, 53, 'Bitara', 'বিতারা', 'bitaraup.chandpur.gov.bd', NULL, NULL),
(482, 53, 'Shohodebpur (East)', 'সহদেবপুর (পূর্ব)', 'shohodebpureastup.chandpur.gov.bd', NULL, NULL),
(483, 53, 'Shohodebpur (West)', 'সহদেবপুর (পশ্চিম)', 'shohodebpurwestup.chandpur.gov.bd', NULL, NULL),
(484, 53, 'Kachua (North)', 'কচুয়া (উত্তর)', 'kachuanorthup.chandpur.gov.bd', NULL, NULL),
(485, 53, 'Kachua (South)', 'কচুয়া (দক্ষিণ)', 'kachuasouthup.chandpur.gov.bd', NULL, NULL),
(486, 53, 'Gohat (North)', 'গোহাট (উত্তর)', 'gohatnorthup.chandpur.gov.bd', NULL, NULL),
(487, 53, 'Kadla', 'কাদলা', 'kadlaup.chandpur.gov.bd', NULL, NULL),
(488, 53, 'Ashrafpur', 'আসরাফপুর', 'ashrafpurup.chandpur.gov.bd', NULL, NULL),
(489, 53, 'Gohat (South)', 'গোহাট (দক্ষিণ)', 'gohatsouthup.chandpur.gov.bd', NULL, NULL),
(490, 53, 'Sachar', 'সাচার', 'sacharup.chandpur.gov.bd', NULL, NULL),
(491, 53, 'Koroia', 'কড়ইয়া', 'koroiaup.chandpur.gov.bd', NULL, NULL),
(492, 54, 'Tamta (South)', 'টামটা (দক্ষিণ)', 'tamtasouthup.chandpur.gov.bd', NULL, NULL),
(493, 54, 'Tamta (North)', 'টামটা (উত্তর)', 'tamtanorthup.chandpur.gov.bd', NULL, NULL),
(494, 54, 'Meher (North)', 'মেহের (উত্তর)', 'mehernorthup.chandpur.gov.bd', NULL, NULL),
(495, 54, 'Meher (South)', 'মেহের (দক্ষিণ)', 'mehersouthup.chandpur.gov.bd', NULL, NULL),
(496, 54, 'Suchipara (North)', 'সুচিপাড়া (উত্তর)', 'suchiparanorthup.chandpur.gov.bd', NULL, NULL),
(497, 54, 'Suchipara (South)', 'সুচিপাড়া (দক্ষিণ)', 'suchiparasouthup.chandpur.gov.bd', NULL, NULL),
(498, 54, 'Chitoshi (East)', 'চিতষী (পূর্ব)', 'chitoshieastup.chandpur.gov.bd', NULL, NULL),
(499, 54, 'Raysree (South)', 'রায়শ্রী (দক্ষিন)', 'raysreesouthup.chandpur.gov.bd', NULL, NULL),
(500, 54, 'Raysree (North)', 'রায়শ্রী (উত্তর)', 'raysreenorthup.chandpur.gov.bd', NULL, NULL),
(501, 54, 'Chitoshiwest', 'চিতষী (পশ্চিম)', 'chitoshiwestup.chandpur.gov.bd', NULL, NULL),
(502, 55, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.chandpur.gov.bd', NULL, NULL),
(503, 55, 'Ashikati', 'আশিকাটি', 'ashikatiup.chandpur.gov.bd', NULL, NULL),
(504, 55, 'Shahmahmudpur', 'শাহ্‌ মাহমুদপুর', 'shahmahmudpurup.chandpur.gov.bd', NULL, NULL),
(505, 55, 'Kalyanpur', 'কল্যাণপুর', 'kalyanpurup.chandpur.gov.bd', NULL, NULL),
(506, 55, 'Rampur', 'রামপুর', 'rampurup.chandpur.gov.bd', NULL, NULL),
(507, 55, 'Maishadi', 'মৈশাদী', 'maishadiup.chandpur.gov.bd', NULL, NULL),
(508, 55, 'Tarpurchandi', 'তরপুচন্ডী', 'tarpurchandiup.chandpur.gov.bd', NULL, NULL),
(509, 55, 'Baghadi', 'বাগাদী', 'baghadiup.chandpur.gov.bd', NULL, NULL),
(510, 55, 'Laxmipur Model', 'লক্ষীপুর মডেল', 'laxmipurmodelup.chandpur.gov.bd', NULL, NULL),
(511, 55, 'Hanarchar', 'হানারচর', 'hanarcharup.chandpur.gov.bd', NULL, NULL),
(512, 55, 'Chandra', 'চান্দ্রা', 'chandraup.chandpur.gov.bd', NULL, NULL),
(513, 55, 'Rajrajeshwar', 'রাজরাজেশ্বর', 'rajrajeshwarup.chandpur.gov.bd', NULL, NULL),
(514, 55, 'Ibrahimpur', 'ইব্রাহীমপুর', 'ibrahimpurup.chandpur.gov.bd', NULL, NULL),
(515, 55, 'Balia', 'বালিয়া', 'baliaup.chandpur.gov.bd', NULL, NULL),
(516, 56, 'Nayergaon (North)', 'নায়েরগাঁও (উত্তর)', 'nayergaonnorthup.chandpur.gov.bd', NULL, NULL),
(517, 56, 'Nayergaon (South)', 'নায়েরগাঁও (দক্ষিন)', 'nayergaonsouthup.chandpur.gov.bd', NULL, NULL),
(518, 56, 'Khadergaon', 'খাদেরগাঁও', 'khadergaonup.chandpur.gov.bd', NULL, NULL),
(519, 56, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chandpur.gov.bd', NULL, NULL),
(520, 56, 'Upadi (South)', 'উপাদী (দক্ষিণ)', 'upadisouthup.chandpur.gov.bd', NULL, NULL),
(521, 56, 'Upadi (North)', 'উপাদী (উত্তর)', 'upadinorthup.chandpur.gov.bd', NULL, NULL),
(522, 57, 'Rajargaon (North)', 'রাজারগাঁও (উত্তর)', 'rajargaonnorthup.chandpur.gov.bd', NULL, NULL),
(523, 57, 'Bakila', 'বাকিলা', 'bakilaup.chandpur.gov.bd', NULL, NULL),
(524, 57, 'Kalocho (North)', 'কালচোঁ (উত্তর)', 'kalochonorthup.chandpur.gov.bd', NULL, NULL),
(525, 57, 'Hajiganj Sadar', 'হাজীগঞ্জ সদর', 'hajiganjsadarup.chandpur.gov.bd', NULL, NULL),
(526, 57, 'Kalocho (South)', 'কালচোঁ (দক্ষিণ)', 'kalochosouthup.chandpur.gov.bd', NULL, NULL),
(527, 57, 'Barkul (East)', 'বড়কুল (পূর্ব)', 'barkuleastup.chandpur.gov.bd', NULL, NULL),
(528, 57, 'Barkul (West)', 'বড়কুল (পশ্চিম)', 'barkulwestup.chandpur.gov.bd', NULL, NULL),
(529, 57, 'Hatila (East)', 'হাটিলা (পূর্ব)', 'hatilaeastup.chandpur.gov.bd', NULL, NULL),
(530, 57, 'Hatila (West)', 'হাটিলা (পশ্চিম)', 'hatilawestup.chandpur.gov.bd', NULL, NULL),
(531, 57, 'Gandharbapur (North)', 'গন্ধর্ব্যপুর (উত্তর)', 'gandharbapurnorthup.chandpur.gov.bd', NULL, NULL),
(532, 57, 'Gandharbapur (South)', 'গন্ধর্ব্যপুর (দক্ষিণ)', 'gandharbapursouthup.chandpur.gov.bd', NULL, NULL),
(533, 58, 'Satnal', 'ষাটনল', 'satnalup.chandpur.gov.bd', NULL, NULL),
(534, 58, 'Banganbari', 'বাগানবাড়ী', 'banganbariup.chandpur.gov.bd', NULL, NULL),
(535, 58, 'Sadullapur', 'সাদুল্ল্যাপুর', 'sadullapurup.chandpur.gov.bd', NULL, NULL),
(536, 58, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chandpur.gov.bd', NULL, NULL),
(537, 58, 'Kalakanda', 'কালাকান্দা', 'kalakandaup.chandpur.gov.bd', NULL, NULL),
(538, 58, 'Mohanpur', 'মোহনপুর', 'mohanpurup.chandpur.gov.bd', NULL, NULL),
(539, 58, 'Eklaspur', 'এখলাছপুর', 'eklaspurup.chandpur.gov.bd', NULL, NULL),
(540, 58, 'Jahirabad', 'জহিরাবাদ', 'jahirabadup.chandpur.gov.bd', NULL, NULL),
(541, 58, 'Fatehpur (East)', 'ফতেহপুর (পূর্ব)', 'eastfatehpur.chandpur.gov.bd', NULL, NULL),
(542, 58, 'Fatehpur (West)', 'ফতেহপুর (পশ্চিম)', 'westfatehpurup.chandpur.gov.bd', NULL, NULL),
(543, 58, 'Farajikandi', 'ফরাজীকান্দি', 'farajikandiup.chandpur.gov.bd', NULL, NULL),
(544, 58, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.chandpur.gov.bd', NULL, NULL),
(545, 58, 'Sultanabad', 'সুলতানাবাদ', 'sultanabadup.chandpur.gov.bd', NULL, NULL),
(546, 58, 'Gazra', 'গজরা', 'gazraup.chandpur.gov.bd', NULL, NULL),
(547, 59, 'Balithuba (West)', 'বালিথুবা (পশ্চিম)', 'balithubawestup.chandpur.gov.bd', NULL, NULL),
(548, 59, 'Balithuba (East)', 'বালিথুবা (পূর্ব)', 'balithubaeastup.chandpur.gov.bd', NULL, NULL),
(549, 59, 'Subidpur (East)', 'সুবিদপুর (পূর্ব)', 'subidpureastup.chandpur.gov.bd', NULL, NULL),
(550, 59, 'Subidpur (West)', 'সুবিদপুর (পশ্চিম)', 'subidpurwestup.chandpur.gov.bd', NULL, NULL),
(551, 59, 'Gupti (West)', 'গুপ্তি (পশ্চিম)', 'guptiwestup.chandpur.gov.bd', NULL, NULL),
(552, 59, 'Gupti (East)', 'গুপ্তি (পূর্ব)', 'guptieastup.chandpur.gov.bd', NULL, NULL),
(553, 59, 'Paikpara (North)', 'পাইকপাড়া (উত্তর)', 'paikparanorthup.chandpur.gov.bd', NULL, NULL),
(554, 59, 'Paikpara (South)', 'পাইকপাড়া (দক্ষিণ)', 'paikparasouthup.chandpur.gov.bd', NULL, NULL),
(555, 59, 'Gobindapur (North)', 'গবিন্দপুর (উত্তর)', 'gobindapurnorthup.chandpur.gov.bd', NULL, NULL),
(556, 59, 'Gobindapur (South)', 'গবিন্দপুর (দক্ষিণ)', 'gobindapursouthup.chandpur.gov.bd', NULL, NULL),
(557, 59, 'Chardukhia (East)', 'চরদুখিয়া (পূর্ব)', 'chardukhiaeastup.chandpur.gov.bd', NULL, NULL),
(558, 59, 'Chardukhia (West)', 'চরদুঃখিয়া (পশ্চিম)', 'chardukhiawestup.chandpur.gov.bd', NULL, NULL),
(559, 59, 'Faridgonj (South)', 'ফরিদ্গঞ্জ (দক্ষিণ)', 'faridgonjsouthup.chandpur.gov.bd', NULL, NULL),
(560, 59, 'Rupsha (South)', 'রুপসা (দক্ষিণ)', 'rupshasouthup.chandpur.gov.bd', NULL, NULL),
(561, 59, 'Rupsha (North)', 'রুপসা (উত্তর)', 'rupshanorthup.chandpur.gov.bd', NULL, NULL),
(562, 60, 'Hamsadi (North)', 'হামছাদী (উত্তর)', 'northhamsadiup.lakshmipur.gov.bd', NULL, NULL),
(563, 60, 'Hamsadi (South)', 'হামছাদী (দক্ষিন)', 'southhamsadiup.lakshmipur.gov.bd', NULL, NULL),
(564, 60, 'Dalalbazar', 'দালাল বাজার', 'dalalbazarup.lakshmipur.gov.bd', NULL, NULL),
(565, 60, 'Charruhita', 'চররুহিতা', 'charruhitaup.lakshmipur.gov.bd', NULL, NULL),
(566, 60, 'Parbotinagar', 'পার্বতীনগর', 'parbotinagarup.lakshmipur.gov.bd', NULL, NULL),
(567, 60, 'Bangakha', 'বাঙ্গাখাঁ', 'bangakhaup.lakshmipur.gov.bd', NULL, NULL),
(568, 60, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.lakshmipur.gov.bd', NULL, NULL),
(569, 60, 'Basikpur', 'বশিকপুর', 'basikpurup.lakshmipur.gov.bd', NULL, NULL),
(570, 60, 'Chandrogonj', 'চন্দ্রগঞ্জ', 'chandrogonjup.lakshmipur.gov.bd', NULL, NULL),
(571, 60, 'Nourthjoypur', 'উত্তর জয়পুর', 'nourthjoypurup.lakshmipur.gov.bd', NULL, NULL),
(572, 60, 'Hazirpara', 'হাজিরপাড়া', 'hazirparaup.lakshmipur.gov.bd', NULL, NULL),
(573, 60, 'Charshahi', 'চরশাহী', 'charshahiup.lakshmipur.gov.bd', NULL, NULL),
(574, 60, 'Digli', 'দিঘলী', 'digliup.lakshmipur.gov.bd', NULL, NULL),
(575, 60, 'Laharkandi', 'লাহারকান্দি', 'laharkandiup.lakshmipur.gov.bd', NULL, NULL),
(576, 60, 'Vobanigonj', 'ভবানীগঞ্জ', 'vobanigonjup.lakshmipur.gov.bd', NULL, NULL),
(577, 60, 'Kusakhali', 'কুশাখালী', 'kusakhaliup.lakshmipur.gov.bd', NULL, NULL),
(578, 60, 'Sakchor', 'শাকচর', 'sakchorup.lakshmipur.gov.bd', NULL, NULL),
(579, 60, 'Tearigonj', 'তেয়ারীগঞ্জ', 'tearigonjup.lakshmipur.gov.bd', NULL, NULL),
(580, 60, 'Tumchor', 'টুমচর', 'tumchorup.lakshmipur.gov.bd', NULL, NULL),
(581, 60, 'Charramoni Mohon', 'চররমনী মোহন', 'charramonimohonup.lakshmipur.gov.bd', NULL, NULL),
(582, 61, 'Charkalkini', 'চর কালকিনি', 'charkalkiniup.lakshmipur.gov.bd', NULL, NULL),
(583, 61, 'Shaheberhat', 'সাহেবেরহাট', 'shaheberhatup.lakshmipur.gov.bd', NULL, NULL),
(584, 61, 'Char Martin', 'চর মার্টিন', 'charmartinup.lakshmipur.gov.bd', NULL, NULL),
(585, 61, 'Char Folcon', 'চর ফলকন', 'charfolconup.lakshmipur.gov.bd', NULL, NULL),
(586, 61, 'Patarirhat', 'পাটারীরহাট', 'patarirhatup.lakshmipur.gov.bd', NULL, NULL),
(587, 61, 'Hajirhat', 'হাজিরহাট', 'hajirhatup.lakshmipur.gov.bd', NULL, NULL),
(588, 61, 'Char Kadira', 'চর কাদিরা', 'charkadiraup.lakshmipur.gov.bd', NULL, NULL),
(589, 61, 'Torabgonj', 'তোরাবগঞ্জ', 'torabgonjup.lakshmipur.gov.bd', NULL, NULL),
(590, 61, 'Charlorench', 'চর লরেঞ্চ', 'charlorenchup.lakshmipur.gov.bd', NULL, NULL),
(591, 62, 'North Char Ababil', 'উত্তর চর আবাবিল', 'northcharababilup.lakshmipur.gov.bd', NULL, NULL),
(592, 62, 'North Char Bangshi', 'উত্তর চর বংশী', 'northcharbangshiup.lakshmipur.gov.bd', NULL, NULL),
(593, 62, 'Char Mohana', 'চর মোহনা', 'charmohanaup.lakshmipur.gov.bd', NULL, NULL),
(594, 62, 'Sonapur', 'সোনাপুর', 'sonapurup.lakshmipur.gov.bd', NULL, NULL),
(595, 62, 'Charpata', 'চর পাতা', 'charpataup.lakshmipur.gov.bd', NULL, NULL),
(596, 62, 'Bamni', 'বামনী', 'bamniup.lakshmipur.gov.bd', NULL, NULL),
(597, 62, 'South Char Bangshi', 'দক্ষিন চর বংশী', 'southcharbangshiup.lakshmipur.gov.bd', NULL, NULL),
(598, 62, 'South Char Ababil', 'দক্ষিন চর আবাবিল', 'southcharababilup.lakshmipur.gov.bd', NULL, NULL),
(599, 62, 'Raipur', 'রায়পুর', 'raipurup.lakshmipur.gov.bd', NULL, NULL),
(600, 62, 'Keora', 'কেরোয়া', 'keoraup.lakshmipur.gov.bd', NULL, NULL),
(601, 63, 'Char Poragacha', 'চর পোড়াগাছা', 'charporagachaup.lakshmipur.gov.bd', NULL, NULL),
(602, 63, 'Charbadam', 'চর বাদাম', 'charbadamup.lakshmipur.gov.bd', NULL, NULL),
(603, 63, 'Char Abdullah', 'চর আবদুল্যাহ', 'charabdullahup.lakshmipur.gov.bd', NULL, NULL),
(604, 63, 'Alxendar', 'আলেকজান্ডার', 'alxendarup.lakshmipur.gov.bd', NULL, NULL),
(605, 63, 'Char Algi', 'চর আলগী', 'charalgiup.lakshmipur.gov.bd', NULL, NULL),
(606, 63, 'Char Ramiz', 'চর রমিজ', 'charramizup.lakshmipur.gov.bd', NULL, NULL),
(607, 63, 'Borokheri', 'বড়খেড়ী', 'borokheriup.lakshmipur.gov.bd', NULL, NULL),
(608, 63, 'Chargazi', 'চরগাজী', 'chargaziup.lakshmipur.gov.bd', NULL, NULL),
(609, 64, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.lakshmipur.gov.bd', NULL, NULL),
(610, 64, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.lakshmipur.gov.bd', NULL, NULL),
(611, 64, 'Bhadur', 'ভাদুর', 'bhadurup.lakshmipur.gov.bd', NULL, NULL),
(612, 64, 'Ichhapur', 'ইছাপুর', 'ichhapurup.lakshmipur.gov.bd', NULL, NULL),
(613, 64, 'Chandipur', 'চন্ডিপুর', 'chandipurup.lakshmipur.gov.bd', NULL, NULL),
(614, 64, 'Lamchar', 'লামচর', 'lamcharup.lakshmipur.gov.bd', NULL, NULL),
(615, 64, 'Darbeshpur', 'দরবেশপুর', 'darbeshpurup.lakshmipur.gov.bd', NULL, NULL),
(616, 64, 'Karpara', 'করপাড়া', 'karparaup.lakshmipur.gov.bd', NULL, NULL),
(617, 64, 'Bholakot', 'ভোলাকোট', 'bholakotup.lakshmipur.gov.bd', NULL, NULL),
(618, 64, 'Bhatra', 'ভাটরা', 'bhatraup.lakshmipur.gov.bd', NULL, NULL),
(619, 65, 'Rajanagar', 'রাজানগর', 'rajanagarup.chittagong.gov.bd', NULL, NULL),
(620, 65, 'Hosnabad', 'হোছনাবাদ', 'hosnabadup.chittagong.gov.bd', NULL, NULL),
(621, 65, 'Swanirbor Rangunia', 'স্বনির্ভর রাঙ্গুনিয়া', 'swanirborranguniaup.chittagong.gov.bd', NULL, NULL),
(622, 65, 'Mariumnagar', 'মরিয়মনগর', 'mariumnagarup.chittagong.gov.bd', NULL, NULL),
(623, 65, 'Parua', 'পারুয়া', 'paruaup.chittagong.gov.bd', NULL, NULL),
(624, 65, 'Pomra', 'পোমরা', 'pomraup.chittagong.gov.bd', NULL, NULL),
(625, 65, 'Betagi', 'বেতাগী', 'betagiup.chittagong.gov.bd', NULL, NULL),
(626, 65, 'Sharafbhata', 'সরফভাটা', 'sharafbhataup.chittagong.gov.bd', NULL, NULL),
(627, 65, 'Shilok', 'শিলক', 'shilokup.chittagong.gov.bd', NULL, NULL),
(628, 65, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.chittagong.gov.bd', NULL, NULL),
(629, 65, 'Kodala', 'কোদালা', 'kodalaup.chittagong.gov.bd', NULL, NULL),
(630, 65, 'Islampur', 'ইসলামপুর', 'islampurup.chittagong.gov.bd', NULL, NULL),
(631, 65, 'South Rajanagar', 'দক্ষিণ রাজানগর', 'southrajanagarup.chittagong.gov.bd', NULL, NULL),
(632, 65, 'Lalanagar', 'লালানগর', 'lalanagarup.chittagong.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(633, 66, 'Kumira', 'কুমিরা', 'kumiraup.chittagong.gov.bd', NULL, NULL),
(634, 66, 'Banshbaria', 'বাঁশবারীয়া', 'banshbariaup.chittagong.gov.bd', NULL, NULL),
(635, 66, 'Barabkunda', 'বারবকুন্ড', 'barabkundaup.chittagong.gov.bd', NULL, NULL),
(636, 66, 'Bariadyala', 'বাড়িয়াডিয়ালা', 'bariadyalaup.chittagong.gov.bd', NULL, NULL),
(637, 66, 'Muradpur', 'মুরাদপুর', 'muradpurup.chittagong.gov.bd', NULL, NULL),
(638, 66, 'Saidpur', 'সাঈদপুর', 'saidpurup.chittagong.gov.bd', NULL, NULL),
(639, 66, 'Salimpur', 'সালিমপুর', 'salimpurup.chittagong.gov.bd', NULL, NULL),
(640, 66, 'Sonaichhari', 'সোনাইছড়ি', 'sonaichhariup.chittagong.gov.bd', NULL, NULL),
(641, 66, 'Bhatiari', 'ভাটিয়ারী', 'bhatiariup.chittagong.gov.bd', NULL, NULL),
(642, 67, 'Korerhat', 'করেরহাট', 'korerhatup.chittagong.gov.bd', NULL, NULL),
(643, 67, 'Hinguli', 'হিংগুলি', 'hinguliup.chittagong.gov.bd', NULL, NULL),
(644, 67, 'Jorarganj', 'জোরারগঞ্জ', 'jorarganjup.chittagong.gov.bd', NULL, NULL),
(645, 67, 'Dhoom', 'ধুম', 'dhoomup.chittagong.gov.bd', NULL, NULL),
(646, 67, 'Osmanpur', 'ওসমানপুর', 'osmanpurup.chittagong.gov.bd', NULL, NULL),
(647, 67, 'Ichakhali', 'ইছাখালী', 'ichakhaliup.chittagong.gov.bd', NULL, NULL),
(648, 67, 'Katachhara', 'কাটাছরা', 'katachharaup.chittagong.gov.bd', NULL, NULL),
(649, 67, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chittagong.gov.bd', NULL, NULL),
(650, 67, 'Mirsharai', 'মীরসরাই', 'mirsharaiup.chittagong.gov.bd', NULL, NULL),
(651, 67, 'Mithanala', 'মিঠানালা', 'mithanalaup.chittagong.gov.bd', NULL, NULL),
(652, 67, 'Maghadia', 'মঘাদিয়া', 'maghadiaup.chittagong.gov.bd', NULL, NULL),
(653, 67, 'Khaiyachhara', 'খৈয়াছরা', 'khaiyachharaup.chittagong.gov.bd', NULL, NULL),
(654, 67, 'Mayani', 'মায়ানী', 'mayaniup.chittagong.gov.bd', NULL, NULL),
(655, 67, 'Haitkandi', 'হাইতকান্দি', 'haitkandiup.chittagong.gov.bd', NULL, NULL),
(656, 67, 'Wahedpur', 'ওয়াহেদপুর', 'wahedpurup.chittagong.gov.bd', NULL, NULL),
(657, 67, 'Saherkhali', 'সাহেরখালী', 'saherkhaliup.chittagong.gov.bd', NULL, NULL),
(658, 68, 'Asia', 'আশিয়া', 'asiaup.chittagong.gov.bd', NULL, NULL),
(659, 68, 'Kachuai', 'কাচুয়াই', 'kachuaiup.chittagong.gov.bd', NULL, NULL),
(660, 68, 'Kasiais', 'কাশিয়াইশ', 'kasiaisup.chittagong.gov.bd', NULL, NULL),
(661, 68, 'Kusumpura', 'কুসুমপুরা', 'kusumpuraup.chittagong.gov.bd', NULL, NULL),
(662, 68, 'Kelishahar', 'কেলিশহর', 'kelishaharup.chittagong.gov.bd', NULL, NULL),
(663, 68, 'Kolagaon', 'কোলাগাঁও', 'kolagaonup.chittagong.gov.bd', NULL, NULL),
(664, 68, 'Kharana', 'খরনা', 'kharanaup.chittagong.gov.bd', NULL, NULL),
(665, 68, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd', NULL, NULL),
(666, 68, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd', NULL, NULL),
(667, 68, 'Chanhara', 'ছনহরা', 'chanharaup.chittagong.gov.bd', NULL, NULL),
(668, 68, 'Janglukhain', 'জঙ্গলখাইন', 'janglukhainup.chittagong.gov.bd', NULL, NULL),
(669, 68, 'Jiri', 'জিরি', 'jiriup.chittagong.gov.bd', NULL, NULL),
(670, 68, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd', NULL, NULL),
(671, 68, 'Dakkhin Bhurshi', 'দক্ষিণ ভূর্ষি', 'dakhinbhurshiup.chittagong.gov.bd', NULL, NULL),
(672, 68, 'Dhalghat', 'ধলঘাট', 'dhalghatup.chittagong.gov.bd', NULL, NULL),
(673, 68, 'Bara Uthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd', NULL, NULL),
(674, 68, 'Baralia', 'বরলিয়া', 'baraliaup.chittagong.gov.bd', NULL, NULL),
(675, 68, 'Bhatikhain', 'ভাটিখাইন', 'bhatikhainup.chittagong.gov.bd', NULL, NULL),
(676, 68, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd', NULL, NULL),
(677, 68, 'Sobhandandi', 'শোভনদন্ডী', 'sobhandandiup.chittagong.gov.bd', NULL, NULL),
(678, 68, 'Habilasdwi', 'হাবিলাসদ্বীপ', 'habilasdwipup.chittagong.gov.bd', NULL, NULL),
(679, 68, 'Haidgaon', 'হাইদগাঁও', 'haidgaonup.chittagong.gov.bd', NULL, NULL),
(680, 69, 'Rahmatpur', 'রহমতপুর', 'rahmatpurup.chittagong.gov.bd', NULL, NULL),
(681, 69, 'Harispur', 'হরিশপুর', 'harispurup.chittagong.gov.bd', NULL, NULL),
(682, 69, 'Kalapania', 'কালাপানিয়া', 'kalapaniaup.chittagong.gov.bd', NULL, NULL),
(683, 69, 'Amanullah', 'আমানউল্যা', 'amanullahup.chittagong.gov.bd', NULL, NULL),
(684, 69, 'Santoshpur', 'সন্তোষপুর', 'santoshpurup.chittagong.gov.bd', NULL, NULL),
(685, 69, 'Gachhua', 'গাছুয়া', 'gachhuaup.chittagong.gov.bd', NULL, NULL),
(686, 69, 'Bauria', 'বাউরিয়া', 'bauriaup.chittagong.gov.bd', NULL, NULL),
(687, 69, 'Haramia', 'হারামিয়া', 'haramiaup.chittagong.gov.bd', NULL, NULL),
(688, 69, 'Magdhara', 'মগধরা', 'magdharaup.chittagong.gov.bd', NULL, NULL),
(689, 69, 'Maitbhanga', 'মাইটভাঙ্গা', 'maitbhangaup.chittagong.gov.bd', NULL, NULL),
(690, 69, 'Sarikait', 'সারিকাইত', 'sarikaitup.chittagong.gov.bd', NULL, NULL),
(691, 69, 'Musapur', 'মুছাপুর', 'musapurup.chittagong.gov.bd', NULL, NULL),
(692, 69, 'Azimpur', 'আজিমপুর', 'azimpurup.chittagong.gov.bd', NULL, NULL),
(693, 69, 'Urirchar', 'উড়িরচর', 'urircharup.chittagong.gov.bd', NULL, NULL),
(694, 70, 'Pukuria', 'পুকুরিয়া', 'pukuriaup.chittagong.gov.bd', NULL, NULL),
(695, 70, 'Sadhanpur', 'সাধনপুর', 'sadhanpurup.chittagong.gov.bd', NULL, NULL),
(696, 70, 'Khankhanabad', 'খানখানাবাদ', 'khankhanabadup.chittagong.gov.bd', NULL, NULL),
(697, 70, 'Baharchhara', 'বাহারছড়া', 'baharchharaup.chittagong.gov.bd', NULL, NULL),
(698, 70, 'Kalipur', 'কালীপুর', 'kalipurup.chittagong.gov.bd', NULL, NULL),
(699, 70, 'Bailchhari', 'বৈলছড়ি', 'bailchhariup.chittagong.gov.bd', NULL, NULL),
(700, 70, 'Katharia', 'কাথরিয়া', 'kathariaup.chittagong.gov.bd', NULL, NULL),
(701, 70, 'Saral', 'সরল', 'saralup.chittagong.gov.bd', NULL, NULL),
(702, 70, 'Silk', 'শীলকুপ', 'silkupup.chittagong.gov.bd', NULL, NULL),
(703, 70, 'Chambal', 'চাম্বল', 'chambalup.chittagong.gov.bd', NULL, NULL),
(704, 70, 'Gandamara', 'গন্ডামারা', 'gandamaraup.chittagong.gov.bd', NULL, NULL),
(705, 70, 'Sekherkhil', 'শেখেরখীল', 'sekherkhilup.chittagong.gov.bd', NULL, NULL),
(706, 70, 'Puichhari', 'পুঁইছড়ি', 'puichhariup.chittagong.gov.bd', NULL, NULL),
(707, 70, 'Chhanua', 'ছনুয়া', 'chhanuaup.chittagong.gov.bd', NULL, NULL),
(708, 71, 'Kandhurkhil', 'কধুরখীল', 'kandhurkhilup.chittagong.gov.bd', NULL, NULL),
(709, 71, 'Pashchim Gamdandi', 'পশ্চিম গোমদন্ডী', 'pashchimgamdandiup.chittagong.gov.bd', NULL, NULL),
(710, 71, 'Purba Gomdandi', 'পুর্ব গোমদন্ডী', 'purbagomdandiup.chittagong.gov.bd', NULL, NULL),
(711, 71, 'Sakpura', 'শাকপুরা', 'sakpuraup.chittagong.gov.bd', NULL, NULL),
(712, 71, 'Saroatali', 'সারোয়াতলী', 'saroataliup.chittagong.gov.bd', NULL, NULL),
(713, 71, 'Popadia', 'পোপাদিয়া', 'popadiaup.chittagong.gov.bd', NULL, NULL),
(714, 71, 'Charandwi', 'চরনদ্বীপ', 'charandwipup.chittagong.gov.bd', NULL, NULL),
(715, 71, 'Sreepur-Kharandwi', 'শ্রীপুর-খরন্দীপ', 'sreepurkharandwipup.chittagong.gov.bd', NULL, NULL),
(716, 71, 'Amuchia', 'আমুচিয়া', 'amuchiaup.chittagong.gov.bd', NULL, NULL),
(717, 71, 'Ahla Karaldenga', 'আহল্লা করলডেঙ্গা', 'ahlakaraldengaup.chittagong.gov.bd', NULL, NULL),
(718, 72, 'Boirag', 'বৈরাগ', 'boiragup.chittagong.gov.bd', NULL, NULL),
(719, 72, 'Barasat', 'বারশত', 'barasatup.chittagong.gov.bd', NULL, NULL),
(720, 72, 'Raipur', 'রায়পুর', 'raipurup.chittagong.gov.bd', NULL, NULL),
(721, 72, 'Battali', 'বটতলী', 'battaliup.chittagong.gov.bd', NULL, NULL),
(722, 72, 'Barumchara', 'বরম্নমচড়া', 'barumcharaup.chittagong.gov.bd', NULL, NULL),
(723, 72, 'Baroakhan', 'বারখাইন', 'baroakhanup.chittagong.gov.bd', NULL, NULL),
(724, 72, 'Anwara', 'আনোয়ারা', 'anwaraup.chittagong.gov.bd', NULL, NULL),
(725, 72, 'Chatari', 'চাতরী', 'chatariup.chittagong.gov.bd', NULL, NULL),
(726, 72, 'Paraikora', 'পরৈকোড়া', 'paraikoraup.chittagong.gov.bd', NULL, NULL),
(727, 72, 'Haildhar', 'হাইলধর', 'haildharup.chittagong.gov.bd', NULL, NULL),
(728, 72, 'Juidandi', 'জুঁইদন্ডী', 'juidandiup.chittagong.gov.bd', NULL, NULL),
(729, 73, 'Kanchanabad', 'কাঞ্চনাবাদ', 'kanchanabadup.chittagong.gov.bd', NULL, NULL),
(730, 73, 'Joara', 'জোয়ারা', 'joaraup.chittagong.gov.bd', NULL, NULL),
(731, 73, 'Barkal', 'বরকল', 'barkalup.chittagong.gov.bd', NULL, NULL),
(732, 73, 'Barama', 'বরমা', 'baramaup.chittagong.gov.bd', NULL, NULL),
(733, 73, 'Bailtali', 'বৈলতলী', 'bailtaliup.chittagong.gov.bd', NULL, NULL),
(734, 73, 'Satbaria', 'সাতবাড়িয়া', 'satbariaup.chittagong.gov.bd', NULL, NULL),
(735, 73, 'Hashimpur', 'হাশিমপুর', 'hashimpurup.chittagong.gov.bd', NULL, NULL),
(736, 73, 'Dohazari', 'দোহাজারী', 'dohazariup.chittagong.gov.bd', NULL, NULL),
(737, 73, 'Dhopachhari', 'ধোপাছড়ী', 'dhopachhariup.chittagong.gov.bd', NULL, NULL),
(738, 74, 'Charati', 'চরতী', 'charatiup.chittagong.gov.bd', NULL, NULL),
(739, 74, 'Khagaria', 'খাগরিয়া', 'khagariaup.chittagong.gov.bd', NULL, NULL),
(740, 74, 'Nalua', 'নলুয়া', 'naluaup.chittagong.gov.bd', NULL, NULL),
(741, 74, 'Kanchana', 'কাঞ্চনা', 'kanchanaup.chittagong.gov.bd', NULL, NULL),
(742, 74, 'Amilaisi', 'আমিলাইশ', 'amilaisiup.chittagong.gov.bd', NULL, NULL),
(743, 74, 'Eochiai', 'এওচিয়া', 'eochiaiup.chittagong.gov.bd', NULL, NULL),
(744, 74, 'Madarsa', 'মাদার্শা', 'madarsaup.chittagong.gov.bd', NULL, NULL),
(745, 74, 'Dhemsa', 'ঢেমশা', 'dhemsaup.chittagong.gov.bd', NULL, NULL),
(746, 74, 'Paschim Dhemsa', 'পশ্চিম ঢেমশা', 'paschimdhemsaup.chittagong.gov.bd', NULL, NULL),
(747, 74, 'Keochia', 'কেঁওচিয়া', 'keochiaup.chittagong.gov.bd', NULL, NULL),
(748, 74, 'Kaliais', 'কালিয়াইশ', 'kaliaisup.chittagong.gov.bd', NULL, NULL),
(749, 74, 'Bazalia', 'বাজালিয়া', 'bazaliaup.chittagong.gov.bd', NULL, NULL),
(750, 74, 'Puranagar', 'পুরানগড়', 'puranagarup.chittagong.gov.bd', NULL, NULL),
(751, 74, 'Sadaha', 'ছদাহা', 'sadahaup.chittagong.gov.bd', NULL, NULL),
(752, 74, 'Satkania', 'সাতকানিয়া', 'satkaniaup.chittagong.gov.bd', NULL, NULL),
(753, 74, 'Sonakania', 'সোনাকানিয়া', 'sonakaniaup.chittagong.gov.bd', NULL, NULL),
(754, 75, 'Padua', 'পদুয়া', 'paduaup.chittagong.gov.bd', NULL, NULL),
(755, 75, 'Barahatia', 'বড়হাতিয়া', 'barahatiaup.chittagong.gov.bd', NULL, NULL),
(756, 75, 'Amirabad', 'আমিরাবাদ', 'amirabadup.chittagong.gov.bd', NULL, NULL),
(757, 75, 'Charamba', 'চরম্বা', 'charambaup.chittagong.gov.bd', NULL, NULL),
(758, 75, 'Kalauzan', 'কলাউজান', 'kalauzanup.chittagong.gov.bd', NULL, NULL),
(759, 75, 'Lohagara', 'লোহাগাড়া', 'lohagaraup.chittagong.gov.bd', NULL, NULL),
(760, 75, 'Putibila', 'পুটিবিলা', 'putibilaup.chittagong.gov.bd', NULL, NULL),
(761, 75, 'Chunati', 'চুনতি', 'chunatiup.chittagong.gov.bd', NULL, NULL),
(762, 75, 'Adhunagar', 'আধুনগর', 'adhunagarup.chittagong.gov.bd', NULL, NULL),
(763, 76, 'Farhadabad', 'ফরহাদাবাদ', 'farhadabadup.chittagong.gov.bd', NULL, NULL),
(764, 76, 'Dhalai', 'ধলই', 'dhalaiup.chittagong.gov.bd', NULL, NULL),
(765, 76, 'Mirjapur', 'মির্জাপুর', 'mirjapurup.chittagong.gov.bd', NULL, NULL),
(766, 76, 'Nangolmora', 'নাঙ্গলমোরা', 'nangolmoraup.chittagong.gov.bd', NULL, NULL),
(767, 76, 'Gomanmordan', 'গুমানমর্দ্দন', 'gomanmordanup.chittagong.gov.bd', NULL, NULL),
(768, 76, 'Chipatali', 'ছিপাতলী', 'chipataliup.chittagong.gov.bd', NULL, NULL),
(769, 76, 'Mekhal', 'মেখল', 'mekhalup.chittagong.gov.bd', NULL, NULL),
(770, 76, 'Garduara', 'গড়দুয়ারা', 'garduaraup.chittagong.gov.bd', NULL, NULL),
(771, 76, 'Fathepur', 'ফতেপুর', 'fathepurup.chittagong.gov.bd', NULL, NULL),
(772, 76, 'Chikondandi', 'চিকনদন্ডী', 'chikondandiup.chittagong.gov.bd', NULL, NULL),
(773, 76, 'Uttar Madrasha', 'উত্তর মাদার্শা', 'uttarmadrashaup.chittagong.gov.bd', NULL, NULL),
(774, 76, 'Dakkin Madrasha', 'দক্ষিন মাদার্শা', 'dakkinmadrashaup.chittagong.gov.bd', NULL, NULL),
(775, 76, 'Sikarpur', 'শিকারপুর', 'sikarpurup.chittagong.gov.bd', NULL, NULL),
(776, 76, 'Budirchar', 'বুডিরশ্চর', 'budircharup.chittagong.gov.bd', NULL, NULL),
(777, 76, 'Hathazari', 'হাটহাজারী', 'hathazariup.chittagong.gov.bd', NULL, NULL),
(778, 77, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.chittagong.gov.bd', NULL, NULL),
(779, 77, 'Baganbazar', 'বাগান বাজার', 'baganbazarup.chittagong.gov.bd', NULL, NULL),
(780, 77, 'Dantmara', 'দাঁতমারা', 'dantmaraup.chittagong.gov.bd', NULL, NULL),
(781, 77, 'Narayanhat', 'নারায়নহাট', 'narayanhatup.chittagong.gov.bd', NULL, NULL),
(782, 77, 'Bhujpur', 'ভূজপুর', 'bhujpurup.chittagong.gov.bd', NULL, NULL),
(783, 77, 'Harualchari', 'হারুয়ালছড়ি', 'harualchariup.chittagong.gov.bd', NULL, NULL),
(784, 77, 'Paindong', 'পাইনদং', 'paindongup.chittagong.gov.bd', NULL, NULL),
(785, 77, 'Kanchannagor', 'কাঞ্চনগর', 'kanchannagorup.chittagong.gov.bd', NULL, NULL),
(786, 77, 'Sunderpur', 'সুনদরপুর', 'sunderpurup.chittagong.gov.bd', NULL, NULL),
(787, 77, 'Suabil', 'সুয়াবিল', 'Suabilup.chittagong.gov.bd', NULL, NULL),
(788, 77, 'Abdullapur', 'আবদুল্লাপুর', 'abdullapurup.chittagong.gov.bd', NULL, NULL),
(789, 77, 'Samitirhat', 'সমিতির হাট', 'samitirhatup.chittagong.gov.bd', NULL, NULL),
(790, 77, 'Jafathagar', 'জাফতনগর', 'jafathagarup.chittagong.gov.bd', NULL, NULL),
(791, 77, 'Bokhtapur', 'বক্তপুর', 'bokhtapurup.chittagong.gov.bd', NULL, NULL),
(792, 77, 'Roshangiri', 'রোসাংগিরী', 'roshangiriup.chittagong.gov.bd', NULL, NULL),
(793, 77, 'Nanupur', 'নানুপুর', 'nanupurup.chittagong.gov.bd', NULL, NULL),
(794, 77, 'Lelang', 'লেলাং', 'lelangup.chittagong.gov.bd', NULL, NULL),
(795, 77, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.chittagong.gov.bd', NULL, NULL),
(796, 78, 'Raozan', 'রাউজান', 'raozanup.chittagong.gov.bd', NULL, NULL),
(797, 78, 'Bagoan', 'বাগোয়ান', 'bagoanup.chittagong.gov.bd', NULL, NULL),
(798, 78, 'Binajuri', 'বিনাজুরী', 'binajuriup.chittagong.gov.bd', NULL, NULL),
(799, 78, 'Chikdair', 'চিকদাইর', 'chikdairup.chittagong.gov.bd', NULL, NULL),
(800, 78, 'Dabua', 'ডাবুয়া', 'dabuaup.chittagong.gov.bd', NULL, NULL),
(801, 78, 'Purbagujra', 'পূর্ব গুজরা', 'purbagujraup.chittagong.gov.bd', NULL, NULL),
(802, 78, 'Paschim Gujra', 'পশ্চিম গুজরা', 'paschimgujraup.chittagong.gov.bd', NULL, NULL),
(803, 78, 'Gohira', 'গহিরা', 'gohiraup.chittagong.gov.bd', NULL, NULL),
(804, 78, 'Holdia', 'হলদিয়া', 'holdiaup.chittagong.gov.bd', NULL, NULL),
(805, 78, 'Kodolpur', 'কদলপূর', 'kodolpurup.chittagong.gov.bd', NULL, NULL),
(806, 78, 'Noapara', 'নোয়াপাড়া', 'noaparaup.chittagong.gov.bd', NULL, NULL),
(807, 78, 'Pahartali', 'পাহাড়তলী', 'pahartaliup.chittagong.gov.bd', NULL, NULL),
(808, 78, 'Urkirchar', 'উড়কিরচর', 'urkircharup.chittagong.gov.bd', NULL, NULL),
(809, 78, 'Nowajushpur', 'নওয়াজিশপুর', 'nowajushpurup.chittagong.gov.bd', NULL, NULL),
(810, 79, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd', NULL, NULL),
(811, 79, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd', NULL, NULL),
(812, 79, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd', NULL, NULL),
(813, 79, 'Barauthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd', NULL, NULL),
(814, 79, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd', NULL, NULL),
(815, 80, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.coxsbazar.gov.bd', NULL, NULL),
(816, 80, 'Islampur', 'ইসলামপুর', 'islampurup.coxsbazar.gov.bd', NULL, NULL),
(817, 80, 'Pokkhali', 'পোকখালী', 'pokkhaliup.coxsbazar.gov.bd', NULL, NULL),
(818, 80, 'Eidgaon', 'ঈদগাঁও', 'eidgaonup.coxsbazar.gov.bd', NULL, NULL),
(819, 80, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.coxsbazar.gov.bd', NULL, NULL),
(820, 80, 'Chowfaldandi', 'চৌফলদন্ডী', 'chowfaldandi.coxsbazar.gov.bd', NULL, NULL),
(821, 80, 'Varuakhali', 'ভারুয়াখালী', 'varuakhaliup.coxsbazar.gov.bd', NULL, NULL),
(822, 80, 'Pmkhali', 'পিএমখালী', 'pmkhaliup.coxsbazar.gov.bd', NULL, NULL),
(823, 80, 'Khurushkhul', 'খুরুশকুল', 'khurushkhulup.coxsbazar.gov.bd', NULL, NULL),
(824, 80, 'Jhilongjha', 'ঝিলংঝা', 'jhilongjhaup.coxsbazar.gov.bd', NULL, NULL),
(825, 81, 'Kakhara', 'কাকারা', 'Kakharaup.coxsbazar.gov.bd', NULL, NULL),
(826, 81, 'Kaiar Bil', 'কাইয়ার বিল', 'kaiarbilup.coxsbazar.gov.bd', NULL, NULL),
(827, 81, 'Konakhali', 'কোনাখালী', 'konakhaliup.coxsbazar.gov.bd', NULL, NULL),
(828, 81, 'Khuntakhali', 'খুটাখালী', 'khuntakhaliup.coxsbazar.gov.bd', NULL, NULL),
(829, 81, 'Chiringa', 'চিরিঙ্গা', 'chiringaup.coxsbazar.gov.bd', NULL, NULL),
(830, 81, 'Demusia', 'ঢেমুশিয়া', 'demusiaup.coxsbazar.gov.bd', NULL, NULL),
(831, 81, 'Dulahazara', 'ডুলাহাজারা', 'dulahazaraup.coxsbazar.gov.bd', NULL, NULL),
(832, 81, 'Paschim Bara Bheola', 'পশ্চিম বড় ভেওলা', 'paschimbarabheolaup.coxsbazar.gov.bd', NULL, NULL),
(833, 81, 'Badarkhali', 'বদরখালী', 'badarkhaliup.coxsbazar.gov.bd', NULL, NULL),
(834, 81, 'Bamobil Chari', 'বামু বিলছড়ি', 'bamobilchariup.coxsbazar.gov.bd', NULL, NULL),
(835, 81, 'Baraitali', 'বড়ইতলী', 'baraitaliup.coxsbazar.gov.bd', NULL, NULL),
(836, 81, 'Bheola Manik Char', 'ভেওলা মানিক চর', 'bheolamanikcharup.coxsbazar.gov.bd', NULL, NULL),
(837, 81, 'Saharbil', 'শাহারবিল', 'saharbilup.coxsbazar.gov.bd', NULL, NULL),
(838, 81, 'Surajpur Manikpur', 'সুরজপুর মানিকপুর', 'surajpurmanikpurup.coxsbazar.gov.bd', NULL, NULL),
(839, 81, 'Harbang', 'হারবাঙ্গ', 'harbangup.coxsbazar.gov.bd', NULL, NULL),
(840, 81, 'Fashiakhali', 'ফাঁসিয়াখালী', 'fashiakhaliup.coxsbazar.gov.bd', NULL, NULL),
(841, 82, 'Ali Akbar Deil', 'আলি আকবর ডেইল', 'aliakbardeilup.coxsbazar.gov.bd', NULL, NULL),
(842, 82, 'Uttar Dhurung', 'উত্তর ধুরুং', 'uttardhurungup.coxsbazar.gov.bd', NULL, NULL),
(843, 82, 'Kaiyarbil', 'কৈয়ারবিল', 'kaiyarbilup.coxsbazar.gov.bd', NULL, NULL),
(844, 82, 'Dakshi Dhurung', 'দক্ষিণ ধুরুং', 'dakshidhurungup.coxsbazar.gov.bd', NULL, NULL),
(845, 82, 'Baragho', 'বড়ঘোপ', 'baraghopup.coxsbazar.gov.bd', NULL, NULL),
(846, 82, 'Lemsikhali', 'লেমসিখালী', 'lemsikhaliup.coxsbazar.gov.bd', NULL, NULL),
(847, 83, 'Rajapalong', 'রাজাপালং', 'rajapalongup.coxsbazar.gov.bd', NULL, NULL),
(848, 83, 'Jaliapalong', 'জালিয়াপালং', 'jaliapalongup.coxsbazar.gov.bd', NULL, NULL),
(849, 83, 'Holdiapalong', 'হলদিয়াপালং', 'holdiapalongup.coxsbazar.gov.bd', NULL, NULL),
(850, 83, 'Ratnapalong', 'রত্নাপালং', 'ratnapalongup.coxsbazar.gov.bd', NULL, NULL),
(851, 83, 'Palongkhali', 'পালংখালী', 'palongkhali.coxsbazar.gov.bd', NULL, NULL),
(852, 84, 'Boro Moheshkhali', 'বড় মহেশখালী', 'boramoheshkhaliup.coxsbazar.gov.bd', NULL, NULL),
(853, 84, 'Choto Moheshkhali', 'ছোট মহেশখালী', 'chotamoheshkhaliup.coxsbazar.gov.bd', NULL, NULL),
(854, 84, 'Shaplapur', 'শাপলাপুর', 'shaplapurup.coxsbazar.gov.bd', NULL, NULL),
(855, 84, 'Kutubjum', 'কুতুবজোম', 'kutubjumup.coxsbazar.gov.bd', NULL, NULL),
(856, 84, 'Hoanak', 'হোয়ানক', 'hoanakup.coxsbazar.gov.bd', NULL, NULL),
(857, 84, 'Kalarmarchhara', 'কালারমারছড়া', 'kalarmarchharaup.coxsbazar.gov.bd', NULL, NULL),
(858, 84, 'Matarbari', 'মাতারবাড়ী', 'matarbariup.coxsbazar.gov.bd', NULL, NULL),
(859, 84, 'Dhalghata', 'ধলঘাটা', 'dhalghataup.coxsbazar.gov.bd', NULL, NULL),
(860, 85, 'Ujantia', 'উজানটিয়া', 'ujantiaup.coxsbazar.gov.bd', NULL, NULL),
(861, 85, 'Taitong', 'টাইটং', 'taitongup.coxsbazar.gov.bd', NULL, NULL),
(862, 85, 'Pekua', 'পেকুয়া', 'pekuaup.coxsbazar.gov.bd', NULL, NULL),
(863, 85, 'Barabakia', 'বড় বাকিয়া', 'barabakiaup.coxsbazar.gov.bd', NULL, NULL),
(864, 85, 'Magnama', 'মগনামা', 'magnamaup.coxsbazar.gov.bd', NULL, NULL),
(865, 85, 'Rajakhali', 'রাজাখালী', 'rajakhaliup.coxsbazar.gov.bd', NULL, NULL),
(866, 85, 'Shilkhali', 'শীলখালী', 'shilkhaliup.coxsbazar.gov.bd', NULL, NULL),
(867, 86, 'Fotekharkul', 'ফতেখাঁরকুল', 'fotekharkulup.coxsbazar.gov.bd', NULL, NULL),
(868, 86, 'Rajarkul', 'রাজারকুল', 'rajarkulup.coxsbazar.gov.bd', NULL, NULL),
(869, 86, 'Rashidnagar', 'রশীদনগর', 'rashidnagarup.coxsbazar.gov.bd', NULL, NULL),
(870, 86, 'Khuniapalong', 'খুনিয়াপালং', 'khuniapalongup.coxsbazar.gov.bd', NULL, NULL),
(871, 86, 'Eidghar', 'ঈদগড়', 'eidgharup.coxsbazar.gov.bd', NULL, NULL),
(872, 86, 'Chakmarkul', 'চাকমারকুল', 'chakmarkulup.coxsbazar.gov.bd', NULL, NULL),
(873, 86, 'Kacchapia', 'কচ্ছপিয়া', 'kacchapiaup.coxsbazar.gov.bd', NULL, NULL),
(874, 86, 'Kauwarkho', 'কাউয়ারখোপ', 'kauwarkhopup.coxsbazar.gov.bd', NULL, NULL),
(875, 86, 'Dakkhin Mithachhari', 'দক্ষিণ মিঠাছড়ি', 'dakkhinmithachhariup.coxsbazar.gov.bd', NULL, NULL),
(876, 86, 'Jouarianala', 'জোয়ারিয়া নালা', 'jouarianalaup.coxsbazar.gov.bd', NULL, NULL),
(877, 86, 'Garjoniya', 'গর্জনিয়া', 'garjoniyaup.coxsbazar.gov.bd', NULL, NULL),
(878, 87, 'Subrang', 'সাবরাং', 'subrangup.coxsbazar.gov.bd', NULL, NULL),
(879, 87, 'Baharchara', 'বাহারছড়া', 'baharcharaup.coxsbazar.gov.bd', NULL, NULL),
(880, 87, 'Hnila', 'হ্নীলা', 'hnilaup.coxsbazar.gov.bd', NULL, NULL),
(881, 87, 'Whykong', 'হোয়াইক্যং', 'whykongup.coxsbazar.gov.bd', NULL, NULL),
(882, 87, 'Saintmartin', 'সেন্ট মার্টিন', 'saintmartinup.coxsbazar.gov.bd', NULL, NULL),
(883, 87, 'Teknaf Sadar', 'টেকনাফ সদর', 'teknafsadarup.coxsbazar.gov.bd', NULL, NULL),
(884, 88, 'Khagrachhari Sadar', 'খাগরাছড়ি সদর', 'sadarup.khagrachhari.gov.bd', NULL, NULL),
(885, 88, 'Golabari', 'গোলাবাড়ী', 'golabariup.khagrachhari.gov.bd', NULL, NULL),
(886, 88, 'Parachara', 'পেরাছড়া', 'paracharaup.khagrachhari.gov.bd', NULL, NULL),
(887, 88, 'Kamalchari', 'কমলছড়ি', 'kamalchariup.khagrachhari.gov.bd', NULL, NULL),
(888, 89, 'Merung', 'মেরুং', 'merungup.khagrachhari.gov.bd', NULL, NULL),
(889, 89, 'Boalkhali', 'বোয়ালখালী', 'boalkhaliup.khagrachhari.gov.bd', NULL, NULL),
(890, 89, 'Kabakhali', 'কবাখালী', 'kabakhaliup.khagrachhari.gov.bd', NULL, NULL),
(891, 89, 'Dighinala', 'দিঘীনালা', 'dighinalaup.khagrachhari.gov.bd', NULL, NULL),
(892, 89, 'Babuchara', 'বাবুছড়া', 'babucharaup.khagrachhari.gov.bd', NULL, NULL),
(893, 90, 'Logang', 'লোগাং', 'logangup.khagrachhari.gov.bd', NULL, NULL),
(894, 90, 'Changi', 'চেংগী', 'changiup.khagrachhari.gov.bd', NULL, NULL),
(895, 90, 'Panchari', 'পানছড়ি', 'panchariup.khagrachhari.gov.bd', NULL, NULL),
(896, 90, 'Latiban', 'লতিবান', 'latibanup.khagrachhari.gov.bd', NULL, NULL),
(897, 91, 'Dullyatali', 'দুল্যাতলী', 'dullyataliup.khagrachhari.gov.bd', NULL, NULL),
(898, 91, 'Barmachari', 'বর্মাছড়ি', 'barmachariup.khagrachhari.gov.bd', NULL, NULL),
(899, 91, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhariup.khagrachhari.gov.bd', NULL, NULL),
(900, 92, 'Bhaibonchara', 'ভাইবোনছড়া', 'bhaiboncharaup.khagrachhari.gov.bd', NULL, NULL),
(901, 92, 'Mahalchari', 'মহালছড়ি', 'mahalchariup.khagrachhari.gov.bd', NULL, NULL),
(902, 92, 'Mobachari', 'মুবাছড়ি', 'mobachariup.khagrachhari.gov.bd', NULL, NULL),
(903, 92, 'Kayanghat', 'ক্যায়াংঘাট', 'kayanghatup.khagrachhari.gov.bd', NULL, NULL),
(904, 92, 'Maischari', 'মাইসছড়ি', 'maischariup.khagrachhari.gov.bd', NULL, NULL),
(905, 93, 'Manikchari', 'মানিকছড়ি', 'manikchariup.khagrachhari.gov.bd', NULL, NULL),
(906, 93, 'Batnatali', 'বাটনাতলী', 'batnataliup.khagrachhari.gov.bd', NULL, NULL),
(907, 93, 'Jogyachola', 'যোগ্যছোলা', 'jogyacholaup.khagrachhari.gov.bd', NULL, NULL),
(908, 93, 'Tintahari', 'তিনটহরী', 'tintahariup.khagrachhari.gov.bd', NULL, NULL),
(909, 94, 'Ramgarh', 'রামগড়', 'ramgarhup.khagrachhari.gov.bd', NULL, NULL),
(910, 94, 'Patachara', 'পাতাছড়া', 'patacharaup.khagrachhari.gov.bd', NULL, NULL),
(911, 94, 'Hafchari', 'হাফছড়ি', 'hafchariup.khagrachhari.gov.bd', NULL, NULL),
(912, 95, 'Taindong', 'তাইন্দং', 'taindongup.khagrachhari.gov.bd', NULL, NULL),
(913, 95, 'Tabalchari', 'তবলছড়ি', 'tabalchariup.khagrachhari.gov.bd', NULL, NULL),
(914, 95, 'Barnal', 'বর্ণাল', 'barnalup.khagrachhari.gov.bd', NULL, NULL),
(915, 95, 'Gomti', 'গোমতি', 'gomtiup.khagrachhari.gov.bd', NULL, NULL),
(916, 95, 'Balchari', 'বেলছড়ি', 'balchariup.khagrachhari.gov.bd', NULL, NULL),
(917, 95, 'Matiranga', 'মাটিরাঙ্গা', 'matirangaup.khagrachhari.gov.bd', NULL, NULL),
(918, 95, 'Guimara', 'গুইমারা', 'guimaraup.khagrachhari.gov.bd', NULL, NULL),
(919, 95, 'Amtali', 'আমতলি', 'amtaliup.khagrachhari.gov.bd', NULL, NULL),
(920, 97, 'Rajbila', 'রাজবিলা', 'rajbilaup.bandarban.gov.bd', NULL, NULL),
(921, 97, 'Tongkaboty', 'টংকাবতী', 'tongkabotyup.bandarban.gov.bd', NULL, NULL),
(922, 97, 'Suwalok', 'সুয়ালক', 'suwalokup.bandarban.gov.bd', NULL, NULL),
(923, 97, 'Bandarban Sadar', 'বান্দরবান সদর', 'bandarbansadarup.bandarban.gov.bd', NULL, NULL),
(924, 97, 'Kuhalong', 'কুহালং', 'kuhalongup.bandarban.gov.bd', NULL, NULL),
(925, 98, 'Alikadam Sadar', 'আলীকদম সদর', 'alikadamsadarup.bandarban.gov.bd', NULL, NULL),
(926, 98, 'Chwekhyong', 'চৈক্ষ্যং', 'chwekhyongup.bandarban.gov.bd', NULL, NULL),
(927, 99, 'Naikhyongchari Sadar', 'নাইক্ষ্যংছড়ি সদর', 'naikhyongcharisadarup.bandarban.gov.bd', NULL, NULL),
(928, 99, 'Gumdhum', 'ঘুমধুম', 'gumdhumup.bandarban.gov.bd', NULL, NULL),
(929, 99, 'Baishari', 'বাইশারী', 'baishariup.bandarban.gov.bd', NULL, NULL),
(930, 99, 'Sonaychari', 'সোনাইছড়ি', 'sonaychariup.bandarban.gov.bd', NULL, NULL),
(931, 99, 'Duwchari', 'দোছড়ি', 'duwchariup.bandarban.gov.bd', NULL, NULL),
(932, 100, 'Rowangchari Sadar', 'রোয়াংছড়ি সদর', 'rowangcharisadarup.bandarban.gov.bd', NULL, NULL),
(933, 100, 'Taracha', 'তারাছা', 'tarachaup.bandarban.gov.bd', NULL, NULL),
(934, 100, 'Alekyong', 'আলেক্ষ্যং', 'alekyongup.bandarban.gov.bd', NULL, NULL),
(935, 100, 'Nawapotong', 'নোয়াপতং', 'nawapotongup.bandarban.gov.bd', NULL, NULL),
(936, 101, 'Gajalia', 'গজালিয়া', 'gajaliaup.bandarban.gov.bd', NULL, NULL),
(937, 101, 'Lama Sadar', 'লামা সদর', 'lamasadarup.bandarban.gov.bd', NULL, NULL),
(938, 101, 'Fasiakhali', 'ফাসিয়াখালী', 'fasiakhaliup.bandarban.gov.bd', NULL, NULL),
(939, 101, 'Fythong', 'ফাইতং', 'fythongup.bandarban.gov.bd', NULL, NULL),
(940, 101, 'Rupushipara', 'রূপসীপাড়া', 'rupushiparaup.bandarban.gov.bd', NULL, NULL),
(941, 101, 'Sarai', 'সরই', 'saraiup.bandarban.gov.bd', NULL, NULL),
(942, 101, 'Aziznagar', 'আজিজনগর', 'aziznagarup.bandarban.gov.bd', NULL, NULL),
(943, 102, 'Paind', 'পাইন্দু', 'painduup.bandarban.gov.bd', NULL, NULL),
(944, 102, 'Ruma Sadar', 'রুমা সদর', 'rumasadarup.bandarban.gov.bd', NULL, NULL),
(945, 102, 'Ramakreprangsa', 'রেমাক্রীপ্রাংসা', 'ramakreprangsaup.bandarban.gov.bd', NULL, NULL),
(946, 102, 'Galanggya', 'গ্যালেংগ্যা', 'galanggyaup.bandarban.gov.bd', NULL, NULL),
(947, 103, 'Remakre', 'রেমাক্রী', 'remakreup.bandarban.gov.bd', NULL, NULL),
(948, 103, 'Tind', 'তিন্দু', 'tinduup.bandarban.gov.bd', NULL, NULL),
(949, 103, 'Thanchi Sadar', 'থানচি সদর', 'thanchisadarup.bandarban.gov.bd', NULL, NULL),
(950, 103, 'Balipara', 'বলিপাড়া', 'baliparaup.bandarban.gov.bd', NULL, NULL),
(951, 104, 'Rajapur', 'রাজাপুর', 'rajapurup.sirajganj.gov.bd', NULL, NULL),
(952, 104, 'Baradhul', 'বড়ধুল', 'baradhulup.sirajganj.gov.bd', NULL, NULL),
(953, 104, 'Belkuchi Sadar', 'বেলকুচি সদর', 'belkuchisadarup.sirajganj.gov.bd', NULL, NULL),
(954, 104, 'Dhukuriabera', 'ধুকুরিয়া বেড়া', 'dhukuriaberaup.sirajganj.gov.bd', NULL, NULL),
(955, 104, 'Doulatpur', 'দৌলতপুর', 'doulatpurup.sirajganj.gov.bd', NULL, NULL),
(956, 104, 'Bhangabari', 'ভাঙ্গাবাড়ী', 'bhangabariup.sirajganj.gov.bd', NULL, NULL),
(957, 105, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.sirajganj.gov.bd', NULL, NULL),
(958, 105, 'Gharjan', 'ঘোরজান', 'gharjanup.sirajganj.gov.bd', NULL, NULL),
(959, 105, 'Khaskaulia', 'খাসকাউলিয়া', 'khaskauliaup.sirajganj.gov.bd', NULL, NULL),
(960, 105, 'Khaspukuria', 'খাসপুকুরিয়া', 'khaspukuriaup.sirajganj.gov.bd', NULL, NULL),
(961, 105, 'Omarpur', 'উমারপুর', 'omarpurup.sirajganj.gov.bd', NULL, NULL),
(962, 105, 'Sadia Chandpur', 'সদিয়া চাঁদপুর', 'sadiachandpurup.sirajganj.gov.bd', NULL, NULL),
(963, 105, 'Sthal', 'স্থল', 'sthalup.sirajganj.gov.bd', NULL, NULL),
(964, 106, 'Bhadraghat', 'ভদ্রঘাট', 'bhadraghatup.sirajganj.gov.bd', NULL, NULL),
(965, 106, 'Jamtail', 'জামতৈল', 'jamtailup.sirajganj.gov.bd', NULL, NULL),
(966, 106, 'Jhawail', 'ঝাঐল', 'jhawailup.sirajganj.gov.bd', NULL, NULL),
(967, 106, 'Roydaulatpur', 'রায়দৌলতপুর', 'roydaulatpurup.sirajganj.gov.bd', NULL, NULL),
(968, 107, 'Chalitadangha', 'চালিতাডাঙ্গা', 'chalitadanghaup.sirajganj.gov.bd', NULL, NULL),
(969, 107, 'Chargirish', 'চরগিরিশ', 'chargirishup.sirajganj.gov.bd', NULL, NULL),
(970, 107, 'Gandail', 'গান্ধাইল', 'gandailup.sirajganj.gov.bd', NULL, NULL),
(971, 107, 'Kazipur Sadar', 'কাজিপুর সদর', 'kazipursadarup.sirajganj.gov.bd', NULL, NULL),
(972, 107, 'Khasrajbari', 'খাসরাজবাড়ী', 'khasrajbariup.sirajganj.gov.bd', NULL, NULL),
(973, 107, 'Maijbari', 'মাইজবাড়ী', 'maijbariup.sirajganj.gov.bd', NULL, NULL),
(974, 107, 'Monsur Nagar', 'মনসুর নগর', 'monsurnagarup.sirajganj.gov.bd', NULL, NULL),
(975, 107, 'Natuarpara', 'নাটুয়ারপাড়া', 'natuarparaup.sirajganj.gov.bd', NULL, NULL),
(976, 107, 'Nishchintapur', 'নিশ্চিন্তপুর', 'nishchintapurup.sirajganj.gov.bd', NULL, NULL),
(977, 107, 'Sonamukhi', 'সোনামুখী', 'sonamukhiup.sirajganj.gov.bd', NULL, NULL),
(978, 107, 'Subhagacha', 'শুভগাছা', 'subhagachaup.sirajganj.gov.bd', NULL, NULL),
(979, 107, 'Tekani', 'তেকানী', 'tekaniup.sirajganj.gov.bd', NULL, NULL),
(980, 108, 'Brommogacha', 'ব্রহ্মগাছা', 'brommogachaup.sirajganj.gov.bd', NULL, NULL),
(981, 108, 'Chandaikona', 'চান্দাইকোনা', 'chandaikonaup.sirajganj.gov.bd', NULL, NULL),
(982, 108, 'Dhamainagar', 'ধামাইনগর', 'dhamainagarup.sirajganj.gov.bd', NULL, NULL),
(983, 108, 'Dhangora', 'ধানগড়া', 'dhangoraup.sirajganj.gov.bd', NULL, NULL),
(984, 108, 'Dhubil', 'ধুবিল', 'dhubilup.sirajganj.gov.bd', NULL, NULL),
(985, 108, 'Ghurka', 'ঘুড়কা', 'ghurkaup.sirajganj.gov.bd', NULL, NULL),
(986, 108, 'Nalka', 'নলকা', 'nalkaup.sirajganj.gov.bd', NULL, NULL),
(987, 108, 'Pangashi', 'পাঙ্গাসী', 'pangashiup.sirajganj.gov.bd', NULL, NULL),
(988, 108, 'Sonakhara', 'সোনাখাড়া', 'sonakharaup.sirajganj.gov.bd', NULL, NULL),
(989, 109, 'Beltail', 'বেলতৈল', 'beltailup.sirajganj.gov.bd', NULL, NULL),
(990, 109, 'Jalalpur', 'জালালপুর', 'jalalpurup.sirajganj.gov.bd', NULL, NULL),
(991, 109, 'Kayempure', 'কায়েমপুর', 'kayempureup.sirajganj.gov.bd', NULL, NULL),
(992, 109, 'Garadah', 'গাড়াদহ', 'garadahup.sirajganj.gov.bd', NULL, NULL),
(993, 109, 'Potazia', 'পোতাজিয়া', 'potaziaup.sirajganj.gov.bd', NULL, NULL),
(994, 109, 'Rupbati', 'রূপবাটি', 'rupbatiup.sirajganj.gov.bd', NULL, NULL),
(995, 109, 'Gala', 'গালা', 'galaup.sirajganj.gov.bd', NULL, NULL),
(996, 109, 'Porzona', 'পোরজনা', 'porzonaup.sirajganj.gov.bd', NULL, NULL),
(997, 109, 'Habibullah Nagar', 'হাবিবুল্লাহ নগর', 'habibullahnagarup.sirajganj.gov.bd', NULL, NULL),
(998, 109, 'Khukni', 'খুকনী', 'khukniup.sirajganj.gov.bd', NULL, NULL),
(999, 109, 'Koizuri', 'কৈজুরী', 'koizuriup.sirajganj.gov.bd', NULL, NULL),
(1000, 109, 'Sonatoni', 'সোনাতনী', 'sonatoniup.sirajganj.gov.bd', NULL, NULL),
(1001, 109, 'Narina', 'নরিনা', 'narinaup.sirajganj.gov.bd', NULL, NULL),
(1002, 110, 'Bagbati', 'বাগবাটি', 'bagbatiup.sirajganj.gov.bd', NULL, NULL),
(1003, 110, 'Ratankandi', 'রতনকান্দি', 'ratankandiup.sirajganj.gov.bd', NULL, NULL),
(1004, 110, 'Bohuli', 'বহুলী', 'bohuliup.sirajganj.gov.bd', NULL, NULL),
(1005, 110, 'Sheyalkol', 'শিয়ালকোল', 'sheyalkolup.sirajganj.gov.bd', NULL, NULL),
(1006, 110, 'Khokshabari', 'খোকশাবাড়ী', 'khokshabariup.nilphamari.gov.bd', NULL, NULL),
(1007, 110, 'Songacha', 'ছোনগাছা', 'songachaup.sirajganj.gov.bd', NULL, NULL),
(1008, 110, 'Mesra', 'মেছড়া', 'mesraup.sirajganj.gov.bd', NULL, NULL),
(1009, 110, 'Kowakhola', 'কাওয়াখোলা', 'kowakholaup.sirajganj.gov.bd', NULL, NULL),
(1010, 110, 'Kaliahoripur', 'কালিয়াহরিপুর', 'kaliahoripurup.sirajganj.gov.bd', NULL, NULL),
(1011, 110, 'Soydabad', 'সয়দাবাদ', 'soydabadup.sirajganj.gov.bd', NULL, NULL),
(1012, 111, 'Baruhas', 'বারুহাস', 'baruhasup.sirajganj.gov.bd', NULL, NULL),
(1013, 111, 'Talam', 'তালম', 'talamup.sirajganj.gov.bd', NULL, NULL),
(1014, 111, 'Soguna', 'সগুনা', 'sogunaup.sirajganj.gov.bd', NULL, NULL),
(1015, 111, 'Magura Binod', 'মাগুড়া বিনোদ', 'magurabinodup.sirajganj.gov.bd', NULL, NULL),
(1016, 111, 'Naogaon', 'নওগাঁ', 'naogaonup.sirajganj.gov.bd', NULL, NULL),
(1017, 111, 'Tarash Sadar', 'তাড়াশ সদর', 'tarashsadarup.sirajganj.gov.bd', NULL, NULL),
(1018, 111, 'Madhainagar', 'মাধাইনগর', 'madhainagarup.sirajganj.gov.bd', NULL, NULL),
(1019, 111, 'Deshigram', 'দেশীগ্রাম', 'deshigramup.sirajganj.gov.bd', NULL, NULL),
(1020, 112, 'Ullapara Sadar', 'উল্লাপাড়া সদর', 'ullaparasadarup.sirajganj.gov.bd', NULL, NULL),
(1021, 112, 'Ramkrisnopur', 'রামকৃষ্ণপুর', 'ramkrisnopurup.sirajganj.gov.bd', NULL, NULL),
(1022, 112, 'Bangala', 'বাঙ্গালা', 'bangalaup.sirajganj.gov.bd', NULL, NULL),
(1023, 112, 'Udhunia', 'উধুনিয়া', 'udhuniaup.sirajganj.gov.bd', NULL, NULL),
(1024, 112, 'Boropangashi', 'বড়পাঙ্গাসী', 'boropangashiup.sirajganj.gov.bd', NULL, NULL),
(1025, 112, 'Durga Nagar', 'দুর্গা নগর', 'durganagarup.sirajganj.gov.bd', NULL, NULL),
(1026, 112, 'Purnimagati', 'পূর্ণিমাগাতী', 'purnimagatiup.sirajganj.gov.bd', NULL, NULL),
(1027, 112, 'Salanga', 'সলঙ্গা', 'salangaup.sirajganj.gov.bd', NULL, NULL),
(1028, 112, 'Hatikumrul', 'হটিকুমরুল', 'hatikumrulup.sirajganj.gov.bd', NULL, NULL),
(1029, 112, 'Borohor', 'বড়হর', 'borohorup.sirajganj.gov.bd', NULL, NULL),
(1030, 112, 'Ponchocroshi', 'পঞ্চক্রোশী', 'ponchocroshiup.sirajganj.gov.bd', NULL, NULL),
(1031, 112, 'Salo', 'সলপ', 'salopup.sirajganj.gov.bd', NULL, NULL),
(1032, 112, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sirajganj.gov.bd', NULL, NULL),
(1033, 113, 'Vaina', 'ভায়না', 'vainaup.pabna.gov.bd', NULL, NULL),
(1034, 113, 'Tantibonda', 'তাঁতিবন্দ', 'tantibondaup.pabna.gov.bd', NULL, NULL),
(1035, 113, 'Manikhat', 'মানিকহাট', 'manikhatup.pabna.gov.bd', NULL, NULL),
(1036, 113, 'Dulai', 'দুলাই', 'dulaiup.pabna.gov.bd', NULL, NULL),
(1037, 113, 'Ahammadpur', 'আহম্মদপুর', 'ahammadpurup.pabna.gov.bd', NULL, NULL),
(1038, 113, 'Raninagar', 'রাণীনগর', 'raninagarup.pabna.gov.bd', NULL, NULL),
(1039, 113, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.pabna.gov.bd', NULL, NULL),
(1040, 113, 'Hatkhali', 'হাটখালী', 'hatkhaliup.pabna.gov.bd', NULL, NULL),
(1041, 113, 'Nazirganj', 'নাজিরগঞ্জ', 'nazirganjup.pabna.gov.bd', NULL, NULL),
(1042, 113, 'Sagorkandi', 'সাগরকান্দি', 'sagorkandiup.pabna.gov.bd', NULL, NULL),
(1043, 114, 'Sara', 'সাঁড়া', 'saraup.pabna.gov.bd', NULL, NULL),
(1044, 114, 'Pakshi', 'পাকশী', 'pakshiup.pabna.gov.bd', NULL, NULL),
(1045, 114, 'Muladuli', 'মুলাডুলি', 'muladuliup.pabna.gov.bd', NULL, NULL),
(1046, 114, 'Dashuria', 'দাশুরিয়া', 'dashuriaup.pabna.gov.bd', NULL, NULL),
(1047, 114, 'Silimpur', 'ছলিমপুর', 'silimpurup.pabna.gov.bd', NULL, NULL),
(1048, 114, 'Sahapur', 'সাহাপুর', 'sahapurup.pabna.gov.bd', NULL, NULL),
(1049, 114, 'Luxmikunda', 'লক্ষীকুন্ডা', 'luxmikundaup.pabna.gov.bd', NULL, NULL),
(1050, 115, 'Bhangura', 'ভাঙ্গুড়া', 'bhanguraup.pabna.gov.bd', NULL, NULL),
(1051, 115, 'Khanmarich', 'খানমরিচ', 'khanmarichup.pabna.gov.bd', NULL, NULL),
(1052, 115, 'Ashtamanisha', 'অষ্টমণিষা', 'ashtamanishaup.pabna.gov.bd', NULL, NULL),
(1053, 115, 'Dilpasar', 'দিলপাশার', 'dilpasarup.pabna.gov.bd', NULL, NULL),
(1054, 115, 'Parbhangura', 'পারভাঙ্গুড়া', 'parbhanguraup.pabna.gov.bd', NULL, NULL),
(1055, 116, 'Maligachha', 'মালিগাছা', 'maligachhaup.pabna.gov.bd', NULL, NULL),
(1056, 116, 'Malanchi', 'মালঞ্চি', 'malanchiup.pabna.gov.bd', NULL, NULL),
(1057, 116, 'Gayeshpur', 'গয়েশপুর', 'gayeshpurup.pabna.gov.bd', NULL, NULL),
(1058, 116, 'Ataikula', 'আতাইকুলা', 'ataikulaup.pabna.gov.bd', NULL, NULL),
(1059, 116, 'Chartarapur', 'চরতারাপুর', 'chartarapurup.pabna.gov.bd', NULL, NULL),
(1060, 116, 'Sadullahpur', 'সাদুল্লাপুর', 'sadullahpurup.pabna.gov.bd', NULL, NULL),
(1061, 116, 'Bharara', 'ভাঁড়ারা', 'bhararaup.pabna.gov.bd', NULL, NULL),
(1062, 116, 'Dogachi', 'দোগাছী', 'dogachiup.pabna.gov.bd', NULL, NULL),
(1063, 116, 'Hemayetpur', 'হেমায়েতপুর', 'hemayetpurup.pabna.gov.bd', NULL, NULL),
(1064, 116, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.pabna.gov.bd', NULL, NULL),
(1065, 117, 'Haturia Nakalia', 'হাটুরিয়া নাকালিয়া', 'haturianakaliaup.pabna.gov.bd', NULL, NULL),
(1066, 117, 'Notun Varenga', 'নতুন ভারেঙ্গা', 'notunvarengaup.pabna.gov.bd', NULL, NULL),
(1067, 117, 'Koitola', 'কৈটোলা', 'koitolaup.pabna.gov.bd', NULL, NULL),
(1068, 117, 'Chakla', 'চাকলা', 'chaklaup.pabna.gov.bd', NULL, NULL),
(1069, 117, 'Jatsakhini', 'জাতসাখিনি', 'jatsakhiniup.pabna.gov.bd', NULL, NULL),
(1070, 117, 'Puran Varenga', 'পুরান ভারেঙ্গা', 'puranvarengaup.pabna.gov.bd', NULL, NULL),
(1071, 117, 'Ruppur', 'রূপপুর', 'ruppurup.pabna.gov.bd', NULL, NULL),
(1072, 117, 'Masumdia', 'মাসুমদিয়া', 'masumdiaup.pabna.gov.bd', NULL, NULL),
(1073, 117, 'Dhalar Char', 'ঢালার চর', 'dhalarcharup.pabna.gov.bd', NULL, NULL),
(1074, 118, 'Majhpara', 'মাজপাড়া', 'majhparaup.pabna.gov.bd', NULL, NULL),
(1075, 118, 'Chandba', 'চাঁদভা', 'chandbaup.pabna.gov.bd', NULL, NULL),
(1076, 118, 'Debottar', 'দেবোত্তর', 'debottarup.pabna.gov.bd', NULL, NULL),
(1077, 118, 'Ekdanta', 'একদন্ত', 'ekdantaup.pabna.gov.bd', NULL, NULL),
(1078, 118, 'Laxshmipur', 'লক্ষীপুর', 'laxshmipurup.pabna.gov.bd', NULL, NULL),
(1079, 119, 'Handial', 'হান্ডিয়াল', 'handialup.pabna.gov.bd', NULL, NULL),
(1080, 119, 'Chhaikola', 'ছাইকোলা', 'chhaikolaup.pabna.gov.bd', NULL, NULL),
(1081, 119, 'Nimaichara', 'নিমাইচড়া', 'nimaicharaup.pabna.gov.bd', NULL, NULL),
(1082, 119, 'Gunaigachha', 'গুনাইগাছা', 'gunaigachhaup.pabna.gov.bd', NULL, NULL),
(1083, 119, 'Parshadanga', 'পার্শ্বডাঙ্গা', 'parshadangaup.pabna.gov.bd', NULL, NULL),
(1084, 119, 'Failjana', 'ফৈলজানা', 'failjanaup.pabna.gov.bd', NULL, NULL),
(1085, 119, 'Mulgram', 'মুলগ্রাম', 'mulgramup.pabna.gov.bd', NULL, NULL),
(1086, 119, 'Haripur', 'হরিপুর', 'haripurup.pabna.gov.bd', NULL, NULL),
(1087, 119, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.pabna.gov.bd', NULL, NULL),
(1088, 119, 'Bilchalan', 'বিলচলন', 'bilchalanup.pabna.gov.bd', NULL, NULL),
(1089, 119, 'Danthia Bamangram', 'দাতিয়া বামনগ্রাম', 'danthiabamangramup.pabna.gov.bd', NULL, NULL),
(1090, 120, 'Nagdemra', 'নাগডেমড়া', 'nagdemraup.pabna.gov.bd', NULL, NULL),
(1091, 120, 'Dhulauri', 'ধুলাউড়ি', 'dhulauriup.pabna.gov.bd', NULL, NULL),
(1092, 120, 'Bhulbaria', 'ভুলবাড়ীয়া', 'bhulbariaup.pabna.gov.bd', NULL, NULL),
(1093, 120, 'Dhopadaha', 'ধোপাদহ', 'dhopadahaup.pabna.gov.bd', NULL, NULL),
(1094, 120, 'Karamja', 'করমজা', 'karamjaup.pabna.gov.bd', NULL, NULL),
(1095, 120, 'Kashinathpur', 'কাশিনাথপুর', 'kashinathpurup.pabna.gov.bd', NULL, NULL),
(1096, 120, 'Gaurigram', 'গৌরীগ্রাম', 'gaurigramup.pabna.gov.bd', NULL, NULL),
(1097, 120, 'Nandanpur', 'নন্দনপুর', 'nandanpurup.pabna.gov.bd', NULL, NULL),
(1098, 120, 'Khetupara', 'ক্ষেতুপাড়া', 'khetuparaup.pabna.gov.bd', NULL, NULL),
(1099, 120, 'Ar-Ataikula', 'আর-আতাইকুলা', 'rataiqulaup.pabna.gov.bd', NULL, NULL),
(1100, 121, 'Brilahiribari', 'বৃলাহিড়ীবাড়ী', 'brilahiribariup.pabna.gov.bd', NULL, NULL),
(1101, 121, 'Pungali', 'পুঙ্গুলি', 'pungaliup.pabna.gov.bd', NULL, NULL),
(1102, 121, 'Faridpur', 'ফরিদপুর', 'faridpurup.pabna.gov.bd', NULL, NULL),
(1103, 121, 'Hadal', 'হাদল', 'hadalup.pabna.gov.bd', NULL, NULL),
(1104, 121, 'Banwarinagar', 'বনওয়ারীনগর', 'banwarinagarup.pabna.gov.bd', NULL, NULL),
(1105, 121, 'Demra', 'ডেমড়া', 'demraup.pabna.gov.bd', NULL, NULL),
(1106, 122, 'Birkedar', 'বীরকেদার', 'birkedarup.bogra.gov.bd', NULL, NULL),
(1107, 122, 'Kalai', 'কালাই', 'kalaiup.bogra.gov.bd', NULL, NULL),
(1108, 122, 'Paikar', 'পাইকড়', 'paikarup.bogra.gov.bd', NULL, NULL),
(1109, 122, 'Narhatta', 'নারহট্ট', 'narhattaup.bogra.gov.bd', NULL, NULL),
(1110, 122, 'Murail', 'মুরইল', 'murailup.bogra.gov.bd', NULL, NULL),
(1111, 122, 'Kahaloo', 'কাহালু', 'kahalooup.bogra.gov.bd', NULL, NULL),
(1112, 122, 'Durgapur', 'দূর্গাপুর', 'durgapurup.bogra.gov.bd', NULL, NULL),
(1113, 122, 'Jamgaon', 'জামগ্রাম', 'jamgaonup.bogra.gov.bd', NULL, NULL),
(1114, 122, 'Malancha', 'মালঞ্চা', 'malanchaup.bogra.gov.bd', NULL, NULL),
(1115, 123, 'Fapore', 'ফাঁপোর', 'faporeup.bogra.gov.bd', NULL, NULL),
(1116, 123, 'Shabgram', 'সাবগ্রাম', 'shabgramup.bogra.gov.bd', NULL, NULL),
(1117, 123, 'Nishindara', 'নিশিন্দারা', 'nishindaraup.bogra.gov.bd', NULL, NULL),
(1118, 123, 'Erulia', 'এরুলিয়া', 'eruliaup.bogra.gov.bd', NULL, NULL),
(1119, 123, 'Rajapur', 'রাজাপুর', 'rajapurup.bogra.gov.bd', NULL, NULL),
(1120, 123, 'Shakharia', 'শাখারিয়া', 'shakhariaup.bogra.gov.bd', NULL, NULL),
(1121, 123, 'Sekherkola', 'শেখেরকোলা', 'sekherkolaup.bogra.gov.bd', NULL, NULL),
(1122, 123, 'Gokul', 'গোকুল', 'gokulup.bogra.gov.bd', NULL, NULL),
(1123, 123, 'Noongola', 'নুনগোলা', 'noongolaup.bogra.gov.bd', NULL, NULL),
(1124, 123, 'Lahiripara', 'লাহিড়ীপাড়া', 'lahiriparaup.bogra.gov.bd', NULL, NULL),
(1125, 123, 'Namuja', 'নামুজা', 'namujaup.bogra.gov.bd', NULL, NULL),
(1126, 124, 'Sariakandi Sadar', 'সারিয়াকান্দি সদর', 'sariakandisadarup.bogra.gov.bd', NULL, NULL),
(1127, 124, 'Narchi', 'নারচী', 'narchiup.bogra.gov.bd', NULL, NULL),
(1128, 124, 'Bohail', 'বোহাইল', 'bohailup.bogra.gov.bd', NULL, NULL),
(1129, 124, 'Chaluabari', 'চালুয়াবাড়ী', 'chaluabariup.bogra.gov.bd', NULL, NULL),
(1130, 124, 'Chandanbaisha', 'চন্দনবাইশা', 'chandanbaishaup.bogra.gov.bd', NULL, NULL),
(1131, 124, 'Hatfulbari', 'হাটফুলবাড়ী', 'hatfulbariup.bogra.gov.bd', NULL, NULL),
(1132, 124, 'Hatsherpur', 'হাটশেরপুর', 'hatsherpurup.bogra.gov.bd', NULL, NULL),
(1133, 124, 'Karnibari', 'কর্ণিবাড়ী', 'karnibariup.bogra.gov.bd', NULL, NULL),
(1134, 124, 'Kazla', 'কাজলা', 'kazlaup.bogra.gov.bd', NULL, NULL),
(1135, 124, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.bogra.gov.bd', NULL, NULL),
(1136, 124, 'Kamalpur', 'কামালপুর', 'kamalpur.bogra.gov.bd', NULL, NULL),
(1137, 124, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabari.bogra.gov.bd', NULL, NULL),
(1138, 125, 'Asekpur', 'আশেকপুর', 'asekpurup.bogra.gov.bd', NULL, NULL),
(1139, 125, 'Madla', 'মাদলা', 'madlaup.bogra.gov.bd', NULL, NULL),
(1140, 125, 'Majhira', 'মাঝিড়া', 'majhiraup.bogra.gov.bd', NULL, NULL),
(1141, 125, 'Aria', 'আড়িয়া', 'ariaup.bogra.gov.bd', NULL, NULL),
(1142, 125, 'Kharna', 'খরনা', 'kharnaup.bogra.gov.bd', NULL, NULL),
(1143, 125, 'Khottapara', 'খোট্টাপাড়া', 'Khottaparaup.bogra.gov.bd', NULL, NULL),
(1144, 125, 'Chopinagar', 'চোপিনগর', 'chopinagarup.bogra.gov.bd', NULL, NULL),
(1145, 125, 'Amrul', 'আমরুল', 'amrulup.bogra.gov.bd', NULL, NULL),
(1146, 125, 'Gohail', 'গোহাইল', 'gohailup.bogra.gov.bd', NULL, NULL),
(1147, 126, 'Zianagar', 'জিয়ানগর', 'zianagarup.bogra.gov.bd', NULL, NULL),
(1148, 126, 'Chamrul', 'চামরুল', 'chamrulup.bogra.gov.bd', NULL, NULL),
(1149, 126, 'Dupchanchia', 'দুপচাঁচিয়া', 'dupchanchiaup.bogra.gov.bd', NULL, NULL),
(1150, 126, 'Gunahar', 'গুনাহার', 'gunaharup.bogra.gov.bd', NULL, NULL),
(1151, 126, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.bogra.gov.bd', NULL, NULL),
(1152, 126, 'Talora', 'তালোড়া', 'taloraup.bogra.gov.bd', NULL, NULL),
(1153, 127, 'Chhatiangram', 'ছাতিয়ানগ্রাম', 'chhatiangramup.bogra.gov.bd', NULL, NULL),
(1154, 127, 'Nasaratpur', 'নশরতপুর', 'nasaratpurup.bogra.gov.bd', NULL, NULL),
(1155, 127, 'Adamdighi', 'আদমদিঘি', 'adamdighiup.bogra.gov.bd', NULL, NULL),
(1156, 127, 'Kundagram', 'কুন্দগ্রাম', 'kundagramup.bogra.gov.bd', NULL, NULL),
(1157, 127, 'Chapapur', 'চাঁপাপুর', 'chapapurup.bogra.gov.bd', NULL, NULL),
(1158, 127, 'Shantahar', 'সান্তাহার', 'shantaharup.bogra.gov.bd', NULL, NULL),
(1159, 128, 'Burail', 'বুড়ইল', 'burailup.bogra.gov.bd', NULL, NULL),
(1160, 128, 'Nandigram', 'নন্দিগ্রাম', 'nandigramup.bogra.gov.bd', NULL, NULL),
(1161, 128, 'Bhatra', 'ভাটরা', 'bhatraup.bogra.gov.bd', NULL, NULL),
(1162, 128, 'Thalta Majhgram', 'থালতা মাঝগ্রাম', 'thaltamajhgramup.bogra.gov.bd', NULL, NULL),
(1163, 128, 'Bhatgram', 'ভাটগ্রাম', 'bhatgramup.bogra.gov.bd', NULL, NULL),
(1164, 129, 'Sonatala', 'সোনাতলা', 'sonatalaup.bogra.gov.bd', NULL, NULL),
(1165, 129, 'Balua', 'বালুয়া', 'baluaup.bogra.gov.bd', NULL, NULL),
(1166, 129, 'Zorgacha', 'জোড়গাছা', 'zorgachaup.bogra.gov.bd', NULL, NULL),
(1167, 129, 'Digdair', 'দিগদাইড়', 'digdairup.bogra.gov.bd', NULL, NULL),
(1168, 129, 'Madhupur', 'মধুপুর', 'madhupurup.bogra.gov.bd', NULL, NULL),
(1169, 129, 'Pakulla', 'পাকুল্ল্যা', 'pakullaup.bogra.gov.bd', NULL, NULL),
(1170, 129, 'Tekani Chukinagar', 'তেকানী চুকাইনগর', 'tekanichukinagarup.bogra.gov.bd', NULL, NULL),
(1171, 130, 'Nimgachi', 'নিমগাছি', 'nimgachiup.bogra.gov.bd', NULL, NULL),
(1172, 130, 'Kalerpara', 'কালেরপাড়া', 'kalerparaup.bogra.gov.bd', NULL, NULL),
(1173, 130, 'Chikashi', 'চিকাশী', 'chikashiup.bogra.gov.bd', NULL, NULL),
(1174, 130, 'Gossainbari', 'গোসাইবাড়ী', 'gossainbariup.bogra.gov.bd', NULL, NULL),
(1175, 130, 'Bhandarbari', 'ভান্ডারবাড়ী', 'bhandarbariup.bogra.gov.bd', NULL, NULL),
(1176, 130, 'Gopalnagar', '১গোপালনগর', 'gopalnagarup.bogra.gov.bd', NULL, NULL),
(1177, 130, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.bogra.gov.bd', NULL, NULL),
(1178, 130, 'Chowkibari', 'চৌকিবাড়ী', 'chowkibariup.bogra.gov.bd', NULL, NULL),
(1179, 130, 'Elangi', 'এলাঙ্গী', 'elangiup.bogra.gov.bd', NULL, NULL),
(1180, 130, 'Dhunat Sadar', 'ধুনট সদর', 'dhunatsadarup.bogra.gov.bd', NULL, NULL),
(1181, 131, 'Baliadighi', 'বালিয়া দিঘী', 'baliadighiup.bogra.gov.bd', NULL, NULL),
(1182, 131, 'Dakshinpara', 'দক্ষিণপাড়া', 'dakshinparaup.bogra.gov.bd', NULL, NULL),
(1183, 131, 'Durgahata', 'দুর্গাহাটা', 'durgahataup.bogra.gov.bd', NULL, NULL),
(1184, 131, 'Kagail', 'কাগইল', 'kagailup.bogra.gov.bd', NULL, NULL),
(1185, 131, 'Sonarai', 'সোনারায়', 'sonaraiup.bogra.gov.bd', NULL, NULL),
(1186, 131, 'Rameshwarpur', 'রামেশ্বরপুর', 'rameshwarpurup.bogra.gov.bd', NULL, NULL),
(1187, 131, 'Naruamala', 'নাড়ুয়ামালা', 'naruamalaup.bogra.gov.bd', NULL, NULL),
(1188, 131, 'Nepaltali', 'নেপালতলী', 'nepaltaliup.bogra.gov.bd', NULL, NULL),
(1189, 131, 'Gabtali', 'গাবতলি', 'gabtaliup.bogra.gov.bd', NULL, NULL),
(1190, 131, 'Mahishaban', 'মহিষাবান', 'mahishabanup.bogra.gov.bd', NULL, NULL),
(1191, 131, 'Nasipur', 'নশিপুর', 'nasipurup.bogra.gov.bd', NULL, NULL),
(1192, 132, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.bogra.gov.bd', NULL, NULL),
(1193, 132, 'Khamarkandi', 'খামারকান্দি', 'khamarkandiup.bogra.gov.bd', NULL, NULL),
(1194, 132, 'Garidaha', 'গাড়িদহ', 'garidahaup.bogra.gov.bd', NULL, NULL),
(1195, 132, 'Kusumbi', 'কুসুম্বী', 'kusumbiup.bogra.gov.bd', NULL, NULL),
(1196, 132, 'Bishalpur', 'বিশালপুর', 'bishalpurup.bogra.gov.bd', NULL, NULL),
(1197, 132, 'Shimabari', 'সীমাবাড়ি', 'shimabariup.bogra.gov.bd', NULL, NULL),
(1198, 132, 'Shahbondegi', 'শাহবন্দেগী', 'shahbondegiup.bogra.gov.bd', NULL, NULL),
(1199, 132, 'Sughat', 'সুঘাট', 'sughatup.bogra.gov.bd', NULL, NULL),
(1200, 132, 'Khanpur', 'খানপুর', 'khanpurup.bogra.gov.bd', NULL, NULL),
(1201, 132, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.bogra.gov.bd', NULL, NULL),
(1202, 133, 'Moidanhatta', 'ময়দানহাট্টা', 'moidanhattaup.bogra.gov.bd', NULL, NULL),
(1203, 133, 'Kichok', 'কিচক', 'kichokup.bogra.gov.bd', NULL, NULL),
(1204, 133, 'Atmul', 'আটমূল', 'atmulup.bogra.gov.bd', NULL, NULL),
(1205, 133, 'Pirob', 'পিরব', 'pirobup.bogra.gov.bd', NULL, NULL),
(1206, 133, 'Majhihatta', 'মাঝিহট্ট', 'majhihattaup.bogra.gov.bd', NULL, NULL),
(1207, 133, 'Buriganj', 'বুড়িগঞ্জ', 'buriganjup.bogra.gov.bd', NULL, NULL),
(1208, 133, 'Bihar', 'বিহার', 'biharup.bogra.gov.bd', NULL, NULL),
(1209, 133, 'Shibganj', 'শিবগঞ্জ', 'shibganjup.bogra.gov.bd', NULL, NULL),
(1210, 133, 'Deuly', 'দেউলি', 'deulyup.bogra.gov.bd', NULL, NULL),
(1211, 133, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bogra.gov.bd', NULL, NULL),
(1212, 133, 'Mokamtala', 'মোকামতলা', 'mokamtalaup.bogra.gov.bd', NULL, NULL),
(1213, 133, 'Raynagar', 'রায়নগর', 'raynagarup.bogra.gov.bd', NULL, NULL),
(1214, 134, 'Darsanpara', 'দর্শনপাড়া', 'darsanparaup.rajshahi.gov.bd', NULL, NULL),
(1215, 134, 'Hujuripara', 'হুজুরী পাড়া', 'hujuriparaup.rajshahi.gov.bd', NULL, NULL),
(1216, 134, 'Damkura', 'দামকুড়া', 'damkuraup.rajshahi.gov.bd', NULL, NULL),
(1217, 134, 'Horipur', 'হরিপুর', 'horipurup.rajshahi.gov.bd', NULL, NULL),
(1218, 134, 'Horogram', 'হড়গ্রাম', 'horogramup.rajshahi.gov.bd', NULL, NULL),
(1219, 134, 'Harian', 'হরিয়ান', 'harianup.rajshahi.gov.bd', NULL, NULL),
(1220, 134, 'Borgachi', 'বড়্গাছি', 'borgachiup.rajshahi.gov.bd', NULL, NULL),
(1221, 134, 'Parila', 'পারিলা', 'parilaup.rajshahi.gov.bd', NULL, NULL),
(1222, 135, 'Naopara', 'নওপাড়া', 'naoparaup.rajshahi.gov.bd', NULL, NULL),
(1223, 135, 'Kismatgankoir', 'কিসমতগণকৈড়', 'kismatgankoirup.rajshahi.gov.bd', NULL, NULL),
(1224, 135, 'Pananagar', 'পানানগর', 'pananagarup.rajshahi.gov.bd', NULL, NULL),
(1225, 135, 'Deluabari', 'দেলুয়াবাড়ী', 'deluabariup.rajshahi.gov.bd', NULL, NULL),
(1226, 135, 'Jhaluka', 'ঝালুকা', 'jhalukaup.rajshahi.gov.bd', NULL, NULL),
(1227, 135, 'Maria', 'মাড়িয়া', 'mariaup.rajshahi.gov.bd', NULL, NULL),
(1228, 135, 'Joynogor', 'জয়নগর', 'joynogorup.rajshahi.gov.bd', NULL, NULL),
(1229, 136, 'Dhuroil', 'ধুরইল', 'dhuroilup.rajshahi.gov.bd', NULL, NULL),
(1230, 136, 'Ghasigram', 'ঘষিগ্রাম', 'ghasigramup.rajshahi.gov.bd', NULL, NULL),
(1231, 136, 'Raighati', 'রায়ঘাটি', 'raighatiup.rajshahi.gov.bd', NULL, NULL),
(1232, 136, 'Mougachi', 'মৌগাছি', 'mougachiup.rajshahi.gov.bd', NULL, NULL),
(1233, 136, 'Baksimoil', 'বাকশিমইল', 'baksimoilup.rajshahi.gov.bd', NULL, NULL),
(1234, 136, 'Jahanabad', 'জাহানাবাদ', 'jahanabadup.rajshahi.gov.bd', NULL, NULL),
(1235, 137, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.rajshahi.gov.bd', NULL, NULL),
(1236, 137, 'Solua', 'শলুয়া', 'soluaup.rajshahi.gov.bd', NULL, NULL),
(1237, 137, 'Sardah', 'সরদহ', 'sardahup.rajshahi.gov.bd', NULL, NULL),
(1238, 137, 'Nimpara', 'নিমপাড়া', 'nimparaup.rajshahi.gov.bd', NULL, NULL),
(1239, 137, 'Charghat', 'চারঘাট', 'charghatup.rajshahi.gov.bd', NULL, NULL),
(1240, 137, 'Vialuxmipur', 'ভায়ালক্ষ্মীপুর', 'vialuxmipurup.rajshahi.gov.bd', NULL, NULL),
(1241, 138, 'Puthia', 'পুঠিয়া', 'puthiaup.rajshahi.gov.bd', NULL, NULL),
(1242, 138, 'Belpukuria', 'বেলপুকুরিয়া', 'belpukuriaup.rajshahi.gov.bd', NULL, NULL),
(1243, 138, 'Baneswar', 'বানেশ্বর', 'baneswarup.rajshahi.gov.bd', NULL, NULL),
(1244, 138, 'Valukgachi', 'ভালুক গাছি', 'valukgachiup.rajshahi.gov.bd', NULL, NULL),
(1245, 138, 'Shilmaria', 'শিলমাড়িয়া', 'shilmariaup.rajshahi.gov.bd', NULL, NULL),
(1246, 138, 'Jewpara', 'জিউপাড়া', 'jewparaup.rajshahi.gov.bd', NULL, NULL),
(1247, 139, 'Bajubagha', 'বাজুবাঘা', 'bajubaghaup.rajshahi.gov.bd', NULL, NULL),
(1248, 139, 'Gorgori', 'গড়গড়ি', 'gorgoriup.rajshahi.gov.bd', NULL, NULL),
(1249, 139, 'Pakuria', 'পাকুড়িয়া', 'pakuriaup.rajshahi.gov.bd', NULL, NULL),
(1250, 139, 'Monigram', 'মনিগ্রাম', 'monigramup.rajshahi.gov.bd', NULL, NULL),
(1251, 139, 'Bausa', 'বাউসা', 'bausaup.rajshahi.gov.bd', NULL, NULL),
(1252, 139, 'Arani', 'আড়ানী', 'araniup.rajshahi.gov.bd', NULL, NULL),
(1253, 140, 'Godagari', 'গোদাগাড়ী', 'godagariup.rajshahi.gov.bd', NULL, NULL),
(1254, 140, 'Mohonpur', 'মোহনপুর', 'mohonpurup.rajshahi.gov.bd', NULL, NULL),
(1255, 140, 'Pakri', 'পাকড়ী', 'pakriup.rajshahi.gov.bd', NULL, NULL),
(1256, 140, 'Risikul', 'রিশিকুল', 'risikulup.rajshahi.gov.bd', NULL, NULL),
(1257, 140, 'Gogram', 'গোগ্রাম', 'gogramup.rajshahi.gov.bd', NULL, NULL),
(1258, 140, 'Matikata', 'মাটিকাটা', 'matikataup.rajshahi.gov.bd', NULL, NULL),
(1259, 140, 'Dewpara', 'দেওপাড়া', 'dewparaup.rajshahi.gov.bd', NULL, NULL),
(1260, 140, 'Basudebpur', 'বাসুদেবপুর', 'basudebpurup.rajshahi.gov.bd', NULL, NULL),
(1261, 140, 'Asariadaha', 'আষাড়িয়াদহ', 'asariadahaup.rajshahi.gov.bd', NULL, NULL),
(1262, 141, 'Kalma', 'কলমা', 'kalmaup.rajshahi.gov.bd', NULL, NULL),
(1263, 141, 'Badhair', 'বাধাইড়', 'badhairup.rajshahi.gov.bd', NULL, NULL),
(1264, 141, 'Panchandar', 'পাঁচন্দর', 'panchandarup.rajshahi.gov.bd', NULL, NULL),
(1265, 141, 'Saranjai', 'সরঞ্জাই', 'saranjaiup.rajshahi.gov.bd', NULL, NULL),
(1266, 141, 'Talondo', 'তালন্দ', 'talondoup.rajshahi.gov.bd', NULL, NULL),
(1267, 141, 'Kamargaon', 'কামারগাঁ', 'kamargaonup.rajshahi.gov.bd', NULL, NULL),
(1268, 141, 'Chanduria', 'চান্দুড়িয়া', 'chanduriaup.rajshahi.gov.bd', NULL, NULL),
(1269, 142, 'Gobindopara', 'গোবিন্দপাড়া', 'gobindoparaup.rajshahi.gov.bd', NULL, NULL),
(1270, 142, 'Nordas', 'নরদাস', 'nordasup.rajshahi.gov.bd', NULL, NULL),
(1271, 142, 'Dippur', 'দ্বীপপুর', 'dippurup.rajshahi.gov.bd', NULL, NULL),
(1272, 142, 'Borobihanoli', 'বড়বিহানলী', 'borobihanoliup.rajshahi.gov.bd', NULL, NULL),
(1273, 142, 'Auchpara', 'আউচপাড়া', 'auchparaup.rajshahi.gov.bd', NULL, NULL),
(1274, 142, 'Sreepur', 'শ্রীপুর', 'sreepurup.rajshahi.gov.bd', NULL, NULL),
(1275, 142, 'Basupara', 'বাসুপাড়া', 'basuparaup.rajshahi.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1276, 142, 'Kacharikoalipara', 'কাচাড়ী কোয়লিপাড়া', 'kacharikoaliparaup.rajshahi.gov.bd', NULL, NULL),
(1277, 142, 'Suvodanga', 'শুভডাঙ্গা', 'suvodangaup.rajshahi.gov.bd', NULL, NULL),
(1278, 142, 'Mariaup', 'মাড়িয়া', 'mariaup10.rajshahi.gov.bd', NULL, NULL),
(1279, 142, 'Ganipur', 'গণিপুর', 'ganipurup.rajshahi.gov.bd', NULL, NULL),
(1280, 142, 'Zhikara', 'ঝিকড়া', 'zhikaraup.rajshahi.gov.bd', NULL, NULL),
(1281, 142, 'Gualkandi', 'গোয়ালকান্দি', 'gualkandiup.rajshahi.gov.bd', NULL, NULL),
(1282, 142, 'Hamirkutsa', 'হামিরকুৎসা', 'hamirkutsaup.rajshahi.gov.bd', NULL, NULL),
(1283, 142, 'Jogipara', 'যোগিপাড়া', 'jogiparaup.rajshahi.gov.bd', NULL, NULL),
(1284, 142, 'Sonadanga', 'সোনাডাঙ্গা', 'sonadangaup.rajshahi.gov.bd', NULL, NULL),
(1285, 143, 'Brahmapur', 'ব্রহ্মপুর', 'brahmapurup.natore.gov.bd', NULL, NULL),
(1286, 143, 'Madhnagar', 'মাধনগর', 'madhnagar.natore.gov.bd', NULL, NULL),
(1287, 143, 'Khajura', 'খাজুরা', 'khajura.bdgovportal.com', NULL, NULL),
(1288, 143, 'Piprul', 'পিপরুল', 'piprulup.natore.gov.bd', NULL, NULL),
(1289, 143, 'Biprobelghoria', 'বিপ্রবেলঘড়িয়া', 'biprobelghoria.bdgovportal.com', NULL, NULL),
(1290, 143, 'Chhatni', 'ছাতনী', 'chhatni.bdgovportal.com', NULL, NULL),
(1291, 143, 'Tebaria', 'তেবাড়িয়া', 'tebariaup.natore.gov.bd', NULL, NULL),
(1292, 143, 'Dighapatia', 'দিঘাপতিয়া', 'dighapatiaup.natore.gov.bd', NULL, NULL),
(1293, 143, 'Luxmipurkholabaria', 'লক্ষীপুর খোলাবাড়িয়া', 'luxmipurkholabariaup.natore.gov.bd', NULL, NULL),
(1294, 143, 'Barahorispur', 'বড়হরিশপুর', 'barahorispur.bdgovportal.com', NULL, NULL),
(1295, 143, 'Kaphuria', 'কাফুরিয়া', 'kaphuria.bdgovportal.com', NULL, NULL),
(1296, 143, 'Halsa', 'হালসা', 'halsa.natore.gov.bd', NULL, NULL),
(1297, 144, 'Sukash', 'শুকাশ', 'sukashup.natore.gov.bd', NULL, NULL),
(1298, 144, 'Dahia', 'ডাহিয়া', 'dahiaup.natore.gov.bd', NULL, NULL),
(1299, 144, 'Italy', 'ইটালী', 'italyup.natore.gov.bd', NULL, NULL),
(1300, 144, 'Kalam', 'কলম', 'kalamup.natore.gov.bd', NULL, NULL),
(1301, 144, 'Chamari', 'চামারী', 'chamariup.natore.gov.bd', NULL, NULL),
(1302, 144, 'Hatiandaha', 'হাতিয়ানদহ', 'hatiandahaup.natore.gov.bd', NULL, NULL),
(1303, 144, 'Lalore', 'লালোর', 'laloreup.natore.gov.bd', NULL, NULL),
(1304, 144, 'Sherkole', 'শেরকোল', 'sherkoleup.natore.gov.bd', NULL, NULL),
(1305, 144, 'Tajpur', 'তাজপুর', 'tajpurup.natore.gov.bd', NULL, NULL),
(1306, 144, 'Chaugram', 'চৌগ্রাম', 'chaugramup.natore.gov.bd', NULL, NULL),
(1307, 144, 'Chhatardighi', 'ছাতারদিঘী', 'chhatardighiup.natore.gov.bd', NULL, NULL),
(1308, 144, 'Ramanandakhajura', 'রামান্দখাজুরা', 'ramanandakhajuraup.natore.gov.bd', NULL, NULL),
(1309, 145, 'Joari', 'জোয়াড়ী', 'joariup.natore.gov.bd', NULL, NULL),
(1310, 145, 'Baraigram', 'বড়াইগ্রাম', 'baraigramup.natore.gov.bd', NULL, NULL),
(1311, 145, 'Zonail', 'জোনাইল', 'zonailup.natore.gov.bd', NULL, NULL),
(1312, 145, 'Nagor', 'নগর', 'nagorup.natore.gov.bd', NULL, NULL),
(1313, 145, 'Majgoan', 'মাঝগাও', 'majgoanup.natore.gov.bd', NULL, NULL),
(1314, 145, 'Gopalpur', 'গোপালপুর', 'gopalpurup.natore.gov.bd', NULL, NULL),
(1315, 145, 'Chandai', 'চান্দাই', 'chandai.bdgovportal.com', NULL, NULL),
(1316, 146, 'Panka', 'পাঁকা', 'pankaup.natore.gov.bd', NULL, NULL),
(1317, 146, 'Jamnagor', 'জামনগর', 'jamnagorup.natore.gov.bd', NULL, NULL),
(1318, 146, 'Bagatipara', 'বাগাতিপাড়া', 'bagatiparaup.natore.gov.bd', NULL, NULL),
(1319, 146, 'Dayarampur', 'দয়ারামপুর', 'dayarampurup.natore.gov.bd', NULL, NULL),
(1320, 146, 'Faguardiar', 'ফাগুয়ারদিয়াড়', 'faguardiarup.natore.gov.bd', NULL, NULL),
(1321, 147, 'Lalpur', 'লালপুর', 'lalpurup.natore.gov.bd', NULL, NULL),
(1322, 147, 'Iswardi', 'ঈশ্বরদী', 'iswardiup.natore.gov.bd', NULL, NULL),
(1323, 147, 'Chongdhupoil', 'চংধুপইল', 'chongdhupoilup.natore.gov.bd', NULL, NULL),
(1324, 147, 'Arbab', 'আড়বাব', 'arbabup.natore.gov.bd', NULL, NULL),
(1325, 147, 'Bilmaria', 'বিলমাড়িয়া', 'bilmariaup.natore.gov.bd', NULL, NULL),
(1326, 147, 'Duaria', 'দুয়ারিয়া', 'duariaup.natore.gov.bd', NULL, NULL),
(1327, 147, 'Oalia', 'ওয়ালিয়া', 'oaliaup.natore.gov.bd', NULL, NULL),
(1328, 147, 'Durduria', 'দুড়দুরিয়া', 'durduriaup.natore.gov.bd', NULL, NULL),
(1329, 147, 'Arjunpur', 'অর্জুনপুর বরমহাটী', 'arjunpurup.natore.gov.bd', NULL, NULL),
(1330, 147, 'Kadimchilan', 'কদিমচিলান', 'kadimchilanup.natore.gov.bd', NULL, NULL),
(1331, 148, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.natore.gov.bd', NULL, NULL),
(1332, 148, 'Biaghat', 'বিয়াঘাট', 'biaghatup.natore.gov.bd', NULL, NULL),
(1333, 148, 'Khubjipur', 'খুবজীপুর', 'khubjipurup.natore.gov.bd', NULL, NULL),
(1334, 148, 'Dharabarisha', 'ধারাবারিষা', 'dharabarishaup.natore.gov.bd', NULL, NULL),
(1335, 148, 'Moshindha', 'মসিন্দা', 'moshindhaup.natore.gov.bd', NULL, NULL),
(1336, 148, 'Chapila', 'চাপিলা', 'chapilaup.natore.gov.bd', NULL, NULL),
(1337, 150, 'Rukindipur', 'রুকিন্দীপুর', 'rukindipurup.joypurhat.gov.bd', NULL, NULL),
(1338, 150, 'Sonamukhi', 'সোনামূখী', 'sonamukhiup.joypurhat.gov.bd', NULL, NULL),
(1339, 150, 'Tilakpur', 'তিলকপুর', 'tilakpurup.joypurhat.gov.bd', NULL, NULL),
(1340, 150, 'Raikali', 'রায়কালী', 'raikaliup.joypurhat.gov.bd', NULL, NULL),
(1341, 150, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.joypurhat.gov.bd', NULL, NULL),
(1342, 151, 'Matrai', 'মাত্রাই', 'matraiup.joypurhat.gov.bd', NULL, NULL),
(1343, 151, 'Ahammedabad', 'আহম্মেদাবাদ', 'ahammedabadup.joypurhat.gov.bd', NULL, NULL),
(1344, 151, 'Punot', 'পুনট', 'punotup.joypurhat.gov.bd', NULL, NULL),
(1345, 151, 'Zindarpur', 'জিন্দারপুর', 'zindarpurup.joypurhat.gov.bd', NULL, NULL),
(1346, 151, 'Udaipur', 'উদয়পুর', 'udaipurup.joypurhat.gov.bd', NULL, NULL),
(1347, 152, 'Alampur', 'আলমপুর', 'alampurup.joypurhat.gov.bd', NULL, NULL),
(1348, 152, 'Borail', 'বড়াইল', 'borailup.joypurhat.gov.bd', NULL, NULL),
(1349, 152, 'Tulshiganga', ' তুলশীগংগা', 'tulshigangaup.joypurhat.gov.bd', NULL, NULL),
(1350, 152, 'Mamudpur', 'মামুদপুর', 'mamudpurup.joypurhat.gov.bd', NULL, NULL),
(1351, 152, 'Boratara', 'বড়তারা', 'borataraup.joypurhat.gov.bd', NULL, NULL),
(1352, 153, 'Bagjana', 'বাগজানা', 'bagjanaup.joypurhat.gov.bd', NULL, NULL),
(1353, 153, 'Dharanji', 'ধরঞ্জি', 'dharanjiup.joypurhat.gov.bd', NULL, NULL),
(1354, 153, 'Aymarasulpur', 'আয়মারসুলপুর', 'aymarasulpurup.joypurhat.gov.bd', NULL, NULL),
(1355, 153, 'Balighata', 'বালিঘাটা', 'balighataup.joypurhat.gov.bd', NULL, NULL),
(1356, 153, 'Atapur', 'আটাপুর', 'atapurup.joypurhat.gov.bd', NULL, NULL),
(1357, 153, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.joypurhat.gov.bd', NULL, NULL),
(1358, 153, 'Aolai', 'আওলাই', 'aolaiup.joypurhat.gov.bd', NULL, NULL),
(1359, 153, 'Kusumba', 'কুসুম্বা', 'kusumbaup.joypurhat.gov.bd', NULL, NULL),
(1360, 154, 'Amdai', 'আমদই', 'amdaiup.joypurhat.gov.bd', NULL, NULL),
(1361, 154, 'Bamb', 'বম্বু', 'bambuup.joypurhat.gov.bd', NULL, NULL),
(1362, 154, 'Dogachi', 'দোগাছি', 'dogachiup.joypurhat.gov.bd', NULL, NULL),
(1363, 154, 'Puranapail', 'পুরানাপৈল', 'puranapailup.joypurhat.gov.bd', NULL, NULL),
(1364, 154, 'Jamalpur', 'জামালপুর', 'jamalpurup.joypurhat.gov.bd', NULL, NULL),
(1365, 154, 'Chakborkat', 'চকবরকত', 'chakborkatup.joypurhat.gov.bd', NULL, NULL),
(1366, 154, 'Mohammadabad', 'মোহাম্মদাবাদ', 'mohammadabadup.joypurhat.gov.bd', NULL, NULL),
(1367, 154, 'Dhalahar', 'ধলাহার', 'dhalaharup.joypurhat.gov.bd', NULL, NULL),
(1368, 154, 'Bhadsha', 'ভাদসা', 'bhadshaup.joypurhat.gov.bd', NULL, NULL),
(1369, 155, 'Alatuli', 'আলাতুলী', 'alatuliup.chapainawabganj.gov.bd', NULL, NULL),
(1370, 155, 'Baroghoria', 'বারঘরিয়া', 'baroghoriaup.chapainawabganj.gov.bd', NULL, NULL),
(1371, 155, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.chapainawabganj.gov.bd', NULL, NULL),
(1372, 155, 'Ranihati', 'রানীহাটি', 'ranihatiup.chapainawabganj.gov.bd', NULL, NULL),
(1373, 155, 'Baliadanga', 'বালিয়াডাঙ্গা', 'baliadangaup.chapainawabganj.gov.bd', NULL, NULL),
(1374, 155, 'Gobratola', 'গোবরাতলা', 'gobratolaup.chapainawabganj.gov.bd', NULL, NULL),
(1375, 155, 'Jhilim', 'ঝিলিম', 'jhilimup.chapainawabganj.gov.bd', NULL, NULL),
(1376, 155, 'Char Anupnagar', 'চর অনুপনগর', 'charaunupnagarup.chapainawabganj.gov.bd', NULL, NULL),
(1377, 155, 'Debinagar', 'দেবীনগর', 'debinagarup.chapainawabganj.gov.bd', NULL, NULL),
(1378, 155, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.chapainawabganj.gov.bd', NULL, NULL),
(1379, 155, 'Islampur', 'ইসলামপুর', 'islampurup.chapainawabganj.gov.bd', NULL, NULL),
(1380, 155, 'Charbagdanga', 'চরবাগডাঙ্গা', 'charbagdangaup.chapainawabganj.gov.bd', NULL, NULL),
(1381, 155, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chapainawabganj.gov.bd', NULL, NULL),
(1382, 155, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.chapainawabganj.gov.bd', NULL, NULL),
(1383, 156, 'Radhanagar', 'রাধানগর', 'radhanagarup.chapainawabganj.gov.bd', NULL, NULL),
(1384, 156, 'Rahanpur', 'রহনপুর', 'rahanpurup.chapainawabganj.gov.bd', NULL, NULL),
(1385, 156, 'Boalia', 'বোয়ালিয়া', 'boaliaup.chapainawabganj.gov.bd', NULL, NULL),
(1386, 156, 'Bangabari', 'বাঙ্গাবাড়ী', 'bangabariup.chapainawabganj.gov.bd', NULL, NULL),
(1387, 156, 'Parbotipur', 'পার্বতীপুর', 'parbotipurup.chapainawabganj.gov.bd', NULL, NULL),
(1388, 156, 'Chowdala', 'চৌডালা', 'chowdalaup.chapainawabganj.gov.bd', NULL, NULL),
(1389, 156, 'Gomostapur', 'গোমস্তাপুর', 'gomostapurup.chapainawabganj.gov.bd', NULL, NULL),
(1390, 156, 'Alinagar', 'আলীনগর', 'alinagarup.chapainawabganj.gov.bd', NULL, NULL),
(1391, 157, 'Fhotepur', 'ফতেপুর', 'fhotepurup.chapainawabganj.gov.bd', NULL, NULL),
(1392, 157, 'Kosba', 'কসবা', 'kosbaup.chapainawabganj.gov.bd', NULL, NULL),
(1393, 157, 'Nezampur', 'নেজামপুর', 'nezampurup.chapainawabganj.gov.bd', NULL, NULL),
(1394, 157, 'Nachol', 'নাচোল', 'nacholup.chapainawabganj.gov.bd', NULL, NULL),
(1395, 158, 'Bholahat', 'ভোলাহাট', 'bholahatup.chapainawabganj.gov.bd', NULL, NULL),
(1396, 158, 'Jambaria', 'জামবাড়িয়া', 'jambariaup.chapainawabganj.gov.bd', NULL, NULL),
(1397, 158, 'Gohalbari', 'গোহালবাড়ী', 'gohalbariup.chapainawabganj.gov.bd', NULL, NULL),
(1398, 158, 'Daldoli', 'দলদলী', 'daldoliup.chapainawabganj.gov.bd', NULL, NULL),
(1399, 159, 'Binodpur', 'বিনোদপুর', 'binodpurup.chapainawabganj.gov.bd', NULL, NULL),
(1400, 159, 'Chakkirti', 'চককির্তী', 'chakkirtiup.chapainawabganj.gov.bd', NULL, NULL),
(1401, 159, 'Daipukuria', 'দাইপুকুরিয়া', 'daipukuriaup.chapainawabganj.gov.bd', NULL, NULL),
(1402, 159, 'Dhainagar', 'ধাইনগর', 'dhainagarup.chapainawabganj.gov.bd', NULL, NULL),
(1403, 159, 'Durlovpur', 'দুর্লভপুর', 'durlovpurup.chapainawabganj.gov.bd', NULL, NULL),
(1404, 159, 'Ghorapakhia', 'ঘোড়াপাখিয়া', 'ghorapakhiaup.chapainawabganj.gov.bd', NULL, NULL),
(1405, 159, 'Mobarakpur', 'মোবারকপুর', 'mobarakpurup.chapainawabganj.gov.bd', NULL, NULL),
(1406, 159, 'Monakasha', 'মনাকষা', 'monakashaup.chapainawabganj.gov.bd', NULL, NULL),
(1407, 159, 'Noyalavanga', 'নয়ালাভাঙ্গা', 'noyalavangaup.chapainawabganj.gov.bd', NULL, NULL),
(1408, 159, 'Panka', 'পাঁকা', 'pankaup.chapainawabganj.gov.bd', NULL, NULL),
(1409, 159, 'Chatrajitpur', 'ছত্রাজিতপুর', 'chhatrajitpurup.chapainawabganj.gov.bd', NULL, NULL),
(1410, 159, 'Shahabajpur', 'শাহাবাজপুর', 'shahabajpurup.chapainawabganj.gov.bd', NULL, NULL),
(1411, 159, 'Shyampur', 'শ্যামপুর', 'shyampurup.chapainawabganj.gov.bd', NULL, NULL),
(1412, 159, 'Kansat', 'কানসাট', 'kansatup.bdgovportal.com', NULL, NULL),
(1413, 159, 'Ujirpur', 'উজিরপুর', 'ujirpurup.chapainawabganj.gov.bd', NULL, NULL),
(1414, 160, '1nomohadevpur', 'মহাদেবপুর', '1nomohadevpurup.naogaon.gov.bd', NULL, NULL),
(1415, 160, 'Hatur', 'হাতুড়', '2nohaturup.naogaon.gov.bd', NULL, NULL),
(1416, 160, 'Khajur', 'খাজুর', '3nokhajurup.naogaon.gov.bd', NULL, NULL),
(1417, 160, 'Chandas', 'চাঁন্দাশ', '4nochandasup.naogaon.gov.bd', NULL, NULL),
(1418, 160, 'Enayetpur', 'এনায়েতপুর', '6noenayetpurup.naogaon.gov.bd', NULL, NULL),
(1419, 160, 'Sofapur', 'সফাপুর', '7nosofapurup.naogaon.gov.bd', NULL, NULL),
(1420, 160, 'Uttargram', 'উত্তরগ্রাম', '8nouttargramup.naogaon.gov.bd', NULL, NULL),
(1421, 160, 'Cheragpur', 'চেরাগপুর', '9nocheragpurup.naogaon.gov.bd', NULL, NULL),
(1422, 160, 'Vimpur', 'ভীমপুর', '10novimpurup.naogaon.gov.bd', NULL, NULL),
(1423, 160, 'Roygon', 'রাইগাঁ', 'roygonup.naogaon.gov.bd', NULL, NULL),
(1424, 161, 'Badalgachi', 'বদলগাছী', '1nobadalgachiup.naogaon.gov.bd', NULL, NULL),
(1425, 161, 'Mothurapur', 'মথুরাপুর', '2nomothurapurup.naogaon.gov.bd', NULL, NULL),
(1426, 161, 'Paharpur', 'পাহারপুর', '3nopaharpurup.naogaon.gov.bd', NULL, NULL),
(1427, 161, 'Mithapur', 'মিঠাপুর', '4nomithapurup.naogaon.gov.bd', NULL, NULL),
(1428, 161, 'Kola', 'কোলা', '5nokolaup.naogaon.gov.bd', NULL, NULL),
(1429, 161, 'Bilashbari', 'বিলাশবাড়ী', '6nobilashbariup.naogaon.gov.bd', NULL, NULL),
(1430, 161, 'Adhaipur', 'আধাইপুর', '7noadhaipurup.naogaon.gov.bd', NULL, NULL),
(1431, 161, 'Balubhara', 'বালুভরা', '8nobalubharaup.naogaon.gov.bd', NULL, NULL),
(1432, 162, 'Patnitala', 'পত্নীতলা', '1nopatnitalaup.naogaon.gov.bd', NULL, NULL),
(1433, 162, 'Nirmail', 'নিমইল', '2nonirmailup.naogaon.gov.bd', NULL, NULL),
(1434, 162, 'Dibar', 'দিবর', '3nodibarup.naogaon.gov.bd', NULL, NULL),
(1435, 162, 'Akbarpur', 'আকবরপুর', '4noakbarpurup.naogaon.gov.bd', NULL, NULL),
(1436, 162, 'Matindar', 'মাটিন্দর', '5nomatindarup.naogaon.gov.bd', NULL, NULL),
(1437, 162, 'Krishnapur', 'কৃষ্ণপুর', '6nokrishnapurup.naogaon.gov.bd', NULL, NULL),
(1438, 162, 'Patichrara', 'পাটিচড়া', '7nopatichraraup.naogaon.gov.bd', NULL, NULL),
(1439, 162, 'Nazipur', 'নজিপুর', '8nonazipurup.naogaon.gov.bd', NULL, NULL),
(1440, 162, 'Ghasnagar', 'ঘষনগর', '9noghasnagarup.naogaon.gov.bd', NULL, NULL),
(1441, 162, 'Amair', 'আমাইড়', '10noamairup.naogaon.gov.bd', NULL, NULL),
(1442, 162, 'Shihara', 'শিহারা', '11noahiharaup.naogaon.gov.bd', NULL, NULL),
(1443, 163, 'Dhamoirhat', 'ধামইরহাট', '1nodhamoirhatup.naogaon.gov.bd', NULL, NULL),
(1444, 163, 'Alampur', 'আলমপুর', '3noalampurup.naogaon.gov.bd', NULL, NULL),
(1445, 163, 'Umar', 'উমার', '4noumarup.naogaon.gov.bd', NULL, NULL),
(1446, 163, 'Aranagar', 'আড়ানগর', '5noaranagarup.naogaon.gov.bd', NULL, NULL),
(1447, 163, 'Jahanpur', 'জাহানপুর', '6nojahanpurup.naogaon.gov.bd', NULL, NULL),
(1448, 163, 'Isabpur', 'ইসবপুর', '7noisabpurup.naogaon.gov.bd', NULL, NULL),
(1449, 163, 'Khelna', 'খেলনা', '8nokhelnaup.naogaon.gov.bd', NULL, NULL),
(1450, 163, 'Agradigun', 'আগ্রাদ্বিগুন', '2noagradigunup.naogaon.gov.bd', NULL, NULL),
(1451, 164, 'Hajinagar', 'হাজীনগর', '1nohajinagarup.naogaon.gov.bd', NULL, NULL),
(1452, 164, 'Chandannagar', 'চন্দননগর', '2nochandannagarup.naogaon.gov.bd', NULL, NULL),
(1453, 164, 'Bhabicha', 'ভাবিচা', '3nobhabichaup.naogaon.gov.bd', NULL, NULL),
(1454, 164, 'Niamatpur', 'নিয়ামতপুর', '4noniamatpurup.naogaon.gov.bd', NULL, NULL),
(1455, 164, 'Rasulpur', 'রসুলপুর', '5norasulpurup.naogaon.gov.bd', NULL, NULL),
(1456, 164, 'Paroil', 'পাড়ইল', '6noparoilup.naogaon.gov.bd', NULL, NULL),
(1457, 164, 'Sremantapur', 'শ্রীমন্তপুর', '7nosremantapurup.naogaon.gov.bd', NULL, NULL),
(1458, 164, 'Bahadurpur', 'বাহাদুরপুর', '8nobahadurpurup.naogaon.gov.bd', NULL, NULL),
(1459, 165, 'Varsho', 'ভারশো', '1novarshoup.naogaon.gov.bd', NULL, NULL),
(1460, 165, 'Valain', 'ভালাইন', '2novalainup.naogaon.gov.bd', NULL, NULL),
(1461, 165, 'Paranpur', 'পরানপুর', '3noparanpurup.naogaon.gov.bd', NULL, NULL),
(1462, 165, 'Manda', 'মান্দা', '4nomandaup.naogaon.gov.bd', NULL, NULL),
(1463, 165, 'Goneshpur', 'গনেশপুর', '5nogoneshpurup.naogaon.gov.bd', NULL, NULL),
(1464, 165, 'Moinom', 'মৈনম', '6nomoinomup.naogaon.gov.bd', NULL, NULL),
(1465, 165, 'Proshadpur', 'প্রসাদপুর', '7noproshadpurup.naogaon.gov.bd', NULL, NULL),
(1466, 165, 'Kosomba', 'কুসুম্বা', '8nokosombaup.naogaon.gov.bd', NULL, NULL),
(1467, 165, 'Tetulia', 'তেঁতুলিয়া', '9notetuliaup.naogaon.gov.bd', NULL, NULL),
(1468, 165, 'Nurullabad', 'নূরুল্যাবাদ', '10nonurullabadup.naogaon.gov.bd', NULL, NULL),
(1469, 165, 'Kalikapur', 'কালিকাপুর', '11nokalikapurup.naogaon.gov.bd', NULL, NULL),
(1470, 165, 'Kashopara', 'কাঁশোকাপুর', '12nokashoparaup.naogaon.gov.bd', NULL, NULL),
(1471, 165, 'Koshob', 'কশব', '13nokoshobup.naogaon.gov.bd', NULL, NULL),
(1472, 165, 'Bisnopur', 'বিষ্ণপুর', '14nobisnopurup.naogaon.gov.bd', NULL, NULL),
(1473, 166, 'Shahagola', 'শাহাগোলা', '1noshahagolaup.naogaon.gov.bd', NULL, NULL),
(1474, 166, 'Bhonpara', 'ভোঁপড়া', '2nobhonparaup.naogaon.gov.bd', NULL, NULL),
(1475, 166, 'Ahsanganj', 'আহসানগঞ্জ', '3noahsanganjup.naogaon.gov.bd', NULL, NULL),
(1476, 166, 'Panchupur', 'পাঁচুপুর', '4nopanchupurup.naogaon.gov.bd', NULL, NULL),
(1477, 166, 'Bisha', 'বিশা', '5nobishaup.naogaon.gov.bd', NULL, NULL),
(1478, 166, 'Maniary', 'মনিয়ারী', '6nomaniaryup.naogaon.gov.bd', NULL, NULL),
(1479, 166, 'Kalikapur', 'কালিকাপুর', '7nokalikapurup.naogaon.gov.bd', NULL, NULL),
(1480, 166, 'Hatkalupara', 'হাটকালুপাড়া', '8nohatkaluparaup.naogaon.gov.bd', NULL, NULL),
(1481, 167, 'Khatteshawr', 'খট্টেশ্বর রাণীনগর', '1nokhatteshawrup.naogaon.gov.bd', NULL, NULL),
(1482, 167, 'Kashimpur', 'কাশিমপুর', '2nokashimpurup.naogaon.gov.bd', NULL, NULL),
(1483, 167, 'Gona', 'গোনা', '3nogonaup.naogaon.gov.bd', NULL, NULL),
(1484, 167, 'Paroil', 'পারইল', '4noparoilup.naogaon.gov.bd', NULL, NULL),
(1485, 167, 'Borgoca', 'বরগাছা', '5noborgocaup.naogaon.gov.bd', NULL, NULL),
(1486, 167, 'Kaligram', 'কালিগ্রাম', '6nokaligramup.naogaon.gov.bd', NULL, NULL),
(1487, 167, 'Ekdala', 'একডালা', '7noekdalaup.naogaon.gov.bd', NULL, NULL),
(1488, 167, 'Mirat', 'মিরাট', '8nomiratup.naogaon.gov.bd', NULL, NULL),
(1489, 168, 'Barshail', 'বর্ষাইল', '1nobarshailup.naogaon.gov.bd', NULL, NULL),
(1490, 168, 'Kritipur', 'কির্ত্তিপুর', '2nokritipurup.naogaon.gov.bd', NULL, NULL),
(1491, 168, 'Baktiarpur', 'বক্তারপুর', '3nobaktiarpurup.naogaon.gov.bd', NULL, NULL),
(1492, 168, 'Tilakpur', 'তিলোকপুর', '4notilakpurup.naogaon.gov.bd', NULL, NULL),
(1493, 168, 'Hapaniya', 'হাপানিয়া', '5nohapaniyaup.naogaon.gov.bd', NULL, NULL),
(1494, 168, 'Dubalhati', 'দুবলহাটী', '6nodubalhatiup.naogaon.gov.bd', NULL, NULL),
(1495, 168, 'Boalia', 'বোয়ালিয়া', '7noboaliaup.naogaon.gov.bd', NULL, NULL),
(1496, 168, 'Hashaigari', 'হাঁসাইগাড়ী', '8nohashaigariup.naogaon.gov.bd', NULL, NULL),
(1497, 168, 'Chandipur', 'চন্ডিপুর', '9nochandipurup.naogaon.gov.bd', NULL, NULL),
(1498, 168, 'Bolihar', 'বলিহার', '10noboliharup.naogaon.gov.bd', NULL, NULL),
(1499, 168, 'Shekerpur', 'শিকারপুর', '11noshekerpurup.naogaon.gov.bd', NULL, NULL),
(1500, 168, 'Shailgachhi', 'শৈলগাছী', '12noshailgachhiup.naogaon.gov.bd', NULL, NULL),
(1501, 169, 'Nitpur', 'নিতপুর', 'nitpurup.naogaon.gov.bd', NULL, NULL),
(1502, 169, 'Tetulia', 'তেঁতুলিয়া', '2notetuliaup.naogaon.gov.bd', NULL, NULL),
(1503, 169, 'Chhaor', 'ছাওড়', '3nochhaorup.naogaon.gov.bd', NULL, NULL),
(1504, 169, 'Ganguria', 'গাঙ্গুরিয়া', '4noganguriaup.naogaon.gov.bd', NULL, NULL),
(1505, 169, 'Ghatnagar', 'ঘাটনগর', '5noghatnagarup.naogaon.gov.bd', NULL, NULL),
(1506, 169, 'Moshidpur', 'মশিদপুর', '6nomoshidpurup.naogaon.gov.bd', NULL, NULL),
(1507, 170, 'Sapahar', 'সাপাহার', '1nosapaharup.naogaon.gov.bd', NULL, NULL),
(1508, 170, 'Tilna', 'তিলনা', '3notilnaup.naogaon.gov.bd', NULL, NULL),
(1509, 170, 'Aihai', 'আইহাই', '4noaihaiup.naogaon.gov.bd', NULL, NULL),
(1510, 170, 'Shironti', 'শিরন্টী', '6noshirontiup.naogaon.gov.bd', NULL, NULL),
(1511, 170, 'Goala', 'গোয়ালা', 'goalaup.naogaon.gov.bd', NULL, NULL),
(1512, 170, 'Patari', 'পাতাড়ী', 'patariup.naogaon.gov.bd', NULL, NULL),
(1513, 171, 'Nehalpur', 'নেহালপুর', 'nehalpurup.jessore.gov.bd', NULL, NULL),
(1514, 171, 'Hariharnagar', 'হরিহরনগর', 'hariharnagarup.jessore.gov.bd', NULL, NULL),
(1515, 171, 'Haridaskati', 'হরিদাসকাটি', 'haridaskatiup.jessore.gov.bd', NULL, NULL),
(1516, 171, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jessore.gov.bd', NULL, NULL),
(1517, 171, 'Rohita', 'রোহিতা', 'rohitaup.jessore.gov.bd', NULL, NULL),
(1518, 171, 'Maswimnagar', 'মশ্মিমনগর', 'maswimnagarup.jessore.gov.bd', NULL, NULL),
(1519, 171, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jessore.gov.bd', NULL, NULL),
(1520, 171, 'Manirampur', 'মনিরামপুর', 'manirampurup.jessore.gov.bd', NULL, NULL),
(1521, 171, 'Bhojgati', 'ভোজগাতি', 'bhojgatiup.jessore.gov.bd', NULL, NULL),
(1522, 171, 'Durbadanga', 'দুর্বাডাংগা', 'durbadangaup.jessore.gov.bd', NULL, NULL),
(1523, 171, 'Dhakuria', 'ঢাকুরিয়া', 'dhakuriaup.jessore.gov.bd', NULL, NULL),
(1524, 171, 'Jhanpa', 'ঝাঁপা', 'jhanpaup.jessore.gov.bd', NULL, NULL),
(1525, 171, 'Chaluahati', 'চালুয়াহাটি', 'chaluahatiup.jessore.gov.bd', NULL, NULL),
(1526, 171, 'Khedapara', 'খেদাপাড়া', 'khedaparaup.jessore.gov.bd', NULL, NULL),
(1527, 171, 'Khanpur', 'খানপুর', 'khanpurup.jessore.gov.bd', NULL, NULL),
(1528, 171, 'Kultia', 'কুলটিয়া', 'kultiaup.jessore.gov.bd', NULL, NULL),
(1529, 171, 'Kashimnagar', 'কাশিমনগর', 'kashimnagarup.jessore.gov.bd', NULL, NULL),
(1530, 172, 'Baghutia', 'বাঘুটিয়া', 'baghutia.jessore.gov.bd', NULL, NULL),
(1531, 172, 'Chalishia', 'চলিশিয়া', 'chalishiaup.jessore.gov.bd', NULL, NULL),
(1532, 172, 'Sundoli', 'সুন্দলী', 'sundoliup.jessore.gov.bd', NULL, NULL),
(1533, 172, 'Siddhipasha', 'সিদ্দিপাশা', 'siddhipashaup.jessore.gov.bd', NULL, NULL),
(1534, 172, 'Sreedharpur', 'শ্রীধরপুর', 'sreedharpurup.jessore.gov.bd', NULL, NULL),
(1535, 172, 'Subharara', 'শুভরাড়া', 'subhararaup.jessore.gov.bd', NULL, NULL),
(1536, 172, 'Prambag', 'প্রেমবাগ', 'prambagup.jessore.gov.bd', NULL, NULL),
(1537, 172, 'Payra', 'পায়রা', 'payraup.jessore.gov.bd', NULL, NULL),
(1538, 173, 'Jaharpur', 'জহুরপুর', 'jaharpurup.jessore.gov.bd', NULL, NULL),
(1539, 173, 'Jamdia', 'জামদিয়া', 'jamdiaup.jessore.gov.bd', NULL, NULL),
(1540, 173, 'Darajhat', 'দরাজহাট', 'darajhatup.jessore.gov.bd', NULL, NULL),
(1541, 173, 'Dhalgram', 'ধলগ্রাম', 'dhalgramup.jessore.gov.bd', NULL, NULL),
(1542, 173, 'Narikelbaria', 'নারিকেলবাড়ীয়া', 'narikelbariaup.jessore.gov.bd', NULL, NULL),
(1543, 173, 'Bandabilla', 'বন্দবিলা', 'bandabillaup.jessore.gov.bd', NULL, NULL),
(1544, 173, 'Basuari', 'বাসুয়াড়ী', 'basuariup.jessore.gov.bd', NULL, NULL),
(1545, 173, 'Roypur', 'রায়পুর', 'roypurup.jessore.gov.bd', NULL, NULL),
(1546, 173, 'Dohakula', 'দোহাকুলা', 'dohakulaup.jessore.gov.bd', NULL, NULL),
(1547, 174, 'Chougachha', 'চৌগাছা', 'chougachhaup5.jessore.gov.bd', NULL, NULL),
(1548, 174, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup6.jessore.gov.bd', NULL, NULL),
(1549, 174, 'Dhuliani', 'ধুলিয়ানী', 'dhulianiup4.jessore.gov.bd', NULL, NULL),
(1550, 174, 'Narayanpur', 'নারায়নপুর', 'narayanpurup10.jessore.gov.bd', NULL, NULL),
(1551, 174, 'Patibila', 'পাতিবিলা', 'patibilaup7.jessore.gov.bd', NULL, NULL),
(1552, 174, 'Pashapole', 'পাশাপোল', 'pashapoleup2.jessore.gov.bd', NULL, NULL),
(1553, 174, 'Fulsara', 'ফুলসারা', 'fulsaraup1.jessore.gov.bd', NULL, NULL),
(1554, 174, 'Singhajhuli', 'সিংহঝুলি', 'singhajhuliup3.jessore.gov.bd', NULL, NULL),
(1555, 174, 'Sukpukhuria', 'সুখপুকুরিয়া', 'sukpukhuriaup11.jessore.gov.bd', NULL, NULL),
(1556, 174, 'Swarupdaha', 'সরুপদাহ', 'swarupdahaup9.jessore.gov.bd', NULL, NULL),
(1557, 174, 'Hakimpur', 'হাকিমপুর', 'hakimpurup8.jessore.gov.bd', NULL, NULL),
(1558, 175, 'Gangananda', 'গংগানন্দপুর', 'ganganandapurup.jessore.gov.bd', NULL, NULL),
(1559, 175, 'Gadkhali', 'গদখালী', 'gadkhaliup.jessore.gov.bd', NULL, NULL),
(1560, 175, 'Jhikargachha', 'ঝিকরগাছা', 'jhikargachhaup.jessore.gov.bd', NULL, NULL),
(1561, 175, 'Nabharan', 'নাভারন', 'nabharanup.jessore.gov.bd', NULL, NULL),
(1562, 175, 'Nibaskhola', 'নির্বাসখোলা', 'nibaskholaup.jessore.gov.bd', NULL, NULL),
(1563, 175, 'Panisara', 'পানিসারা', 'panisaraup.jessore.gov.bd', NULL, NULL),
(1564, 175, 'Bankra', 'বাঁকড়া', 'bankraup.jessore.gov.bd', NULL, NULL),
(1565, 175, 'Shankarpur', 'শংকরপুর', 'shankarpurup10.jessore.gov.bd', NULL, NULL),
(1566, 175, 'Shimulia', 'শিমুলিয়া', 'shimuliaup3.jessore.gov.bd', NULL, NULL),
(1567, 175, 'Hajirbagh', 'হাজিরবাগ', 'hajirbaghup9.jessore.gov.bd', NULL, NULL),
(1568, 175, 'Magura', 'মাগুরা', 'maguraup.jessore.gov.bd', NULL, NULL),
(1569, 176, 'Sufalakati', 'সুফলাকাটি', 'sufalakatiup8.jessore.gov.bd', NULL, NULL),
(1570, 176, 'Sagardari', 'সাগরদাড়ী', 'sagardariup2.jessore.gov.bd', NULL, NULL),
(1571, 176, 'Majidpur', 'মজিদপুর', 'majidpurup3.jessore.gov.bd', NULL, NULL),
(1572, 176, 'Mongolkot', 'মঙ্গলকোর্ট', 'mongolkotup5.jessore.gov.bd', NULL, NULL),
(1573, 176, 'Bidyanandakati', 'বিদ্যানন্দকাটি', 'bidyanandakatiup4.jessore.gov.bd', NULL, NULL),
(1574, 176, 'Panjia', 'পাজিয়া', 'panjiaup7.jessore.gov.bd', NULL, NULL),
(1575, 176, 'Trimohini', 'ত্রিমোহিনী', 'trimohiniup1.jessore.gov.bd', NULL, NULL),
(1576, 176, 'Gaurighona', 'গৌরিঘোনা', 'gaurighonaup9.jessore.gov.bd', NULL, NULL),
(1577, 176, 'Keshabpur', 'কেশবপুর', 'keshabpurup6.jessore.gov.bd', NULL, NULL),
(1578, 177, 'Lebutala', 'লেবুতলা', 'lebutalaup.jessore.gov.bd', NULL, NULL),
(1579, 177, 'Ichhali', 'ইছালী', 'ichhaliup.jessore.gov.bd', NULL, NULL),
(1580, 177, 'Arabpur', 'আরবপুর', 'arabpurup9.jessore.gov.bd', NULL, NULL),
(1581, 177, 'Upasahar', 'উপশহর', 'upasaharup.jessore.gov.bd', NULL, NULL),
(1582, 177, 'Kachua', 'কচুয়া', 'kachuaup13.jessore.gov.bd', NULL, NULL),
(1583, 177, 'Kashimpur', 'কাশিমপুর', 'kashimpurup6.jessore.gov.bd', NULL, NULL),
(1584, 177, 'Chanchra', 'চাঁচড়া', 'chanchraup.jessore.gov.bd', NULL, NULL),
(1585, 177, 'Churamankati', 'চূড়ামনকাটি', 'churamankatiup.jessore.gov.bd', NULL, NULL),
(1586, 177, 'Narendrapur', 'নরেন্দ্রপুর', 'narendrapurup.jessore.gov.bd', NULL, NULL),
(1587, 177, 'Noapara', 'নওয়াপাড়া', 'noaparaup4.jessore.gov.bd', NULL, NULL),
(1588, 177, 'Fathehpur', 'ফতেপুর', 'fathehpurup.jessore.gov.bd', NULL, NULL),
(1589, 177, 'Basundia', 'বসুন্দিয়া', 'basundiaup.jessore.gov.bd', NULL, NULL),
(1590, 177, 'Ramnagar', 'রামনগর', 'ramnagarup.jessore.gov.bd', NULL, NULL),
(1591, 177, 'Haibatpur', 'হৈবতপুর', 'haibatpurup.jessore.gov.bd', NULL, NULL),
(1592, 177, 'Dearamodel', 'দেয়ারা মডেল', 'dearamodelup.jessore.gov.bd', NULL, NULL),
(1593, 178, 'Ulshi', 'উলশী', 'ulshiup9.jessore.gov.bd', NULL, NULL),
(1594, 178, 'Sharsha', 'শার্শা', 'sharshaup10.jessore.gov.bd', NULL, NULL),
(1595, 178, 'Lakshmanpur', 'লক্ষণপুর', 'lakshmanpurup2.jessore.gov.bd', NULL, NULL),
(1596, 178, 'Benapole', 'বেনাপোল', 'benapoleup4.jessore.gov.bd', NULL, NULL),
(1597, 178, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup3.jessore.gov.bd', NULL, NULL),
(1598, 178, 'Bagachra', 'বাগআচড়া', 'bagachraup8.jessore.gov.bd', NULL, NULL),
(1599, 178, 'Putkhali', 'পুটখালী', 'putkhaliup5.jessore.gov.bd', NULL, NULL),
(1600, 178, 'Nizampur', 'নিজামপুর', 'nizampurup11.jessore.gov.bd', NULL, NULL),
(1601, 178, 'Dihi', 'ডিহি', 'dihiup1.jessore.gov.bd', NULL, NULL),
(1602, 178, 'Goga', 'গোগা', 'gogaup6.jessore.gov.bd', NULL, NULL),
(1603, 178, 'Kayba', 'কায়বা', 'kaybaup7.jessore.gov.bd', NULL, NULL),
(1604, 179, 'Anulia', 'আনুলিয়া', 'anuliaup.satkhira.gov.bd', NULL, NULL),
(1605, 179, 'Assasuni', 'আশাশুনি', 'assasuniup.satkhira.gov.bd', NULL, NULL),
(1606, 179, 'Kadakati', 'কাদাকাটি', 'kadakatiup.satkhira.gov.bd', NULL, NULL),
(1607, 179, 'Kulla', 'কুল্যা', 'kullaup.satkhira.gov.bd', NULL, NULL),
(1608, 179, 'Khajra', 'খাজরা', 'khajraup.satkhira.gov.bd', NULL, NULL),
(1609, 179, 'Durgapur', 'দরগাহপুর', 'durgapurup.satkhira.gov.bd', NULL, NULL),
(1610, 179, 'Pratapnagar', 'প্রতাপনগর', 'pratapnagarup.satkhira.gov.bd', NULL, NULL),
(1611, 179, 'Budhhata', 'বুধহাটা', 'budhhataup.satkhira.gov.bd', NULL, NULL),
(1612, 179, 'Baradal', 'বড়দল', 'baradalup.satkhira.gov.bd', NULL, NULL),
(1613, 179, 'Sreeula', 'শ্রীউলা', 'sreeulaup.satkhira.gov.bd', NULL, NULL),
(1614, 179, 'Sobhnali', 'শোভনালী', 'sobhnaliup.satkhira.gov.bd', NULL, NULL),
(1615, 180, 'Kulia', 'কুলিয়া', 'kuliaup.satkhira.gov.bd', NULL, NULL),
(1616, 180, 'Debhata', 'দেবহাটা', 'debhataup.satkhira.gov.bd', NULL, NULL),
(1617, 180, 'Noapara', 'নওয়াপাড়া', 'noaparaup.satkhira.gov.bd', NULL, NULL),
(1618, 180, 'Parulia', 'পারুলিয়া', 'paruliaup.satkhira.gov.bd', NULL, NULL),
(1619, 180, 'Sakhipur', 'সখিপুর', 'sakhipurup.satkhira.gov.bd', NULL, NULL),
(1620, 181, 'Kushadanga', 'কুশোডাংগা', 'kushadangaup.satkhira.gov.bd', NULL, NULL),
(1621, 181, 'Keralkata', 'কেরালকাতা', 'keralkataup.satkhira.gov.bd', NULL, NULL),
(1622, 181, 'Keragachhi', 'কেঁড়াগাছি', 'keragachhiup.satkhira.gov.bd', NULL, NULL),
(1623, 181, 'Kaila', 'কয়লা', 'kailaup.satkhira.gov.bd', NULL, NULL),
(1624, 181, 'Jallabad', 'জালালাবাদ', 'jallabadup.satkhira.gov.bd', NULL, NULL),
(1625, 181, 'Jogikhali', 'যুগিখালী', 'jogikhaliup.satkhira.gov.bd', NULL, NULL),
(1626, 181, 'Langaljhara', 'লাঙ্গলঝাড়া', 'langaljharaup.satkhira.gov.bd', NULL, NULL),
(1627, 181, 'Sonabaria', 'সোনাবাড়িয়া', 'sonabariaup.satkhira.gov.bd', NULL, NULL),
(1628, 181, 'Helatala', 'হেলাতলা', 'helatalaup.satkhira.gov.bd', NULL, NULL),
(1629, 181, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.satkhira.gov.bd', NULL, NULL),
(1630, 181, 'Deara', 'দেয়ারা', 'dearaup.satkhira.gov.bd', NULL, NULL),
(1631, 181, 'Joynagar', 'জয়নগর', 'joynagarup.satkhira.gov.bd', NULL, NULL),
(1632, 182, 'Shibpur', 'শিবপুর', 'shibpurup.satkhira.gov.bd', NULL, NULL),
(1633, 182, 'Labsa', 'লাবসা', 'labsaup.satkhira.gov.bd', NULL, NULL),
(1634, 182, 'Bhomra', 'ভোমরা', 'bhomraup.satkhira.gov.bd', NULL, NULL),
(1635, 182, 'Brahmarajpur', 'ব্রক্ষ্মরাজপুর', 'brahmarajpurup.satkhira.gov.bd', NULL, NULL),
(1636, 182, 'Balli', 'বল্লী', 'balliup.satkhira.gov.bd', NULL, NULL),
(1637, 182, 'Banshdaha', 'বাঁশদহ', 'banshdahaup.satkhira.gov.bd', NULL, NULL),
(1638, 182, 'Baikari', 'বৈকারী', 'baikariup.satkhira.gov.bd', NULL, NULL),
(1639, 182, 'Fingri', 'ফিংড়ি', 'fingriup.satkhira.gov.bd', NULL, NULL),
(1640, 182, 'Dhulihar', 'ধুলিহর', 'dhuliharup.satkhira.gov.bd', NULL, NULL),
(1641, 182, 'Jhaudanga', 'ঝাউডাঙ্গা', 'jhaudangaup.satkhira.gov.bd', NULL, NULL),
(1642, 182, 'Ghona', 'ঘোনা', 'ghonaup.satkhira.gov.bd', NULL, NULL),
(1643, 182, 'Kuskhali', 'কুশখালী', 'kuskhaliup.satkhira.gov.bd', NULL, NULL),
(1644, 182, 'Alipur', 'আলিপুর', 'alipurup.satkhira.gov.bd', NULL, NULL),
(1645, 182, 'Agardari', 'আগরদাড়ী', 'agardariup.satkhira.gov.bd', NULL, NULL),
(1646, 183, 'Atulia', 'আটুলিয়া', 'atuliaup.satkhira.gov.bd', NULL, NULL),
(1647, 183, 'Ishwaripur', 'ঈশ্বরীপুর', 'ishwaripurup.satkhira.gov.bd', NULL, NULL),
(1648, 183, 'Kaikhali', 'কৈখালী', 'kaikhaliup.satkhira.gov.bd', NULL, NULL),
(1649, 183, 'Kashimari', 'কাশিমাড়ী', 'kashimariup.satkhira.gov.bd', NULL, NULL),
(1650, 183, 'Nurnagar', 'নুরনগর', 'nurnagarup.satkhira.gov.bd', NULL, NULL),
(1651, 183, 'Padmapukur', 'পদ্মপুকুর', 'padmapukurup.satkhira.gov.bd', NULL, NULL),
(1652, 183, 'Burigoalini', 'বুড়িগোয়ালিনী', 'burigoaliniup.satkhira.gov.bd', NULL, NULL),
(1653, 183, 'Bhurulia', 'ভুরুলিয়া', 'bhuruliaup.satkhira.gov.bd', NULL, NULL),
(1654, 183, 'Munshiganj', 'মুন্সীগজ্ঞ', 'munshiganjup.satkhira.gov.bd', NULL, NULL),
(1655, 183, 'Ramjannagar', 'রমজাননগর', 'ramjannagarup.satkhira.gov.bd', NULL, NULL),
(1656, 183, 'Shyamnagar', 'শ্যামনগর', 'shyamnagarup.satkhira.gov.bd', NULL, NULL),
(1657, 183, 'Gabura', 'গাবুরা', 'gaburaup.satkhira.gov.bd', NULL, NULL),
(1658, 184, 'Sarulia', 'সরুলিয়া', 'saruliaup3.satkhira.gov.bd', NULL, NULL),
(1659, 184, 'Magura', 'মাগুরা', 'maguraup8.satkhira.gov.bd', NULL, NULL),
(1660, 184, 'Nagarghata', 'নগরঘাটা', 'nagarghataup1.satkhira.gov.bd', NULL, NULL),
(1661, 184, 'Dhandia', 'ধানদিয়া', 'dhandiaup1.satkhira.gov.bd', NULL, NULL),
(1662, 184, 'Tentulia', 'তেতুলিয়া', 'tentuliaup5.satkhira.gov.bd', NULL, NULL),
(1663, 184, 'Tala', 'তালা', 'talaup6.satkhira.gov.bd', NULL, NULL),
(1664, 184, 'Jalalpur', 'জালালপুর', 'jalalpurup11.satkhira.gov.bd', NULL, NULL),
(1665, 184, 'Khesra', 'খেশরা', 'khesraup10.satkhira.gov.bd', NULL, NULL),
(1666, 184, 'Khalishkhali', 'খলিশখালী', 'khalishkhaliup9.satkhira.gov.bd', NULL, NULL),
(1667, 184, 'Khalilnagar', 'খলিলনগর', 'khalilnagarup12.satkhira.gov.bd', NULL, NULL),
(1668, 184, 'Kumira', 'কুমিরা', 'kumiraup4.satkhira.gov.bd', NULL, NULL),
(1669, 184, 'Islamkati', 'ইসলামকাটি', 'islamkatiup7.satkhira.gov.bd', NULL, NULL),
(1670, 185, 'Kushlia', 'কুশুলিয়া', 'kushliaup.satkhira.gov.bd', NULL, NULL),
(1671, 185, 'Champaphul', 'চাম্পাফুল', 'champaphulup.satkhira.gov.bd', NULL, NULL),
(1672, 185, 'Tarali', 'তারালী', 'taraliup.satkhira.gov.bd', NULL, NULL),
(1673, 185, 'Dakshin Sreepur', 'দক্ষিণ শ্রীপুর', 'dakshinsreepurup.satkhira.gov.bd', NULL, NULL),
(1674, 185, 'Dhalbaria', 'ধলবাড়িয়া', 'dhalbariaup.satkhira.gov.bd', NULL, NULL),
(1675, 185, 'Nalta', 'নলতা', 'naltaup.satkhira.gov.bd', NULL, NULL),
(1676, 185, 'Bishnupur', 'বিষ্ণুপুর', 'bishnupurup.satkhira.gov.bd', NULL, NULL),
(1677, 185, 'Bharasimla', 'ভাড়াশিমলা', 'bharasimlaup.satkhira.gov.bd', NULL, NULL),
(1678, 185, 'Mathureshpur', 'মথুরেশপুর', 'mathureshpurup.satkhira.gov.bd', NULL, NULL),
(1679, 185, 'Ratanpur', 'রতনপুর', 'ratanpurup.satkhira.gov.bd', NULL, NULL),
(1680, 185, 'Mautala', 'মৌতলা', 'mautalaup.satkhira.gov.bd', NULL, NULL),
(1681, 185, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.satkhira.gov.bd', NULL, NULL),
(1682, 186, 'Dariapur', 'দারিয়াপুর', 'dariapurup.meherpur.gov.bd', NULL, NULL),
(1683, 186, 'Monakhali', 'মোনাখালী', 'monakhali.meherpur.gov.bd', NULL, NULL),
(1684, 186, 'Bagowan', 'বাগোয়ান', 'bagowanup.meherpur.gov.bd', NULL, NULL),
(1685, 186, 'Mohajanpur', 'মহাজনপুর', 'mohajanpurup.meherpur.gov.bd', NULL, NULL),
(1686, 187, 'Amjhupi', 'আমঝুপি', 'amjhupi.meherpur.gov.bd', NULL, NULL),
(1687, 187, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.meherpur.gov.bd', NULL, NULL),
(1688, 187, 'Kutubpur', 'কতুবপুর', 'kutubpurup.meherpur.gov.bd', NULL, NULL),
(1689, 187, 'Amdah', 'আমদহ', 'amdahup.meherpur.gov.bd', NULL, NULL),
(1690, 187, 'Buripota', 'বুড়িপোতা', 'buripotaup.meherpur.gov.bd', NULL, NULL),
(1691, 188, 'Tentulbaria', 'তেঁতুলবাড়ীয়া', 'tentulbaria.meherpur.gov.bd', NULL, NULL),
(1692, 188, 'Kazipur', 'কাজিপুর', 'kazipurup.meherpur.gov.bd', NULL, NULL),
(1693, 188, 'Bamondi', 'বামন্দী', 'bamondiup.meherpur.gov.bd', NULL, NULL),
(1694, 188, 'Motmura', 'মটমুড়া', 'motmuraup.meherpur.gov.bd', NULL, NULL),
(1695, 188, 'Sholotaka', 'ষোলটাকা', 'sholotakaup.meherpur.gov.bd', NULL, NULL),
(1696, 188, 'Shaharbati', 'সাহারবাটী', 'shaharbatiup.meherpur.gov.bd', NULL, NULL),
(1697, 188, 'Dhankolla', 'ধানখোলা', 'dhankollaup.meherpur.gov.bd', NULL, NULL),
(1698, 188, 'Raipur', 'রায়পুর', 'raipurup.meherpur.gov.bd', NULL, NULL),
(1699, 188, 'Kathuli', 'কাথুলী', 'kathuli.meherpur.gov.bd', NULL, NULL),
(1700, 189, 'Sheikhati', 'সেখহাটী', 'sheikhatiup.narail.gov.bd', NULL, NULL),
(1701, 189, 'Tularampur', 'তুলারামপুর', 'tularampurup.narail.gov.bd', NULL, NULL),
(1702, 189, 'Kalora', 'কলোড়া', 'kaloraup.narail.gov.bd', NULL, NULL),
(1703, 189, 'Shahabad', 'শাহাবাদ', 'shahabadup.narail.gov.bd', NULL, NULL),
(1704, 189, 'Bashgram', 'বাশগ্রাম', 'bashgramup.narail.gov.bd', NULL, NULL),
(1705, 189, 'Habokhali', 'হবখালী', 'habokhaliup.narail.gov.bd', NULL, NULL),
(1706, 189, 'Maijpara', 'মাইজপাড়া', 'maijparaup.narail.gov.bd', NULL, NULL),
(1707, 189, 'Bisali', 'বিছালী', 'bisaliup.narail.gov.bd', NULL, NULL),
(1708, 189, 'Chandiborpur', 'চন্ডিবরপুর', 'chandiborpurup.narail.gov.bd', NULL, NULL),
(1709, 189, 'Bhadrabila', 'ভদ্রবিলা', 'bhadrabilaup.narail.gov.bd', NULL, NULL),
(1710, 189, 'Auria', 'আউড়িয়া', 'auriaup.narail.gov.bd', NULL, NULL),
(1711, 189, 'Singasholpur', 'সিঙ্গাশোলপুর', 'singasholpurup.narail.gov.bd', NULL, NULL),
(1712, 189, 'Mulia', 'মুলিয়া', 'muliaup.narail.gov.bd', NULL, NULL),
(1713, 190, 'Lohagora', 'লোহাগড়া', 'lohagoraup.narail.gov.bd', NULL, NULL),
(1714, 190, 'Kashipur', 'কাশিপুর', 'kashipurup.narail.gov.bd', NULL, NULL),
(1715, 190, 'Naldi', 'নলদী', 'naldiup.narail.gov.bd', NULL, NULL),
(1716, 190, 'Noagram', 'নোয়াগ্রাম', 'noagramup.narail.gov.bd', NULL, NULL),
(1717, 190, 'Lahuria', 'লাহুড়িয়া', 'lahuriaup.narail.gov.bd', NULL, NULL),
(1718, 190, 'Mallikpur', 'মল্লিকপুর', 'mallikpurup.narail.gov.bd', NULL, NULL),
(1719, 190, 'Salnagar', 'শালনগর', 'salnagarup.narail.gov.bd', NULL, NULL),
(1720, 190, 'Lakshmipasha', 'লক্ষীপাশা', 'lakshmipashaup.narail.gov.bd', NULL, NULL),
(1721, 190, 'Joypur', 'জয়পুর', 'joypurup.narail.gov.bd', NULL, NULL),
(1722, 190, 'Kotakol', 'কোটাকোল', 'kotakolup.narail.gov.bd', NULL, NULL),
(1723, 190, 'Digholia', 'দিঘলিয়া', 'digholiaup1.narail.gov.bd', NULL, NULL),
(1724, 190, 'Itna', 'ইতনা', 'itnaup.narail.gov.bd', NULL, NULL),
(1725, 191, 'Jaynagor', 'জয়নগর', 'jaynagorup.narail.gov.bd', NULL, NULL),
(1726, 191, 'Pahordanga', 'পহরডাঙ্গা', 'pahordangaup.narail.gov.bd', NULL, NULL),
(1727, 191, 'Babrahasla', 'বাবরা-হাচলা', 'babrahaslaup.narail.gov.bd', NULL, NULL),
(1728, 191, 'Salamabad', 'সালামাবাদ', 'salamabadup.narail.gov.bd', NULL, NULL),
(1729, 191, 'Baioshona', 'বাঐসোনা', 'baioshonaup.narail.gov.bd', NULL, NULL),
(1730, 191, 'Chacuri', 'চাচুড়ী', 'chacuriup.narail.gov.bd', NULL, NULL),
(1731, 191, 'Hamidpur', 'হামিদপুর', 'hamidpurup.narail.gov.bd', NULL, NULL),
(1732, 191, 'Peroli', 'পেড়লী', 'peroliup.narail.gov.bd', NULL, NULL),
(1733, 191, 'Khashial', 'খাসিয়াল', 'khashialup.narail.gov.bd', NULL, NULL),
(1734, 191, 'Purulia', 'পুরুলিয়া', 'puruliaup.narail.gov.bd', NULL, NULL),
(1735, 191, 'Kalabaria', 'কলাবাড়ীয়া', 'kalabariaup.narail.gov.bd', NULL, NULL),
(1736, 191, 'Mauli', 'মাউলী', 'mauliup.narail.gov.bd', NULL, NULL),
(1737, 191, 'Boronaleliasabad', 'বড়নাল-ইলিয়াছাবাদ', 'boronaleliasabadup.narail.gov.bd', NULL, NULL),
(1738, 191, 'Panchgram', 'পাঁচগ্রাম', 'panchgramup.narail.gov.bd', NULL, NULL),
(1739, 192, 'Alukdia', 'আলুকদিয়া', 'alukdia.chuadanga.gov.bd', NULL, NULL),
(1740, 192, 'Mominpur', 'মোমিনপুর', 'mominpur.chuadanga.gov.bd', NULL, NULL),
(1741, 192, 'Titudah', 'তিতুদাহ', 'titudah.chuadanga.gov.bd', NULL, NULL),
(1742, 192, 'Shankarchandra', 'শংকরচন্দ্র', 'shankarchandra.chuadanga.gov.bd', NULL, NULL),
(1743, 192, 'Begumpur', 'বেগমপুর', 'begumpur.chuadanga.gov.bd', NULL, NULL),
(1744, 192, 'Kutubpur', 'কুতুবপুর', 'kutubpur.chuadanga.gov.bd', NULL, NULL),
(1745, 192, 'Padmabila', 'পদ্মবিলা', 'padmabila.chuadanga.gov.bd', NULL, NULL),
(1746, 193, 'Bhangbaria', 'ভাংবাড়ীয়া', 'bhangbaria.chuadanga.gov.bd', NULL, NULL),
(1747, 193, 'Baradi', 'বাড়াদী', 'baradiup.chuadanga.gov.bd', NULL, NULL),
(1748, 193, 'Gangni', 'গাংনী', 'gangniup.chuadanga.gov.bd', NULL, NULL),
(1749, 193, 'Khadimpur', 'খাদিমপুর', 'khadimpurup.chuadanga.gov.bd', NULL, NULL),
(1750, 193, 'Jehala', 'জেহালা', 'jehalaup.chuadanga.gov.bd', NULL, NULL),
(1751, 193, 'Belgachi', 'বেলগাছি', 'belgachiup.chuadanga.gov.bd', NULL, NULL),
(1752, 193, 'Dauki', 'ডাউকী', 'daukiup.chuadanga.gov.bd', NULL, NULL),
(1753, 193, 'Jamjami', 'জামজামি', 'jamjamiup.chuadanga.gov.bd', NULL, NULL),
(1754, 193, 'Nagdah', 'নাগদাহ', 'nagdahup.chuadanga.gov.bd', NULL, NULL),
(1755, 193, 'Kashkorara', 'খাসকররা', 'kashkoraraup.chuadanga.gov.bd', NULL, NULL),
(1756, 193, 'Chitla', 'চিৎলা', 'chitlaup.chuadanga.gov.bd', NULL, NULL),
(1757, 193, 'Kalidashpur', 'কালিদাসপুর', 'kalidashpurup.chuadanga.gov.bd', NULL, NULL),
(1758, 193, 'Kumari', 'কুমারী', 'kumariup.chuadanga.gov.bd', NULL, NULL),
(1759, 193, 'Hardi', 'হারদী', 'hardiup.chuadanga.gov.bd', NULL, NULL),
(1760, 193, 'Ailhash', 'আইলহাঁস', 'ailhashup.chuadanga.gov.bd', NULL, NULL),
(1761, 194, 'Damurhuda', 'দামুড়হুদা', 'damurhudaup.chuadanga.gov.bd', NULL, NULL),
(1762, 194, 'Karpashdanga', 'কার্পাসডাঙ্গা', 'karpashdanga.chuadanga.gov.bd', NULL, NULL),
(1763, 194, 'Natipota', 'নতিপোতা', 'natipota.chuadanga.gov.bd', NULL, NULL),
(1764, 194, 'Hawli', 'হাওলী', 'hawli.chuadanga.gov.bd', NULL, NULL),
(1765, 194, 'Kurulgachhi', 'কুড়ালগাছী', 'kurulgachhi.chuadanga.gov.bd', NULL, NULL),
(1766, 194, 'Perkrishnopur Madna', 'পারকৃষ্ণপুর মদনা', 'perkrishnopurmadna.chuadanga.gov.bd', NULL, NULL),
(1767, 194, 'Juranpur', 'জুড়ানপুর', 'juranpurup.chuadanga.gov.bd', NULL, NULL),
(1768, 195, 'Uthali', 'উথলী', 'uthaliup.chuadanga.gov.bd', NULL, NULL),
(1769, 195, 'Andulbaria', 'আন্দুলবাড়ীয়া', 'andulbaria.chuadanga.gov.bd', NULL, NULL),
(1770, 195, 'Banka', 'বাঁকা', 'bankaup.chuadanga.gov.bd', NULL, NULL),
(1771, 195, 'Shimanto', 'সীমান্ত', 'shimanto.chuadanga.gov.bd', NULL, NULL),
(1772, 195, 'Raypur', 'রায়পুর', 'raypurup.chuadanga.gov.bd', NULL, NULL),
(1773, 195, 'Hasadah', 'হাসাদাহ', 'hasadahup.chuadanga.gov.bd', NULL, NULL),
(1774, 196, 'Hatash Haripur', 'হাটশ হরিপুর', '1nohatashharipurup.kushtia.gov.bd', NULL, NULL),
(1775, 196, 'Barkhada', 'বারখাদা', '2nobarkhadaup.kushtia.gov.bd', NULL, NULL),
(1776, 196, 'Mazampur', 'মজমপুর', '3nomazampurup.kushtia.gov.bd', NULL, NULL),
(1777, 196, 'Bottail', 'বটতৈল', '4nobottailup.kushtia.gov.bd', NULL, NULL),
(1778, 196, 'Alampur', 'আলামপুর', '5noalampurup.kushtia.gov.bd', NULL, NULL),
(1779, 196, 'Ziaraakhi', 'জিয়ারাখী', '6noziaraakhiup.kushtia.gov.bd', NULL, NULL),
(1780, 196, 'Ailchara', 'আইলচারা', '7noailcharaup.kushtia.gov.bd', NULL, NULL),
(1781, 196, 'Patikabari', 'পাটিকাবাড়ী', '8nopatikabariup.kushtia.gov.bd', NULL, NULL),
(1782, 196, 'Jhaudia', 'ঝাউদিয়া', '9nojhaudiaup.kushtia.gov.bd', NULL, NULL),
(1783, 196, 'Ujangram', 'উজানগ্রাম', '10noujangramup.kushtia.gov.bd', NULL, NULL),
(1784, 196, 'Abdulpur', 'আব্দালপুর', '11noabdulpurup.kushtia.gov.bd', NULL, NULL),
(1785, 196, 'Harinarayanpur', 'হরিনারায়নপুর', '12noharinarayanpurup.kushtia.gov.bd', NULL, NULL),
(1786, 196, 'Monohardia', 'মনোহরদিয়া', '13nomonohardiaup.kushtia.gov.bd', NULL, NULL),
(1787, 196, 'Goswami Durgapur', 'গোস্বামী দুর্গাপুর', '14nogoswamidurgapurup.kushtia.gov.bd', NULL, NULL),
(1788, 197, 'Kaya', 'কয়া', '1nokayaup.kushtia.gov.bd', NULL, NULL),
(1789, 197, 'Jagonnathpur', 'জগন্নাথপুর', '3nojagonnathpurup.kushtia.gov.bd', NULL, NULL),
(1790, 197, 'Sadki', 'সদকী', '4nosadkiup.kushtia.gov.bd', NULL, NULL),
(1791, 197, 'Shelaidah', 'শিলাইদহ', '2noshelaidahup.kushtia.gov.bd', NULL, NULL),
(1792, 197, 'Nandolalpur', 'নন্দলালপুর', '5nonandolalpurup.kushtia.gov.bd', NULL, NULL),
(1793, 197, 'Chapra', 'চাপড়া', '6nochapraup.kushtia.gov.bd', NULL, NULL),
(1794, 197, 'Bagulat', 'বাগুলাট', '7nobagulatup.kushtia.gov.bd', NULL, NULL),
(1795, 197, 'Jaduboyra', 'যদুবয়রা', '8nojaduboyraup.kushtia.gov.bd', NULL, NULL),
(1796, 197, 'Chadpur', 'চাঁদপুর', '9nochadpurup.kushtia.gov.bd', NULL, NULL),
(1797, 197, 'Panti', 'পান্টি', '10nopantiup.kushtia.gov.bd', NULL, NULL),
(1798, 197, 'Charsadipur', 'চরসাদীপুর', '11nocharsadipurup.kushtia.gov.bd', NULL, NULL),
(1799, 198, 'Khoksa', 'খোকসা', '1nokhoksaup.kushtia.gov.bd', NULL, NULL),
(1800, 198, 'Osmanpur', 'ওসমানপুর', '2noosmanpurup.kushtia.gov.bd', NULL, NULL),
(1801, 198, 'Janipur', 'জানিপুর', '4nojanipurup.kushtia.gov.bd', NULL, NULL),
(1802, 198, 'Shimulia', 'শিমুলিয়া', '5noshimuliaup.kushtia.gov.bd', NULL, NULL),
(1803, 198, 'Joyntihazra', 'জয়ন্তীহাজরা', '8nojoyntihazraup.kushtia.gov.bd', NULL, NULL),
(1804, 198, 'Ambaria', 'আমবাড়ীয়া', '9noambariaup.kushtia.gov.bd', NULL, NULL),
(1805, 198, 'Bethbaria', 'বেতবাড়ীয়া', '3nobethbariaup.kushtia.gov.bd', NULL, NULL),
(1806, 198, 'Shomospur', 'শোমসপুর', '6noshomospurup.kushtia.gov.bd', NULL, NULL),
(1807, 198, 'Gopgram', 'গোপগ্রাম', 'gopgram7up.kushtia.gov.bd', NULL, NULL),
(1808, 199, 'Chithalia', 'চিথলিয়া', 'chithaliaup.kushtia.gov.bd', NULL, NULL),
(1809, 199, 'Bahalbaria', 'বহলবাড়ীয়া', 'bahalbariaup.kushtia.gov.bd', NULL, NULL),
(1810, 199, 'Talbaria', 'তালবাড়ীয়া', 'talbariaup.kushtia.gov.bd', NULL, NULL),
(1811, 199, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.kushtia.gov.bd', NULL, NULL),
(1812, 199, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.kushtia.gov.bd', NULL, NULL),
(1813, 199, 'Amla', 'আমলা', 'amlaup.kushtia.gov.bd', NULL, NULL),
(1814, 199, 'Sadarpur', 'সদরপুর', 'sadarpurup.kushtia.gov.bd', NULL, NULL),
(1815, 199, 'Chhatian', 'ছাতিয়ান', 'chhatianup.kushtia.gov.bd', NULL, NULL),
(1816, 199, 'Poradaha', 'পোড়াদহ', 'poradahaup.kushtia.gov.bd', NULL, NULL),
(1817, 199, 'Kursha', 'কুর্শা', 'kurshaup.kushtia.gov.bd', NULL, NULL),
(1818, 199, 'Ambaria', 'আমবাড়ীয়া', 'ambariaup.kushtia.gov.bd', NULL, NULL),
(1819, 199, 'Dhubail', 'ধূবইল', 'dhubailup.kushtia.gov.bd', NULL, NULL),
(1820, 199, 'Malihad', 'মালিহাদ', '11nomalihadup.kushtia.gov.bd', NULL, NULL),
(1821, 200, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.kushtia.gov.bd', NULL, NULL),
(1822, 200, 'Adabaria', 'ড়ীয়া', 'adabariaup.kushtia.gov.bd', NULL, NULL),
(1823, 200, 'Hogolbaria', 'হোগলবাড়ীয়া', 'hogolbariaup.kushtia.gov.bd', NULL, NULL),
(1824, 200, 'Boalia', 'বোয়ালি', 'boaliaup.kushtia.gov.bd', NULL, NULL),
(1825, 200, 'Philipnagor', 'ফিলিপনগর', 'philipnagorup.kushtia.gov.bd', NULL, NULL),
(1826, 200, 'Aria', 'আড়িয়া', 'ariaup.kushtia.gov.bd', NULL, NULL),
(1827, 200, 'Khalishakundi', 'খলিশাকুন্ডি', 'khalishakundiup.kushtia.gov.bd', NULL, NULL),
(1828, 200, 'Chilmary', 'চিলমারী', 'chilmaryup.kushtia.gov.bd', NULL, NULL),
(1829, 200, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.kushtia.gov.bd', NULL, NULL),
(1830, 200, 'Pragpur', 'প্রাগপুর', 'pragpurup.kushtia.gov.bd', NULL, NULL),
(1831, 200, 'Piarpur', 'পিয়ারপুর', 'piarpurup.kushtia.gov.bd', NULL, NULL),
(1832, 200, 'Moricha', 'মরিচা', 'morichaup.kushtia.gov.bd', NULL, NULL),
(1833, 200, 'Refaitpur', 'রিফাইতপুর', '9norefaitpurup.kushtia.gov.bd', NULL, NULL),
(1834, 200, 'Ramkrishnopur', 'রামকৃষ্ণপুর', '5noramkrishnopurup.kushtia.gov.bd', NULL, NULL),
(1835, 201, 'Dharampur', 'ধরমপুর', '5nodharampurup.kushtia.gov.bd', NULL, NULL),
(1836, 201, 'Bahirchar', 'বাহিরচর', '3nobahircharup.kushtia.gov.bd', NULL, NULL),
(1837, 201, 'Mukarimpur', 'মোকারিমপুর', '2nomukarimpurup.kushtia.gov.bd', NULL, NULL),
(1838, 201, 'Juniadah', 'জুনিয়াদহ', '6nojuniadahup.kushtia.gov.bd', NULL, NULL),
(1839, 201, 'Chandgram', 'চাঁদগ্রাম', '4nochandgramup.kushtia.gov.bd', NULL, NULL),
(1840, 201, 'Bahadurpur', 'বাহাদুরপুর', '1nobahadurpurup.kushtia.gov.bd', NULL, NULL),
(1841, 202, 'Dhaneshwargati', 'ধনেশ্বরগাতী', 'dhaneshwargatiup.magura.gov.bd', NULL, NULL),
(1842, 202, 'Talkhari', 'তালখড়ি', 'talkhariup.magura.gov.bd', NULL, NULL),
(1843, 202, 'Arpara', 'আড়পাড়া', 'arparaup.magura.gov.bd', NULL, NULL),
(1844, 202, 'Shatakhali', 'শতখালী', 'shatakhaliup.magura.gov.bd', NULL, NULL),
(1845, 202, 'Shalikha', 'শালিখা', 'shalikhaup.magura.gov.bd', NULL, NULL),
(1846, 202, 'Bunagati', 'বুনাগাতী', 'bunagatiup.magura.gov.bd', NULL, NULL),
(1847, 202, 'Gongarampur', 'গঙ্গারামপুর', 'gongarampurup.magura.gov.bd', NULL, NULL),
(1848, 203, 'Goyespur', 'গয়েশপুর', 'goyespurup.magura.gov.bd', NULL, NULL),
(1849, 203, 'Sreekol', 'শ্রীকোল', 'sreekolup.magura.gov.bd', NULL, NULL),
(1850, 203, 'Dariapur', 'দ্বারিয়াপুর', 'dariapurup.magura.gov.bd', NULL, NULL),
(1851, 203, 'Kadirpara', 'কাদিরপাড়া', 'kadirparaup.magura.gov.bd', NULL, NULL),
(1852, 203, 'Shobdalpur', 'সব্দালপুর', 'shobdalpurup.magura.gov.bd', NULL, NULL),
(1853, 203, 'Sreepur', 'শ্রীপুর', 'sreepurup.magura.gov.bd', NULL, NULL),
(1854, 203, 'Nakol', 'নাকোল', 'nakolup.magura.gov.bd', NULL, NULL),
(1855, 203, 'Amalshar', 'আমলসার', 'amalsharup.magura.gov.bd', NULL, NULL),
(1856, 204, 'Hazipur', 'হাজীপুর', 'hazipurup.magura.gov.bd', NULL, NULL),
(1857, 204, 'Atharokhada', 'আঠারখাদা', 'atharokhadaup.magura.gov.bd', NULL, NULL),
(1858, 204, 'Kosundi', 'কছুন্দী', 'kosundiup.magura.gov.bd', NULL, NULL),
(1859, 204, 'Bogia', 'বগিয়া', 'bogiaup.magura.gov.bd', NULL, NULL),
(1860, 204, 'Hazrapur', 'হাজরাপুর', 'hazrapurup.magura.gov.bd', NULL, NULL),
(1861, 204, 'Raghobdair', 'রাঘবদাইড়', 'raghobdairup.magura.gov.bd', NULL, NULL),
(1862, 204, 'Jagdal', 'জগদল', 'jagdalup.magura.gov.bd', NULL, NULL),
(1863, 204, 'Chawlia', 'চাউলিয়া', 'chawliaup.magura.gov.bd', NULL, NULL),
(1864, 204, 'Satrijitpur', 'শত্রুজিৎপুর', 'satrijitpurup.magura.gov.bd', NULL, NULL),
(1865, 204, 'Baroilpolita', 'বেরইল পলিতা', 'baroilpolitaup.magura.gov.bd', NULL, NULL),
(1866, 204, 'Kuchiamora', 'কুচিয়ামো', 'kuchiamoraup.magura.gov.bd', NULL, NULL),
(1867, 204, 'Gopalgram', 'গোপালগ্রাম', 'gopalgramup.magura.gov.bd', NULL, NULL),
(1868, 204, 'Moghi', 'মঘী', 'moghiup.magura.gov.bd', NULL, NULL),
(1869, 205, 'Digha', 'দীঘা', 'dighaup.magura.gov.bd', NULL, NULL),
(1870, 205, 'Nohata', 'নহাটা', 'nohataup.magura.gov.bd', NULL, NULL),
(1871, 205, 'Palashbaria', 'পলাশবাড়ীয়া', 'palashbariaup.magura.gov.bd', NULL, NULL),
(1872, 205, 'Babukhali', 'বাবুখালী', 'babukhaliup.magura.gov.bd', NULL, NULL),
(1873, 205, 'Balidia', 'বালিদিয়া', 'balidiaup.magura.gov.bd', NULL, NULL),
(1874, 205, 'Binodpur', 'বিনোদপুর', 'binodpurup.magura.gov.bd', NULL, NULL),
(1875, 205, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpurup.magura.gov.bd', NULL, NULL),
(1876, 205, 'Rajapur', 'রাজাপুর', 'rajapurup.magura.gov.bd', NULL, NULL),
(1877, 206, 'Horidhali', 'হরিঢালী', 'horidhaliup.khulna.gov.bd', NULL, NULL),
(1878, 206, 'Goroikhali', 'গড়ইখালী', 'goroikhaliup.khulna.gov.bd', NULL, NULL),
(1879, 206, 'Kopilmuni', 'কপিলমুনি', 'kopilmuniup.khulna.gov.bd', NULL, NULL),
(1880, 206, 'Lota', 'লতা', 'lotaup.khulna.gov.bd', NULL, NULL),
(1881, 206, 'Deluti', 'দেলুটি', 'delutiup.khulna.gov.bd', NULL, NULL),
(1882, 206, 'Loskor', 'লস্কর', 'loskorup.khulna.gov.bd', NULL, NULL),
(1883, 206, 'Godaipur', 'গদাইপুর', 'godaipurup.khulna.gov.bd', NULL, NULL),
(1884, 206, 'Raruli', 'রাড়ুলী', 'www.raruliup.khulna.gov.bd', NULL, NULL),
(1885, 206, 'Chandkhali', 'চাঁদখালী', 'chandkhaliup.khulna.gov.bd', NULL, NULL),
(1886, 206, 'Soladana', 'সোলাদানা', 'soladanaup.khulna.gov.bd', NULL, NULL),
(1887, 207, 'Fultola', 'ফুলতলা', 'www.fultolaup.khulna.gov.bd', NULL, NULL),
(1888, 207, 'Damodar', 'দামোদর', 'www.damodarup.khulna.gov.bd', NULL, NULL),
(1889, 207, 'Atra Gilatola', 'আটরা গিলাতলা', 'www.atragilatolaup.khulna.gov.bd', NULL, NULL),
(1890, 207, 'Jamira', 'জামিরা', 'www.jamiraup.khulna.gov.bd', NULL, NULL),
(1891, 208, 'Senhati', 'সেনহাটি', 'www.senhatiup.khulna.gov.bd', NULL, NULL),
(1892, 208, 'Gajirhat', 'গাজীরহাট', 'www.gajirhatup.khulna.gov.bd', NULL, NULL),
(1893, 208, 'Barakpur', 'বারাকপুর', 'www.barakpurup.khulna.gov.bd', NULL, NULL),
(1894, 208, 'Aronghata', 'আড়ংঘাটা', 'www.aronghataup.khulna.gov.bd', NULL, NULL),
(1895, 208, 'Jogipol', 'যোগীপোল', 'www.jogipolup.khulna.gov.bd', NULL, NULL),
(1896, 208, 'Digholia', 'দিঘলিয়া', 'www.digholiaup.khulna.gov.bd', NULL, NULL),
(1897, 209, 'Aichgati', 'আইচগাতী', 'aichgatiup.khulna.gov.bd', NULL, NULL),
(1898, 209, 'Srifoltola', 'শ্রীফলতলা', 'srifoltolaup.khulna.gov.bd', NULL, NULL),
(1899, 209, 'Noihati', 'নৈহাটি', 'noihatiup.khulna.gov.bd', NULL, NULL),
(1900, 209, 'Tsb', 'টিএসবি', 'tsbup.khulna.gov.bd', NULL, NULL),
(1901, 209, 'Ghatvog', 'ঘাটভোগ', 'ghatvogup.khulna.gov.bd', NULL, NULL),
(1902, 210, 'Terokhada', 'তেরখাদা', 'terokhadaup.khulna.gov.bd', NULL, NULL),
(1903, 210, 'Chagladoho', 'ছাগলাদহ', 'chagladohoup.khulna.gov.bd', NULL, NULL),
(1904, 210, 'Barasat', 'বারাসাত', 'www.barasatup.khulna.gov.bd', NULL, NULL),
(1905, 210, 'Sochiadaho', 'সাচিয়াদাহ', 'www.sochiadahoup.khulna.gov.bd', NULL, NULL),
(1906, 210, 'Modhupur', 'মধুপুর', 'www.modhupurup.khulna.gov.bd', NULL, NULL),
(1907, 210, 'Ajgora', 'আজগড়া', 'www.ajgoraup.khulna.gov.bd', NULL, NULL),
(1908, 211, 'Dumuria', 'ডুমুরিয়া', 'dumuriaup.khulna.gov.bd', NULL, NULL),
(1909, 211, 'Magurghona', 'মাগুরাঘোনা', 'magurghonaup.khulna.gov.bd', NULL, NULL),
(1910, 211, 'Vandarpara', 'ভান্ডারপাড়া', 'vandarparaup.khulna.gov.bd', NULL, NULL),
(1911, 211, 'Sahos', 'সাহস', 'sahosup.khulna.gov.bd', NULL, NULL),
(1912, 211, 'Rudaghora', 'রুদাঘরা', 'rudaghoraup.khulna.gov.bd', NULL, NULL),
(1913, 211, 'Ghutudia', 'গুটুদিয়া', 'ghutudiaup.khulna.gov.bd', NULL, NULL),
(1914, 211, 'Shovna', 'শোভনা', 'shovnaup.khulna.gov.bd', NULL, NULL),
(1915, 211, 'Khornia', 'খর্ণিয়া', 'khorniaup.khulna.gov.bd', NULL, NULL),
(1916, 211, 'Atlia', 'আটলিয়া', 'atliaup.khulna.gov.bd', NULL, NULL),
(1917, 211, 'Dhamalia', 'ধামালিয়া', 'dhamaliaup.khulna.gov.bd', NULL, NULL),
(1918, 211, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.khulna.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1919, 211, 'Rongpur', 'রংপুর', 'rongpurup.khulna.gov.bd', NULL, NULL),
(1920, 211, 'Shorafpur', 'শরাফপুর', 'shorafpurup.khulna.gov.bd', NULL, NULL),
(1921, 211, 'Magurkhali', 'মাগুরখালি', 'magurkhaliup.khulna.gov.bd', NULL, NULL),
(1922, 212, 'Botiaghata', 'বটিয়াঘাটা', 'www.botiaghataup.khulna.gov.bd', NULL, NULL),
(1923, 212, 'Amirpur', 'আমিরপুর', 'www.amirpurup.khulna.gov.bd', NULL, NULL),
(1924, 212, 'Gongarampur', 'গঙ্গারামপুর', 'www.gongarampurup.khulna.gov.bd', NULL, NULL),
(1925, 212, 'Surkhali', 'সুরখালী', 'www.surkhaliup.khulna.gov.bd', NULL, NULL),
(1926, 212, 'Vandarkot', 'ভান্ডারকোট', 'www.vandarkotup.khulna.gov.bd', NULL, NULL),
(1927, 212, 'Baliadanga', 'বালিয়াডাঙ্গা', 'www.baliadangaup.khulna.gov.bd', NULL, NULL),
(1928, 212, 'Jolma', 'জলমা', 'www.jolmaup.khulna.gov.bd', NULL, NULL),
(1929, 213, 'Dakop', 'দাকোপ', 'www.dakopup.khulna.gov.bd', NULL, NULL),
(1930, 213, 'Bajua', 'বাজুয়া', 'bajuaup.khulna.gov.bd', NULL, NULL),
(1931, 213, 'Kamarkhola', 'কামারখোলা', 'www.kamarkholaup.khulna.gov.bd', NULL, NULL),
(1932, 213, 'Tildanga', 'তিলডাঙ্গা', 'www.tildangaup.khulna.gov.bd', NULL, NULL),
(1933, 213, 'Sutarkhali', 'সুতারখালী', 'www.sutarkhaliup.khulna.gov.bd', NULL, NULL),
(1934, 213, 'Laudoba', 'লাউডোব', 'laudobaup.khulna.gov.bd', NULL, NULL),
(1935, 213, 'Pankhali', 'পানখালী', 'pankhaliup.khulna.gov.bd', NULL, NULL),
(1936, 213, 'Banishanta', 'বানিশান্তা', 'banishantaup.khulna.gov.bd', NULL, NULL),
(1937, 213, 'Koilashgonj', 'কৈলাশগঞ্জ', 'koilashgonjup.khulna.gov.bd', NULL, NULL),
(1938, 214, 'Koyra', 'কয়রা', 'koyraup.khulna.gov.bd', NULL, NULL),
(1939, 214, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.khulna.gov.bd', NULL, NULL),
(1940, 214, 'Moheswaripur', 'মহেশ্বরীপুর', 'moheswaripurup.khulna.gov.bd', NULL, NULL),
(1941, 214, 'North Bedkashi', 'উত্তর বেদকাশী', 'northbedkashiup.khulna.gov.bd', NULL, NULL),
(1942, 214, 'South Bedkashi', 'দক্ষিণ বেদকাশী', 'southbedkashiup.khulna.gov.bd', NULL, NULL),
(1943, 214, 'Amadi', 'আমাদি', 'amadiup.khulna.gov.bd', NULL, NULL),
(1944, 214, 'Bagali', 'বাগালী', 'bagaliup.khulna.gov.bd', NULL, NULL),
(1945, 215, 'Betaga', 'বেতাগা', 'betagaup.bagerhat.gov.bd', NULL, NULL),
(1946, 215, 'Lakhpur', 'লখপুর', 'lakhpurup.bagerhat.gov.bd', NULL, NULL),
(1947, 215, 'Fakirhat', 'ফকিরহাট', 'fakirhatup.bagerhat.gov.bd', NULL, NULL),
(1948, 215, 'Bahirdia-Mansa', 'বাহিরদিয়া-মানসা', 'bahirdiamansaup.bagerhat.gov.bd', NULL, NULL),
(1949, 215, 'Piljanga', 'পিলজংগ', 'piljangaup.bagerhat.gov.bd', NULL, NULL),
(1950, 215, 'Naldha-Mouvhog', 'নলধা-মৌভোগ', 'naldhamauvhogup.bagerhat.gov.bd', NULL, NULL),
(1951, 215, 'Mulghar', 'মূলঘর', 'mulgharup.bagerhat.gov.bd', NULL, NULL),
(1952, 215, 'Suvhadia', 'শুভদিয়া', 'suvhadiaup.bagerhat.gov.bd', NULL, NULL),
(1953, 216, 'Karapara', 'কাড়াপাড়া', 'karaparaup.bagerhat.gov.bd', NULL, NULL),
(1954, 216, 'Bamorta', 'বেমরতা', 'bamortaup.bagerhat.gov.bd', NULL, NULL),
(1955, 216, 'Gotapara', 'গোটাপাড়া', 'gotaparaup.bagerhat.gov.bd', NULL, NULL),
(1956, 216, 'Bishnapur', 'বিষ্ণুপুর', 'bishnapurup.bagerhat.gov.bd', NULL, NULL),
(1957, 216, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.bagerhat.gov.bd', NULL, NULL),
(1958, 216, 'Jatharapur', 'যাত্রাপুর', 'jatharapurup.bagerhat.gov.bd', NULL, NULL),
(1959, 216, 'Shaitgomboj', 'ষাটগুম্বজ', 'shaitgombojup.bagerhat.gov.bd', NULL, NULL),
(1960, 216, 'Khanpur', 'খানপুর', 'khanpurup.bagerhat.gov.bd', NULL, NULL),
(1961, 216, 'Rakhalgachi', 'রাখালগাছি', 'rakhalgachiup.bagerhat.gov.bd', NULL, NULL),
(1962, 216, 'Dema', 'ডেমা', 'demaup.bagerhat.gov.bd', NULL, NULL),
(1963, 217, 'Udoypur', 'উদয়পুর', 'udoypurup.bagerhat.gov.bd', NULL, NULL),
(1964, 217, 'Chunkhola', 'চুনখোলা', 'chunkholaup.bagerhat.gov.bd', NULL, NULL),
(1965, 217, 'Gangni', 'গাংনী', 'gangniup.bagerhat.gov.bd', NULL, NULL),
(1966, 217, 'Kulia', 'কুলিয়া', 'kuliaup.bagerhat.gov.bd', NULL, NULL),
(1967, 217, 'Gaola', 'গাওলা', 'gaolaup.bagerhat.gov.bd', NULL, NULL),
(1968, 217, 'Kodalia', 'কোদালিয়া', 'kodaliaup.bagerhat.gov.bd', NULL, NULL),
(1969, 217, 'Atjuri', 'আটজুড়ী', 'atjuriup.bagerhat.gov.bd', NULL, NULL),
(1970, 218, 'Dhanshagor', 'ধানসাগর', 'dhanshagorup.bagerhat.gov.bd', NULL, NULL),
(1971, 218, 'Khontakata', 'খোন্তাকাটা', 'khontakataup.bagerhat.gov.bd', NULL, NULL),
(1972, 218, 'Rayenda', 'রায়েন্দা', 'rayendaup.bagerhat.gov.bd', NULL, NULL),
(1973, 218, 'Southkhali', 'সাউথখালী', 'southkhaliup.bagerhat.gov.bd', NULL, NULL),
(1974, 219, 'Gouramva', 'গৌরম্ভা', 'gouramvaup.bagerhat.gov.bd', NULL, NULL),
(1975, 219, 'Uzzalkur', 'উজলকুড়', 'uzzalkurup.bagerhat.gov.bd', NULL, NULL),
(1976, 219, 'Baintala', 'বাইনতলা', 'baintalaup.bagerhat.gov.bd', NULL, NULL),
(1977, 219, 'Rampal', 'রামপাল', 'rampalup.bagerhat.gov.bd', NULL, NULL),
(1978, 219, 'Rajnagar', 'রাজনগর', 'rajnagarup.bagerhat.gov.bd', NULL, NULL),
(1979, 219, 'Hurka', 'হুড়কা', 'hurkaup.bagerhat.gov.bd', NULL, NULL),
(1980, 219, 'Perikhali', 'পেড়িখালী', 'perikhaliup.bagerhat.gov.bd', NULL, NULL),
(1981, 219, 'Vospatia', 'ভোজপাতিয়া', 'vospatiaup.bagerhat.gov.bd', NULL, NULL),
(1982, 219, 'Mollikerbar', 'মল্লিকেরবেড়', 'mollikerbarup.bagerhat.gov.bd', NULL, NULL),
(1983, 219, 'Bastoli', 'বাঁশতলী', 'bastoliup.bagerhat.gov.bd', NULL, NULL),
(1984, 220, 'Teligati', 'তেলিগাতী', 'teligatiup.bagerhat.gov.bd', NULL, NULL),
(1985, 220, 'Panchakaran', 'পঞ্চকরণ', 'panchakaranup.bagerhat.gov.bd', NULL, NULL),
(1986, 220, 'Putikhali', 'পুটিখালী', 'putikhaliup.bagerhat.gov.bd', NULL, NULL),
(1987, 220, 'Daibagnyahati', 'দৈবজ্ঞহাটি', 'daibagnyahatiup.bagerhat.gov.bd', NULL, NULL),
(1988, 220, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.bagerhat.gov.bd', NULL, NULL),
(1989, 220, 'Chingrakhali', 'চিংড়াখালী', 'chingrakhaliup.bagerhat.gov.bd', NULL, NULL),
(1990, 220, 'Jiudhara', 'জিউধরা', 'jiudharaup.bagerhat.gov.bd', NULL, NULL),
(1991, 220, 'Hoglapasha', 'হোগলাপাশা', 'hoglapashaup.bagerhat.gov.bd', NULL, NULL),
(1992, 220, 'Banagram', 'বনগ্রাম', 'banagramup.bagerhat.gov.bd', NULL, NULL),
(1993, 220, 'Balaibunia', 'বলইবুনিয়া', 'balaibuniaup.bagerhat.gov.bd', NULL, NULL),
(1994, 220, 'Hoglabunia', 'হোগলাবুনিয়া', 'hoglabuniaup.bagerhat.gov.bd', NULL, NULL),
(1995, 220, 'Baharbunia', 'বহরবুনিয়া', 'baharbuniaup.bagerhat.gov.bd', NULL, NULL),
(1996, 220, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganjup.bagerhat.gov.bd', NULL, NULL),
(1997, 220, 'Khaulia', 'খাউলিয়া', 'khauliaup.bagerhat.gov.bd', NULL, NULL),
(1998, 220, 'Nishanbaria', 'নিশানবাড়িয়া', 'nishanbariaup.bagerhat.gov.bd', NULL, NULL),
(1999, 220, 'Baraikhali', 'বারইখালী', 'baraikhaliup.bagerhat.gov.bd', NULL, NULL),
(2000, 221, 'Gojalia', 'গজালিয়া', 'gojaliaup.bagerhat.gov.bd', NULL, NULL),
(2001, 221, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.bagerhat.gov.bd', NULL, NULL),
(2002, 221, 'Moghia', 'মঘিয়া', 'moghiaup.bagerhat.gov.bd', NULL, NULL),
(2003, 221, 'Kachua', 'কচুয়া', 'kachuaup.bagerhat.gov.bd', NULL, NULL),
(2004, 221, 'Gopalpur', 'গোপালপুর', 'gopalpurup.bagerhat.gov.bd', NULL, NULL),
(2005, 221, 'Raripara', 'রাড়ীপাড়া', 'rariparaup.bagerhat.gov.bd', NULL, NULL),
(2006, 221, 'Badhal', 'বাধাল', 'badhalup.bagerhat.gov.bd', NULL, NULL),
(2007, 222, 'Burrirdangga', 'বুড়িরডাঙ্গা', 'burrirdanggaup.bagerhat.gov.bd', NULL, NULL),
(2008, 222, 'Mithakhali', 'মিঠাখালী', 'mithakhaliup.bagerhat.gov.bd', NULL, NULL),
(2009, 222, 'Sonailtala', 'সোনাইলতলা', 'sonailtalaup.bagerhat.gov.bd', NULL, NULL),
(2010, 222, 'Chadpai', 'চাঁদপাই', 'chadpaiup.bagerhat.gov.bd', NULL, NULL),
(2011, 222, 'Chila', 'চিলা', 'chilaup.bagerhat.gov.bd', NULL, NULL),
(2012, 222, 'Sundarban', 'সুন্দরবন', 'sundarbanup.bagerhat.gov.bd', NULL, NULL),
(2013, 223, 'Barobaria', 'বড়বাড়িয়া', 'barobariaup.bagerhat.gov.bd', NULL, NULL),
(2014, 223, 'Kalatala', 'কলাতলা', 'kalatalaup.bagerhat.gov.bd', NULL, NULL),
(2015, 223, 'Hizla', 'হিজলা', 'hizlaup.bagerhat.gov.bd', NULL, NULL),
(2016, 223, 'Shibpur', 'শিবপুর', 'shibpurup.bagerhat.gov.bd', NULL, NULL),
(2017, 223, 'Chitalmari', 'চিতলমারী', 'chitalmariup.bagerhat.gov.bd', NULL, NULL),
(2018, 223, 'Charbaniri', 'চরবানিয়ারী', 'charbaniriup.bagerhat.gov.bd', NULL, NULL),
(2019, 223, 'Shantoshpur', 'সন্তোষপুর', 'shantoshpurup.bagerhat.gov.bd', NULL, NULL),
(2020, 224, 'Sadhuhati', 'সাধুহাটী', 'sadhuhatiup.jhenaidah.gov.bd', NULL, NULL),
(2021, 224, 'Modhuhati', 'মধুহাটী', 'modhuhatiup.jhenaidah.gov.bd', NULL, NULL),
(2022, 224, 'Saganna', 'সাগান্না', 'sagannaup.jhenaidah.gov.bd', NULL, NULL),
(2023, 224, 'Halidhani', 'হলিধানী', 'halidhaniup.jhenaidah.gov.bd', NULL, NULL),
(2024, 224, 'Kumrabaria', 'কুমড়াবাড়ীয়া', 'kumrabariaup.jhenaidah.gov.bd', NULL, NULL),
(2025, 224, 'Ganna', 'গান্না', 'gannaup.jhenaidah.gov.bd', NULL, NULL),
(2026, 224, 'Maharazpur', 'মহারাজপুর', 'maharazpurup.jhenaidah.gov.bd', NULL, NULL),
(2027, 224, 'Paglakanai', 'পাগলাকানাই', 'paglakanaiup.jhenaidah.gov.bd', NULL, NULL),
(2028, 224, 'Porahati', 'পোড়াহাটী', 'porahatiup.jhenaidah.gov.bd', NULL, NULL),
(2029, 224, 'Harishongkorpur', 'হরিশংকরপুর', 'harishongkorpurup.jhenaidah.gov.bd', NULL, NULL),
(2030, 224, 'Padmakar', 'পদ্মাকর', 'padmakarup.jhenaidah.gov.bd', NULL, NULL),
(2031, 224, 'Dogachhi', 'দোগাছি', 'dogachhiup.jhenaidah.gov.bd', NULL, NULL),
(2032, 224, 'Furshondi', 'ফুরসন্দি', 'furshondiup.jhenaidah.gov.bd', NULL, NULL),
(2033, 224, 'Ghorshal', 'ঘোড়শাল', 'ghorshalup.jhenaidah.gov.bd', NULL, NULL),
(2034, 224, 'Kalicharanpur', 'কালীচরণপুর', 'kalicharanpurup.jhenaidah.gov.bd', NULL, NULL),
(2035, 224, 'Surat', 'সুরাট', 'suratup.jhenaidah.gov.bd', NULL, NULL),
(2036, 224, 'Naldanga', 'নলডাঙ্গা', 'naldangaup.jhenaidah.gov.bd', NULL, NULL),
(2037, 225, 'Tribeni', 'ত্রিবেনী', 'tribeniup.jhenaidah.gov.bd', NULL, NULL),
(2038, 225, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.jhenaidah.gov.bd', NULL, NULL),
(2039, 225, 'Dignagore', 'দিগনগর', 'dignagoreup.jhenaidah.gov.bd', NULL, NULL),
(2040, 225, 'Kancherkol', 'কাঁচেরকোল', 'kancherkolup.jhenaidah.gov.bd', NULL, NULL),
(2041, 225, 'Sarutia', 'সারুটিয়া', 'sarutiaup.jhenaidah.gov.bd', NULL, NULL),
(2042, 225, 'Hakimpur', 'হাকিমপুর', 'hakimpurup.jhenaidah.gov.bd', NULL, NULL),
(2043, 225, 'Dhaloharachandra', 'ধলহরাচন্দ্র', 'dhaloharachandraup.jhenaidah.gov.bd', NULL, NULL),
(2044, 225, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jhenaidah.gov.bd', NULL, NULL),
(2045, 225, 'Bogura', 'বগুড়া', 'boguraup.jhenaidah.gov.bd', NULL, NULL),
(2046, 225, 'Abaipur', 'আবাইপুর', 'abaipurup.jhenaidah.gov.bd', NULL, NULL),
(2047, 225, 'Nityanandapur', 'নিত্যানন্দপুর', 'nityanandapurup.jhenaidah.gov.bd', NULL, NULL),
(2048, 225, 'Umedpur', 'উমেদপুর', 'umedpurup.jhenaidah.gov.bd', NULL, NULL),
(2049, 225, 'Dudshar', 'দুধসর', 'dudsharup.jhenaidah.gov.bd', NULL, NULL),
(2050, 225, 'Fulhari', 'ফুলহরি', 'fulhariup.jhenaidah.gov.bd', NULL, NULL),
(2051, 226, 'Bhayna', 'ভায়না', 'bhaynaup.jhenaidah.gov.bd', NULL, NULL),
(2052, 226, 'Joradah', 'জোড়াদহ', 'joradahup.jhenaidah.gov.bd', NULL, NULL),
(2053, 226, 'Taherhuda', 'তাহেরহুদা', 'taherhudaup.jhenaidah.gov.bd', NULL, NULL),
(2054, 226, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.jhenaidah.gov.bd', NULL, NULL),
(2055, 226, 'Kapashatia', 'কাপাশহাটিয়া', 'kapashatiaup.jhenaidah.gov.bd', NULL, NULL),
(2056, 226, 'Falsi', 'ফলসী', 'falsiup.jhenaidah.gov.bd', NULL, NULL),
(2057, 226, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.jhenaidah.gov.bd', NULL, NULL),
(2058, 226, 'Chandpur', 'চাঁদপুর', 'chandpurup.jhenaidah.gov.bd', NULL, NULL),
(2059, 227, 'Sundarpurdurgapur', 'সুন্দরপুর-দূর্গাপুর', 'sundarpurdurgapurup.jhenaidah.gov.bd', NULL, NULL),
(2060, 227, 'Jamal', 'জামাল', 'jamalup.jhenaidah.gov.bd', NULL, NULL),
(2061, 227, 'Kola', 'কোলা', 'kolaup.jhenaidah.gov.bd', NULL, NULL),
(2062, 227, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.jhenaidah.gov.bd', NULL, NULL),
(2063, 227, 'Simla-Rokonpur', 'শিমলা-রোকনপুর', 'simlarokonpurup.jhenaidah.gov.bd', NULL, NULL),
(2064, 227, 'Trilochanpur', 'ত্রিলোচনপুর', 'trilochanpurup.jhenaidah.gov.bd', NULL, NULL),
(2065, 227, 'Raygram', 'রায়গ্রাম', 'raygramup.jhenaidah.gov.bd', NULL, NULL),
(2066, 227, 'Maliat', 'মালিয়াট', 'maliatup.jhenaidah.gov.bd', NULL, NULL),
(2067, 227, 'Barabazar', 'বারবাজার', 'barabazarup.jhenaidah.gov.bd', NULL, NULL),
(2068, 227, 'Kashtabhanga', 'কাষ্টভাঙ্গা', 'kashtabhangaup.jhenaidah.gov.bd', NULL, NULL),
(2069, 227, 'Rakhalgachhi', 'রাখালগাছি', 'rakhalgachhiup.jhenaidah.gov.bd', NULL, NULL),
(2070, 228, 'Sabdalpur', 'সাবদালপুর', 'sabdalpurup.jhenaidah.gov.bd', NULL, NULL),
(2071, 228, 'Dora', 'দোড়া', 'doraup.jhenaidah.gov.bd', NULL, NULL),
(2072, 228, 'Kushna', 'কুশনা', 'kushnaup.jhenaidah.gov.bd', NULL, NULL),
(2073, 228, 'Baluhar', 'বলুহর', 'baluharup.jhenaidah.gov.bd', NULL, NULL),
(2074, 228, 'Elangi', 'এলাঙ্গী', 'elangiup.jhenaidah.gov.bd', NULL, NULL),
(2075, 229, 'Sbk', 'এস, বি, কে', 'sbkup.jhenaidah.gov.bd', NULL, NULL),
(2076, 229, 'Fatepur', 'ফতেপুর', 'fatepurup.jhenaidah.gov.bd', NULL, NULL),
(2077, 229, 'Panthapara', 'পান্থপাড়া', 'panthaparaup.jhenaidah.gov.bd', NULL, NULL),
(2078, 229, 'Swaruppur', 'স্বরুপপুর', 'swaruppurup.jhenaidah.gov.bd', NULL, NULL),
(2079, 229, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jhenaidah.gov.bd', NULL, NULL),
(2080, 229, 'Nepa', 'নেপা', 'nepaup.jhenaidah.gov.bd', NULL, NULL),
(2081, 229, 'Kazirber', 'কাজীরবেড়', 'kazirberup.jhenaidah.gov.bd', NULL, NULL),
(2082, 229, 'Banshbaria', 'বাঁশবাড়ীয়া', 'banshbariaup.jhenaidah.gov.bd', NULL, NULL),
(2083, 229, 'Jadabpur', 'যাদবপুর', 'jadabpurup.jhenaidah.gov.bd', NULL, NULL),
(2084, 229, 'Natima', 'নাটিমা', 'natimaup.jhenaidah.gov.bd', NULL, NULL),
(2085, 229, 'Manderbaria', 'মান্দারবাড়ীয়া', 'manderbariaup.jhenaidah.gov.bd', NULL, NULL),
(2086, 229, 'Azampur', 'আজমপুর', 'azampurup.jhenaidah.gov.bd', NULL, NULL),
(2087, 230, 'Basanda', 'বাসন্ডা', 'basandaup.jhalakathi.gov.bd', NULL, NULL),
(2088, 230, 'Binoykati', 'বিনয়কাঠী', 'binoykatiup.jhalakathi.gov.bd', NULL, NULL),
(2089, 230, 'Gabharamchandrapur', 'গাভারামচন্দ্রপুর', 'gabharamchandrapurup.jhalakathi.gov.bd', NULL, NULL),
(2090, 230, 'Keora', 'কেওড়া', 'keoraup.jhalakathi.gov.bd', NULL, NULL),
(2091, 230, 'Kirtipasha', 'কীর্তিপাশা', 'kirtipashaup.jhalakathi.gov.bd', NULL, NULL),
(2092, 230, 'Nabagram', 'নবগ্রাম', 'nabagramup.jhalakathi.gov.bd', NULL, NULL),
(2093, 230, 'Nathullabad', 'নথুলল্লাবাদ', 'nathullabadup.jhalakathi.gov.bd', NULL, NULL),
(2094, 230, 'Ponabalia', 'পোনাবালিয়া', 'ponabaliaup.jhalakathi.gov.bd', NULL, NULL),
(2095, 230, 'Sekherhat', 'শেখেরহাট', 'sekherhatup.jhalakathi.gov.bd', NULL, NULL),
(2096, 230, 'Gabkhandhansiri', 'গাবখান ধানসিঁড়ি', 'gabkhandhansiriup.jhalakathi.gov.bd', NULL, NULL),
(2097, 231, 'Amua', 'আমুয়া', 'amuaup.jhalakathi.gov.bd', NULL, NULL),
(2098, 231, 'Awrabunia', 'আওরাবুনিয়া', 'awrabuniaup.jhalakathi.gov.bd', NULL, NULL),
(2099, 231, 'Chenchrirampur', 'চেঁচরীরামপুর', 'chenchrirampurup.jhalakathi.gov.bd', NULL, NULL),
(2100, 231, 'Kanthalia', 'কাঠালিয়া', 'kanthaliaup.jhalakathi.gov.bd', NULL, NULL),
(2101, 231, 'Patikhalghata', 'পাটিখালঘাটা', 'patikhalghataup.jhalakathi.gov.bd', NULL, NULL),
(2102, 231, 'Shaulajalia', 'শৌলজালিয়া', 'shaulajaliaup.jhalakathi.gov.bd', NULL, NULL),
(2103, 232, 'Subidpur', 'সুবিদপুর', 'subidpurup.jhalakathi.gov.bd', NULL, NULL),
(2104, 232, 'Siddhakati', 'সিদ্ধকাঠী', 'siddhakatiup.jhalakathi.gov.bd', NULL, NULL),
(2105, 232, 'Ranapasha', 'রানাপাশা', 'ranapashaup.jhalakathi.gov.bd', NULL, NULL),
(2106, 232, 'Nachanmohal', 'নাচনমহল', 'nachanmohalup.jhalakathi.gov.bd', NULL, NULL),
(2107, 232, 'Mollahat', 'মোল্লারহাট', 'mollahatup.jhalakathi.gov.bd', NULL, NULL),
(2108, 232, 'Magar', 'মগর', 'magarup.jhalakathi.gov.bd', NULL, NULL),
(2109, 232, 'Kusanghal', 'কুশঙ্গল', 'kusanghalup.jhalakathi.gov.bd', NULL, NULL),
(2110, 232, 'Kulkathi', 'কুলকাঠী', 'kulkathiup.jhalakathi.gov.bd', NULL, NULL),
(2111, 232, 'Dapdapia', 'দপদপিয়া', 'dapdapiaup.jhalakathi.gov.bd', NULL, NULL),
(2112, 232, 'Bharabpasha', 'ভৈরবপাশা', 'bharabpashaup.jhalakathi.gov.bd', NULL, NULL),
(2113, 233, 'Suktagarh', 'শুক্তাগড়', 'suktagarhup.jhalakathi.gov.bd', NULL, NULL),
(2114, 233, 'Saturia', 'সাতুরিয়া', 'saturiaup.jhalakathi.gov.bd', NULL, NULL),
(2115, 233, 'Mathbari', 'মঠবাড়ী', 'mathbariup.jhalakathi.gov.bd', NULL, NULL),
(2116, 233, 'Galua', 'গালুয়া', 'galuaup.jhalakathi.gov.bd', NULL, NULL),
(2117, 233, 'Baraia', 'বড়ইয়া', 'baraiaup.jhalakathi.gov.bd', NULL, NULL),
(2118, 233, 'Rajapur', 'রাজাপুর', 'rajapurup.jhalakathi.gov.bd', NULL, NULL),
(2119, 234, 'Adabaria', 'আদাবারিয়া', 'adabariaup.gazipur.gov.bd', NULL, NULL),
(2120, 234, 'Bauphal', 'বাউফল', 'bauphalup.patuakhali.gov.bd', NULL, NULL),
(2121, 234, 'Daspara', 'দাস পাড়া', 'dasparaup.gazipur.gov.bd', NULL, NULL),
(2122, 234, 'Kalaiya', 'কালাইয়া', 'kalaiyaup.gazipur.gov.bd', NULL, NULL),
(2123, 234, 'Nawmala', 'নওমালা', 'nawmalaup.patuakhali.gov.bd', NULL, NULL),
(2124, 234, 'Najirpur', 'নাজিরপুর', 'najirpurup.patuakhali.gov.bd', NULL, NULL),
(2125, 234, 'Madanpura', 'মদনপুরা', 'madanpuraup.patuakhali.gov.bd', NULL, NULL),
(2126, 234, 'Boga', 'বগা', 'bogaup.patuakhali.gov.bd', NULL, NULL),
(2127, 234, 'Kanakdia', 'কনকদিয়া', 'kanakdiaup.patuakhali.gov.bd', NULL, NULL),
(2128, 234, 'Shurjamoni', 'সূর্য্যমনি', 'shurjamoniup.patuakhali.gov.bd', NULL, NULL),
(2129, 234, 'Keshabpur', 'কেশবপুর', 'keshabpurup.patuakhali.gov.bd', NULL, NULL),
(2130, 234, 'Dhulia', 'ধুলিয়া', 'dhuliaup.patuakhali.gov.bd', NULL, NULL),
(2131, 234, 'Kalisuri', 'কালিশুরী', 'kalisuriup.patuakhali.gov.bd', NULL, NULL),
(2132, 234, 'Kachipara', 'কাছিপাড়া', 'kachiparaup.patuakhali.gov.bd', NULL, NULL),
(2133, 235, 'Laukathi', 'লাউকাঠী', 'laukathiup.patuakhali.gov.bd', NULL, NULL),
(2134, 235, 'Lohalia', 'লোহালিয়া', 'lohaliaup.patuakhali.gov.bd', NULL, NULL),
(2135, 235, 'Kamalapur', 'কমলাপুর', 'kamalapurup.patuakhali.gov.bd', NULL, NULL),
(2136, 235, 'Jainkathi', 'জৈনকাঠী', 'jainkathiup.patuakhali.gov.bd', NULL, NULL),
(2137, 235, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.patuakhali.gov.bd', NULL, NULL),
(2138, 235, 'Badarpur', 'বদরপুর', 'badarpurup.patuakhali.gov.bd ', NULL, NULL),
(2139, 235, 'Itbaria', 'ইটবাড়ীয়া', 'itbariaup.patuakhali.gov.bd ', NULL, NULL),
(2140, 235, 'Marichbunia', 'মরিচবুনিয়া', 'marichbuniaup.patuakhali.gov.bd ', NULL, NULL),
(2141, 235, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.patuakhali.gov.bd', NULL, NULL),
(2142, 235, 'Chotobighai', 'ছোট বিঘাই', 'chotobighaiup.patuakhali.gov.bd', NULL, NULL),
(2143, 235, 'Borobighai', 'বড় বিঘাই', 'borobighaiup.patuakhali.gov.bd', NULL, NULL),
(2144, 235, 'Madarbunia', 'মাদারবুনিয়া', 'madarbuniaup.patuakhali.gov.bd', NULL, NULL),
(2145, 236, 'Pangasia', 'পাংগাশিয়া', 'pangasiaup.patuakhali.gov.bd', NULL, NULL),
(2146, 236, 'Muradia', 'মুরাদিয়া', 'muradiaup.patuakhali.gov.bd', NULL, NULL),
(2147, 236, 'Labukhali', 'লেবুখালী', 'labukhaliup.patuakhali.gov.bd', NULL, NULL),
(2148, 236, 'Angaria', 'আংগারিয়া', 'angariaup.patuakhali.gov.bd', NULL, NULL),
(2149, 236, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.patuakhali.gov.bd', NULL, NULL),
(2150, 237, 'Bashbaria', 'বাঁশবাড়ীয়া', 'bashbariaup.patuakhali.gov.bd', NULL, NULL),
(2151, 237, 'Rangopaldi', 'রণগোপালদী', 'rangopaldiup.patuakhali.gov.bd', NULL, NULL),
(2152, 237, 'Alipur', 'আলীপুর', 'alipurup.patuakhali.gov.bd', NULL, NULL),
(2153, 237, 'Betagi Shankipur', 'বেতাগী সানকিপুর', 'betagishankipurup.patuakhali.gov.bd', NULL, NULL),
(2154, 237, 'Dashmina', 'দশমিনা', 'dashminaup.patuakhali.gov.bd', NULL, NULL),
(2155, 237, 'Baharampur', 'বহরমপুর', 'baharampurup.patuakhali.gov.bd', NULL, NULL),
(2156, 238, 'Chakamaia', 'চাকামইয়া', 'chakamaiaup.patuakhali.gov.bd', NULL, NULL),
(2157, 238, 'Tiakhali', 'টিয়াখালী', 'tiakhaliup.patuakhali.gov.bd', NULL, NULL),
(2158, 238, 'Lalua', 'লালুয়া', 'laluaup.patuakhali.gov.bd', NULL, NULL),
(2159, 238, 'Dhankhali', 'ধানখালী', 'dhankhaliup.patuakhali.gov.bd', NULL, NULL),
(2160, 238, 'Mithagonj', 'মিঠাগঞ্জ', 'mithagonjup.patuakhali.gov.bd', NULL, NULL),
(2161, 238, 'Nilgonj', 'নীলগঞ্জ', 'nilgonjup.patuakhali.gov.bd', NULL, NULL),
(2162, 238, 'Dulaser', 'ধুলাসার', 'dulaserup.patuakhali.gov.bd', NULL, NULL),
(2163, 238, 'Latachapli', 'লতাচাপলী', 'latachapliup.patuakhali.gov.bd', NULL, NULL),
(2164, 238, 'Mahipur', 'মহিপুর', 'mahipurup.patuakhali.gov.bd', NULL, NULL),
(2165, 238, 'Dalbugonj', 'ডালবুগঞ্জ', 'dalbugonjup.patuakhali.gov.bd', NULL, NULL),
(2166, 238, 'Baliatali', 'বালিয়াতলী', 'baliataliup.patuakhali.gov.bd', NULL, NULL),
(2167, 238, 'Champapur', 'চম্পাপুর', 'champapurup.patuakhali.gov.bd', NULL, NULL),
(2168, 239, 'Madhabkhali', 'মাধবখালী', 'madhabkhaliup.patuakhali.gov.bd', NULL, NULL),
(2169, 239, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganjup.patuakhali.gov.bd', NULL, NULL),
(2170, 239, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.patuakhali.gov.bd', NULL, NULL),
(2171, 239, 'Deuli Subidkhali', 'দেউলী সুবিদখালী', 'deulisubidkhaliup.patuakhali.gov.bd', NULL, NULL),
(2172, 239, 'Kakrabunia', 'কাকড়াবুনিয়া', 'kakrabuniaup.patuakhali.gov.bd', NULL, NULL),
(2173, 239, 'Majidbaria', 'মজিদবাড়িয়া', 'majidbariaup.patuakhali.gov.bd', NULL, NULL),
(2174, 240, 'Amkhola', 'আমখোলা', 'amkholaup.patuakhali.gov.bd', NULL, NULL),
(2175, 240, 'Golkhali', 'গোলখালী', 'golkhaliup.patuakhali.gov.bd', NULL, NULL),
(2176, 240, 'Galachipa', 'গলাচিপা', 'galachipaup.patuakhali.gov.bd', NULL, NULL),
(2177, 240, 'Panpatty', 'পানপট্টি', 'panpattyup.patuakhali.gov.bd', NULL, NULL),
(2178, 240, 'Ratandi Taltali', 'রতনদী তালতলী', 'ratanditaltaliup.patuakhali.gov.bd', NULL, NULL),
(2179, 240, 'Dakua', 'ডাকুয়া', 'dakuaup.patuakhali.gov.bd', NULL, NULL),
(2180, 240, 'Chiknikandi', 'চিকনিকান্দী', 'chiknikandiup.patuakhali.gov.bd', NULL, NULL),
(2181, 240, 'Gazalia', 'গজালিয়া', 'gazaliaup.patuakhali.gov.bd', NULL, NULL),
(2182, 240, 'Charkajol', 'চরকাজল', 'charkajolup.patuakhali.gov.bd', NULL, NULL),
(2183, 240, 'Charbiswas', 'চরবিশ্বাস', 'charbiswasup.patuakhali.gov.bd', NULL, NULL),
(2184, 240, 'Bakulbaria', 'বকুলবাড়ীয়া', 'bakulbariaup.patuakhali.gov.bd', NULL, NULL),
(2185, 240, 'Kalagachhia', 'কলাগাছিয়া', 'kalagachhiaup.patuakhali.gov.bd', NULL, NULL),
(2186, 241, 'Rangabali', 'রাঙ্গাবালী', 'rangabaliup.patuakhali.gov.bd', NULL, NULL),
(2187, 241, 'Barobaisdia', 'বড়বাইশদিয়া', 'barobaisdiaup.patuakhali.gov.bd', NULL, NULL),
(2188, 241, 'Chattobaisdia', 'ছোটবাইশদিয়া', 'chattobaisdiaup.patuakhali.gov.bd', NULL, NULL),
(2189, 241, 'Charmontaz', 'চরমোন্তাজ', 'charmontaz.patuakhali.gov.bd', NULL, NULL),
(2190, 241, 'Chalitabunia', 'চালিতাবুনিয়া', 'chalitabuniaup.patuakhali.gov.bd', NULL, NULL),
(2191, 242, 'Shikder Mallik', 'শিকদার মল্লিক', 'shikdermallikup.pirojpur.gov.bd', NULL, NULL),
(2192, 242, 'Kodomtala', 'কদমতলা', 'kodomtalaup.pirojpur.gov.bd', NULL, NULL),
(2193, 242, 'Durgapur', 'দূর্গাপুর', 'durgapurup.pirojpur.gov.bd', NULL, NULL),
(2194, 242, 'Kolakhali', 'কলাখালী', 'kolakhaliup.pirojpur.gov.bd', NULL, NULL),
(2195, 242, 'Tona', 'টোনা', 'tonaup.pirojpur.gov.bd', NULL, NULL),
(2196, 242, 'Shariktola', 'শরিকতলা', 'shariktolaup.pirojpur.gov.bd', NULL, NULL),
(2197, 242, 'Shankorpasa', 'শংকরপাশা', 'shankorpasaup.pirojpur.gov.bd', NULL, NULL),
(2198, 243, 'Mativangga', 'মাটিভাংগা', 'mativanggaup.pirojpur.gov.bd', NULL, NULL),
(2199, 243, 'Malikhali', 'মালিখালী', 'malikhaliup.pirojpur.gov.bd', NULL, NULL),
(2200, 243, 'Daulbari Dobra', 'দেউলবাড়ী দোবড়া', 'daulbaridobraup.pirojpur.gov.bd', NULL, NULL),
(2201, 243, 'Dirgha', 'দীর্ঘা', 'dirghaup.pirojpur.gov.bd', NULL, NULL),
(2202, 243, 'Kolardoania', 'কলারদোয়ানিয়া', 'kolardoaniaup.pirojpur.gov.bd', NULL, NULL),
(2203, 243, 'Sriramkathi', 'শ্রীরামকাঠী', 'sriramkathiup.pirojpur.gov.bd', NULL, NULL),
(2204, 243, 'Shakhmatia', 'সেখমাটিয়া', 'shakhmatiaup.pirojpur.gov.bd', NULL, NULL),
(2205, 243, 'Nazirpur Sadar', 'নাজিরপুর সদর', 'nazirpursadarup.pirojpur.gov.bd', NULL, NULL),
(2206, 243, 'Shakharikathi', 'শাখারীকাঠী', 'shakharikathiup.pirojpur.gov.bd', NULL, NULL),
(2207, 244, 'Sayna Rogunathpur', 'সয়না রঘুনাথপুর', 'saynarogunathpurup.pirojpur.gov.bd', NULL, NULL),
(2208, 244, 'Amrazuri', 'আমড়াজুড়ি', 'amrazuriup.pirojpur.gov.bd', NULL, NULL),
(2209, 244, 'Kawkhali Sadar', 'কাউখালি সদর', 'kawkhalisadarup.pirojpur.gov.bd', NULL, NULL),
(2210, 244, 'Chirapara', 'চিরাপাড়া', 'chiraparaup.pirojpur.gov.bd', NULL, NULL),
(2211, 244, 'Shialkhathi', 'শিয়ালকাঠী', 'shialkhathiup.pirojpur.gov.bd', NULL, NULL),
(2212, 245, 'Balipara', 'বালিপাড়া', 'baliparaup.pirojpur.gov.bd', NULL, NULL),
(2213, 245, 'Pattashi', 'পত্তাশি', 'pattashiup.pirojpur.gov.bd', NULL, NULL),
(2214, 245, 'Parerhat', 'পাড়েরহাট', 'parerhatup.pirojpur.gov.bd', NULL, NULL),
(2215, 246, 'Vitabaria', 'ভিটাবাড়িয়া', 'vitabariaup.pirojpur.gov.bd', NULL, NULL),
(2216, 246, 'Nodmulla', 'নদমূলা শিয়ালকাঠী', 'nodmullaup.pirojpur.gov.bd', NULL, NULL),
(2217, 246, 'Telikhali', 'তেলিখালী', 'telikhaliup.pirojpur.gov.bd', NULL, NULL),
(2218, 246, 'Ekree', 'ইকড়ী', 'ekreeup.pirojpur.gov.bd', NULL, NULL),
(2219, 246, 'Dhaoa', 'ধাওয়া', 'dhaoaup.pirojpur.gov.bd', NULL, NULL),
(2220, 246, 'Vandaria Sadar', 'ভান্ডারিয়া সদর', 'vandariasadarup.pirojpur.gov.bd', NULL, NULL),
(2221, 246, 'Gouripur', 'গৌরীপুর', 'gouripurup.pirojpur.gov.bd', NULL, NULL),
(2222, 247, 'Tuskhali', 'তুষখালী', 'tuskhaliup.pirojpur.gov.bd', NULL, NULL),
(2223, 247, 'Dhanisafa', 'ধানীসাফা', 'dhanisafaup.pirojpur.gov.bd', NULL, NULL),
(2224, 247, 'Mirukhali', 'মিরুখালী', 'mirukhaliup.pirojpur.gov.bd', NULL, NULL),
(2225, 247, 'Tikikata', 'টিকিকাটা', 'tikikataup.pirojpur.gov.bd', NULL, NULL),
(2226, 247, 'Betmor Rajpara', 'বেতমোর রাজপাড়া', 'betmorrajparaup.pirojpur.gov.bd', NULL, NULL),
(2227, 247, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.pirojpur.gov.bd', NULL, NULL),
(2228, 247, 'Shapleza', 'শাপলেজা', 'shaplezaup.pirojpur.gov.bd', NULL, NULL),
(2229, 247, 'Daudkhali', 'দাউদখালী', 'daudkhaliup.pirojpur.gov.bd', NULL, NULL),
(2230, 247, 'Mathbaria', 'মঠবাড়িয়া', 'mathbariaup.pirojpur.gov.bd', NULL, NULL),
(2231, 247, 'Baramasua', 'বড়মাছুয়া', 'baramasuaup.pirojpur.gov.bd', NULL, NULL),
(2232, 247, 'Haltagulishakhali', 'হলতাগুলিশাখালী', 'haltagulishakhaliup.pirojpur.gov.bd', NULL, NULL),
(2233, 248, 'Boldia', 'বলদিয়া', 'boldiaup.pirojpur.gov.bd', NULL, NULL),
(2234, 248, 'Sohagdal', 'সোহাগদল', 'sohagdalup.pirojpur.gov.bd', NULL, NULL),
(2235, 248, 'Atghorkuriana', 'আটঘর কুড়িয়ানা', 'atghorkurianaup.pirojpur.gov.bd', NULL, NULL),
(2236, 248, 'Jolabari', 'জলাবাড়ী', 'jolabariup.pirojpur.gov.bd', NULL, NULL),
(2237, 248, 'Doyhary', 'দৈহারী', 'doyharyup.pirojpur.gov.bd', NULL, NULL),
(2238, 248, 'Guarekha', 'গুয়ারেখা', 'guarekhaup.pirojpur.gov.bd', NULL, NULL),
(2239, 248, 'Somudoykathi', 'সমুদয়কাঠী', 'somudoykathiup.pirojpur.gov.bd', NULL, NULL),
(2240, 248, 'Sutiakathi', 'সুটিয়াকাঠী', 'sutiakathiup.pirojpur.gov.bd', NULL, NULL),
(2241, 248, 'Sarengkathi', 'সারেংকাঠী', 'sarengkathiup.pirojpur.gov.bd', NULL, NULL),
(2242, 248, 'Shorupkathi', 'স্বরুপকাঠী', 'shorupkathiup.pirojpur.gov.bd', NULL, NULL),
(2243, 249, 'Raipasha Karapur', 'রায়পাশা কড়াপুর', 'raipashakarapurup.barisal.gov.bd', NULL, NULL),
(2244, 249, 'Kashipur', 'কাশীপুর', 'kashipurup.barisal.gov.bd', NULL, NULL),
(2245, 249, 'Charbaria', 'চরবাড়িয়া', 'charbariaup.barisal.gov.bd', NULL, NULL),
(2246, 249, 'Shyastabad', 'সায়েস্তাবাদ', 'shyastabadup.barisal.gov.bd', NULL, NULL),
(2247, 249, 'Charmonai', 'চরমোনাই', 'charmonaiup.barisal.gov.bd', NULL, NULL),
(2248, 249, 'Zagua', 'জাগুয়া', 'zaguaup.barisal.gov.bd', NULL, NULL),
(2249, 249, 'Charcowa', 'চরকাউয়া', 'charcowaup.barisal.gov.bd', NULL, NULL),
(2250, 249, 'Chandpura', 'চাঁদপুরা', 'chandpuraup.barisal.gov.bd', NULL, NULL),
(2251, 249, 'Tungibaria', 'টুঙ্গীবাড়িয়া', 'tungibariaup.barisal.gov.bd', NULL, NULL),
(2252, 249, 'Chandramohan', 'চন্দ্রমোহন', 'chandramohanup.barisal.gov.bd', NULL, NULL),
(2253, 250, 'Charamaddi', 'চরামদ্দি', 'charamaddiup.barisal.gov.bd', NULL, NULL),
(2254, 250, 'Charade', 'চরাদি', 'charadeup.barisal.gov.bd', NULL, NULL),
(2255, 250, 'Darial', 'দাড়িয়াল', 'darialup.barisal.gov.bd', NULL, NULL),
(2256, 250, 'Dudhal', 'দুধল', 'dudhalup.barisal.gov.bd', NULL, NULL),
(2257, 250, 'Durgapasha', 'দুর্গাপাশা', 'durgapashaup.barisal.gov.bd', NULL, NULL),
(2258, 250, 'Faridpur', 'ফরিদপুর', 'faridpurup.barisal.gov.bd', NULL, NULL),
(2259, 250, 'Kabai', 'কবাই', 'kabaiup.barisal.gov.bd', NULL, NULL),
(2260, 250, 'Nalua', 'নলুয়া', 'naluaup.barisal.gov.bd', NULL, NULL),
(2261, 250, 'Kalashkathi', 'কলসকাঠী', 'kalashkathiup.barisal.gov.bd', NULL, NULL),
(2262, 250, 'Garuria', 'গারুরিয়া', 'garuriaup.barisal.gov.bd', NULL, NULL),
(2263, 250, 'Bharpasha', 'ভরপাশা', 'bharpashaup.barisal.gov.bd', NULL, NULL),
(2264, 250, 'Rangasree', 'রঙ্গশ্রী', 'rangasreeup.barisal.gov.bd', NULL, NULL),
(2265, 250, 'Padreeshibpur', 'পাদ্রিশিবপুর', 'padreeshibpurup.barisal.gov.bd', NULL, NULL),
(2266, 250, 'Niamoti', 'নিয়ামতি', 'niamotiup.barisal.gov.bd', NULL, NULL),
(2267, 251, 'Jahangir Nagar', 'জাহাঙ্গীর নগর', 'jahangirnagorup.barisal.gov.bd', NULL, NULL),
(2268, 251, 'Kaderpur', 'কেদারপুর', 'kaderpurup.barisal.gov.bd', NULL, NULL),
(2269, 251, 'Deherhoti', 'দেহেরগতি', 'deherhotiup.barisal.gov.bd', NULL, NULL),
(2270, 251, 'Chandpasha', 'চাঁদপাশা', 'chandpashaup.barisal.gov.bd', NULL, NULL),
(2271, 251, 'Rahamtpur', 'রহমতপুর', 'rahamtpurup.barisal.gov.bd', NULL, NULL),
(2272, 251, 'Madhbpasha', 'মাধবপাশা', 'madhbpashaup.barisal.gov.bd', NULL, NULL),
(2273, 252, 'Shatla', 'সাতলা', 'shatlaup.barisal.gov.bd', NULL, NULL),
(2274, 252, 'Harta', 'হারতা', 'hartaup.barisal.gov.bd', NULL, NULL),
(2275, 252, 'Jalla', 'জল্লা', 'jallaup.barisal.gov.bd', NULL, NULL),
(2276, 252, 'Otra', 'ওটরা', 'otraup.barisal.gov.bd', NULL, NULL),
(2277, 252, 'Sholok', 'শোলক', 'sholokup.barisal.gov.bd', NULL, NULL),
(2278, 252, 'Barakhota', 'বরাকোঠা', 'barakhotaup.barisal.gov.bd', NULL, NULL),
(2279, 252, 'Bamrail', 'বামরাইল', 'bamrailup.barisal.gov.bd', NULL, NULL),
(2280, 252, 'Shikerpur Wazirpur', 'শিকারপুর উজিরপুর', 'shikerpurwazirpurup.barisal.gov.bd', NULL, NULL),
(2281, 252, 'Gouthia', 'গুঠিয়া', 'gouthiaup.barisal.gov.bd', NULL, NULL),
(2282, 253, 'Bisharkandi', 'বিশারকান্দি', 'bisharkandiup.barisal.gov.bd', NULL, NULL),
(2283, 253, 'Illuhar', 'ইলুহার', 'illuharup.barisal.gov.bd', NULL, NULL),
(2284, 253, 'Sayedkathi', 'সৈয়দকাঠী', 'sayedkathiup.barisal.gov.bd', NULL, NULL),
(2285, 253, 'Chakhar', 'চাখার', 'chakharup.barisal.gov.bd', NULL, NULL),
(2286, 253, 'Saliabakpur', 'সলিয়াবাকপুর', 'saliabakpurup.barisal.gov.bd', NULL, NULL),
(2287, 253, 'Baishari', 'বাইশারী', 'baishariup.barisal.gov.bd', NULL, NULL),
(2288, 253, 'Banaripara', 'বানারিপাড়া', 'banariparaup.barisal.gov.bd', NULL, NULL),
(2289, 253, 'Udykhati', 'উদয়কাঠী', 'udykhatiup.barisal.gov.bd', NULL, NULL),
(2290, 254, 'Khanjapur', 'খাঞ্জাপুর', 'khanjapurup.barisal.gov.bd', NULL, NULL),
(2291, 254, 'Barthi', 'বার্থী', 'barthiup.barisal.gov.bd', NULL, NULL),
(2292, 254, 'Chandshi', 'চাঁদশী', 'chandshiup.barisal.gov.bd', NULL, NULL),
(2293, 254, 'Mahilara', 'মাহিলারা', 'mahilaraup.barisal.gov.bd', NULL, NULL),
(2294, 254, 'Nalchira', 'নলচিড়া', 'nalchiraup.barisal.gov.bd', NULL, NULL),
(2295, 254, 'Batajore', 'বাটাজোর', 'batajoreup.barisal.gov.bd', NULL, NULL),
(2296, 254, 'Sarikal', 'সরিকল', 'sarikalup.barisal.gov.bd', NULL, NULL),
(2297, 255, 'Rajihar', 'রাজিহার', 'rajiharup.barisal.gov.bd', NULL, NULL),
(2298, 255, 'Bakal', 'বাকাল', 'bakalup.barisal.gov.bd', NULL, NULL),
(2299, 255, 'Bagdha', 'বাগধা', 'bagdhaup.barisal.gov.bd', NULL, NULL),
(2300, 255, 'Goila', 'গৈলা', 'goilaup.barisal.gov.bd', NULL, NULL),
(2301, 255, 'Ratnapur', 'রত্নপুর', 'ratnapurup.barisal.gov.bd', NULL, NULL),
(2302, 256, 'Andarmanik', 'আন্দারমানিক', 'andarmanikup.barisal.gov.bd', NULL, NULL),
(2303, 256, 'Lata', 'লতা', 'lataup.barisal.gov.bd', NULL, NULL),
(2304, 256, 'Charakkorea', 'চরএককরিয়া', 'charakkoreaup.barisal.gov.bd', NULL, NULL),
(2305, 256, 'Ulania', 'উলানিয়া', 'ulaniaup.barisal.gov.bd', NULL, NULL),
(2306, 256, 'Mehendigong', 'মেহেন্দিগঞ্জ', 'mehendigongup.barisal.gov.bd', NULL, NULL),
(2307, 256, 'Biddanandapur', 'বিদ্যানন্দনপুর', 'biddanandapurup.barisal.gov.bd', NULL, NULL),
(2308, 256, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.barisal.gov.bd', NULL, NULL),
(2309, 256, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.barisal.gov.bd', NULL, NULL),
(2310, 256, 'Alimabad', 'আলিমাবাদ', 'alimabadup.barisal.gov.bd', NULL, NULL),
(2311, 256, 'Chandpur', 'চানপুর', 'chandpurup.barisal.gov.bd', NULL, NULL),
(2312, 256, 'Darirchar Khajuria', 'দড়িরচর খাজুরিয়া', 'darircharkhajuriaup.barisal.gov.bd', NULL, NULL),
(2313, 256, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.barisal.gov.bd', NULL, NULL),
(2314, 256, 'Chargopalpur', 'চরগোপালপুর', 'chargopalpurup.barisal.gov.bd', NULL, NULL),
(2315, 257, 'Batamara', 'বাটামারা', 'batamaraup.barisal.gov.bd', NULL, NULL),
(2316, 257, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.barisal.gov.bd', NULL, NULL),
(2317, 257, 'Safipur', 'সফিপুর', 'safipurup.barisal.gov.bd', NULL, NULL),
(2318, 257, 'Gaschua', 'গাছুয়া', 'gaschuaup.barisal.gov.bd', NULL, NULL),
(2319, 257, 'Charkalekha', 'চরকালেখা', 'charkalekhaup.barisal.gov.bd', NULL, NULL),
(2320, 257, 'Muladi', 'মুলাদী', 'muladiup.barisal.gov.bd', NULL, NULL),
(2321, 257, 'Kazirchar', 'কাজিরচর', 'kazircharup.barisal.gov.bd', NULL, NULL),
(2322, 258, 'Harinathpur', 'হরিনাথপুর', 'harinathpurup.barisal.gov.bd', NULL, NULL),
(2323, 258, 'Memania', 'মেমানিয়া', 'memaniaup.barisal.gov.bd', NULL, NULL),
(2324, 258, 'Guabaria', 'গুয়াবাড়িয়া', 'guabariaup.barisal.gov.bd', NULL, NULL),
(2325, 258, 'Barjalia', 'বড়জালিয়া', 'barjaliaup.barisal.gov.bd', NULL, NULL),
(2326, 258, 'Hizla Gourabdi', 'হিজলা গৌরাব্দি', 'hizlagourabdiup.barisal.gov.bd', NULL, NULL),
(2327, 258, 'Dhulkhola', 'ধুলখোলা', 'dhulkholaup.barisal.gov.bd', NULL, NULL),
(2328, 259, 'Razapur', 'রাজাপুর', 'razapurup.bhola.gov.bd', NULL, NULL),
(2329, 259, 'Ilisha', 'ইলিশা', 'ilishaup.bhola.gov.bd', NULL, NULL),
(2330, 259, 'Westilisa', 'পশ্চিম ইলিশা', 'westilisaup.bhola.gov.bd', NULL, NULL),
(2331, 259, 'Kachia', 'কাচিয়া', 'kachiaup.bhola.gov.bd', NULL, NULL),
(2332, 259, 'Bapta', 'বাপ্তা', 'baptaup.bhola.gov.bd', NULL, NULL),
(2333, 259, 'Dhania', 'ধনিয়া', 'dhaniaup.bhola.gov.bd', NULL, NULL),
(2334, 259, 'Shibpur', 'শিবপুর', 'shibpurup.bhola.gov.bd', NULL, NULL),
(2335, 259, 'Alinagor', 'আলীনগর', 'alinagorup.bhola.gov.bd', NULL, NULL),
(2336, 259, 'Charshamya', 'চরসামাইয়া', 'charshamyaup.bhola.gov.bd', NULL, NULL),
(2337, 259, 'Vhelumia', ' ভেলুমিয়া', 'vhelumiaup.bhola.gov.bd', NULL, NULL),
(2338, 259, 'Vheduria', 'ভেদুরিয়া', 'vheduriaup.bhola.gov.bd', NULL, NULL),
(2339, 259, 'North Digholdi', 'উত্তর দিঘলদী', 'northdigholdiup.bhola.gov.bd', NULL, NULL),
(2340, 259, 'South Digholdi', 'দক্ষিণ দিঘলদী', 'southdigholdiup.bhola.gov.bd', NULL, NULL),
(2341, 260, 'Boromanika', 'বড় মানিকা', 'boromanikaup.bhola.gov.bd', NULL, NULL),
(2342, 260, 'Deula', 'দেউলা', 'deulaup.bhola.gov.bd', NULL, NULL),
(2343, 260, 'Kutuba', 'কুতুবা', 'kutubaup.bhola.gov.bd', NULL, NULL),
(2344, 260, 'Pakshia', 'পক্ষিয়া', 'pakshiaup.bhola.gov.bd', NULL, NULL),
(2345, 260, 'Kachia', 'কাচিয়া', 'kachiaup4.bhola.gov.bd', NULL, NULL),
(2346, 261, 'Osmangonj', 'ওসমানগঞ্জ', 'osmangonjup.bhola.gov.bd', NULL, NULL),
(2347, 261, 'Aslampur', 'আছলামপুর', 'aslampurup.bhola.gov.bd', NULL, NULL),
(2348, 261, 'Zinnagor', 'জিন্নাগড়', 'zinnagorup.bhola.gov.bd', NULL, NULL),
(2349, 261, 'Aminabad', 'আমিনাবাদ', 'aminabadup.bhola.gov.bd', NULL, NULL),
(2350, 261, 'Nilkomol', 'নীলকমল', 'nilkomolup.bhola.gov.bd', NULL, NULL),
(2351, 261, 'Charmadraj', 'চরমাদ্রাজ', 'charmadrajup.bhola.gov.bd', NULL, NULL),
(2352, 261, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd', NULL, NULL),
(2353, 261, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd', NULL, NULL),
(2354, 261, 'Charkolmi', 'চরকলমী', 'charkolmiup.bhola.gov.bd', NULL, NULL),
(2355, 261, 'Charmanika', 'চরমানিকা', 'charmanikaup.bhola.gov.bd', NULL, NULL),
(2356, 261, 'Hazarigonj', 'হাজারীগঞ্জ', 'hazarigonjup.bhola.gov.bd', NULL, NULL),
(2357, 261, 'Jahanpur', 'জাহানপুর', 'jahanpurup.bhola.gov.bd', NULL, NULL),
(2358, 261, 'Nurabad', 'নুরাবাদ', 'nurabadup.bhola.gov.bd', NULL, NULL),
(2359, 261, 'Rasulpur', 'রসুলপুর', 'rasulpurup.bhola.gov.bd', NULL, NULL),
(2360, 261, 'Kukrimukri', 'কুকরীমূকরী', 'kukrimukriup.bhola.gov.bd', NULL, NULL),
(2361, 261, 'Abubakarpur', 'আবুবকরপুর', 'abubakarpurup.bhola.gov.bd', NULL, NULL),
(2362, 261, 'Abdullahpur', 'আবদুল্লাহ', 'abdullahpurup.bhola.gov.bd', NULL, NULL),
(2363, 261, 'Nazrulnagar', 'নজরুল নগর', 'nazrulnagarup.bhola.gov.bd', NULL, NULL),
(2364, 261, 'Mujibnagar', 'মুজিব নগর', 'mujibnagarup.bhola.gov.bd', NULL, NULL),
(2365, 261, 'Dalchar', 'ঢালচর', 'dalcharup.bhola.gov.bd', NULL, NULL),
(2366, 262, 'Madanpur', 'মদনপুর', 'madanpurup.bhola.gov.bd', NULL, NULL),
(2367, 262, 'Madua', 'মেদুয়া', 'maduaup.bhola.gov.bd', NULL, NULL),
(2368, 262, 'Charpata', 'চরপাতা', 'charpataup.bhola.gov.bd', NULL, NULL),
(2369, 262, 'North Joy Nagar', 'উত্তর জয়নগর', 'northjoynagarup.bhola.gov.bd', NULL, NULL),
(2370, 262, 'South Joy Nagar', 'দক্ষিন জয়নগর', 'southjoynagarup.bhola.gov.bd', NULL, NULL),
(2371, 262, 'Char Khalipa', 'চর খলিফা', 'charkhalipaup.bhola.gov.bd', NULL, NULL),
(2372, 262, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bhola.gov.bd', NULL, NULL),
(2373, 262, 'Hazipur', 'হাজীপুর', 'hazipurup.bhola.gov.bd', NULL, NULL),
(2374, 262, 'Vhovanipur', 'ভবানীপুর', 'vhovanipurup.bhola.gov.bd', NULL, NULL),
(2375, 263, 'Hazirhat', 'হাজীর হাট', 'hazirhatup.bhola.gov.bd', NULL, NULL),
(2376, 263, 'Monpura', 'মনপুরা', 'monpuraup.bhola.gov.bd', NULL, NULL),
(2377, 263, 'North Sakuchia', 'উত্তর সাকুচিয়া', 'sakuchianorthup.bhola.gov.bd', NULL, NULL),
(2378, 263, 'South Sakuchia', 'দক্ষিন সাকুচিয়া', 'sakuchiasouthup.bhola.gov.bd', NULL, NULL),
(2379, 264, 'Chanchra', 'চাচঁড়া', 'chanchraup.bhola.gov.bd', NULL, NULL),
(2380, 264, 'Shambupur', 'শম্ভুপুর', 'shambupurup.bhola.gov.bd', NULL, NULL),
(2381, 264, 'Sonapur', 'সোনাপুর', 'sonapurup.bhola.gov.bd', NULL, NULL),
(2382, 264, 'Chadpur', 'চাঁদপুর', 'chadpurup.bhola.gov.bd', NULL, NULL),
(2383, 264, 'Baro Molongchora', 'বড় মলংচড়া', 'baromolongchoraup.bhola.gov.bd', NULL, NULL),
(2384, 265, 'Badarpur', 'বদরপুর', 'badarpurup.bhola.gov.bd', NULL, NULL),
(2385, 265, 'Charbhuta', 'চরভূতা', 'charbhutaup.bhola.gov.bd', NULL, NULL),
(2386, 265, 'Kalma', ' কালমা', 'kalmaup.bhola.gov.bd', NULL, NULL),
(2387, 265, 'Dholigour Nagar', 'ধলীগৌর নগর', 'dholigournagarup.bhola.gov.bd', NULL, NULL),
(2388, 265, 'Lalmohan', 'লালমোহন', 'lalmohanup.bhola.gov.bd', NULL, NULL),
(2389, 265, 'Lord Hardinge', 'লর্ড হার্ডিঞ্জ', 'lordhardingeup.bhola.gov.bd', NULL, NULL),
(2390, 265, 'Ramagonj', 'রমাগঞ্জ', 'ramagonjup.bhola.gov.bd', NULL, NULL),
(2391, 265, 'Paschim Char Umed', 'পশ্চিম চর উমেদ', 'paschimcharumedup.bhola.gov.bd', NULL, NULL),
(2392, 265, 'Farajgonj', 'ফরাজগঞ্জ', 'farajgonjup.bhola.gov.bd', NULL, NULL),
(2393, 266, 'Amtali', 'আমতলী', 'amtaliup.barguna.gov.bd', NULL, NULL),
(2394, 266, 'Gulishakhali', 'গুলিশাখালী', 'gulishakhaliup.barguna.gov.bd', NULL, NULL),
(2395, 266, 'Athrogasia', 'আঠারগাছিয়া', 'athrogasiaup.barguna.gov.bd', NULL, NULL),
(2396, 266, 'Kukua', 'কুকুয়া', 'kukuaup.barguna.gov.bd', NULL, NULL),
(2397, 266, 'Haldia', 'হলদিয়া', 'haldiaup.barguna.gov.bd', NULL, NULL),
(2398, 266, 'Chotobogi', 'ছোটবগী', 'chotobogiup.barguna.gov.bd', NULL, NULL),
(2399, 266, 'Arpangasia', 'আড়পাঙ্গাশিয়া', 'arpangasiaup.barguna.gov.bd', NULL, NULL),
(2400, 266, 'Chowra', 'চাওড়া', 'chowraup.barguna.gov.bd', NULL, NULL),
(2401, 267, 'M. Baliatali', 'এম. বালিয়াতলী', 'm.baliataliup.barguna.gov.bd', NULL, NULL),
(2402, 267, 'Noltona', 'নলটোনা', 'noltonaup.barguna.gov.bd', NULL, NULL),
(2403, 267, 'Bodorkhali', 'বদরখালী', 'bodorkhaliup.barguna.gov.bd', NULL, NULL),
(2404, 267, 'Gowrichanna', 'গৌরিচন্না', 'gowrichannaup.barguna.gov.bd', NULL, NULL),
(2405, 267, 'Fuljhuri', 'ফুলঝুড়ি', 'fuljhuriup.barguna.gov.bd', NULL, NULL),
(2406, 267, 'Keorabunia', 'কেওড়াবুনিয়া', 'keorabuniaup.barguna.gov.bd', NULL, NULL),
(2407, 267, 'Ayla Patakata', 'আয়লা পাতাকাটা', 'aylaPatakataup.barguna.gov.bd', NULL, NULL),
(2408, 267, 'Burirchor', 'বুড়িরচর', 'burirchorup.barguna.gov.bd', NULL, NULL),
(2409, 267, 'Dhalua', 'ঢলুয়া', 'dhaluaup.barguna.gov.bd', NULL, NULL),
(2410, 267, 'Barguna', 'বরগুনা', 'bargunaup.barguna.gov.bd', NULL, NULL),
(2411, 268, 'Bibichini', 'বিবিচিন', 'bibichiniup.barguna.gov.bd', NULL, NULL),
(2412, 268, 'Betagi', 'বেতাগী', 'betagiup.barguna.gov.bd', NULL, NULL),
(2413, 268, 'Hosnabad', 'হোসনাবাদ', 'hosnabadup.barguna.gov.bd', NULL, NULL),
(2414, 268, 'Mokamia', 'মোকামিয়া', 'mokamiaup.barguna.gov.bd', NULL, NULL),
(2415, 268, 'Buramajumder', 'বুড়ামজুমদার', 'buramajumderup.barguna.gov.bd', NULL, NULL),
(2416, 268, 'Kazirabad', 'কাজীরাবাদ', 'kazirabadup.barguna.gov.bd', NULL, NULL),
(2417, 268, 'Sarisamuri', 'সরিষামুড়ী', 'sarisamuriup.barguna.gov.bd', NULL, NULL),
(2418, 269, 'Bukabunia', 'বুকাবুনিয়া', 'bukabuniaup.barguna.gov.bd', NULL, NULL),
(2419, 269, 'Bamna', 'বামনা', 'bamnaup.barguna.gov.bd', NULL, NULL),
(2420, 269, 'Ramna', 'রামনা', 'ramnaup.barguna.gov.bd', NULL, NULL),
(2421, 269, 'Doutola', 'ডৌয়াতলা', 'doutolaup.barguna.gov.bd', NULL, NULL),
(2422, 270, 'Raihanpur', 'রায়হানপুর', 'raihanpurup.barguna.gov.bd', NULL, NULL),
(2423, 270, 'Nachnapara', 'নাচনাপাড়া', 'nachnaparaup.barguna.gov.bd', NULL, NULL),
(2424, 270, 'Charduany', 'চরদুয়ানী', 'charduanyup.barguna.gov.bd', NULL, NULL),
(2425, 270, 'Patharghata', 'পাথরঘাটা', 'patharghataup.barguna.gov.bd', NULL, NULL),
(2426, 270, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.barguna.gov.bd', NULL, NULL),
(2427, 270, 'Kakchira', 'কাকচিঢ়া', 'kakchiraup.barguna.gov.bd', NULL, NULL),
(2428, 270, 'Kathaltali', 'কাঠালতলী', 'kathaltaliup.barguna.gov.bd', NULL, NULL),
(2429, 271, 'Karibaria', 'কড়ইবাড়ীয়া', 'karibariaup.barguna.gov.bd', NULL, NULL),
(2430, 271, 'Panchakoralia', 'পচাকোড়ালিয়া', 'panchakoraliaup.barguna.gov.bd', NULL, NULL),
(2431, 271, 'Barabagi', 'বড়বগি', 'barabagiup.barguna.gov.bd', NULL, NULL),
(2432, 271, 'Chhotabagi', 'ছোটবগি', 'chhotabagiup.barguna.gov.bd', NULL, NULL),
(2433, 271, 'Nishanbaria', 'নিশানবাড়ীয়া', 'nishanbariaup.barguna.gov.bd', NULL, NULL),
(2434, 271, 'Sarikkhali', 'শারিকখালি', 'sarikkhaliup.barguna.gov.bd', NULL, NULL),
(2435, 271, 'Sonakata', 'সোনাকাটা', 'sonakataup.barguna.gov.bd', NULL, NULL),
(2436, 284, 'Tazpur', 'তাজপুর', 'tazpurup.sylhet.gov.bd', NULL, NULL),
(2437, 284, 'Umorpur', 'উমরপুর', 'umorpurup.sylhet.gov.bd', NULL, NULL),
(2438, 284, 'West Poilanpur', 'পশ্চিম পৈলনপুর', 'westpoilanpurup.sylhet.gov.bd', NULL, NULL),
(2439, 272, 'East Poilanpur', 'পূর্ব পৈলনপুর', 'eastpoilanpurup.sylhet.gov.bd', NULL, NULL),
(2440, 272, 'Boaljur', 'বোয়ালজুর', 'boaljurup.sylhet.gov.bd', NULL, NULL),
(2441, 284, 'Burungabazar', 'বুরুঙ্গাবাজার', 'burungabazarup.sylhet.gov.bd', NULL, NULL),
(2442, 284, 'Goalabazar', 'গোয়ালাবাজার', 'goalabazarup.sylhet.gov.bd', NULL, NULL),
(2443, 284, 'Doyamir', 'দয়ামীর', 'doyamirup.sylhet.gov.bd', NULL, NULL),
(2444, 284, 'Usmanpur', 'উসমানপুর', 'usmanpurup.sylhet.gov.bd', NULL, NULL),
(2445, 272, 'Dewanbazar', 'দেওয়ান বাজার', 'dewanbazarup.sylhet.gov.bd', NULL, NULL),
(2446, 272, 'West Gouripur', 'পশ্চিম গৌরীপুর', 'westgouripurup.sylhet.gov.bd', NULL, NULL),
(2447, 272, 'East Gouripur', 'পূর্ব গৌরীপুর', 'eastgouripurup.sylhet.gov.bd', NULL, NULL),
(2448, 272, 'Balaganj', 'বালাগঞ্জ', 'balaganjup.sylhet.gov.bd', NULL, NULL),
(2449, 284, 'Sadipur', 'সাদিরপুর', 'sadipurup.sylhet.gov.bd', NULL, NULL),
(2450, 273, 'Tilpara', 'তিলপাড়া', 'tilparaup.sylhet.gov.bd', NULL, NULL),
(2451, 273, 'Alinagar', 'আলীনগর', 'alinagarup.sylhet.gov.bd', NULL, NULL),
(2452, 273, 'Charkhai', 'চরখাই', 'charkhaiup.sylhet.gov.bd', NULL, NULL),
(2453, 273, 'Dubag', 'দুবাগ', 'dubagup.sylhet.gov.bd', NULL, NULL),
(2454, 273, 'Sheola', 'শেওলা', 'sheolaup.sylhet.gov.bd', NULL, NULL),
(2455, 273, 'Kurarbazar', 'কুড়ারবাজার', 'kurarbazarup.sylhet.gov.bd', NULL, NULL),
(2456, 273, 'Mathiura', 'মাথিউরা', 'mathiuraup.sylhet.gov.bd', NULL, NULL),
(2457, 273, 'Mullapur', 'মোল্লাপুর', 'mullapurup.sylhet.gov.bd', NULL, NULL),
(2458, 273, 'Muria', 'মুড়িয়া', 'muriaup.sylhet.gov.bd', NULL, NULL),
(2459, 273, 'Lauta', 'লাউতা', 'lautaup.sylhet.gov.bd', NULL, NULL),
(2460, 274, 'Rampasha', 'রামপাশা', 'rampashaup.sylhet.gov.bd', NULL, NULL),
(2461, 274, 'Lamakazi', 'লামাকাজী', 'lamakaziup.sylhet.gov.bd', NULL, NULL),
(2462, 274, 'Khajanchi', 'খাজাঞ্চী', 'khajanchiup.sylhet.gov.bd', NULL, NULL),
(2463, 274, 'Alankari', 'অলংকারী', 'alankariup.sylhet.gov.bd', NULL, NULL),
(2464, 274, 'Dewkalash', 'দেওকলস', 'dewkalashup.sylhet.gov.bd', NULL, NULL),
(2465, 274, 'Bishwanath', 'বিশ্বনাথ', 'bishwanathup.sylhet.gov.bd', NULL, NULL),
(2466, 274, 'Doshghar', 'দশঘর', 'doshgharup.sylhet.gov.bd', NULL, NULL),
(2467, 274, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.sylhet.gov.bd', NULL, NULL),
(2468, 275, 'Telikhal', 'তেলিখাল', 'telikhalup.sylhet.gov.bd', NULL, NULL),
(2469, 275, 'Islampur Paschim', 'ইসলামপুর পশ্চিম', 'islampurpaschimup.sylhet.gov.bd', NULL, NULL),
(2470, 275, 'Islampur Purba', 'ইসলামপুর পূর্ব', 'islampurpurbaup.sylhet.gov.bd', NULL, NULL),
(2471, 275, 'Isakalas', 'ইসাকলস', 'isakalasup.sylhet.gov.bd', NULL, NULL),
(2472, 275, 'Uttor Ronikhai', 'উত্তর রনিখাই', 'uttorronikhaiup.sylhet.gov.bd', NULL, NULL),
(2473, 275, 'Dakkin Ronikhai', 'দক্ষিন রনিখাই', 'dakkinronikhaiup.sylhet.gov.bd', NULL, NULL),
(2474, 276, 'Ghilachora', 'ঘিলাছড়া', 'ghilachoraup.sylhet.gov.bd', NULL, NULL),
(2475, 276, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '1nofenchuganjup.sylhet.gov.bd', NULL, NULL),
(2476, 276, 'Uttar Kushiara', 'উত্তর কুশিয়ারা', 'uttarkushiaraup.sylhet.gov.bd', NULL, NULL),
(2477, 276, 'Uttar Fenchuganj', 'উত্তর ফেঞ্চুগঞ্জ', 'uttarfenchuganjup.sylhet.gov.bd', NULL, NULL),
(2478, 276, 'Maijgaon', 'মাইজগাঁও', 'maijgaonup.sylhet.gov.bd', NULL, NULL),
(2479, 277, 'Golapganj', 'গোলাপগঞ্জ', 'golapganjup.sylhet.gov.bd', NULL, NULL),
(2480, 277, 'Fulbari', 'ফুলবাড়ী', 'fulbariup.sylhet.gov.bd', NULL, NULL),
(2481, 277, 'Lakshmipasha', 'লক্ষ্মীপাশা', 'lakshmipashaup.sylhet.gov.bd', NULL, NULL),
(2482, 277, 'Budhbaribazar', 'বুধবারীবাজার', 'budhbaribazarup.sylhet.gov.bd', NULL, NULL),
(2483, 277, 'Dhakadakshin', 'ঢাকাদক্ষিন', 'dhakadakshinup.sylhet.gov.bd', NULL, NULL),
(2484, 277, 'Sharifganj', 'শরিফগঞ্জ', 'sharifganjup.sylhet.gov.bd', NULL, NULL),
(2485, 277, 'Uttar Badepasha', 'উত্তর বাদেপাশা', 'uttarbadepashaup.sylhet.gov.bd', NULL, NULL),
(2486, 277, 'Lakshanaband', 'লক্ষনাবন্দ', 'lakshanabandup.sylhet.gov.bd', NULL, NULL),
(2487, 277, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.sylhet.gov.bd', NULL, NULL),
(2488, 277, 'West Amura', 'পশ্চিম আমুরা', 'westamuraup.sylhet.gov.bd', NULL, NULL),
(2489, 278, 'Fothepur', 'ফতেপুর', 'fothepurup.sylhet.gov.bd', NULL, NULL),
(2490, 278, 'Rustampur', 'রুস্তমপুর', 'rustampurup.sylhet.gov.bd', NULL, NULL),
(2491, 278, 'Paschim Jaflong', 'পশ্চিম জাফলং', 'paschimjaflongup.sylhet.gov.bd', NULL, NULL),
(2492, 278, 'Purba Jaflong', 'পূর্ব জাফলং', 'purbajaflongup.sylhet.gov.bd', NULL, NULL),
(2493, 278, 'Lengura', 'লেঙ্গুড়া', 'lenguraup.sylhet.gov.bd', NULL, NULL),
(2494, 278, 'Alirgaon', 'আলীরগাঁও', 'alirgaonup.sylhet.gov.bd', NULL, NULL),
(2495, 278, 'Nandirgaon', 'নন্দিরগাঁও', 'nandirgaonup.sylhet.gov.bd', NULL, NULL),
(2496, 278, 'Towakul', 'তোয়াকুল', 'towakulup.sylhet.gov.bd', NULL, NULL),
(2497, 278, 'Daubari', 'ডৌবাড়ী', 'daubariup.sylhet.gov.bd', NULL, NULL),
(2498, 279, 'Nijpat', 'নিজপাট', 'nijpatup.sylhet.gov.bd', NULL, NULL),
(2499, 279, 'Jaintapur', 'জৈন্তাপুর', 'jaintapurup.sylhet.gov.bd', NULL, NULL),
(2500, 279, 'Charikatha', 'চারিকাটা', 'charikathaup.sylhet.gov.bd', NULL, NULL),
(2501, 279, 'Darbast', 'দরবস্ত', 'darbastup.sylhet.gov.bd', NULL, NULL),
(2502, 279, 'Fatehpur', 'ফতেপুর', 'fatehpurup.sylhet.gov.bd', NULL, NULL),
(2503, 279, 'Chiknagul', 'চিকনাগুল', 'chiknagulup.sylhet.gov.bd', NULL, NULL),
(2504, 280, 'Rajagonj', 'রাজাগঞ্জ', 'rajagonjup.sylhet.gov.bd', NULL, NULL),
(2505, 280, 'Lakshiprashad Purbo', 'লক্ষীপ্রাসাদ পূর্ব', 'lakshiprashadpurboup.sylhet.gov.bd', NULL, NULL),
(2506, 280, 'Lakshiprashad Pashim', 'লক্ষীপ্রাসাদ পশ্চিম', 'lakshiprashadpashimup.sylhet.gov.bd', NULL, NULL),
(2507, 280, 'Digirpar Purbo', 'দিঘিরপার পূর্ব', 'digirparpurboup.sylhet.gov.bd', NULL, NULL),
(2508, 280, 'Satbakh', 'সাতবাক', 'satbakhup.sylhet.gov.bd', NULL, NULL),
(2509, 280, 'Barachotul', 'বড়চতুল', 'barachotulup.sylhet.gov.bd', NULL, NULL),
(2510, 280, 'Kanaighat', 'কানাইঘাট', 'kanaighatup.sylhet.gov.bd', NULL, NULL),
(2511, 280, 'Dakhin Banigram', 'দক্ষিন বানিগ্রাম', 'dakhinbanigramup.sylhet.gov.bd', NULL, NULL),
(2512, 280, 'Jinghabari', 'ঝিঙ্গাবাড়ী', 'jinghabariup.sylhet.gov.bd', NULL, NULL),
(2513, 281, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.sylhet.gov.bd', NULL, NULL),
(2514, 281, 'Hatkhula', 'হাটখোলা', 'hatkhulaup.sylhet.gov.bd', NULL, NULL),
(2515, 281, 'Khadimnagar', 'খাদিমনগর', 'khadimnagarup.sylhet.gov.bd', NULL, NULL),
(2516, 281, 'Khadimpara', 'খাদিমপাড়া', 'khadimparaup.sylhet.gov.bd', NULL, NULL),
(2517, 281, 'Tultikor', 'টুলটিকর', 'tultikorup.sylhet.gov.bd', NULL, NULL),
(2518, 281, 'Tukerbazar', 'টুকেরবাজার', 'tukerbazarup.sylhet.gov.bd', NULL, NULL),
(2519, 281, 'Mugolgaon', 'মোগলগাও', 'mugolgaonup.sylhet.gov.bd', NULL, NULL),
(2520, 281, 'Kandigaon', 'কান্দিগাও', 'kandigaonup.sylhet.gov.bd', NULL, NULL),
(2521, 282, 'Manikpur', 'মানিকপুর', 'manikpurup.sylhet.gov.bd', NULL, NULL),
(2522, 282, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.sylhet.gov.bd', NULL, NULL),
(2523, 282, 'Barohal', 'বারহাল', 'barohalup.sylhet.gov.bd', NULL, NULL),
(2524, 282, 'Birorsri', 'বিরশ্রী', 'birorsriup.sylhet.gov.bd', NULL, NULL),
(2525, 282, 'Kajalshah', 'কাজলশার', 'kajalshahup.sylhet.gov.bd', NULL, NULL),
(2526, 282, 'Kolachora', 'কলাছড়া', 'kolachora.sylhet.gov.bd', NULL, NULL),
(2527, 282, 'Zakiganj', 'জকিগঞ্জ', 'zakiganjup.sylhet.gov.bd', NULL, NULL),
(2528, 282, 'Barothakuri', 'বারঠাকুরী', 'barothakuriup.sylhet.gov.bd', NULL, NULL),
(2529, 282, 'Kaskanakpur', 'কসকনকপুর', 'kaskanakpurup.sylhet.gov.bd', NULL, NULL),
(2530, 283, 'Lalabazar', 'লালাবাজার', 'lalabazarup.sylhet.gov.bd', NULL, NULL),
(2531, 283, 'Moglabazar', 'মোগলাবাজার', 'moglabazarup.sylhet.gov.bd', NULL, NULL),
(2532, 283, 'Boroikandi', 'বড়ইকান্দি', 'boroikandiup.sylhet.gov.bd', NULL, NULL),
(2533, 283, 'Silam', 'সিলাম', 'silamup.sylhet.gov.bd', NULL, NULL),
(2534, 283, 'Daudpur', 'দাউদপুর', 'daudpurup.sylhet.gov.bd', NULL, NULL),
(2535, 283, 'Mollargaon', 'মোল্লারগাঁও', 'mollargaonup.sylhet.gov.bd', NULL, NULL),
(2536, 283, 'Kuchai', 'কুচাই', 'kuchaiup.sylhet.gov.bd', NULL, NULL),
(2537, 283, 'Kamalbazar', 'কামালবাজার', 'kamalbazarup.sylhet.gov.bd', NULL, NULL),
(2538, 283, 'Jalalpur', 'জালালপুর', 'jalalpurup.sylhet.gov.bd', NULL, NULL),
(2539, 283, 'Tetli', 'তেতলী', 'tetliup.sylhet.gov.bd', NULL, NULL),
(2540, 285, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd', NULL, NULL),
(2541, 285, 'Borni', 'বর্ণি', 'borniup.moulvibazar.gov.bd', NULL, NULL),
(2542, 285, 'Dasherbazar', 'দাসেরবাজার', 'dasherbazarup.moulvibazar.gov.bd', NULL, NULL),
(2543, 285, 'Nizbahadurpur', 'নিজবাহাদুরপুর', 'nizbahadurpurup.moulvibazar.gov.bd', NULL, NULL),
(2544, 285, 'Uttar Shahbajpur', 'উত্তর শাহবাজপুর', 'shahbajpuruttarup.moulvibazar.gov.bd', NULL, NULL),
(2545, 285, 'Dakkhin Shahbajpur', 'দক্ষিণ শাহবাজপুর', 'shahbajpurdakshinup.moulvibazar.gov.bd', NULL, NULL),
(2546, 285, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd', NULL, NULL),
(2547, 285, 'Baralekha', 'বড়লেখা', 'baralekhaup.moulvibazar.gov.bd', NULL, NULL),
(2548, 285, 'Dakshinbhag Uttar', 'দক্ষিণভাগ (উত্তর)', 'dakshinbhaguttarup.moulvibazar.gov.bd', NULL, NULL),
(2549, 285, 'Dakshinbhag Dakkhin', 'দক্ষিণভাগ (দক্ষিণ)', 'dakshinbhagdakshinup.moulvibazar.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(2550, 285, 'Sujanagar', 'সুজানগর', 'sujanagarup.moulvibazar.gov.bd', NULL, NULL),
(2551, 286, 'Adampur', 'আদমপুর', 'adampurup.moulvibazar.gov.bd', NULL, NULL),
(2552, 286, 'Patanushar', 'পতনঊষার', 'patanusharup.moulvibazar.gov.bd', NULL, NULL),
(2553, 286, 'Madhabpur', 'মাধবপুর', 'madhabpurup.moulvibazar.gov.bd', NULL, NULL),
(2554, 286, 'Rahimpur', 'রহিমপুর', 'rahimpurup.moulvibazar.gov.bd', NULL, NULL),
(2555, 286, 'Shamshernagar', 'শমশেরনগর', 'shamshernagarup.moulvibazar.gov.bd', NULL, NULL),
(2556, 286, 'Kamalgonj', 'কমলগঞ্জ', 'kamalgonjup.moulvibazar.gov.bd', NULL, NULL),
(2557, 286, 'Islampur', 'ইসলামপুর', 'islampurup.moulvibazar.gov.bd', NULL, NULL),
(2558, 286, 'Munshibazar', 'মুন্সিবাজার', 'munshibazarup3.moulvibazar.gov.bd', NULL, NULL),
(2559, 286, 'Alinagar', 'আলী নগর', 'alinagarup.moulvibazar.gov.bd', NULL, NULL),
(2560, 287, 'Baramchal', 'বরমচাল', 'baramchalup.moulvibazar.gov.bd', NULL, NULL),
(2561, 287, 'Bhukshimail', 'ভূকশিমইল', 'bhukshimailup.moulvibazar.gov.bd', NULL, NULL),
(2562, 287, 'Joychandi', 'জয়চন্ডি', 'joychandiup.moulvibazar.gov.bd', NULL, NULL),
(2563, 287, 'Brammanbazar', 'ব্রাহ্মণবাজার', 'brammanbazarup.moulvibazar.gov.bd', NULL, NULL),
(2564, 287, 'Kadipur', 'কাদিপুর', 'kadipurup.moulvibazar.gov.bd', NULL, NULL),
(2565, 287, 'Kulaura', 'কুলাউড়া', 'kulauraup.moulvibazar.gov.bd', NULL, NULL),
(2566, 287, 'Rauthgaon', 'রাউৎগাঁও', 'rauthgaonup.moulvibazar.gov.bd', NULL, NULL),
(2567, 287, 'Tilagaon', 'টিলাগাঁও', 'tilagaonup.moulvibazar.gov.bd', NULL, NULL),
(2568, 287, 'Sharifpur', 'শরীফপুর', 'sharifpurup.moulvibazar.gov.bd', NULL, NULL),
(2569, 287, 'Prithimpassa', 'পৃথিমপাশা', 'prithimpassaup.moulvibazar.gov.bd', NULL, NULL),
(2570, 287, 'Kormodha', 'কর্মধা', 'kormodhaup.moulvibazar.gov.bd', NULL, NULL),
(2571, 287, 'Bhatera', 'ভাটেরা', 'bhateraup.moulvibazar.gov.bd', NULL, NULL),
(2572, 287, 'Hazipur', 'হাজীপুর', 'hazipurup.moulvibazar.gov.bd', NULL, NULL),
(2573, 288, 'Amtail', 'আমতৈল', 'amtailup.moulvibazar.gov.bd', NULL, NULL),
(2574, 288, 'Khalilpur', 'খলিলপুর', 'khalilpurup.moulvibazar.gov.bd', NULL, NULL),
(2575, 288, 'Monumukh', 'মনুমুখ', 'monumukhup.moulvibazar.gov.bd', NULL, NULL),
(2576, 288, 'Kamalpur', 'কামালপুর', 'kamalpurup.moulvibazar.gov.bd', NULL, NULL),
(2577, 288, 'Apar Kagabala', 'আপার কাগাবলা', 'uparkagabalaup.moulvibazar.gov.bd', NULL, NULL),
(2578, 288, 'Akhailkura', 'আখাইলকুড়া', 'akhailkuraup.moulvibazar.gov.bd', NULL, NULL),
(2579, 288, 'Ekatuna', 'একাটুনা', 'ekatunaup.moulvibazar.gov.bd', NULL, NULL),
(2580, 288, 'Chadnighat', 'চাঁদনীঘাট', 'chadnighatup.moulvibazar.gov.bd', NULL, NULL),
(2581, 288, 'Konokpur', 'কনকপুর', 'konokpurup.moulvibazar.gov.bd', NULL, NULL),
(2582, 288, 'Nazirabad', 'নাজিরাবাদ', 'nazirabadup.moulvibazar.gov.bd', NULL, NULL),
(2583, 288, 'Mostafapur', 'মোস্তফাপুর', 'mostafapurup.moulvibazar.gov.bd', NULL, NULL),
(2584, 288, 'Giasnagar', 'গিয়াসনগর', 'giasnagarup.moulvibazar.gov.bd', NULL, NULL),
(2585, 289, 'Fotepur', 'ফতেপুর', 'fotepurup.moulvibazar.gov.bd', NULL, NULL),
(2586, 289, 'Uttorbhag', 'উত্তরভাগ', 'uttorbhagup.moulvibazar.gov.bd', NULL, NULL),
(2587, 289, 'Munsibazar', 'মুন্সিবাজার', 'munsibazarup.moulvibazar.gov.bd', NULL, NULL),
(2588, 289, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.moulvibazar.gov.bd', NULL, NULL),
(2589, 289, 'Rajnagar', 'রাজনগর', 'rajnagarup.moulvibazar.gov.bd', NULL, NULL),
(2590, 289, 'Tengra', 'টেংরা', 'tengraup.moulvibazar.gov.bd', NULL, NULL),
(2591, 289, 'Kamarchak', 'কামারচাক', 'kamarchakup.moulvibazar.gov.bd', NULL, NULL),
(2592, 289, 'Munsurnagar', 'মনসুরনগর', 'munsurnagarup.moulvibazar.gov.bd', NULL, NULL),
(2593, 290, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.moulvibazar.gov.bd', NULL, NULL),
(2594, 290, 'Bhunabir', 'ভূনবীর', 'bhunabirup.moulvibazar.gov.bd', NULL, NULL),
(2595, 290, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangalup.moulvibazar.gov.bd', NULL, NULL),
(2596, 290, 'Sindurkhan', 'সিন্দুরখান', 'sindurkhanup.moulvibazar.gov.bd', NULL, NULL),
(2597, 290, 'Kalapur', 'কালাপুর', 'kalapurup.moulvibazar.gov.bd', NULL, NULL),
(2598, 290, 'Ashidron', 'আশিদ্রোন', 'ashidronup.moulvibazar.gov.bd', NULL, NULL),
(2599, 290, 'Rajghat', 'রাজঘাট', 'rajghatup.moulvibazar.gov.bd', NULL, NULL),
(2600, 290, 'Kalighat', 'কালীঘাট', 'kalighatup.moulvibazar.gov.bd', NULL, NULL),
(2601, 290, 'Satgaon', 'সাতগাঁও', 'satgaonup.moulvibazar.gov.bd', NULL, NULL),
(2602, 291, 'Jafornagar', 'জায়ফরনগর', 'jafornagarup.moulvibazar.gov.bd', NULL, NULL),
(2603, 291, 'West Juri', 'পশ্চিম জুড়ী', 'westjuriup.moulvibazar.gov.bd', NULL, NULL),
(2604, 291, 'Gualbari', 'গোয়ালবাড়ী', 'gualbariup.moulvibazar.gov.bd', NULL, NULL),
(2605, 291, 'Sagornal', 'সাগরনাল', 'sagornalup.moulvibazar.gov.bd', NULL, NULL),
(2606, 291, 'Fultola', 'ফুলতলা', 'fultolaup.moulvibazar.gov.bd', NULL, NULL),
(2607, 291, 'Eastjuri', 'পুর্ব জুড়ী', 'eastjuriup.moulvibazar.gov.bd', NULL, NULL),
(2608, 292, 'Barabhakoir Paschim', 'বড় ভাকৈর (পশ্চিম)', 'barabhakoirpaschimup.habiganj.gov.bd', NULL, NULL),
(2609, 292, 'Barabhakoir Purba', 'বড় ভাকৈর (পূর্ব)', 'barabhakoirpurbaup.habiganj.gov.bd', NULL, NULL),
(2610, 292, 'Inatganj', 'ইনাতগঞ্জ', 'inatganjup.habiganj.gov.bd', NULL, NULL),
(2611, 292, 'Digholbak', 'দীঘলবাক', 'digholbakup.habiganj.gov.bd', NULL, NULL),
(2612, 292, 'Aushkandi', 'আউশকান্দি', 'aushkandiup.habiganj.gov.bd', NULL, NULL),
(2613, 292, 'Kurshi', 'কুর্শি', 'kurshiup.habiganj.gov.bd', NULL, NULL),
(2614, 292, 'Kargoan', 'করগাঁও', 'kargoanup.habiganj.gov.bd', NULL, NULL),
(2615, 292, 'Nabiganj Sadar', 'নবীগঞ্জ সদর', 'nabiganjsadarup.habiganj.gov.bd', NULL, NULL),
(2616, 292, 'Bausha', 'বাউসা', 'baushaup.habiganj.gov.bd', NULL, NULL),
(2617, 292, 'Debparra', 'দেবপাড়া', 'debparraup.habiganj.gov.bd', NULL, NULL),
(2618, 292, 'Gaznaipur', 'গজনাইপুর', 'gaznaipurup.habiganj.gov.bd', NULL, NULL),
(2619, 292, 'Kaliarbhanga', 'কালিয়ারভাংগা', 'kaliarbhangaup.habiganj.gov.bd', NULL, NULL),
(2620, 292, 'Paniumda', 'পানিউমদা', 'paniumdaup.habiganj.gov.bd', NULL, NULL),
(2621, 293, 'Snanghat', 'স্নানঘাট', 'snanghatup.habiganj.gov.bd', NULL, NULL),
(2622, 293, 'Putijuri', 'পুটিজুরী', 'putijuriup.habiganj.gov.bd', NULL, NULL),
(2623, 293, 'Satkapon', 'সাতকাপন', 'satkaponup.habiganj.gov.bd', NULL, NULL),
(2624, 293, 'Bahubal Sadar', 'বাহুবল সদর', 'bahubalsadarup.habiganj.gov.bd', NULL, NULL),
(2625, 293, 'Lamatashi', 'লামাতাশী', 'lamatashiup.habiganj.gov.bd', NULL, NULL),
(2626, 293, 'Mirpur', 'মিরপুর', 'mirpurup.habiganj.gov.bd', NULL, NULL),
(2627, 293, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.habiganj.gov.bd', NULL, NULL),
(2628, 294, 'Shibpasha', 'শিবপাশা', 'shibpashaup.habiganj.gov.bd', NULL, NULL),
(2629, 294, 'Kakailsao', 'কাকাইলছেও', 'kakailsaoup.habiganj.gov.bd', NULL, NULL),
(2630, 294, 'Ajmiriganj Sadar', 'আজমিরীগঞ্জ সদর', 'ajmiriganjsadarup.habiganj.gov.bd', NULL, NULL),
(2631, 294, 'Badolpur', 'বদলপুর', 'badolpurup.habiganj.gov.bd', NULL, NULL),
(2632, 294, 'Jolsuka', 'জলসুখা', 'jolsukaup.habiganj.gov.bd', NULL, NULL),
(2633, 295, 'Baniachong North East', 'বানিয়াচং উত্তর পূর্ব', 'baniachongnortheastup.habiganj.gov.bd', NULL, NULL),
(2634, 295, 'Baniachong North West', 'বানিয়াচং উত্তর পশ্চিম', 'baniachongnorthwestup.habiganj.gov.bd', NULL, NULL),
(2635, 295, 'Baniachong South East', 'বানিয়াচং দক্ষিণ পূর্ব', 'baniachongsoutheastup.habiganj.gov.bd', NULL, NULL),
(2636, 295, 'Baniachong South West', 'বানিয়াচং দক্ষিণ পশ্চিম', 'baniachongsouthwestup.habiganj.gov.bd', NULL, NULL),
(2637, 295, 'Daulatpur', 'দৌলতপুর', 'daulatpur.habiganj.gov.bd', NULL, NULL),
(2638, 295, 'Khagaura', 'খাগাউড়া', 'khagauraup.habiganj.gov.bd', NULL, NULL),
(2639, 295, 'Baraiuri', 'বড়ইউড়ি', 'baraiuriup.habiganj.gov.bd', NULL, NULL),
(2640, 295, 'Kagapasha', 'কাগাপাশা', 'kagapashaup.habiganj.gov.bd', NULL, NULL),
(2641, 295, 'Pukra', 'পুকড়া', 'pukraup.habiganj.gov.bd', NULL, NULL),
(2642, 295, 'Subidpur', 'সুবিদপুর', 'subidpurup.habiganj.gov.bd', NULL, NULL),
(2643, 295, 'Makrampur', 'মক্রমপুর', 'makrampurup.habiganj.gov.bd', NULL, NULL),
(2644, 295, 'Sujatpur', 'সুজাতপুর', 'sujatpurup.habiganj.gov.bd', NULL, NULL),
(2645, 295, 'Mandari', 'মন্দরী', 'mandariup.habiganj.gov.bd', NULL, NULL),
(2646, 295, 'Muradpur', 'মুরাদপুর', 'muradpurup.habiganj.gov.bd', NULL, NULL),
(2647, 295, 'Pailarkandi', 'পৈলারকান্দি', 'pailarkandiup.habiganj.gov.bd', NULL, NULL),
(2648, 296, 'Lakhai', 'লাখাই', 'lakhaiup.habiganj.gov.bd', NULL, NULL),
(2649, 296, 'Murakari', 'মোড়াকরি', 'murakariup.habiganj.gov.bd', NULL, NULL),
(2650, 296, 'Muriauk', 'মুড়িয়াউক', 'muriaukup.habiganj.gov.bd', NULL, NULL),
(2651, 296, 'Bamoi', 'বামৈ', 'bamoiup.habiganj.gov.bd', NULL, NULL),
(2652, 296, 'Karab', 'করাব', 'karabup.habiganj.gov.bd', NULL, NULL),
(2653, 296, 'Bulla', 'বুল্লা', 'bullaup6.habiganj.gov.bd', NULL, NULL),
(2654, 297, 'Gazipur', 'গাজীপুর', 'gazipurup.habiganj.gov.bd', NULL, NULL),
(2655, 297, 'Ahammadabad', 'আহম্মদাবাদ', 'ahammadabadup.habiganj.gov.bd', NULL, NULL),
(2656, 297, 'Deorgach', 'দেওরগাছ', 'deorgachup.habiganj.gov.bd', NULL, NULL),
(2657, 297, 'Paikpara', 'পাইকপাড়া', 'paikparaup.habiganj.gov.bd', NULL, NULL),
(2658, 297, 'Shankhala', 'শানখলা', 'shankhalaup.habiganj.gov.bd', NULL, NULL),
(2659, 297, 'Chunarughat', 'চুনারুঘাট', 'chunarughatup.habiganj.gov.bd', NULL, NULL),
(2660, 297, 'Ubahata', 'উবাহাটা', 'ubahataup.habiganj.gov.bd', NULL, NULL),
(2661, 297, 'Shatiajuri', 'সাটিয়াজুরী', 'shatiajuriup.habiganj.gov.bd', NULL, NULL),
(2662, 297, 'Ranigaon', 'রাণীগাঁও', 'ranigaonup.habiganj.gov.bd', NULL, NULL),
(2663, 297, 'Mirashi', 'মিরাশী', 'mirashiup.habiganj.gov.bd', NULL, NULL),
(2664, 298, 'Lukra', 'লুকড়া', 'lukraup.habiganj.gov.bd', NULL, NULL),
(2665, 298, 'Richi', 'রিচি', 'richiup.habiganj.gov.bd', NULL, NULL),
(2666, 298, 'Teghoria', 'তেঘরিয়া', 'teghoriaup.habiganj.gov.bd', NULL, NULL),
(2667, 298, 'Poil', 'পইল', 'poilup.habiganj.gov.bd', NULL, NULL),
(2668, 298, 'Gopaya', 'গোপায়া', 'gopayaup.habiganj.gov.bd', NULL, NULL),
(2669, 298, 'Rajiura', 'রাজিউড়া', 'rajiuraup.habiganj.gov.bd', NULL, NULL),
(2670, 298, 'Nurpur', 'নুরপুর', 'nurpurup.habiganj.gov.bd', NULL, NULL),
(2671, 298, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 'shayestaganjup.habiganj.gov.bd', NULL, NULL),
(2672, 298, 'Nijampur', 'নিজামপুর', 'nijampurup.habiganj.gov.bd', NULL, NULL),
(2673, 298, 'Laskerpur', 'লস্করপুর', 'laskerpurup.habiganj.gov.bd', NULL, NULL),
(2674, 299, 'Dharmaghar', 'ধর্মঘর', 'dharmagharup.habiganj.gov.bd', NULL, NULL),
(2675, 299, 'Choumohani', 'চৌমুহনী', 'choumohaniup.habiganj.gov.bd', NULL, NULL),
(2676, 299, 'Bahara', 'বহরা', 'baharaup.habiganj.gov.bd', NULL, NULL),
(2677, 299, 'Adaoir', 'আদাঐর', 'adaoirup.habiganj.gov.bd', NULL, NULL),
(2678, 299, 'Andiura', 'আন্দিউড়া', 'andiuraup.habiganj.gov.bd', NULL, NULL),
(2679, 299, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.habiganj.gov.bd', NULL, NULL),
(2680, 299, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup.habiganj.gov.bd', NULL, NULL),
(2681, 299, 'Bulla', 'বুল্লা', 'bullaup.habiganj.gov.bd', NULL, NULL),
(2682, 299, 'Noapara', 'নোয়াপাড়া', 'noaparaup.habiganj.gov.bd', NULL, NULL),
(2683, 299, 'Chhatiain', 'ছাতিয়াইন', 'chhatiainup.habiganj.gov.bd', NULL, NULL),
(2684, 299, 'Bagashura', 'বাঘাসুরা', 'bagashuraup.habiganj.gov.bd', NULL, NULL),
(2685, 300, 'Jahangirnagar', 'জাহাঙ্গীরনগর', 'jahangirnagarup.sunamganj.gov.bd', NULL, NULL),
(2686, 300, 'Rangarchar', 'রংগারচর', 'rangarcharup.sunamganj.gov.bd', NULL, NULL),
(2687, 300, 'Aptabnagar', 'আপ্তাবনগর', 'aptabnagarup.sunamganj.gov.bd', NULL, NULL),
(2688, 300, 'Gourarang', 'গৌরারং', 'gourarang.sunamganj.gov.bd', NULL, NULL),
(2689, 300, 'Mollapara', 'মোল্লাপাড়া', 'mollaparaup.sunamganj.gov.bd', NULL, NULL),
(2690, 300, 'Laxmansree', 'লক্ষণশ্রী', 'laxmansreeup.sunamganj.gov.bd', NULL, NULL),
(2691, 300, 'Kathair', 'কাঠইর', 'kathairup.sunamganj.gov.bd', NULL, NULL),
(2692, 300, 'Surma', 'সুরমা', 'surmaup.sunamganj.gov.bd', NULL, NULL),
(2693, 300, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sunamganj.gov.bd', NULL, NULL),
(2694, 301, 'Shimulbak', 'শিমুলবাক', 'shimulbak.sunamganj.gov.bd', NULL, NULL),
(2695, 301, 'Paschim Pagla', 'পশ্চিম পাগলা', 'paschimpagla.sunamganj.gov.bd', NULL, NULL),
(2696, 301, 'Joykalash', 'জয়কলস', 'joykalashup.sunamganj.gov.bd', NULL, NULL),
(2697, 301, 'Purba Pagla', 'পূর্ব পাগলা', 'purbapaglaup.sunamganj.gov.bd', NULL, NULL),
(2698, 301, 'Patharia', 'পাথারিয়া', 'pathariaup.sunamganj.gov.bd', NULL, NULL),
(2699, 301, 'Purba Birgaon', 'পূর্ব বীরগাঁও', 'purbabirgaonup.sunamganj.gov.bd', NULL, NULL),
(2700, 301, 'Dargapasha', 'দরগাপাশা', 'dargapashaup.sunamganj.gov.bd', NULL, NULL),
(2701, 301, 'Paschim Birgaon', 'পশ্চিম বীরগাঁও', 'paschimbirgaonup.sunamganj.gov.bd', NULL, NULL),
(2702, 302, 'Palash', 'পলাশ', 'palashup.sunamganj.gov.bd', NULL, NULL),
(2703, 302, 'Solukabad', 'সলুকাবাদ', 'solukabadup.sunamganj.gov.bd', NULL, NULL),
(2704, 302, 'Dhanpur', 'ধনপুর', 'dhanpurup.sunamganj.gov.bd', NULL, NULL),
(2705, 302, 'Badaghat South', 'বাদাঘাট দক্ষিণ', 'badaghatsouthup.sunamganj.gov.bd', NULL, NULL),
(2706, 302, 'Fatepur', 'ফতেপুর', 'fatepurup.sunamganj.gov.bd', NULL, NULL),
(2707, 303, 'Islampur', 'ইসলামপুর', 'islampurup.sunamganj.gov.bd', NULL, NULL),
(2708, 303, 'Noarai', 'নোয়ারাই', 'noaraiup.sunamganj.gov.bd', NULL, NULL),
(2709, 303, 'Chhatak Sadar', 'ছাতক সদর', 'chhataksadarup.sunamganj.gov.bd', NULL, NULL),
(2710, 303, 'Kalaruka', 'কালারুকা', 'kalarukaup.sunamganj.gov.bd', NULL, NULL),
(2711, 303, 'Gobindganj-Syedergaon', 'গোবিন্দগঞ্জ-সৈদেরগাঁও', 'gobindganjsyedergaonup.sunamganj.gov.bd', NULL, NULL),
(2712, 303, 'Chhaila Afjalabad', 'ছৈলা আফজলাবাদ', 'chhailaafjalabadup.sunamganj.gov.bd', NULL, NULL),
(2713, 303, 'Khurma North', 'খুরমা উত্তর', 'khurmanorthup.sunamganj.gov.bd', NULL, NULL),
(2714, 303, 'Khurma South', 'খুরমা দক্ষিণ', 'khurmasouthup.sunamganj.gov.bd', NULL, NULL),
(2715, 303, 'Chormohalla', 'চরমহল্লা', 'chormohallaup.sunamganj.gov.bd', NULL, NULL),
(2716, 303, 'Jauwabazar', 'জাউয়া বাজার', 'jauwabazarup.sunamganj.gov.bd', NULL, NULL),
(2717, 303, 'Singchapair', 'সিংচাপইড়', 'singchapairup.sunamganj.gov.bd', NULL, NULL),
(2718, 303, 'Dolarbazar', 'দোলারবাজার', 'dolarbazarup.sunamganj.gov.bd', NULL, NULL),
(2719, 303, 'Bhatgaon', 'ভাতগাঁও', 'bhatgaonup.sunamganj.gov.bd', NULL, NULL),
(2720, 304, 'Kolkolia', 'কলকলিয়া', 'kolkoliaup.sunamganj.gov.bd', NULL, NULL),
(2721, 304, 'Patli', 'পাটলী', 'patliup.sunamganj.gov.bd', NULL, NULL),
(2722, 304, 'Mirpur', 'মীরপুর', 'mirpurup.sunamganj.gov.bd', NULL, NULL),
(2723, 304, 'Chilaura Holdipur', 'চিলাউড়া হলদিপুর', 'chilauraholdipurup.sunamganj.gov.bd', NULL, NULL),
(2724, 304, 'Raniganj', 'রানীগঞ্জ', 'raniganjup.sunamganj.gov.bd', NULL, NULL),
(2725, 304, 'Syedpur Shaharpara', 'সৈয়দপুর শাহাড়পাড়া', 'syedpurshaharparaup.sunamganj.gov.bd', NULL, NULL),
(2726, 304, 'Asharkandi', 'আশারকান্দি', 'asharkandiup.sunamganj.gov.bd', NULL, NULL),
(2727, 304, 'Pailgaon', 'পাইলগাঁও', 'pailgaonup.sunamganj.gov.bd', NULL, NULL),
(2728, 305, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.sunamganj.gov.bd', NULL, NULL),
(2729, 305, 'Norsingpur', 'নরসিংহপুর', 'norsingpurup.sunamganj.gov.bd', NULL, NULL),
(2730, 305, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazarup.sunamganj.gov.bd', NULL, NULL),
(2731, 305, 'Mannargaon', 'মান্নারগাঁও', 'mannargaonup.sunamganj.gov.bd', NULL, NULL),
(2732, 305, 'Pandargaon', 'পান্ডারগাঁও', 'pandargaonup.sunamganj.gov.bd', NULL, NULL),
(2733, 305, 'Dohalia', 'দোহালিয়া', 'dohaliaup.sunamganj.gov.bd', NULL, NULL),
(2734, 305, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.sunamganj.gov.bd', NULL, NULL),
(2735, 305, 'Boglabazar', 'বোগলাবাজার', 'boglabazarup.sunamganj.gov.bd', NULL, NULL),
(2736, 305, 'Surma', 'সুরমা', 'surma2up.sunamganj.gov.bd', NULL, NULL),
(2737, 306, 'Sreepur North', 'শ্রীপুর উত্তর', 'sreepurnorthup.sunamganj.gov.bd', NULL, NULL),
(2738, 306, 'Sreepur South', 'শ্রীপুর দক্ষিণ', 'sreepursouthup.sunamganj.gov.bd', NULL, NULL),
(2739, 306, 'Bordal South', 'বড়দল দক্ষিণ', 'bordalsouthup.sunamganj.gov.bd', NULL, NULL),
(2740, 306, 'Bordal North', 'বড়দল উত্তর', 'bordalnorthup.sunamganj.gov.bd', NULL, NULL),
(2741, 306, 'Badaghat', 'বাদাঘাট', 'badaghatup.sunamganj.gov.bd', NULL, NULL),
(2742, 306, 'Tahirpur Sadar', 'তাহিরপুর সদর', 'tahirpursadarup.sunamganj.gov.bd', NULL, NULL),
(2743, 306, 'Balijuri', 'বালিজুরী', 'balijuriup.sunamganj.gov.bd', NULL, NULL),
(2744, 307, 'Bongshikunda North', 'বংশীকুন্ডা উত্তর', 'bongshikundanorthup.sunamganj.gov.bd', NULL, NULL),
(2745, 307, 'Bongshikunda South', 'বংশীকুন্ডা দক্ষিণ', 'bongshikundasouthup.sunamganj.gov.bd', NULL, NULL),
(2746, 307, 'Chamordani', 'চামরদানী', 'chamordaniup.sunamganj.gov.bd', NULL, NULL),
(2747, 307, 'Madhyanagar', 'মধ্যনগর', 'madhyanagarup.sunamganj.gov.bd', NULL, NULL),
(2748, 307, 'Paikurati', 'পাইকুরাটী', 'paikuratiup.sunamganj.gov.bd', NULL, NULL),
(2749, 307, 'Selbarash', 'সেলবরষ', 'selbarashup.sunamganj.gov.bd', NULL, NULL),
(2750, 307, 'Dharmapasha Sadar', 'ধর্মপাশা সদর', 'dharmapashasadarup.sunamganj.gov.bd', NULL, NULL),
(2751, 307, 'Joyasree', 'জয়শ্রী', 'joyasreeup.sunamganj.gov.bd', NULL, NULL),
(2752, 307, 'Sukhair Rajapur North', 'সুখাইড় রাজাপুর উত্তর', 'sukhairrajapurnorthup.sunamganj.gov.bd', NULL, NULL),
(2753, 307, 'Sukhair Rajapur South', 'সুখাইড় রাজাপুর দক্ষিণ', 'sukhairrajapursouthup.sunamganj.gov.bd', NULL, NULL),
(2754, 308, 'Beheli', 'বেহেলী', 'beheliup.sunamganj.gov.bd', NULL, NULL),
(2755, 308, 'Sachnabazar', 'সাচনাবাজার', 'sachnabazarup.sunamganj.gov.bd', NULL, NULL),
(2756, 308, 'Bhimkhali', 'ভীমখালী', 'bhimkhaliup.sunamganj.gov.bd', NULL, NULL),
(2757, 308, 'Fenerbak', 'ফেনারবাক', 'fenerbakup.sunamganj.gov.bd', NULL, NULL),
(2758, 308, 'Jamalganj Sadar', 'জামালগঞ্জ সদর', 'jamalganjsadarup.sunamganj.gov.bd', NULL, NULL),
(2759, 309, 'Atgaon', 'আটগাঁও', 'atgaonup.sunamganj.gov.bd', NULL, NULL),
(2760, 309, 'Habibpur', 'হবিবপুর', 'habibpurup.sunamganj.gov.bd', NULL, NULL),
(2761, 309, 'Bahara', 'বাহারা', 'baharaup.sunamganj.gov.bd', NULL, NULL),
(2762, 309, 'Shalla Sadar', 'শাল্লা সদর', 'shallasadarup.sunamganj.gov.bd', NULL, NULL),
(2763, 310, 'Rafinagar', 'রফিনগর', 'rafinagarup.sunamganj.gov.bd', NULL, NULL),
(2764, 310, 'Bhatipara', 'ভাটিপাড়া', 'bhatiparaup.sunamganj.gov.bd', NULL, NULL),
(2765, 310, 'Rajanagar', 'রাজানগর', 'rajanagarup.sunamganj.gov.bd', NULL, NULL),
(2766, 310, 'Charnarchar', 'চরনারচর', 'charnarcharup.sunamganj.gov.bd', NULL, NULL),
(2767, 310, 'Derai Sarmangal', 'দিরাই সরমঙ্গল', 'deraisarmangalup.sunamganj.gov.bd', NULL, NULL),
(2768, 310, 'Karimpur', 'করিমপুর', 'karimpurup.sunamganj.gov.bd', NULL, NULL),
(2769, 310, 'Jagddol', 'জগদল', 'jagddolup.sunamganj.gov.bd', NULL, NULL),
(2770, 310, 'Taral', 'তাড়ল', 'taralup.sunamganj.gov.bd', NULL, NULL),
(2771, 310, 'Kulanj', 'কুলঞ্জ', 'kulanjup.sunamganj.gov.bd', NULL, NULL),
(2772, 311, 'Amlaba', 'আমলাব', 'amlabaup.narsingdi.gov.bd', NULL, NULL),
(2773, 311, 'Bajnaba', 'বাজনাব', 'bajnabaup.narsingdi.gov.bd', NULL, NULL),
(2774, 311, 'Belabo', 'বেলাব', 'belaboup.narsingdi.gov.bd', NULL, NULL),
(2775, 311, 'Binnabayd', 'বিন্নাবাইদ', 'binnabaydup.narsingdi.gov.bd', NULL, NULL),
(2776, 311, 'Charuzilab', 'চরউজিলাব', 'charuzilabup.narsingdi.gov.bd', NULL, NULL),
(2777, 311, 'Naraynpur', 'নারায়নপুর', 'naraynpurup.narsingdi.gov.bd', NULL, NULL),
(2778, 311, 'Sallabad', 'সল্লাবাদ', 'sallabadup.narsingdi.gov.bd', NULL, NULL),
(2779, 311, 'Patuli', 'পাটুলী', 'patuliup.narsingdi.gov.bd', NULL, NULL),
(2780, 311, 'Diara', 'দেয়ারা মডেল', 'diaraup.narsingdi.gov.bd', NULL, NULL),
(2781, 312, 'Barachapa', 'বড়চাপা', 'barachapaup.narsingdi.gov.bd', NULL, NULL),
(2782, 312, 'Chalakchar', 'চালাকচর', 'chalakcharup.narsingdi.gov.bd', NULL, NULL),
(2783, 312, 'Charmandalia', 'চরমান্দালিয়া', 'charmandaliaup.narsingdi.gov.bd', NULL, NULL),
(2784, 312, 'Ekduaria', 'একদুয়ারিয়া', 'ekduariaup.narsingdi.gov.bd', NULL, NULL),
(2785, 312, 'Gotashia', 'গোতাশিয়া', 'gotashiaup.narsingdi.gov.bd', NULL, NULL),
(2786, 312, 'Kanchikata', 'কাচিকাটা', 'kanchikataup.narsingdi.gov.bd', NULL, NULL),
(2787, 312, 'Khidirpur', 'খিদিরপুর', 'khidirpurup.narsingdi.gov.bd', NULL, NULL),
(2788, 312, 'Shukundi', 'শুকুন্দি', 'shukundiup.narsingdi.gov.bd', NULL, NULL),
(2789, 312, 'Dawlatpur', 'দৌলতপুর', 'dawlatpurup.narsingdi.gov.bd', NULL, NULL),
(2790, 312, 'Krisnopur', 'কৃষ্ণপুর', 'krisnopurup.narsingdi.gov.bd', NULL, NULL),
(2791, 312, 'Labutala', 'লেবুতলা', 'labutalaup.narsingdi.gov.bd', NULL, NULL),
(2792, 312, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.narsingdi.gov.bd', NULL, NULL),
(2793, 313, 'Alokbali', 'আলোকবালী', 'alokbaliup.narsingdi.gov.bd', NULL, NULL),
(2794, 313, 'Chardighaldi', 'চরদিঘলদী', 'chardighaldiup.narsingdi.gov.bd', NULL, NULL),
(2795, 313, 'Chinishpur', 'চিনিশপুর', 'chinishpurup.narsingdi.gov.bd', NULL, NULL),
(2796, 313, 'Hajipur', 'হাজীপুর', 'hajipurup.narsingdi.gov.bd', NULL, NULL),
(2797, 313, 'Karimpur', 'করিমপুর', 'karimpurup.narsingdi.gov.bd', NULL, NULL),
(2798, 313, 'Khathalia', 'কাঠালিয়া', 'khathaliaup.narsingdi.gov.bd', NULL, NULL),
(2799, 313, 'Nuralapur', 'নূরালাপুর', 'nuralapurup.narsingdi.gov.bd', NULL, NULL),
(2800, 313, 'Mahishasura', 'মহিষাশুড়া', 'mahishasuraup.narsingdi.gov.bd', NULL, NULL),
(2801, 313, 'Meherpara', 'মেহেড়পাড়া', 'meherparaup.narsingdi.gov.bd', NULL, NULL),
(2802, 313, 'Nazarpur', 'নজরপুর', 'nazarpurup.narsingdi.gov.bd', NULL, NULL),
(2803, 313, 'Paikarchar', 'পাইকারচর', 'paikarcharup.narsingdi.gov.bd', NULL, NULL),
(2804, 313, 'Panchdona', 'পাঁচদোনা', 'panchdonaup.narsingdi.gov.bd', NULL, NULL),
(2805, 313, 'Silmandi', 'শিলমান্দী', 'silmandiup.narsingdi.gov.bd', NULL, NULL),
(2806, 313, 'Amdia', 'আমদিয়া ২', 'amdiaup.narsingdi.gov.bd', NULL, NULL),
(2807, 314, 'Danga', 'ডাংঙ্গা', 'dangaup.narsingdi.gov.bd', NULL, NULL),
(2808, 314, 'Charsindur', 'চরসিন্দুর', 'charsindurup.narsingdi.gov.bd', NULL, NULL),
(2809, 314, 'Jinardi', 'জিনারদী', 'jinardiup.narsingdi.gov.bd', NULL, NULL),
(2810, 314, 'Gazaria', 'গজারিয়া', 'gazariaup.narsingdi.gov.bd', NULL, NULL),
(2811, 315, 'Chanpur', 'চানপুর', 'chanpurup.narsingdi.gov.bd', NULL, NULL),
(2812, 315, 'Alipura', 'অলিপুরা', 'alipuraup.narsingdi.gov.bd', NULL, NULL),
(2813, 315, 'Amirganj', 'আমিরগঞ্জ', 'amirganjup.narsingdi.gov.bd', NULL, NULL),
(2814, 315, 'Adiabad', 'আদিয়াবাদ', 'adiabadup.narsingdi.gov.bd', NULL, NULL),
(2815, 315, 'Banshgari', 'বাঁশগাড়ী', 'banshgariup.narsingdi.gov.bd', NULL, NULL),
(2816, 315, 'Chanderkandi', 'চান্দেরকান্দি', 'chanderkandiup.narsingdi.gov.bd', NULL, NULL),
(2817, 315, 'Chararalia', 'চরআড়ালিয়া', 'chararaliaup.narsingdi.gov.bd', NULL, NULL),
(2818, 315, 'Charmadhua', 'চরমধুয়া', 'charmadhuaup.narsingdi.gov.bd', NULL, NULL),
(2819, 315, 'Charsubuddi', 'চরসুবুদ্দি', 'charsubuddiup.narsingdi.gov.bd', NULL, NULL),
(2820, 315, 'Daukarchar', 'ডৌকারচর', 'daukarcharup.narsingdi.gov.bd', NULL, NULL),
(2821, 315, 'Hairmara', 'হাইরমারা', 'hairmaraup.narsingdi.gov.bd', NULL, NULL),
(2822, 315, 'Maheshpur', 'মহেষপুর', 'maheshpurup.narsingdi.gov.bd', NULL, NULL),
(2823, 315, 'Mirzanagar', 'মির্জানগর', 'mirzanagarup.narsingdi.gov.bd', NULL, NULL),
(2824, 315, 'Mirzarchar', 'মির্জারচর', 'mirzarcharup.narsingdi.gov.bd', NULL, NULL),
(2825, 315, 'Nilakhya', 'নিলক্ষ্যা', 'nilakhyaup.narsingdi.gov.bd', NULL, NULL),
(2826, 315, 'Palashtali', 'পলাশতলী', 'palashtaliup.narsingdi.gov.bd', NULL, NULL),
(2827, 315, 'Paratali', 'পাড়াতলী', 'parataliup.narsingdi.gov.bd', NULL, NULL),
(2828, 315, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.narsingdi.gov.bd', NULL, NULL),
(2829, 315, 'Roypura', 'রায়পুরা', 'roypuraup.narsingdi.gov.bd', NULL, NULL),
(2830, 315, 'Musapur', 'মুছাপুর', 'musapurup.narsingdi.gov.bd', NULL, NULL),
(2831, 315, 'Uttar Bakharnagar', 'উত্তর বাখরনগর', 'uttarbakharnagarup.narsingdi.gov.bd', NULL, NULL),
(2832, 315, 'Marjal', 'মরজাল', 'marjal2up.narsingdi.gov.bd', NULL, NULL),
(2833, 316, 'Dulalpur', 'দুলালপুর', 'dulalpurup.narsingdi.gov.bd', NULL, NULL),
(2834, 316, 'Joynagar', 'জয়নগর', 'joynagarup.narsingdi.gov.bd', NULL, NULL),
(2835, 316, 'Sadharchar', 'সাধারচর', 'sadharcharup.narsingdi.gov.bd', NULL, NULL),
(2836, 316, 'Masimpur', 'মাছিমপুর', 'masimpurup.narsingdi.gov.bd', NULL, NULL),
(2837, 316, 'Chakradha', 'চক্রধা', 'chakradhaup.narsingdi.gov.bd', NULL, NULL),
(2838, 316, 'Joshar', 'যোশর', 'josharup.narsingdi.gov.bd', NULL, NULL),
(2839, 316, 'Baghabo', 'বাঘাব', 'baghaboup.narsingdi.gov.bd', NULL, NULL),
(2840, 316, 'Ayubpur', 'আয়ুবপুর', 'ayubpurup.narsingdi.gov.bd', NULL, NULL),
(2841, 316, 'Putia', 'পুটিয়া', 'putiaup.narsingdi.gov.bd', NULL, NULL),
(2842, 317, 'Bahadursadi', 'বাহাদুরশাদী', 'bahadursadi.gazipur.gov.bd', NULL, NULL),
(2843, 317, 'Baktarpur', 'বক্তারপুর', 'baktarpur.gazipur.gov.bd', NULL, NULL),
(2844, 317, 'Jamalpurnew', 'জামালপুর', 'jamalpurnew.gazipur.gov.bd', NULL, NULL),
(2845, 317, 'Jangalia', 'জাঙ্গালিয়া', 'jangalia.gazipur.gov.bd', NULL, NULL),
(2846, 317, 'Moktarpur', 'মোক্তারপুর', 'moktarpur.gazipur.gov.bd', NULL, NULL),
(2847, 317, 'Nagari', 'নাগরী', 'nagari.gazipur.gov.bd', NULL, NULL),
(2848, 317, 'Tumulia', 'তুমুলিয়া', 'tumulia.gazipur.gov.bd', NULL, NULL),
(2849, 318, 'Atabaha', 'আটাবহ', 'atabahaup.gazipur.gov.bd', NULL, NULL),
(2850, 318, 'Boali', 'বোয়ালী', 'boaliup.gazipur.gov.bd', NULL, NULL),
(2851, 318, 'Chapair', 'চাপাইর', 'chapairup.gazipur.gov.bd', NULL, NULL),
(2852, 318, 'Dhaliora', 'ঢালজোড়া', 'dhalioraup.gazipur.gov.bd', NULL, NULL),
(2853, 318, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.gazipur.gov.bd', NULL, NULL),
(2854, 318, 'Madhyapara', 'মধ্যপাড়া', 'madhyapara.gazipur.gov.bd', NULL, NULL),
(2855, 318, 'Mouchak', 'মৌচাক', 'mouchakup.gazipur.gov.bd', NULL, NULL),
(2856, 318, 'Sutrapur', 'সূত্রাপুর', 'sutrapurup.gazipur.gov.bd', NULL, NULL),
(2857, 318, 'Srifaltali', 'শ্রীফলতলী', 'srifaltaliup.gazipur.gov.bd', NULL, NULL),
(2858, 319, 'Barishaba', 'বারিষাব', 'barishabaup.gazipur.gov.bd', NULL, NULL),
(2859, 319, 'Ghagotia', 'ঘাগটিয়া', 'ghagotiaup.gazipur.gov.bd', NULL, NULL),
(2860, 319, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gazipur.gov.bd', NULL, NULL),
(2861, 319, 'Chandpur', 'চাঁদপুর', 'chandpur.gazipur.gov.bd', NULL, NULL),
(2862, 319, 'Targoan', 'তরগাঁও', 'targoan.gazipur.gov.bd', NULL, NULL),
(2863, 319, 'Karihata', 'কড়িহাতা', 'karihata.gazipur.gov.bd', NULL, NULL),
(2864, 319, 'Tokh', 'টোক', 'tokh.gazipur.gov.bd', NULL, NULL),
(2865, 319, 'Sinhasree', 'সিংহশ্রী', 'sinhasree.gazipur.gov.bd', NULL, NULL),
(2866, 319, 'Durgapur', 'দূর্গাপুর', 'durgapurup.gazipur.gov.bd', NULL, NULL),
(2867, 319, 'Sonmania', 'সনমানিয়া', 'sonmaniaup.gazipur.gov.bd', NULL, NULL),
(2868, 319, 'Rayed', 'রায়েদ', 'rayedup.gazipur.gov.bd', NULL, NULL),
(2869, 320, 'Baria', 'বাড়ীয়া', 'bariaup.gazipur.gov.bd', NULL, NULL),
(2870, 320, 'Basan', 'বাসন', 'basanup.gazipur.gov.bd', NULL, NULL),
(2871, 320, 'Gachha', 'গাছা', 'gachhaup.gazipur.gov.bd', NULL, NULL),
(2872, 320, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.gazipur.gov.bd', NULL, NULL),
(2873, 320, 'Kayaltia', 'কাউলতিয়া', 'kayaltiaup.gazipur.gov.bd', NULL, NULL),
(2874, 320, 'Konabari', 'কোনাবাড়ী', 'konabariup.gazipur.gov.bd', NULL, NULL),
(2875, 320, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.gazipur.gov.bd', NULL, NULL),
(2876, 320, 'Pubail', 'পূবাইল', 'pubailup.gazipur.gov.bd', NULL, NULL),
(2877, 321, 'Barmi', 'বরমী', 'barmiup.gazipur.gov.bd', NULL, NULL),
(2878, 321, 'Gazipur', 'গাজীপুর', 'gazipurup.gazipur.gov.bd', NULL, NULL),
(2879, 321, 'Gosinga', 'গোসিংগা', 'gosingaup.gazipur.gov.bd', NULL, NULL),
(2880, 321, 'Maona', 'মাওনা', 'maonaup.gazipur.gov.bd', NULL, NULL),
(2881, 321, 'Kaoraid', 'কাওরাইদ', 'kaoraidup.gazipur.gov.bd', NULL, NULL),
(2882, 321, 'Prahladpur', 'প্রহলাদপুর', 'prahladpurup.gazipur.gov.bd', NULL, NULL),
(2883, 321, 'Rajabari', 'রাজাবাড়ী', 'rajabariup.gazipur.gov.bd', NULL, NULL),
(2884, 321, 'Telihati', 'তেলিহাটী', 'telihatiup.gazipur.gov.bd', NULL, NULL),
(2885, 322, 'Binodpur', 'বিনোদপুর', 'binodpurup.shariatpur.gov.bd', NULL, NULL),
(2886, 322, 'Tulasar', 'তুলাসার', 'tulasarup.shariatpur.gov.bd', NULL, NULL),
(2887, 322, 'Palong', 'পালং', 'palongup.shariatpur.gov.bd', NULL, NULL),
(2888, 322, 'Domshar', 'ডোমসার', 'domsharup.shariatpur.gov.bd', NULL, NULL),
(2889, 322, 'Rudrakar', 'রুদ্রকর', 'rudrakarup.shariatpur.gov.bd', NULL, NULL),
(2890, 322, 'Angaria', 'আংগারিয়া', 'angariaup.shariatpur.gov.bd', NULL, NULL),
(2891, 322, 'Chitolia', 'চিতলয়া', 'chitoliaup.shariatpur.gov.bd', NULL, NULL),
(2892, 322, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.shariatpur.gov.bd', NULL, NULL),
(2893, 322, 'Chikondi', 'চিকন্দি', 'chikondiup.shariatpur.gov.bd', NULL, NULL),
(2894, 322, 'Chandrapur', 'চন্দ্রপুর', 'chandrapurup.shariatpur.gov.bd', NULL, NULL),
(2895, 322, 'Shulpara', 'শৌলপাড়া', 'shulparaup.shariatpur.gov.bd', NULL, NULL),
(2896, 323, 'Kedarpur', 'কেদারপুর', 'kedarpurup.shariatpur.gov.bd', NULL, NULL),
(2897, 323, 'Dingamanik', 'ডিংগামানিক', 'dingamanikup.shariatpur.gov.bd', NULL, NULL),
(2898, 323, 'Garishar', 'ঘড়িষার', 'garisharup.shariatpur.gov.bd', NULL, NULL),
(2899, 323, 'Nowpara', 'নওপাড়া', 'nowparaup.shariatpur.gov.bd', NULL, NULL),
(2900, 323, 'Moktererchar', 'মোত্তারেরচর', 'mokterercharup.shariatpur.gov.bd', NULL, NULL),
(2901, 323, 'Charatra', 'চরআত্রা', 'charatraup.shariatpur.gov.bd', NULL, NULL),
(2902, 323, 'Rajnagar', 'রাজনগর', 'rajnagarup.shariatpur.gov.bd', NULL, NULL),
(2903, 323, 'Japsa', 'জপসা', 'japsaup.shariatpur.gov.bd', NULL, NULL),
(2904, 323, 'Vojeshwar', 'ভোজেশ্বর', 'vojeshwarup.shariatpur.gov.bd', NULL, NULL),
(2905, 323, 'Fategongpur', 'ফতেজংপুর', 'fategongpurup.shariatpur.gov.bd', NULL, NULL),
(2906, 323, 'Bijari', 'বিঝারি', 'bijariup.shariatpur.gov.bd', NULL, NULL),
(2907, 323, 'Vumkhara', 'ভূমখাড়া', 'vumkharaup.shariatpur.gov.bd', NULL, NULL),
(2908, 323, 'Nashason', 'নশাসন', 'nashasonup.shariatpur.gov.bd', NULL, NULL),
(2909, 324, 'Zajira Sadar', 'জাজিরা সদর', 'zajirasadarup.shariatpur.gov.bd', NULL, NULL),
(2910, 324, 'Mulna', 'মূলনা', 'mulnaup.shariatpur.gov.bd', NULL, NULL),
(2911, 324, 'Barokandi', 'বড়কান্দি', 'barokandiup.shariatpur.gov.bd', NULL, NULL),
(2912, 324, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.shariatpur.gov.bd', NULL, NULL),
(2913, 324, 'Kundarchar', 'কুন্ডেরচর', 'kundarcharup.shariatpur.gov.bd', NULL, NULL),
(2914, 324, 'Palerchar', 'পালেরচর', 'palercharup.shariatpur.gov.bd', NULL, NULL),
(2915, 324, 'Purba Nawdoba', 'পুর্ব নাওডোবা', 'purbanawdobaup.shariatpur.gov.bd', NULL, NULL),
(2916, 324, 'Nawdoba', 'নাওডোবা', 'nawdobaup.shariatpur.gov.bd', NULL, NULL),
(2917, 324, 'Shenerchar', 'সেনেরচর', 'shenercharup.shariatpur.gov.bd', NULL, NULL),
(2918, 324, 'Bknagar', 'বি. কে. নগর', 'bknagarup.shariatpur.gov.bd', NULL, NULL),
(2919, 324, 'Barogopalpur', 'বড়গোপালপুর', 'barogopalpurup.shariatpur.gov.bd', NULL, NULL),
(2920, 324, 'Jaynagor', 'জয়নগর', 'jaynagorup.shariatpur.gov.bd', NULL, NULL),
(2921, 325, 'Nager Para', 'নাগের পাড়া', 'nagerparaup.shariatpur.gov.bd', NULL, NULL),
(2922, 325, 'Alaolpur', 'আলাওলপুর', 'alaolpurup.shariatpur.gov.bd', NULL, NULL),
(2923, 325, 'Kodalpur', 'কোদালপুর', 'kodalpurup.shariatpur.gov.bd', NULL, NULL),
(2924, 325, 'Goshairhat', 'গোসাইরহাট', 'goshairhatup.shariatpur.gov.bd', NULL, NULL),
(2925, 325, 'Edilpur', 'ইদিলপুর', 'edilpurup.shariatpur.gov.bd', NULL, NULL),
(2926, 325, 'Nalmuri', 'নলমুড়ি', 'nalmuriup.shariatpur.gov.bd', NULL, NULL),
(2927, 325, 'Samontasar', 'সামন্তসার', 'samontasarup.shariatpur.gov.bd', NULL, NULL),
(2928, 325, 'Kuchipatti', 'কুচাইপট্টি', 'kuchipattiup.shariatpur.gov.bd', NULL, NULL),
(2929, 326, 'Ramvadrapur', 'রামভদ্রপুর', 'ramvadrapurup.shariatpur.gov.bd', NULL, NULL),
(2930, 326, 'Mahisar', 'মহিষার', 'mahisarup.shariatpur.gov.bd', NULL, NULL),
(2931, 326, 'Saygaon', 'ছয়গাঁও', 'saygaonup.shariatpur.gov.bd', NULL, NULL),
(2932, 326, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.shariatpur.gov.bd', NULL, NULL),
(2933, 326, 'D.M Khali', 'ডি.এম খালি', 'dmkhaliup.shariatpur.gov.bd', NULL, NULL),
(2934, 326, 'Charkumaria', 'চরকুমারিয়া', 'charkumariaup.shariatpur.gov.bd', NULL, NULL),
(2935, 326, 'Sakhipur', 'সখিপুর', 'sakhipurup.shariatpur.gov.bd', NULL, NULL),
(2936, 326, 'Kachikata', 'কাচিকাঁটা', 'kachikataup.shariatpur.gov.bd', NULL, NULL),
(2937, 326, 'North Tarabunia', 'উত্তর তারাবুনিয়া', 'northtarabuniaup.shariatpur.gov.bd', NULL, NULL),
(2938, 326, 'Charvaga', 'চরভাগা', 'charvagaup.shariatpur.gov.bd', NULL, NULL),
(2939, 326, 'Arsinagar', 'আরশিনগর', 'arsinagarup.shariatpur.gov.bd', NULL, NULL),
(2940, 326, 'South Tarabunia', 'দক্ষিন তারাবুনিয়া', 'southtarabuniaup.shariatpur.gov.bd', NULL, NULL),
(2941, 326, 'Charsensas', 'চরসেনসাস', 'charsensasup.shariatpur.gov.bd', NULL, NULL),
(2942, 327, 'Shidulkura', 'শিধলকুড়া', 'shidulkuraup.shariatpur.gov.bd', NULL, NULL),
(2943, 327, 'Kaneshar', 'কনেস্বর', 'kanesharup.shariatpur.gov.bd', NULL, NULL),
(2944, 327, 'Purba Damudya', 'পুর্ব ডামুড্যা', 'purbadamudyaup.shariatpur.gov.bd', NULL, NULL),
(2945, 327, 'Islampur', 'ইসলামপুর', 'islampurup.shariatpur.gov.bd', NULL, NULL),
(2946, 327, 'Dankati', 'ধানকাটি', 'dankatiup.shariatpur.gov.bd', NULL, NULL),
(2947, 327, 'Sidya', 'সিড্যা', 'sidyaup.shariatpur.gov.bd', NULL, NULL),
(2948, 327, 'Darulaman', 'দারুল আমান', 'darulamanup.shariatpur.gov.bd', NULL, NULL),
(2949, 328, 'Satgram', 'সাতগ্রাম', 'satgramup.narayanganj.gov.bd', NULL, NULL),
(2950, 328, 'Duptara', 'দুপ্তারা', 'duptaraup.narayanganj.gov.bd', NULL, NULL),
(2951, 328, 'Brahammandi', 'ব্রা‏হ্মন্দী', 'brahammandiup.narayanganj.gov.bd', NULL, NULL),
(2952, 328, 'Fatepur', 'ফতেপুর', 'fatepurup.narayanganj.gov.bd', NULL, NULL),
(2953, 328, 'Bishnandi', 'বিশনন্দী', 'bishnandiup.narayanganj.gov.bd', NULL, NULL),
(2954, 328, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.narayanganj.gov.bd', NULL, NULL),
(2955, 328, 'Highjadi', 'হাইজাদী', 'highjadiup.narayanganj.gov.bd', NULL, NULL),
(2956, 328, 'Uchitpura', 'উচিৎপুরা', 'uchitpuraup.narayanganj.gov.bd', NULL, NULL),
(2957, 328, 'Kalapaharia', 'কালাপাহাড়িয়া', 'kalapahariaup.narayanganj.gov.bd', NULL, NULL),
(2958, 328, 'Kagkanda', 'খাগকান্দা', 'kagkandaUP.narayanganj.gov.bd', NULL, NULL),
(2959, 329, 'Musapur', 'মুছাপুর', 'musapurup.narayanganj.gov.bd', NULL, NULL),
(2960, 329, 'Modonpur', 'মদনপুর', 'modonpurup.narayanganj.gov.bd', NULL, NULL),
(2961, 329, 'Bandar', 'বন্দর', 'bandarup.narayanganj.gov.bd', NULL, NULL),
(2962, 329, 'Dhamgar', 'ধামগর', 'dhamgar.narayanganj.gov.bd', NULL, NULL),
(2963, 329, 'Kolagathia', ' কলাগাছিয়া', 'kolagathiaup.narayanganj.gov.bd', NULL, NULL),
(2964, 330, 'Alirtek', 'আলিরটেক', 'alirtekup.narayanganj.gov.bd', NULL, NULL),
(2965, 330, 'Kashipur', 'কাশীপুর', 'kashipurup.narayanganj.gov.bd', NULL, NULL),
(2966, 330, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.narayanganj.gov.bd', NULL, NULL),
(2967, 330, 'Gognagar', 'গোগনগর', 'gognagarup.narayanganj.gov.bd', NULL, NULL),
(2968, 330, 'Baktaboli', 'বক্তাবলী', 'baktaboliup.narayanganj.gov.bd', NULL, NULL),
(2969, 330, 'Enayetnagor', 'এনায়েত নগর', 'enayetnagorup.narayanganj.gov.bd', NULL, NULL),
(2970, 331, 'Murapara', 'মুড়াপাড়া', 'muraparaup.narayanganj.gov.bd', NULL, NULL),
(2971, 331, 'Bhulta', 'ভূলতা', 'bhultaup.narayanganj.gov.bd', NULL, NULL),
(2972, 331, 'Golakandail', 'গোলাকান্দাইল', 'golakandailup.narayanganj.gov.bd', NULL, NULL),
(2973, 331, 'Daudpur', 'দাউদপুর', 'daudpurup.narayanganj.gov.bd', NULL, NULL),
(2974, 331, 'Rupganj', 'রূপগঞ্জ', 'rupganjup.narayanganj.gov.bd', NULL, NULL),
(2975, 331, 'Kayetpara', 'কায়েতপাড়া', 'kayetparaup.narayanganj.gov.bd', NULL, NULL),
(2976, 331, 'Bholobo', 'ভোলাব', 'bholoboup.narayanganj.gov.bd', NULL, NULL),
(2977, 332, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.narayanganj.gov.bd', NULL, NULL),
(2978, 332, 'Shambhupura', 'শম্ভুপুরা', 'shambhupura.narayanganj.gov.bd', NULL, NULL),
(2979, 332, 'Mograpara', 'মোগরাপাড়া', 'mograpara.narayanganj.gov.bd', NULL, NULL),
(2980, 332, 'Baidyerbazar', 'বৈদ্যেরবাজার', 'baidyerbazar.narayanganj.gov.bd', NULL, NULL),
(2981, 332, 'Baradi', 'বারদী', 'baradiup.narayanganj.gov.bd', NULL, NULL),
(2982, 332, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.narayanganj.gov.bd', NULL, NULL),
(2983, 332, 'Jampur', 'জামপুর', 'jampurup.narayanganj.gov.bd', NULL, NULL),
(2984, 332, 'Sadipur', 'সাদীপুর', 'sadipurup.narayanganj.gov.bd', NULL, NULL),
(2985, 332, 'Sonmandi', 'সনমান্দি', 'sonmandiup.narayanganj.gov.bd', NULL, NULL),
(2986, 332, 'Kanchpur', 'কাচপুর', 'kanchpurup.narayanganj.gov.bd', NULL, NULL),
(2987, 333, 'Basail', 'বাসাইল', 'basailup.tangail.gov.bd', NULL, NULL),
(2988, 333, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.tangail.gov.bd', NULL, NULL),
(2989, 333, 'Habla', 'হাবলা', 'hablaup.tangail.gov.bd', NULL, NULL),
(2990, 333, 'Kashil', 'কাশিল', 'kashilup.tangail.gov.bd', NULL, NULL),
(2991, 333, 'Fulki', 'ফুলকি', 'fulkiup.tangail.gov.bd', NULL, NULL),
(2992, 333, 'Kauljani', 'কাউলজানী', 'kauljaniup.tangail.gov.bd', NULL, NULL),
(2993, 334, 'Arjuna', 'অর্জুনা', 'arjunaup.tangail.gov.bd', NULL, NULL),
(2994, 334, 'Gabshara', 'গাবসারা', 'gabsharaup.tangail.gov.bd', NULL, NULL),
(2995, 334, 'Falda', 'ফলদা', 'faldaup.tangail.gov.bd', NULL, NULL),
(2996, 334, 'Gobindashi', 'গোবিন্দাসী', 'gobindashiup.tangail.gov.bd', NULL, NULL),
(2997, 334, 'Aloa', 'আলোয়া', 'aloaup.tangail.gov.bd', NULL, NULL),
(2998, 334, 'Nikrail', 'নিকরাইল', 'nikrailup.tangail.gov.bd', NULL, NULL),
(2999, 335, 'Deuli', 'দেউলী', 'deuliup.tangail.gov.bd', NULL, NULL),
(3000, 335, 'Lauhati', 'লাউহাটি', 'lauhatiup.tangail.gov.bd', NULL, NULL),
(3001, 335, 'Patharail', 'পাথরাইল', 'patharailup.tangail.gov.bd', NULL, NULL),
(3002, 335, 'Delduar', 'দেলদুয়ার', 'delduarup.tangail.gov.bd', NULL, NULL),
(3003, 335, 'Fazilhati', 'ফাজিলহাটি', 'fazilhatiup.tangail.gov.bd', NULL, NULL),
(3004, 335, 'Elasin', 'এলাসিন', 'elasinup.tangail.gov.bd', NULL, NULL),
(3005, 335, 'Atia', 'আটিয়া', 'atiaup.tangail.gov.bd', NULL, NULL),
(3006, 335, 'Dubail', 'ডুবাইল', 'dubailup.tangail.gov.bd', NULL, NULL),
(3007, 336, 'Deulabari', 'দেউলাবাড়ী', 'deulabariup.tangail.gov.bd', NULL, NULL),
(3008, 336, 'Ghatail', 'ঘাটাইল', 'ghatailup.tangail.gov.bd', NULL, NULL),
(3009, 336, 'Jamuria', 'জামুরিয়া', 'jamuriaup.tangail.gov.bd', NULL, NULL),
(3010, 336, 'Lokerpara', 'লোকেরপাড়া', 'lokerparaup.tangail.gov.bd', NULL, NULL),
(3011, 336, 'Anehola', 'আনেহলা', 'aneholaup.tangail.gov.bd', NULL, NULL),
(3012, 336, 'Dighalkandia', 'দিঘলকান্দি', 'dighalkandiaup.tangail.gov.bd', NULL, NULL),
(3013, 336, 'Digar', 'দিগড়', 'digarup.tangail.gov.bd', NULL, NULL),
(3014, 336, 'Deopara', 'দেওপাড়া', 'deoparaup.tangail.gov.bd', NULL, NULL),
(3015, 336, 'Sandhanpur', 'সন্ধানপুর', 'sandhanpurup.tangail.gov.bd', NULL, NULL),
(3016, 336, 'Rasulpur', 'রসুলপুর', 'rasulpurup.tangail.gov.bd', NULL, NULL),
(3017, 336, 'Dhalapara', 'ধলাপাড়া', 'dhalaparaup.tangail.gov.bd', NULL, NULL),
(3018, 337, 'Hadera', 'হাদিরা', 'haderaup.tangail.gov.bd', NULL, NULL),
(3019, 337, 'Jhawail', 'ঝাওয়াইল', 'jhawailup.tangail.gov.bd', NULL, NULL),
(3020, 337, 'Nagdashimla', 'নগদাশিমলা', 'nagdashimlaup.tangail.gov.bd', NULL, NULL),
(3021, 337, 'Dhopakandi', 'ধোপাকান্দি', 'dhopakandiup.tangail.gov.bd', NULL, NULL),
(3022, 337, 'Alamnagor', 'আলমনগর', 'alamnagorup.tangail.gov.bd', NULL, NULL),
(3023, 337, 'Hemnagor', 'হেমনগর', 'hemnagorup.tangail.gov.bd', NULL, NULL),
(3024, 337, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.tangail.gov.bd', NULL, NULL),
(3025, 338, 'Alokdia', 'আলোকদিয়া', 'alokdiaup.tangail.gov.bd', NULL, NULL),
(3026, 338, 'Aushnara', 'আউশনারা', 'aushnaraup.tangail.gov.bd', NULL, NULL),
(3027, 338, 'Aronkhola', 'অরণখোলা', 'aronkholaup.tangail.gov.bd', NULL, NULL),
(3028, 338, 'Sholakuri', 'শোলাকুড়ি', 'sholakuriup.tangail.gov.bd', NULL, NULL),
(3029, 338, 'Golabari', 'গোলাবাড়ী', 'golabariup.tangail.gov.bd', NULL, NULL),
(3030, 338, 'Mirjabari', 'মির্জাবাড়ী', 'mirjabariup.tangail.gov.bd', NULL, NULL),
(3031, 339, 'Mahera', 'মহেড়া', 'maheraup.tangail.gov.bd', NULL, NULL),
(3032, 339, 'Jamurki', 'জামুর্কী', 'jamurkiup.tangail.gov.bd', NULL, NULL),
(3033, 339, 'Fatepur', 'ফতেপুর', 'fatepurup.tangail.gov.bd', NULL, NULL),
(3034, 339, 'Banail', 'বানাইল', 'banailup.tangail.gov.bd', NULL, NULL),
(3035, 339, 'Anaitara', 'আনাইতারা', 'anaitaraup.tangail.gov.bd', NULL, NULL),
(3036, 339, 'Warshi', 'ওয়ার্শী', 'warshiup.tangail.gov.bd', NULL, NULL),
(3037, 339, 'Bhatram', 'ভাতগ্রাম', 'bhatramup.tangail.gov.bd', NULL, NULL),
(3038, 339, 'Bahuria', 'বহুরিয়া', 'bahuriaup.tangail.gov.bd', NULL, NULL),
(3039, 339, 'Gorai', 'গোড়াই', 'goraiup.tangail.gov.bd', NULL, NULL),
(3040, 339, 'Ajgana', 'আজগানা', 'ajganaup.tangail.gov.bd', NULL, NULL),
(3041, 339, 'Tarafpur', 'তরফপুর', 'tarafpurup.tangail.gov.bd', NULL, NULL),
(3042, 339, 'Bastail', 'বাঁশতৈল', 'bastailup.tangail.gov.bd', NULL, NULL),
(3043, 339, 'Baora', 'ভাওড়া', 'baoraup.tangail.gov.bd', NULL, NULL),
(3044, 339, 'Latifpur', 'লতিফপুর', 'latifpurup.tangail.gov.bd', NULL, NULL),
(3045, 340, 'Bharra', 'ভারড়া', 'bharraup.tangail.gov.bd', NULL, NULL),
(3046, 340, 'Sahabathpur', 'সহবতপুর', 'sahabathpurup.tangail.gov.bd', NULL, NULL),
(3047, 340, 'Goyhata', 'গয়হাটা', 'goyhataup.tangail.gov.bd', NULL, NULL),
(3048, 340, 'Solimabad', 'সলিমাবাদ', 'solimabadup.tangail.gov.bd', NULL, NULL),
(3049, 340, 'Nagorpur', 'নাগরপুর', 'nagorpurup.tangail.gov.bd', NULL, NULL),
(3050, 340, 'Mamudnagor', 'মামুদনগর', 'mamudnagorup.tangail.gov.bd', NULL, NULL),
(3051, 340, 'Mokna', 'মোকনা', 'moknaup.tangail.gov.bd', NULL, NULL),
(3052, 340, 'Pakutia', 'পাকুটিয়া', 'pakutiaup.tangail.gov.bd', NULL, NULL),
(3053, 340, 'Bekrah Atgram', 'বেকরা আটগ্রাম', 'bekrahatgramup.tangail.gov.bd', NULL, NULL),
(3054, 340, 'Dhuburia', 'ধুবড়িয়া', 'dhuburiaup.tangail.gov.bd', NULL, NULL),
(3055, 340, 'Bhadra', 'ভাদ্রা', 'bhadraup.tangail.gov.bd', NULL, NULL),
(3056, 340, 'Doptior', 'দপ্তিয়র', 'doptiorup.tangail.gov.bd', NULL, NULL),
(3057, 341, 'Kakrajan', 'কাকড়াজান', 'kakrajanup.tangail.gov.bd', NULL, NULL),
(3058, 341, 'Gajaria', 'গজারিয়া', 'gajariaup.tangail.gov.bd', NULL, NULL),
(3059, 341, 'Jaduppur', 'যাদবপুর', 'jaduppurup.tangail.gov.bd', NULL, NULL),
(3060, 341, 'Hatibandha', 'হাতীবান্ধা', 'hatibandhaup.tangail.gov.bd', NULL, NULL),
(3061, 341, 'Kalia', 'কালিয়া', 'kaliaup.tangail.gov.bd', NULL, NULL),
(3062, 341, 'Dariapur', 'দরিয়াপুর', 'dariapurup.tangail.gov.bd', NULL, NULL),
(3063, 341, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.tangail.gov.bd', NULL, NULL),
(3064, 341, 'Baharatoil', 'বহেড়াতৈল', 'baharatoilup.tangail.gov.bd', NULL, NULL),
(3065, 342, 'Mogra', 'মগড়া', 'mograup.tangail.gov.bd', NULL, NULL),
(3066, 342, 'Gala', 'গালা', 'galaup.tangail.gov.bd', NULL, NULL),
(3067, 342, 'Gharinda', 'ঘারিন্দা', 'gharindaup.tangail.gov.bd', NULL, NULL),
(3068, 342, 'Karatia', 'করটিয়া', 'karatiaup.tangail.gov.bd', NULL, NULL),
(3069, 342, 'Silimpur', 'ছিলিমপুর', 'silimpurup.tangail.gov.bd', NULL, NULL),
(3070, 342, 'Porabari', 'পোড়াবাড়ী', 'porabariup.tangail.gov.bd', NULL, NULL),
(3071, 342, 'Dyenna', 'দাইন্যা', 'dyennaup.tangail.gov.bd', NULL, NULL),
(3072, 342, 'Baghil', 'বাঘিল', 'baghilup.tangail.gov.bd', NULL, NULL),
(3073, 342, 'Kakua', 'কাকুয়া', 'kakuaup.tangail.gov.bd', NULL, NULL),
(3074, 342, 'Hugra', 'হুগড়া', 'hugraup.tangail.gov.bd', NULL, NULL),
(3075, 342, 'Katuli', 'কাতুলী', 'katuliup.tangail.gov.bd', NULL, NULL),
(3076, 342, 'Mahamudnagar', 'মাহমুদনগর', 'mahamudnagarup.tangail.gov.bd', NULL, NULL),
(3077, 343, 'Durgapur', 'দুর্গাপুর', 'durgapurup.tangail.gov.bd', NULL, NULL),
(3078, 343, 'Birbashinda', 'বীরবাসিন্দা', 'birbashindaup.tangail.gov.bd', NULL, NULL),
(3079, 343, 'Narandia', 'নারান্দিয়া', 'narandiaup.tangail.gov.bd', NULL, NULL),
(3080, 343, 'Shahadebpur', 'সহদেবপুর', 'shahadebpurup.tangail.gov.bd', NULL, NULL),
(3081, 343, 'Kokdahara', 'কোকডহরা', 'kokdaharaup.tangail.gov.bd', NULL, NULL),
(3082, 343, 'Balla', 'বল্লা', 'ballaup.tangail.gov.bd', NULL, NULL),
(3083, 343, 'Salla', 'সল্লা', 'sallaup.tangail.gov.bd', NULL, NULL),
(3084, 343, 'Nagbari', 'নাগবাড়ী', 'nagbariup.tangail.gov.bd', NULL, NULL),
(3085, 343, 'Bangra', 'বাংড়া', 'bangraup.tangail.gov.bd', NULL, NULL),
(3086, 343, 'Paikora', 'পাইকড়া', 'paikoraup.tangail.gov.bd', NULL, NULL),
(3087, 343, 'Dashokia', 'দশকিয়া', 'dashokiaup.tangail.gov.bd', NULL, NULL),
(3088, 343, 'Parkhi', 'পারখী', 'parkhiup.tangail.gov.bd', NULL, NULL),
(3089, 343, 'Gohaliabari', 'গোহালিয়াবাড়ী', 'gohaliabariup.tangail.gov.bd', NULL, NULL),
(3090, 344, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.tangail.gov.bd', NULL, NULL),
(3091, 344, 'Paiska', 'পাইস্কা', 'paiskaup.tangail.gov.bd', NULL, NULL),
(3092, 344, 'Mushuddi', 'মুশুদ্দি', 'mushuddiup.tangail.gov.bd', NULL, NULL),
(3093, 344, 'Bolibodrow', 'বলিভদ্র', 'bolibodrowup.tangail.gov.bd', NULL, NULL),
(3094, 344, 'Birtara', 'বীরতারা', 'birtaraup.tangail.gov.bd', NULL, NULL),
(3095, 344, 'Baniajan', 'বানিয়াজান', 'baniajanup.tangail.gov.bd', NULL, NULL),
(3096, 344, 'Jadunathpur', 'যদুনাথপুর', 'jadunathpurup.tangail.gov.bd', NULL, NULL),
(3097, 345, 'Chawganga', 'চৌগাংগা', 'chawgangaup.kishoreganj.gov.bd      ', NULL, NULL),
(3098, 345, 'Joysiddi', 'জয়সিদ্ধি', 'joysiddiup.kishoreganj.gov.bd', NULL, NULL),
(3099, 345, 'Alonjori', 'এলংজুরী', 'alonjoriup.kishoreganj.gov.bd', NULL, NULL),
(3100, 345, 'Badla', 'বাদলা', 'badlaup.kishoreganj.gov.bd', NULL, NULL),
(3101, 345, 'Boribari', 'বড়িবাড়ি', 'boribariup.kishoreganj.gov.bd', NULL, NULL),
(3102, 345, 'Itna', 'ইটনা', 'itnaup.kishoreganj.gov.bd', NULL, NULL),
(3103, 345, 'Mriga', 'মৃগা', 'mrigaup.kishoreganj.gov.bd', NULL, NULL),
(3104, 345, 'Dhonpur', 'ধনপুর', 'dhonpurup.kishoreganj.gov.bd', NULL, NULL),
(3105, 345, 'Raytoti', 'রায়টুটি', 'raytotiup.kishoreganj.gov.bd', NULL, NULL),
(3106, 346, 'Banagram', 'বনগ্রাম', 'banagramup.kishoreganj.gov.bd', NULL, NULL),
(3107, 346, 'Shahasram Dhuldia', 'সহশ্রাম ধুলদিয়া', 'shahasramdhuldiaup.kishoreganj.gov.bd', NULL, NULL),
(3108, 346, 'Kargaon', 'কারগাঁও', 'kargaonup.kishoreganj.gov.bd', NULL, NULL),
(3109, 346, 'Chandpur', 'চান্দপুর', 'chandpurup.kishoreganj.gov.bd', NULL, NULL),
(3110, 346, 'Mumurdia', 'মুমুরদিয়া', 'mumurdiaup.kishoreganj.gov.bd', NULL, NULL),
(3111, 346, 'Acmita', 'আচমিতা', 'acmitaup.kishoreganj.gov.bd', NULL, NULL),
(3112, 346, 'Mosua', 'মসূয়া', 'mosuaup.kishoreganj.gov.bd', NULL, NULL),
(3113, 346, 'Lohajuree', 'লোহাজুরী', 'lohajureeup.kishoreganj.gov.bd', NULL, NULL),
(3114, 346, 'Jalalpur', 'জালালপুর', 'jalalpurup.kishoreganj.gov.bd', NULL, NULL),
(3115, 347, 'Sadekpur', 'সাদেকপুর', 'sadekpurup.kishoreganj.gov.bd', NULL, NULL),
(3116, 347, 'Aganagar', 'আগানগর', 'aganagarup.kishoreganj.gov.bd', NULL, NULL),
(3117, 347, 'Shimulkandi', 'শিমুলকান্দি', 'shimulkandiup.kishoreganj.gov.bd', NULL, NULL),
(3118, 347, 'Gajaria', 'গজারিয়া', 'gajariaup.kishoreganj.gov.bd', NULL, NULL),
(3119, 347, 'Kalika Prashad', 'কালিকা প্রসাদ', 'kalikaprashadup.kishoreganj.gov.bd', NULL, NULL),
(3120, 347, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.kishoreganj.gov.bd', NULL, NULL),
(3121, 347, 'Shibpur', 'শিবপুর', 'shibpurup.kishoreganj.gov.bd', NULL, NULL),
(3122, 348, 'Taljanga', 'তালজাঙ্গা', 'taljangaup.kishoreganj.gov.bd', NULL, NULL),
(3123, 348, 'Rauti', 'রাউতি', 'rautiup.kishoreganj.gov.bd', NULL, NULL),
(3124, 348, 'Dhola', 'ধলা', 'dholaup.kishoreganj.gov.bd', NULL, NULL),
(3125, 348, 'Jawar', 'জাওয়ার', 'jawarup.kishoreganj.gov.bd', NULL, NULL),
(3126, 348, 'Damiha', 'দামিহা', 'damihaup.kishoreganj.gov.bd', NULL, NULL),
(3127, 348, 'Digdair', 'দিগদাইর', 'digdairup.kishoreganj.gov.bd', NULL, NULL),
(3128, 348, 'Tarail-Sachail', 'তাড়াইল-সাচাইল', 'tarailsachailup.kishoreganj.gov.bd', NULL, NULL),
(3129, 349, 'Jinari', 'জিনারী', 'jinariup.kishoreganj.gov.bd', NULL, NULL),
(3130, 349, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.kishoreganj.gov.bd', NULL, NULL),
(3131, 349, 'Sidhla', 'সিদলা', 'sidhlaup.kishoreganj.gov.bd', NULL, NULL),
(3132, 349, 'Araibaria', 'আড়াইবাড়িয়া', 'araibariaup.kishoreganj.gov.bd', NULL, NULL),
(3133, 349, 'Sahedal', 'সাহেদল', 'sahedalup.kishoreganj.gov.bd', NULL, NULL),
(3134, 349, 'Pumdi', 'পুমদি', 'pumdiup.kishoreganj.gov.bd', NULL, NULL),
(3135, 350, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.kishoreganj.gov.bd', NULL, NULL),
(3136, 350, 'Hosendi', 'হোসেনদি', 'hosendiup.kishoreganj.gov.bd', NULL, NULL),
(3137, 350, 'Narandi', 'নারান্দি', 'narandiup.kishoreganj.gov.bd', NULL, NULL),
(3138, 350, 'Shukhia', 'সুখিয়া', 'shukhiaup.kishoreganj.gov.bd', NULL, NULL),
(3139, 350, 'Patuavabga', 'পটুয়াভাঙ্গা', 'patuavabgaup.kishoreganj.gov.bd', NULL, NULL),
(3140, 350, 'Chandipasha', 'চান্দিপাশা', 'chandipashaup.kishoreganj.gov.bd', NULL, NULL),
(3141, 350, 'Charfaradi', 'চারফারাদি', 'charfaradiup.kishoreganj.gov.bd', NULL, NULL),
(3142, 350, 'Burudia', 'বুড়ুদিয়া', 'burudiaup.kishoreganj.gov.bd', NULL, NULL),
(3143, 350, 'Egarasindur', 'ইজারাসিন্দুর', 'egarasindurup.kishoreganj.gov.bd', NULL, NULL),
(3144, 350, 'Pakundia', 'পাকন্দিয়া', 'pakundiaup.kishoreganj.gov.bd', NULL, NULL),
(3145, 351, 'Ramdi', 'রামদী', 'ramdiup.kishoreganj.gov.bd', NULL, NULL),
(3146, 351, 'Osmanpur', 'উছমানপুর', 'osmanpurup.kishoreganj.gov.bd', NULL, NULL),
(3147, 351, 'Chhaysuti', 'ছয়সূতী', 'chhaysutiup.kishoreganj.gov.bd', NULL, NULL),
(3148, 351, 'Salua', 'সালুয়া', 'saluaup.kishoreganj.gov.bd', NULL, NULL),
(3149, 351, 'Gobaria Abdullahpur', 'গোবরিয়া আব্দুল্লাহপুর', 'gobariaabdullahpurup.kishoreganj.gov.bd', NULL, NULL),
(3150, 351, 'Faridpur', 'ফরিদপুর', 'faridpurup.kishoreganj.gov.bd', NULL, NULL),
(3151, 352, 'Rashidabad', 'রশিদাবাদ', 'rashidabadup.kishoreganj.gov.bd', NULL, NULL),
(3152, 352, 'Latibabad', 'লতিবাবাদ', 'latibabadup.kishoreganj.gov.bd', NULL, NULL),
(3153, 352, 'Maizkhapan', 'মাইজখাপন', 'maizkhapanup.kishoreganj.gov.bd', NULL, NULL),
(3154, 352, 'Mohinanda', 'মহিনন্দ', 'mohinandaup.kishoreganj.gov.bd', NULL, NULL),
(3155, 352, 'Joshodal', 'যশোদল', 'joshodalup.kishoreganj.gov.bd', NULL, NULL),
(3156, 352, 'Bowlai', 'বৌলাই', 'bowlaiup.kishoreganj.gov.bd', NULL, NULL),
(3157, 352, 'Binnati', 'বিন্নাটি', 'binnatiup.kishoreganj.gov.bd', NULL, NULL),
(3158, 352, 'Maria', 'মারিয়া', 'mariaup.kishoreganj.gov.bd', NULL, NULL),
(3159, 352, 'Chowddoshata', 'চৌদ্দশত', 'chowddoshataup.kishoreganj.gov.bd', NULL, NULL),
(3160, 352, 'Karshakarial', 'কর্শাকড়িয়াইল', 'karshakarialup.kishoreganj.gov.bd', NULL, NULL),
(3161, 352, 'Danapatuli', 'দানাপাটুলী', 'danapatuliup.kishoreganj.gov.bd', NULL, NULL),
(3162, 353, 'Kadirjangal', 'কাদিরজঙ্গল', 'kadirjangalup.kishoreganj.gov.bd', NULL, NULL),
(3163, 353, 'Gujadia', 'গুজাদিয়া', 'gujadiaup.kishoreganj.gov.bd', NULL, NULL),
(3164, 353, 'Kiraton', 'কিরাটন', 'kiratonup.kishoreganj.gov.bd', NULL, NULL),
(3165, 353, 'Barogharia', 'বারঘড়িয়া', 'baroghariaup.kishoreganj.gov.bd', NULL, NULL),
(3166, 353, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.kishoreganj.gov.bd', NULL, NULL),
(3167, 353, 'Dehunda', 'দেহুন্দা', 'dehundaup.kishoreganj.gov.bd', NULL, NULL),
(3168, 353, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.kishoreganj.gov.bd', NULL, NULL),
(3169, 353, 'Gunodhar', 'গুনধর', 'gunodharup.kishoreganj.gov.bd', NULL, NULL),
(3170, 353, 'Joyka', 'জয়কা', 'joykaup.kishoreganj.gov.bd', NULL, NULL),
(3171, 353, 'Zafrabad', 'জাফরাবাদ', 'zafrabadup.kishoreganj.gov.bd', NULL, NULL),
(3172, 353, 'Noabad', 'নোয়াবাদ', 'noabadup.kishoreganj.gov.bd', NULL, NULL),
(3173, 354, 'Kailag', 'কৈলাগ', 'kailagup.kishoreganj.gov.bd', NULL, NULL),
(3174, 354, 'Pirijpur', 'পিরিজপুর', 'pirijpurup.kishoreganj.gov.bd', NULL, NULL),
(3175, 354, 'Gazirchar', 'গাজীরচর', 'gazircharup.kishoreganj.gov.bd', NULL, NULL),
(3176, 354, 'Hilochia', 'হিলচিয়া', 'hilochiaup.kishoreganj.gov.bd', NULL, NULL),
(3177, 354, 'Maijchar9', 'মাইজচর', 'maijchar9up.kishoreganj.gov.bd', NULL, NULL),
(3178, 354, 'Homypur', 'হুমাইপর', 'homypurup.kishoreganj.gov.bd', NULL, NULL),
(3179, 354, 'Halimpur', 'হালিমপুর', 'halimpurup.kishoreganj.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(3180, 354, 'Sararchar', 'সরারচর', 'sararcharup.kishoreganj.gov.bd', NULL, NULL),
(3181, 354, 'Dilalpur', 'দিলালপুর', 'dilalpurup.kishoreganj.gov.bd', NULL, NULL),
(3182, 354, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.kishoreganj.gov.bd', NULL, NULL),
(3183, 354, 'Boliardi', 'বলিয়ার্দী', 'boliardiup.kishoreganj.gov.bd', NULL, NULL),
(3184, 355, 'Dewghar', 'দেওঘর', 'dewgharup.kishoreganj.gov.bd', NULL, NULL),
(3185, 355, 'Kastul', 'কাস্তুল', 'kastulup.kishoreganj.gov.bd', NULL, NULL),
(3186, 355, 'Austagram Sadar', 'অষ্টগ্রাম সদর', 'austagramsadarup.kishoreganj.gov.bd', NULL, NULL),
(3187, 355, 'Bangalpara', 'বাঙ্গালপাড়া', 'bangalparaup.kishoreganj.gov.bd', NULL, NULL),
(3188, 355, 'Kalma', 'কলমা', 'kalmaup.kishoreganj.gov.bd', NULL, NULL),
(3189, 355, 'Adampur', 'আদমপুর', 'adampurup.kishoreganj.gov.bd', NULL, NULL),
(3190, 355, 'Khyerpur-Abdullahpur', 'খয়েরপুর-আব্দুল্লাপুর', 'khyerpurabdullahpurup.kishoreganj.gov.bd', NULL, NULL),
(3191, 355, 'Purba Austagram', 'পূর্ব অষ্টগ্রাম', 'purbaaustagramup.kishoreganj.gov.bd', NULL, NULL),
(3192, 356, 'Gopdighi', 'গোপদিঘী', 'gopdighiup.kishoreganj.gov.bd', NULL, NULL),
(3193, 356, 'Mithamoin', 'মিঠামইন', 'mithamoinup.kishoreganj.gov.bd', NULL, NULL),
(3194, 356, 'Dhaki', 'ঢাকী', 'dhakiup.kishoreganj.gov.bd', NULL, NULL),
(3195, 356, 'Ghagra', 'ঘাগড়া', 'ghagraup.kishoreganj.gov.bd', NULL, NULL),
(3196, 356, 'Keoarjore', 'কেওয়ারজোর', 'keoarjoreup.kishoreganj.gov.bd', NULL, NULL),
(3197, 356, 'Katkhal', 'কাটখাল', 'katkhalup.kishoreganj.gov.bd', NULL, NULL),
(3198, 356, 'Bairati', 'বৈরাটি', 'bairatiup.kishoreganj.gov.bd', NULL, NULL),
(3199, 357, 'Chatirchar', 'ছাতিরচর', 'chatircharup.kishoreganj.gov.bd', NULL, NULL),
(3200, 357, 'Guroi', 'গুরই', 'guroiup.kishoreganj.gov.bd', NULL, NULL),
(3201, 357, 'Jaraitala', 'জারইতলা', 'jaraitalaup.kishoreganj.gov.bd', NULL, NULL),
(3202, 357, 'Nikli Sadar', 'নিকলী সদর', 'niklisadarup.kishoreganj.gov.bd', NULL, NULL),
(3203, 357, 'Karpasa', 'কারপাশা', 'karpasaup.kishoreganj.gov.bd', NULL, NULL),
(3204, 357, 'Dampara', 'দামপাড়া', 'damparaup.kishoreganj.gov.bd', NULL, NULL),
(3205, 357, 'Singpur', 'সিংপুর', 'singpurup.kishoreganj.gov.bd', NULL, NULL),
(3206, 358, 'Balla', 'বাল্লা', 'ballaup.manikganj.gov.bd', NULL, NULL),
(3207, 358, 'Gala', 'গালা', 'galaup.manikganj.gov.bd', NULL, NULL),
(3208, 358, 'Chala', 'চালা', 'chalaup.manikganj.gov.bd', NULL, NULL),
(3209, 358, 'Blara', 'বলড়া', 'blaraup.manikganj.gov.bd', NULL, NULL),
(3210, 358, 'Harukandi', 'হারুকান্দি', 'harukandiup.manikganj.gov.bd', NULL, NULL),
(3211, 358, 'Baira', 'বয়রা', 'bairaup.manikganj.gov.bd', NULL, NULL),
(3212, 358, 'Ramkrishnapur', 'রামকৃঞ্চপুর', 'ramkrishnapurup.manikganj.gov.bd', NULL, NULL),
(3213, 358, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.manikganj.gov.bd', NULL, NULL),
(3214, 358, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.manikganj.gov.bd', NULL, NULL),
(3215, 358, 'Lacharagonj', 'লেছড়াগঞ্জ', 'lacharagonjup.manikganj.gov.bd', NULL, NULL),
(3216, 358, 'Sutalorie', 'সুতালড়ী', 'sutalorieup.manikganj.gov.bd', NULL, NULL),
(3217, 358, 'Dhulsura', 'ধূলশুড়া', 'dhulsuraup.manikganj.gov.bd', NULL, NULL),
(3218, 358, 'Azimnagar', 'আজিমনগর', 'azimnagarup.manikganj.gov.bd', NULL, NULL),
(3219, 359, 'Baried', 'বরাইদ', 'bariedup.manikganj.gov.bd', NULL, NULL),
(3220, 359, 'Dighulia', 'দিঘুলিয়া', 'dighuliaup.manikganj.gov.bd', NULL, NULL),
(3221, 359, 'Baliyati', 'বালিয়াটি', 'baliyatiup.manikganj.gov.bd', NULL, NULL),
(3222, 359, 'Dargram', 'দড়গ্রাম', 'dargramup.manikganj.gov.bd', NULL, NULL),
(3223, 359, 'Tilli', 'তিল্লী', 'tilliup.manikganj.gov.bd', NULL, NULL),
(3224, 359, 'Hargaj', 'হরগজ', 'hargajup.manikganj.gov.bd', NULL, NULL),
(3225, 359, 'Saturia', 'সাটুরিয়া', 'saturiaup.manikganj.gov.bd', NULL, NULL),
(3226, 359, 'Dhankora', 'ধানকোড়া', 'dhankoraup.manikganj.gov.bd', NULL, NULL),
(3227, 359, 'Fukurhati', 'ফুকুরহাটি', 'fukurhatiup.manikganj.gov.bd', NULL, NULL),
(3228, 360, 'Betila-Mitara', 'বেতিলা-মিতরা', 'betilamitaraup.manikganj.gov.bd', NULL, NULL),
(3229, 360, 'Jagir', 'জাগীর', 'jagirup.manikganj.gov.bd', NULL, NULL),
(3230, 360, 'Atigram', 'আটিগ্রাম', 'atigramup.manikganj.gov.bd', NULL, NULL),
(3231, 360, 'Dighi', 'দিঘী', 'dighiup.manikganj.gov.bd', NULL, NULL),
(3232, 360, 'Putile', 'পুটাইল', 'putileup.manikganj.gov.bd', NULL, NULL),
(3233, 360, 'Hatipara', 'হাটিপাড়া', 'hatiparaup.manikganj.gov.bd', NULL, NULL),
(3234, 360, 'Vararia', 'ভাড়ারিয়া', 'varariaup.manikganj.gov.bd', NULL, NULL),
(3235, 360, 'Nbogram', 'নবগ্রাম', 'nbogramup.manikganj.gov.bd', NULL, NULL),
(3236, 360, 'Garpara', 'গড়পাড়া', 'garparaup.manikganj.gov.bd', NULL, NULL),
(3237, 360, 'Krishnapur', 'কৃঞ্চপুর', 'krishnapurup.manikganj.gov.bd', NULL, NULL),
(3238, 361, 'Paila', 'পয়লা', 'pailaup.manikganj.gov.bd', NULL, NULL),
(3239, 361, 'Shingzuri', 'সিংজুড়ী', 'shingzuriup.manikganj.gov.bd', NULL, NULL),
(3240, 361, 'Baliyakhora', 'বালিয়াখোড়া', 'baliyakhoraup.manikganj.gov.bd', NULL, NULL),
(3241, 361, 'Gior', 'ঘিওর', 'giorup.manikganj.gov.bd', NULL, NULL),
(3242, 361, 'Bartia', 'বড়টিয়া', 'bartiaup.manikganj.gov.bd', NULL, NULL),
(3243, 361, 'Baniazuri', 'বানিয়াজুড়ী', 'baniazuriup.manikganj.gov.bd', NULL, NULL),
(3244, 361, 'Nalee', 'নালী', 'naleeup.manikganj.gov.bd', NULL, NULL),
(3245, 362, 'Teota', 'তেওতা', 'teotaup.manikganj.gov.bd', NULL, NULL),
(3246, 362, 'Utholi', 'উথলী', 'utholiup.manikganj.gov.bd', NULL, NULL),
(3247, 362, 'Shibaloy', 'শিবালয়', 'shibaloyup.manikganj.gov.bd', NULL, NULL),
(3248, 362, 'Ulayel', 'উলাইল', 'ulayelup.manikganj.gov.bd', NULL, NULL),
(3249, 362, 'Aruoa', 'আরুয়া', 'aruoaup.manikganj.gov.bd', NULL, NULL),
(3250, 362, 'Mohadebpur', 'মহাদেবপুর', 'mohadebpurup.manikganj.gov.bd', NULL, NULL),
(3251, 362, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.manikganj.gov.bd', NULL, NULL),
(3252, 363, 'Charkataree', 'চরকাটারী', 'charkatareeup.manikganj.gov.bd', NULL, NULL),
(3253, 363, 'Bachamara', 'বাচামারা', 'bachamaraup.manikganj.gov.bd', NULL, NULL),
(3254, 363, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.manikganj.gov.bd', NULL, NULL),
(3255, 363, 'Zionpur', 'জিয়নপুর', 'zionpurup.manikganj.gov.bd', NULL, NULL),
(3256, 363, 'Khalshi', 'খলশী', 'khalshiup.manikganj.gov.bd', NULL, NULL),
(3257, 363, 'Chakmirpur', 'চকমিরপুর', 'chakmirpurup.manikganj.gov.bd', NULL, NULL),
(3258, 363, 'Klia', 'কলিয়া', 'kliaup.manikganj.gov.bd', NULL, NULL),
(3259, 363, 'Dhamswar', 'ধামশ্বর', 'dhamswarup.manikganj.gov.bd', NULL, NULL),
(3260, 364, 'Buyra', 'বায়রা', 'buyraup.manikganj.gov.bd', NULL, NULL),
(3261, 364, 'Talebpur', 'তালেবপুর', 'talebpurup.manikganj.gov.bd', NULL, NULL),
(3262, 364, 'Singiar', 'সিংগাইর', 'singiarup.manikganj.gov.bd', NULL, NULL),
(3263, 364, 'Baldhara', 'বলধারা', 'baldharaup.manikganj.gov.bd', NULL, NULL),
(3264, 364, 'Zamsha', 'জামশা', 'zamshaup.manikganj.gov.bd', NULL, NULL),
(3265, 364, 'Charigram', 'চারিগ্রাম', 'charigramup.manikganj.gov.bd', NULL, NULL),
(3266, 364, 'Shayesta', 'শায়েস্তা', 'shayestaup.manikganj.gov.bd', NULL, NULL),
(3267, 364, 'Joymonto', 'জয়মন্টপ', 'joymontopup.manikganj.gov.bd', NULL, NULL),
(3268, 364, 'Dhalla', 'ধল্লা', 'dhallaup.manikganj.gov.bd', NULL, NULL),
(3269, 364, 'Jamirta', 'জার্মিতা', 'jamirtaup.manikganj.gov.bd', NULL, NULL),
(3270, 364, 'Chandhar', 'চান্দহর', 'chandharup.manikganj.gov.bd', NULL, NULL),
(3271, 365, 'Savar', 'সাভার', 'savarup.dhaka.gov.bd', NULL, NULL),
(3272, 365, 'Birulia', 'বিরুলিয়া', 'birulia.dhaka.gov.bd', NULL, NULL),
(3273, 365, 'Dhamsona', 'ধামসোনা', 'dhamsonaup.dhaka.gov.bd', NULL, NULL),
(3274, 365, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.dhaka.gov.bd', NULL, NULL),
(3275, 365, 'Ashulia', 'আশুলিয়া', 'ashuliaup.dhaka.gov.bd', NULL, NULL),
(3276, 365, 'Yearpur', 'ইয়ারপুর', 'yearpurup.dhaka.gov.bd', NULL, NULL),
(3277, 365, 'Vakurta', 'ভাকুর্তা', 'vakurtaup.dhaka.gov.bd', NULL, NULL),
(3278, 365, 'Pathalia', 'পাথালিয়া', 'pathaliaup.dhaka.gov.bd', NULL, NULL),
(3279, 365, 'Bongaon', 'বনগাঁও', 'bongaonup.dhaka.gov.bd', NULL, NULL),
(3280, 365, 'Kaundia', 'কাউন্দিয়া', 'kaundiaup.dhaka.gov.bd', NULL, NULL),
(3281, 365, 'Tetuljhora', 'তেঁতুলঝোড়া', 'tetuljhora.dhaka.gov.bd', NULL, NULL),
(3282, 365, 'Aminbazar', 'আমিনবাজার', 'aminbazar.dhaka.gov.bd', NULL, NULL),
(3283, 366, 'Chauhat', 'চৌহাট', 'chauhatup.dhaka.gov.bd', NULL, NULL),
(3284, 366, 'Amta', 'আমতা', 'amtaup.dhaka.gov.bd', NULL, NULL),
(3285, 366, 'Balia', 'বালিয়া', 'baliaup.dhaka.gov.bd', NULL, NULL),
(3286, 366, 'Jadabpur', 'যাদবপুর', 'jadabpurup.dhaka.gov.bd', NULL, NULL),
(3287, 366, 'Baisakanda', 'বাইশাকান্দা', 'baisakandaup.dhaka.gov.bd', NULL, NULL),
(3288, 366, 'Kushura', 'কুশুরা', 'kushuraup.dhaka.gov.bd', NULL, NULL),
(3289, 366, 'Gangutia', 'গাংগুটিয়া', 'gangutiaup.dhaka.gov.bd', NULL, NULL),
(3290, 366, 'Sanora', 'সানোড়া', 'sanoraup.dhaka.gov.bd', NULL, NULL),
(3291, 366, 'Sutipara', 'সূতিপাড়া', 'sutiparaup.dhaka.gov.bd', NULL, NULL),
(3292, 366, 'Sombhag', 'সোমভাগ', 'sombhagup.dhaka.gov.bd', NULL, NULL),
(3293, 366, 'Vararia', 'ভাড়ারিয়া', 'varariaup.dhaka.gov.bd', NULL, NULL),
(3294, 366, 'Dhamrai', 'ধামরাই', 'dhamraiup.dhaka.gov.bd', NULL, NULL),
(3295, 366, 'Kulla', 'কুল্লা', 'kullaup.dhaka.gov.bd', NULL, NULL),
(3296, 366, 'Rowail', 'রোয়াইল', 'rowailup.dhaka.gov.bd', NULL, NULL),
(3297, 366, 'Suapur', 'সুয়াপুর', 'suapurup.dhaka.gov.bd', NULL, NULL),
(3298, 366, 'Nannar', 'নান্নার', 'nannarup.dhaka.gov.bd', NULL, NULL),
(3299, 367, 'Hazratpur', 'হযরতপুর', 'hazratpurup.dhaka.gov.bd', NULL, NULL),
(3300, 367, 'Kalatia', 'কলাতিয়া', 'kalatiaup.dhaka.gov.bd', NULL, NULL),
(3301, 367, 'Taranagar', 'তারানগর', 'taranagarup.dhaka.gov.bd', NULL, NULL),
(3302, 367, 'Sakta', 'শাক্তা', 'saktaup.dhaka.gov.bd', NULL, NULL),
(3303, 367, 'Ruhitpur', 'রোহিতপুর', 'ruhitpurup.dhaka.gov.bd', NULL, NULL),
(3304, 367, 'Basta', 'বাস্তা', 'bastaup.dhaka.gov.bd', NULL, NULL),
(3305, 367, 'Kalindi', 'কালিন্দি', 'kalindiup.dhaka.gov.bd', NULL, NULL),
(3306, 367, 'Zinzira', 'জিনজিরা', 'zinziraup.dhaka.gov.bd', NULL, NULL),
(3307, 367, 'Suvadda', 'শুভাঢ্যা', 'suvaddaup.dhaka.gov.bd', NULL, NULL),
(3308, 367, 'Taghoria', 'তেঘরিয়া', 'taghoriaup.dhaka.gov.bd', NULL, NULL),
(3309, 367, 'Konda', 'কোন্ডা', 'kondaup.dhaka.gov.bd', NULL, NULL),
(3310, 367, 'Aganagar', 'আগানগর', 'aganagarup.dhaka.gov.bd', NULL, NULL),
(3311, 368, 'Shikaripara', 'শিকারীপাড়া', 'shikariparaup.dhaka.gov.bd', NULL, NULL),
(3312, 368, 'Joykrishnapur', 'জয়কৃষ্ণপুর', 'joykrishnapurup.dhaka.gov.bd', NULL, NULL),
(3313, 368, 'Baruakhali', 'বারুয়াখালী', 'baruakhaliup.dhaka.gov.bd', NULL, NULL),
(3314, 368, 'Nayansree', 'নয়নশ্রী', 'nayansreeup.dhaka.gov.bd', NULL, NULL),
(3315, 368, 'Sholla', 'শোল্লা', 'shollaup.dhaka.gov.bd', NULL, NULL),
(3316, 368, 'Jantrail', 'যন্ত্রাইল', 'jantrailup.dhaka.gov.bd', NULL, NULL),
(3317, 368, 'Bandura', 'বান্দুরা', 'banduraup.dhaka.gov.bd', NULL, NULL),
(3318, 368, 'Kalakopa', 'কলাকোপা', 'kalakopaup.dhaka.gov.bd', NULL, NULL),
(3319, 368, 'Bakshanagar', 'বক্সনগর', 'bakshanagarup.dhaka.gov.bd', NULL, NULL),
(3320, 368, 'Barrah', 'বাহ্রা', 'barrahup.dhaka.gov.bd', NULL, NULL),
(3321, 368, 'Kailail', 'কৈলাইল', 'kailailup.dhaka.gov.bd', NULL, NULL),
(3322, 368, 'Agla', 'আগলা', 'aglaup.dhaka.gov.bd', NULL, NULL),
(3323, 368, 'Galimpur', 'গালিমপুর', 'galimpurup.dhaka.gov.bd', NULL, NULL),
(3324, 368, 'Churain', 'চুড়াইন', 'churainup.dhaka.gov.bd', NULL, NULL),
(3325, 369, 'Nayabari', 'নয়াবাড়ী', 'nayabariup.dhaka.gov.bd', NULL, NULL),
(3326, 369, 'Kusumhathi', 'কুসুমহাটি', 'kusumhathiup.dhaka.gov.bd', NULL, NULL),
(3327, 369, 'Raipara', 'রাইপাড়া', 'raiparaup.dhaka.gov.bd', NULL, NULL),
(3328, 369, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.dhaka.gov.bd', NULL, NULL),
(3329, 369, 'Narisha', 'নারিশা', 'narishaup.dhaka.gov.bd', NULL, NULL),
(3330, 369, 'Muksudpur', 'মুকসুদপুর', 'muksudpurup.dhaka.gov.bd', NULL, NULL),
(3331, 369, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.dhaka.gov.bd', NULL, NULL),
(3332, 369, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.dhaka.gov.bd', NULL, NULL),
(3333, 370, 'Rampal', 'রামপাল', 'rampalup.munshiganj.gov.bd', NULL, NULL),
(3334, 370, 'Panchashar', 'পঞ্চসার', 'panchasharup.munshiganj.gov.bd', NULL, NULL),
(3335, 370, 'Bajrajogini', 'বজ্রযোগিনী', 'bajrajoginiup.munshiganj.gov.bd', NULL, NULL),
(3336, 370, 'Mohakali', 'মহাকালী', 'mohakaliup.munshiganj.gov.bd', NULL, NULL),
(3337, 370, 'Charkewar', 'চরকেওয়ার', 'charkewarup.munshiganj.gov.bd', NULL, NULL),
(3338, 370, 'Mollakandi', 'মোল্লাকান্দি', 'mollakandiup.munshiganj.gov.bd', NULL, NULL),
(3339, 370, 'Adhara', 'আধারা', 'adharaup.munshiganj.gov.bd', NULL, NULL),
(3340, 370, 'Shiloy', 'শিলই', 'shiloyup.munshiganj.gov.bd', NULL, NULL),
(3341, 370, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.munshiganj.gov.bd', NULL, NULL),
(3342, 371, 'Baraikhali', 'বাড়েখাল', 'baraikhaliup.munshiganj.gov.bd', NULL, NULL),
(3343, 371, 'Hashara', 'হাসাড়া', 'hasharaup.munshiganj.gov.bd', NULL, NULL),
(3344, 371, 'Birtara', 'বাড়তারা', 'birtaraup.munshiganj.gov.bd', NULL, NULL),
(3345, 371, 'Shologhor', 'ষোলঘর', 'shologhorup.munshiganj.gov.bd', NULL, NULL),
(3346, 371, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.munshiganj.gov.bd', NULL, NULL),
(3347, 371, 'Patabhog', 'পাঢাভোগ', 'patabhogup.munshiganj.gov.bd', NULL, NULL),
(3348, 371, 'Shamshiddi', 'শ্যামসিদ্দি', 'shamshiddiup.munshiganj.gov.bd', NULL, NULL),
(3349, 371, 'Kolapara', 'কুলাপাড়া', 'kolaparaup.munshiganj.gov.bd', NULL, NULL),
(3350, 371, 'Vaggakol', 'ভাগ্যকুল', 'vaggakolup.munshiganj.gov.bd', NULL, NULL),
(3351, 371, 'Bagra', 'বাঘড়া', 'bagraup.munshiganj.gov.bd', NULL, NULL),
(3352, 371, 'Rarikhal', 'রাঢ়ীখাল', 'rarikhalup.munshiganj.gov.bd', NULL, NULL),
(3353, 371, 'Kukutia', 'কুকুটিয়া', 'kukutiaup.munshiganj.gov.bd', NULL, NULL),
(3354, 371, 'Atpara', 'আটপাড়া', 'atparaup.munshiganj.gov.bd', NULL, NULL),
(3355, 371, 'Tantor', 'তন্তর', 'tantorup.munshiganj.gov.bd', NULL, NULL),
(3356, 372, 'Chitracoat', 'চিত্রকোট', 'chitracoatup.munshiganj.gov.bd', NULL, NULL),
(3357, 372, 'Sekhornagar', 'শেখরনগার', 'sekhornagarup.munshiganj.gov.bd', NULL, NULL),
(3358, 372, 'Rajanagar', 'রাজানগর', 'rajanagarup.munshiganj.gov.bd', NULL, NULL),
(3359, 372, 'Keyain', 'কেয়াইন', 'keyainup.munshiganj.gov.bd', NULL, NULL),
(3360, 372, 'Basail', 'বাসাইল', 'basailup.munshiganj.gov.bd', NULL, NULL),
(3361, 372, 'Baluchar', 'বালুচর', 'balucharup.munshiganj.gov.bd', NULL, NULL),
(3362, 372, 'Latabdi', 'লতাব্দী', 'latabdiup.munshiganj.gov.bd', NULL, NULL),
(3363, 372, 'Rasunia', 'রশুনিয়া', 'rasuniaup.munshiganj.gov.bd', NULL, NULL),
(3364, 372, 'Ichhapura', 'ইছাপুরা', 'ichhapuraup.munshiganj.gov.bd', NULL, NULL),
(3365, 372, 'Bairagadi', 'বয়রাগাদি', 'bairagadiup.munshiganj.gov.bd', NULL, NULL),
(3366, 372, 'Malkhanagar', 'মালখানগর', 'malkhanagarup.munshiganj.gov.bd', NULL, NULL),
(3367, 372, 'Madhypara', 'মধ্যপাড়া', 'madhyparaup.munshiganj.gov.bd', NULL, NULL),
(3368, 372, 'Kola', 'কোলা', 'kolaup.munshiganj.gov.bd', NULL, NULL),
(3369, 372, 'Joyinshar', 'জৈনসার', 'joyinsharup.munshiganj.gov.bd', NULL, NULL),
(3370, 373, 'Medinimandal', 'মেদিনীমন্ডল', 'medinimandalup.munshiganj.gov.bd', NULL, NULL),
(3371, 373, 'Kumarbhog', 'কুমারভোগ', 'kumarbhogup.munshiganj.gov.bd', NULL, NULL),
(3372, 373, 'Haldia', 'হলদিয়া', 'haldiaup.munshiganj.gov.bd', NULL, NULL),
(3373, 373, 'Kanaksar', 'কনকসার', 'kanaksarup.munshiganj.gov.bd', NULL, NULL),
(3374, 373, 'Lohajang-Teotia', 'লৌহজং-তেওটিয়া', 'lohajangteotiaup.munshiganj.gov.bd', NULL, NULL),
(3375, 373, 'Bejgaon', 'বেজগাঁও', 'bejgaonup.munshiganj.gov.bd', NULL, NULL),
(3376, 373, 'Baultoli', 'বৌলতলী', 'baultoliup.munshiganj.gov.bd', NULL, NULL),
(3377, 373, 'Khidirpara', 'খিদিরপাড়া', 'khidirparaup.munshiganj.gov.bd', NULL, NULL),
(3378, 373, 'Gaodia', 'গাওদিয়া', 'gaodiaup.munshiganj.gov.bd', NULL, NULL),
(3379, 373, 'Kalma', 'কলমা', 'kalmaup.munshiganj.gov.bd', NULL, NULL),
(3380, 374, 'Gajaria', 'গজারিয়া', 'gajariaup.munshiganj.gov.bd', NULL, NULL),
(3381, 374, 'Baushia', 'বাউশিয়া', 'baushiaup.munshiganj.gov.bd', NULL, NULL),
(3382, 374, 'Vaberchar', 'ভবেরচর', 'vabercharup.munshiganj.gov.bd', NULL, NULL),
(3383, 374, 'Baluakandi', 'বালুয়াকান্দী', 'baluakandiup.munshiganj.gov.bd', NULL, NULL),
(3384, 374, 'Tengarchar', 'টেংগারচর', 'tengarcharup.munshiganj.gov.bd', NULL, NULL),
(3385, 374, 'Hosendee', 'হোসেন্দী', 'hosendeeup.munshiganj.gov.bd', NULL, NULL),
(3386, 374, 'Guagachia', 'গুয়াগাছিয়া', 'guagachiaup.munshiganj.gov.bd', NULL, NULL),
(3387, 374, 'Imampur', 'ইমামপুর', 'imampurup.munshiganj.gov.bd', NULL, NULL),
(3388, 375, 'Betka', 'বেতকা', 'betkaup.munshiganj.gov.bd', NULL, NULL),
(3389, 375, 'Abdullapur', 'আব্দুল্লাপুর', 'abdullapurup.munshiganj.gov.bd', NULL, NULL),
(3390, 375, 'Sonarong Tongibari', 'সোনারং টংগীবাড়ী', 'sonarongtongibariup.munshiganj.gov.bd', NULL, NULL),
(3391, 375, 'Autshahi', 'আউটশাহী', 'autshahiup.munshiganj.gov.bd', NULL, NULL),
(3392, 375, 'Arial Baligaon', 'আড়িয়ল বালিগাঁও', 'arialbaligaonup.munshiganj.gov.bd', NULL, NULL),
(3393, 375, 'Dhipur', 'ধীপুর', 'dhipurup.munshiganj.gov.bd', NULL, NULL),
(3394, 375, 'Kathadia Shimolia', 'কাঠাদিয়া শিমুলিয়া', 'kathadiashimoliaup.munshiganj.gov.bd', NULL, NULL),
(3395, 375, 'Joslong', 'যশলং', 'joslongup.munshiganj.gov.bd', NULL, NULL),
(3396, 375, 'Panchgaon', 'পাঁচগাও', 'panchgaonup.munshiganj.gov.bd', NULL, NULL),
(3397, 375, 'Kamarkhara', 'কামারখাড়া', 'kamarkharaup.munshiganj.gov.bd', NULL, NULL),
(3398, 375, 'Hasailbanari', 'হাসাইল বানারী', 'hasailbanariup.munshiganj.gov.bd', NULL, NULL),
(3399, 375, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.munshiganj.gov.bd', NULL, NULL),
(3400, 376, 'Mijanpur', 'মিজানপুর', 'mijanpurup.rajbari.gov.bd', NULL, NULL),
(3401, 376, 'Borat', 'বরাট', 'boratup.rajbari.gov.bd', NULL, NULL),
(3402, 376, 'Chandoni', 'চন্দনী', 'chandoniup.rajbari.gov.bd', NULL, NULL),
(3403, 376, 'Khangonj', 'খানগঞ্জ', 'khangonjup.rajbari.gov.bd', NULL, NULL),
(3404, 376, 'Banibaha', 'বানীবহ', 'banibahaup.rajbari.gov.bd', NULL, NULL),
(3405, 376, 'Dadshee', 'দাদশী', 'dadsheeup.rajbari.gov.bd', NULL, NULL),
(3406, 376, 'Mulghar', 'মুলঘর', 'mulgharup.rajbari.gov.bd', NULL, NULL),
(3407, 376, 'Basantapur', 'বসন্তপুর', 'basantapurup.rajbari.gov.bd', NULL, NULL),
(3408, 376, 'Khankhanapur', 'খানখানাপুর', 'khankhanapurup.rajbari.gov.bd', NULL, NULL),
(3409, 376, 'Alipur', 'আলীপুর', 'alipurup.rajbari.gov.bd', NULL, NULL),
(3410, 376, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.rajbari.gov.bd', NULL, NULL),
(3411, 376, 'Shahidwahabpur', 'শহীদওহাবপুর', 'shahidwahabpurup.rajbari.gov.bd', NULL, NULL),
(3412, 376, 'Panchuria', 'পাঁচুরিয়া', 'panchuriaup.rajbari.gov.bd', NULL, NULL),
(3413, 376, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.rajbari.gov.bd', NULL, NULL),
(3414, 377, 'Doulatdia', 'দৌলতদিয়া', 'doulatdiaup.rajbari.gov.bd', NULL, NULL),
(3415, 377, 'Debugram', 'দেবগ্রাম', 'debugramup.rajbari.gov.bd', NULL, NULL),
(3416, 377, 'Uzancar', 'উজানচর', 'uzancarup.rajbari.gov.bd', NULL, NULL),
(3417, 377, 'Chotovakla', 'ছোটভাকলা', 'chotovaklaup.rajbari.gov.bd', NULL, NULL),
(3418, 378, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.rajbari.gov.bd', NULL, NULL),
(3419, 378, 'Habashpur', 'হাবাসপুর', 'habashpurup.rajbari.gov.bd', NULL, NULL),
(3420, 378, 'Jashai', 'যশাই', 'jashaiup.rajbari.gov.bd', NULL, NULL),
(3421, 378, 'Babupara', 'বাবুপাড়া', 'babuparaup.rajbari.gov.bd', NULL, NULL),
(3422, 378, 'Mourat', 'মৌরাট', 'mouratup.rajbari.gov.bd', NULL, NULL),
(3423, 378, 'Patta', 'পাট্টা', 'pattaup.rajbari.gov.bd', NULL, NULL),
(3424, 378, 'Sarisha', 'সরিষা', 'sarishaup.rajbari.gov.bd', NULL, NULL),
(3425, 378, 'Kalimahar', 'কলিমহর', 'kalimaharup.rajbari.gov.bd', NULL, NULL),
(3426, 378, 'Kasbamajhail', 'কসবামাজাইল', 'kasbamajhailup.rajbari.gov.bd', NULL, NULL),
(3427, 378, 'Machhpara', 'মাছপাড়া', 'machhparaup.rajbari.gov.bd', NULL, NULL),
(3428, 379, 'Islampur', 'ইসলামপুর', 'islampurup.rajbari.gov.bd', NULL, NULL),
(3429, 379, 'Baharpur', 'বহরপুর', 'baharpurup.rajbari.gov.bd', NULL, NULL),
(3430, 379, 'Nawabpur', 'নবাবপুর', 'nawabpurup.rajbari.gov.bd', NULL, NULL),
(3431, 379, 'Narua', 'নারুয়া', 'naruaup.rajbari.gov.bd', NULL, NULL),
(3432, 379, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandiup.rajbari.gov.bd', NULL, NULL),
(3433, 379, 'Janjal', 'জঙ্গল', 'janjalup.rajbari.gov.bd', NULL, NULL),
(3434, 379, 'Jamalpur', 'জামালপুর', 'jamalpurup.rajbari.gov.bd', NULL, NULL),
(3435, 380, 'Kalukhali', 'কালুখালী', 'kalukhaliup.rajbari.gov.bd', NULL, NULL),
(3436, 380, 'Ratandia', 'রতনদিয়া', 'ratandiaup.rajbari.gov.bd', NULL, NULL),
(3437, 380, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.rajbari.gov.bd', NULL, NULL),
(3438, 380, 'Boalia', 'বোয়ালিয়া', 'boaliaup.rajbari.gov.bd', NULL, NULL),
(3439, 380, 'Majbari', 'মাজবাড়ী', 'majbariup.rajbari.gov.bd', NULL, NULL),
(3440, 380, 'Madapur', 'মদাপুর', 'madapurup.rajbari.gov.bd', NULL, NULL),
(3441, 380, 'Shawrail', 'সাওরাইল', 'shawrailup.rajbari.gov.bd', NULL, NULL),
(3442, 380, 'Mrigi', 'মৃগী', 'mrigiup.rajbari.gov.bd', NULL, NULL),
(3443, 381, 'Sirkhara', 'শিড়খাড়া', 'sirkharaup.madaripur.gov.bd', NULL, NULL),
(3444, 381, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.madaripur.gov.bd', NULL, NULL),
(3445, 381, 'Kunia', 'কুনিয়া', 'kuniaup.madaripur.gov.bd', NULL, NULL),
(3446, 381, 'Peyarpur', 'পেয়ারপুর', 'peyarpurup.madaripur.gov.bd', NULL, NULL),
(3447, 381, 'Kandua', 'কেন্দুয়া', 'kanduaup.madaripur.gov.bd', NULL, NULL),
(3448, 381, 'Mastofapur', 'মস্তফাপুর', 'mastofapurup.madaripur.gov.bd', NULL, NULL),
(3449, 381, 'Dudkhali', 'দুধখালী', 'dudkhaliup.madaripur.gov.bd', NULL, NULL),
(3450, 381, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.madaripur.gov.bd', NULL, NULL),
(3451, 381, 'Chilarchar', 'ছিলারচর', 'chilarcharup.madaripur.gov.bd', NULL, NULL),
(3452, 381, 'Panchkhola', 'পাঁচখোলা', 'panchkholaup.madaripur.gov.bd', NULL, NULL),
(3453, 381, 'Ghatmajhi', 'ঘটমাঝি', 'ghatmajhiup.madaripur.gov.bd', NULL, NULL),
(3454, 381, 'Jhaoudi', 'ঝাউদী', 'jhaoudiup.madaripur.gov.bd', NULL, NULL),
(3455, 381, 'Khoajpur', 'খোয়াজপুর', 'khoajpurup.madaripur.gov.bd', NULL, NULL),
(3456, 381, 'Rasti', 'রাস্তি', 'rastiup.madaripur.gov.bd', NULL, NULL),
(3457, 381, 'Dhurail', 'ধুরাইল', 'dhurailup.madaripur.gov.bd', NULL, NULL),
(3458, 382, 'Shibchar', 'শিবচর', 'shibcharup.madaripur.gov.bd', NULL, NULL),
(3459, 382, 'Ditiyakhando', 'দ্বিতীয়খন্ড', 'ditiyakhandoup.madaripur.gov.bd', NULL, NULL),
(3460, 382, 'Nilokhe', 'নিলখি', 'nilokheup.madaripur.gov.bd', NULL, NULL),
(3461, 382, 'Bandarkhola', 'বন্দরখোলা', 'bandarkholaup.madaripur.gov.bd', NULL, NULL),
(3462, 382, 'Charjanazat', 'চরজানাজাত', 'charjanazatup.madaripur.gov.bd', NULL, NULL),
(3463, 382, 'Madbarerchar', 'মাদবরেরচর', 'madbarercharup.madaripur.gov.bd', NULL, NULL),
(3464, 382, 'Panchar', 'পাঁচচর', 'pancharup.madaripur.gov.bd', NULL, NULL),
(3465, 382, 'Sannasirchar', 'সন্যাসিরচর', 'sannasircharup.madaripur.gov.bd', NULL, NULL),
(3466, 382, 'Kathalbari', 'কাঁঠালবাড়ী', 'kathalbariup.madaripur.gov.bd', NULL, NULL),
(3467, 382, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.madaripur.gov.bd', NULL, NULL),
(3468, 382, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.madaripur.gov.bd', NULL, NULL),
(3469, 382, 'Vhandarikandi', 'ভান্ডারীকান্দি', 'vhandarikandiup.madaripur.gov.bd', NULL, NULL),
(3470, 382, 'Bahertala South', 'বহেরাতলা দক্ষিণ', 'bahertalasouthup.madaripur.gov.bd', NULL, NULL),
(3471, 382, 'Baheratala North', 'বহেরাতলা উত্তর', 'baheratalanorthup.madaripur.gov.bd', NULL, NULL),
(3472, 382, 'Baskandi', 'বাঁশকান্দি', 'baskandiup.madaripur.gov.bd', NULL, NULL),
(3473, 382, 'Umedpur', 'উমেদপুর', 'umedpurup.madaripur.gov.bd', NULL, NULL),
(3474, 382, 'Vhadrasion', 'ভদ্রাসন', 'vhadrasionup.madaripur.gov.bd', NULL, NULL),
(3475, 382, 'Shiruail', 'শিরুয়াইল', 'shiruailup.madaripur.gov.bd', NULL, NULL),
(3476, 382, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.madaripur.gov.bd', NULL, NULL),
(3477, 383, 'Alinagar', 'আলীনগর', 'alinagarup.madaripur.gov.bd', NULL, NULL),
(3478, 383, 'Baligram', 'বালীগ্রাম', 'baligramup.madaripur.gov.bd', NULL, NULL),
(3479, 383, 'Basgari', 'বাঁশগাড়ী', 'basgariup.madaripur.gov.bd', NULL, NULL),
(3480, 383, 'Chardoulatkhan', 'চরদৌলতখান', 'chardoulatkhanup.madaripur.gov.bd', NULL, NULL),
(3481, 383, 'Dashar', 'ডাসার', 'dasharup.madaripur.gov.bd', NULL, NULL),
(3482, 383, 'Enayetnagor', 'এনায়েতনগর', 'enayetnagorup.madaripur.gov.bd', NULL, NULL),
(3483, 383, 'Gopalpur', 'গোপালপুর', 'gopalpurup.madaripur.gov.bd', NULL, NULL),
(3484, 383, 'Koyaria', 'কয়ারিয়া', 'koyariaup.madaripur.gov.bd', NULL, NULL),
(3485, 383, 'Kazibakai', 'কাজীবাকাই', 'kazibakaiup.madaripur.gov.bd', NULL, NULL),
(3486, 383, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.madaripur.gov.bd', NULL, NULL),
(3487, 383, 'Nabogram', 'নবগ্রাম', 'nabogramup.madaripur.gov.bd', NULL, NULL),
(3488, 383, 'Ramjanpur', 'রমজানপুর', 'ramjanpurup.madaripur.gov.bd', NULL, NULL),
(3489, 383, 'Shahebrampur', 'সাহেবরামপুর', 'shahebrampurup.madaripur.gov.bd', NULL, NULL),
(3490, 383, 'Shikarmongol', 'শিকারমঙ্গল', 'shikarmongolup.madaripur.gov.bd', NULL, NULL),
(3491, 384, 'Haridasdi-Mahendrodi', 'হরিদাসদী-মহেন্দ্রদী', 'haridasdi-mahendrodiup.madaripur.gov.bd', NULL, NULL),
(3492, 384, 'Kadambari', 'কদমবাড়ী', 'kadambariup.madaripur.gov.bd', NULL, NULL),
(3493, 384, 'Bajitpur', 'বাজিতপুর', 'bajitpurup.madaripur.gov.bd', NULL, NULL),
(3494, 384, 'Amgram', 'আমগ্রাম', 'amgramup.madaripur.gov.bd', NULL, NULL),
(3495, 384, 'Rajoir', 'রাজৈর', 'rajoirup.madaripur.gov.bd', NULL, NULL),
(3496, 384, 'Khaliya', 'খালিয়া', 'khaliyaup.madaripur.gov.bd', NULL, NULL),
(3497, 384, 'Ishibpur', 'ইশিবপুর', 'ishibpurup.madaripur.gov.bd', NULL, NULL),
(3498, 384, 'Badarpasa', 'বদরপাশা', 'badarpasaup.madaripur.gov.bd', NULL, NULL),
(3499, 384, 'Kabirajpur', 'কবিরাজপুর', 'kabirajpurup.madaripur.gov.bd', NULL, NULL),
(3500, 384, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.madaripur.gov.bd', NULL, NULL),
(3501, 384, 'Paikpara', 'পাইকপাড়া', 'paikparaup.madaripur.gov.bd', NULL, NULL),
(3502, 385, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.gopalganj.gov.bd', NULL, NULL),
(3503, 385, 'Shuktail', 'শুকতাইল', 'shuktailup.gopalganj.gov.bd', NULL, NULL),
(3504, 385, 'Chandradighalia', 'চন্দ্রদিঘলিয়া', 'chandradighaliaup.gopalganj.gov.bd', NULL, NULL),
(3505, 385, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.gopalganj.gov.bd', NULL, NULL),
(3506, 385, 'Paikkandi', 'পাইককান্দি', 'paikkandiup.gopalganj.gov.bd', NULL, NULL),
(3507, 385, 'Urfi', 'উরফি', 'urfiup.gopalganj.gov.bd', NULL, NULL),
(3508, 385, 'Lotifpur', 'লতিফপুর', 'lotifpurup.gopalganj.gov.bd', NULL, NULL),
(3509, 385, 'Satpar', 'সাতপাড়', 'satparup.gopalganj.gov.bd', NULL, NULL),
(3510, 385, 'Sahapur', 'সাহাপুর', 'sahapurup.gopalganj.gov.bd', NULL, NULL),
(3511, 385, 'Horidaspur', 'হরিদাসপুর', 'horidaspurup.gopalganj.gov.bd', NULL, NULL),
(3512, 385, 'Ulpur', 'উলপুর', 'ulpurup.gopalganj.gov.bd', NULL, NULL),
(3513, 385, 'Nizra', 'নিজড়া', 'nizraup.gopalganj.gov.bd', NULL, NULL),
(3514, 385, 'Karpara', 'করপাড়া', 'karparaup.gopalganj.gov.bd', NULL, NULL),
(3515, 385, 'Durgapur', 'দুর্গাপুর', 'durgapurup.gopalganj.gov.bd', NULL, NULL),
(3516, 385, 'Kajulia', 'কাজুলিয়া', 'kajuliaup.gopalganj.gov.bd', NULL, NULL),
(3517, 385, 'Majhigati', 'মাঝিগাতী', 'majhigatiup.gopalganj.gov.bd', NULL, NULL),
(3518, 385, 'Roghunathpur', 'রঘুনাথপুর', 'roghunathpurup.gopalganj.gov.bd', NULL, NULL),
(3519, 385, 'Gobra', 'গোবরা', 'gobraup.gopalganj.gov.bd', NULL, NULL),
(3520, 385, 'Borashi', 'বোড়াশী', 'borashiup.gopalganj.gov.bd', NULL, NULL),
(3521, 385, 'Kati', 'কাঠি', 'katiup.gopalganj.gov.bd', NULL, NULL),
(3522, 385, 'Boultali', 'বৌলতলী', 'boultaliup.gopalganj.gov.bd', NULL, NULL),
(3523, 386, 'Kashiani', 'কাশিয়ানী', 'kashianiup.gopalganj.gov.bd', NULL, NULL),
(3524, 386, 'Hatiara', 'হাতিয়াড়া', 'hatiaraup.gopalganj.gov.bd', NULL, NULL),
(3525, 386, 'Fukura', 'ফুকরা', 'fukuraup.gopalganj.gov.bd', NULL, NULL),
(3526, 386, 'Rajpat', 'রাজপাট', 'rajpatup.gopalganj.gov.bd', NULL, NULL),
(3527, 386, 'Bethuri', 'বেথুড়ী', 'bethuriup.gopalganj.gov.bd', NULL, NULL),
(3528, 386, 'Nijamkandi', 'নিজামকান্দি', 'nijamkandiup.gopalganj.gov.bd', NULL, NULL),
(3529, 386, 'Sajail', 'সাজাইল', 'sajailup.gopalganj.gov.bd', NULL, NULL),
(3530, 386, 'Mamudpur', 'মাহমুদপুর', 'mamudpurup.gopalganj.gov.bd', NULL, NULL),
(3531, 386, 'Maheshpur', 'মহেশপুর', 'maheshpurup.gopalganj.gov.bd', NULL, NULL),
(3532, 386, 'Orakandia', 'ওড়াকান্দি', 'orakandiaup.gopalganj.gov.bd', NULL, NULL),
(3533, 386, 'Parulia', 'পারুলিয়া', 'paruliaup.gopalganj.gov.bd', NULL, NULL),
(3534, 386, 'Ratail', 'রাতইল', 'ratailup.gopalganj.gov.bd', NULL, NULL),
(3535, 386, 'Puisur', 'পুইশুর', 'puisurup.gopalganj.gov.bd', NULL, NULL),
(3536, 386, 'Singa', 'সিংগা', 'singaup.gopalganj.gov.bd', NULL, NULL),
(3537, 387, 'Kushli', 'কুশলী', 'kushliup.gopalganj.gov.bd', NULL, NULL),
(3538, 387, 'Gopalpur', 'গোপালপুর', 'gopalpurup.gopalganj.gov.bd', NULL, NULL),
(3539, 387, 'Patgati', 'পাটগাতী', 'patgatiup.gopalganj.gov.bd', NULL, NULL),
(3540, 387, 'Borni', 'বর্ণি', 'borniup.gopalganj.gov.bd', NULL, NULL),
(3541, 387, 'Dumaria', 'ডুমরিয়া', 'dumariaup.gopalganj.gov.bd', NULL, NULL),
(3542, 388, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapurup.gopalganj.gov.bd', NULL, NULL),
(3543, 388, 'Ramshil', 'রামশীল', 'ramshilup.gopalganj.gov.bd', NULL, NULL),
(3544, 388, 'Bandhabari', 'বান্ধাবাড়ী', 'bandhabariup.gopalganj.gov.bd', NULL, NULL),
(3545, 388, 'Kolabari', 'কলাবাড়ী', 'kolabariup.gopalganj.gov.bd', NULL, NULL),
(3546, 388, 'Kushla', 'কুশলা', 'kushlaup.gopalganj.gov.bd', NULL, NULL),
(3547, 388, 'Amtoli', 'আমতলী', 'amtoliup.gopalganj.gov.bd', NULL, NULL),
(3548, 388, 'Pinjuri', 'পিঞ্জুরী', 'pinjuriup.gopalganj.gov.bd', NULL, NULL),
(3549, 388, 'Ghaghor', 'ঘাঘর', 'ghaghorup.gopalganj.gov.bd', NULL, NULL),
(3550, 388, 'Radhaganj', 'রাধাগঞ্জ', 'radhaganjup.gopalganj.gov.bd', NULL, NULL),
(3551, 388, 'Hiron', 'হিরণ', 'hironup.gopalganj.gov.bd', NULL, NULL),
(3552, 388, 'Kandi', 'কান্দি', 'kandiup.gopalganj.gov.bd', NULL, NULL),
(3553, 389, 'Ujani', 'উজানী', 'ujaniup.gopalganj.gov.bd', NULL, NULL),
(3554, 389, 'Nanikhir', 'ননীক্ষীর', 'nanikhirup.gopalganj.gov.bd', NULL, NULL),
(3555, 389, 'Dignagar', 'দিগনগর', 'dignagarup.gopalganj.gov.bd', NULL, NULL),
(3556, 389, 'Poshargati', 'পশারগাতি', 'poshargatiup.gopalganj.gov.bd', NULL, NULL),
(3557, 389, 'Gobindopur', 'গোবিন্দপুর', 'gobindopurup.gopalganj.gov.bd', NULL, NULL),
(3558, 389, 'Khandarpara', 'খান্দারপাড়া', 'khandarparaup.gopalganj.gov.bd', NULL, NULL),
(3559, 389, 'Bohugram', 'বহুগ্রাম', 'bohugramup.gopalganj.gov.bd', NULL, NULL),
(3560, 389, 'Banshbaria', 'বাশঁবাড়িয়া', 'banshbariaup.gopalganj.gov.bd', NULL, NULL),
(3561, 389, 'Vabrashur', 'ভাবড়াশুর', 'vabrashurup.gopalganj.gov.bd', NULL, NULL),
(3562, 389, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.gopalganj.gov.bd', NULL, NULL),
(3563, 389, 'Batikamari', 'বাটিকামারী', 'batikamariup.gopalganj.gov.bd', NULL, NULL),
(3564, 389, 'Jalirpar', 'জলিরপাড়', 'jalirparup.gopalganj.gov.bd', NULL, NULL),
(3565, 389, 'Raghdi', 'রাঘদী', 'raghdiup.gopalganj.gov.bd', NULL, NULL),
(3566, 389, 'Gohala', 'গোহালা', 'gohalaup.gopalganj.gov.bd', NULL, NULL),
(3567, 389, 'Mochna', 'মোচনা', 'mochnaup.gopalganj.gov.bd', NULL, NULL),
(3568, 389, 'Kashalia', 'কাশালিয়া', 'kashaliaup.gopalganj.gov.bd', NULL, NULL),
(3569, 390, 'Ishangopalpur', 'ঈশানগোপালপুর', 'ishangopalpurup.faridpur.gov.bd', NULL, NULL),
(3570, 390, 'Charmadbdia', 'চরমাধবদিয়া', 'charmadbdiaup.faridpur.gov.bd', NULL, NULL),
(3571, 390, 'Aliabad', 'আলিয়াবাদ', 'aliabadup.faridpur.gov.bd', NULL, NULL),
(3572, 390, 'Uttarchannel', 'নর্থচ্যানেল', 'uttarchannelup.faridpur.gov.bd', NULL, NULL),
(3573, 390, 'Decreerchar', 'ডিক্রিরচর', 'decreercharup.faridpur.gov.bd', NULL, NULL),
(3574, 390, 'Majchar', 'মাচ্চর', 'majcharup.faridpur.gov.bd', NULL, NULL),
(3575, 390, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.faridpur.gov.bd', NULL, NULL),
(3576, 390, 'Ambikapur', 'অম্বিকাপুর', 'ambikapurup.faridpur.gov.bd', NULL, NULL),
(3577, 390, 'Kanaipur', 'কানাইপুর', 'kanaipurup.faridpur.gov.bd', NULL, NULL),
(3578, 390, 'Kaijuri', 'কৈজুরী', 'kaijuriup.faridpur.gov.bd', NULL, NULL),
(3579, 390, 'Greda', 'গেরদা', 'gredaup.faridpur.gov.bd', NULL, NULL),
(3580, 391, 'Buraich', 'বুড়াইচ', 'buraichup.faridpur.gov.bd', NULL, NULL),
(3581, 391, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadangaup.faridpur.gov.bd', NULL, NULL),
(3582, 391, 'Tagarbanda', 'টগরবন্দ', 'tagarbandaup.faridpur.gov.bd', NULL, NULL),
(3583, 391, 'Bana', 'বানা', 'banaup.faridpur.gov.bd', NULL, NULL),
(3584, 391, 'Panchuria', 'পাঁচুড়িয়া', 'panchuriaup.faridpur.gov.bd', NULL, NULL),
(3585, 391, 'Gopalpur', 'গোপালপুর', 'gopalpurup.faridpur.gov.bd', NULL, NULL),
(3586, 392, 'Boalmari', 'বোয়ালমারী', 'boalmariup.faridpur.gov.bd', NULL, NULL),
(3587, 392, 'Dadpur', 'দাদপুর', 'dadpurup.faridpur.gov.bd', NULL, NULL),
(3588, 392, 'Chatul', 'চতুল', 'chatulup.faridpur.gov.bd', NULL, NULL),
(3589, 392, 'Ghoshpur', 'ঘোষপুর', 'ghoshpurup.faridpur.gov.bd', NULL, NULL),
(3590, 392, 'Gunbaha', 'গুনবহা', 'gunbahaup.faridpur.gov.bd', NULL, NULL),
(3591, 392, 'Chandpur', 'চাঁদপুর', 'chandpurup.faridpur.gov.bd', NULL, NULL),
(3592, 392, 'Parameshwardi', 'পরমেশ্বরদী', 'parameshwardiup.faridpur.gov.bd', NULL, NULL),
(3593, 392, 'Satair', 'সাতৈর', 'satairup.faridpur.gov.bd', NULL, NULL),
(3594, 392, 'Rupapat', 'রূপাপাত', 'rupapatup.faridpur.gov.bd', NULL, NULL),
(3595, 392, 'Shekhar', 'শেখর', 'shekharup.faridpur.gov.bd', NULL, NULL),
(3596, 392, 'Moyna', 'ময়না', 'moynaup.faridpur.gov.bd', NULL, NULL),
(3597, 393, 'Char Bisnopur', 'চর বিষ্ণুপুর', 'charbisnopurup.faridpur.gov.bd', NULL, NULL),
(3598, 393, 'Akoter Char', 'আকোটের চর', 'akotercharup.faridpur.gov.bd', NULL, NULL),
(3599, 393, 'Char Nasirpur', 'চর নাসিরপুর', 'charnasirpurup.faridpur.gov.bd', NULL, NULL),
(3600, 393, 'Narikel Bariya', 'নারিকেল বাড়িয়া', 'narikelbariyaup.faridpur.gov.bd', NULL, NULL),
(3601, 393, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.faridpur.gov.bd', NULL, NULL),
(3602, 393, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.faridpur.gov.bd', NULL, NULL),
(3603, 393, 'Sadarpur', 'সদরপুর', 'sadarpurup.faridpur.gov.bd', NULL, NULL),
(3604, 393, 'Char Manair', 'চর মানাইর', 'charmanairup.faridpur.gov.bd', NULL, NULL),
(3605, 393, 'Dhaukhali', 'ঢেউখালী', 'dhaukhaliup.faridpur.gov.bd', NULL, NULL),
(3606, 394, 'Charjashordi', 'চরযশোরদী', 'charjashordiup.faridpur.gov.bd', NULL, NULL),
(3607, 394, 'Purapara', 'পুরাপাড়া', 'puraparaup.faridpur.gov.bd', NULL, NULL),
(3608, 394, 'Laskardia', 'লস্করদিয়া', 'laskardiaup.faridpur.gov.bd', NULL, NULL),
(3609, 394, 'Ramnagar', 'রামনগর', 'ramnagarup.faridpur.gov.bd', NULL, NULL),
(3610, 394, 'Kaichail', 'কাইচাইল', 'kaichailup.faridpur.gov.bd', NULL, NULL),
(3611, 394, 'Talma', 'তালমা', 'talmaup.faridpur.gov.bd', NULL, NULL),
(3612, 394, 'Fulsuti', 'ফুলসুতি', 'fulsutiup.faridpur.gov.bd', NULL, NULL),
(3613, 394, 'Dangi', 'ডাঙ্গী', 'dangiup.faridpur.gov.bd', NULL, NULL),
(3614, 394, 'Kodalia Shohidnagar', 'কোদালিয়া শহিদনগর', 'kodaliashohidnagarup.faridpur.gov.bd', NULL, NULL),
(3615, 395, 'Gharua', 'ঘারুয়া', 'gharuaup.faridpur.gov.bd', NULL, NULL),
(3616, 395, 'Nurullagonj', 'নুরুল্যাগঞ্জ', 'nurullagonjup.faridpur.gov.bd', NULL, NULL),
(3617, 395, 'Manikdha', 'মানিকদহ', 'manikdhaup.faridpur.gov.bd', NULL, NULL),
(3618, 395, 'Kawlibera', 'কাউলিবেড়া', 'kawliberaup.faridpur.gov.bd', NULL, NULL),
(3619, 395, 'Nasirabad', 'নাছিরাবাদ', 'nasirabadup.faridpur.gov.bd', NULL, NULL),
(3620, 395, 'Tujerpur', 'তুজারপুর', 'tujerpurup.faridpur.gov.bd', NULL, NULL),
(3621, 395, 'Algi', 'আলগী', 'algiup.faridpur.gov.bd', NULL, NULL),
(3622, 395, 'Chumurdi', 'চুমুরদী', 'chumurdiup.faridpur.gov.bd', NULL, NULL),
(3623, 395, 'Kalamridha', 'কালামৃধা', 'kalamridhaup.faridpur.gov.bd', NULL, NULL),
(3624, 395, 'Azimnagor', 'আজিমনগর', 'azimnagorup.faridpur.gov.bd', NULL, NULL),
(3625, 395, 'Chandra', 'চান্দ্রা', 'chandraup.faridpur.gov.bd', NULL, NULL),
(3626, 395, 'Hamirdi', 'হামিরদী', 'hamirdiup.faridpur.gov.bd', NULL, NULL),
(3627, 396, 'Gazirtek', 'গাজীরটেক', 'gazirtekup.faridpur.gov.bd', NULL, NULL),
(3628, 396, 'Char Bhadrasan', 'চর ভদ্রাসন', 'charbhadrasanup.faridpur.gov.bd', NULL, NULL),
(3629, 396, 'Char Harirampur', 'চর হরিরামপুর', 'charharirampurup.faridpur.gov.bd', NULL, NULL),
(3630, 396, 'Char Jahukanda', 'চর ঝাউকান্দা', 'charjahukandaup.faridpur.gov.bd', NULL, NULL),
(3631, 397, 'Madhukhali', 'মধুখালী', 'madhukhaliup.faridpur.gov.bd', NULL, NULL),
(3632, 397, 'Jahapur', 'জাহাপুর', 'jahapurup.faridpur.gov.bd', NULL, NULL),
(3633, 397, 'Gazna', 'গাজনা', 'gaznaup.faridpur.gov.bd', NULL, NULL),
(3634, 397, 'Megchami', 'মেগচামী', 'megchamiup.faridpur.gov.bd', NULL, NULL),
(3635, 397, 'Raipur', 'রায়পুর', 'raipurup.faridpur.gov.bd', NULL, NULL),
(3636, 397, 'Bagat', 'বাগাট', 'bagatup.faridpur.gov.bd', NULL, NULL),
(3637, 397, 'Dumain', 'ডুমাইন', 'dumainup.faridpur.gov.bd', NULL, NULL),
(3638, 397, 'Nowpara', 'নওপাড়া', 'nowparaup.faridpur.gov.bd', NULL, NULL),
(3639, 397, 'Kamarkhali', 'কামারখালী', 'kamarkhaliup.faridpur.gov.bd', NULL, NULL),
(3640, 398, 'Bhawal', 'ভাওয়াল', 'bhawalup.faridpur.gov.bd', NULL, NULL),
(3641, 398, 'Atghar', 'আটঘর', 'atgharup.faridpur.gov.bd', NULL, NULL),
(3642, 398, 'Mazadia', 'মাঝারদিয়া', 'mazadiaup.faridpur.gov.bd', NULL, NULL),
(3643, 398, 'Ballabhdi', 'বল্লভদী', 'ballabhdiup.faridpur.gov.bd', NULL, NULL),
(3644, 398, 'Gatti', 'গট্টি', 'gattiup.faridpur.gov.bd', NULL, NULL),
(3645, 398, 'Jadunandi', 'যদুনন্দী', 'jadunandiup.faridpur.gov.bd', NULL, NULL),
(3646, 398, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.faridpur.gov.bd', NULL, NULL),
(3647, 398, 'Sonapur', 'সোনাপুর', 'sonapurup.faridpur.gov.bd', NULL, NULL),
(3648, 399, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadarup.panchagarh.gov.bd', NULL, NULL),
(3649, 399, 'Satmara', 'সাতমেরা', 'satmaraup.panchagarh.gov.bd', NULL, NULL),
(3650, 399, 'Amarkhana', 'অমরখানা', 'amarkhanaup.panchagarh.gov.bd', NULL, NULL),
(3651, 399, 'Haribhasa', 'হাড়িভাসা', 'haribhasaup.panchagarh.gov.bd', NULL, NULL),
(3652, 399, 'Chaklahat', 'চাকলাহাট', 'chaklahatup.panchagarh.gov.bd', NULL, NULL),
(3653, 399, 'Hafizabad', 'হাফিজাবাদ', 'hafizabadup.panchagarh.gov.bd', NULL, NULL),
(3654, 399, 'Kamat Kajol Dighi', 'কামাত কাজল দীঘি', 'kamatkajoldighiup.panchagarh.gov.bd', NULL, NULL),
(3655, 399, 'Dhakkamara', 'ধাক্কামারা', 'dhakkamaraup.panchagarh.gov.bd', NULL, NULL),
(3656, 399, 'Magura', 'মাগুরা', 'maguraup.panchagarh.gov.bd', NULL, NULL),
(3657, 399, 'Garinabari', 'গরিনাবাড়ী', 'garinabariup.panchagarh.gov.bd', NULL, NULL),
(3658, 400, 'Chilahati', 'চিলাহাটি', 'chilahatiup.panchagarh.gov.bd', NULL, NULL),
(3659, 400, 'Shaldanga', 'শালডাঙ্গা', 'shaldangaup.panchagarh.gov.bd', NULL, NULL),
(3660, 400, 'Debiganj Sadar', 'দেবীগঞ্জ সদর', 'debiganjsadarup.panchagarh.gov.bd', NULL, NULL),
(3661, 400, 'Pamuli', 'পামুলী', 'pamuliup.panchagarh.gov.bd', NULL, NULL),
(3662, 400, 'Sundardighi', 'সুন্দরদিঘী', 'sundardighiup.panchagarh.gov.bd', NULL, NULL),
(3663, 400, 'Sonahar Mollikadaha', 'সোনাহার মল্লিকাদহ', 'sonaharmollikadahaup.panchagarh.gov.bd', NULL, NULL),
(3664, 400, 'Tepriganj', 'টেপ্রীগঞ্জ', 'tepriganjup.panchagarh.gov.bd', NULL, NULL),
(3665, 400, 'Dandopal', 'দন্ডপাল', 'dandopalup.panchagarh.gov.bd', NULL, NULL),
(3666, 400, 'Debiduba', 'দেবীডুবা', 'debidubaup.panchagarh.gov.bd', NULL, NULL),
(3667, 400, 'Chengthi Hazra Danga', 'চেংঠী হাজরা ডাঙ্গা', 'chengthihazradangaup.panchagarh.gov.bd', NULL, NULL),
(3668, 401, 'Jholaishal Shiri', 'ঝলইশাল শিরি', 'jholaishalshiriup.panchagarh.gov.bd', NULL, NULL),
(3669, 401, 'Moidandighi', 'ময়দান দীঘি', 'moidandighiup.panchagarh.gov.bd', NULL, NULL),
(3670, 401, 'Banghari', 'বেংহারী', 'banghariup.panchagarh.gov.bd', NULL, NULL),
(3671, 401, 'Kajoldighi Kaligonj', 'কাজলদীঘি কালিগঞ্জ', 'kajoldighikaligonjup.panchagarh.gov.bd', NULL, NULL),
(3672, 401, 'Boroshoshi', 'বড়শশী', 'boroshoshiup.panchagarh.gov.bd', NULL, NULL),
(3673, 401, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.panchagarh.gov.bd', NULL, NULL),
(3674, 401, 'Marea Bamonhat', 'মাড়েয়া বামনহাট', 'mareabamonhatup.panchagarh.gov.bd', NULL, NULL),
(3675, 401, 'Boda', 'বোদা', 'bodaup.panchagarh.gov.bd', NULL, NULL),
(3676, 401, 'Sakoa', 'সাকোয়া', 'sakoaup.panchagarh.gov.bd', NULL, NULL),
(3677, 401, 'Pachpir', 'পাচপীর', 'pachpirup.panchagarh.gov.bd', NULL, NULL),
(3678, 402, 'Mirgapur', 'মির্জাপুর', 'mirgapurup.panchagarh.gov.bd', NULL, NULL),
(3679, 402, 'Radhanagar', 'রাধানগর', 'radhanagarup.panchagarh.gov.bd', NULL, NULL),
(3680, 402, 'Toria', 'তোড়িয়া', 'toriaup.panchagarh.gov.bd', NULL, NULL),
(3681, 402, 'Balarampur', 'বলরামপুর', 'balarampurup.panchagarh.gov.bd', NULL, NULL),
(3682, 402, 'Alowakhowa', 'আলোয়াখোয়া', 'alowakhowaup.panchagarh.gov.bd', NULL, NULL),
(3683, 402, 'Dhamor', 'ধামোর', 'dhamorup.panchagarh.gov.bd', NULL, NULL),
(3684, 403, 'Banglabandha', 'বাংলাবান্ধা', 'banglabandhaup.panchagarh.gov.bd', NULL, NULL),
(3685, 403, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpurup.panchagarh.gov.bd', NULL, NULL),
(3686, 403, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpur.gazipur.gov.bd', NULL, NULL),
(3687, 403, 'Buraburi', 'বুড়াবুড়ী', 'buraburi.panchagarh.gov.bd', NULL, NULL),
(3688, 403, 'Debnagar', 'দেবনগর', 'debnagarup.panchagarh.gov.bd', NULL, NULL),
(3689, 403, 'Salbahan', 'শালবাহান', 'salbahanup.panchagarh.gov.bd', NULL, NULL),
(3690, 403, 'Tentulia', 'তেতুলিয়া', 'tentuliaup.panchagarh.gov.bd', NULL, NULL),
(3691, 403, 'Timaihat', 'তিমাইহাট', 'timaihat.panchagarh.gov.bd', NULL, NULL),
(3692, 404, 'Joypur', 'জয়পুর', 'joypurup.dinajpur.gov.bd', NULL, NULL),
(3693, 404, 'Binodnagar', 'বিনোদনগর', 'binodnagarup.dinajpur.gov.bd', NULL, NULL),
(3694, 404, 'Golapgonj', 'গোলাপগঞ্জ', 'golapgonjup.dinajpur.gov.bd', NULL, NULL),
(3695, 404, 'Shalkhuria', 'শালখুরিয়া', 'shalkhuriaup.dinajpur.gov.bd', NULL, NULL),
(3696, 404, 'Putimara', 'পুটিমারা', 'putimaraup.dinajpur.gov.bd', NULL, NULL),
(3697, 404, 'Bhaduria', 'ভাদুরিয়া', 'bhaduriaup.dinajpur.gov.bd', NULL, NULL),
(3698, 404, 'Daudpur', 'দাউদপুর', 'daudpurup.dinajpur.gov.bd', NULL, NULL),
(3699, 404, 'Mahmudpur', 'মাহামুদপুর', 'mahmudpurup.dinajpur.gov.bd', NULL, NULL),
(3700, 404, 'Kushdaha', 'কুশদহ', 'kushdahaup.dinajpur.gov.bd', NULL, NULL),
(3701, 405, 'Shibrampur', 'শিবরামপুর', 'shibrampurup.dinajpur.gov.bd', NULL, NULL),
(3702, 405, 'Polashbari', 'পলাশবাড়ী', 'polashbariup2.dinajpur.gov.bd', NULL, NULL),
(3703, 405, 'Shatagram', 'শতগ্রাম', 'shatagramup.dinajpur.gov.bd', NULL, NULL),
(3704, 405, 'Paltapur', 'পাল্টাপুর', 'paltapurup.dinajpur.gov.bd', NULL, NULL),
(3705, 405, 'Sujalpur', 'সুজালপুর', 'sujalpurup.dinajpur.gov.bd', NULL, NULL),
(3706, 405, 'Nijpara', 'নিজপাড়া', 'nijparaup.dinajpur.gov.bd', NULL, NULL),
(3707, 405, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.dinajpur.gov.bd', NULL, NULL),
(3708, 405, 'Bhognagar', 'ভোগনগর', 'bhognagarup.dinajpur.gov.bd', NULL, NULL),
(3709, 405, 'Sator', 'সাতোর', 'satorup.dinajpur.gov.bd', NULL, NULL),
(3710, 405, 'Mohonpur', 'মোহনপুর', 'mohonpurup.dinajpur.gov.bd', NULL, NULL),
(3711, 405, 'Moricha', 'মরিচা', 'morichaup.dinajpur.gov.bd', NULL, NULL),
(3712, 406, 'Bulakipur', 'বুলাকীপুর', 'bulakipurup.dinajpur.gov.bd', NULL, NULL),
(3713, 406, 'Palsha', 'পালশা', 'palshaup.dinajpur.gov.bd', NULL, NULL),
(3714, 406, 'Singra', 'সিংড়া', 'singraup.dinajpur.gov.bd', NULL, NULL),
(3715, 406, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghatup.dinajpur.gov.bd', NULL, NULL),
(3716, 407, 'Mukundopur', 'মুকুন্দপুর', 'mukundopurup.dinajpur.gov.bd', NULL, NULL),
(3717, 407, 'Katla', 'কাটলা', 'katlaup.dinajpur.gov.bd', NULL, NULL),
(3718, 407, 'Khanpur', 'খানপুর', 'khanpurup.dinajpur.gov.bd', NULL, NULL),
(3719, 407, 'Dior', 'দিওড়', 'diorup.dinajpur.gov.bd', NULL, NULL),
(3720, 407, 'Binail', 'বিনাইল', 'binailup.dinajpur.gov.bd', NULL, NULL),
(3721, 407, 'Jatbani', 'জোতবানী', 'jatbaniup.dinajpur.gov.bd', NULL, NULL),
(3722, 407, 'Poliproyagpur', 'পলিপ্রয়াগপুর', 'poliproyagpurup.dinajpur.gov.bd', NULL, NULL),
(3723, 408, 'Belaichandi', 'বেলাইচন্ডি', 'belaichandiup.dinajpur.gov.bd', NULL, NULL),
(3724, 408, 'Monmothopur', 'মন্মথপুর', 'monmothopurup.dinajpur.gov.bd', NULL, NULL),
(3725, 408, 'Rampur', 'রামপুর', 'rampurup.dinajpur.gov.bd', NULL, NULL),
(3726, 408, 'Polashbari', 'পলাশবাড়ী', 'polashbariup4.dinajpur.gov.bd', NULL, NULL),
(3727, 408, 'Chandipur', 'চন্ডীপুর', 'chandipurup.dinajpur.gov.bd', NULL, NULL),
(3728, 408, 'Mominpur', 'মোমিনপুর', 'mominpurup.dinajpur.gov.bd', NULL, NULL),
(3729, 408, 'Mostofapur', 'মোস্তফাপুর', 'mostofapurup.dinajpur.gov.bd', NULL, NULL),
(3730, 408, 'Habra', 'হাবড়া', 'habraup.dinajpur.gov.bd', NULL, NULL),
(3731, 408, 'Hamidpur', 'হামিদপুর', 'hamidpurup.dinajpur.gov.bd', NULL, NULL),
(3732, 408, 'Harirampur', 'হরিরামপুর', 'harirampurup.dinajpur.gov.bd', NULL, NULL),
(3733, 409, 'Nafanagar', 'নাফানগর', 'nafanagarup.dinajpur.gov.bd', NULL, NULL),
(3734, 409, 'Eshania', 'ঈশানিয়া', 'eshaniaup.dinajpur.gov.bd', NULL, NULL),
(3735, 409, 'Atgaon', 'আটগাঁও', 'atgaonup.dinajpur.gov.bd', NULL, NULL),
(3736, 409, 'Shatail', 'ছাতইল', 'shatailup.dinajpur.gov.bd', NULL, NULL),
(3737, 409, 'Rongaon', 'রনগাঁও', 'rongaonup.dinajpur.gov.bd', NULL, NULL),
(3738, 409, 'Murshidhat', 'মুর্শিদহাট', 'murshidhatup.dinajpur.gov.bd', NULL, NULL),
(3739, 410, 'Dabor', 'ডাবোর', 'daborup.dinajpur.gov.bd', NULL, NULL),
(3740, 410, 'Rasulpur', 'রসুলপুর', 'rasulpurup.dinajpur.gov.bd', NULL, NULL),
(3741, 410, 'Mukundapur', 'মুকুন্দপুর', 'mukundapurup.dinajpur.gov.bd', NULL, NULL),
(3742, 410, 'Targao', 'তারগাঁও', 'targaoup.dinajpur.gov.bd', NULL, NULL),
(3743, 410, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.dinajpur.gov.bd', NULL, NULL),
(3744, 410, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.dinajpur.gov.bd', NULL, NULL),
(3745, 411, 'Aloary', 'এলুয়াড়ী', 'aloaryup.dinajpur.gov.bd', NULL, NULL),
(3746, 411, 'Aladipur', 'আলাদিপুর', 'aladipurup.dinajpur.gov.bd', NULL, NULL),
(3747, 411, 'Kagihal', 'কাজীহাল', 'kagihalup.dinajpur.gov.bd', NULL, NULL),
(3748, 411, 'Bethdighi', 'বেতদিঘী', 'bethdighiup.dinajpur.gov.bd', NULL, NULL),
(3749, 411, 'Khairbari', 'খয়েরবাড়ী', 'khairbariup.dinajpur.gov.bd', NULL, NULL),
(3750, 411, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.dinajpur.gov.bd', NULL, NULL),
(3751, 411, 'Shibnagor', 'শিবনগর', 'shibnagorup.dinajpur.gov.bd', NULL, NULL),
(3752, 412, 'Chealgazi', 'চেহেলগাজী', 'chealgaziup.dinajpur.gov.bd', NULL, NULL),
(3753, 412, 'Sundorbon', 'সুন্দরবন', 'sundorbonup.dinajpur.gov.bd', NULL, NULL),
(3754, 412, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.dinajpur.gov.bd', NULL, NULL),
(3755, 412, 'Shekpura', 'শেখপুরা', 'shekpuraup.dinajpur.gov.bd', NULL, NULL),
(3756, 412, 'Shashora', 'শশরা', 'shashoraup.dinajpur.gov.bd', NULL, NULL),
(3757, 412, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.dinajpur.gov.bd', NULL, NULL),
(3758, 412, 'Uthrail', 'উথরাইল', 'uthrailup.dinajpur.gov.bd', NULL, NULL),
(3759, 412, 'Sankarpur', 'শংকরপুর', 'sankarpurup.dinajpur.gov.bd', NULL, NULL),
(3760, 412, 'Askorpur', 'আস্করপুর', 'askorpurup.dinajpur.gov.bd', NULL, NULL),
(3761, 412, 'Kamalpur', 'কমলপুর', 'kamalpurup.dinajpur.gov.bd', NULL, NULL),
(3762, 413, 'Alihat', 'আলীহাট', 'alihatup.dinajpur.gov.bd', NULL, NULL),
(3763, 413, 'Khattamadobpara', 'খট্টামাধবপাড়া', 'khattamadobparaup.dinajpur.gov.bd', NULL, NULL),
(3764, 413, 'Boalder', 'বোয়ালদার', 'boalderup.dinajpur.gov.bd', NULL, NULL),
(3765, 414, 'Alokjhari', 'আলোকঝাড়ী', 'alokjhariup.dinajpur.gov.bd', NULL, NULL),
(3766, 414, 'Bherbheri', 'ভেড়ভেড়ী', 'bherbheriup.dinajpur.gov.bd', NULL, NULL),
(3767, 414, 'Angarpara', 'আঙ্গারপাড়া', 'angarparaup.dinajpur.gov.bd', NULL, NULL),
(3768, 414, 'Goaldihi', 'গোয়ালডিহি', 'goaldihiup.dinajpur.gov.bd', NULL, NULL),
(3769, 414, 'Bhabki', 'ভাবকী', 'bhabkiup.dinajpur.gov.bd', NULL, NULL),
(3770, 414, 'Khamarpara', 'খামারপাড়া', 'khamarparaup.dinajpur.gov.bd', NULL, NULL),
(3771, 415, 'Azimpur', 'আজিমপুর', 'azimpurup.dinajpur.gov.bd', NULL, NULL),
(3772, 415, 'Farakkabad', 'ফরাক্কাবাদ', 'farakkabadup.dinajpur.gov.bd', NULL, NULL),
(3773, 415, 'Dhamoir', 'ধামইর', 'dhamoirup.dinajpur.gov.bd', NULL, NULL),
(3774, 415, 'Shohorgram', 'শহরগ্রাম', 'shohorgramup.dinajpur.gov.bd', NULL, NULL),
(3775, 415, 'Birol', 'বিরল', 'birolup.dinajpur.gov.bd', NULL, NULL),
(3776, 415, 'Bhandra', 'ভান্ডারা', 'bhandraup.dinajpur.gov.bd', NULL, NULL),
(3777, 415, 'Bijora', 'বিজোড়া', 'bijoraup.dinajpur.gov.bd', NULL, NULL),
(3778, 415, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.dinajpur.gov.bd', NULL, NULL),
(3779, 415, 'Mongalpur', 'মঙ্গলপুর', 'mongalpurup.dinajpur.gov.bd', NULL, NULL),
(3780, 415, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.dinajpur.gov.bd', NULL, NULL),
(3781, 415, 'Rajarampur', 'রাজারামপুর', 'rajarampurup.dinajpur.gov.bd', NULL, NULL),
(3782, 416, 'Nashratpur', 'নশরতপুর', 'nashratpurup.dinajpur.gov.bd', NULL, NULL),
(3783, 416, 'Satnala', 'সাতনালা', 'satnalaup.dinajpur.gov.bd', NULL, NULL),
(3784, 416, 'Fatejangpur', 'ফতেজংপুর', 'fatejangpurup.dinajpur.gov.bd', NULL, NULL),
(3785, 416, 'Isobpur', 'ইসবপুর', 'isobpurup.dinajpur.gov.bd', NULL, NULL),
(3786, 416, 'Abdulpur', 'আব্দুলপুর', 'abdulpurup.dinajpur.gov.bd', NULL, NULL),
(3787, 416, 'Amarpur', 'অমরপুর', 'amarpurup.dinajpur.gov.bd', NULL, NULL),
(3788, 416, 'Auliapukur', 'আউলিয়াপুকুর', 'auliapukurup.dinajpur.gov.bd', NULL, NULL),
(3789, 416, 'Saitara', 'সাইতারা', 'saitaraup.dinajpur.gov.bd', NULL, NULL),
(3790, 416, 'Viail', 'ভিয়াইল', 'viailup.dinajpur.gov.bd', NULL, NULL),
(3791, 416, 'Punotti', 'পুনট্টি', 'punottiup.dinajpur.gov.bd', NULL, NULL),
(3792, 416, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.dinajpur.gov.bd', NULL, NULL),
(3793, 416, 'Alokdihi', 'আলোকডিহি', 'alokdihiup.dinajpur.gov.bd', NULL, NULL),
(3794, 417, 'Rajpur', 'রাজপুর', 'rajpurup.lalmonirhat.gov.bd', NULL, NULL),
(3795, 417, 'Harati', 'হারাটি', 'haratiup.lalmonirhat.gov.bd', NULL, NULL),
(3796, 417, 'Mogolhat', 'মোগলহাট', 'mogolhatup.lalmonirhat.gov.bd', NULL, NULL),
(3797, 417, 'Gokunda', 'গোকুন্ডা', 'gokundaup.lalmonirhat.gov.bd', NULL, NULL),
(3798, 417, 'Barobari', 'বড়বাড়ী', 'barobariup.lalmonirhat.gov.bd', NULL, NULL),
(3799, 417, 'Kulaghat', 'কুলাঘাট', 'kulaghatup.lalmonirhat.gov.bd', NULL, NULL),
(3800, 417, 'Mohendranagar', 'মহেন্দ্রনগর', 'mohendranagarup.lalmonirhat.gov.bd', NULL, NULL),
(3801, 417, 'Khuniagachh', 'খুনিয়াগাছ', 'khuniagachhup.lalmonirhat.gov.bd', NULL, NULL),
(3802, 417, 'Panchagram', 'পঞ্চগ্রাম', 'panchagramup.lalmonirhat.gov.bd', NULL, NULL),
(3803, 418, 'Bhotmari', 'ভোটমারী', 'bhotmariup.lalmonirhat.gov.bd', NULL, NULL),
(3804, 418, 'Modati', 'মদাতী', 'modatiup.lalmonirhat.gov.bd', NULL, NULL),
(3805, 418, 'Dologram', 'দলগ্রাম', 'dologramup.lalmonirhat.gov.bd', NULL, NULL),
(3806, 418, 'Tushbhandar', 'তুষভান্ডার', 'tushbhandarup.lalmonirhat.gov.bd', NULL, NULL),
(3807, 418, 'Goral', 'গোড়ল', 'goralup.lalmonirhat.gov.bd', NULL, NULL),
(3808, 418, 'Chondropur', 'চন্দ্রপুর', 'chondropurup.lalmonirhat.gov.bd', NULL, NULL),
(3809, 418, 'Cholbola', 'চলবলা', 'cholbolaup.lalmonirhat.gov.bd', NULL, NULL),
(3810, 418, 'Kakina', 'কাকিনা', 'kakinaup.lalmonirhat.gov.bd', NULL, NULL),
(3811, 419, 'Barokhata', 'বড়খাতা', 'barokhataup.lalmonirhat.gov.bd', NULL, NULL),
(3812, 419, 'Goddimari', 'গড্ডিমারী', 'goddimariup.lalmonirhat.gov.bd', NULL, NULL),
(3813, 419, 'Singimari', 'সিংগীমারী', 'singimariup.lalmonirhat.gov.bd', NULL, NULL),
(3814, 419, 'Tongvhanga', 'টংভাঙ্গা', 'tongvhangaup.lalmonirhat.gov.bd', NULL, NULL),
(3815, 419, 'Sindurna', 'সিন্দুর্ণা', 'sindurnaup.lalmonirhat.gov.bd', NULL, NULL),
(3816, 419, 'Paticapara', 'পাটিকাপাড়া', 'paticaparaup.lalmonirhat.gov.bd', NULL, NULL),
(3817, 419, 'Nowdabas', 'নওদাবাস', 'nowdabasup.lalmonirhat.gov.bd', NULL, NULL),
(3818, 419, 'Gotamari', 'গোতামারী', 'gotamariup.lalmonirhat.gov.bd', NULL, NULL),
(3819, 419, 'Vhelaguri', 'ভেলাগুড়ি', 'vhelaguriup.lalmonirhat.gov.bd', NULL, NULL),
(3820, 419, 'Shaniajan', 'সানিয়াজান', 'shaniajanup.lalmonirhat.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(3821, 419, 'Fakirpara', 'ফকিরপাড়া', 'fakirparaup.lalmonirhat.gov.bd', NULL, NULL),
(3822, 419, 'Dawabari', 'ডাউয়াবাড়ী', 'dawabariup.lalmonirhat.gov.bd', NULL, NULL),
(3823, 420, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.lalmonirhat.gov.bd', NULL, NULL),
(3824, 420, 'Patgram', 'পাটগ্রাম', 'patgramup.lalmonirhat.gov.bd', NULL, NULL),
(3825, 420, 'Jagatber', 'জগতবেড়', 'jagatberup.lalmonirhat.gov.bd', NULL, NULL),
(3826, 420, 'Kuchlibari', 'কুচলিবাড়ী', 'kuchlibariup.lalmonirhat.gov.bd', NULL, NULL),
(3827, 420, 'Jongra', 'জোংড়া', 'jongraup.lalmonirhat.gov.bd', NULL, NULL),
(3828, 420, 'Baura', 'বাউড়া', 'bauraup.lalmonirhat.gov.bd', NULL, NULL),
(3829, 420, 'Dahagram', 'দহগ্রাম', 'dahagramup.lalmonirhat.gov.bd', NULL, NULL),
(3830, 420, 'Burimari', 'বুড়িমারী', 'burimariup.lalmonirhat.gov.bd', NULL, NULL),
(3831, 421, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabariup.lalmonirhat.gov.bd', NULL, NULL),
(3832, 421, 'Bhadai', 'ভাদাই', 'bhadaiup.lalmonirhat.gov.bd', NULL, NULL),
(3833, 421, 'Kamlabari', 'কমলাবাড়ী', 'kamlabariup.lalmonirhat.gov.bd', NULL, NULL),
(3834, 421, 'Durgapur', 'দূর্গাপুর', 'durgapurup.lalmonirhat.gov.bd', NULL, NULL),
(3835, 421, 'Sarpukur', 'সারপুকুর', 'sarpukurup.lalmonirhat.gov.bd', NULL, NULL),
(3836, 421, 'Saptibari', 'সাপ্টিবাড়ী', 'saptibariup.lalmonirhat.gov.bd', NULL, NULL),
(3837, 421, 'Palashi', 'পলাশী', 'palashiup.lalmonirhat.gov.bd', NULL, NULL),
(3838, 421, 'Mohishkhocha', 'মহিষখোচা', 'mohishkhochaup.lalmonirhat.gov.bd', NULL, NULL),
(3839, 422, 'Kamarpukur', 'কামারপুকুর', 'kamarpukurup.nilphamari.gov.bd', NULL, NULL),
(3840, 422, 'Kasiram Belpukur', 'কাশিরাম বেলপুকুর', 'kasirambelpukurup.nilphamari.gov.bd', NULL, NULL),
(3841, 422, 'Bangalipur', 'বাঙ্গালীপুর', 'bangalipur.nilphamari.gov.bd', NULL, NULL),
(3842, 422, 'Botlagari', 'বোতলাগাড়ী', 'botlagariup.nilphamari.gov.bd', NULL, NULL),
(3843, 422, 'Khata Madhupur', 'খাতা মধুপুর', 'khatamadhupurup.nilphamari.gov.bd', NULL, NULL),
(3844, 423, 'Gomnati', 'গোমনাতি', 'gomnati.nilphamari.gov.bd', NULL, NULL),
(3845, 423, 'Bhogdaburi', 'ভোগডাবুড়ী', 'bhogdaburiup.nilphamari.gov.bd', NULL, NULL),
(3846, 423, 'Ketkibari', 'কেতকীবাড়ী', 'ketkibariup.nilphamari.gov.bd', NULL, NULL),
(3847, 423, 'Jorabari', 'জোড়াবাড়ী', 'jorabariup.nilphamari.gov.bd', NULL, NULL),
(3848, 423, 'Bamunia', 'বামুনীয়া', 'bamuniaup.nilphamari.gov.bd', NULL, NULL),
(3849, 423, 'Panga Motukpur', 'পাংগা মটকপুর', 'pangamotukpurup.nilphamari.gov.bd', NULL, NULL),
(3850, 423, 'Boragari', 'বোড়াগাড়ী', 'boragariup.nilphamari.gov.bd', NULL, NULL),
(3851, 423, 'Domar', 'ডোমার', 'domarup.nilphamari.gov.bd', NULL, NULL),
(3852, 423, 'Sonaray', 'সোনারায়', 'sonarayup2.nilphamari.gov.bd', NULL, NULL),
(3853, 423, 'Harinchara', 'হরিণচরা', 'harincharaup.nilphamari.gov.bd', NULL, NULL),
(3854, 424, 'Paschim Chhatnay', 'পশ্চিম ছাতনাই', 'paschimchhatnayup.nilphamari.gov.bd', NULL, NULL),
(3855, 424, 'Balapara', 'বালাপাড়া', 'balaparaup.nilphamari.gov.bd', NULL, NULL),
(3856, 424, 'Dimla Sadar', 'ডিমলা সদর', 'dimlasadarup.nilphamari.gov.bd', NULL, NULL),
(3857, 424, 'Khogakharibari', 'খগা খড়িবাড়ী', 'khogakharibariup.nilphamari.gov.bd', NULL, NULL),
(3858, 424, 'Gayabari', 'গয়াবাড়ী', 'gayabariup.nilphamari.gov.bd', NULL, NULL),
(3859, 424, 'Noutara', 'নাউতারা', 'noutaraup.nilphamari.gov.bd', NULL, NULL),
(3860, 424, 'Khalisha Chapani', 'খালিশা চাপানী', 'khalishachapaniup.nilphamari.gov.bd', NULL, NULL),
(3861, 424, 'Jhunagach Chapani', 'ঝুনাগাছ চাপানী', 'jhunagachhchapaniup.nilphamari.gov.bd', NULL, NULL),
(3862, 424, 'Tepa Khribari', 'টেপা খরীবাড়ী', 'tepakhribariup.nilphamari.gov.bd', NULL, NULL),
(3863, 424, 'Purba Chhatnay', 'পুর্ব ছাতনাই', 'purbachhatnayup.nilphamari.gov.bd', NULL, NULL),
(3864, 425, 'Douabari', 'ডাউয়াবাড়ী', 'douabariup.nilphamari.gov.bd', NULL, NULL),
(3865, 425, 'Golmunda', 'গোলমুন্ডা', 'golmunda.nilphamari.gov.bd', NULL, NULL),
(3866, 425, 'Balagram', 'বালাগ্রাম', 'balagram.nilphamari.gov.bd', NULL, NULL),
(3867, 425, 'Golna', 'গোলনা', 'golna.nilphamari.gov.bd', NULL, NULL),
(3868, 425, 'Dharmapal', 'ধর্মপাল', 'dharmapal.nilphamari.gov.bd', NULL, NULL),
(3869, 425, 'Simulbari', 'শিমুলবাড়ী', 'simulbari.nilphamari.gov.bd', NULL, NULL),
(3870, 425, 'Mirganj', 'মীরগঞ্জ', 'mirganj.nilphamari.gov.bd', NULL, NULL),
(3871, 425, 'Kathali', 'কাঠালী', 'kathaliup.nilphamari.gov.bd', NULL, NULL),
(3872, 425, 'Khutamara', 'খুটামারা', 'khutamaraup.nilphamari.gov.bd', NULL, NULL),
(3873, 425, 'Shaulmari', 'শৌলমারী', 'shaulmariup.nilphamari.gov.bd', NULL, NULL),
(3874, 425, 'Kaimari', 'কৈমারী', 'kaimariup.nilphamari.gov.bd', NULL, NULL),
(3875, 426, 'Barabhita', 'বড়ভিটা', 'barabhitaup.nilphamari.gov.bd', NULL, NULL),
(3876, 426, 'Putimari', 'পুটিমারী', 'putimariup.nilphamari.gov.bd', NULL, NULL),
(3877, 426, 'Nitai', 'নিতাই', 'nitaiup.nilphamari.gov.bd', NULL, NULL),
(3878, 426, 'Bahagili', 'বাহাগিলি', 'bahagiliup.nilphamari.gov.bd', NULL, NULL),
(3879, 426, 'Chandkhana', 'চাঁদখানা', 'chandkhanaup.nilphamari.gov.bd', NULL, NULL),
(3880, 426, 'Kishoreganj', 'কিশোরগঞ্জ', 'kishoreganjup.nilphamari.gov.bd', NULL, NULL),
(3881, 426, 'Ranachandi', 'রনচন্ডি', 'ranachandiup.nilphamari.gov.bd', NULL, NULL),
(3882, 426, 'Garagram', 'গাড়াগ্রাম', 'garagramup.nilphamari.gov.bd', NULL, NULL),
(3883, 426, 'Magura', 'মাগুরা', 'maguraup.nilphamari.gov.bd', NULL, NULL),
(3884, 427, 'Chaora Bargacha', 'চওড়া বড়গাছা', 'chaorabargachaup.nilphamari.gov.bd', NULL, NULL),
(3885, 427, 'Gorgram', 'গোড়গ্রাম', 'gorgramup.nilphamari.gov.bd', NULL, NULL),
(3886, 427, 'Khoksabari', 'খোকসাবাড়ী', 'khoksabariup.nilphamari.gov.bd', NULL, NULL),
(3887, 427, 'Palasbari', 'পলাশবাড়ী', 'palasbariup.nilphamari.gov.bd', NULL, NULL),
(3888, 427, 'Ramnagar', 'রামনগর', 'ramnagarup.nilphamari.gov.bd', NULL, NULL),
(3889, 427, 'Kachukata', 'কচুকাটা', 'kachukataup.nilphamari.gov.bd', NULL, NULL),
(3890, 427, 'Panchapukur', 'পঞ্চপুকুর', 'panchapukurup.nilphamari.gov.bd', NULL, NULL),
(3891, 427, 'Itakhola', 'ইটাখোলা', 'itakholaup.nilphamari.gov.bd', NULL, NULL),
(3892, 427, 'Kundapukur', 'কুন্দপুকুর', 'kundapukur.nilphamari.gov.bd', NULL, NULL),
(3893, 427, 'Sonaray', 'সোনারায়', 'sonaray.nilphamari.gov.bd', NULL, NULL),
(3894, 427, 'Songalsi', 'সংগলশী', 'songalsiup.nilphamari.gov.bd', NULL, NULL),
(3895, 427, 'Charaikhola', 'চড়াইখোলা', 'charaikhola.nilphamari.gov.bd', NULL, NULL),
(3896, 427, 'Chapra Sarnjami', 'চাপড়া সরঞ্জানী', 'chaprasarnjami.nilphamari.gov.bd', NULL, NULL),
(3897, 427, 'Lakshmicha', 'লক্ষ্মীচাপ', 'lakshmichapup.nilphamari.gov.bd', NULL, NULL),
(3898, 427, 'Tupamari', 'টুপামারী', 'tupamariup.nilphamari.gov.bd', NULL, NULL),
(3899, 428, 'Rasulpur', 'রসুলপুর', 'rasulpurup.gaibandha.gov.bd', NULL, NULL),
(3900, 428, 'Noldanga', 'নলডাঙ্গা', 'noldangaup.gaibandha.gov.bd', NULL, NULL),
(3901, 428, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.gaibandha.gov.bd', NULL, NULL),
(3902, 428, 'Jamalpur', 'জামালপুর', 'jamalpurup.gaibandha.gov.bd', NULL, NULL),
(3903, 428, 'Faridpur', 'ফরিদপুর', 'faridpurup.gaibandha.gov.bd', NULL, NULL),
(3904, 428, 'Dhaperhat', 'ধাপেরহাট', 'dhaperhatup.gaibandha.gov.bd', NULL, NULL),
(3905, 428, 'Idilpur', 'ইদিলপুর', 'idilpurup.gaibandha.gov.bd', NULL, NULL),
(3906, 428, 'Vatgram', 'ভাতগ্রাম', 'vatgramup.gaibandha.gov.bd', NULL, NULL),
(3907, 428, 'Bongram', 'বনগ্রাম', 'bongramup.gaibandha.gov.bd', NULL, NULL),
(3908, 428, 'Kamarpara', 'কামারপাড়া', 'kamarparaup.gaibandha.gov.bd', NULL, NULL),
(3909, 428, 'Khodkomor', 'খোদকোমরপুর', 'khodkomorup.gaibandha.gov.bd', NULL, NULL),
(3910, 429, 'Laxmipur', 'লক্ষ্মীপুর', 'laxmipurup.gaibandha.gov.bd', NULL, NULL),
(3911, 429, 'Malibari', 'মালীবাড়ী', 'malibariup.gaibandha.gov.bd', NULL, NULL),
(3912, 429, 'Kuptola', 'কুপতলা', 'kuptolaup.gaibandha.gov.bd', NULL, NULL),
(3913, 429, 'Shahapara', 'সাহাপাড়া', 'shahaparaup.gaibandha.gov.bd', NULL, NULL),
(3914, 429, 'Ballamjhar', 'বল্লমঝাড়', 'ballamjharup.gaibandha.gov.bd', NULL, NULL),
(3915, 429, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.gaibandha.gov.bd', NULL, NULL),
(3916, 429, 'Badiakhali', 'বাদিয়াখালী', 'badiakhaliup.gaibandha.gov.bd', NULL, NULL),
(3917, 429, 'Boali', 'বোয়ালী', 'boaliup.gaibandha.gov.bd', NULL, NULL),
(3918, 429, 'Ghagoa', 'ঘাগোয়া', 'ghagoaup.gaibandha.gov.bd', NULL, NULL),
(3919, 429, 'Gidari', 'গিদারী', 'gidariup.gaibandha.gov.bd', NULL, NULL),
(3920, 429, 'Kholahati', 'খোলাহাটী', 'kholahatiup.gaibandha.gov.bd', NULL, NULL),
(3921, 429, 'Mollarchar', 'মোল্লারচর', 'mollarcharup.gaibandha.gov.bd', NULL, NULL),
(3922, 429, 'Kamarjani', 'কামারজানি', 'kamarjaniup.gaibandha.gov.bd', NULL, NULL),
(3923, 430, 'Kishoregari', 'কিশোরগাড়ী', 'kishoregariup.gaibandha.gov.bd', NULL, NULL),
(3924, 430, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.gaibandha.gov.bd', NULL, NULL),
(3925, 430, 'Palashbari', 'পলাশবাড়ী', 'palashbariup.gaibandha.gov.bd', NULL, NULL),
(3926, 430, 'Barisal', 'বরিশাল', 'barisalup.gaibandha.gov.bd', NULL, NULL),
(3927, 430, 'Mohdipur', 'মহদীপুর', 'mohdipurup.gaibandha.gov.bd', NULL, NULL),
(3928, 430, 'Betkapa', 'বেতকাপা', 'betkapaup.gaibandha.gov.bd', NULL, NULL),
(3929, 430, 'Pobnapur', 'পবনাপুর', 'pobnapurup.gaibandha.gov.bd', NULL, NULL),
(3930, 430, 'Monohorpur', 'মনোহরপুর', 'monohorpurup.gaibandha.gov.bd', NULL, NULL),
(3931, 430, 'Harinathpur', 'হরিণাথপুর', 'harinathpurup.gaibandha.gov.bd', NULL, NULL),
(3932, 431, 'Padumsahar', 'পদুমশহর', 'padumsaharup.gaibandha.gov.bd', NULL, NULL),
(3933, 431, 'Varotkhali', 'ভরতখালী', 'varotkhaliup.gaibandha.gov.bd', NULL, NULL),
(3934, 431, 'Saghata', 'সাঘাটা', 'saghataup.gaibandha.gov.bd', NULL, NULL),
(3935, 431, 'Muktinagar', 'মুক্তিনগর', 'muktinagarup.gaibandha.gov.bd', NULL, NULL),
(3936, 431, 'Kachua', 'কচুয়া', 'kachuaup.gaibandha.gov.bd', NULL, NULL),
(3937, 431, 'Ghuridah', 'ঘুরিদহ', 'ghuridahup.gaibandha.gov.bd', NULL, NULL),
(3938, 431, 'Holdia', 'হলদিয়া', 'holdiaup.gaibandha.gov.bd', NULL, NULL),
(3939, 431, 'Jumarbari', 'জুমারবাড়ী', 'jumarbariup.gaibandha.gov.bd', NULL, NULL),
(3940, 431, 'Kamalerpara', 'কামালেরপাড়া', 'kamalerparaup.gaibandha.gov.bd', NULL, NULL),
(3941, 431, 'Bonarpara', 'বোনারপাড়া', 'bonarparaup.gaibandha.gov.bd', NULL, NULL),
(3942, 432, 'Kamdia', 'কামদিয়া', 'kamdiaup.gaibandha.gov.bd', NULL, NULL),
(3943, 432, 'Katabari', 'কাটাবাড়ী', 'katabariup.gaibandha.gov.bd', NULL, NULL),
(3944, 432, 'Shakhahar', 'শাখাহার', 'shakhaharup.gaibandha.gov.bd', NULL, NULL),
(3945, 432, 'Rajahar', 'রাজাহার', 'rajaharup.gaibandha.gov.bd', NULL, NULL),
(3946, 432, 'Sapmara', 'সাপমারা', 'sapmaraup.gaibandha.gov.bd', NULL, NULL),
(3947, 432, 'Dorbosto', 'দরবস্ত ইয়নিয়ন', 'dorbostoup.gaibandha.gov.bd', NULL, NULL),
(3948, 432, 'Talukkanupur', 'তালুককানুপুর', 'talukkanupurup.gaibandha.gov.bd', NULL, NULL),
(3949, 432, 'Nakai', 'নাকাই', 'nakaiup.gaibandha.gov.bd', NULL, NULL),
(3950, 432, 'Harirampur', 'হরিরামপুর', 'harirampurup.gaibandha.gov.bd', NULL, NULL),
(3951, 432, 'Rakhalburuj', 'রাখালবুরুজ', 'rakhalburujup.gaibandha.gov.bd', NULL, NULL),
(3952, 432, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.gaibandha.gov.bd', NULL, NULL),
(3953, 432, 'Gumaniganj', 'গুমানীগঞ্জ', 'gumaniganjup.gaibandha.gov.bd', NULL, NULL),
(3954, 432, 'Kamardoho', 'কামারদহ', 'kamardohoup.gaibandha.gov.bd', NULL, NULL),
(3955, 432, 'Kochasahar', 'কোচাশহর', 'kochasaharup.gaibandha.gov.bd', NULL, NULL),
(3956, 432, 'Shibpur', 'শিবপুর', 'shibpurup.gaibandha.gov.bd', NULL, NULL),
(3957, 432, 'Mahimaganj', 'মহিমাগঞ্জ', 'mahimaganjup.gaibandha.gov.bd', NULL, NULL),
(3958, 432, 'Shalmara', 'শালমারা', 'shalmaraup.gaibandha.gov.bd', NULL, NULL),
(3959, 433, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.gaibandha.gov.bd', NULL, NULL),
(3960, 433, 'Sonaroy', 'সোনারায়', 'sonaroyup.gaibandha.gov.bd', NULL, NULL),
(3961, 433, 'Tarapur', 'তারাপুর', 'tarapurup.gaibandha.gov.bd', NULL, NULL),
(3962, 433, 'Belka', 'বেলকা', 'belkaup.gaibandha.gov.bd', NULL, NULL),
(3963, 433, 'Dohbond', 'দহবন্দ', 'dohbondup.gaibandha.gov.bd', NULL, NULL),
(3964, 433, 'Sorbanondo', 'সর্বানন্দ', 'sorbanondoup.gaibandha.gov.bd', NULL, NULL),
(3965, 433, 'Ramjibon', 'রামজীবন', 'ramjibonup.gaibandha.gov.bd', NULL, NULL),
(3966, 433, 'Dhopadanga', 'ধোপাডাঙ্গা', 'dhopadangaup.gaibandha.gov.bd', NULL, NULL),
(3967, 433, 'Chaporhati', 'ছাপরহাটী', 'chaporhatiup.gaibandha.gov.bd', NULL, NULL),
(3968, 433, 'Shantiram', 'শান্তিরাম', 'shantiramup.gaibandha.gov.bd', NULL, NULL),
(3969, 433, 'Konchibari', 'কঞ্চিবাড়ী', 'konchibariup.gaibandha.gov.bd', NULL, NULL),
(3970, 433, 'Sreepur', 'শ্রীপুর', 'sreepurup.gaibandha.gov.bd', NULL, NULL),
(3971, 433, 'Chandipur', 'চন্ডিপুর', 'chandipurup.gaibandha.gov.bd', NULL, NULL),
(3972, 433, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gaibandha.gov.bd', NULL, NULL),
(3973, 433, 'Haripur', 'হরিপুর', 'haripurup.gaibandha.gov.bd', NULL, NULL),
(3974, 434, 'Kanchipara', 'কঞ্চিপাড়া', 'kanchiparaup.gaibandha.gov.bd', NULL, NULL),
(3975, 434, 'Uria', 'উড়িয়া', 'uriaup.gaibandha.gov.bd', NULL, NULL),
(3976, 434, 'Udakhali', 'উদাখালী', 'udakhaliup.gaibandha.gov.bd', NULL, NULL),
(3977, 434, 'Gazaria', 'গজারিয়া', 'gazariaup.gaibandha.gov.bd', NULL, NULL),
(3978, 434, 'Phulchari', 'ফুলছড়ি', 'phulchariup.gaibandha.gov.bd', NULL, NULL),
(3979, 434, 'Erendabari', 'এরেন্ডাবাড়ী', 'erendabariup.gaibandha.gov.bd', NULL, NULL),
(3980, 434, 'Fazlupur', 'ফজলুপুর', 'fazlupurup.gaibandha.gov.bd', NULL, NULL),
(3981, 435, 'Ruhea', 'রুহিয়া', 'ruheaup.thakurgaon.gov.bd', NULL, NULL),
(3982, 435, 'Akhanagar', 'আখানগর', 'akhanagarup.thakurgaon.gov.bd', NULL, NULL),
(3983, 435, 'Ahcha', 'আকচা', 'ahchaup.thakurgaon.gov.bd', NULL, NULL),
(3984, 435, 'Baragaon', 'বড়গাঁও', 'baragaonup.thakurgaon.gov.bd', NULL, NULL),
(3985, 435, 'Balia', 'বালিয়া', 'baliaup.thakurgaon.gov.bd', NULL, NULL),
(3986, 435, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.thakurgaon.gov.bd', NULL, NULL),
(3987, 435, 'Chilarang', 'চিলারং', 'chilarangup.thakurgaon.gov.bd', NULL, NULL),
(3988, 435, 'Rahimanpur', 'রহিমানপুর', 'rahimanpurup.thakurgaon.gov.bd', NULL, NULL),
(3989, 435, 'Roypur', 'রায়পুর', 'roypurup.thakurgaon.gov.bd', NULL, NULL),
(3990, 435, 'Jamalpur', 'জামালপুর', 'jamalpurup.thakurgaon.gov.bd', NULL, NULL),
(3991, 435, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.thakurgaon.gov.bd', NULL, NULL),
(3992, 435, 'Salandar', 'সালন্দর', 'salandarup.thakurgaon.gov.bd', NULL, NULL),
(3993, 435, 'Gareya', 'গড়েয়া', 'gareyaup.thakurgaon.gov.bd', NULL, NULL),
(3994, 435, 'Rajagaon', 'রাজাগাঁও', 'rajagaonup.thakurgaon.gov.bd', NULL, NULL),
(3995, 435, 'Debipur', 'দেবীপুর', 'debipurup.thakurgaon.gov.bd', NULL, NULL),
(3996, 435, 'Nargun', 'নারগুন', 'nargunup.thakurgaon.gov.bd', NULL, NULL),
(3997, 435, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpurup.thakurgaon.gov.bd', NULL, NULL),
(3998, 435, 'Sukhanpukhari', 'শুখানপুকুরী', 'sukhanpukhariup.thakurgaon.gov.bd', NULL, NULL),
(3999, 435, 'Begunbari', 'বেগুনবাড়ী', 'begunbariup.thakurgaon.gov.bd', NULL, NULL),
(4000, 435, 'Ruhia Pashchim', 'রুহিয়া পশ্চিম', 'ruhiapashchimup.thakurgaon.gov.bd', NULL, NULL),
(4001, 435, 'Dholarhat', 'ঢোলারহাট', 'dholarhatup.thakurgaon.gov.bd', NULL, NULL),
(4002, 436, 'Bhomradaha', 'ভোমরাদহ', 'bhomradahaup.thakurgaon.gov.bd', NULL, NULL),
(4003, 436, 'Kosharaniganj', 'কোষারাণীগঞ্জ', 'kosharaniganjup.thakurgaon.gov.bd', NULL, NULL),
(4004, 436, 'Khangaon', 'খনগাঁও', 'khangaonup.thakurgaon.gov.bd', NULL, NULL),
(4005, 436, 'Saidpur', 'সৈয়দপুর', 'saidpurup.thakurgaon.gov.bd', NULL, NULL),
(4006, 436, 'Pirganj', 'পীরগঞ্জ', 'pirganjup.thakurgaon.gov.bd', NULL, NULL),
(4007, 436, 'Hajipur', 'হাজীপুর', 'hajipurup.thakurgaon.gov.bd', NULL, NULL),
(4008, 436, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.thakurgaon.gov.bd', NULL, NULL),
(4009, 436, 'Sengaon', 'সেনগাঁও', 'sengaonup.thakurgaon.gov.bd', NULL, NULL),
(4010, 436, 'Jabarhat', 'জাবরহাট', 'jabarhatup.thakurgaon.gov.bd', NULL, NULL),
(4011, 436, 'Bairchuna', 'বৈরচুনা', 'bairchunaup.thakurgaon.gov.bd', NULL, NULL),
(4012, 437, 'Dhormogarh', 'ধর্মগড়', 'dhormogarhup.thakurgaon.gov.bd', NULL, NULL),
(4013, 437, 'Nekmorod', 'নেকমরদ', 'nekmorodup.thakurgaon.gov.bd', NULL, NULL),
(4014, 437, 'Hosengaon', 'হোসেনগাঁও', 'hosengaonup.thakurgaon.gov.bd', NULL, NULL),
(4015, 437, 'Lehemba', 'লেহেম্বা', 'lehembaup.thakurgaon.gov.bd', NULL, NULL),
(4016, 437, 'Bachor', 'বাচোর', 'bachorup.thakurgaon.gov.bd', NULL, NULL),
(4017, 437, 'Kashipur', 'কাশিপুর', 'kashipurup.thakurgaon.gov.bd', NULL, NULL),
(4018, 437, 'Ratore', 'রাতোর', 'ratoreup.thakurgaon.gov.bd', NULL, NULL),
(4019, 437, 'Nonduar', 'নন্দুয়ার', 'nonduarup.thakurgaon.gov.bd', NULL, NULL),
(4020, 438, 'Gedura', 'গেদুড়া', 'geduraup.thakurgaon.gov.bd', NULL, NULL),
(4021, 438, 'Amgaon', 'আমগাঁও', 'amgaonup.thakurgaon.gov.bd', NULL, NULL),
(4022, 438, 'Bakua', 'বকুয়া', 'bakuaup.thakurgaon.gov.bd', NULL, NULL),
(4023, 438, 'Dangipara', 'ডাঙ্গীপাড়া', 'dangiparaup.thakurgaon.gov.bd', NULL, NULL),
(4024, 438, 'Haripur', 'হরিপুর', 'haripurup.thakurgaon.gov.bd', NULL, NULL),
(4025, 438, 'Bhaturia', 'ভাতুরিয়া', 'bhaturiaup.thakurgaon.gov.bd', NULL, NULL),
(4026, 439, 'Paria', 'পাড়িয়া', 'pariaup.thakurgaon.gov.bd', NULL, NULL),
(4027, 439, 'Charol', 'চারোল', 'charolup.thakurgaon.gov.bd', NULL, NULL),
(4028, 439, 'Dhontola', 'ধনতলা', 'dhontolaup.thakurgaon.gov.bd', NULL, NULL),
(4029, 439, 'Boropalashbari', 'বড়পলাশবাড়ী', 'boropalashbariup.thakurgaon.gov.bd', NULL, NULL),
(4030, 439, 'Duosuo', 'দুওসুও', 'duosuoup.thakurgaon.gov.bd', NULL, NULL),
(4031, 439, 'Vanor', 'ভানোর', 'vanorup.thakurgaon.gov.bd', NULL, NULL),
(4032, 439, 'Amjankhore', 'আমজানখোর', 'amjankhoreup.thakurgaon.gov.bd', NULL, NULL),
(4033, 439, 'Borobari', 'বড়বাড়ী', 'borobariup.thakurgaon.gov.bd', NULL, NULL),
(4034, 440, 'Mominpur', 'মমিনপুর', 'mominpurup.rangpur.gov.bd', NULL, NULL),
(4035, 440, 'Horidebpur', 'হরিদেবপুর', 'horidebpurup.rangpur.gov.bd', NULL, NULL),
(4036, 440, 'Uttam', 'উত্তম', 'uttamup.rangpur.gov.bd', NULL, NULL),
(4037, 440, 'Porshuram', 'পরশুরাম', 'porshuramup.rangpur.gov.bd', NULL, NULL),
(4038, 440, 'Topodhan', 'তপোধন', 'topodhanup.rangpur.gov.bd', NULL, NULL),
(4039, 440, 'Satgara', 'সাতগারা', 'satgaraup.rangpur.gov.bd', NULL, NULL),
(4040, 440, 'Rajendrapur', 'রাজেন্দ্রপুর', 'rajendrapurup.rangpur.gov.bd', NULL, NULL),
(4041, 440, 'Sadwapuskoroni', 'সদ্যপুস্করনী', 'sadwapuskoroniup.rangpur.gov.bd', NULL, NULL),
(4042, 440, 'Chandanpat', 'চন্দনপাট', 'chandanpatup.rangpur.gov.bd', NULL, NULL),
(4043, 440, 'Dorshona', 'দর্শানা', 'dorshonaup.rangpur.gov.bd', NULL, NULL),
(4044, 440, 'Tampat', 'তামপাট', 'tampatup.rangpur.gov.bd', NULL, NULL),
(4045, 441, 'Betgari', 'বেতগাড়ী', 'betgariup.rangpur.gov.bd', NULL, NULL),
(4046, 441, 'Kholeya', 'খলেয়া', 'kholeyaup.rangpur.gov.bd', NULL, NULL),
(4047, 441, 'Borobil', 'বড়বিল', 'borobilup.rangpur.gov.bd', NULL, NULL),
(4048, 441, 'Kolcondo', 'কোলকোন্দ', 'kolcondoup.rangpur.gov.bd', NULL, NULL),
(4049, 441, 'Gongachora', 'গংগাচড়া', 'gongachoraup.rangpur.gov.bd', NULL, NULL),
(4050, 441, 'Gojoghonta', 'গজঘন্টা', 'gojoghontaup.rangpur.gov.bd', NULL, NULL),
(4051, 441, 'Morneya', 'মর্ণেয়া', 'morneyaup.rangpur.gov.bd', NULL, NULL),
(4052, 441, 'Alambiditor', 'আলমবিদিতর', 'alambiditorup.rangpur.gov.bd', NULL, NULL),
(4053, 441, 'Lakkhitari', 'লক্ষীটারী', 'lakkhitariup.rangpur.gov.bd', NULL, NULL),
(4054, 441, 'Nohali', 'নোহালী', 'nohaliup.rangpur.gov.bd', NULL, NULL),
(4055, 442, 'Kurshatara', 'কুর্শা', 'kurshataraup.rangpur.gov.bd', NULL, NULL),
(4056, 442, 'Alampur', 'আলমপুর', 'alampurup.rangpur.gov.bd', NULL, NULL),
(4057, 442, 'Soyar', 'সয়ার', 'soyarup.rangpur.gov.bd', NULL, NULL),
(4058, 442, 'Ikorchali', 'ইকরচালী', 'ikorchaliup.rangpur.gov.bd', NULL, NULL),
(4059, 442, 'Hariarkuthi', 'হাড়িয়ারকুঠি', 'hariarkuthiup.rangpur.gov.bd', NULL, NULL),
(4060, 443, 'Radhanagar', 'রাধানগর', 'radhanagarup.rangpur.gov.bd', NULL, NULL),
(4061, 443, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.rangpur.gov.bd', NULL, NULL),
(4062, 443, 'Modhupur', 'মধুপুর', 'modhupurup.rangpur.gov.bd', NULL, NULL),
(4063, 443, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.ranpur.gov.bd', NULL, NULL),
(4064, 443, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.rangpur.gov.bd', NULL, NULL),
(4065, 443, 'Kalupara', 'কালুপাড়া', 'kaluparaup.rangpur.gov.bd', NULL, NULL),
(4066, 443, 'Lohanipara', 'লোহানীপাড়া', 'lohaniparaup.rangpur.gov.bd', NULL, NULL),
(4067, 443, 'Gopalpur', 'গোপালপুর', 'gopalpurup.rangpur.gov.bd', NULL, NULL),
(4068, 443, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.rangpur.gov.bd', NULL, NULL),
(4069, 443, 'Ramnathpurupb', 'রামনাথপুর', 'ramnathpurupb.rangpur.gov.bd', NULL, NULL),
(4070, 444, 'Khoragach', 'খোরাগাছ', 'khoragachup.rangpur.gov.bd', NULL, NULL),
(4071, 444, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.rangpur.gov.bd', NULL, NULL),
(4072, 444, 'Payrabond', 'পায়রাবন্দ', 'payrabondup.rangpur.gov.bd', NULL, NULL),
(4073, 444, 'Vangni', 'ভাংনী', 'vangniup.rangpur.gov.bd', NULL, NULL),
(4074, 444, 'Balarhat', 'বালারহাট', 'balarhatup.rangpur.gov.bd', NULL, NULL),
(4075, 444, 'Kafrikhal', 'কাফ্রিখাল', 'kafrikhalup.rangpur.gov.bd', NULL, NULL),
(4076, 444, 'Latibpur', 'লতিবপুর', 'latibpurup.rangpur.gov.bd', NULL, NULL),
(4077, 444, 'Chengmari', 'চেংমারী', 'chengmariup.rangpur.gov.bd', NULL, NULL),
(4078, 444, 'Moyenpur', 'ময়েনপুর', 'moyenpurup.rangpur.gov.bd', NULL, NULL),
(4079, 444, 'Baluya Masimpur', 'বালুয়া মাসিমপুর', 'baluyamasimpurup.rangpur.gov.bd', NULL, NULL),
(4080, 444, 'Borobala', 'বড়বালা', 'borobalaup.rangpur.gov.bd', NULL, NULL),
(4081, 444, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.rangpur.gov.bd', NULL, NULL),
(4082, 444, 'Imadpur', 'ইমাদপুর', 'imadpurup.rangpur.gov.bd', NULL, NULL),
(4083, 444, 'Milonpur', 'মিলনপুর', 'milonpurup.rangpur.gov.bd', NULL, NULL),
(4084, 444, 'Mgopalpur', 'গোপালপুর', 'mgopalpurup.rangpur.gov.bd', NULL, NULL),
(4085, 444, 'Durgapur', 'দূর্গাপুর', 'durgapurup.rangpur.gov.bd', NULL, NULL),
(4086, 444, 'Boro Hazratpur', 'বড় হযরতপুর', 'borohazratpurup.rangpur.gov.bd', NULL, NULL),
(4087, 445, 'Chattracol', 'চৈত্রকোল', 'chattracolup.rangpur.gov.bd', NULL, NULL),
(4088, 445, 'Vendabari', 'ভেন্ডাবাড়ী', 'vendabariup.rangpur.gov.bd', NULL, NULL),
(4089, 445, 'Borodargah', 'বড়দরগাহ', 'borodargahup.rangpur.gov.bd', NULL, NULL),
(4090, 445, 'Kumedpur', 'কুমেদপুর', 'kumedpurup.rangpur.gov.bd', NULL, NULL),
(4091, 445, 'Modankhali', 'মদনখালী', 'modankhaliup.rangpur.gov.bd', NULL, NULL),
(4092, 445, 'Tukuria', 'টুকুরিয়া', 'tukuriaup.rangpur.gov.bd', NULL, NULL),
(4093, 445, 'Boro Alampur', 'বড় আলমপুর', 'boroalampurup.rangpur.gov.bd', NULL, NULL),
(4094, 445, 'Raypur', 'রায়পুর', 'raypurup.rangpur.gov.bd', NULL, NULL),
(4095, 445, 'Pirgonj', 'পীরগঞ্জ', 'pirgonjup.rangpur.gov.bd', NULL, NULL),
(4096, 445, 'Shanerhat', 'শানেরহাট', 'shanerhatup.rangpur.gov.bd', NULL, NULL),
(4097, 445, 'Mithipur', 'মিঠিপুর', 'mithipurup.rangpur.gov.bd', NULL, NULL),
(4098, 445, 'Ramnathpur', 'রামনাথপুর', 'ramnathpurup1.rangpur.gov.bd', NULL, NULL),
(4099, 445, 'Chattra', 'চতরা', 'chattraup.rangpur.gov.bd', NULL, NULL),
(4100, 445, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.rangpur.gov.bd', NULL, NULL),
(4101, 445, 'Pachgachi', 'পাঁচগাছী', 'pachgachiup.rangpur.gov.bd', NULL, NULL),
(4102, 446, 'Sarai', 'সারাই', 'saraiup.rangpur.gov.bd', NULL, NULL),
(4103, 446, 'Balapara', 'বালাপাড়া', 'balaparaup.rangpur.gov.bd', NULL, NULL),
(4104, 446, 'Shahidbag', 'শহীদবাগ', 'shahidbagup.rangpur.gov.bd', NULL, NULL),
(4105, 446, 'Haragach', 'হারাগাছ', 'haragachup.rangpur.gov.bd', NULL, NULL),
(4106, 446, 'Tepamodhupur', 'টেপামধুপুর', 'tepamodhupurup.rangpur.gov.bd', NULL, NULL),
(4107, 446, 'Kurshaupk', 'কুর্শা', 'kurshaupk.rangpur.gov.bd', NULL, NULL),
(4108, 447, 'Kollyani', 'কল্যাণী', 'kollyaniup.rangpur.gov.bd', NULL, NULL),
(4109, 447, 'Parul', 'পারুল', 'parulup.rangpur.gov.bd', NULL, NULL),
(4110, 447, 'Itakumari', 'ইটাকুমারী', 'itakumariup.rangpur.gov.bd', NULL, NULL),
(4111, 447, 'Saula', 'ছাওলা', 'saulaup.rangpur.gov.bd', NULL, NULL),
(4112, 447, 'Kandi', 'কান্দি', 'kandiup.rangpur.gov.bd', NULL, NULL),
(4113, 447, 'Pirgacha', 'পীরগাছা', 'pirgachaup.rangpur.gov.bd', NULL, NULL),
(4114, 447, 'Annodanagar', 'অন্নদানগর', 'annodanagarup.rangpur.gov.bd', NULL, NULL),
(4115, 447, 'Tambulpur', 'তাম্বুলপুর', 'tambulpurup.rangpur.gov.bd', NULL, NULL),
(4116, 447, 'Koikuri', 'কৈকুড়ী', 'koikuriup.rangpur.gov.bd', NULL, NULL),
(4117, 448, 'Holokhana', 'হলোখানা', 'holokhanaup.kurigram.gov.bd', NULL, NULL),
(4118, 448, 'Ghogadhoh', 'ঘোগাদহ', 'ghogadhohup.kurigram.gov.bd', NULL, NULL),
(4119, 448, 'Belgacha', 'বেলগাছা', 'belgachaup.kurigram.gov.bd', NULL, NULL),
(4120, 448, 'Mogolbasa', 'মোগলবাসা', 'mogolbasaup.kurigram.gov.bd', NULL, NULL),
(4121, 448, 'Panchgachi', 'পাঁচগাছি', 'panchgachiup.kurigram.gov.bd', NULL, NULL),
(4122, 448, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.kurigram.gov.bd', NULL, NULL),
(4123, 448, 'Kanthalbari', 'কাঁঠালবাড়ী', 'kanthalbariup.kurigram.gov.bd', NULL, NULL),
(4124, 448, 'Bhogdanga', 'ভোগডাঙ্গা', 'bhogdangaup.kurigram.gov.bd', NULL, NULL),
(4125, 449, 'Ramkhana', 'রামখানা', 'ramkhanaup.kurigram.gov.bd', NULL, NULL),
(4126, 449, 'Raigonj', 'রায়গঞ্জ', 'raigonjup.kurigram.gov.bd', NULL, NULL),
(4127, 449, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.kurigram.gov.bd', NULL, NULL),
(4128, 449, 'Berubari', 'বেরুবাড়ী', 'berubariup.kurigram.gov.bd', NULL, NULL),
(4129, 449, 'Sontaspur', 'সন্তোষপুর', 'sontaspurup.kurigram.gov.bd', NULL, NULL),
(4130, 449, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.kurigram.gov.bd', NULL, NULL),
(4131, 449, 'Newyashi', 'নেওয়াশী', 'newyashiup.kurigram.gov.bd', NULL, NULL),
(4132, 449, 'Bhitorbond', 'ভিতরবন্দ', 'bhitorbondup.kurigram.gov.bd', NULL, NULL),
(4133, 449, 'Kaligonj', 'কালীগঞ্জ', 'kaligonjup.kurigram.gov.bd', NULL, NULL),
(4134, 449, 'Noonkhawa', 'নুনখাওয়া', 'noonkhawaup.kurigram.gov.bd', NULL, NULL),
(4135, 449, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.kurigram.gov.bd', NULL, NULL),
(4136, 449, 'Kedar', 'কেদার', 'kedarup.kurigram.gov.bd', NULL, NULL),
(4137, 449, 'Kachakata', 'কঁচাকাঁটা', 'kachakataup.kurigram.gov.bd', NULL, NULL),
(4138, 449, 'Bollobherkhas', 'বল্লভেরখাস', 'bollobherkhasup.kurigram.gov.bd', NULL, NULL),
(4139, 450, 'Pathordubi', 'পাথরডুবি', 'pathordubiup.kurigram.gov.bd', NULL, NULL),
(4140, 450, 'Shilkhuri', 'শিলখুড়ি', 'shilkhuriup.kurigram.gov.bd', NULL, NULL),
(4141, 450, 'Tilai', 'তিলাই', 'tilaiup.kurigram.gov.bd', NULL, NULL),
(4142, 450, 'Paikarchara', 'পাইকেরছড়া', 'paikarcharaup.kurigram.gov.bd', NULL, NULL),
(4143, 450, 'Bhurungamari', 'ভূরুঙ্গামারী', 'bhurungamariup.kurigram.gov.bd', NULL, NULL),
(4144, 450, 'Joymonirhat', 'জয়মনিরহাট', 'joymonirhatup.kurigram.gov.bd', NULL, NULL),
(4145, 450, 'Andharirjhar', 'আন্ধারীরঝাড়', 'andharirjharup.kurigram.gov.bd', NULL, NULL),
(4146, 450, 'Char-Bhurungamari', 'চর-ভূরুঙ্গামারী', 'charbhurungamariup.kurigram.gov.bd', NULL, NULL),
(4147, 450, 'Bangasonahat', 'বঙ্গসোনাহাট', 'bangasonahatup.kurigram.gov.bd', NULL, NULL),
(4148, 450, 'Boldia', 'বলদিয়া', 'boldiaup.kurigram.gov.bd', NULL, NULL),
(4149, 451, 'Nawdanga', 'নাওডাঙ্গা', 'nawdangaup.kurigram.gov.bd', NULL, NULL),
(4150, 451, 'Shimulbari', 'শিমুলবাড়ী', 'shimulbariup.kurigram.gov.bd', NULL, NULL),
(4151, 451, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.kurigram.gov.bd', NULL, NULL),
(4152, 451, 'Baravita', 'বড়ভিটা', 'baravitaup.kurigram.gov.bd', NULL, NULL),
(4153, 451, 'Bhangamor', 'ভাঙ্গামোড়', 'bhangamorup.kurigram.gov.bd', NULL, NULL),
(4154, 451, 'Kashipur', 'কাশিপুর', 'kashipurup.kurigram.gov.bd', NULL, NULL),
(4155, 452, 'Chinai', 'ছিনাই', 'chinaiup.kurigram.gov.bd', NULL, NULL),
(4156, 452, 'Rajarhat', 'রাজারহাট', 'rajarhatup.kurigram.gov.bd', NULL, NULL),
(4157, 452, 'Nazimkhan', 'নাজিমখাঁন', 'nazimkhanup.kurigram.gov.bd', NULL, NULL),
(4158, 452, 'Gharialdanga', 'ঘড়িয়ালডাঙ্গা', 'gharialdangaup.kurigram.gov.bd', NULL, NULL),
(4159, 452, 'Chakirpashar', 'চাকিরপশার', 'chakirpasharup.kurigram.gov.bd', NULL, NULL),
(4160, 452, 'Biddanondo', 'বিদ্যানন্দ', 'biddanondoup.kurigram.gov.bd', NULL, NULL),
(4161, 452, 'Umarmajid', 'উমর মজিদ', 'umarmajidup.kurigram.gov.bd', NULL, NULL),
(4162, 453, 'Daldalia', 'দলদলিয়া', 'daldaliaup.kurigram.gov.bd', NULL, NULL),
(4163, 453, 'Durgapur', 'দুর্গাপুর', 'durgapurup.kurigram.gov.bd', NULL, NULL),
(4164, 453, 'Pandul', 'পান্ডুল', 'pandulup.kurigram.gov.bd', NULL, NULL),
(4165, 453, 'Buraburi', 'বুড়াবুড়ী', 'buraburiup.kurigram.gov.bd', NULL, NULL),
(4166, 453, 'Dharanibari', 'ধরণীবাড়ী', 'dharanibariup.kurigram.gov.bd', NULL, NULL),
(4167, 453, 'Dhamsreni', 'ধামশ্রেণী', 'dhamsreniup.kurigram.gov.bd', NULL, NULL),
(4168, 453, 'Gunaigas', 'গুনাইগাছ', 'gunaigasup.kurigram.gov.bd', NULL, NULL),
(4169, 453, 'Bazra', 'বজরা', 'bazraup.kurigram.gov.bd', NULL, NULL),
(4170, 453, 'Tobockpur', 'তবকপুর', 'tobockpurup.kurigram.gov.bd', NULL, NULL),
(4171, 453, 'Hatia', 'হাতিয়া', 'hatiaup.kurigram.gov.bd', NULL, NULL),
(4172, 453, 'Begumgonj', 'বেগমগঞ্জ', 'begumgonjup.kurigram.gov.bd', NULL, NULL),
(4173, 453, 'Shahabiar Alga', 'সাহেবের আলগা', 'shahabiaralgaup.kurigram.gov.bd', NULL, NULL),
(4174, 453, 'Thetrai', 'থেতরাই', 'thetraiup.kurigram.gov.bd', NULL, NULL),
(4175, 454, 'Ranigonj', 'রাণীগঞ্জ', 'ranigonjup.kurigram.gov.bd', NULL, NULL),
(4176, 454, 'Nayarhat', 'নয়ারহাট', 'nayarhatup.kurigram.gov.bd', NULL, NULL),
(4177, 454, 'Thanahat', 'থানাহাট', 'thanahatup.kurigram.gov.bd', NULL, NULL),
(4178, 454, 'Ramna', 'রমনা', 'ramnaup.kurigram.gov.bd', NULL, NULL),
(4179, 454, 'Chilmari', 'চিলমারী', 'chilmariup.kurigram.gov.bd', NULL, NULL),
(4180, 454, 'Austomirchar', 'অষ্টমীর চর', 'austomircharup.kurigram.gov.bd', NULL, NULL),
(4181, 455, 'Dadevanga', 'দাঁতভাঙ্গা', 'dadevangaup.kurigram.gov.bd', NULL, NULL),
(4182, 455, 'Shoulemari', 'শৌলমারী', 'shoulemariup.kurigram.gov.bd', NULL, NULL),
(4183, 455, 'Bondober', 'বন্দবেড়', 'bondoberup.kurigram.gov.bd', NULL, NULL),
(4184, 455, 'Rowmari', 'রৌমারী', 'rowmariup.kurigram.gov.bd', NULL, NULL),
(4185, 455, 'Jadurchar', 'যাদুরচর', 'jadurcharup.kurigram.gov.bd', NULL, NULL),
(4186, 456, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.kurigram.gov.bd', NULL, NULL),
(4187, 456, 'Kodalkati', 'কোদালকাটি', 'kodalkatiup.kurigram.gov.bd', NULL, NULL),
(4188, 456, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonjup.kurigram.gov.bd', NULL, NULL),
(4189, 457, 'Kamararchor', 'কামারের চর', 'kamararchorup.sherpur.gov.bd', NULL, NULL),
(4190, 457, 'Chorsherpur', 'চরশেরপুর', 'chorsherpurup.sherpur.gov.bd', NULL, NULL),
(4191, 457, 'Bajitkhila', 'বাজিতখিলা', 'bajitkhilaup.sherpur.gov.bd', NULL, NULL),
(4192, 457, 'Gajir Khamar', 'গাজির খামার', 'gajirkhamarup.sherpur.gov.bd', NULL, NULL),
(4193, 457, 'Dhola', 'ধলা', 'dholaup.sherpur.gov.bd', NULL, NULL),
(4194, 457, 'Pakuriya', 'পাকুরিয়া', 'pakuriyaup.sherpur.gov.bd', NULL, NULL),
(4195, 457, 'Vatshala', 'ভাতশালা', 'vatshalaup.sherpur.gov.bd', NULL, NULL),
(4196, 457, 'Losmonpur', 'লছমনপুর', 'losmonpurup.sherpur.gov.bd', NULL, NULL),
(4197, 457, 'Rouha', 'রৌহা', 'rouhaup.sherpur.gov.bd', NULL, NULL),
(4198, 457, 'Kamariya', 'কামারিয়া', 'kamariyaup.sherpur.gov.bd', NULL, NULL),
(4199, 457, 'Chor Mochoriya', 'চর মোচারিয়া', 'chormochoriyaup.sherpur.gov.bd', NULL, NULL),
(4200, 457, 'Chorpokhimari', 'চর পক্ষীমারি', 'chorpokhimariup.sherpur.gov.bd', NULL, NULL),
(4201, 457, 'Betmari Ghughurakandi', 'বেতমারি ঘুঘুরাকান্দি', 'betmarighughurakandiup.sherpur.gov.bd', NULL, NULL),
(4202, 457, 'Balairchar', 'বলাইরচর', 'balaircharup.sherpur.gov.bd', NULL, NULL),
(4203, 458, 'Puraga', 'পোড়াগাও', 'puragauup.sherpur.gov.bd', NULL, NULL),
(4204, 458, 'Nonni', 'নন্নী', 'nonniup.sherpur.gov.bd', NULL, NULL),
(4205, 458, 'Morichpuran', 'মরিচপুরাণ', 'morichpuranup.sherpur.gov.bd', NULL, NULL),
(4206, 458, 'Rajnogor', 'রাজনগর', 'rajnogorup.sherpur.gov.bd', NULL, NULL),
(4207, 458, 'Nayabil', 'নয়াবীল', 'nayabilup.sherpur.gov.bd', NULL, NULL),
(4208, 458, 'Ramchondrokura', 'রামচন্দ্রকুড়া', 'ramchondrokuraup.sherpur.gov.bd', NULL, NULL),
(4209, 458, 'Kakorkandhi', 'কাকরকান্দি', 'kakorkandhiup.sherpur.gov.bd', NULL, NULL),
(4210, 458, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabariup.sherpur.gov.bd', NULL, NULL),
(4211, 458, 'Juganiya', 'যোগনীয়া', 'juganiyaup.sherpur.gov.bd', NULL, NULL),
(4212, 458, 'Bagber', 'বাঘবেড়', 'bagberup.sherpur.gov.bd', NULL, NULL),
(4213, 458, 'Koloshpar', 'কলসপাড়', 'koloshparup.sherpur.gov.bd', NULL, NULL),
(4214, 458, 'Rupnarayankura', 'রূপনারায়নকুড়া', 'rupnarayankuraup.sherpur.gov.bd', NULL, NULL),
(4215, 459, 'Ranishimul', 'রানীশিমুল', 'ranishimulup.sherpur.gov.bd', NULL, NULL),
(4216, 459, 'Singabaruna', 'সিংগাবরুনা', 'singabarunaup.sherpur.gov.bd', NULL, NULL),
(4217, 459, 'Kakilakura', 'কাকিলাকুড়া', 'kakilakuraup.sherpur.gov.bd', NULL, NULL),
(4218, 459, 'Tatihati', 'তাতীহাটি', 'tatihatiup.sherpur.gov.bd', NULL, NULL),
(4219, 459, 'Gosaipur', 'গোশাইপুর', 'gosaipurup.sherpur.gov.bd', NULL, NULL),
(4220, 459, 'Sreebordi', 'শ্রীবরদী', 'sreebordiup.sherpur.gov.bd', NULL, NULL),
(4221, 459, 'Bhelua', 'ভেলুয়া', 'bheluaup.sherpur.gov.bd', NULL, NULL),
(4222, 459, 'Kharia Kazirchar', 'খড়িয়া কাজিরচর', 'khariakazircharup.sherpur.gov.bd', NULL, NULL),
(4223, 459, 'Kurikahonia', 'কুড়িকাহনিয়া', 'kurikahoniaup.sherpur.gov.bd', NULL, NULL),
(4224, 459, 'Garjaripa', 'গড়জরিপা', 'garjaripaup.sherpur.gov.bd', NULL, NULL),
(4225, 460, 'Gonopoddi', 'গণপদ্দী', 'gonopoddiup.sherpur.gov.bd', NULL, NULL),
(4226, 460, 'Nokla', 'নকলা', 'noklaup.sherpur.gov.bd', NULL, NULL),
(4227, 460, 'Urpha', 'উরফা', 'urphaup.sherpur.gov.bd', NULL, NULL),
(4228, 460, 'Gourdwar', 'গৌড়দ্বার', 'gourdwarup.sherpur.gov.bd', NULL, NULL),
(4229, 460, 'Baneshwardi', 'বানেশ্বর্দী', 'baneshwardiup.sherpur.gov.bd', NULL, NULL),
(4230, 460, 'Pathakata', 'পাঠাকাটা', 'pathakataup.sherpur.gov.bd', NULL, NULL),
(4231, 460, 'Talki', 'টালকী', 'talkiup.sherpur.gov.bd', NULL, NULL),
(4232, 460, 'Choraustadhar', 'চরঅষ্টধর', 'choraustadharup.sherpur.gov.bd', NULL, NULL),
(4233, 460, 'Chandrakona', 'চন্দ্রকোনা', 'chandrakonaup.sherpur.gov.bd', NULL, NULL),
(4234, 461, 'Kansa', 'কাংশা', 'kansaup.sherpur.gov.bd', NULL, NULL),
(4235, 461, 'Dansail', 'ধানশাইল', 'dansailup.sherpur.gov.bd', NULL, NULL),
(4236, 461, 'Nolkura', 'নলকুড়া', 'nolkuraup.sherpur.gov.bd', NULL, NULL),
(4237, 461, 'Gouripur', 'গৌরিপুর', 'gouripurup.sherpur.gov.bd', NULL, NULL),
(4238, 461, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigatiup.sherpur.gov.bd', NULL, NULL),
(4239, 461, 'Hatibandha', 'হাতিবান্দা', 'hatibandhaup.sherpur.gov.bd', NULL, NULL),
(4240, 461, 'Malijhikanda', 'মালিঝিকান্দা', 'malijhikandaup.sherpur.gov.bd', NULL, NULL),
(4241, 462, 'Deukhola', 'দেওখোলা', 'deukholaup.mymensingh.gov.bd', NULL, NULL),
(4242, 462, 'Naogaon', 'নাওগাঁও', 'naogaonup.mymensingh.gov.bd', NULL, NULL),
(4243, 462, 'Putijana', 'পুটিজানা', 'putijanaup.mymensingh.gov.bd', NULL, NULL),
(4244, 462, 'Kushmail', 'কুশমাইল', 'kushmailup.mymensingh.gov.bd', NULL, NULL),
(4245, 462, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.mymensingh.gov.bd', NULL, NULL),
(4246, 462, 'Bakta', 'বাক্তা', 'baktaup.mymensingh.gov.bd', NULL, NULL),
(4247, 462, 'Rangamatia', 'রাঙ্গামাটিয়া', 'rangamatiaup.mymensingh.gov.bd', NULL, NULL),
(4248, 462, 'Enayetpur', 'এনায়েতপুর', 'enayetpurup.mymensingh.gov.bd', NULL, NULL),
(4249, 462, 'Kaladaha', 'কালাদহ', 'kaladahaup.mymensingh.gov.bd', NULL, NULL),
(4250, 462, 'Radhakanai', 'রাধাকানাই', 'radhakanaiup.mymensingh.gov.bd', NULL, NULL),
(4251, 462, 'Asimpatuli', 'আছিমপাটুলী', 'asimpatuliup.mymensingh.gov.bd', NULL, NULL),
(4252, 462, 'Vobanipur', 'ভবানীপুর', 'vobanipurup.mymensingh.gov.bd', NULL, NULL),
(4253, 462, 'Balian', 'বালিয়ান', 'balianup.mymensingh.gov.bd', NULL, NULL),
(4254, 463, 'Dhanikhola', 'ধানীখোলা', 'dhanikholaup.mymensingh.gov.bd', NULL, NULL),
(4255, 463, 'Bailor', 'বৈলর', 'bailorup.mymensingh.gov.bd', NULL, NULL),
(4256, 463, 'Kanthal', 'কাঁঠাল', 'kanthalup.mymensingh.gov.bd', NULL, NULL),
(4257, 463, 'Kanihari', 'কানিহারী', 'kanihariup.mymensingh.gov.bd', NULL, NULL),
(4258, 463, 'Trishal', 'ত্রিশাল', 'trishalup.mymensingh.gov.bd', NULL, NULL),
(4259, 463, 'Harirampur', 'হরিরামপুর', 'harirampurup.mymensingh.gov.bd', NULL, NULL),
(4260, 463, 'Sakhua', 'সাখুয়া', 'www.sakhuaup.mymensingh.gov.bd', NULL, NULL),
(4261, 463, 'Balipara', 'বালিপাড়া', 'baliparaup.mymensingh.gov.bd', NULL, NULL),
(4262, 463, 'Mokshapur', 'মোক্ষপুর', 'mokshapurup.mymensingh.gov.bd', NULL, NULL),
(4263, 463, 'Mathbari', 'মঠবাড়ী', 'mathbariup.mymensingh.gov.bd', NULL, NULL),
(4264, 463, 'Amirabari', 'আমিরাবাড়ী', 'amirabariup.mymensingh.gov.bd', NULL, NULL),
(4265, 463, 'Rampur', 'রামপুর', 'rampurup.mymensingh.gov.bd', NULL, NULL),
(4266, 464, 'Uthura', 'উথুরা', 'uthuraup.mymensingh.gov.bd', NULL, NULL),
(4267, 464, 'Meduari', 'মেদুয়ারী', 'meduariup.mymensingh.gov.bd', NULL, NULL),
(4268, 464, 'Varadoba', 'ভরাডোবা', 'varadobaup.mymensingh.gov.bd', NULL, NULL),
(4269, 464, 'Dhitpur', 'ধীতপুর', 'dhitpurup.mymensingh.gov.bd', NULL, NULL),
(4270, 464, 'Dakatia', 'ডাকাতিয়া', 'dakatiaup.mymensingh.gov.bd', NULL, NULL),
(4271, 464, 'Birunia', 'বিরুনিয়া', 'biruniaup.mymensingh.gov.bd', NULL, NULL),
(4272, 464, 'Bhaluka', 'ভালুকা', 'bhalukaup.mymensingh.gov.bd', NULL, NULL),
(4273, 464, 'Mallikbari', 'মল্লিকবাড়ী', 'mallikbariup.mymensingh.gov.bd', NULL, NULL),
(4274, 464, 'Kachina', 'কাচিনা', 'kachinaup.mymensingh.gov.bd', NULL, NULL),
(4275, 464, 'Habirbari', 'হবিরবাড়ী', 'habirbariup.mymensingh.gov.bd', NULL, NULL),
(4276, 464, 'Rajoi', 'রাজৈ', 'rajoiup.mymensingh.gov.bd', NULL, NULL),
(4277, 465, 'Dulla', 'দুল্লা', 'dullaup.mymensingh.gov.bd', NULL, NULL),
(4278, 465, 'Borogram', 'বড়গ্রাম', 'borogramup.mymensingh.gov.bd', NULL, NULL),
(4279, 465, 'Tarati', 'তারাটি', 'taratiup.mymensingh.gov.bd', NULL, NULL),
(4280, 465, 'Kumargata', 'কুমারগাতা', 'kumargataup.mymensingh.gov.bd', NULL, NULL),
(4281, 465, 'Basati', 'বাশাটি', 'basatiup.mymensingh.gov.bd', NULL, NULL),
(4282, 465, 'Mankon', 'মানকোন', 'mankonup.mymensingh.gov.bd', NULL, NULL),
(4283, 465, 'Ghoga', 'ঘোগা', 'ghogaup.mymensingh.gov.bd', NULL, NULL),
(4284, 465, 'Daogaon', 'দাওগাঁও', 'daogaonup.mymensingh.gov.bd', NULL, NULL),
(4285, 465, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.mymensingh.gov.bd', NULL, NULL),
(4286, 465, 'Kheruajani', 'খেরুয়াজানী', 'kheruajaniup.mymensingh.gov.bd', NULL, NULL),
(4287, 466, 'Austadhar', 'অষ্টধার', 'austadharup.mymensingh.gov.bd', NULL, NULL),
(4288, 466, 'Bororchar', 'বোররচর', 'bororcharup.mymensingh.gov.bd', NULL, NULL),
(4289, 466, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.mymensingh.gov.bd', NULL, NULL),
(4290, 466, 'Aqua', 'আকুয়া', 'aquaup.mymensingh.gov.bd', NULL, NULL),
(4291, 466, 'Khagdohor', 'খাগডহর', 'khagdohorup.mymensingh.gov.bd', NULL, NULL),
(4292, 466, 'Charnilaxmia', 'চরনিলক্ষিয়া', 'charnilaxmiaup.mymensingh.gov.bd', NULL, NULL),
(4293, 466, 'Kushtia', 'কুষ্টিয়া', 'kushtiaup.mymensingh.gov.bd', NULL, NULL),
(4294, 466, 'Paranganj', 'পরানগঞ্জ', 'paranganjup.mymensingh.gov.bd', NULL, NULL),
(4295, 466, 'Sirta', 'সিরতা', 'sirtaup.mymensingh.gov.bd', NULL, NULL),
(4296, 466, 'Char Ishwardia', 'চর ঈশ্বরদিয়া', 'charishwardiaup.mymensingh.gov.bd', NULL, NULL),
(4297, 466, 'Ghagra', 'ঘাগড়া', 'ghagraup.mymensingh.gov.bd', NULL, NULL),
(4298, 466, 'Vabokhali', 'ভাবখালী', 'vabokhaliup.mymensingh.gov.bd', NULL, NULL),
(4299, 466, 'Boyra', 'বয়ড়া', 'boyraup.mymensingh.gov.bd', NULL, NULL),
(4300, 467, 'Dakshin Maijpara', 'দক্ষিণ মাইজপাড়া', 'dakshinmaijparaup.mymensingh.gov.bd', NULL, NULL),
(4301, 467, 'Gamaritola', 'গামারীতলা', 'gamaritolaup.mymensingh.gov.bd', NULL, NULL),
(4302, 467, 'Dhobaura', 'ধোবাউড়া', 'dhobauraup.mymensingh.gov.bd', NULL, NULL),
(4303, 467, 'Porakandulia', 'পোড়াকান্দুলিয়া', 'porakanduliaup.mymensingh.gov.bd', NULL, NULL),
(4304, 467, 'Goatala', 'গোয়াতলা', 'goatalaup.mymensingh.gov.bd', NULL, NULL),
(4305, 467, 'Ghoshgaon', 'ঘোষগাঁও', 'ghoshgaonup.mymensingh.gov.bd', NULL, NULL),
(4306, 467, 'Baghber', 'বাঘবেড়', 'baghberup.mymensingh.gov.bd', NULL, NULL),
(4307, 468, 'Rambhadrapur', 'রামভদ্রপুর', 'rambhadrapurup.mymensingh.gov.bd', NULL, NULL),
(4308, 468, 'Sondhara', 'ছনধরা', 'sondharaup.mymensingh.gov.bd', NULL, NULL),
(4309, 468, 'Vaitkandi', 'ভাইটকান্দি', 'vaitkandiup.mymensingh.gov.bd', NULL, NULL),
(4310, 468, 'Singheshwar', 'সিংহেশ্বর', 'singheshwarup.mymensingh.gov.bd', NULL, NULL),
(4311, 468, 'Phulpur', 'ফুলপুর', 'phulpurup.mymensingh.gov.bd', NULL, NULL),
(4312, 474, 'Banihala', 'বানিহালা', 'banihalaup.mymensingh.gov.bd', NULL, NULL),
(4313, 474, 'Biska', 'বিস্কা', 'biskaup.mymensingh.gov.bd', NULL, NULL),
(4314, 468, 'Baola', 'বওলা', 'baolaup.mymensingh.gov.bd', NULL, NULL),
(4315, 468, 'Payari', 'পয়ারী', 'payariup.mymensingh.gov.bd', NULL, NULL),
(4316, 468, 'Balia', 'বালিয়া', 'baliaup.mymensingh.gov.bd', NULL, NULL),
(4317, 468, 'Rahimganj', 'রহিমগঞ্জ', 'rahimganjup.mymensingh.gov.bd', NULL, NULL),
(4318, 474, 'Balikha', 'বালিখা', 'balikhaup.mymensingh.gov.bd', NULL, NULL),
(4319, 474, 'Kakni', 'কাকনী', 'kakniup.mymensingh.gov.bd', NULL, NULL),
(4320, 474, 'Dhakua', 'ঢাকুয়া', 'dhakuaup.mymensingh.gov.bd', NULL, NULL),
(4321, 468, 'Rupasi', 'রূপসী', 'rupasiup.mymensingh.gov.bd', NULL, NULL),
(4322, 474, 'Tarakanda', 'তারাকান্দা', 'tarakandaup.mymensingh.gov.bd', NULL, NULL),
(4323, 474, 'Galagaon', 'গালাগাঁও', 'galagaonup.mymensingh.gov.bd', NULL, NULL),
(4324, 474, 'Kamargaon', 'কামারগাঁও', 'kamargaonup.mymensingh.gov.bd', NULL, NULL),
(4325, 474, 'Kamaria', 'কামারিয়া', 'kamariaup.mymensingh.gov.bd', NULL, NULL),
(4326, 474, 'Rampur', 'রামপুর', 'rampurup2.mymensingh.gov.bd', NULL, NULL),
(4327, 469, 'Bhubankura', 'ভূবনকুড়া', 'bhubankuraup.mymensingh.gov.bd', NULL, NULL),
(4328, 469, 'Jugli', 'জুগলী', 'jugliup.mymensingh.gov.bd', NULL, NULL),
(4329, 469, 'Kaichapur', 'কৈচাপুর', 'kaichapurup.mymensingh.gov.bd', NULL, NULL),
(4330, 469, 'Haluaghat', 'হালুয়াঘাট', 'haluaghatup.mymensingh.gov.bd', NULL, NULL),
(4331, 469, 'Gazirbhita', 'গাজিরভিটা', 'gazirbhitaup.mymensingh.gov.bd', NULL, NULL),
(4332, 469, 'Bildora', 'বিলডোরা', 'bildoraup.mymensingh.gov.bd', NULL, NULL),
(4333, 469, 'Sakuai', 'শাকুয়াই', 'sakuaiup.mymensingh.gov.bd', NULL, NULL),
(4334, 469, 'Narail', 'নড়াইল', 'narailup.mymensingh.gov.bd', NULL, NULL),
(4335, 469, 'Dhara', 'ধারা', 'dharaup.mymensingh.gov.bd', NULL, NULL),
(4336, 469, 'Dhurail', 'ধুরাইল', 'dhurailup.mymensingh.gov.bd', NULL, NULL),
(4337, 469, 'Amtoil', 'আমতৈল', 'amtoilup.mymensingh.gov.bd', NULL, NULL),
(4338, 469, 'Swadeshi', 'স্বদেশী', 'swadeshiup.mymensingh.gov.bd', NULL, NULL),
(4339, 470, 'Sahanati', 'সহনাটি', 'sahanatiup.mymensingh.gov.bd', NULL, NULL),
(4340, 470, 'Achintapur', 'অচিন্তপুর', 'achintapurup.mymensingh.gov.bd', NULL, NULL),
(4341, 470, 'Mailakanda', 'মইলাকান্দা', 'mailakandaup.mymensingh.gov.bd', NULL, NULL),
(4342, 470, 'Bokainagar', 'বোকাইনগর', 'bokainagarup.mymensingh.gov.bd', NULL, NULL),
(4343, 470, 'Gouripur', 'গৌরীপুর', 'gouripurup.mymensingh.gov.bd', NULL, NULL),
(4344, 470, 'Maoha', 'মাওহা', 'maohaup.mymensingh.gov.bd', NULL, NULL),
(4345, 470, 'Ramgopalpur', 'রামগোপালপুর', 'ramgopalpurup.mymensingh.gov.bd', NULL, NULL),
(4346, 470, 'Douhakhola', 'ডৌহাখলা', 'douhakholaup.mymensingh.gov.bd', NULL, NULL),
(4347, 470, 'Bhangnamari', 'ভাংনামারী', 'bhangnamariup.mymensingh.gov.bd', NULL, NULL),
(4348, 470, 'Sidhla', 'সিধলা', 'sidhlaup.mymensingh.gov.bd', NULL, NULL),
(4349, 471, 'Rasulpur', 'রসুলপুর', 'rasulpurup.mymensingh.gov.bd', NULL, NULL),
(4350, 471, 'Barobaria', 'বারবারিয়া', 'barobariaup.mymensingh.gov.bd', NULL, NULL),
(4351, 471, 'Charalgi', 'চরআলগী', 'charalgiup.mymensingh.gov.bd', NULL, NULL),
(4352, 471, 'Saltia', 'সালটিয়া', 'saltiaup.mymensingh.gov.bd', NULL, NULL),
(4353, 471, 'Raona', 'রাওনা', 'raonaup.mymensingh.gov.bd', NULL, NULL),
(4354, 471, 'Longair', 'লংগাইর', 'longairup.mymensingh.gov.bd', NULL, NULL),
(4355, 471, 'Paithol', 'পাইথল', 'paitholup.mymensingh.gov.bd', NULL, NULL),
(4356, 471, 'Gafargaon', 'গফরগাঁও', 'gafargaonup.mymensingh.gov.bd', NULL, NULL),
(4357, 471, 'Josora', 'যশরা', 'josoraup.mymensingh.gov.bd', NULL, NULL),
(4358, 471, 'Moshakhali', 'মশাখালী', 'moshakhaliup.mymensingh.gov.bd', NULL, NULL),
(4359, 471, 'Panchbagh', 'পাঁচবাগ', 'panchbaghup.mymensingh.gov.bd', NULL, NULL),
(4360, 471, 'Usthi', 'উস্থি', 'usthiup.mymensingh.gov.bd', NULL, NULL),
(4361, 471, 'Dotterbazar', 'দত্তেরবাজার', 'dotterbazarup.mymensingh.gov.bd', NULL, NULL),
(4362, 471, 'Niguari', 'নিগুয়ারী', 'niguariup.mymensingh.gov.bd', NULL, NULL),
(4363, 471, 'Tangabo', 'টাংগাব', 'tangaboup.mymensingh.gov.bd', NULL, NULL),
(4364, 472, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganjup.mymensingh.gov.bd', NULL, NULL),
(4365, 472, 'Sarisha', 'সরিষা', 'sarishaup.mymensingh.gov.bd', NULL, NULL),
(4366, 472, 'Sohagi', 'সোহাগী', 'sohagiup.mymensingh.gov.bd', NULL, NULL),
(4367, 472, 'Atharabari', 'আঠারবাড়ী', 'atharabariup.mymensingh.gov.bd', NULL, NULL),
(4368, 472, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.mymensingh.gov.bd', NULL, NULL),
(4369, 472, 'Maijbagh', 'মাইজবাগ', 'maijbaghup.mymensingh.gov.bd', NULL, NULL),
(4370, 472, 'Magtula', 'মগটুলা', 'magtulaup.mymensingh.gov.bd', NULL, NULL),
(4371, 472, 'Jatia', 'জাটিয়া', 'jatiaup.mymensingh.gov.bd', NULL, NULL),
(4372, 472, 'Uchakhila', 'উচাখিলা', 'uchakhilaup.mymensingh.gov.bd', NULL, NULL),
(4373, 472, 'Tarundia', 'তারুন্দিয়া', 'tarundiaup.mymensingh.gov.bd', NULL, NULL),
(4374, 472, 'Barahit', 'বড়হিত', 'barahitup.mymensingh.gov.bd', NULL, NULL),
(4375, 473, 'Batagoir', 'বেতাগৈর', 'batagoirup.mymensingh.gov.bd', NULL, NULL),
(4376, 473, 'Nandail', 'নান্দাইল', 'nandailup.mymensingh.gov.bd', NULL, NULL),
(4377, 473, 'Chandipasha', 'চন্ডীপাশা', 'chandipashaup.mymensingh.gov.bd', NULL, NULL),
(4378, 473, 'Gangail', 'গাংগাইল', 'gangailup.mymensingh.gov.bd', NULL, NULL),
(4379, 473, 'Rajgati', 'রাজগাতী', 'rajgatiup.mymensingh.gov.bd', NULL, NULL),
(4380, 473, 'Muajjempur', 'মোয়াজ্জেমপুর', 'muajjempurup.mymensingh.gov.bd', NULL, NULL),
(4381, 473, 'Sherpur', 'শেরপুর', 'sherpurup.mymensingh.gov.bd', NULL, NULL),
(4382, 473, 'Singroil', 'সিংরইল', 'singroilup.mymensingh.gov.bd', NULL, NULL),
(4383, 473, 'Achargaon', 'আচারগাঁও', 'achargaonup.mymensingh.gov.bd', NULL, NULL),
(4384, 473, 'Mushulli', 'মুশুল্লী', 'mushulliup.mymensingh.gov.bd', NULL, NULL),
(4385, 473, 'Kharua', 'খারুয়া', 'kharuaup.mymensingh.gov.bd', NULL, NULL),
(4386, 473, 'Jahangirpur', 'জাহাঙ্গীরপুর', 'jahangirpurup.mymensingh.gov.bd', NULL, NULL),
(4387, 475, 'Kendua', 'কেন্দুয়া', 'kenduaup.jamalpur.gov.bd', NULL, NULL),
(4388, 475, 'Sharifpur', 'শরিফপুর', 'sharifpurup.jamalpur.gov.bd', NULL, NULL),
(4389, 475, 'Laxirchar', 'লক্ষীরচর', 'laxircharup.jamalpur.gov.bd', NULL, NULL),
(4390, 475, 'Tolshirchar', 'তুলশীরচর', 'tolshircharup.jamalpur.gov.bd', NULL, NULL),
(4391, 475, 'Itail', 'ইটাইল', 'itailup.jamalpur.gov.bd', NULL, NULL),
(4392, 475, 'Narundi', 'নরুন্দী', 'narundiup.jamalpur.gov.bd', NULL, NULL),
(4393, 475, 'Ghorada', 'ঘোড়াধাপ', 'ghoradapup.jamalpur.gov.bd', NULL, NULL),
(4394, 475, 'Bashchara', 'বাশঁচড়া', 'bashcharaup.jamalpur.gov.bd', NULL, NULL),
(4395, 475, 'Ranagacha', 'রানাগাছা', 'ranagachaup.jamalpur.gov.bd', NULL, NULL),
(4396, 475, 'Sheepur', 'শ্রীপুর', 'sheepurup.jamalpur.gov.bd', NULL, NULL),
(4397, 475, 'Shahbajpur', 'শাহবাজপুর', 'shahbajpurup.jamalpur.gov.bd', NULL, NULL),
(4398, 475, 'Titpalla', 'তিতপল্লা', 'titpallaup.jamalpur.gov.bd', NULL, NULL),
(4399, 475, 'Mesta', 'মেষ্টা', 'mestaup.jamalpur.gov.bd', NULL, NULL),
(4400, 475, 'Digpait', 'দিগপাইত', 'digpaitup.jamalpur.gov.bd', NULL, NULL),
(4401, 475, 'Rashidpur', 'রশিদপুর', 'rashidpurup.jamalpur.gov.bd', NULL, NULL),
(4402, 476, 'Durmot', 'দুরমুট', 'durmotup.jamalpur.gov.bd', NULL, NULL),
(4403, 476, 'Kulia', 'কুলিয়া', 'kuliaup.jamalpur.gov.bd', NULL, NULL),
(4404, 476, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.jamalpur.gov.bd', NULL, NULL),
(4405, 476, 'Nangla', 'নাংলা', 'nanglaup.jamalpur.gov.bd', NULL, NULL),
(4406, 476, 'Nayanagar', 'নয়ানগর', 'nayanagarup.jamalpur.gov.bd', NULL, NULL),
(4407, 476, 'Adra', 'আদ্রা', 'adraup.jamalpur.gov.bd', NULL, NULL),
(4408, 476, 'Charbani Pakuria', 'চরবানী পাকুরিয়া', 'charbanipakuriaup.jamalpur.gov.bd', NULL, NULL),
(4409, 476, 'Fulkucha', 'ফুলকোচা', 'fulkuchaup.jamalpur.gov.bd', NULL, NULL),
(4410, 476, 'Ghuserpara', 'ঘোষেরপাড়া', 'ghuserparaup.jamalpur.gov.bd', NULL, NULL),
(4411, 476, 'Jhaugara', 'ঝাউগড়া', 'jhaugaraup.jamalpur.gov.bd', NULL, NULL),
(4412, 476, 'Shuampur', 'শ্যামপুর', 'shuampurup.jamalpur.gov.bd', NULL, NULL),
(4413, 477, 'Kulkandi', 'কুলকান্দি', 'kulkandiup.jamalpur.gov.bd', NULL, NULL),
(4414, 477, 'Belghacha', 'বেলগাছা', 'belghachaup.jamalpur.gov.bd', NULL, NULL),
(4415, 477, 'Chinaduli', 'চিনাডুলী', 'chinaduliup.jamalpur.gov.bd', NULL, NULL),
(4416, 477, 'Shapdari', 'সাপধরী', 'shapdariup.jamalpur.gov.bd', NULL, NULL),
(4417, 477, 'Noarpara', 'নোয়ারপাড়া', 'noarparaup.jamalpur.gov.bd', NULL, NULL),
(4418, 477, 'Islampur', 'ইসলামপুর', 'islampurup.jamalpur.gov.bd', NULL, NULL),
(4419, 477, 'Partharshi', 'পাথশী', 'partharshiup.jamalpur.gov.bd', NULL, NULL),
(4420, 477, 'Palabandha', 'পলবান্ধা', 'palabandhaup.jamalpur.gov.bd', NULL, NULL),
(4421, 477, 'Gualerchar', 'গোয়ালেরচর', 'gualercharup.jamalpur.gov.bd', NULL, NULL),
(4422, 477, 'Gaibandha', 'গাইবান্ধা', 'gaibandhaup.jamalpur.gov.bd', NULL, NULL),
(4423, 477, 'Charputimari', 'চরপুটিমারী', 'charputimariup.jamalpur.gov.bd', NULL, NULL),
(4424, 477, 'Chargualini', 'চরগোয়ালীনি', 'chargualiniup.jamalpur.gov.bd', NULL, NULL),
(4425, 478, 'Dungdhara', 'ডাংধরা', 'dungdharaup.jamalpur.gov.bd', NULL, NULL),
(4426, 478, 'Char Amkhawa', 'চর আমখাওয়া', 'charamkhawaup.jamalpur.gov.bd', NULL, NULL),
(4427, 478, 'Parram Rampur', 'পাররাম রামপুর', 'parramrampurup.jamalpur.gov.bd', NULL, NULL),
(4428, 478, 'Hatibanga', 'হাতীভাঙ্গা', 'hatibangaup.jamalpur.gov.bd', NULL, NULL),
(4429, 478, 'Bahadurabad', 'বাহাদুরাবাদ', 'bahadurabadup.jamalpur.gov.bd', NULL, NULL),
(4430, 478, 'Chikajani', 'চিকাজানী', 'chikajaniup.jamalpur.gov.bd', NULL, NULL),
(4431, 478, 'Chukaibari', 'চুকাইবাড়ী', 'chukaibariup.jamalpur.gov.bd', NULL, NULL),
(4432, 478, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonjup.jamalpur.gov.bd', NULL, NULL),
(4433, 479, 'Satpoa', 'সাতপোয়া', 'satpoaup.jamalpur.gov.bd', NULL, NULL),
(4434, 479, 'Pogaldigha', 'পোগলদিঘা', 'pogaldighaup.jamalpur.gov.bd', NULL, NULL),
(4435, 479, 'Doail', 'ডোয়াইল', 'doailup.jamalpur.gov.bd', NULL, NULL),
(4436, 479, 'Aona', 'আওনা', 'aonaup.jamalpur.gov.bd', NULL, NULL),
(4437, 479, 'Pingna', 'পিংনা', 'pingnaup.jamalpur.gov.bd', NULL, NULL),
(4438, 479, 'Bhatara', 'ভাটারা', 'bhataraup.jamalpur.gov.bd', NULL, NULL),
(4439, 479, 'Kamrabad', 'কামরাবাদ', 'kamrabadup.jamalpur.gov.bd', NULL, NULL),
(4440, 479, 'Mahadan', 'মহাদান', 'mahadanup.jamalpur.gov.bd', NULL, NULL),
(4441, 480, 'Char Pakerdah', 'চর পাকেরদহ', 'charpakerdahup.jamalpur.gov.bd', NULL, NULL),
(4442, 480, 'Karaichara', 'কড়ইচড়া', 'karaicharaup.jamalpur.gov.bd', NULL, NULL),
(4443, 480, 'Gunaritala', 'গুনারীতলা', 'gunaritalaup.jamalpur.gov.bd', NULL, NULL),
(4444, 480, 'Balijuri', 'বালিজুড়ী', 'balijuriup.jamalpur.gov.bd', NULL, NULL),
(4445, 480, 'Jorekhali', 'জোড়খালী', 'jorekhaliup.jamalpur.gov.bd', NULL, NULL),
(4446, 480, 'Adarvita', 'আদারভিটা', 'adarvitaup.jamalpur.gov.bd', NULL, NULL),
(4447, 480, 'Sidhuli', 'সিধুলী', 'sidhuliup.jamalpur.gov.bd', NULL, NULL),
(4448, 481, 'Danua', 'ধানুয়া', 'danuaup.jamalpur.gov.bd', NULL, NULL),
(4449, 481, 'Bagarchar', 'বগারচর', 'bagarcharup.jamalpur.gov.bd', NULL, NULL),
(4450, 481, 'Battajore', 'বাট্রাজোড়', 'battajoreup.jamalpur.gov.bd', NULL, NULL),
(4451, 481, 'Shadurpara', 'সাধুরপাড়া', 'shadurparaup.jamalpur.gov.bd', NULL, NULL),
(4452, 481, 'Bakshigonj', 'বকসীগঞ্জ', 'bakshigonjup.jamalpur.gov.bd', NULL, NULL),
(4453, 481, 'Nilakhia', 'নিলক্ষিয়া', 'nilakhiaup.jamalpur.gov.bd', NULL, NULL),
(4454, 481, 'Merurchar', 'মেরুরচর', 'merurcharup.jamalpur.gov.bd', NULL, NULL);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(4455, 482, 'Asma', 'আসমা', 'asma.netrokona.gov.bd', NULL, NULL),
(4456, 482, 'Chhiram', 'চিরাম', 'chhiram.netrokona.gov.bd', NULL, NULL),
(4457, 482, 'Baushi', 'বাউশী', 'baushiup.netrokona.gov.bd', NULL, NULL),
(4458, 482, 'Barhatta', 'বারহাট্টা', 'barhattaup.netrokona.gov.bd', NULL, NULL),
(4459, 482, 'Raypur', 'রায়পুর', 'raypurup.netrokona.gov.bd', NULL, NULL),
(4460, 482, 'Sahata', 'সাহতা', 'sahataup.netrokona.gov.bd', NULL, NULL),
(4461, 482, 'Singdha', 'সিংধা', 'singdhaup.netrokona.gov.bd', NULL, NULL),
(4462, 483, 'Durgapur', 'দূর্গাপুর', 'durgapurup.netrokona.gov.bd', NULL, NULL),
(4463, 483, 'Kakoirgora', 'কাকৈরগড়া', 'kakoirgoraup.netrokona.gov.bd', NULL, NULL),
(4464, 483, 'Kullagora', 'কুল্লাগড়া', 'kullagoraup.netrokona.gov.bd', NULL, NULL),
(4465, 483, 'Chandigarh', 'চণ্ডিগড়', 'chandigarhup.netrokona.gov.bd', NULL, NULL),
(4466, 483, 'Birisiri', 'বিরিশিরি', 'birisiriup.netrokona.gov.bd', NULL, NULL),
(4467, 483, 'Bakaljora', 'বাকলজোড়া', 'bakaljoraup.netrokona.gov.bd', NULL, NULL),
(4468, 483, 'Gawkandia', 'গাঁওকান্দিয়া', 'gawkandiaup.netrokona.gov.bd', NULL, NULL),
(4469, 484, 'Asujia', 'আশুজিয়া', 'asujiaup.netrokona.gov.bd', NULL, NULL),
(4470, 484, 'Dalpa', 'দলপা', 'dalpaup.netrokona.gov.bd', NULL, NULL),
(4471, 484, 'Goraduba', 'গড়াডোবা', 'goradubaup.netrokona.gov.bd', NULL, NULL),
(4472, 484, 'Gonda', 'গণ্ডা', 'gondaup.netrokona.gov.bd', NULL, NULL),
(4473, 484, 'Sandikona', 'সান্দিকোনা', 'sandikonaup.netrokona.gov.bd', NULL, NULL),
(4474, 484, 'Maska', 'মাসকা', 'maskaup.netrokona.gov.bd', NULL, NULL),
(4475, 484, 'Bolaishimul', 'বলাইশিমুল', 'bolaishimulup.netrokona.gov.bd', NULL, NULL),
(4476, 484, 'Noapara', 'নওপাড়া', 'noaparaup.netrokona.gov.bd', NULL, NULL),
(4477, 484, 'Kandiura', 'কান্দিউড়া', 'kandiuraup.netrokona.gov.bd', NULL, NULL),
(4478, 484, 'Chirang', 'চিরাং', 'chirangup.netrokona.gov.bd', NULL, NULL),
(4479, 484, 'Roailbari Amtala', 'রোয়াইলবাড়ী আমতলা', 'roailbariamtalaup.netrokona.gov.bd', NULL, NULL),
(4480, 484, 'Paikura', 'পাইকুড়া', 'paikuraup.netrokona.gov.bd', NULL, NULL),
(4481, 484, 'Muzafarpur', 'মোজাফরপুর', 'muzafarpurup.netrokona.gov.bd', NULL, NULL),
(4482, 485, 'Shormushia', 'স্বরমুশিয়া', 'shormushiaup.netrokona.gov.bd', NULL, NULL),
(4483, 485, 'Shunoi', 'শুনই', 'shunoiup.netrokona.gov.bd', NULL, NULL),
(4484, 485, 'Lunesshor', 'লুনেশ্বর', 'lunesshorup.netrokona.gov.bd', NULL, NULL),
(4485, 485, 'Baniyajan', 'বানিয়াজান', 'baniyajanup.netrokona.gov.bd', NULL, NULL),
(4486, 485, 'Teligati', 'তেলিগাতী', 'teligatiup.netrokona.gov.bd', NULL, NULL),
(4487, 485, 'Duoj', 'দুওজ', 'duojup.netrokona.gov.bd', NULL, NULL),
(4488, 485, 'Sukhari', 'সুখারী', 'sukhariup.netrokona.gov.bd', NULL, NULL),
(4489, 486, 'Fathepur', 'ফতেপুর', 'fathepurup.netrokona.gov.bd', NULL, NULL),
(4490, 486, 'Nayekpur', 'নায়েকপুর', 'nayekpurup.netrokona.gov.bd', NULL, NULL),
(4491, 486, 'Teosree', 'তিয়শ্রী', 'teosreeup.netrokona.gov.bd', NULL, NULL),
(4492, 486, 'Magan', 'মাঘান', 'maganup.netrokona.gov.bd', NULL, NULL),
(4493, 486, 'Gobindasree', 'গেবিন্দশ্রী', 'gobindasreeup.netrokona.gov.bd', NULL, NULL),
(4494, 486, 'Madan', 'মদন', 'madanup.netrokona.gov.bd', NULL, NULL),
(4495, 486, 'Chandgaw', 'চানগাঁও', 'chandgawup.netrokona.gov.bd', NULL, NULL),
(4496, 486, 'Kytail', 'কাইটাল', 'kytailup.netrokona.gov.bd', NULL, NULL),
(4497, 487, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.netrokona.gov.bd', NULL, NULL),
(4498, 487, 'Nogor', 'নগর', 'nogorup.netrokona.gov.bd', NULL, NULL),
(4499, 487, 'Chakua', 'চাকুয়া', 'chakuaup.netrokona.gov.bd', NULL, NULL),
(4500, 487, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuriup.netrokona.gov.bd', NULL, NULL),
(4501, 487, 'Mendipur', 'মেন্দিপুর', 'mendipurup.netrokona.gov.bd', NULL, NULL),
(4502, 487, 'Gazipur', 'গাজীপুর', 'gazipurup.netrokona.gov.bd', NULL, NULL),
(4503, 488, 'Koilati', 'কৈলাটী', 'koilatiup.netrokona.gov.bd', NULL, NULL),
(4504, 488, 'Najirpur', 'নাজিরপুর', 'najirpurup.netrokona.gov.bd', NULL, NULL),
(4505, 488, 'Pogla', 'পোগলা', 'poglaup.netrokona.gov.bd', NULL, NULL),
(4506, 488, 'Kolmakanda', 'কলমাকান্দা', 'kolmakandaup.netrokona.gov.bd', NULL, NULL),
(4507, 488, 'Rongchati', 'রংছাতি', 'rongchatiup.netrokona.gov.bd', NULL, NULL),
(4508, 488, 'Lengura', 'লেংগুরা', 'lenguraup.netrokona.gov.bd', NULL, NULL),
(4509, 488, 'Borokhapon', 'বড়খাপন', 'borokhaponup.netrokona.gov.bd', NULL, NULL),
(4510, 488, 'Kharnoi', 'খারনৈ', 'kharnoiup.netrokona.gov.bd', NULL, NULL),
(4511, 489, 'Borokashia Birampur', 'বড়কাশিয়া বিরামপুর', 'borokashiabirampurup.netrokona.gov.bd', NULL, NULL),
(4512, 489, 'Borotoli Banihari', 'বড়তলী বানিহারী', 'borotolibanihariup.netrokona.gov.bd', NULL, NULL),
(4513, 489, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.netrokona.gov.bd', NULL, NULL),
(4514, 489, 'Maghan Siadar', 'মাঘান সিয়াদার', 'maghansiadarup.netrokona.gov.bd', NULL, NULL),
(4515, 489, 'Somaj Sohildeo', 'সমাজ সহিলদেও', 'somajsohildeoup.netrokona.gov.bd', NULL, NULL),
(4516, 489, 'Suair', 'সুয়াইর', 'suairup.netrokona.gov.bd', NULL, NULL),
(4517, 489, 'Gaglajur', 'গাগলাজুর', 'gaglajurup.netrokona.gov.bd', NULL, NULL),
(4518, 490, 'Khalishaur', 'খলিশাউড়', 'khalishaurup.netrokona.gov.bd', NULL, NULL),
(4519, 490, 'Ghagra', 'ঘাগড়া', 'ghagraup.netrokona.gov.bd', NULL, NULL),
(4520, 490, 'Jaria', 'জারিয়া', 'jariaup.netrokona.gov.bd', NULL, NULL),
(4521, 490, 'Narandia', 'নারান্দিয়া', 'narandiaup.netrokona.gov.bd', NULL, NULL),
(4522, 490, 'Bishkakuni', 'বিশকাকুনী', 'bishkakuniup.netrokona.gov.bd', NULL, NULL),
(4523, 490, 'Bairaty', 'বৈরাটী', 'bairaty.netrokona.gov.bd', NULL, NULL),
(4524, 490, 'Hogla', 'হোগলা', 'hoglaup.netrokona.gov.bd', NULL, NULL),
(4525, 490, 'Gohalakanda', 'গোহালাকান্দা', 'gohalakandaup.netrokona.gov.bd', NULL, NULL),
(4526, 490, 'Dhalamulgaon', 'ধলামুলগাঁও', 'dhalamulgaonup.netrokona.gov.bd', NULL, NULL),
(4527, 490, 'Agia', 'আগিয়া', 'agia.netrokona.gov.bd', NULL, NULL),
(4528, 490, 'Purbadhala', 'পূর্বধলা', 'purbadhalaup.netrokona.gov.bd', NULL, NULL),
(4529, 491, 'Chollisha', 'চল্লিশা', 'chollishaup.netrokona.gov.bd', NULL, NULL),
(4530, 491, 'Kailati', 'কাইলাটি', 'kailatiup.netrokona.gov.bd', NULL, NULL),
(4531, 491, 'Dokkhin Bishiura', 'দক্ষিণ বিশিউড়া', 'dokkhinbishiuraup.netrokona.gov.bd', NULL, NULL),
(4532, 491, 'Modonpur', 'মদনপুর', 'modonpurup.netrokona.gov.bd', NULL, NULL),
(4533, 491, 'Amtola', 'আমতলা', 'amtolaup.netrokona.gov.bd', NULL, NULL),
(4534, 491, 'Lokkhiganj', 'লক্ষীগঞ্জ', 'lokkhiganj.netrokona.gov.bd', NULL, NULL),
(4535, 491, 'Singher Bangla', 'সিংহের বাংলা', 'singherbanglaup.netrokona.gov.bd', NULL, NULL),
(4536, 491, 'Thakurakona', 'ঠাকুরাকোণা', 'thakurakonaup.netrokona.gov.bd', NULL, NULL),
(4537, 491, 'Mougati', 'মৌগাতি', 'mougatiup.netrokona.gov.bd', NULL, NULL),
(4538, 491, 'Rouha', 'রৌহা', 'rouhaup.netrokona.gov.bd', NULL, NULL),
(4539, 491, 'Medni', 'মেদনী', 'medniup.netrokona.gov.bd', NULL, NULL),
(4540, 491, 'Kaliara Babragati', 'কালিয়ারা গাবরাগাতি', 'kaliaragabragatiup.netrokona.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd', NULL, NULL),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd', NULL, NULL),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', NULL, NULL),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd', NULL, NULL),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', NULL, NULL),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', NULL, NULL),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd', NULL, NULL),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd', NULL, NULL),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd', NULL, NULL),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', NULL, NULL),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', NULL, NULL),
(12, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd', NULL, NULL),
(13, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', NULL, NULL),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', NULL, NULL),
(15, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd', NULL, NULL),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd', NULL, NULL),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd', NULL, NULL),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', NULL, NULL),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd', NULL, NULL),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd', NULL, NULL),
(21, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd', NULL, NULL),
(22, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd', NULL, NULL),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', NULL, NULL),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', NULL, NULL),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd', NULL, NULL),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', NULL, NULL),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd', NULL, NULL),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', NULL, NULL),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', NULL, NULL),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', NULL, NULL),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', NULL, NULL),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', NULL, NULL),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', NULL, NULL),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd', NULL, NULL),
(35, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd', NULL, NULL),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', NULL, NULL),
(37, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd', NULL, NULL),
(38, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd', NULL, NULL),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', NULL, NULL),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', NULL, NULL),
(41, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', NULL, NULL),
(42, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', NULL, NULL),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', NULL, NULL),
(44, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', NULL, NULL),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', NULL, NULL),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd', NULL, NULL),
(47, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', NULL, NULL),
(48, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd', NULL, NULL),
(49, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd', NULL, NULL),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd', NULL, NULL),
(51, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', NULL, NULL),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd', NULL, NULL),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd', NULL, NULL),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', NULL, NULL),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', NULL, NULL),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', NULL, NULL),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', NULL, NULL),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', NULL, NULL),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', NULL, NULL),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', NULL, NULL),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', NULL, NULL),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd', NULL, NULL),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd', NULL, NULL),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', NULL, NULL),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', NULL, NULL),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', NULL, NULL),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd', NULL, NULL),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd', NULL, NULL),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', NULL, NULL),
(70, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', NULL, NULL),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', NULL, NULL),
(72, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd', NULL, NULL),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', NULL, NULL),
(74, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd', NULL, NULL),
(75, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', NULL, NULL),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd', NULL, NULL),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', NULL, NULL),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd', NULL, NULL),
(79, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', NULL, NULL),
(80, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', NULL, NULL),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', NULL, NULL),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', NULL, NULL),
(83, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', NULL, NULL),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', NULL, NULL),
(85, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd', NULL, NULL),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd', NULL, NULL),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', NULL, NULL),
(88, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', NULL, NULL),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', NULL, NULL),
(90, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd', NULL, NULL),
(91, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', NULL, NULL),
(92, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', NULL, NULL),
(93, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', NULL, NULL),
(94, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd', NULL, NULL),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', NULL, NULL),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd', NULL, NULL),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', NULL, NULL),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd', NULL, NULL),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', NULL, NULL),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', NULL, NULL),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd', NULL, NULL),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd', NULL, NULL),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd', NULL, NULL),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', NULL, NULL),
(105, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd', NULL, NULL),
(106, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', NULL, NULL),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd', NULL, NULL),
(108, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', NULL, NULL),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', NULL, NULL),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', NULL, NULL),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd', NULL, NULL),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', NULL, NULL),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd', NULL, NULL),
(114, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', NULL, NULL),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', NULL, NULL),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', NULL, NULL),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd', NULL, NULL),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd', NULL, NULL),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd', NULL, NULL),
(120, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd', NULL, NULL),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd', NULL, NULL),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd', NULL, NULL),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd', NULL, NULL),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', NULL, NULL),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', NULL, NULL),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', NULL, NULL),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd', NULL, NULL),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', NULL, NULL),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd', NULL, NULL),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd', NULL, NULL),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd', NULL, NULL),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd', NULL, NULL),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', NULL, NULL),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd', NULL, NULL),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', NULL, NULL),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', NULL, NULL),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd', NULL, NULL),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd', NULL, NULL),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd', NULL, NULL),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', NULL, NULL),
(141, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd', NULL, NULL),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd', NULL, NULL),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd', NULL, NULL),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd', NULL, NULL),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', NULL, NULL),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', NULL, NULL),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd', NULL, NULL),
(148, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', NULL, NULL),
(149, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd', NULL, NULL),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', NULL, NULL),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd', NULL, NULL),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', NULL, NULL),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', NULL, NULL),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', NULL, NULL),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', NULL, NULL),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', NULL, NULL),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd', NULL, NULL),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', NULL, NULL),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', NULL, NULL),
(160, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', NULL, NULL),
(161, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd', NULL, NULL),
(162, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd', NULL, NULL),
(163, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', NULL, NULL),
(164, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', NULL, NULL),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd', NULL, NULL),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd', NULL, NULL),
(167, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd', NULL, NULL),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', NULL, NULL),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd', NULL, NULL),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd', NULL, NULL),
(171, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd', NULL, NULL),
(172, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd', NULL, NULL),
(173, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', NULL, NULL),
(174, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd', NULL, NULL),
(175, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', NULL, NULL),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd', NULL, NULL),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd', NULL, NULL),
(178, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd', NULL, NULL),
(179, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd', NULL, NULL),
(180, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd', NULL, NULL),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd', NULL, NULL),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', NULL, NULL),
(183, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', NULL, NULL),
(184, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd', NULL, NULL),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', NULL, NULL),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', NULL, NULL),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', NULL, NULL),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd', NULL, NULL),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd', NULL, NULL),
(190, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd', NULL, NULL),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd', NULL, NULL),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', NULL, NULL),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', NULL, NULL),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', NULL, NULL),
(195, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd', NULL, NULL),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', NULL, NULL),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', NULL, NULL),
(198, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd', NULL, NULL),
(199, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', NULL, NULL),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', NULL, NULL),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', NULL, NULL),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd', NULL, NULL),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd', NULL, NULL),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd', NULL, NULL),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', NULL, NULL),
(206, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd', NULL, NULL),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd', NULL, NULL),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd', NULL, NULL),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd', NULL, NULL),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd', NULL, NULL),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', NULL, NULL),
(212, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', NULL, NULL),
(213, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd', NULL, NULL),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd', NULL, NULL),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', NULL, NULL),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', NULL, NULL),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', NULL, NULL),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', NULL, NULL),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd', NULL, NULL),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', NULL, NULL),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd', NULL, NULL),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd', NULL, NULL),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', NULL, NULL),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', NULL, NULL),
(225, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', NULL, NULL),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', NULL, NULL),
(227, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', NULL, NULL),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', NULL, NULL),
(229, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', NULL, NULL),
(230, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', NULL, NULL),
(231, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', NULL, NULL),
(232, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd', NULL, NULL),
(233, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', NULL, NULL),
(234, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd', NULL, NULL),
(235, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', NULL, NULL),
(236, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd', NULL, NULL),
(237, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd', NULL, NULL),
(238, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', NULL, NULL),
(239, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', NULL, NULL),
(240, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd', NULL, NULL),
(241, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', NULL, NULL),
(242, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', NULL, NULL),
(243, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', NULL, NULL),
(244, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd', NULL, NULL),
(245, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', NULL, NULL),
(246, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', NULL, NULL),
(247, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', NULL, NULL),
(248, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', NULL, NULL),
(249, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', NULL, NULL),
(250, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', NULL, NULL),
(251, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', NULL, NULL),
(252, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd', NULL, NULL),
(253, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd', NULL, NULL),
(254, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd', NULL, NULL),
(255, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', NULL, NULL),
(256, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', NULL, NULL),
(257, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd', NULL, NULL),
(258, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd', NULL, NULL),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd', NULL, NULL),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', NULL, NULL),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd', NULL, NULL),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd', NULL, NULL),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd', NULL, NULL),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', NULL, NULL),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd', NULL, NULL),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd', NULL, NULL),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd', NULL, NULL),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd', NULL, NULL),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd', NULL, NULL),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', NULL, NULL),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd', NULL, NULL),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', NULL, NULL),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', NULL, NULL),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', NULL, NULL),
(275, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', NULL, NULL),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', NULL, NULL),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', NULL, NULL),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', NULL, NULL),
(279, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', NULL, NULL),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', NULL, NULL),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', NULL, NULL),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', NULL, NULL),
(283, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', NULL, NULL),
(284, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', NULL, NULL),
(285, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', NULL, NULL),
(286, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', NULL, NULL),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', NULL, NULL),
(288, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', NULL, NULL),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', NULL, NULL),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', NULL, NULL),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd', NULL, NULL),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', NULL, NULL),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd', NULL, NULL),
(294, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', NULL, NULL),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd', NULL, NULL),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd', NULL, NULL),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', NULL, NULL),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', NULL, NULL),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd', NULL, NULL),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', NULL, NULL),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', NULL, NULL),
(302, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', NULL, NULL),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd', NULL, NULL),
(304, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', NULL, NULL),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', NULL, NULL),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', NULL, NULL),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', NULL, NULL),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', NULL, NULL),
(309, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd', NULL, NULL),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd', NULL, NULL),
(311, 40, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd', NULL, NULL),
(312, 40, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd', NULL, NULL),
(313, 40, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', NULL, NULL),
(314, 40, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd', NULL, NULL),
(315, 40, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd', NULL, NULL),
(316, 40, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd', NULL, NULL),
(317, 41, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', NULL, NULL),
(318, 41, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', NULL, NULL),
(319, 41, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', NULL, NULL),
(320, 41, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', NULL, NULL),
(321, 41, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd', NULL, NULL),
(322, 42, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', NULL, NULL),
(323, 42, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd', NULL, NULL),
(324, 42, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd', NULL, NULL),
(325, 42, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', NULL, NULL),
(326, 42, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', NULL, NULL),
(327, 42, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd', NULL, NULL),
(328, 43, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', NULL, NULL),
(329, 43, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd', NULL, NULL),
(330, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', NULL, NULL),
(331, 43, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', NULL, NULL),
(332, 43, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', NULL, NULL),
(333, 44, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd', NULL, NULL),
(334, 44, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', NULL, NULL),
(335, 44, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd', NULL, NULL),
(336, 44, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd', NULL, NULL),
(337, 44, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd', NULL, NULL),
(338, 44, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd', NULL, NULL),
(339, 44, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd', NULL, NULL),
(340, 44, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd', NULL, NULL),
(341, 44, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd', NULL, NULL),
(342, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', NULL, NULL),
(343, 44, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd', NULL, NULL),
(344, 44, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', NULL, NULL),
(345, 45, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd', NULL, NULL),
(346, 45, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', NULL, NULL),
(347, 45, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd', NULL, NULL),
(348, 45, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd', NULL, NULL),
(349, 45, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', NULL, NULL),
(350, 45, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', NULL, NULL),
(351, 45, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', NULL, NULL),
(352, 45, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', NULL, NULL),
(353, 45, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', NULL, NULL),
(354, 45, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', NULL, NULL),
(355, 45, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', NULL, NULL),
(356, 45, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', NULL, NULL),
(357, 45, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd', NULL, NULL),
(358, 46, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd', NULL, NULL),
(359, 46, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd', NULL, NULL),
(360, 46, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', NULL, NULL),
(361, 46, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd', NULL, NULL),
(362, 46, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd', NULL, NULL),
(363, 46, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', NULL, NULL),
(364, 46, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd', NULL, NULL),
(365, 47, 'Savar', 'সাভার', 'savar.dhaka.gov.bd', NULL, NULL),
(366, 47, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd', NULL, NULL),
(367, 47, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', NULL, NULL),
(368, 47, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', NULL, NULL),
(369, 47, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd', NULL, NULL),
(370, 48, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', NULL, NULL),
(371, 48, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', NULL, NULL),
(372, 48, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', NULL, NULL),
(373, 48, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd', NULL, NULL),
(374, 48, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd', NULL, NULL),
(375, 48, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', NULL, NULL),
(376, 49, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', NULL, NULL),
(377, 49, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', NULL, NULL),
(378, 49, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd', NULL, NULL),
(379, 49, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', NULL, NULL),
(380, 49, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd', NULL, NULL),
(381, 50, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', NULL, NULL),
(382, 50, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd', NULL, NULL),
(383, 50, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd', NULL, NULL),
(384, 50, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd', NULL, NULL),
(385, 51, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', NULL, NULL),
(386, 51, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', NULL, NULL),
(387, 51, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', NULL, NULL),
(388, 51, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', NULL, NULL),
(389, 51, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', NULL, NULL),
(390, 52, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', NULL, NULL),
(391, 52, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', NULL, NULL),
(392, 52, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', NULL, NULL),
(393, 52, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd', NULL, NULL),
(394, 52, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', NULL, NULL),
(395, 52, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', NULL, NULL),
(396, 52, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', NULL, NULL),
(397, 52, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd', NULL, NULL),
(398, 52, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd', NULL, NULL),
(399, 53, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', NULL, NULL),
(400, 53, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', NULL, NULL),
(401, 53, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd', NULL, NULL),
(402, 53, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd', NULL, NULL),
(403, 53, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', NULL, NULL),
(404, 54, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', NULL, NULL),
(405, 54, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', NULL, NULL),
(406, 54, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', NULL, NULL),
(407, 54, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd', NULL, NULL),
(408, 54, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', NULL, NULL),
(409, 54, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', NULL, NULL),
(410, 54, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd', NULL, NULL),
(411, 54, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', NULL, NULL),
(412, 54, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', NULL, NULL),
(413, 54, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', NULL, NULL),
(414, 54, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd', NULL, NULL),
(415, 54, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd', NULL, NULL),
(416, 54, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', NULL, NULL),
(417, 55, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', NULL, NULL),
(418, 55, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', NULL, NULL),
(419, 55, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', NULL, NULL),
(420, 55, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', NULL, NULL),
(421, 55, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', NULL, NULL),
(422, 56, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', NULL, NULL),
(423, 56, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd', NULL, NULL),
(424, 56, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd', NULL, NULL),
(425, 56, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', NULL, NULL),
(426, 56, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', NULL, NULL),
(427, 56, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', NULL, NULL),
(428, 57, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', NULL, NULL),
(429, 57, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', NULL, NULL),
(430, 57, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', NULL, NULL),
(431, 57, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd', NULL, NULL),
(432, 57, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', NULL, NULL),
(433, 57, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', NULL, NULL),
(434, 57, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', NULL, NULL),
(435, 58, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', NULL, NULL),
(436, 58, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', NULL, NULL),
(437, 58, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', NULL, NULL),
(438, 58, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd', NULL, NULL),
(439, 58, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', NULL, NULL),
(440, 59, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', NULL, NULL),
(441, 59, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd', NULL, NULL),
(442, 59, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', NULL, NULL),
(443, 59, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', NULL, NULL),
(444, 59, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', NULL, NULL),
(445, 59, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', NULL, NULL),
(446, 59, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd', NULL, NULL),
(447, 59, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd', NULL, NULL),
(448, 60, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', NULL, NULL),
(449, 60, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', NULL, NULL),
(450, 60, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', NULL, NULL),
(451, 60, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', NULL, NULL),
(452, 60, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd', NULL, NULL),
(453, 60, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd', NULL, NULL),
(454, 60, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd', NULL, NULL),
(455, 60, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd', NULL, NULL),
(456, 60, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', NULL, NULL),
(457, 61, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', NULL, NULL),
(458, 61, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', NULL, NULL),
(459, 61, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', NULL, NULL),
(460, 61, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd', NULL, NULL),
(461, 61, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', NULL, NULL),
(462, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', NULL, NULL),
(463, 62, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd', NULL, NULL),
(464, 62, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd', NULL, NULL),
(465, 62, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', NULL, NULL),
(466, 62, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', NULL, NULL),
(467, 62, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', NULL, NULL),
(468, 62, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd', NULL, NULL),
(469, 62, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', NULL, NULL),
(470, 62, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', NULL, NULL),
(471, 62, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', NULL, NULL),
(472, 62, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', NULL, NULL),
(473, 62, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd', NULL, NULL),
(474, 62, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', NULL, NULL),
(475, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', NULL, NULL),
(476, 63, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd', NULL, NULL),
(477, 63, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd', NULL, NULL),
(478, 63, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', NULL, NULL),
(479, 63, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', NULL, NULL),
(480, 63, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', NULL, NULL),
(481, 63, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', NULL, NULL),
(482, 64, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd', NULL, NULL),
(483, 64, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', NULL, NULL),
(484, 64, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd', NULL, NULL),
(485, 64, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd', NULL, NULL),
(486, 64, 'Madan', 'মদন', 'madan.netrokona.gov.bd', NULL, NULL),
(487, 64, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', NULL, NULL),
(488, 64, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', NULL, NULL),
(489, 64, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', NULL, NULL),
(490, 64, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', NULL, NULL),
(491, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Mehedi Khan Rakib', 'mkrcoding1998@gmail.com', NULL, '$2y$12$Pe.BtAd0Sjib3FMOC2k1oeQL4EqlNfgibt3PrzfMzf8dU6ofPqa0O', '01727027277', '83/1/5 Gohailkandi Road,Sadar', 1, NULL, '2024-09-27 23:36:01', '2024-09-27 23:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `video_category_id` bigint UNSIGNED NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_category_id`, `video`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 5, 'w0_DuxhL0ug', 1, '2024-09-26 00:29:01', '2024-09-26 00:55:41'),
(4, 2, 'w0_DuxhL0ug', 1, '2024-09-27 06:17:09', '2024-09-27 06:17:09'),
(5, 2, 'w0_DuxhL0ug', 1, '2024-09-27 06:17:27', '2024-09-27 06:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Program', 'program', 1, '2024-09-26 00:27:28', '2024-09-26 00:27:28'),
(3, 'Donation', 'donation', 1, '2024-09-26 00:27:37', '2024-09-26 00:57:53'),
(5, 'Appeal', 'appeal', 1, '2024-09-26 00:28:48', '2024-09-26 00:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `skills` json DEFAULT NULL,
  `experiences` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bring_change` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `title`, `first_name`, `last_name`, `dob`, `age`, `occupation`, `institute`, `phone`, `email`, `street`, `city`, `state`, `post_code`, `country_id`, `skills`, `experiences`, `bring_change`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'mr.', 'Mehedi Khan', 'Rakib', '1998-12-30', 27, 'Student', 'JKKNIU', '01727027277', 'mkrcoding1998@gmail.com', '83/1/5 Gohailkandi Road,Sadar', 'Mymensingh', 'Dhaka', '2200', 18, '[\"reading\", \"writting\", \"travelling\"]', 'Two years of experience', 'I am sure to bring many changes to your company.', 'volunteer_photo-1726843273.jpg', 1, '2024-09-20 08:41:13', '2024-09-20 08:41:39'),
(3, 'mr.', 'Mehedi Khan', 'Rakib', '2010-12-30', 12, 'Student', 'JKKNIU', '01727027276', 'mkrakib007@gmail.com', '83/1/5 Gohailkandi Road,Sadar', 'Mymensingh', 'Mymensingh', '2200', 18, '[\"reading\", \"writing\"]', 'Two years', 'Massive', 'volunteer_photo-1727266314.png', 0, '2024-09-25 06:11:54', '2024-09-25 06:11:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_categories`
--
ALTER TABLE `about_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_categories_slug_unique` (`slug`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `appeals`
--
ALTER TABLE `appeals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appeal_photos`
--
ALTER TABLE `appeal_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appeal_photos_appeal_id_foreign` (`appeal_id`);

--
-- Indexes for table `appeal_videos`
--
ALTER TABLE `appeal_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appeal_videos_appeal_id_foreign` (`appeal_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `causes_orphan_id_foreign` (`orphan_id`);

--
-- Indexes for table `cause_donations`
--
ALTER TABLE `cause_donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cause_donations_cause_id_foreign` (`cause_id`),
  ADD KEY `cause_donations_user_id_foreign` (`user_id`);

--
-- Indexes for table `cause_faqs`
--
ALTER TABLE `cause_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_photos`
--
ALTER TABLE `cause_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cause_photos_cause_id_foreign` (`cause_id`);

--
-- Indexes for table `cause_videos`
--
ALTER TABLE `cause_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cause_videos_cause_id_foreign` (`cause_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `executives`
--
ALTER TABLE `executives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `executives_country_id_foreign` (`country_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_items`
--
ALTER TABLE `home_page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphans`
--
ALTER TABLE `orphans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orphans_email_address_unique` (`email_address`);

--
-- Indexes for table `other_page_items`
--
ALTER TABLE `other_page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_banner`
--
ALTER TABLE `pages_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_photo_category_id_foreign` (`photo_category_id`);

--
-- Indexes for table `photo_categories`
--
ALTER TABLE `photo_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo_categories_slug_unique` (`slug`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_category_id_foreign` (`post_category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_photos`
--
ALTER TABLE `program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_photos_program_id_foreign` (`program_id`);

--
-- Indexes for table `program_tickets`
--
ALTER TABLE `program_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_tickets_program_id_foreign` (`program_id`),
  ADD KEY `program_tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `program_videos`
--
ALTER TABLE `program_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_videos_program_id_foreign` (`program_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_video_category_id_foreign` (`video_category_id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_categories_slug_unique` (`slug`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volunteers_country_id_foreign` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_categories`
--
ALTER TABLE `about_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appeals`
--
ALTER TABLE `appeals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appeal_photos`
--
ALTER TABLE `appeal_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appeal_videos`
--
ALTER TABLE `appeal_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cause_donations`
--
ALTER TABLE `cause_donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cause_faqs`
--
ALTER TABLE `cause_faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cause_photos`
--
ALTER TABLE `cause_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cause_videos`
--
ALTER TABLE `cause_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `executives`
--
ALTER TABLE `executives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_page_items`
--
ALTER TABLE `home_page_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orphans`
--
ALTER TABLE `orphans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `other_page_items`
--
ALTER TABLE `other_page_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages_banner`
--
ALTER TABLE `pages_banner`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photo_categories`
--
ALTER TABLE `photo_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program_photos`
--
ALTER TABLE `program_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `program_tickets`
--
ALTER TABLE `program_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program_videos`
--
ALTER TABLE `program_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4541;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD CONSTRAINT `about_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `about_categories` (`id`);

--
-- Constraints for table `appeal_photos`
--
ALTER TABLE `appeal_photos`
  ADD CONSTRAINT `appeal_photos_appeal_id_foreign` FOREIGN KEY (`appeal_id`) REFERENCES `appeals` (`id`);

--
-- Constraints for table `appeal_videos`
--
ALTER TABLE `appeal_videos`
  ADD CONSTRAINT `appeal_videos_appeal_id_foreign` FOREIGN KEY (`appeal_id`) REFERENCES `appeals` (`id`);

--
-- Constraints for table `causes`
--
ALTER TABLE `causes`
  ADD CONSTRAINT `causes_orphan_id_foreign` FOREIGN KEY (`orphan_id`) REFERENCES `orphans` (`id`);

--
-- Constraints for table `cause_donations`
--
ALTER TABLE `cause_donations`
  ADD CONSTRAINT `cause_donations_cause_id_foreign` FOREIGN KEY (`cause_id`) REFERENCES `causes` (`id`),
  ADD CONSTRAINT `cause_donations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cause_photos`
--
ALTER TABLE `cause_photos`
  ADD CONSTRAINT `cause_photos_cause_id_foreign` FOREIGN KEY (`cause_id`) REFERENCES `causes` (`id`);

--
-- Constraints for table `cause_videos`
--
ALTER TABLE `cause_videos`
  ADD CONSTRAINT `cause_videos_cause_id_foreign` FOREIGN KEY (`cause_id`) REFERENCES `causes` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `executives`
--
ALTER TABLE `executives`
  ADD CONSTRAINT `executives_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_photo_category_id_foreign` FOREIGN KEY (`photo_category_id`) REFERENCES `photo_categories` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_category_id_foreign` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`);

--
-- Constraints for table `program_photos`
--
ALTER TABLE `program_photos`
  ADD CONSTRAINT `program_photos_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `program_tickets`
--
ALTER TABLE `program_tickets`
  ADD CONSTRAINT `program_tickets_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `program_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `program_videos`
--
ALTER TABLE `program_videos`
  ADD CONSTRAINT `program_videos_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_video_category_id_foreign` FOREIGN KEY (`video_category_id`) REFERENCES `video_categories` (`id`);

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `volunteers_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
