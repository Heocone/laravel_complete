-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2023 at 10:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_9_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_attribute_id` bigint UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`, `quantity`) VALUES
(53, 2, 'Pink', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(54, 2, 'White', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(55, 2, 'green', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(56, 3, 'S', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(57, 3, 'M', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(58, 3, 'L', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(59, 3, 'XL', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(81, 2, 'green', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(82, 2, 'yellow', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(83, 2, 'white', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(84, 2, 'purple', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(85, 2, 'black', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(86, 2, 'organe', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(87, 3, 'S', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(88, 3, 'M', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(89, 3, 'L', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(90, 3, 'XL', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(91, 3, 'XXL', 64, '2023-07-07 09:57:14', '2023-07-07 09:57:14', 10),
(92, 2, 'green', 58, '2023-07-07 10:01:18', '2023-07-07 10:01:18', 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(1, 'Quần áo nam', 'quan-ao-nam', '2023-05-23 03:01:14', '2023-06-16 16:22:46', '1686297222.jpg', 1),
(2, 'Túi sách nữ', 'tui-sach-nu', '2023-05-23 03:01:14', '2023-06-09 08:04:17', 'category-thumb-2.jpg', 1),
(3, 'Dép nữ', 'dep-nu', '2023-05-23 03:01:14', '2023-06-09 08:04:26', 'category-thumb-3.jpg', 1),
(4, 'Mũ vải lanh', 'mu-vai-lanh', '2023-05-23 03:01:14', '2023-06-09 08:06:19', 'category-thumb-4.jpg', 1),
(5, 'Giầy nam', 'giay-nam', '2023-05-23 03:01:14', '2023-06-09 08:06:27', 'category-thumb-5.jpg', 1),
(6, 'Gối ngủ', 'goi-ngu', '2023-05-23 03:01:14', '2023-06-09 08:06:35', 'category-thumb-6.jpg', 1),
(9, 'Quần nữ', 'quan-nu', '2023-06-08 15:40:26', '2023-06-09 08:06:48', 'category-thumb-7.jpg', 1),
(10, 'Mũ vải nữ', 'mu-vai-nu', '2023-06-09 07:50:10', '2023-06-09 08:07:06', '1686297010.jpg', 1),
(11, 'Quần áo nữ', 'quan-ao-nu', '2023-06-16 10:42:14', '2023-06-16 16:24:40', '1686932680.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'HEO CON', 'kienhoang50099@gmail.com', '0362204640', 'Mong muon hop tac', 'Lew lew', '2023-06-15 18:02:02', '2023-06-15 18:02:02'),
(4, 'HEO CON', 'kienhoang50099@gmail.com', '0362204640', 'jhukhh', 'kjkl', '2023-07-08 03:46:23', '2023-07-08 03:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(3, 'sale200', 'fixed', '200.00', '0.00', '2023-06-12 13:25:01', '2023-06-12 13:25:01', '2023-06-13 03:49:39'),
(4, 'sale10', 'percent', '10.00', '500.00', '2023-06-12 13:59:37', '2023-06-12 13:59:37', '2023-06-15 03:49:39'),
(5, 'salenew1', 'fixed', '200.00', '1000.00', '2023-06-12 14:16:45', '2023-06-13 04:02:12', '2023-06-12 04:02:00'),
(6, 'sale2023', 'percent', '10.00', '5050.00', '2023-06-13 03:50:54', '2023-06-13 03:55:30', '2023-06-15 03:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mùa Hè', 'Nóng Bức', 'Sao lại phải nóng', 'Mua ngay các sản phẩm với giá siêu mát.', 'http://laravel_9_pro.test/shop', '1686213873.png', 1, '2023-06-08 08:44:33', '2023-06-08 15:10:46'),
(3, 'Ưu đãi tốt nhất.', 'Ưu đãi siêu giá trị', 'Trên tất cả các sản phẩm', 'Tiết kiệm nhiều hơn với phiếu giảm giá & giảm giá tới 70%', 'http://laravel_9_pro.test/shop', '1686236620.png', 1, '2023-06-08 15:03:40', '2023-07-08 04:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_23_085130_create_categories_table', 2),
(6, '2023_05_23_085147_create_products_table', 3),
(7, '2023_06_05_150803_create_update_product_table', 4),
(8, '2023_06_05_163904_create_update_product1_table', 5),
(9, '2023_06_07_181227_create_home_sliders_table', 6),
(10, '2023_06_08_223301_update_table_categories', 7),
(11, '2023_06_09_142424_update_table_categories2', 8),
(12, '2023_06_10_100545_create_coupons_table', 9),
(13, '2023_06_10_114146_create_product_attributes_table', 10),
(14, '2023_06_13_104003_add_expiry_date_to_coupons_table', 11),
(15, '2023_06_13_154929_create_orders_table', 12),
(16, '2023_06_13_154937_create_order_items_table', 12),
(17, '2023_06_13_154945_create_shippings_table', 12),
(18, '2023_06_13_154955_create_transactions_table', 12),
(19, '2023_06_14_005955_add_information_table', 13),
(20, '2023_06_15_161912_table_update_orders_1', 14),
(21, '2023_06_16_003510_create_contacts_table', 15),
(22, '2023_06_16_155609_create_shoppingcart_table', 16),
(23, '2023_06_16_170003_create_subcategories_table', 17),
(24, '2023_06_16_173115_update_subcategories_table', 18),
(25, '2023_06_16_235632_add_subcategory_id_to_products_table', 19),
(26, '2023_06_17_000442_add_subcategory_id_to_products_table2', 20),
(27, '2023_06_17_023351_update_users_table', 21),
(28, '2023_06_17_091344_create_profiles_table', 22),
(29, '2023_06_17_105721_create_attribute_values_table', 23),
(30, '2023_06_17_110834_update_attribute_table', 24),
(31, '2023_06_17_152536_add_options_items_table', 25),
(32, '2023_07_01_094744_create_vnpays_table', 26),
(33, '2023_07_04_225045_create_reviews_table', 26),
(34, '2023_07_04_230147_add_rstatus_to_order_items_table', 26),
(35, '2023_07_07_233202_create_newsletters_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(6, 'kienhoang50099@gmail.com', '2023-07-07 17:26:23', '2023-07-07 17:26:23'),
(7, 'kienhoang50099@gmail.com', '2023-07-08 03:43:23', '2023-07-08 03:43:23'),
(8, 'kienhoang50099@gmail.com', '2023-07-15 04:08:22', '2023-07-15 04:08:22'),
(9, 'kienhoang50099@gmail.com', '2023-07-15 07:58:45', '2023-07-15 07:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firtsname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `information`, `delivered_date`, `canceled_date`) VALUES
(18, 1, '50.00', '0.00', '2.50', '52.50', 'HEO', 'CON', '123456789', 'user@gmail.com', 'Ha Noi', 'Ha Noi', 'HA Noi', 'Ha Noi', 'VN', '001122', 'ordered', 0, '2023-06-15 02:37:53', '2023-06-15 02:37:53', NULL, NULL, NULL),
(19, 1, '50.00', '0.00', '2.50', '52.50', 'HEO', 'CON', '123456789', 'User@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'delivered', 0, '2023-06-15 02:39:23', '2023-06-15 10:04:33', NULL, '2023-06-15', NULL),
(20, 2, '455.00', '0.00', '22.75', '477.75', 'NGUYEN', 'VAN A', '123456789', 'admin@localhost.com', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'VN', '123321', 'canceled', 0, '2023-06-15 09:17:17', '2023-06-15 17:10:49', NULL, NULL, '2023-06-16'),
(21, 2, '265.00', '0.00', '13.25', '278.25', 'HEO', 'CON be', '123456789', 'admin@localhost.com', 'Ha Noi', 'Ha Noi', 'asd', 'asd', 'VN', '123', 'delivered', 0, '2023-06-15 09:22:15', '2023-06-15 09:56:02', 'hahaha', '2023-06-15', NULL),
(22, 2, '755.00', '0.00', '37.75', '792.75', 'What your', 'Name', '0123456789', 'user@localhost.com', 'Ha Noi', 'haha', 'haah', 'Không biết', 'VN', 'ahah', 'ordered', 0, '2023-06-15 17:10:30', '2023-06-15 17:10:30', 'lewlew', NULL, NULL),
(23, 2, '265.00', '0.00', '13.25', '278.25', 'NGUYEN', 'VAN A', '123456789', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'asdf', 'asd', 'VN', '123', 'ordered', 0, '2023-06-16 08:21:17', '2023-06-16 08:21:17', 'hehe', NULL, NULL),
(147, 3, '714.00', '0.00', '35.70', '749.70', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'delivered', 0, '2023-07-05 03:38:44', '2023-07-05 03:39:20', '123', '2023-07-05', NULL),
(148, 4, '265.00', '0.00', '13.25', '278.25', 'What your', 'Name', '0123456789', 'kienhoang50099@gmail.com', '123', '123', '123', '123', 'VN', '123', 'delivered', 0, '2023-07-06 13:02:07', '2023-07-06 13:27:40', '123', '2023-07-06', NULL),
(153, 4, '265000.00', '0.00', '13250.00', '278250.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '1232', 'ordered', 0, '2023-07-08 03:23:34', '2023-07-08 03:23:34', '123123', NULL, NULL),
(154, 4, '310000.00', '0.00', '15500.00', '325500.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-07-08 03:35:05', '2023-07-08 03:35:05', '123', NULL, NULL),
(155, 4, '478000.00', '0.00', '23900.00', '501900.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'uhuj', 'kjk', 'VN', 'j5555555', 'ordered', 0, '2023-07-08 03:42:49', '2023-07-08 03:42:49', 'xcdsf', NULL, NULL),
(156, 3, '230000.00', '0.00', '11500.00', '241500.00', 'HEO', 'CON', '123', 'kienhoang50099@gmail.com', '123', '123', '123', '123', 'VN', '123', 'ordered', 0, '2023-07-13 13:30:30', '2023-07-13 13:30:30', 'aghsfjasjfajsf', NULL, NULL),
(157, 1, '230000.00', '0.00', '11500.00', '241500.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', '123', '123', '123', '123', 'VN', '123', 'ordered', 0, '2023-07-15 03:51:00', '2023-07-15 03:51:00', 'jasfjasfasfj ', NULL, NULL),
(158, 1, '230000.00', '0.00', '11500.00', '241500.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'asgags', 'agasg', 'asgasg', 'asgag', 'VN', '123123', 'ordered', 0, '2023-07-15 03:54:47', '2023-07-15 03:54:47', 'jhafsjkflalasf', NULL, NULL),
(159, 1, '463000.00', '0.00', '23150.00', '486150.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'qqwrqwr', 'asfasf', 'asfasf', 'asfasf', 'VN', '1231231', 'ordered', 0, '2023-07-15 04:13:18', '2023-07-15 04:13:18', 'asfasfsfasfasf', NULL, NULL),
(160, 3, '680000.00', '0.00', '34000.00', '714000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'fgrfg', 'rthgtruh', 'reg', 'erg', 'VN', 'egr', 'ordered', 0, '2023-07-15 08:07:54', '2023-07-15 08:07:54', 's', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `options`, `rstatus`) VALUES
(21, 3, 21, '265.00', 1, '2023-06-15 09:22:15', '2023-06-15 09:22:15', NULL, 0),
(23, 4, 22, '250.00', 1, '2023-06-15 17:10:30', '2023-06-15 17:10:30', NULL, 0),
(25, 3, 23, '265.00', 1, '2023-06-16 08:21:17', '2023-06-16 08:21:17', NULL, 0),
(228, 3, 147, '265.00', 1, '2023-07-05 03:38:44', '2023-07-06 10:17:22', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1),
(229, 9, 147, '449.00', 1, '2023-07-05 03:38:44', '2023-07-15 07:59:39', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1),
(230, 3, 148, '265.00', 1, '2023-07-06 13:02:07', '2023-07-06 13:28:02', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1),
(235, 3, 153, '265000.00', 1, '2023-07-08 03:23:34', '2023-07-08 03:23:34', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:4:\"none\";s:4:\"Size\";s:4:\"none\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(236, 7, 154, '310000.00', 1, '2023-07-08 03:35:05', '2023-07-08 03:35:05', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(237, 34, 155, '478000.00', 1, '2023-07-08 03:42:49', '2023-07-08 03:42:49', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:4:\"none\";s:4:\"Size\";s:4:\"none\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(238, 4, 156, '230000.00', 1, '2023-07-13 13:30:30', '2023-07-13 13:30:30', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(239, 4, 157, '230000.00', 1, '2023-07-15 03:51:00', '2023-07-15 03:51:00', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(240, 4, 158, '230000.00', 1, '2023-07-15 03:54:47', '2023-07-15 03:54:47', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(241, 8, 159, '463000.00', 1, '2023-07-15 04:13:18', '2023-07-15 04:13:18', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(242, 4, 160, '230000.00', 1, '2023-07-15 08:07:54', '2023-07-15 08:07:54', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(243, 64, 160, '250000.00', 1, '2023-07-15 08:07:54', '2023-07-15 08:07:54', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:4:\"Size\";s:2:\"XL\";s:5:\"Color\";s:6:\"purple\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0),
(244, 35, 160, '200000.00', 1, '2023-07-15 08:07:54', '2023-07-15 08:07:54', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:4:\"none\";s:4:\"Size\";s:4:\"none\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('heocon12300b@gmail.com', '$2y$10$o4EIUtKWMecZsfNF5FIbweDtRse3aAz63gWaDwnL.PDyNdP8BZlp.', '2023-06-23 08:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `regular_price` int NOT NULL,
  `sale_price` int DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` bigint UNSIGNED NOT NULL DEFAULT '20',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `countsale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `active`, `countsale`, `image2`, `subcategory_id`) VALUES
(3, 'Áo nam đẹp', 'ao-nam-dep', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 265000, 0, 'PRD182', 'instock', 0, 20, 'product-3-1.jpg', NULL, 4, '2023-05-23 03:04:18', '2023-07-08 03:23:34', '1', '162', 'product-3-2.jpg', NULL),
(4, 'BlackPink flowers', 'blackpink-flowers', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 250000, 230000, 'PRD191', 'instock', 0, 29, 'product-4-1.jpg', NULL, 2, '2023-05-23 03:04:18', '2023-07-15 08:07:54', '1', '6', 'product-4-2.jpg', NULL),
(6, 'Áo nam hoa hồng beautiful', 'ao-nam-hoa-hong-beautiful', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 75000, 0, 'PRD100', 'instock', 0, 0, 'product-6-1.jpg', NULL, 4, '2023-05-23 03:04:18', '2023-07-07 10:20:31', '1', NULL, 'product-6-2.jpg', NULL),
(7, 'Guốc nữ tốt nè', 'guoc-nu-tot-ne', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 431000, 310000, 'PRD405', 'instock', 0, 14, 'product-7-1.jpg', NULL, 1, '2023-05-23 03:04:56', '2023-07-08 03:35:05', '1', '1', 'product-7-2.jpg', NULL),
(8, 'Áo khoác vải nam biuti', 'ao-khoac-vai-nam-biuti', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 463000, 0, 'PRD477', 'instock', 0, 41, 'product-8-1.jpg', NULL, 2, '2023-05-23 03:04:56', '2023-07-15 04:13:18', '1', '201', 'product-8-2.jpg', NULL),
(9, 'Giầy nam siêu VIP', 'giay-nam-sieu-vip', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 449000, 444000, 'PRD442', 'instock', 0, 41, 'product-9-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-07-07 10:22:31', '1', '1', 'product-9-2.jpg', NULL),
(10, 'Quần nữ VIP', 'quan-nu-vip', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 142000, 134000, 'PRD242', 'instock', 0, 41, 'product-10-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-07-07 10:23:05', '1', NULL, 'product-10-2.jpg', NULL),
(11, 'Áo nữ vải lanh tối màu nek', 'ao-nu-vai-lanh-toi-mau-nek', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 325000, 310000, 'PRD460', 'instock', 0, 14, 'product-11-1.jpg', NULL, 2, '2023-05-23 03:04:56', '2023-07-07 10:18:50', '1', '500', 'product-11-2.jpg', NULL),
(12, 'Quần nữ vải lanh mát', 'quan-nu-vai-lanh-mat', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 295000, 0, 'PRD182', 'instock', 0, 33, 'product-12-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-07-07 10:18:01', '1', NULL, 'product-12-2.jpg', NULL),
(13, 'Áo nữ họa tiết đơn giản', 'ao-nu-hoa-tiet-don-gian', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 243000, 0, 'PRD111', 'instock', 0, 26, 'product-13-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-07-07 10:17:40', '1', NULL, 'product-13-2.jpg', NULL),
(14, 'Túi nữ đẹp', 'tui-nu-dep', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 357000, 333000, 'PRD487', 'instock', 0, 50, 'product-14-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-07-07 10:17:07', '1', '200', 'product-14-2.jpg', NULL),
(15, 'Mũ vải lanh', 'mu-vai-lanh', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 299000, 0, 'PRD300', 'instock', 0, 26, 'product-15-1.jpg', NULL, 1, '2023-05-23 03:04:56', '2023-07-07 10:16:43', '1', NULL, 'product-15-2.jpg', NULL),
(16, 'Áo nữ thêu tay đó', 'ao-nu-theu-tay-do', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 214000, 0, 'PRD114', 'instock', 0, 14, 'product-16-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-07-07 10:15:22', '1', NULL, 'product-16-2.jpg', NULL),
(17, 'Áo nam nhiều nấm', 'ao-nam-nhieu-nam', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 253000, 0, 'PRD382', 'instock', 0, 45, 'product-1-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-07-07 10:14:56', '1', '150', 'product-1-2.jpg', NULL),
(18, 'Áo nam so cute', 'ao-nam-so-cute', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 410000, 350000, 'PRD106', 'instock', 0, 37, 'product-2-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-07-07 10:13:57', '1', NULL, 'product-2-2.jpg', NULL),
(19, 'Áo nam họa tiết đẹp', 'ao-nam-hoa-tiet-dep', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 187000, 0, 'PRD217', 'instock', 0, 38, 'product-3-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-07-07 10:13:20', '1', NULL, 'product-3-2.jpg', NULL),
(20, 'Áo nam nhiều họa tiết', 'ao-nam-nhieu-hoa-tiet', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 115000, 111000, 'PRD232', 'instock', 0, 48, 'product-4-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-07-07 10:12:51', '1', NULL, 'product-4-2.jpg', NULL),
(21, 'Áo nam họa tiết hoa sáng', 'ao-nam-hoa-tiet-hoa-sang', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 326000, 0, 'PRD231', 'instock', 1, 21, 'product-5-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-07-07 10:12:21', '1', NULL, 'product-5-2.jpg', NULL),
(22, 'Áo nam họa tiết hoa', 'ao-nam-hoa-tiet-hoa', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 213000, 0, 'PRD363', 'instock', 1, 32, 'product-6-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-07-07 10:11:57', '1', NULL, 'product-6-2.jpg', NULL),
(23, 'Guốc nữ siêu bền', 'guoc-nu-sieu-ben', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao ph&ugrave; hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao ph&ugrave; hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao ph&ugrave; hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao ph&ugrave; hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao ph&ugrave; hợp từ 1m75 đ&ecirc;́n 1m80</p>\n<p>Th&iacute;ch hợp những cho người vợ khi chồng l&aacute;o lếu</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 318000, 0, 'PRD100', 'instock', 0, 25, 'product-7-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-07-07 10:11:34', '1', NULL, 'product-7-2.jpg', NULL),
(24, 'Áo khoác vải nam', 'ao-khoac-vai-nam', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 1000000, 999000, 'PRD139', 'instock', 0, 48, 'product-8-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-07-07 10:10:32', '1', NULL, 'product-8-2.jpg', NULL),
(25, 'Giầy da nhân tạo siêu bền', 'giay-da-nhan-tao-sieu-ben', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 327000, 0, 'PRD132', 'instock', 0, 18, 'product-9-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-07-07 10:10:08', '1', NULL, 'product-9-2.jpg', NULL),
(26, 'Quần vải nữ đẹp', 'quan-vai-nu-dep', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 298000, 288000, 'PRD447', 'instock', 0, 49, 'product-10-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-07-07 10:09:31', '1', NULL, 'product-10-2.jpg', NULL),
(27, 'Áo nữ vải lanh tối màu', 'ao-nu-vai-lanh-toi-mau', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 363000, 0, 'PRD483', 'instock', 0, 11, 'product-11-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-07-07 10:09:02', '1', NULL, 'product-11-2.jpg', NULL),
(28, 'Quần nữ vải lanh', 'quan-nu-vai-lanh', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 494000, 0, 'PRD228', 'instock', 0, 39, 'product-12-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-07-07 10:08:11', '1', NULL, 'product-12-2.jpg', NULL),
(29, 'Áo nữ vải lụa mát', 'ao-nu-vai-lua-mat', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 375000, 0, 'PRD286', 'instock', 0, 21, 'product-13-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-07-07 10:07:47', '1', NULL, 'product-13-2.jpg', NULL),
(30, 'Túi đeo nữ nhỏ dễ thương', 'tui-deo-nu-nho-de-thuong', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 211000, 0, 'PRD170', 'instock', 0, 21, 'product-14-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-07-07 10:07:26', '1', '110', 'product-14-2.jpg', NULL),
(31, 'Mũ nữ đẹp đủ loại', 'mu-nu-dep-du-loai', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 431000, 0, 'PRD368', 'instock', 1, 48, 'product-15-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-07-07 10:06:48', '1', NULL, 'product-15-2.jpg', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `active`, `countsale`, `image2`, `subcategory_id`) VALUES
(32, 'Vẫn là áo nữ thêu tay', 'van-la-ao-nu-theu-tay', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 277000, 0, 'PRD240', 'instock', 1, 41, 'product-16-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-07-07 10:06:17', '1', '100', 'product-16-2.jpg', NULL),
(33, 'Áo nữ thêu tay', 'ao-nu-theu-tay', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 343000, 324000, 'PRD143', 'instock', 1, 21, 'product-16-3.jpg', NULL, 4, '2023-05-30 14:41:20', '2023-07-07 10:05:56', '1', NULL, 'product-16-4.jpg', NULL),
(34, 'Áo cùng túi nữ ', 'ao-cung-tui-nu', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 478000, 0, 'PRD120', 'instock', 1, 35, 'product-16-5.jpg', NULL, 2, '2023-05-30 14:41:20', '2023-07-08 03:42:49', '1', '201', 'product-16-6.jpg', NULL),
(35, 'Bộ đồ nữ siêu mát', 'bo-do-nu-sieu-mat', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 299000, 200000, 'PRD313', 'instock', 1, 46, 'product-16-1.jpg', NULL, 11, '2023-05-30 14:41:20', '2023-07-15 08:07:54', '1', '1', 'product-16-7.jpg', NULL),
(36, 'Giày Adidudua siêu bền', 'giay-adidudua-sieu-ben', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p><p><span style=\"color: rgb(255, 5, 230);\">Aut sequi et dolorem et sint. </span></p>\n<p><span style=\"color: rgb(241, 196, 15);\">Maxime incidunt deserunt quos. </span></p>\n<p><span style=\"color: rgb(53, 152, 219);\">Id dolorum iusto delectus sequi cum fugit ex.</span></p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 450000, 0, 'PRD470', 'instock', 1, 11, 'product-9-1.jpg', NULL, 1, '2023-05-30 14:41:20', '2023-07-07 10:03:33', '1', '400', 'product-9-2.jpg', NULL),
(53, 'Áo cộc nam có cổ', 'ao-coc-nam-co-co', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 1000000, 900000, 'SKU11', 'instock', 0, 20, '1686581140.jpg', ',16868998400_jpg,16868998401_jpg,16868998402_jpg,16868998403_jpg', 1, '2023-06-12 14:45:40', '2023-07-07 10:03:02', '1', NULL, '1686581140.jpg', NULL),
(58, 'Áo nữ siêu đẹp', 'ao-nu-sieu-dep', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 100000, 0, '1122', 'instock', 0, 30, '1686942479.jpg', NULL, 11, '2023-06-16 19:07:59', '2023-07-07 10:01:18', '1', NULL, '1686942479.jpg', 4),
(59, 'Quần dài nữ siêu vip', 'quan-dai-nu-sieu-vip', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 100000, 0, '1122', 'instock', 0, 30, '1686943223.jpg', NULL, 11, '2023-06-16 19:20:23', '2023-06-16 19:20:23', '1', NULL, '1686943223.jpg', 5),
(64, 'Áo cộc nam có cổ cotton', 'ao-coc-nam-co-co-cotton', '<p>🔜 <strong>Size S : </strong>&lt; 45 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m6</p>\n<p>🔜 <strong>Size M : </strong>&lt; 55 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m65</p>\n<p>🔜 <strong>Size L : </strong>&lt; 60 kg chi&ecirc;̀u cao phù hợp từ 1m5 đ&ecirc;́n 1m7</p>\n<p>🔜 <strong>Size XL : </strong>60 kg &lt; 75kg chi&ecirc;̀u cao phù hợp từ 1m7 đ&ecirc;́n 1m75</p>\n<p>🔜 <strong>Size XXL: </strong>&gt; 65 kg &lt; 80kg chi&ecirc;̀u cao phù hợp từ 1m75 đ&ecirc;́n 1m80</p>', '<p>🎈 Sản xuất: Việt Nam</p>\n<p>🎈 K&iacute;ch thước XS S M L XL XXL</p>\n<p>🎈 Kiểu tay &aacute;o: Tay ngắn, tay lỡ</p>\n<p>🎈 Thiết kế thời trang #aothuntaylo ph&ugrave; hợp xu hướng hiện nay</p>\n<p>🎈 Kiểu d&aacute;ng #aophongnu đa phong c&aacute;ch #aonudep</p>\n<p>🎈 Đường may tinh tế sắc sảo</p>\n<p>🎈 #aothununisex được thi&ecirc;́t k&ecirc;́ v&ecirc;̉ đẹp trẻ trung năng đ&ocirc;̣ng nhưng kh&ocirc;ng kém ph&acirc;̀n duy&ecirc;n dáng.</p>\n<p>🎈 #aotaylo được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!</p>\n<p>🎈 Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố</p>\n<p>🎈 Thích hợp cho sự k&ecirc;́t hợp vứi qu&acirc;̀n jean, sọt,legging!</p>\n<p>🎈 #aounisex uy t&iacute;n đảm bảo tr&ecirc;n thị trường</p>\n<p>🎈 Tự h&agrave;o sản phẩm #aophong</p>\n<p>🎈 &Aacute;o thun tr&ecirc;n c&ocirc;ng nghệ mới&nbsp;</p>\n<p>🎈 #aophongtaylo b&aacute;n lẻ d&ugrave; 1 sản phẩm</p>\n<p>🎈 Sản phẩm #aophong giống h&igrave;nh 100%</p>', 250000, 0, '123', 'instock', 0, 122, '1686977585.jpg', NULL, 1, '2023-06-17 04:53:05', '2023-07-15 08:07:54', '1', '1', '1686977585.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Color', '2023-06-13 07:29:17', '2023-06-13 07:34:39'),
(3, 'Size', '2023-06-13 07:31:13', '2023-06-13 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1688659013.jpg', '19001002', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-17 02:44:30', '2023-06-17 03:31:54'),
(2, 3, '1688659013.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22 15:37:17', '2023-07-06 15:56:53'),
(3, 5, '1688659013.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-23 09:06:31', '2023-06-23 09:06:31'),
(4, 4, '1688658944.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 15:53:57', '2023-07-06 15:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'No light', 228, '2023-07-06 10:17:22', '2023-07-06 10:17:22'),
(2, 4, 'Im superIdol\n', 230, '2023-07-06 13:28:02', '2023-07-06 13:28:02'),
(3, 4, 'asdsaf', 229, '2023-07-15 07:59:35', '2023-07-15 07:59:35'),
(4, 4, 'asdsaf', 229, '2023-07-15 07:59:39', '2023-07-15 07:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"29cc08ba3033a66fab5c31fe25e8f1ba\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"29cc08ba3033a66fab5c31fe25e8f1ba\";s:2:\"id\";i:8;s:3:\"qty\";i:1;s:4:\"name\";s:26:\"Áo khoác vải nam biuti\";s:5:\"price\";d:463000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-15 04:12:59', NULL),
('admin@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-15 04:12:56', NULL),
('heocon12300b@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-23 09:21:46', NULL),
('heocon12300b@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-23 09:21:46', NULL),
('user@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:4:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:37:\"Áo sơ mi hoa văn đầy màu sắc\";s:5:\"price\";d:50;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:32:\"quia error nihil maiores et sunt\";s:5:\"price\";d:455;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";i:5;s:3:\"qty\";i:1;s:4:\"name\";s:37:\"natus veniam vitae magni possimus eum\";s:5:\"price\";d:293;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";s:2:\"id\";i:6;s:3:\"qty\";i:1;s:4:\"name\";s:45:\"totam rerum temporibus blanditiis animi omnis\";s:5:\"price\";d:75;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 11:33:39', NULL),
('user@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 11:30:20', NULL),
('User1@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"f2608f94507b33d310ecc4d668160691\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"f2608f94507b33d310ecc4d668160691\";s:2:\"id\";i:21;s:3:\"qty\";i:1;s:4:\"name\";s:30:\"Áo nam họa tiết hoa sáng\";s:5:\"price\";d:326000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"925ae581941e37522a86cf4920f88c6c\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"925ae581941e37522a86cf4920f88c6c\";s:2:\"id\";i:59;s:3:\"qty\";i:1;s:4:\"name\";s:26:\"Quần dài nữ siêu vip\";s:5:\"price\";d:100000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:4:\"Pink\";s:4:\"Size\";s:1:\"M\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"51ff549cf719aa39269d777dac29b07b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"51ff549cf719aa39269d777dac29b07b\";s:2:\"id\";i:59;s:3:\"qty\";i:1;s:4:\"name\";s:26:\"Quần dài nữ siêu vip\";s:5:\"price\";d:100000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:0:\"\";s:4:\"Size\";s:1:\"M\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-15 09:37:33', NULL),
('User1@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"bd33e4e24a9444d831df8285f4c15e30\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bd33e4e24a9444d831df8285f4c15e30\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:26:\"Bộ đồ nữ siêu mát\";s:5:\"price\";d:200000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-15 09:37:33', NULL),
('user2@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"29471163a3a5c598ccd9c1b7a885fef5\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"29471163a3a5c598ccd9c1b7a885fef5\";s:2:\"id\";i:4;s:3:\"qty\";i:1;s:4:\"name\";s:17:\"BlackPink flowers\";s:5:\"price\";d:230000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:5:\"white\";s:4:\"Size\";s:2:\"XL\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-13 16:57:14', NULL),
('user2@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"30c2120745d9e58f3a8d4f4ae03fb146\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"30c2120745d9e58f3a8d4f4ae03fb146\";s:2:\"id\";i:59;s:3:\"qty\";i:1;s:4:\"name\";s:26:\"Quần dài nữ siêu vip\";s:5:\"price\";d:100000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-13 16:57:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `popular` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`, `popular`, `image`) VALUES
(2, 'Ao coc nam', 'ao-coc-nam', 1, '2023-06-16 14:52:33', '2023-06-16 14:52:33', 0, '1686927153.jpg'),
(3, 'Ao coc nam co soc', 'ao-coc-nam-co-soc', 1, '2023-06-16 16:16:56', '2023-06-16 16:16:56', 1, '1686932216.jpg'),
(4, 'Áo dài nữ đẹp', 'ao-dai-nu-dep', 11, '2023-06-16 19:09:12', '2023-06-16 19:09:12', 0, '1686942552.jpg'),
(5, 'Quần nữ đẹp', 'quan-nu-dep', 11, '2023-06-16 19:09:37', '2023-06-16 19:09:37', 0, '1686942577.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `mode` enum('cod','vnpay','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','chờ thanh toán','thanhcong','declined','refunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 19, 'cod', 'pending', '2023-06-15 02:39:23', '2023-06-15 02:39:23'),
(4, 2, 20, 'cod', 'pending', '2023-06-15 09:17:17', '2023-06-15 09:17:17'),
(5, 2, 21, 'cod', 'pending', '2023-06-15 09:22:15', '2023-06-15 09:22:15'),
(6, 2, 22, 'cod', 'pending', '2023-06-15 17:10:30', '2023-06-15 17:10:30'),
(7, 2, 23, 'cod', 'pending', '2023-06-16 08:21:17', '2023-06-16 08:21:17'),
(81, 3, 147, 'cod', 'pending', '2023-07-05 03:38:44', '2023-07-05 03:38:44'),
(82, 4, 148, 'cod', 'pending', '2023-07-06 13:02:07', '2023-07-06 13:02:07'),
(86, 4, 153, 'vnpay', 'chờ thanh toán', '2023-07-08 03:23:34', '2023-07-08 03:23:34'),
(87, 4, 154, 'vnpay', 'thanhcong', '2023-07-08 03:35:05', '2023-07-08 03:35:27'),
(88, 4, 155, 'cod', 'pending', '2023-07-08 03:42:49', '2023-07-08 03:42:49'),
(89, 3, 156, 'cod', 'pending', '2023-07-13 13:30:30', '2023-07-13 13:30:30'),
(90, 1, 157, 'cod', 'pending', '2023-07-15 03:51:00', '2023-07-15 03:51:00'),
(91, 1, 158, 'cod', 'pending', '2023-07-15 03:54:47', '2023-07-15 03:54:47'),
(92, 1, 159, 'cod', 'pending', '2023-07-15 04:13:18', '2023-07-15 04:13:18'),
(93, 3, 160, 'cod', 'pending', '2023-07-15 08:07:54', '2023-07-15 08:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`, `firtsname`, `lastname`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`) VALUES
(1, 'Heo con', 'admin@localhost.com', NULL, '$2y$10$YSkr7uE7lrB39S.C/49ILOnD/5V/AoQcRCU/wFYxHRwC61TcJoiuu', 'ADM', NULL, '2023-05-22 09:36:29', '2023-05-22 09:36:29', 'Heo mat', 'thon', '', 'Ha Noi', NULL, '', '', '', ''),
(2, 'User', 'user@localhost.com', NULL, '$2y$10$yFuk08zUKtKwuPhKXdJ3L.mj4kVYHQPWKbWzkgZGsJTD4wLNvr03K', 'USR', NULL, '2023-05-22 11:21:51', '2023-06-01 10:54:03', '', '', '', 'Ha Noi', NULL, '', '', '', ''),
(3, 'User1', 'User1@localhost.com', NULL, '$2y$10$KgZTZET85brYJM2FBajF2OLZXF2pbv98PJZkmIOWuLq4vXRmyyhlq', 'USR', NULL, '2023-05-23 00:51:27', '2023-05-23 00:51:27', '', '', '', 'Ha Noi', NULL, '', '', '', ''),
(4, 'Bánh Bao Kim Sa', 'user2@localhost.com', NULL, '$2y$10$.IYkBgVxkz0j3qDE7m3N4e3Yw0vM.7q56YipMlU9xbfHws3Z03SA6', 'USR', NULL, '2023-05-23 00:57:17', '2023-05-23 00:57:17', '', '', '', 'Ha Noi', NULL, '', '', '', ''),
(5, 'Bánh Bao Kim Sa', 'heocon12300b@gmail.com', NULL, '$2y$10$8MiRODqxfd/eLz.Y2PjLT.YLwukFlJ4vlMMbnmjgIT2j0I5ULb2Lm', 'USR', 'HVuzN8UQe4a0h9jox1AiaRowFCXW8UNnfdXTV9XM81SEYTsacUxWrqDMDhWY', '2023-05-23 01:13:25', '2023-06-23 08:04:52', '', '', '', 'Ha Noi', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vnpays`
--

CREATE TABLE `vnpays` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vnpays`
--
ALTER TABLE `vnpays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vnpays`
--
ALTER TABLE `vnpays`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
