-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 03, 2025 at 10:58 AM
-- Server version: 8.0.40
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhm`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '15% Off', '15percent', 'j8EhQDw5TxuhJuwKw3XLL9mO63NfwO7LqaUs6wVO.png', '<h2></h2>', 'active', '2020-08-14 01:47:38', '2025-04-22 15:59:39'),
(5, '40% OFF SITEWIDE', '40-off-sitewide40-off-sitewide', 'XJpjPKNK8wEd7oZ2EZW1fraXgoFV7ZRx2n4xOumx.png', NULL, 'active', '2025-01-18 15:02:08', '2025-04-09 17:26:07'),
(7, '10% Off', 'dsd', '4BDmUZL07Akstvfmdyvun9dOZQgSjvAHI8st3o4F.png', '<p>d</p>', 'active', '2025-03-01 15:47:30', '2025-04-09 17:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `blind_options`
--

CREATE TABLE `blind_options` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1 for heading, 2 for option',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blind_options`
--

INSERT INTO `blind_options` (`id`, `name`, `keyword`, `status`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 'In Side Mount', 'inside_mount', 1, 'pVTgjmVVYAqqlmLAHZIVstuk17GGDujjNTUctfZB.png', 2, '2025-01-12 14:05:46', '2025-04-12 11:12:45'),
(2, 'Out Side Mount', 'out_side_mount', 1, 'AxuDgwvCjlFB3mrypF5ibL6bLDrH2kDzAEqtWGdz.png', 2, '2025-01-12 14:06:22', '2025-04-12 11:13:00'),
(3, 'Heading', 'heading', 1, NULL, 1, '2025-01-12 14:15:00', '2025-02-10 22:54:04'),
(4, 'Continuous Cord Loop', 'continuous_cord_loop', 1, 'bb91UnWwCzKj1PfYFhy1RYST13tewtVQQox8Cn6q.png', 2, '2025-01-13 22:49:14', '2025-04-12 11:16:17'),
(5, 'Cordless', 'cordless', 1, 'fivO2wp7PdDP3E8hLrG4GGLKsAehWpuCF53VF4at.png', 2, '2025-01-13 22:57:47', '2025-04-12 11:16:31'),
(6, 'Motorized', 'motorized', 1, 'dAblNoPTA5rovlLJW7NbUlezk3j1OUZKxrsBdklB.png', 2, '2025-01-13 22:58:41', '2025-04-12 11:16:43'),
(8, 'Left Lift', 'left_lift', 1, 'cZj3HI8U5azR01HR16KceRwtqdGVyueIZRrarLV4.png', 2, '2025-01-14 13:13:36', '2025-04-12 11:17:23'),
(9, 'Right Lift', 'right_lift', 1, '2OjSaktn9lBOph6IyUXwueycYRrHeRk4AADKqQfG.png', 2, '2025-01-14 13:18:59', '2025-04-12 11:17:37'),
(11, 'Plastic Chain', 'plastic_chain', 1, 'Ce4v0yNmeUA5fb3I8J9CaRfJGMmjfdr55Fhyg71P.png', 2, '2025-01-14 13:35:49', '2025-04-12 16:07:23'),
(12, 'Metal Chain', 'metal_chain', 1, 'Nu6Ob1oy5RFAcsEHlsqrB4sxvgnjfWzFDA6dVYWk.png', 2, '2025-01-14 13:36:57', '2025-04-12 16:07:34'),
(14, '60 Inch Extension Cable', 'sixty_inch_extension_cable', 1, NULL, 2, '2025-01-14 13:38:59', '2025-01-14 13:38:59'),
(16, 'No Remote Control', 'no_remote_control', 1, '2Nu0hKyXEryVjxOrTMeOR1Ans8j7CmBLSXZ6SSVZ.png', 2, '2025-01-14 13:58:51', '2025-04-12 16:08:00'),
(17, 'Single / Multi Channel Remote', 'single_multi_channel_remote', 1, 'fXM4fxA3JLBC0vfIlU3BRIdK1GkCig5atwb9CSiS.png', 2, '2025-01-14 13:59:56', '2025-04-12 16:08:30'),
(19, 'No Valance', 'no_valance', 1, 'PVWGDHYC5EEipVyLZMV6va9GyuI4dpGkwGiqZAqi.png', 2, '2025-01-14 14:03:07', '2025-04-12 11:21:29'),
(20, 'Fabric Wraped Valance', 'fabric_wraped_valance', 1, 'jSJpzfC70rjWz8aksSYjeKvX1iajXLDEB6dUe8w5.png', 2, '2025-01-14 14:15:49', '2025-04-12 16:09:01'),
(21, 'Valance Without Fabric', 'valance_without_fabric', 1, 'AWJsgNAgciLBYKzdl3yjZG1vbIKTgKOwVujUsJu6.png', 2, '2025-01-14 14:16:45', '2025-04-12 16:09:47'),
(22, 'Circle Valance with Fabric Insert', 'circle_valance_with_fabric_insert', 1, 'et1kqr5f6mxUROhrGQ5dWJO0o1DaB2LkyIiuq7L9.png', 2, '2025-01-14 14:18:44', '2025-04-12 16:10:32'),
(27, 'Width', 'width', 1, 'ePJNepFKswmGPMQjZq53RATnrNdWLwQQ1xLiKooA.jpg', 2, '2025-02-08 04:58:41', '2025-04-12 11:20:29'),
(28, 'Height', 'height', 1, 'mvykVFdj2znVxdXOlL5WTavOwN6qFDXNSEmSjlcC.jpg', 2, '2025-02-08 04:58:55', '2025-04-12 11:20:47'),
(29, 'Room Type', 'room_type', 1, NULL, 2, '2025-02-08 05:08:39', '2025-02-08 05:08:39'),
(31, 'Product Color Heading', 'product_color', 1, NULL, 1, '2025-02-08 12:19:58', '2025-02-15 08:50:35'),
(32, 'Mount Type', 'mount_type', 1, NULL, 1, '2025-02-10 22:55:34', '2025-02-10 22:55:34'),
(33, 'Lift Control', 'lift_control', 1, NULL, 1, '2025-02-10 23:03:58', '2025-02-10 23:03:58'),
(34, 'Lift Side', 'lift_side', 1, NULL, 1, '2025-02-10 23:05:56', '2025-02-10 23:05:56'),
(35, 'Chain Type', 'chain_type', 1, NULL, 1, '2025-02-10 23:07:05', '2025-02-10 23:07:13'),
(36, 'Pull Chain Length', 'pull_chain_length', 1, NULL, 1, '2025-02-10 23:08:56', '2025-02-10 23:08:56'),
(37, 'Pull Motor Side', 'pull_motor_side', 1, NULL, 1, '2025-02-10 23:10:25', '2025-02-10 23:10:25'),
(38, 'Valance', 'valance', 1, NULL, 1, '2025-02-10 23:11:35', '2025-02-10 23:11:35'),
(39, 'Pull Motor Left Lift', 'pull-motor-left-lift', 1, 'xoXHpnBhPU1OURBEyRdE6zphdw5GjKFEV1nWGkw0.png', 2, '2025-02-11 12:35:30', '2025-04-12 16:21:16'),
(40, 'Pull Motor Right Lift', 'pull-motor-right-lift', 1, 'qwm7cRE8frqGJLHpMyma5tvT8aMpK7HaqIbq0gIO.png', 2, '2025-02-11 12:35:55', '2025-04-12 16:21:40'),
(41, 'Product Color Option', 'product-color-option', 1, NULL, 2, '2025-02-15 08:51:21', '2025-02-15 08:51:21'),
(42, 'Choose Your Rail Color', 'choose-your-rail-color', 1, NULL, 1, '2025-02-25 14:09:08', '2025-02-25 14:09:08'),
(43, 'Default Rail Color', 'default-rail-color', 1, '6les2AXOYagoyAREWcNgpoFADe8MKi4rZ8x2PML7.png', 2, '2025-02-25 14:09:51', '2025-02-25 14:12:17'),
(44, 'Custom Rail Color', 'custom-rail-color', 1, '8KG0XdkRl93HZPv3hwUUsk5kpZMmHuqRbtdkTrWJ.png', 2, '2025-02-25 14:10:40', '2025-02-25 14:10:40'),
(45, 'Cell Type', 'cell-type', 1, NULL, 1, '2025-02-25 14:42:44', '2025-02-25 14:42:44'),
(46, 'Single Cell', 'single-cell', 1, 'TStCPAprLVydbGGxvn8xUZ85KExbVtmjDiMMGUWF.png', 2, '2025-02-25 14:44:38', '2025-04-12 11:24:33'),
(47, 'Double Cell', 'double-cell', 1, 'UYmTGbAmC3vQztDhiVqjTnlJczc4xk0pIA1DzZqx.png', 2, '2025-02-25 14:45:07', '2025-04-12 11:24:49'),
(48, 'Side Mount', 'side_mount', 1, 'KXYfakxoLd27dqwMGF6xCjjuely6KjpaWCjx2eA6.png', 2, '2025-04-12 11:13:59', '2025-04-12 11:13:59'),
(49, 'Decorative Fabrics', 'decorative-fabrics', 1, 'XX15TETJ0YGCHy7uTskQwa3gm6mXC9eYK5J30TJX.png', 2, '2025-04-21 15:45:46', '2025-04-21 15:45:46'),
(50, 'Solid Fabrics', 'solid-fabrics', 1, 'gcBCTATdPr6V4KRDuDUmp6gmzFE80ALkUJGF4fxw.png', 2, '2025-04-21 15:46:42', '2025-04-21 15:46:42'),
(51, 'Light Filtering', 'light-filtering', 1, 'NgX5xte3AdSZ0cbcyTmjrzQ9mG8c9OjVMW9QH04I.png', 2, '2025-04-21 16:15:24', '2025-04-21 16:15:24'),
(52, 'Blackout', 'blackout', 1, 'sfXnoHhsM1MODG75S6ycdR9yrrqBG7A4qGtvargN.png', 2, '2025-04-21 16:18:57', '2025-04-21 16:18:57'),
(53, 'Standard (vertical)', 'standard-vertical', 1, 'zBVJivr1d9VOEbWpJWZCTu2dA6Q2GAPULQ5zTCV2.png', 2, '2025-04-21 16:26:04', '2025-04-21 16:26:04'),
(54, 'Beaded Chain', 'beaded-chain', 1, 'dAblNoPTA5rovlLJW7NbUlezk3j1OUZKxrsBdklB.png', 2, '2025-04-22 14:28:35', '2025-04-22 14:28:35'),
(55, 'Choose Opacity', 'opacity', 1, NULL, 1, '2025-04-22 14:54:58', '2025-04-22 14:57:18'),
(56, 'Choose Fabric Orientation', 'fabric-orientation', 1, NULL, 1, '2025-04-22 14:56:38', '2025-04-22 14:57:06'),
(57, 'Choose Fabric Type', 'choose-fabric-type', 1, NULL, 1, '2025-04-22 14:59:02', '2025-04-22 14:59:02'),
(58, 'Fabric Roll Direction', 'fabric-roll-direction', 1, NULL, 1, '2025-04-22 15:01:15', '2025-04-22 15:01:15'),
(59, 'Standard Roll', 'standard-roll', 1, 'VnL6gng213KInwdiuLMPW0uP27YLRKbPJ2Iw8SPu.png', 2, '2025-04-22 15:05:27', '2025-04-22 15:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart Blinds', 'smart-blinds', 'active', '2020-08-14 04:23:00', '2025-04-19 15:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sess_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_total` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_key` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sess_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `cart_key`, `sess_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'c1ac03b506c8261041f5886fd3772436f', 'TmWSDYLBs340A9AaIN6sYvjA1WixLEtyf33Kd3Tq', NULL, '2025-03-11 18:30:26', '2025-03-11 18:30:26'),
(4, 'c17cba4004e40c120257d53be40a5edf9', NULL, 1, '2025-03-19 19:51:10', '2025-04-22 20:52:21'),
(5, 'c692e07dab56f603351ad16bd2421e367', '3jPjRxIJd6dOaVY6deRtajdddBS69lgtkw3DblOF', NULL, '2025-04-13 11:46:21', '2025-04-13 11:46:21'),
(6, 'cd21b65d1bb156d3333094dcf90a864fe', '9O9haB8chzC2aqo4szvs91xNNl1k4k2roxLNbVL7', NULL, '2025-04-13 22:35:41', '2025-04-13 22:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `unit_price` decimal(13,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `product_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_products`
--

INSERT INTO `cart_products` (`id`, `cart_key`, `product_id`, `qty`, `unit_price`, `total_price`, `product_data`, `created_at`, `updated_at`) VALUES
(1, 'c42e44caf49cf17419499b25cb1b5a3e1', 1, 1, 21.02, 21.02, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"21.02\",\"total_price\":\"21.02\",\"image\":\"v2yvHN6dxknwBJDLgYhSP7RRn4pIIqPGu4URl6MT.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"Testing\",\"value_title\":\"Testing\",\"meta\":[]},{\"id\":\"90\",\"product_option_id\":\"2\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"0.02\",\"title\":\"Mount Type\",\"keyword\":\"out_side_mount\",\"value\":\"Outside Mount\",\"value_title\":\"Outside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"8_0\\/0\",\"value_title\":\"8 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_0\\/0\",\"value_title\":\"15 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Green Color\",\"value_title\":\"Blackout Colors With White Backing - Green Color\",\"meta\":[]},{\"id\":\"95\",\"product_option_id\":\"6\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"motorized\",\"value\":\"Motorized\",\"value_title\":\"Motorized\",\"meta\":[]},{\"id\":\"107\",\"product_option_id\":\"19\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"no_valance\",\"value\":\"No Valance\",\"value_title\":\"No Valance\",\"meta\":[]},{\"id\":\"103\",\"product_option_id\":\"39\",\"parent_keyword_id\":\"102\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Pull Motor Side\",\"keyword\":\"pull-motor-left-lift\",\"value\":\"Left Lift\",\"value_title\":\"Left Lift\",\"meta\":[]},{\"id\":\"106\",\"product_option_id\":\"14\",\"parent_keyword_id\":\"105\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Pull Chain Length\",\"keyword\":\"sixty_inch_extension_cable\",\"value\":\"60 Inch Extension Cable\",\"value_title\":\"60 Inch Extension Cable\",\"meta\":[]}]}', '2025-03-11 06:51:38', '2025-03-11 06:51:38'),
(2, 'c51aa703e770c908844d16114cc0edfff', 6, 1, 11.25, 11.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"11.25\",\"total_price\":\"11.25\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"Testing\",\"value_title\":\"Testing\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"15_1\\/8\",\"value_title\":\"15 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"47_1\\/8\",\"value_title\":\"47 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', '2025-03-11 06:55:45', '2025-03-11 06:55:45'),
(3, 'c1ac03b506c8261041f5886fd3772436f', 6, 3, 9.25, 27.75, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"3\",\"unit_price\":\"9.25\",\"total_price\":\"27.75\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', '2025-03-11 13:00:26', '2025-03-11 13:00:26'),
(4, 'c1ac03b506c8261041f5886fd3772436f', 6, 2, 9.25, 18.50, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"2\",\"unit_price\":\"9.25\",\"total_price\":\"18.5\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', '2025-03-11 13:02:11', '2025-03-11 13:02:11'),
(5, 'c51aa703e770c908844d16114cc0edfff', 6, 1, 11.25, 11.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"11.25\",\"total_price\":\"11.25\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"test\",\"value_title\":\"Test\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', '2025-03-11 13:42:59', '2025-03-11 13:42:59'),
(6, 'c51aa703e770c908844d16114cc0edfff', 1, 1, 26.00, 26.00, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"26\",\"total_price\":\"26\",\"image\":\"v2yvHN6dxknwBJDLgYhSP7RRn4pIIqPGu4URl6MT.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"gtest\",\"value_title\":\"Gtest\",\"meta\":[]},{\"id\":\"89\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"4.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"Inside Mount\",\"value_title\":\"Inside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/4\",\"value_title\":\"12 1\\/4\",\"meta\":{\"eighths\":\"3\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_1\\/8\",\"value_title\":\"15 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"94\",\"product_option_id\":\"5\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"cordless\",\"value\":\"Cordless\",\"value_title\":\"Cordless\",\"meta\":[]},{\"id\":\"110\",\"product_option_id\":\"22\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"circle_valance_with_fabric_insert\",\"value\":\"Circle Valance with Fabric Insert\",\"value_title\":\"Circle Valance With Fabric Insert\",\"meta\":[]}]}', '2025-03-19 14:19:19', '2025-03-19 14:19:19'),
(7, 'c51aa703e770c908844d16114cc0edfff', 6, 1, 10.25, 10.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"10.25\",\"total_price\":\"10.25\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"gggww\",\"value_title\":\"Gggww\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', '2025-03-19 14:20:02', '2025-03-19 14:20:02'),
(8, 'c17cba4004e40c120257d53be40a5edf9', 1, 1, 25.00, 25.00, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"25\",\"total_price\":\"25\",\"image\":\"v2yvHN6dxknwBJDLgYhSP7RRn4pIIqPGu4URl6MT.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"ssdds\",\"value_title\":\"Ssdds\",\"meta\":[]},{\"id\":\"89\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"4.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"Inside Mount\",\"value_title\":\"Inside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"8_0\\/0\",\"value_title\":\"8 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_0\\/0\",\"value_title\":\"15 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"94\",\"product_option_id\":\"5\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"cordless\",\"value\":\"Cordless\",\"value_title\":\"Cordless\",\"meta\":[]},{\"id\":\"110\",\"product_option_id\":\"22\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"circle_valance_with_fabric_insert\",\"value\":\"Circle Valance with Fabric Insert\",\"value_title\":\"Circle Valance With Fabric Insert\",\"meta\":[]}]}', '2025-03-19 14:21:10', '2025-03-19 14:21:10'),
(9, 'c17cba4004e40c120257d53be40a5edf9', 6, 3, 11.25, 33.75, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"3\",\"unit_price\":\"11.25\",\"total_price\":\"33.75\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"vvws\",\"value_title\":\"Vvws\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Red Color\",\"value_title\":\"Blackout Colors With White Backing - Red Color\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', '2025-03-19 14:21:43', '2025-03-19 14:21:43'),
(10, 'c692e07dab56f603351ad16bd2421e367', 1, 3, 21.02, 63.06, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"3\",\"unit_price\":\"21.02\",\"total_price\":\"63.06\",\"image\":\"YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"texr\",\"value_title\":\"Texr\",\"meta\":[]},{\"id\":\"90\",\"product_option_id\":\"2\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"0.02\",\"title\":\"Mount Type\",\"keyword\":\"out_side_mount\",\"value\":\"Outside Mount\",\"value_title\":\"Outside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"36_1\\/8\",\"value_title\":\"36 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"38_1\\/8\",\"value_title\":\"38 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Red Color\",\"value_title\":\"Blackout Colors With White Backing - Red Color\",\"meta\":[]},{\"id\":\"95\",\"product_option_id\":\"6\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"motorized\",\"value\":\"Motorized\",\"value_title\":\"Motorized\",\"meta\":[]},{\"id\":\"109\",\"product_option_id\":\"21\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"valance_without_fabric\",\"value\":\"Valance Without Fabric\",\"value_title\":\"Valance Without Fabric\",\"meta\":[]},{\"id\":\"98\",\"product_option_id\":\"9\",\"parent_keyword_id\":\"96\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Side\",\"keyword\":\"right_lift\",\"value\":\"Right Lift\",\"value_title\":\"Right Lift\",\"meta\":[]},{\"id\":\"100\",\"product_option_id\":\"11\",\"parent_keyword_id\":\"99\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Chain Type\",\"keyword\":\"plastic_chain\",\"value\":\"Plastic Chain\",\"value_title\":\"Plastic Chain\",\"meta\":[]},{\"id\":\"104\",\"product_option_id\":\"40\",\"parent_keyword_id\":\"102\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Pull Motor Side\",\"keyword\":\"pull-motor-right-lift\",\"value\":\"Right Lift\",\"value_title\":\"Right Lift\",\"meta\":[]},{\"id\":\"106\",\"product_option_id\":\"14\",\"parent_keyword_id\":\"105\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Pull Chain Length\",\"keyword\":\"sixty_inch_extension_cable\",\"value\":\"60 Inch Extension Cable\",\"value_title\":\"60 Inch Extension Cable\",\"meta\":[]}]}', '2025-04-13 06:16:21', '2025-04-13 06:16:21'),
(11, 'c692e07dab56f603351ad16bd2421e367', 6, 1, 11.25, 11.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"11.25\",\"total_price\":\"11.25\",\"image\":\"ei6YzrAGTPRgsluFPZtEh3aAtAZyIchrwQy6kr9j.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"Bad room\",\"value_title\":\"Bad Room\",\"meta\":[]},{\"id\":\"119\",\"product_option_id\":\"2\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"3.00\",\"title\":\"Mount Type\",\"keyword\":\"out_side_mount\",\"value\":\"Out Side Mount\",\"value_title\":\"Out Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', '2025-04-13 06:25:57', '2025-04-13 06:25:57'),
(12, 'cd21b65d1bb156d3333094dcf90a864fe', 1, 1, 27.00, 27.00, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"27\",\"total_price\":\"27\",\"image\":\"YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dfgh\",\"value_title\":\"Dfgh\",\"meta\":[]},{\"id\":\"89\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"4.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"Inside Mount\",\"value_title\":\"Inside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"8_0\\/0\",\"value_title\":\"8 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_0\\/0\",\"value_title\":\"15 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"93\",\"product_option_id\":\"4\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"continuous_cord_loop\",\"value\":\"Continuous Cord Loop\",\"value_title\":\"Continuous Cord Loop\",\"meta\":[]},{\"id\":\"108\",\"product_option_id\":\"20\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"fabric_wraped_valance\",\"value\":\"Fabric Wraped Valance\",\"value_title\":\"Fabric Wraped Valance\",\"meta\":[]},{\"id\":\"98\",\"product_option_id\":\"9\",\"parent_keyword_id\":\"96\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Side\",\"keyword\":\"right_lift\",\"value\":\"Right Lift\",\"value_title\":\"Right Lift\",\"meta\":[]},{\"id\":\"101\",\"product_option_id\":\"12\",\"parent_keyword_id\":\"99\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Chain Type\",\"keyword\":\"metal_chain\",\"value\":\"Metal Chain\",\"value_title\":\"Metal Chain\",\"meta\":[]}]}', '2025-04-13 17:05:41', '2025-04-13 17:05:41'),
(13, 'c17cba4004e40c120257d53be40a5edf9', 2, 1, 0.00, 0.00, '{\"id\":2,\"title\":\"Decorative Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"0\",\"total_price\":\"0\",\"image\":\"YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png\",\"slug\":\"premium-cellular-shades\",\"options\":[{\"id\":\"141\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"140\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"45_0\\/0\",\"value_title\":\"45 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"142\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"140\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"25_0\\/0\",\"value_title\":\"25 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"149\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"148\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Red Color\",\"value_title\":\"Blackout Colors With White Backing - Red Color\",\"meta\":[]},{\"id\":\"153\",\"product_option_id\":\"5\",\"parent_keyword_id\":\"152\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Heading\",\"keyword\":\"cordless\",\"value\":\"Standard Cordless\",\"value_title\":\"Standard Cordless\",\"meta\":[]}]}', '2025-04-22 14:43:23', '2025-04-22 14:43:23'),
(14, 'c17cba4004e40c120257d53be40a5edf9', 2, 1, 0.00, 0.00, '{\"id\":2,\"title\":\"Decorative Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"0\",\"total_price\":\"0\",\"image\":\"YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png\",\"slug\":\"premium-cellular-shades\",\"options\":[{\"id\":\"138\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"137\",\"render_type\":\"card-1\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"141\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"140\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"45_0\\/0\",\"value_title\":\"45 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"142\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"140\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"25_0\\/0\",\"value_title\":\"25 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"144\",\"product_option_id\":\"49\",\"parent_keyword_id\":\"143\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Fabric Type\",\"keyword\":\"decorative-fabrics\",\"value\":\"Decorative Fabrics\",\"value_title\":\"Decorative Fabrics\",\"meta\":[]},{\"id\":\"146\",\"product_option_id\":\"51\",\"parent_keyword_id\":\"145\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Opacity\",\"keyword\":\"light-filtering\",\"value\":\"Light Filtering\",\"value_title\":\"Light Filtering\",\"meta\":[]},{\"id\":\"149\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"148\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"151\",\"product_option_id\":\"53\",\"parent_keyword_id\":\"150\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Fabric Orientation\",\"keyword\":\"standard-vertical\",\"value\":\"Standard (vertical)\",\"value_title\":\"Standard (Vertical)\",\"meta\":[]},{\"id\":\"156\",\"product_option_id\":\"54\",\"parent_keyword_id\":\"152\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"beaded-chain\",\"value\":\"Beaded Chain\",\"value_title\":\"Beaded Chain\",\"meta\":[]},{\"id\":\"159\",\"product_option_id\":\"9\",\"parent_keyword_id\":\"157\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Side\",\"keyword\":\"right_lift\",\"value\":\"Right\",\"value_title\":\"Right\",\"meta\":[]},{\"id\":\"161\",\"product_option_id\":\"59\",\"parent_keyword_id\":\"160\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Fabric Roll Direction\",\"keyword\":\"standard-roll\",\"value\":\"Standard Roll\",\"value_title\":\"Standard Roll\",\"meta\":[]},{\"id\":\"163\",\"product_option_id\":\"19\",\"parent_keyword_id\":\"162\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"no_valance\",\"value\":\"No Valance\",\"value_title\":\"No Valance\",\"meta\":[]}]}', '2025-04-22 15:22:17', '2025-04-22 15:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `short_icon`, `banner`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shades', 'shades', '<p>Shades Blinds offer a sleek and stylish way to control light and privacy. Ideal for creating a soft, modern ambiance in any room.</p>', 'BW635oMS4PZpTGdmvxJG50Qp9mTCUBUHiK8lGoqa.jpg', 'cl9jDVKOuzxySmPUBkSyleupDTV1b4X7YwBngoQz.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 1, NULL, NULL, 'active', '2025-01-12 13:18:38', '2025-04-26 15:57:18'),
(2, 'Roller Shades', 'roller-shades', '<p>Roller Shades provide a clean, minimalist look while offering excellent light control. Perfect for modern spaces with a touch of elegance.</p>', '9V547tZolMDvizERvOoKOF2MfCXhst8H0Kx0nSBb.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-01-12 13:29:20', '2025-04-30 15:07:38'),
(3, 'Roman Shades', 'roman-shades', '<p>Roman Shades combine the softness of drapery with the functionality of blinds. They add a classic, elegant touch to any room décor.</p>', 'ik7eCQyzHbIR4y1F3rHoNrOYMc1kmOeqhRtoPQPA.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-01-14 15:10:32', '2025-04-30 15:06:36'),
(4, 'Motorized Blinds', 'motorized', '<p>Motorized Blinds bring modern convenience to your space with remote-controlled operation. Perfect for hard-to-reach windows and smart home integration.</p>', 'mVlB1EAWT713JrOHT498x7KUZa4UsNMx0Vu3jIIM.jpg', '39ai8y2eKLAWAZUu9gdkyWBf6spdJGQmVK5SXYsq.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 1, NULL, NULL, 'active', '2025-01-14 15:13:08', '2025-04-26 15:55:22'),
(5, 'Remote Control', 'remote-control', '<p>this is a&nbsp;Remote Control</p>', 'ILqdpsvcFtgmQezFYlmNDM8EgRLDqqBw11M13AE3.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 4, NULL, 'active', '2025-01-14 15:15:03', '2025-04-30 15:02:08'),
(8, 'Vertical Blinds', 'vertical-blinds', 'Vertical Blinds offer a sleek and modern solution for controlling light and privacy in any room. Ideal for large windows and sliding doors, they combine style with functionality.', 'dU9wEv2bj8csvQHqxCel4U08FoO9F1Mgh5w50Oie.jpg', 'MmDLO9hUNS9ZZJYzQ5MrhkkGWqlsETIYMJpAKyf1.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 1, NULL, NULL, 'active', '2025-02-20 14:08:56', '2025-04-26 15:57:47'),
(9, 'Vinyl Blinds', 'vinyl-blinds', 'Vinyl Blinds are a durable and cost-effective window treatment, perfect for everyday use. They offer easy maintenance and excellent light control for any space.', 'KTj5xCLgGZbXIlpR6EMWEFbKMn4gZnb3hkYZgjAW.jpg', 'gcGt7sXiSTWnR6qx4rOaqvdBmuJ1xGUZTtISajAk.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 1, NULL, NULL, 'active', '2025-02-24 14:33:50', '2025-04-26 15:58:09'),
(10, 'Fabric Blinds', 'fabric-blinds', '<p>Fabric Blinds add a soft, elegant touch to your windows while providing privacy and light control. Available in various colors and textures to suit any décor.</p>', '11cB7OPlnP0WeWYjcMre8qqplflvSVAvB7BvJQD2.jpg', 'tHfhJX8LGoLQfGTZX4krktG41jvHq8KffbVXXcud.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 1, NULL, NULL, 'active', '2025-02-24 14:34:26', '2025-04-26 15:55:03'),
(11, 'Wand Control', 'wand-control', 'Wand Control', 'djflB8h4R99A5d7P9VTYz8y02Uc6WBiDOrk7FhWx.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 4, NULL, 'active', '2025-04-19 15:05:53', '2025-04-30 15:03:36'),
(12, 'Commercial Blinds', 'commercial-blinds', '<p>Commercial Blinds offer durable and functional window solutions ideal for offices, retail, and industrial spaces. Designed for performance, privacy, and professional aesthetics.</p>', 'uKfjLI7DuOnc5EwGp60eQEauRKMG9lSVHNj0wgcO.jpg', 'cykEefVwRNwAu9TgdEqdMBRjEJDmGan0gOfaCaHw.png', 'g0TKkOrAMrgSIJ5mGuGqpRFtLuFPD5oXwspiW3R2.jpg', 1, NULL, NULL, 'active', '2025-04-19 15:14:10', '2025-04-26 15:54:44'),
(13, 'Cellular Shades / Honeycomb', 'cellular-shades-honeycomb', '<p>Cellular Shades, also known as Honeycomb Shades, are designed for energy efficiency and insulation. Their unique structure traps air, keeping your home comfortable year-round.</p>', 'vmyk8vNGRiDbBIEid4FTMLlvw5MU1QDmXYStLDel.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:20:03', '2025-04-30 15:12:17'),
(14, 'Bamboo / Woven Wood Shades', 'bamboo-woven-wood-shades', '<p>Bamboo or Woven Wood Shades bring a natural, earthy texture to any space. Crafted from sustainable materials, they offer a warm, organic look while gently filtering light.</p>', 'CTXpOEkg3lNVprPH3IhkF8PqhwyXfXH9ZuNtJFuM.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:20:45', '2025-04-30 15:13:11'),
(15, 'Sheer Shades', 'sheer-shades', '<p>Sheer Shades combine the softness of fabric with the functionality of blinds. These shades allow natural light to filter through while providing privacy and a sleek, modern appearance.</p>', 'wsFg6puOo8VCCZxxEYla1hj5axffaJTRgLHqIQfM.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:21:30', '2025-04-30 15:06:01'),
(16, 'Zebra Shades', 'zebra-shades', '<p>Zebra Shades offer a stylish and versatile window treatment with alternating sheer and solid fabric stripes. These shades allow for precise light control while enhancing the aesthetic of any room.</p>', '7V6qU1AzMbFLZhseTIvNMzNUQDBzFyk7ndx4Wzp2.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:22:08', '2025-04-30 15:01:17'),
(17, 'Pleated Shades', 'pleated-shades', '<p>Pleated Shades provide a sleek, modern look with crisp, pleated fabric that adds texture and style to your windows. They offer excellent light control and insulation, making them both functional and decorative.</p>', 'h1tlL839wi0dN6USTdVBnyiqbU3KC9RK6oi2BluS.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:22:43', '2025-04-30 15:08:46'),
(18, 'Outdoor Shades', 'outdoor-shades', '<p>Outdoor Shades are designed to block the sun while enhancing your outdoor living spaces. They provide privacy, reduce glare, and help regulate temperature, making them ideal for patios, decks, and pergolas.</p>', 'x3jTPCaaypeDw8sZmuIjz5ysClt194rB39qAYzpT.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:23:14', '2025-04-30 15:11:05'),
(19, 'Motorized Shades', 'motorized-shades', '<p>Motorized Shades offer effortless control with a touch of a button, providing convenience and luxury to your windows. Perfect for hard-to-reach windows, they enhance comfort and privacy while offering a modern, sleek aesthetic.</p>', 'mVlB1EAWT713JrOHT498x7KUZa4UsNMx0Vu3jIIM.jpg', 'OD3s8MrPJvQ82Q8Dq7tWLwBTQdEq6shgyaoEClai.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 1, NULL, 'active', '2025-04-19 15:23:46', '2025-04-26 15:56:01'),
(20, 'Vertical Cellular Shades', 'vertical-cellular-shades', '<p>Vertical Cellular Shades combine the elegance of vertical blinds with the energy efficiency of honeycomb design. These shades provide excellent insulation while allowing light control and privacy in large windows or sliding doors.</p>', 'N55E5DJmJJT72y8z0hfVxD4gPD6THkDjLdos6UbY.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 8, NULL, 'active', '2025-04-19 15:27:43', '2025-04-30 15:05:18'),
(21, 'Sheer Vertical Shades', 'sheer-vertical-shades', '<p>Sheer Vertical Shades offer a stylish combination of light control and privacy with their sheer fabric panels. Ideal for large windows or sliding doors, they allow natural light to filter through while providing a soft, elegant appearance.</p>', '03926AQr5aml4ydBBi9tm7PMepPqgh85WAYkr0Lz.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 8, NULL, 'active', '2025-04-19 15:28:15', '2025-04-30 15:05:12'),
(22, 'Panel Track Blinds', 'panel-track-blinds', '<p>Panel Track Blinds provide a sleek, modern solution for covering large windows or sliding doors. Their wide fabric panels glide smoothly along a track, offering excellent light control and a contemporary look for any room.</p>', 'MK4OfO8bpTSf4RdycpkU616Zr0j4rMyHeGqPtaSn.jpg', '388h097S78hFCIzSyh2BTncjDZAKhl6tQH7A9K0L.png', 'X4TyYoo0hwxXE2ajbOWchApX4fwo4dqHWEI21qGX.png', 0, 8, NULL, 'active', '2025-04-19 15:28:46', '2025-04-30 15:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors_type_id` bigint UNSIGNED NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `price`, `image`, `colors_type_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rainier Flaxen 7700', 2.00, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 1, 1, 1, '2025-01-14 15:58:09', '2025-04-12 13:45:25'),
(2, 'Rainier Snowfall 6250', 1.10, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 1, 2, 1, '2025-01-14 15:59:14', '2025-04-27 15:24:16'),
(3, 'Coronado Powder 0001', 2.06, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 2, 1, 1, '2025-01-14 16:11:59', '2025-01-14 16:14:26'),
(4, 'Red Color', 2.00, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 1, 3, 1, '2025-02-17 14:20:06', '2025-02-17 14:20:06'),
(5, 'Green Color', 12.00, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 1, 4, 1, '2025-02-17 14:28:20', '2025-02-17 14:29:30'),
(6, 'Blue Color', 3.00, 'images/colors/aTgJ6m3ktfB4Ud6HZxmAYbrrYPs4ouP3jmMbvyvc.png', 1, 3, 1, '2025-02-17 14:31:45', '2025-02-17 14:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `colors_type`
--

CREATE TABLE `colors_type` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors_type`
--

INSERT INTO `colors_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Blackout Colors with White Backing', '2025-01-14 15:43:40', '2025-01-14 15:43:40'),
(2, 'Blackout Colors with Same Color Backing', '2025-01-14 15:43:55', '2025-01-14 15:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `shortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eighths`
--

CREATE TABLE `eighths` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eighths`
--

INSERT INTO `eighths` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '0/0', '2025-01-05 01:47:23', '2025-01-05 01:47:23'),
(2, '1/8', '2025-01-05 01:47:46', '2025-01-05 01:47:46'),
(3, '1/4', '2025-01-05 01:47:53', '2025-01-05 01:47:53'),
(4, '3/8', '2025-01-05 01:57:54', '2025-01-27 07:14:45'),
(5, '1/2', '2025-01-27 07:15:00', '2025-01-27 07:15:00'),
(6, '5/8', '2025-01-27 07:15:13', '2025-01-27 07:15:13'),
(7, '3/4', '2025-01-27 07:15:27', '2025-01-27 07:15:27'),
(8, '7/8', '2025-01-27 07:15:46', '2025-01-27 07:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `eighths_prices`
--

CREATE TABLE `eighths_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED NOT NULL,
  `eighth_id` bigint UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eighths_prices`
--

INSERT INTO `eighths_prices` (`id`, `product_id`, `size_id`, `eighth_id`, `price`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, 12.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(2, 2, 2, 2, 3.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(3, 2, 2, 3, 1.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(4, 2, 2, 4, 2.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(5, 2, 2, 5, 5.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(6, 2, 2, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(7, 2, 2, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(8, 2, 3, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(9, 2, 3, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(10, 2, 3, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(11, 2, 3, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(12, 2, 3, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(13, 2, 3, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(14, 2, 3, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(15, 2, 4, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(16, 2, 4, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(17, 2, 4, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(18, 2, 4, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(19, 2, 4, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(20, 2, 4, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(21, 2, 4, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(22, 2, 5, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(23, 2, 5, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(24, 2, 5, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(25, 2, 5, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(26, 2, 5, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(27, 2, 5, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(28, 2, 5, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(29, 2, 6, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(30, 2, 6, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(31, 2, 6, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(32, 2, 6, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(33, 2, 6, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(34, 2, 6, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(35, 2, 6, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(36, 2, 7, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(37, 2, 7, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(38, 2, 7, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(39, 2, 7, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(40, 2, 7, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(41, 2, 7, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(42, 2, 7, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(43, 2, 8, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(44, 2, 8, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(45, 2, 8, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(46, 2, 8, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(47, 2, 8, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(48, 2, 8, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(49, 2, 8, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(50, 2, 9, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(51, 2, 9, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(52, 2, 9, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(53, 2, 9, 4, 4.00, 'H', '2025-01-27 14:30:54', '2025-02-03 13:19:26'),
(54, 2, 9, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(55, 2, 9, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(56, 2, 9, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(57, 2, 10, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(58, 2, 10, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(59, 2, 10, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(60, 2, 10, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(61, 2, 10, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(62, 2, 10, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(63, 2, 10, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(64, 2, 11, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(65, 2, 11, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(66, 2, 11, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(67, 2, 11, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(68, 2, 11, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(69, 2, 11, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(70, 2, 11, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(71, 2, 12, 1, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(72, 2, 12, 2, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(73, 2, 12, 3, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(74, 2, 12, 4, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(75, 2, 12, 5, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(76, 2, 12, 6, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(77, 2, 12, 8, 0.00, 'H', '2025-01-27 14:30:54', '2025-01-27 14:50:43'),
(78, 2, 2, 1, 3.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(79, 2, 2, 2, 2.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:29:43'),
(80, 2, 2, 3, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(81, 2, 2, 4, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(82, 2, 2, 5, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(83, 2, 2, 6, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(84, 2, 3, 1, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(85, 2, 3, 2, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(86, 2, 3, 3, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(87, 2, 3, 4, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(88, 2, 3, 5, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(89, 2, 3, 6, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(90, 2, 4, 1, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(91, 2, 4, 2, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(92, 2, 4, 3, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(93, 2, 4, 4, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(94, 2, 4, 5, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(95, 2, 4, 6, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(96, 2, 5, 1, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(97, 2, 5, 2, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(98, 2, 5, 3, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(99, 2, 5, 4, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(100, 2, 5, 5, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(101, 2, 5, 6, 0.00, 'W', '2025-01-27 14:30:54', '2025-01-27 15:28:53'),
(102, 3, 2, 1, 2.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(103, 3, 2, 2, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(104, 3, 2, 3, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(105, 3, 3, 1, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(106, 3, 3, 2, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(107, 3, 3, 3, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(108, 3, 4, 1, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(109, 3, 4, 2, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(110, 3, 4, 3, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(111, 3, 5, 1, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(112, 3, 5, 2, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(113, 3, 5, 3, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(114, 3, 6, 1, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(115, 3, 6, 2, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(116, 3, 6, 3, 0.00, 'H', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(117, 3, 2, 1, 4.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:39'),
(118, 3, 2, 2, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(119, 3, 2, 3, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(120, 3, 2, 4, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(121, 3, 3, 1, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(122, 3, 3, 2, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(123, 3, 3, 3, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(124, 3, 3, 4, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(125, 3, 4, 1, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(126, 3, 4, 2, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(127, 3, 4, 3, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(128, 3, 4, 4, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(129, 3, 5, 1, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(130, 3, 5, 2, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(131, 3, 5, 3, 0.00, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:34'),
(132, 3, 5, 4, 42.04, 'W', '2025-01-27 15:30:34', '2025-01-27 15:30:50'),
(133, 1, 2, 1, 1.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(134, 1, 2, 2, 4.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(135, 1, 2, 3, 6.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(136, 1, 3, 1, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(137, 1, 3, 2, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(138, 1, 3, 3, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(139, 1, 4, 1, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(140, 1, 4, 2, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(141, 1, 4, 3, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(142, 1, 5, 1, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(143, 1, 5, 2, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(144, 1, 5, 3, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(145, 1, 6, 1, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(146, 1, 6, 2, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(147, 1, 6, 3, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(148, 1, 7, 1, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(149, 1, 7, 2, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(150, 1, 7, 3, 0.00, 'H', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(151, 1, 1, 1, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(152, 1, 1, 2, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(153, 1, 1, 3, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(154, 1, 2, 1, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(155, 1, 2, 2, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(156, 1, 2, 3, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(157, 1, 3, 1, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(158, 1, 3, 2, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(159, 1, 3, 3, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(160, 1, 4, 1, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(161, 1, 4, 2, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(162, 1, 4, 3, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(163, 1, 5, 1, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(164, 1, 5, 2, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(165, 1, 5, 3, 0.00, 'W', '2025-02-15 13:12:31', '2025-02-15 13:12:31'),
(166, 6, 1, 1, 1.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(167, 6, 1, 2, 3.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(168, 6, 2, 1, 3.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(169, 6, 2, 2, 4.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(170, 6, 3, 1, 5.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(171, 6, 3, 2, 6.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(172, 6, 4, 1, 6.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(173, 6, 4, 2, 7.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(174, 6, 5, 1, 4.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(175, 6, 5, 2, 5.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(176, 6, 6, 1, 4.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(177, 6, 6, 2, 5.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(178, 6, 7, 1, 3.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(179, 6, 7, 2, 4.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(180, 6, 8, 1, 3.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(181, 6, 8, 2, 4.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(182, 6, 9, 1, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(183, 6, 9, 2, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(184, 6, 10, 1, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(185, 6, 10, 2, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(186, 6, 11, 1, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(187, 6, 11, 2, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(188, 6, 12, 1, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(189, 6, 12, 2, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(190, 6, 13, 1, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(191, 6, 13, 2, 0.00, 'H', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(192, 6, 2, 1, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(193, 6, 2, 2, 5.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(194, 6, 2, 3, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(195, 6, 3, 1, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(196, 6, 3, 2, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(197, 6, 3, 3, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(198, 6, 4, 1, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(199, 6, 4, 2, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(200, 6, 4, 3, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(201, 6, 5, 1, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(202, 6, 5, 2, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(203, 6, 5, 3, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(204, 6, 6, 1, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(205, 6, 6, 2, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(206, 6, 6, 3, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(207, 6, 7, 1, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(208, 6, 7, 2, 66.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(209, 6, 7, 3, 4.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(210, 6, 8, 1, 6.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(211, 6, 8, 2, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(212, 6, 8, 3, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(213, 6, 9, 1, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(214, 6, 9, 2, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(215, 6, 9, 3, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(216, 6, 10, 1, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(217, 6, 10, 2, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(218, 6, 10, 3, 0.00, 'W', '2025-02-24 15:32:18', '2025-02-24 15:32:18'),
(219, 10, 2, 1, 1.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(220, 10, 2, 2, 2.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(221, 10, 2, 3, 3.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(222, 10, 2, 4, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(223, 10, 3, 1, 1.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(224, 10, 3, 2, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(225, 10, 3, 3, 3.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(226, 10, 3, 4, 2.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(227, 10, 4, 1, 3.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(228, 10, 4, 2, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(229, 10, 4, 3, 3.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(230, 10, 4, 4, 2.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(231, 10, 5, 1, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(232, 10, 5, 2, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(233, 10, 5, 3, 2.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(234, 10, 5, 4, 5.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(235, 10, 6, 1, 5.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(236, 10, 6, 2, 5.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(237, 10, 6, 3, 4.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(238, 10, 6, 4, 3.00, 'H', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(239, 10, 1, 1, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(240, 10, 1, 2, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(241, 10, 1, 3, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(242, 10, 1, 4, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(243, 10, 1, 5, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(244, 10, 2, 1, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(245, 10, 2, 2, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(246, 10, 2, 3, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(247, 10, 2, 4, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(248, 10, 2, 5, 24.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(249, 10, 3, 1, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(250, 10, 3, 2, 5.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(251, 10, 3, 3, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(252, 10, 3, 4, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(253, 10, 3, 5, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(254, 10, 4, 1, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(255, 10, 4, 2, 5.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(256, 10, 4, 3, 4.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(257, 10, 4, 4, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(258, 10, 4, 5, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(259, 10, 5, 1, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(260, 10, 5, 2, 3.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(261, 10, 5, 3, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(262, 10, 5, 4, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59'),
(263, 10, 5, 5, 2.00, 'W', '2025-04-16 17:20:59', '2025-04-16 17:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2025-04-30 15:34:16', '2020-08-14 08:00:01', '2025-04-30 15:34:16'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', NULL, '2020-08-17 21:15:12', '2020-08-17 21:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(22, '2023_06_21_164432_create_jobs_table', 2),
(23, '2025_01_01_214017_create_product_galleries_table', 2),
(24, '2025_01_02_201945_create_colors_type_table', 3),
(25, '2025_01_03_172937_create_colors_table', 4),
(26, '2025_01_03_211307_create_product_color_table', 5),
(27, '2025_01_04_181908_create_blind_options_table', 6),
(28, '2025_01_04_184738_rename_sr_to_status_in_blind_options_table', 7),
(29, '2025_01_04_211334_create_product_options_table', 8),
(30, '2025_01_04_213246_create_product_options_table', 9),
(31, '2025_01_05_070810_create_eighths_table', 10),
(32, '2025_01_06_192415_create_product_sizes_table', 11),
(33, '2025_01_06_210124_create_product_pricing_table', 12),
(34, '2025_01_06_231332_create_product_size_price_table', 13),
(35, '2025_01_06_222332_create_product_size_price_table', 14),
(36, '2025_01_06_222132_create_product_size_price_table', 15),
(37, '2025_01_06_222131_create_product_size_price_table', 16),
(39, '2025_01_08_200040_add_parent_keyword_id_to_product_options_table', 18),
(40, '2025_01_09_182059_add_title_to_product_options_table', 19),
(41, '2025_01_09_191526_add_image_to_blind_options_table', 20),
(42, '2025_01_14_191333_add_type_to_blind_options_table', 21),
(43, '2025_01_27_190036_create_eighths_prices_table', 22),
(44, '2025_01_30_182731_create_roles_table', 23),
(45, '2025_01_30_213134_change_role_column_in_users_table', 24),
(46, '2025_01_30_213707_change_role_column_in_users_table', 25),
(47, '2025_01_30_213709_change_role_column_in_users_table', 26),
(48, '2025_02_02_214925_add_fields_to_product_options_table', 27),
(50, '2025_02_06_172435_create_sessions_table', 29),
(51, '2025_02_07_204324_create_orders_table', 30),
(52, '2025_02_07_211503_create_orders_products_table', 31),
(55, '2025_02_08_165051_add_parent_id_to_product_options_table', 34),
(56, '2025_02_08_165052_add_parent_id_to_product_options_table', 35),
(57, '2025_02_08_193252_add_default_to_product_options_table', 36),
(58, '2025_02_07_215329_create_cart_table', 37),
(59, '2025_02_07_220937_create_cart_products_table', 37),
(60, '2025_02_09_175907_add_defaults_to_product_sizes_table', 38),
(62, '2025_01_07_020316_create_product_option_pricing_table', 40),
(63, '2025_02_11_212126_add_discounted_price_and_currency_to_products_table', 41),
(65, '2025_02_25_212212_create_seo_metadata_table', 42),
(66, '2025_03_16_174136_add_vendor_id_to_products_table', 43),
(68, '2025_03_19_004545_create_orders_vendors_products_table', 44),
(69, '2025_03_24_205158_create_orders_tracking_table', 45),
(72, '2025_03_30_105155_create_orders_tracking_checkpoints_table', 46),
(73, '2025_04_16_223342_add_review_and_product_tag_to_products_table', 47);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('024e8ff7-797b-4a15-ac55-430ed3c1527c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2025-01-16 15:12:58', '2025-01-16 15:12:58'),
('135f189d-2cf5-4d80-9067-40c63f4c4c71', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/asd\",\"fas\":\"fas fa-comment\"}', NULL, '2025-01-21 14:44:35', '2025-01-21 14:44:35'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('38767d74-1882-4725-8565-df5632de4df2', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', '2025-01-31 17:29:46', '2025-01-31 17:21:54', '2025-01-31 17:29:46'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', '2025-01-08 17:40:32', '2020-08-17 21:13:51', '2025-01-08 17:40:32'),
('526ab90c-a528-4919-919a-0608763b4d9e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fas fa-comment\"}', NULL, '2025-04-19 12:05:54', '2025-04-19 12:05:54'),
('52ac9bb5-b222-4c14-8979-22cd74f49f79', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2025-01-16 15:14:38', '2025-01-16 15:14:38'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('81c646b2-6b82-4995-bd10-5e1cc64c6b06', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fas fa-comment\"}', NULL, '2025-04-19 12:07:32', '2025-04-19 12:07:32'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('9912f62c-6fcb-4fc5-978e-8923b46a271f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2025-01-19 16:02:07', '2025-01-19 16:02:07'),
('a61cf726-92c4-43e6-b53c-0fc3f7d94789', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2025-01-19 16:03:43', '2025-01-19 16:03:43'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b3c2e1ed-3daf-44fa-84ce-a23b84d7fd99', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2025-01-16 15:14:21', '2025-01-16 15:14:21'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('d790f6d5-8879-41ef-a97d-636d5c2a5eb1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/cellular-shades\",\"fas\":\"fa-star\"}', NULL, '2025-01-19 16:00:46', '2025-01-19 16:00:46'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `total_usd` decimal(13,2) NOT NULL,
  `payment_method` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_suite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_emailaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_suite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_faxnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_emailaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `store_name`, `store_url`, `order_title`, `total`, `total_usd`, `payment_method`, `ship_company_name`, `ship_first_name`, `ship_last_name`, `ship_address`, `ship_suite`, `ship_city`, `ship_state`, `ship_zipcode`, `ship_country`, `ship_phone`, `ship_emailaddress`, `bill_company_name`, `bill_first_name`, `bill_last_name`, `bill_address`, `bill_suite`, `bill_city`, `bill_state`, `bill_zipcode`, `bill_country`, `bill_phone`, `bill_faxnumber`, `bill_emailaddress`, `currency_code`, `ip`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, NULL, 'E-SHOP', 'http://localhost', 'Zebra Blinds, Zebra Blinds', 46.25, 46.25, 'cc', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Assam', '60610', 'IN', '2132131212', 'admin@gmail.com', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Assam', '60610', 'IN', '2132131212', NULL, 'admin@gmail.com', 'USD', '127.0.0.1', 0, 0, '2025-03-11 13:08:53', '2025-03-11 13:08:53'),
(2, NULL, 'E-SHOP', 'http://localhost', 'Zebra Blinds, Zebra Blinds', 46.25, 46.25, 'cc', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Assam', '60610', 'IN', '2132131212', 'admin@gmail.com', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Assam', '60610', 'IN', '2132131212', NULL, 'admin@gmail.com', 'USD', '127.0.0.1', 1, 0, '2025-03-11 13:10:28', '2025-03-11 13:10:29'),
(4, 1, 'E-SHOP', 'http://localhost', 'Premium Blackout Solid Fabric Roller Shades, Zebra Blinds', 58.75, 58.75, 'cc', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Andhra Pradesh', '60610', 'IN', '09988784225', 'admin@gmail.com', 'ITTECH', 'Routash', 'Kumar', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Andhra Pradesh', '60610', 'IN', '09988784225', NULL, 'admin@gmail.com', 'USD', '127.0.0.1', 1, 0, '2025-03-19 14:23:07', '2025-03-19 14:23:08'),
(5, NULL, 'E-SHOP', 'http://localhost', 'Premium Blackout Solid Fabric Roller Shades', 27.00, 27.00, 'cc', 'dssad sa', 'as dsa', 'as da', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Andhra Pradesh', '60610', 'IN', '09988784225', 'admin@gmail.com', 'dssad sa', 'as dsa', 'as da', 'A. S. Rao Nagar', 'sd asdas dasd', 'Secunderabad', 'Andhra Pradesh', '60610', 'IN', '09988784225', NULL, 'admin@gmail.com', 'USD', '127.0.0.1', 1, 0, '2025-04-13 17:06:47', '2025-04-13 17:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_sku` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `unit_price` decimal(13,2) NOT NULL,
  `total_price` decimal(13,2) NOT NULL,
  `product_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `product_sku`, `qty`, `unit_price`, `total_price`, `product_data`, `delivery_date`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, 3, 9.25, 27.75, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"3\",\"unit_price\":\"9.25\",\"total_price\":\"27.75\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', NULL, NULL, NULL),
(2, 1, 6, NULL, 2, 9.25, 18.50, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"2\",\"unit_price\":\"9.25\",\"total_price\":\"18.5\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', NULL, NULL, NULL),
(3, 2, 6, NULL, 3, 9.25, 27.75, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"3\",\"unit_price\":\"9.25\",\"total_price\":\"27.75\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', NULL, NULL, NULL),
(4, 2, 6, NULL, 2, 9.25, 18.50, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"2\",\"unit_price\":\"9.25\",\"total_price\":\"18.5\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dsdsdsd\",\"value_title\":\"Dsdsdsd\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"124\",\"product_option_id\":\"43\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"default-rail-color\",\"value\":\"Default Rail Color\",\"value_title\":\"Default Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"129\",\"product_option_id\":\"46\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Cell Type\",\"keyword\":\"single-cell\",\"value\":\"Single Cell\",\"value_title\":\"Single Cell\",\"meta\":[]}]}', NULL, NULL, NULL),
(5, 3, 6, NULL, 1, 11.25, 11.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"11.25\",\"total_price\":\"11.25\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"Testing\",\"value_title\":\"Testing\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"15_1\\/8\",\"value_title\":\"15 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"47_1\\/8\",\"value_title\":\"47 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', NULL, NULL, NULL),
(6, 3, 6, NULL, 1, 11.25, 11.25, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"1\",\"unit_price\":\"11.25\",\"total_price\":\"11.25\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"test\",\"value_title\":\"Test\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', NULL, NULL, NULL),
(7, 4, 1, NULL, 1, 25.00, 25.00, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"25\",\"total_price\":\"25\",\"image\":\"v2yvHN6dxknwBJDLgYhSP7RRn4pIIqPGu4URl6MT.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"ssdds\",\"value_title\":\"Ssdds\",\"meta\":[]},{\"id\":\"89\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"4.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"Inside Mount\",\"value_title\":\"Inside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"8_0\\/0\",\"value_title\":\"8 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_0\\/0\",\"value_title\":\"15 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Flaxen 7700\",\"value_title\":\"Blackout Colors With White Backing - Rainier Flaxen 7700\",\"meta\":[]},{\"id\":\"94\",\"product_option_id\":\"5\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"cordless\",\"value\":\"Cordless\",\"value_title\":\"Cordless\",\"meta\":[]},{\"id\":\"110\",\"product_option_id\":\"22\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"circle_valance_with_fabric_insert\",\"value\":\"Circle Valance with Fabric Insert\",\"value_title\":\"Circle Valance With Fabric Insert\",\"meta\":[]}]}', NULL, NULL, NULL),
(8, 4, 6, NULL, 3, 11.25, 33.75, '{\"id\":6,\"title\":\"Zebra Blinds\",\"quantity\":\"3\",\"unit_price\":\"11.25\",\"total_price\":\"33.75\",\"image\":\"65emrarG7cqzpu7Ze7vVFYL9oCL4cxJzNiqQIJhT.png\",\"slug\":\"sdds\",\"options\":[{\"id\":\"116\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"115\",\"render_type\":\"textbox\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"vvws\",\"value_title\":\"Vvws\",\"meta\":[]},{\"id\":\"118\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"117\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"In Side Mount\",\"value_title\":\"In Side Mount\",\"meta\":[]},{\"id\":\"121\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"120\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"12_1\\/8\",\"value_title\":\"12 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"122\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"120\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"44_1\\/8\",\"value_title\":\"44 1\\/8\",\"meta\":{\"eighths\":\"2\"}},{\"id\":\"125\",\"product_option_id\":\"44\",\"parent_keyword_id\":\"123\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"1.00\",\"title\":\"Choose Your Rail Color\",\"keyword\":\"custom-rail-color\",\"value\":\"Custom Rail Color\",\"value_title\":\"Custom Rail Color\",\"meta\":[]},{\"id\":\"126\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"127\",\"render_type\":\"product-color\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Red Color\",\"value_title\":\"Blackout Colors With White Backing - Red Color\",\"meta\":[]},{\"id\":\"130\",\"product_option_id\":\"47\",\"parent_keyword_id\":\"128\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Cell Type\",\"keyword\":\"double-cell\",\"value\":\"Double Cell s\",\"value_title\":\"Double Cell S\",\"meta\":[]}]}', NULL, NULL, NULL),
(9, 5, 1, NULL, 1, 27.00, 27.00, '{\"id\":1,\"title\":\"Premium Blackout Solid Fabric Roller Shades\",\"quantity\":\"1\",\"unit_price\":\"27\",\"total_price\":\"27\",\"image\":\"YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png\",\"slug\":\"premium-blackout-solid-fabric-roller-shades\",\"options\":[{\"id\":\"88\",\"product_option_id\":\"29\",\"parent_keyword_id\":\"82\",\"render_type\":\"textbox\",\"has_extra_price\":\"1\",\"extra_price\":\"20.00\",\"title\":\"Room Type\",\"keyword\":\"room_type\",\"value\":\"dfgh\",\"value_title\":\"Dfgh\",\"meta\":[]},{\"id\":\"89\",\"product_option_id\":\"1\",\"parent_keyword_id\":\"83\",\"render_type\":\"card-1\",\"has_extra_price\":\"1\",\"extra_price\":\"4.00\",\"title\":\"Mount Type\",\"keyword\":\"inside_mount\",\"value\":\"Inside Mount\",\"value_title\":\"Inside Mount\",\"meta\":[]},{\"id\":\"91\",\"product_option_id\":\"27\",\"parent_keyword_id\":\"84\",\"render_type\":\"width\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Width\",\"keyword\":\"width\",\"value\":\"8_0\\/0\",\"value_title\":\"8 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"92\",\"product_option_id\":\"28\",\"parent_keyword_id\":\"84\",\"render_type\":\"height\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Height\",\"keyword\":\"height\",\"value\":\"15_0\\/0\",\"value_title\":\"15 0\\/0\",\"meta\":{\"eighths\":\"1\"}},{\"id\":\"111\",\"product_option_id\":\"41\",\"parent_keyword_id\":\"85\",\"render_type\":\"product-color\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Color\",\"keyword\":\"product-color-option\",\"value\":\"Blackout Colors with White Backing - Rainier Snowfall 6250\",\"value_title\":\"Blackout Colors With White Backing - Rainier Snowfall 6250\",\"meta\":[]},{\"id\":\"93\",\"product_option_id\":\"4\",\"parent_keyword_id\":\"86\",\"render_type\":\"card-2\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Control\",\"keyword\":\"continuous_cord_loop\",\"value\":\"Continuous Cord Loop\",\"value_title\":\"Continuous Cord Loop\",\"meta\":[]},{\"id\":\"108\",\"product_option_id\":\"20\",\"parent_keyword_id\":\"87\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Valance\",\"keyword\":\"fabric_wraped_valance\",\"value\":\"Fabric Wraped Valance\",\"value_title\":\"Fabric Wraped Valance\",\"meta\":[]},{\"id\":\"98\",\"product_option_id\":\"9\",\"parent_keyword_id\":\"96\",\"render_type\":\"card-3\",\"has_extra_price\":\"0\",\"extra_price\":\"0\",\"title\":\"Lift Side\",\"keyword\":\"right_lift\",\"value\":\"Right Lift\",\"value_title\":\"Right Lift\",\"meta\":[]},{\"id\":\"101\",\"product_option_id\":\"12\",\"parent_keyword_id\":\"99\",\"render_type\":\"card-3\",\"has_extra_price\":\"1\",\"extra_price\":\"2.00\",\"title\":\"Chain Type\",\"keyword\":\"metal_chain\",\"value\":\"Metal Chain\",\"value_title\":\"Metal Chain\",\"meta\":[]}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_tracking`
--

CREATE TABLE `orders_tracking` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `carrier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trackhive_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_on` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_tracking`
--

INSERT INTO `orders_tracking` (`id`, `order_id`, `product_id`, `carrier`, `tracking_number`, `trackhive_id`, `current_status`, `delivered_on`, `vendor_id`, `created_at`, `updated_at`) VALUES
(15, 4, 6, 'Fedex', '323232', NULL, NULL, NULL, 35, '2025-03-30 05:37:21', '2025-03-30 05:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders_tracking_checkpoints`
--

CREATE TABLE `orders_tracking_checkpoints` (
  `id` bigint UNSIGNED NOT NULL,
  `tracking_id` bigint UNSIGNED NOT NULL,
  `checkpoints` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_tracking_checkpoints`
--

INSERT INTO `orders_tracking_checkpoints` (`id`, `tracking_id`, `checkpoints`) VALUES
(1, 15, '[{\\\"message\\\":\\\"Shipper created a label, UPS has not received the package yet.\\\",\\\"checkpoint_time\\\":\\\"2023-07-14T05:47:54\\\",\\\"location\\\":\\\"China\\\"},{\\\"message\\\":\\\"Pickup Scan\\\",\\\"checkpoint_time\\\":\\\"2023-07-14T12:44:40\\\",\\\"location\\\":\\\"Foshan, China\\\"},{\\\"message\\\":\\\"Origin Scan\\\",\\\"checkpoint_time\\\":\\\"2023-07-14T19:00:14\\\",\\\"location\\\":\\\"Foshan, China\\\"},{\\\"message\\\":\\\"Departed from Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-14T22:30:00\\\",\\\"location\\\":\\\"Foshan, China\\\"},{\\\"message\\\":\\\"Arrived at Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-14T22:44:00\\\",\\\"location\\\":\\\"Shenzhen, China\\\"},{\\\"message\\\":\\\"Export Scan\\\",\\\"checkpoint_time\\\":\\\"2023-07-15T15:06:53\\\",\\\"location\\\":\\\"Shenzhen, China\\\"},{\\\"message\\\":\\\"Arrived at Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-15T20:44:00\\\",\\\"location\\\":\\\"Anchorage, AK, United States\\\"},{\\\"message\\\":\\\"Departed from Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-15T22:16:00\\\",\\\"location\\\":\\\"Anchorage, AK, United States\\\"},{\\\"message\\\":\\\"Departed from Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-16T02:43:00\\\",\\\"location\\\":\\\"Shenzhen, China\\\"},{\\\"message\\\":\\\"Arrived at Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-16T08:36:00\\\",\\\"location\\\":\\\"Louisville, KY, United States\\\"},{\\\"message\\\":\\\"Import Scan\\\",\\\"checkpoint_time\\\":\\\"2023-07-16T13:32:55\\\",\\\"location\\\":\\\"Louisville, KY, United States\\\"},{\\\"message\\\":\\\"Departed from Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-16T16:21:00\\\",\\\"location\\\":\\\"Louisville, KY, United States\\\"},{\\\"message\\\":\\\"Arrived at Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-17T04:31:00\\\",\\\"location\\\":\\\"Minneapolis, MN, United States\\\"},{\\\"message\\\":\\\"Departed from Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-17T04:45:00\\\",\\\"location\\\":\\\"Minneapolis, MN, United States\\\"},{\\\"message\\\":\\\"Arrived at Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-17T05:19:00\\\",\\\"location\\\":\\\"Eagan, MN, United States\\\"},{\\\"message\\\":\\\"Processing at UPS Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-17T05:58:00\\\",\\\"location\\\":\\\"Eagan, MN, United States\\\"},{\\\"message\\\":\\\"Processing at UPS Facility\\\",\\\"checkpoint_time\\\":\\\"2023-07-18T04:26:46\\\",\\\"location\\\":\\\"Eagan, MN, United States\\\"},{\\\"message\\\":\\\"Out For Delivery Today\\\",\\\"checkpoint_time\\\":\\\"2023-07-18T09:32:07\\\",\\\"location\\\":\\\"Eagan, MN, United States\\\"},{\\\"message\\\":\\\"Delivered\\\",\\\"checkpoint_time\\\":\\\"2023-07-18T10:06:06\\\",\\\"location\\\":\\\"SAINT PAUL, MN, United States\\\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `orders_transactions`
--

CREATE TABLE `orders_transactions` (
  `id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `description` varchar(512) NOT NULL,
  `payment_method` varchar(3) NOT NULL,
  `gateway` varchar(15) NOT NULL,
  `transaction_type` tinyint(1) NOT NULL DEFAULT '1',
  `amount` decimal(13,2) NOT NULL,
  `transaction_id` varchar(80) NOT NULL,
  `transaction_token` varchar(80) NOT NULL,
  `meta_data` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_transactions`
--

INSERT INTO `orders_transactions` (`id`, `order_id`, `description`, `payment_method`, `gateway`, `transaction_type`, `amount`, `transaction_id`, `transaction_token`, `meta_data`, `updated_at`, `created_at`) VALUES
(1, 2, 'Order Charge - 2', 'cc', 'stripe', 1, 46.25, '', '', '{\"id\":\"ch_3R1Xj64Cdo6cxEsZ13Vi2TRg\",\"object\":\"charge\",\"amount\":4600,\"amount_captured\":4600,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3R1Xj64Cdo6cxEsZ1YXgkcKh\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"SMARTBLINDS-SANDBOX\",\"captured\":true,\"created\":1741718428,\"currency\":\"usd\",\"customer\":null,\"description\":\"Order Charge - 2\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_balance_transaction\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"advice_code\":null,\"network_advice_code\":null,\"network_decline_code\":null,\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":43,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1R1Xj54Cdo6cxEsZh8EvnV0i\",\"payment_method_details\":{\"card\":{\"amount_authorized\":4600,\"authorization_code\":null,\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2026,\"extended_authorization\":{\"status\":\"disabled\"},\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"incremental_authorization\":{\"status\":\"unavailable\"},\"installments\":null,\"last4\":\"1111\",\"mandate\":null,\"multicapture\":{\"status\":\"unavailable\"},\"network\":\"visa\",\"network_token\":{\"used\":false},\"network_transaction_id\":\"995011671858880\",\"overcapture\":{\"maximum_amount_capturable\":4600,\"status\":\"unavailable\"},\"regulated_status\":\"unregulated\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/payment\\/CAcaFwoVYWNjdF8xUXRGaGI0Q2RvNmN4RXNaKJ2Hwr4GMgafz9Gf3m86LBbGslQSRy5LOU2IdULuDkAgIX3eIB-caFLyvaixlLDyVv32uVyi3CenI9-z\",\"refunded\":false,\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1R1Xj54Cdo6cxEsZh8EvnV0i\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"allow_redisplay\":\"unspecified\",\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2026,\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"regulated_status\":\"unregulated\",\"tokenization_method\":null,\"wallet\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2025-03-11 18:40:29', '2025-03-11 18:40:29'),
(2, 3, 'Order Charge - 3', 'cc', 'stripe', 1, 22.50, '', '', '{\"id\":\"ch_3R1YHy4Cdo6cxEsZ154rqV6Z\",\"object\":\"charge\",\"amount\":2200,\"amount_captured\":2200,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3R1YHy4Cdo6cxEsZ1Bvzuaqm\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"SMARTBLINDS-SANDBOX\",\"captured\":true,\"created\":1741720590,\"currency\":\"usd\",\"customer\":null,\"description\":\"Order Charge - 3\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_balance_transaction\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"advice_code\":null,\"network_advice_code\":null,\"network_decline_code\":null,\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":2,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1R1YHx4Cdo6cxEsZnpktMt91\",\"payment_method_details\":{\"card\":{\"amount_authorized\":2200,\"authorization_code\":null,\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2025,\"extended_authorization\":{\"status\":\"disabled\"},\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"incremental_authorization\":{\"status\":\"unavailable\"},\"installments\":null,\"last4\":\"1111\",\"mandate\":null,\"multicapture\":{\"status\":\"unavailable\"},\"network\":\"visa\",\"network_token\":{\"used\":false},\"network_transaction_id\":\"995011671858880\",\"overcapture\":{\"maximum_amount_capturable\":2200,\"status\":\"unavailable\"},\"regulated_status\":\"unregulated\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/payment\\/CAcaFwoVYWNjdF8xUXRGaGI0Q2RvNmN4RXNaKI-Ywr4GMgaHvyK94Kk6LBbXN1_svLSb93crY27z0CYmtpuYCOO3X9HnATTPxZJIf1Snxm5GJRk4V7oI\",\"refunded\":false,\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1R1YHx4Cdo6cxEsZnpktMt91\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"allow_redisplay\":\"unspecified\",\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2025,\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"regulated_status\":\"unregulated\",\"tokenization_method\":null,\"wallet\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2025-03-11 19:16:31', '2025-03-11 19:16:31'),
(3, 4, 'Order Charge - 4', 'cc', 'stripe', 1, 58.75, '', '', '{\"id\":\"ch_3R4Sfn4Cdo6cxEsZ0OAFHPSE\",\"object\":\"charge\",\"amount\":5800,\"amount_captured\":5800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3R4Sfn4Cdo6cxEsZ0gImTVjU\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"SMARTBLINDS-SANDBOX\",\"captured\":true,\"created\":1742413987,\"currency\":\"usd\",\"customer\":null,\"description\":\"Order Charge - 4\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_balance_transaction\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"advice_code\":null,\"network_advice_code\":null,\"network_decline_code\":null,\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":4,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1R4Sfm4Cdo6cxEsZFqvXmCgJ\",\"payment_method_details\":{\"card\":{\"amount_authorized\":5800,\"authorization_code\":null,\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2027,\"extended_authorization\":{\"status\":\"disabled\"},\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"incremental_authorization\":{\"status\":\"unavailable\"},\"installments\":null,\"last4\":\"1111\",\"mandate\":null,\"multicapture\":{\"status\":\"unavailable\"},\"network\":\"visa\",\"network_token\":{\"used\":false},\"network_transaction_id\":\"995011671858880\",\"overcapture\":{\"maximum_amount_capturable\":5800,\"status\":\"unavailable\"},\"regulated_status\":\"unregulated\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/payment\\/CAcaFwoVYWNjdF8xUXRGaGI0Q2RvNmN4RXNaKKTB7L4GMgaHQrYaFPI6LBbhtiNxPgp4aGoWZXZrx4VBRTV0nhKSkABCnBPqVKcqo-xHkwlOGH7ml7X0\",\"refunded\":false,\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1R4Sfm4Cdo6cxEsZFqvXmCgJ\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"allow_redisplay\":\"unspecified\",\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2027,\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"regulated_status\":\"unregulated\",\"tokenization_method\":null,\"wallet\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2025-03-19 19:53:08', '2025-03-19 19:53:08'),
(4, 5, 'Order Charge - 5', 'cc', 'stripe', 1, 27.00, '', '', '{\"id\":\"ch_3RDZ8u4Cdo6cxEsZ18T21je3\",\"object\":\"charge\",\"amount\":2700,\"amount_captured\":2700,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3RDZ8u4Cdo6cxEsZ1Ggt5Icq\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"SMARTBLINDS-SANDBOX\",\"captured\":true,\"created\":1744583808,\"currency\":\"usd\",\"customer\":null,\"description\":\"Order Charge - 5\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_balance_transaction\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"advice_code\":null,\"network_advice_code\":null,\"network_decline_code\":null,\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":32,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1RDZ8t4Cdo6cxEsZVRE6wA6y\",\"payment_method_details\":{\"card\":{\"amount_authorized\":2700,\"authorization_code\":null,\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2034,\"extended_authorization\":{\"status\":\"disabled\"},\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"incremental_authorization\":{\"status\":\"unavailable\"},\"installments\":null,\"last4\":\"1111\",\"mandate\":null,\"multicapture\":{\"status\":\"unavailable\"},\"network\":\"visa\",\"network_token\":{\"used\":false},\"network_transaction_id\":\"995011671858880\",\"overcapture\":{\"maximum_amount_capturable\":2700,\"status\":\"unavailable\"},\"regulated_status\":\"unregulated\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/payment\\/CAcaFwoVYWNjdF8xUXRGaGI0Q2RvNmN4RXNaKIH58L8GMgZdVFM2rls6LBbfrkJUbSwAgP29RAXt-PP5wgfNiz4UvT5aK9cMxpmcDJyH2Ldv1WZmgqQi\",\"refunded\":false,\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1RDZ8t4Cdo6cxEsZVRE6wA6y\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"allow_redisplay\":\"unspecified\",\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2034,\"fingerprint\":\"c2tGUXPSHPhkJE6w\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"regulated_status\":\"unregulated\",\"tokenization_method\":null,\"wallet\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2025-04-13 22:36:49', '2025-04-13 22:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders_vendors_products`
--

CREATE TABLE `orders_vendors_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `vendor_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `shipping_price` decimal(10,2) DEFAULT NULL,
  `miscleanues_cost` decimal(10,2) DEFAULT NULL,
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_vendors_products`
--

INSERT INTO `orders_vendors_products` (`id`, `order_id`, `vendor_id`, `product_id`, `unit_price`, `total_price`, `shipping_price`, `miscleanues_cost`, `vendor_name`, `delivery_date`, `created_at`, `updated_at`) VALUES
(3, 4, 34, 7, 1.00, 1.00, 1.00, 1.00, 'raj', '2025-03-06', '2025-03-20 13:13:55', '2025-03-20 13:13:55'),
(4, 4, 35, 8, 2.00, 2.00, 1.00, 1.00, 'victor', '2025-03-22', '2025-03-19 15:39:36', '2025-03-19 15:39:36'),
(5, 2, 35, 3, NULL, NULL, NULL, NULL, 'victor', NULL, NULL, '2025-03-20 13:08:18'),
(6, 5, 33, 9, NULL, NULL, NULL, NULL, 'vendor', NULL, NULL, '2025-04-20 07:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$49qa7tJd0W6m831plbuOyuN3.VFr9riRXMzVqq4rYLsGE8kS9gSgy', '2025-02-26 17:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Where does it come from?', 'where-does-it-come-from', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text.&nbsp;</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</span><br></p>', 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', '2020,Visit nepal 2020', 1, NULL, 2, 'active', '2020-08-14 01:55:55', '2025-01-21 14:35:47'),
(2, 'Where can I get some?', 'where-can-i-get-some', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader</span><br></h2>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', 'Enjoy', 2, NULL, 1, 'active', '2020-08-14 01:58:52', '2025-01-21 14:35:30'),
(3, 'The standard Lorem Ipsum passage, used since the 1500s', 'the-standard-lorem-ipsum-passage-used-since-the-1500s', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', NULL, 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', '', 3, NULL, 3, 'active', '2020-08-14 02:59:33', '2025-01-21 14:35:17'),
(5, 'The standard Lorem Ipsum passage,', 'the-standard-lorem-ipsum-passage', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', 'Enjoy,2020,Visit nepal 2020', 1, NULL, 1, 'active', '2020-08-15 06:58:45', '2025-01-21 14:35:04'),
(6, 'Lorem Ipsum is simply', 'lorem-ipsum-is-simply', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><hr><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p>', NULL, 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', 'Enjoy,2020', 2, NULL, 1, 'active', '2020-08-17 20:54:19', '2025-01-21 14:34:52'),
(7, 'asd', 'asd', '<p>jhb</p>', '<p>hbj</p>', '<p>hbjhb</p>', 'GeDHXAaK1BN5yApfx2zfpnLanfCrD2V2TyHtEuHm.png', '', 3, NULL, 1, 'active', '2025-01-21 14:16:21', '2025-01-21 14:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'contrary', 'active', '2020-08-14 01:51:03', '2020-08-14 01:51:39'),
(2, 'Electronics', 'richard', 'active', '2020-08-14 01:51:22', '2020-08-14 01:52:00'),
(3, 'Cloths', 'cloths', 'active', '2020-08-14 01:52:22', '2020-08-14 01:52:22'),
(4, 'enjoy', 'enjoy', 'active', '2020-08-14 03:16:10', '2020-08-14 03:16:10'),
(5, 'Post Category', 'post-category', 'active', '2020-08-15 06:59:04', '2020-08-15 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 07:08:42', '2020-08-15 06:59:58'),
(2, 3, 2, 'testing 2', 'active', NULL, 1, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
(3, 2, 2, 'That\'s cool', 'active', NULL, 2, '2020-08-14 07:12:27', '2020-08-14 07:12:27'),
(4, 1, 2, 'nice', 'active', NULL, NULL, '2020-08-15 07:31:19', '2020-08-15 07:31:19'),
(5, 3, 5, 'nice blog', 'active', NULL, NULL, '2020-08-15 07:51:01', '2020-08-15 07:51:01'),
(6, 2, 3, 'nice', 'active', NULL, NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29'),
(7, 2, 3, 'really', 'active', NULL, 6, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
(8, 1, 5, 'sdfgh', 'active', NULL, NULL, '2025-01-16 15:12:58', '2025-01-16 15:12:58'),
(9, 1, 2, 'mmm', 'active', NULL, NULL, '2025-01-16 15:14:21', '2025-01-16 15:14:21'),
(10, 1, 2, 'jknjnkjn', 'active', NULL, 2, '2025-01-16 15:14:38', '2025-01-16 15:14:38'),
(11, 1, 7, 'sddsfdsf', 'active', NULL, NULL, '2025-01-21 14:44:35', '2025-01-21 14:44:35'),
(12, 1, 6, 'dsdsd\r\nsdds', 'active', NULL, NULL, '2025-04-19 12:05:54', '2025-04-19 12:05:54'),
(13, 1, 6, 'sddsds', 'active', NULL, NULL, '2025-04-19 12:07:32', '2025-04-19 12:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '2020-08-14 01:53:52', '2020-08-14 01:53:52'),
(2, '2020', '2020', 'active', '2020-08-14 01:54:09', '2020-08-14 01:54:09'),
(3, 'Visit nepal 2020', 'visit-nepal-2020', 'active', '2020-08-14 01:54:33', '2020-08-14 01:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 06:59:31', '2020-08-15 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_tag` bigint UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '1',
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discounted_price` decimal(13,2) DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendor_id`, `title`, `slug`, `summary`, `description`, `review`, `product_tag`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discounted_price`, `currency`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Test -Premium Blackout Solid Fabric Roller Shades', 'premium-blackout-solid-fabric-roller-shades', '<p>Premium Blackout Solid Fabric Roller Shades</p>', '<p>Premium Blackout Solid Fabric Roller Shades</p>', NULL, NULL, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 150, NULL, 'new', 'active', 25.00, 0.00, 'USD', 25.00, 1, 1, NULL, 1, '2025-01-14 15:21:07', '2025-04-27 12:46:33'),
(2, 33, 'Test-Decorative Fabric Roller Shades', 'premium-cellular-shades', '<p><strong>Summary for Decorative Fabric Roller Shades – SmartBlinds.com</strong>:</p><p>\r\n</p><p>Decorative Fabric Roller Shades combine style and practicality, offering soft light control, privacy, and a wide selection of elegant fabrics. Ideal for modern interiors, they are available with optional motorized features for added convenience. Perfect for enhancing any space with a sleek, custom look.</p>', '<p data-start=\"135\" data-end=\"558\" class=\"\">Enhance your interiors with our Decorative Fabric Roller Shades, blending elegance with functionality.<br data-start=\"237\" data-end=\"240\">\r\nPerfect for any room, these shades offer soft light filtering while ensuring privacy.<br data-start=\"325\" data-end=\"328\">\r\nCrafted with premium fabrics in a range of patterns and colors to match your décor.<br data-start=\"411\" data-end=\"414\">\r\nSmooth operation with optional motorized control for modern convenience.<br data-start=\"486\" data-end=\"489\">\r\nShop now at SmartBlinds.com and give your windows a stylish makeover!</p>', '1212', 2, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 135, NULL, 'new', 'active', 25.00, 2.00, 'USD', 2.00, 1, 1, 2, 1, '2025-01-16 14:12:32', '2025-04-27 12:46:51'),
(3, NULL, 'Cellular Shades', 'cellular-shades', '<p><span style=\"color: rgb(28, 40, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">SouthSeas Cellular Shades are customizable, insulating shades that boast a sophisticated and high-quality look.</span></p>', '<p><span style=\"color: rgb(28, 40, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">SouthSeas Cellular Shades are customizable, insulating shades that boast a sophisticated and high-quality look.</span></p>', NULL, NULL, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 200, NULL, 'hot', 'active', 35.00, 12.00, NULL, 5.00, 1, 4, NULL, 1, '2025-01-16 14:15:10', '2025-04-07 04:08:41'),
(4, NULL, 'Classic Light Filtering Roller Shades', 'classic-light-filtering-roller-shades', 'Truly innovative, this shade is full of subtle, yet advanced components that result in glowing, natural light flowing through your home while preserving your privacy as well as providing easy day-to-day operation.', 'Truly innovative, this shade is full of subtle, yet advanced components that result in glowing, natural light flowing through your home while preserving your privacy as well as providing easy day-to-day operation.', NULL, NULL, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 423, NULL, 'hot', 'active', 35.00, 22.00, '11', 2.00, 1, 1, NULL, 1, '2025-01-16 14:18:11', '2025-04-07 04:08:20'),
(5, NULL, 'New Blinds Prod', 'new-blinds-prod', '<p>2</p>', '<p>12</p>', NULL, NULL, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 122, NULL, 'default', 'active', 100.00, 20.00, 'USD', 20.00, 0, 1, NULL, 1, '2025-02-11 16:10:33', '2025-04-07 04:07:55'),
(6, NULL, 'Zebra Blinds', 'sdds', '<p>Configure Your Window Treatment</p>', '<p>asdas</p>', NULL, NULL, 'ei6YzrAGTPRgsluFPZtEh3aAtAZyIchrwQy6kr9j.png', 220, NULL, 'hot', 'active', 100.00, 0.00, 'USD', 12.00, 1, 9, 10, 1, '2025-02-24 15:08:04', '2025-04-12 13:38:19'),
(7, 34, 'dsd', 'dsd', '<p>sd</p>', '<p>fd</p>', NULL, NULL, '55CUA4t20b5gVBMUCfwouneDQ90ZmaEcfIvSGeyn.png', 2, NULL, 'new', 'active', 23.00, 3.00, '23', 23.00, 1, 4, NULL, 1, '2025-03-16 12:28:23', '2025-04-12 13:35:28'),
(8, NULL, 'sd', 'sd', '<p>23</p>', '<p>22</p>', NULL, NULL, 'YwZr9EmZQuoTfbIgkFB0jYYKhaY3wsKYwXbXTvkQ.png', 2, NULL, 'default', 'active', 2.00, 23.00, 'USD', 2.00, 1, 1, NULL, 1, '2025-03-16 12:52:20', '2025-04-12 13:35:10'),
(9, 33, 'dsd', 'dsd-2503162346-50', '<p>wqw</p>', '<p>qqq</p>', NULL, NULL, '5cIkyhCKp9rqo8de9JYADOKSpEYzxSMLFkQHtwLO.png', 2, NULL, 'default', 'active', 23.00, 22.00, 'USD', 2.00, 1, 4, NULL, 1, '2025-03-16 12:53:49', '2025-04-12 13:34:14'),
(10, 33, 'Cellular Shades blue shade', 'cellular-shades-blue-shade', '<p>description content</p>', '<p>description content<span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">description content</span><span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">description content</span></p>', NULL, NULL, 'cIEEYcaETpC5dg1BJ6YxyjhIaURnqCI2bOosFCbR.jpg', 233, NULL, 'new', 'active', 23.00, 3.00, 'USD', 3.00, 1, 4, 5, 1, '2025-04-16 17:12:34', '2025-04-16 17:12:34'),
(11, 34, 'Composite Wood Shutters', 'composite-wood-shutters', '<p>s</p>', '<p>dsds</p>', '222', 9, 'iyemVlGXnJtvv1SxggvATS4JQUHCRT4DkQl527pV.jpg', 12, NULL, 'new', 'active', 21.00, 3.00, '1', 1.00, 1, 4, 5, 1, '2025-04-16 17:34:07', '2025-04-16 17:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`) VALUES
(2, 1, 3),
(4, 1, 2),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 1, 1),
(9, 2, 4),
(10, 1, 4),
(11, 1, 5),
(12, 1, 6),
(13, 6, 1),
(14, 6, 2),
(15, 6, 4),
(16, 6, 5),
(17, 6, 6),
(18, 6, 3),
(19, 10, 1),
(20, 10, 2),
(21, 10, 4),
(22, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `path`, `created_at`, `updated_at`) VALUES
(22, 2, 'images/product_gallery/GYigHg1FMrJBHhpTppRvofJJlgXgrpkfFLqP2H5z.png', '2025-01-16 15:20:27', '2025-01-16 15:20:27'),
(23, 2, 'images/product_gallery/QscvQpZSydEsgN0letpKOwAJnkfi2vGjm7VOyq03.png', '2025-01-16 15:20:30', '2025-01-16 15:20:30'),
(24, 2, 'images/product_gallery/GRznneBqeeodUV2VVGcSu6EoW4utobtn6N6afMpq.png', '2025-01-16 15:20:38', '2025-01-16 15:20:38'),
(25, 6, 'images/product_gallery/bvZZhXo2I4rS44q9Aisu5o2ihKiR4vfGad8xs1k9.png', '2025-02-24 15:13:53', '2025-02-24 15:13:53'),
(26, 10, 'images/product_gallery/v8sYEUABz0FbZaqs5X0YNzPOzg8TY4OaF7EBpmeF.jpg', '2025-04-16 17:14:03', '2025-04-16 17:14:03'),
(27, 10, 'images/product_gallery/9FOh7MPrCb0XGYpHELDbZsDc8E1Ap0DlirSJbNzN.jpg', '2025-04-16 17:14:03', '2025-04-16 17:14:03'),
(28, 10, 'images/product_gallery/JIESiD6yccGYNN7tyDv2af36Aoc3b0CIiqfbe5Th.jpg', '2025-04-16 17:14:04', '2025-04-16 17:14:04'),
(29, 10, 'images/product_gallery/RehpbBA0D7JvvSBryxWVIaHkSahonf5kaooUXIlR.jpg', '2025-04-16 17:14:04', '2025-04-16 17:14:04'),
(30, 10, 'images/product_gallery/Y85WBaGKaKVEf8tnSOyEXXFI982lh1C5wWJD1n4b.jpg', '2025-04-16 17:14:05', '2025-04-16 17:14:05'),
(31, 1, 'images/product_gallery/qAPTDAY3iDgoC8MRRDnPo4GbTFtf2tppgoxkykzl.png', '2025-04-27 01:14:02', '2025-04-27 01:14:02'),
(32, 1, 'images/product_gallery/QbNomOdV6qLUpoQ6c9z58qJwVwMYoQF5lwkal28h.png', '2025-04-27 01:14:10', '2025-04-27 01:14:10'),
(33, 1, 'images/product_gallery/UOeopaXvaS4pt4NnLKti6LFguE3uZDTYY9dHEBBP.jpg', '2025-04-27 01:14:16', '2025-04-27 01:14:16'),
(34, 1, 'images/product_gallery/vdwUeMqG1p6bNmCPDEUuINVa2mC13n4i7mx28UdH.png', '2025-04-27 01:14:22', '2025-04-27 01:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_option_id` bigint UNSIGNED DEFAULT NULL,
  `parent_keyword_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `render_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `product_id`, `product_option_id`, `parent_keyword_id`, `title`, `description`, `image`, `render_type`, `default`, `required`, `status`, `sort_order`, `updated_at`, `created_at`) VALUES
(82, 1, 3, NULL, 'Enter Your Room Type', NULL, NULL, 'heading', 0, 1, 1, 1, '2025-02-08 11:50:37', '2025-02-08 11:35:48'),
(83, 1, 32, NULL, 'Mount Type', NULL, NULL, 'heading', 0, 1, 1, 2, '2025-02-10 22:58:18', '2025-02-08 11:41:15'),
(84, 1, 3, NULL, 'Enter Size - Inches', NULL, NULL, 'heading', 0, 0, 1, 3, '2025-02-08 11:43:25', '2025-02-08 11:42:37'),
(85, 1, 31, NULL, 'Choose Your Color', NULL, NULL, 'heading', 0, 1, 1, 4, '2025-02-15 08:49:15', '2025-02-08 11:43:21'),
(86, 1, 33, NULL, 'Choose Your Lift Control', NULL, NULL, 'heading', 0, 1, 1, 5, '2025-02-10 23:04:41', '2025-02-08 11:43:51'),
(87, 1, 38, NULL, 'Valance', NULL, NULL, 'heading', 0, 0, 1, 6, '2025-02-10 23:11:53', '2025-02-08 11:44:13'),
(88, 1, 29, 82, 'Room Type', '', NULL, 'textbox', 0, 1, 1, 1, '2025-02-08 11:49:01', '2025-02-08 11:49:01'),
(89, 1, 1, 83, 'Inside Mount', 'Provide exact window opening dimensions. There will be visible light gaps of approximately 1/2 inch on both sides of your roller shade to allow clearance for operating.', NULL, 'card-1', 1, 0, 1, 1, '2025-02-09 10:06:01', '2025-02-08 11:50:24'),
(90, 1, 2, 83, 'Outside Mount', 'Provide the exact size of your shade, not the window. Because the fabric is narrower than the roller, you should add a minimum of 1½ inch to width.', NULL, 'card-1', 0, 0, 1, 2, '2025-02-08 11:51:29', '2025-02-08 11:51:29'),
(91, 1, 27, 84, 'Width', 'Measure the top of the window frame and order the exact size making NO deductions. The factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'width', 0, 1, 1, 1, '2025-02-08 11:52:58', '2025-02-08 11:52:58'),
(92, 1, 28, 84, 'Height', 'Measure the top of the window frame and order the exact size making NO deductions. The factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'height', 0, 1, 1, 2, '2025-02-08 11:53:41', '2025-02-08 11:53:41'),
(93, 1, 4, 86, 'Continuous Cord Loop', 'Continuous cord loop is a standard lift choice. The beaded chain pulley system raises and lowers your shade with ease.', NULL, 'card-2', 0, 1, 1, 1, '2025-02-10 23:14:35', '2025-02-08 11:56:03'),
(94, 1, 5, 86, 'Cordless', 'Cordless shades are a sleek choice, since there are no free hanging cords. Shade is raised by gently tugging once, then tugging again to stop the shade at the desired position. Safer choice for homes with small children and pets.', NULL, 'card-2', 0, 0, 1, 2, '2025-02-08 11:58:19', '2025-02-08 11:57:16'),
(95, 1, 6, 86, 'Motorized', 'A pull motor lift system uses a beaded chain to lift and lower the the shade with a simple tug.', NULL, 'card-2', 1, 0, 1, 3, '2025-02-10 23:14:00', '2025-02-08 11:58:04'),
(96, 1, 34, 93, 'Lift Side', NULL, NULL, 'heading', 0, 1, 1, 1, '2025-02-10 23:06:26', '2025-02-08 11:59:29'),
(97, 1, 8, 96, 'Left Lift', '', NULL, 'card-3', 0, 0, 1, 1, '2025-02-08 11:59:58', '2025-02-08 11:59:58'),
(98, 1, 9, 96, 'Right Lift', '', NULL, 'card-3', 0, 0, 1, 2, '2025-02-08 12:00:19', '2025-02-08 12:00:19'),
(99, 1, 35, 93, 'Chain Type', NULL, NULL, 'heading', 0, 1, 1, 2, '2025-02-10 23:07:47', '2025-02-08 12:05:09'),
(100, 1, 11, 99, 'Plastic Chain', '', NULL, 'card-3', 0, 0, 1, 1, '2025-02-08 12:05:57', '2025-02-08 12:05:57'),
(101, 1, 12, 99, 'Metal Chain', '', NULL, 'card-3', 0, 0, 1, 2, '2025-02-08 12:07:10', '2025-02-08 12:07:10'),
(102, 1, 37, 95, 'Pull Motor Side', NULL, NULL, 'heading', 0, 1, 1, 1, '2025-02-10 23:10:59', '2025-02-08 12:08:29'),
(103, 1, 39, 102, 'Left Lift', NULL, NULL, 'card-3', 1, 0, 1, 1, '2025-02-15 03:35:12', '2025-02-08 12:08:45'),
(104, 1, 40, 102, 'Right Lift', NULL, NULL, 'card-3', 0, 0, 1, 2, '2025-02-11 12:38:18', '2025-02-08 12:09:01'),
(105, 1, 36, 95, 'Pull Chain Length', NULL, NULL, 'heading', 0, 1, 1, 2, '2025-02-10 23:11:11', '2025-02-08 12:11:38'),
(106, 1, 14, 105, '60 Inch Extension Cable', NULL, NULL, 'card-3', 0, 0, 1, 1, '2025-02-10 23:22:40', '2025-02-08 12:12:06'),
(107, 1, 19, 87, 'No Valance', NULL, NULL, 'card-3', 1, 0, 1, 1, '2025-02-09 10:06:42', '2025-02-08 12:12:53'),
(108, 1, 20, 87, 'Fabric Wraped Valance', '', NULL, 'card-3', 0, 0, 1, 2, '2025-02-08 12:13:11', '2025-02-08 12:13:11'),
(111, 1, 41, 85, 'Product Color Option', '', NULL, 'product-color', 0, 1, 1, 1, '2025-02-15 08:53:12', '2025-02-15 08:53:12'),
(112, 4, 32, NULL, 'Mount Type', '', NULL, 'heading', 1, 1, 1, 1, '2025-02-17 14:13:52', '2025-02-17 14:13:52'),
(113, 4, 1, 112, 'In Side Mount', NULL, NULL, 'card-1', 1, 1, 1, 1, '2025-02-17 14:15:01', '2025-02-17 14:14:05'),
(114, 4, 2, 112, 'Out Side Mount', NULL, NULL, 'card-1', 1, 1, 1, 2, '2025-02-17 14:15:11', '2025-02-17 14:14:14'),
(115, 6, 3, NULL, 'Enter Your Room Type', '', NULL, 'heading', 1, 1, 1, 1, '2025-02-24 15:15:13', '2025-02-24 15:15:13'),
(116, 6, 29, 115, 'Room Type', NULL, NULL, 'textbox', 0, 1, 1, 1, '2025-02-24 15:18:17', '2025-02-24 15:17:53'),
(117, 6, 32, NULL, 'Mount Type dddsdsd', NULL, NULL, 'heading', 0, 1, 1, 2, '2025-02-25 01:27:11', '2025-02-24 15:19:12'),
(118, 6, 1, 117, 'In Side Mount', 'Provide exact window opening dimensions. There will be visible light gaps of approximately 1/2 inch on both sides of your roller shade to allow clearance for operating.', NULL, 'card-1', 1, 0, 1, 1, '2025-02-24 15:20:36', '2025-02-24 15:20:36'),
(119, 6, 2, 117, 'Out Side Mount', 'Provide exact window opening dimensions. There will be visible light gaps of approximately 1/2 inch on both sides of your roller shade to allow clearance for operating.', NULL, 'card-1', 0, 0, 1, 2, '2025-02-24 15:21:59', '2025-02-24 15:21:59'),
(120, 6, 3, NULL, 'Enter Size - Inches', '', NULL, 'heading', 1, 1, 1, 3, '2025-02-24 15:25:33', '2025-02-24 15:25:33'),
(121, 6, 27, 120, 'Width', 'Measure the top of the window frame and order the exact size making NO deductions. The factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'width', 0, 1, 1, 1, '2025-02-24 15:26:33', '2025-02-24 15:26:33'),
(122, 6, 28, 120, 'Height', 'Measure the top of the window frame and order the exact size making NO deductions. The factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'height', 0, 1, 1, 2, '2025-02-24 15:27:59', '2025-02-24 15:27:16'),
(123, 6, 42, NULL, 'Choose Your Rail Color', NULL, NULL, 'heading', 0, 1, 1, 5, '2025-02-25 14:15:31', '2025-02-25 14:13:14'),
(124, 6, 43, 123, 'Default Rail Color', NULL, NULL, 'card-3', 1, 1, 1, 1, '2025-02-26 13:45:57', '2025-02-25 14:14:11'),
(125, 6, 44, 123, 'Custom Rail Color', NULL, NULL, 'card-3', 0, 1, 1, 2, '2025-02-26 13:45:51', '2025-02-25 14:14:49'),
(126, 6, 41, 127, 'Product Color Option', NULL, NULL, 'product-color', 1, 1, 1, 3, '2025-02-25 14:26:30', '2025-02-25 14:25:01'),
(127, 6, 31, NULL, 'Choose Your Light Filtering Color', 'dsds', NULL, 'heading', 1, 1, 1, 4, '2025-02-25 14:26:08', '2025-02-25 14:26:08'),
(128, 6, 45, NULL, 'Cell Type', '', NULL, 'heading', 1, 1, 1, 6, '2025-02-25 14:46:15', '2025-02-25 14:46:15'),
(129, 6, 46, 128, 'Single Cell', NULL, NULL, 'card-3', 1, 1, 1, 1, '2025-02-26 13:44:44', '2025-02-25 14:47:40'),
(130, 6, 47, 128, 'Double Cell s', NULL, NULL, 'card-3', 0, 0, 1, 2, '2025-02-26 13:45:06', '2025-02-25 14:48:44'),
(131, 10, 3, NULL, 'Select Mount', '', NULL, 'heading', 1, 1, 1, 1, '2025-04-16 17:15:40', '2025-04-16 17:15:40'),
(132, 10, 1, 131, 'In Side Mount', 'Measure the top of the window frame and order the exact size making NO deductions.', NULL, 'card-1', 1, 1, 1, 1, '2025-04-16 17:26:05', '2025-04-16 17:16:07'),
(133, 10, 2, 131, 'Out Side Mount', 'Measure the top of the window frame and order the exact size making NO deductions.', NULL, 'card-1', 0, 1, 1, 2, '2025-04-16 17:26:12', '2025-04-16 17:16:35'),
(134, 10, 3, NULL, 'Select Size', '', NULL, 'heading', 1, 1, 1, 2, '2025-04-16 17:24:10', '2025-04-16 17:24:10'),
(135, 10, 27, 134, 'Width', '', NULL, 'width', 1, 1, 1, 1, '2025-04-16 17:24:36', '2025-04-16 17:24:36'),
(136, 10, 28, 134, 'Height', 'Measure the top of the window frame and order the exact size making NO deductions. The factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'height', 1, 1, 1, 2, '2025-04-16 17:25:31', '2025-04-16 17:25:31'),
(137, 2, 32, NULL, 'Mount Type', NULL, NULL, 'heading', 1, 0, 1, 1, '2025-04-22 14:48:36', '2025-04-21 15:17:48'),
(138, 2, 1, 137, 'In Side Mount', 'Provide exact window opening dimensions. There will be visible light gaps of approximately 1/2 inch on both sides of your roller shade to allow clearance for operating.', NULL, 'card-1', 1, 1, 1, 1, '2025-04-21 15:19:35', '2025-04-21 15:18:36'),
(139, 2, 2, 137, 'Out Side Mount', 'Provide the exact size of your shade, not the window. Because the fabric is narrower than the roller, you should add a minimum of 3 inches to width for maximum coverage.', NULL, 'card-1', 0, 1, 1, 2, '2025-04-21 15:19:25', '2025-04-21 15:19:25'),
(140, 2, 3, NULL, 'Enter Size - Inches', NULL, NULL, 'heading', 1, 0, 1, 2, '2025-04-22 14:42:07', '2025-04-21 15:21:37'),
(141, 2, 27, 140, 'Width', 'Measure the top of the window frame and order the exact size making NO deductions.\r\nThe factory will make your shades slightly smaller than your measurements to ensure the product fits and operates perfectly.', NULL, 'width', 1, 1, 1, 1, '2025-04-21 15:26:49', '2025-04-21 15:23:05'),
(142, 2, 28, 140, 'Height', 'Measure the left, center and right portions of the inside frame.\r\nTake the shortest height measurement.', NULL, 'height', 1, 1, 1, 2, '2025-04-21 15:26:19', '2025-04-21 15:26:19'),
(143, 2, 57, NULL, 'Choose Fabric Type', NULL, NULL, 'heading', 1, 0, 1, 3, '2025-04-22 14:59:51', '2025-04-21 15:31:14'),
(144, 2, 49, 143, 'Decorative Fabrics', 'Adds visual interest and texture to your room. Great for complementing more minimal spaces.', NULL, 'card-2', 1, 1, 1, 1, '2025-04-21 15:51:14', '2025-04-21 15:51:14'),
(145, 2, 55, NULL, 'Opacity', NULL, NULL, 'heading', 1, 0, 1, 4, '2025-04-22 14:55:20', '2025-04-21 15:58:28'),
(146, 2, 51, 145, 'Light Filtering', 'Softly diffuses natural light into your space while providing moderate privacy.', NULL, 'card-2', 1, 1, 1, 1, '2025-04-21 16:16:32', '2025-04-21 16:16:32'),
(147, 2, 52, 145, 'Blackout', 'Completely blocks sunlight from entering your space and provides maximum privacy.  Roller shades naturally have wider side light gaps than other products.  Consider outside mount for maximum light blockage.', NULL, 'card-2', 0, 1, 1, 2, '2025-04-21 16:20:25', '2025-04-21 16:20:09'),
(148, 2, 31, NULL, 'Choose Your Blackout Color', NULL, NULL, 'heading', 0, 0, 1, 5, '2025-04-22 14:42:39', '2025-04-21 16:22:07'),
(149, 2, 41, 148, 'Product Colors', '', NULL, 'product-color', 1, 1, 1, 1, '2025-04-21 16:23:33', '2025-04-21 16:23:33'),
(150, 2, 56, NULL, 'Choose Fabric Orientation', NULL, NULL, 'heading', 0, 0, 1, 6, '2025-04-22 14:58:14', '2025-04-21 16:24:38'),
(151, 2, 53, 150, 'Standard (vertical)', '', NULL, 'card-3', 1, 1, 1, 1, '2025-04-21 16:26:58', '2025-04-21 16:26:58'),
(152, 2, 33, NULL, 'Choose Your Lift', NULL, NULL, 'heading', 0, 0, 1, 7, '2025-04-22 14:51:43', '2025-04-22 13:34:24'),
(153, 2, 5, 152, 'Standard Cordless', 'Standard Cordless Shades offer a clean, cord-free design—just a gentle tug to raise or stop at your desired height. A safer, stylish option for homes with children and pets, complete with a back valance.', NULL, 'card-2', 1, 1, 1, 2, '2025-04-22 14:36:32', '2025-04-22 13:36:50'),
(155, 2, 6, 152, 'Smart Shades', 'Smart Shades Bluetooth technology offers the easiest and most convenient way to automate your motorized window treatments. Smart Home compatible with added Gateway', NULL, 'card-2', 0, 1, 1, 3, '2025-04-22 14:26:15', '2025-04-22 14:26:15'),
(156, 2, 54, 152, 'Beaded Chain', 'The beaded chain offers a smooth and reliable lift system, allowing you to effortlessly raise and lower your shade. It\'s a classic and user-friendly option for everyday use.', NULL, 'card-2', 0, 1, 1, 1, '2025-04-22 14:35:02', '2025-04-22 14:34:18'),
(157, 2, 34, 156, 'Control Side', NULL, NULL, 'heading', 1, 0, 1, 10, '2025-04-22 14:52:33', '2025-04-22 14:41:10'),
(158, 2, 8, 157, 'Left', '', NULL, 'card-3', 0, 1, 1, 1, '2025-04-22 14:45:15', '2025-04-22 14:45:15'),
(159, 2, 9, 157, 'Right', '', NULL, 'card-3', 0, 1, 1, 2, '2025-04-22 14:46:05', '2025-04-22 14:46:05'),
(160, 2, 58, NULL, 'Fabric Roll Direction', '', NULL, 'heading', 0, 0, 1, 11, '2025-04-22 15:01:51', '2025-04-22 15:01:51'),
(161, 2, 59, 160, 'Standard Roll', 'With a standard roll, the fabric hangs toward the back of the window, closer to the glass, for better privacy and light blockage.', NULL, 'card-2', 1, 1, 1, 1, '2025-04-22 15:07:44', '2025-04-22 15:07:44'),
(162, 2, 38, NULL, 'Valance', '', NULL, 'heading', 0, 0, 1, 12, '2025-04-22 15:10:58', '2025-04-22 15:10:58'),
(163, 2, 19, 162, 'No Valance', '', NULL, 'card-3', 1, 1, 1, 1, '2025-04-22 15:16:05', '2025-04-22 15:16:05'),
(164, 2, 20, 162, 'Fabric Wraped Valance', '', NULL, 'card-3', 0, 1, 1, 2, '2025-04-22 15:16:42', '2025-04-22 15:16:42'),
(165, 2, 21, 162, 'Valance Without Fabric', '', NULL, 'card-3', 0, 1, 1, 3, '2025-04-22 15:17:39', '2025-04-22 15:17:39'),
(166, 2, 22, 162, 'Circle Valance with Fabric Insert', '', NULL, 'card-3', 0, 1, 1, 4, '2025-04-22 15:21:47', '2025-04-22 15:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_pricing`
--

CREATE TABLE `product_option_pricing` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `option_id` bigint UNSIGNED DEFAULT NULL,
  `product_option_id` bigint UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `type` enum('+','-','*','/') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option_pricing`
--

INSERT INTO `product_option_pricing` (`id`, `product_id`, `option_id`, `product_option_id`, `price`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 88, 20.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(2, 1, NULL, 89, 4.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(3, 1, NULL, 90, 0.02, '+', '2025-02-11 15:07:00', '2025-02-11 15:11:05'),
(4, 1, NULL, 93, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(5, 1, NULL, 94, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(6, 1, NULL, 95, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(7, 1, NULL, 97, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(8, 1, NULL, 98, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(9, 1, NULL, 100, 1.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(10, 1, NULL, 101, 2.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(11, 1, NULL, 103, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(12, 1, NULL, 104, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(13, 1, NULL, 106, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(14, 1, NULL, 107, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(15, 1, NULL, 108, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(16, 1, NULL, 109, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(17, 1, NULL, 110, 0.00, '+', '2025-02-11 15:07:00', '2025-02-15 13:12:13'),
(18, 2, NULL, 6, 4.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(19, 2, NULL, 24, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(20, 2, NULL, 25, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(21, 2, NULL, 26, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(22, 2, NULL, 27, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(23, 2, NULL, 32, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(24, 2, NULL, 33, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(25, 2, NULL, 34, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(26, 2, NULL, 36, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(27, 2, NULL, 37, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(28, 2, NULL, 39, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(29, 2, NULL, 40, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(30, 2, NULL, 42, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(31, 2, NULL, 77, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(32, 2, NULL, 78, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(33, 2, NULL, 80, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(34, 2, NULL, 81, 0.00, '+', '2025-02-11 15:10:53', '2025-02-11 15:10:53'),
(35, 1, NULL, 111, 0.00, '+', '2025-02-15 13:12:13', '2025-02-15 13:12:13'),
(36, 6, NULL, 116, 0.00, '+', '2025-02-24 15:31:35', '2025-03-01 08:58:48'),
(37, 6, NULL, 118, 2.00, '+', '2025-02-24 15:31:35', '2025-03-01 08:58:48'),
(38, 6, NULL, 119, 3.00, '+', '2025-02-24 15:31:35', '2025-03-01 08:58:48'),
(39, 6, NULL, 124, 0.00, '+', '2025-02-25 14:16:33', '2025-03-01 08:58:48'),
(40, 6, NULL, 125, 1.00, '+', '2025-02-25 14:16:33', '2025-03-01 08:58:48'),
(41, 6, NULL, 126, 2.00, '+', '2025-02-25 14:32:02', '2025-03-01 08:58:48'),
(42, 6, NULL, 129, 1.00, '+', '2025-02-25 14:49:10', '2025-03-01 08:58:48'),
(43, 6, NULL, 130, 2.00, '+', '2025-02-25 14:49:10', '2025-03-01 08:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_pricing-old`
--

CREATE TABLE `product_option_pricing-old` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_option_id` bigint UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `type` enum('+','-','*','/') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_pricing`
--

CREATE TABLE `product_pricing` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `min_width` int NOT NULL,
  `max_width` int NOT NULL,
  `min_height` int NOT NULL,
  `max_height` int NOT NULL,
  `width_eighths` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `height_eighths` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 5, 'nice product', 'active', '2020-08-15 07:44:05', '2020-08-15 07:44:05'),
(2, 2, NULL, 5, 'nice', 'active', '2020-08-17 21:08:14', '2020-08-17 21:18:31'),
(3, 1, 3, 5, 'dsdsd', 'active', '2025-01-19 16:00:46', '2025-01-19 16:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `min_width` int NOT NULL,
  `max_width` int NOT NULL,
  `min_height` int NOT NULL,
  `max_height` int NOT NULL,
  `width_eighths` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `height_eighths` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `default_width` int UNSIGNED NOT NULL DEFAULT '0',
  `default_height` int UNSIGNED NOT NULL DEFAULT '0',
  `default_width_eighths` int UNSIGNED NOT NULL DEFAULT '0',
  `default_height_eighths` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `min_width`, `max_width`, `min_height`, `max_height`, `width_eighths`, `height_eighths`, `default_width`, `default_height`, `default_width_eighths`, `default_height_eighths`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 50, 15, 62, '[\"1\", \"2\", \"3\"]', '[\"1\", \"2\", \"3\"]', 0, 0, 0, 0, '2025-01-14 17:04:30', '2025-02-04 07:45:40'),
(2, 2, 12, 144, 12, 110, '[\"1\", \"2\", \"3\", \"4\", \"5\", \"6\"]', '[\"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"8\"]', 12, 12, 1, 1, '2025-01-17 07:13:19', '2025-04-27 15:22:00'),
(3, 3, 12, 50, 20, 60, '[\"1\", \"2\", \"3\", \"4\"]', '[\"1\", \"2\", \"3\"]', 0, 0, 0, 0, '2025-01-27 15:30:21', '2025-01-27 15:30:21'),
(4, 4, 10, 50, 10, 50, '[\"2\", \"3\"]', '[\"1\", \"2\"]', 3, 4, 2, 4, '2025-02-04 06:50:37', '2025-02-09 12:44:22'),
(5, 6, 12, 100, 1, 122, '[\"1\", \"2\", \"3\"]', '[\"1\", \"2\"]', 12, 44, 2, 2, '2025-02-24 15:16:26', '2025-02-24 15:16:26'),
(6, 10, 10, 50, 20, 60, '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\"]', 12, 22, 1, 1, '2025-04-16 17:17:28', '2025-04-16 17:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_size_price`
--

CREATE TABLE `product_size_price` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size_price`
--

INSERT INTO `product_size_price` (`id`, `product_id`, `width`, `height`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 12.02, '2025-01-27 13:17:18', '2025-01-27 14:17:21'),
(2, 2, 3, 2, 2.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(3, 2, 4, 2, 3.00, '2025-01-27 13:17:18', '2025-02-03 13:11:45'),
(4, 2, 5, 2, 2.00, '2025-01-27 13:17:18', '2025-02-03 13:11:52'),
(5, 2, 2, 3, 4.00, '2025-01-27 13:17:18', '2025-02-03 13:11:52'),
(6, 2, 3, 3, 5.00, '2025-01-27 13:17:18', '2025-02-03 13:11:52'),
(7, 2, 4, 3, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(8, 2, 5, 3, 10.00, '2025-01-27 13:17:18', '2025-04-27 15:21:03'),
(9, 2, 2, 4, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(10, 2, 3, 4, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(11, 2, 4, 4, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(12, 2, 5, 4, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(13, 2, 2, 5, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(14, 2, 3, 5, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(15, 2, 4, 5, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(16, 2, 5, 5, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(17, 2, 2, 6, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(18, 2, 3, 6, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(19, 2, 4, 6, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(20, 2, 5, 6, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(21, 2, 2, 7, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(22, 2, 3, 7, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(23, 2, 4, 7, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(24, 2, 5, 7, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(25, 2, 2, 8, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(26, 2, 3, 8, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(27, 2, 4, 8, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(28, 2, 5, 8, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(29, 2, 2, 9, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(30, 2, 3, 9, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(31, 2, 4, 9, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(32, 2, 5, 9, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(33, 2, 2, 10, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(34, 2, 3, 10, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(35, 2, 4, 10, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(36, 2, 5, 10, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(37, 2, 2, 11, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(38, 2, 3, 11, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(39, 2, 4, 11, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(40, 2, 5, 11, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(41, 2, 2, 12, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(42, 2, 3, 12, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(43, 2, 4, 12, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(44, 2, 5, 12, 0.00, '2025-01-27 13:17:18', '2025-01-27 13:17:18'),
(45, 1, 1, 2, 1.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(46, 1, 2, 2, 2.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(47, 1, 3, 2, 3.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(48, 1, 4, 2, 4.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(49, 1, 5, 2, 6.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(50, 1, 1, 3, 3.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(51, 1, 2, 3, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(52, 1, 3, 3, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(53, 1, 4, 3, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(54, 1, 5, 3, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(55, 1, 1, 4, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(56, 1, 2, 4, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(57, 1, 3, 4, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(58, 1, 4, 4, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(59, 1, 5, 4, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(60, 1, 1, 5, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(61, 1, 2, 5, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(62, 1, 3, 5, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(63, 1, 4, 5, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(64, 1, 5, 5, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(65, 1, 1, 6, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(66, 1, 2, 6, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(67, 1, 3, 6, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(68, 1, 4, 6, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(69, 1, 5, 6, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(70, 1, 1, 7, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(71, 1, 2, 7, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(72, 1, 3, 7, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(73, 1, 4, 7, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(74, 1, 5, 7, 0.00, '2025-02-15 13:11:18', '2025-02-15 13:11:18'),
(75, 6, 2, 1, 1.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(76, 6, 3, 1, 2.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(77, 6, 4, 1, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(78, 6, 5, 1, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(79, 6, 6, 1, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(80, 6, 7, 1, 67.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(81, 6, 8, 1, 8.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(82, 6, 9, 1, 7.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(83, 6, 10, 1, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(84, 6, 2, 2, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(85, 6, 3, 2, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(86, 6, 4, 2, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(87, 6, 5, 2, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(88, 6, 6, 2, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(89, 6, 7, 2, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(90, 6, 8, 2, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(91, 6, 9, 2, 7.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(92, 6, 10, 2, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(93, 6, 2, 3, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(94, 6, 3, 3, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(95, 6, 4, 3, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(96, 6, 5, 3, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(97, 6, 6, 3, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(98, 6, 7, 3, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(99, 6, 8, 3, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(100, 6, 9, 3, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(101, 6, 10, 3, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(102, 6, 2, 4, 45.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(103, 6, 3, 4, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(104, 6, 4, 4, 6.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(105, 6, 5, 4, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(106, 6, 6, 4, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(107, 6, 7, 4, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(108, 6, 8, 4, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(109, 6, 9, 4, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(110, 6, 10, 4, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(111, 6, 2, 5, 4.25, '2025-02-24 15:29:44', '2025-02-24 15:31:00'),
(112, 6, 3, 5, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(113, 6, 4, 5, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(114, 6, 5, 5, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(115, 6, 6, 5, 4.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(116, 6, 7, 5, 54.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(117, 6, 8, 5, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(118, 6, 9, 5, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(119, 6, 10, 5, 3.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(120, 6, 2, 6, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(121, 6, 3, 6, 5.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(122, 6, 4, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(123, 6, 5, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(124, 6, 6, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(125, 6, 7, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(126, 6, 8, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(127, 6, 9, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(128, 6, 10, 6, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(129, 6, 2, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(130, 6, 3, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(131, 6, 4, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(132, 6, 5, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(133, 6, 6, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(134, 6, 7, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(135, 6, 8, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(136, 6, 9, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(137, 6, 10, 7, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(138, 6, 2, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(139, 6, 3, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(140, 6, 4, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(141, 6, 5, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(142, 6, 6, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(143, 6, 7, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(144, 6, 8, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(145, 6, 9, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(146, 6, 10, 8, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(147, 6, 2, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(148, 6, 3, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(149, 6, 4, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(150, 6, 5, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(151, 6, 6, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(152, 6, 7, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(153, 6, 8, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(154, 6, 9, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(155, 6, 10, 9, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(156, 6, 2, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(157, 6, 3, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(158, 6, 4, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(159, 6, 5, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(160, 6, 6, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(161, 6, 7, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(162, 6, 8, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(163, 6, 9, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(164, 6, 10, 10, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(165, 6, 2, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(166, 6, 3, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(167, 6, 4, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(168, 6, 5, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(169, 6, 6, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(170, 6, 7, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(171, 6, 8, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(172, 6, 9, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(173, 6, 10, 11, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(174, 6, 2, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(175, 6, 3, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(176, 6, 4, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(177, 6, 5, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(178, 6, 6, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(179, 6, 7, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(180, 6, 8, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(181, 6, 9, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(182, 6, 10, 12, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(183, 6, 2, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(184, 6, 3, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(185, 6, 4, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(186, 6, 5, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(187, 6, 6, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(188, 6, 7, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(189, 6, 8, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(190, 6, 9, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(191, 6, 10, 13, 0.00, '2025-02-24 15:29:44', '2025-02-24 15:29:44'),
(192, 10, 1, 2, 2.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(193, 10, 2, 2, 5.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(194, 10, 3, 2, 6.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(195, 10, 4, 2, 7.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(196, 10, 5, 2, 7.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(197, 10, 1, 3, 3.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(198, 10, 2, 3, 23.00, '2025-04-16 17:17:48', '2025-04-16 17:27:12'),
(199, 10, 3, 3, 5.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(200, 10, 4, 3, 6.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(201, 10, 5, 3, 5.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(202, 10, 1, 4, 4.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(203, 10, 2, 4, 5.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(204, 10, 3, 4, 6.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(205, 10, 4, 4, 5.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(206, 10, 5, 4, 7.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(207, 10, 1, 5, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(208, 10, 2, 5, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(209, 10, 3, 5, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(210, 10, 4, 5, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(211, 10, 5, 5, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(212, 10, 1, 6, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(213, 10, 2, 6, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(214, 10, 3, 6, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(215, 10, 4, 6, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(216, 10, 5, 6, 0.00, '2025-04-16 17:17:48', '2025-04-16 17:17:48'),
(217, 2, 6, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(218, 2, 7, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(219, 2, 8, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(220, 2, 9, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(221, 2, 10, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(222, 2, 11, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(223, 2, 12, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(224, 2, 13, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(225, 2, 14, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(226, 2, 15, 2, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(227, 2, 6, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(228, 2, 7, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(229, 2, 8, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(230, 2, 9, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(231, 2, 10, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(232, 2, 11, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(233, 2, 12, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(234, 2, 13, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(235, 2, 14, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(236, 2, 15, 3, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(237, 2, 6, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(238, 2, 7, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(239, 2, 8, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(240, 2, 9, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(241, 2, 10, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(242, 2, 11, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(243, 2, 12, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(244, 2, 13, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(245, 2, 14, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(246, 2, 15, 4, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(247, 2, 6, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(248, 2, 7, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(249, 2, 8, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(250, 2, 9, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(251, 2, 10, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(252, 2, 11, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(253, 2, 12, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(254, 2, 13, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(255, 2, 14, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(256, 2, 15, 5, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(257, 2, 6, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(258, 2, 7, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(259, 2, 8, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(260, 2, 9, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(261, 2, 10, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(262, 2, 11, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(263, 2, 12, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(264, 2, 13, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(265, 2, 14, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(266, 2, 15, 6, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(267, 2, 6, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(268, 2, 7, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(269, 2, 8, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(270, 2, 9, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(271, 2, 10, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(272, 2, 11, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(273, 2, 12, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(274, 2, 13, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(275, 2, 14, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(276, 2, 15, 7, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(277, 2, 6, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(278, 2, 7, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(279, 2, 8, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(280, 2, 9, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(281, 2, 10, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(282, 2, 11, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(283, 2, 12, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(284, 2, 13, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(285, 2, 14, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(286, 2, 15, 8, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(287, 2, 6, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(288, 2, 7, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(289, 2, 8, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(290, 2, 9, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(291, 2, 10, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(292, 2, 11, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(293, 2, 12, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(294, 2, 13, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(295, 2, 14, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(296, 2, 15, 9, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(297, 2, 6, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(298, 2, 7, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(299, 2, 8, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(300, 2, 9, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(301, 2, 10, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(302, 2, 11, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(303, 2, 12, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(304, 2, 13, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(305, 2, 14, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(306, 2, 15, 10, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(307, 2, 6, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(308, 2, 7, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(309, 2, 8, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(310, 2, 9, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(311, 2, 10, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(312, 2, 11, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(313, 2, 12, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(314, 2, 13, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(315, 2, 14, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03'),
(316, 2, 15, 11, 0.00, '2025-04-27 15:21:03', '2025-04-27 15:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int NOT NULL,
  `tag_name` varchar(64) NOT NULL,
  `tag_image` varchar(128) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `tag_name`, `tag_image`, `sort_order`, `status`) VALUES
(1, 'On Sale', 'deal.svg', 1, 1),
(2, 'Rush Delivery', 'clock.svg', 2, 1),
(3, 'Top Selling', 'star.svg', 3, 1),
(4, 'Hot Product', 'flame.svg', 3, 1),
(5, 'Most Popular', 'heart.svg', 3, 1),
(6, 'Free Shipping', 'free.svg', 3, 1),
(7, 'Free Setup', 'gear.svg', 3, 1),
(8, 'Free Rush', 'eco.svg', 3, 1),
(9, 'Free 3-Day RUsh', 'calendar.svg', 3, 1),
(10, 'Free 24hr Production', 'clock-green.svg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-01-30 19:36:52', '2025-01-30 19:36:52'),
(2, 'user', '2025-01-30 19:36:52', '2025-01-30 19:36:52'),
(3, 'vendor', '2025-01-30 19:36:52', '2025-01-30 19:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `seo_metadata`
--

CREATE TABLE `seo_metadata` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `canonical_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_index` tinyint(1) NOT NULL DEFAULT '0',
  `no_follow` tinyint(1) NOT NULL DEFAULT '0',
  `abstract` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_metadata`
--

INSERT INTO `seo_metadata` (`id`, `product_id`, `cat_id`, `meta_title`, `meta_description`, `meta_keywords`, `canonical_url`, `no_index`, `no_follow`, `abstract`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'testsesd', 'dfsdf', 'sdfsdf,sdfsdf,ff,fff', NULL, 0, 1, NULL, '2025-02-25 16:50:01', '2025-02-25 17:06:03'),
(2, 10, NULL, 'dssd', 'sdsd', 'ds', NULL, 0, 0, NULL, '2025-04-16 17:18:05', '2025-04-16 17:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
('07jEGCOHUwzk8kbq1PS96m8c3qFD07mFlNJ6dV3F', NULL, '43.173.1.69', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVBwUE1DeHljMFk4bXlFNERoalpydFFBR1NYZHhTbGVHNnBRTklhNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20vcHJvZHVjdC1zdWItY2F0L21vdG9yaXplZC9yZW1vdGUtY29udHJvbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746125984),
('9pUg7sNoqqRVZDkwq5ZytUWqGYJ7q5eZAbc184LP', NULL, '43.133.187.11', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEhIRVNidFFPVEZKMXhPR3MzSFN6aTZsNUNKd1NZSlVBbEhQdDJCYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3B1YmxpYy9pbmRleC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746046491),
('aVxytzghpmtA5uK3GNhIniGxRZ89tqSHliXCIjLR', NULL, '43.153.192.98', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEIyTEs2S0h6QjdyUzgyYVVwbm1GWkpUOHd5VlF3aTQyNmRwZ1c3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20vcHJvZHVjdC1jYXQvNDAtb2ZmLXNpdGV3aWRlNDAtb2ZmLXNpdGV3aWRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746124361),
('DpvkfWeRKyKIZad11AT7Xy0Dkw8drNbsIOOEG95R', NULL, '43.135.145.73', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienNZZmNZbWV0WTdHTzdPQTE1cmxPc29CZjBOVnZQOXFvTWEyN085USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC92ZXJ0aWNhbC1ibGluZHMvc2hlZXItdmVydGljYWwtc2hhZGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746041092),
('ep1BtwdlHUThUBmTtxJsIvJfUbq13AhBzZ94RCmI', NULL, '165.22.28.21', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUhBeDZvVjFkTGpXUHBZem5kdmh6andEZktVQTdtNEttV01qQ2NEaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746108368),
('fyyPNvhJFQAegH4Z0oknIRJq7GZYx98UA8e4leRZ', NULL, '43.130.9.111', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjluVzd0UzNxZldJOEd1M1NhbDJUU3NFanp2WGdsTXE4NnlFQmt3dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC9zaGFkZXMvemVicmEtc2hhZGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746040373),
('HeAmfuoS25djUCrxiyeYlw9wM4CTr38ioYNr400U', NULL, '43.157.250.180', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnVKWnozYXNtdXI3bkNzTVZuYWxjYlNSTGFOdG1zSGZXekNXcDdZUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20vcHJvZHVjdC1kZXRhaWwvZHNkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746125321),
('jpYGTLIddm3jCL01VpwotFdwNYtCvIMQKIQI4yWN', NULL, '43.153.86.78', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1VMalFxTDVOSkZ1cTY2VVQ1bEpjSXJXN1lISFdhaXRTb0dVZDFvbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC9zaGFkZXMvbW90b3JpemVkLXNoYWRlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746046053),
('k2N15NJ8GTKu0ONJdOnli8QdNuT8Yt2NsViFICvu', NULL, '165.22.28.21', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTJ3b2tlVGl5M3I1MndkUkdGdjRSWVR0SlVmQ3E5WXUzN2pXSWNSMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746108370),
('kjp42ENdoMYlXTUArvq8V9r6sf2baKFbhUgzyvFg', NULL, '157.39.32.87', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTk1BSzU2cjAyQmlvdGo4UTBCeEY1a3VHd1ZNbmZrSHF4YWw5U0Q3cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746097123),
('L1mjkIq0fZrA9odYkRynD2KjHgCSHCO0WV710gjD', NULL, '43.152.72.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVNnSkt4bWllWXhjNmpHRDhkMlUyWlFmNXo4OG9RVnc4TzJSNEJWOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC92ZXJ0aWNhbC1ibGluZHMvcGFuZWwtdHJhY2stYmxpbmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746041910),
('M4fXIZbVXz9Y664hgz5GKMOsYLMDH4I5lTqxN5w3', NULL, '170.106.192.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3Fvd3JFRXFORkhwT0NuZEdGNzlLdjdTdUhyMDlHOThHTjVVWVhJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC9zaGFkZXMvcm9sbGVyLXNoYWRlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746045473),
('M4iyd9ivGZyUMgI0mVwKEX3Nab2cQpHUaRb8sXaL', NULL, '43.156.109.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjd4bVptNHYwb2pXcFduRzF0Q0dpeXFnczVyZmxJRmw4QmdHVVhmMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746041165),
('ogMl9SgK3hK3HFsnmv6XWAkZIROLlhwY4Zny1lZT', NULL, '43.157.180.116', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWtZM0J4VFJGQXp0UXJuSk9TREQ0bkV3UlZuNjE0OWptN3FSS24xdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20vcHJvZHVjdC1jYXQvZHNkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746124724),
('opHz3y9fw1KLMwu5e644JaZy1mP6iuZRuxmUxMcu', NULL, '43.167.239.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3A3cWNkMGQyUGZvcG5HQVdjMWlZNnRjZDdueHpsVVZPdGtwa2pzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3QtY2F0L3ZlcnRpY2FsLWJsaW5kcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746043725),
('QGruQQANmqgs3Yg8UgPmKrMlCAgNm443iUriTiHY', NULL, '49.51.33.159', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVFKMnVHcmUzYlpCUVpjZENrSklBcVE3TFlhUjRMd1FXOHNzQ2JLayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3QtY2F0L2NvbW1lcmNpYWwtYmxpbmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746044535),
('rblYMeHnmD5vJyhE191Zpsk43e3a5aRm1nif6ME9', 1, '106.221.87.53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSE9zYlJmSnU3V2JtOUlMZW5TT2FycmYxejF6U1RkVkNWNTNMNEZFWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL2NvLml0dGVjaHhwZXJ0LmNvbS9pbmNvbWUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0NjA0NDc0MTt9fQ==', 1746047068),
('rPvW8bQaDkyc6PQ7I5r0EQIDkxfdm20lO0f31JqJ', NULL, '205.169.39.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU1nczlOYWhkaWNOMGJMWXgwcnN5NElEbkVScGJWRGZYQUxPMzJUNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746069068),
('s6kb2sitBqv4EO83TtzXjF0VCJTo0XpPgBHZYlBj', NULL, '43.130.67.6', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGpPMXFlTG9rVG5XUUVpc0tERkNlSWtadFVzYnczUnNxYjBaYWFWRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746096891),
('sy8JigWAzNs8hx5XSVrXnbOm1PIraf5C1HqTA19H', NULL, '124.156.225.181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHZWNWVmVkRqaVFQOTF6bzRtOW9ZWms3WFpCd0ZvbEZCcjJFVVRMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jby5pdHRlY2h4cGVydC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746123177),
('uveiuAfJqdtMu62httXG9CsTSXAOOo87Rx2LFfLf', NULL, '43.165.65.75', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTFvSE5mNFpUZGdSTUtBVlpQb3VpeUE5TW55YWxSdFhmTnltZFUxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3Qtc3ViLWNhdC9zaGFkZXMvcGxlYXRlZC1zaGFkZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746043386),
('X6HqZKrejjk3Eey7ifED52xtUpFXRvGeOUeI9JcF', NULL, '43.156.109.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFNpMllFRGdkQXNpNmZQWHBnSmFsczR5SllOdW9XYXJrdGl5UnlXVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vY28uaXR0ZWNoeHBlcnQuY29tL3Byb2R1Y3QtY2F0L21vdG9yaXplZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746044805);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde omnis iste natus error sit voluptatem Excepteu\r\n\r\n                            sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspi deserunt mollit anim id est laborum. sed ut perspi.', 'Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.s', 'uiZa63TdoxAng8hMe4wtXGEYRfLjMwpfKxjeB4qV.png', 'NVgvR7KDogS2gIImbIHtKyGimeNcB18poKN9AIX2.png', 'NO. 342 - London Oxford Street, 012 United Kingdom', '+060 (800) 111-111', 'smartblinds@gmail.com', NULL, '2025-04-27 16:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kahtmandu', 100.00, 'active', '2020-08-14 04:22:17', '2020-08-14 04:22:17'),
(2, 'Out of valley', 300.00, 'active', '2020-08-14 04:22:41', '2020-08-14 04:22:41'),
(3, 'Pokhara', 400.00, 'active', '2020-08-15 06:54:04', '2020-08-15 06:54:04'),
(4, 'Dharan', 400.00, 'active', '2020-08-17 20:50:48', '2020-08-17 20:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Andaman and Nicobar Islands', 101),
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101),
(5, 'Bihar', 101),
(6, 'Chandigarh', 101),
(7, 'Chhattisgarh', 101),
(8, 'Dadra and Nagar Haveli', 101),
(9, 'Daman and Diu', 101),
(10, 'Delhi', 101),
(11, 'Goa', 101),
(12, 'Gujarat', 101),
(13, 'Haryana', 101),
(14, 'Himachal Pradesh', 101),
(15, 'Jammu and Kashmir', 101),
(16, 'Jharkhand', 101),
(17, 'Karnataka', 101),
(18, 'Kenmore', 101),
(19, 'Kerala', 101),
(20, 'Lakshadweep', 101),
(21, 'Madhya Pradesh', 101),
(22, 'Maharashtra', 101),
(23, 'Manipur', 101),
(24, 'Meghalaya', 101),
(25, 'Mizoram', 101),
(26, 'Nagaland', 101),
(27, 'Narora', 101),
(28, 'Natwar', 101),
(29, 'Odisha', 101),
(30, 'Paschim Medinipur', 101),
(31, 'Pondicherry', 101),
(32, 'Punjab', 101),
(33, 'Rajasthan', 101),
(34, 'Sikkim', 101),
(35, 'Tamil Nadu', 101),
(36, 'Telangana', 101),
(37, 'Tripura', 101),
(38, 'Uttar Pradesh', 101),
(39, 'Uttarakhand', 101),
(40, 'Vaishali', 101),
(41, 'West Bengal', 101),
(42, 'Badakhshan', 1),
(43, 'Badgis', 1),
(44, 'Baglan', 1),
(45, 'Balkh', 1),
(46, 'Bamiyan', 1),
(47, 'Farah', 1),
(48, 'Faryab', 1),
(49, 'Gawr', 1),
(50, 'Gazni', 1),
(51, 'Herat', 1),
(52, 'Hilmand', 1),
(53, 'Jawzjan', 1),
(54, 'Kabul', 1),
(55, 'Kapisa', 1),
(56, 'Khawst', 1),
(57, 'Kunar', 1),
(58, 'Lagman', 1),
(59, 'Lawghar', 1),
(60, 'Nangarhar', 1),
(61, 'Nimruz', 1),
(62, 'Nuristan', 1),
(63, 'Paktika', 1),
(64, 'Paktiya', 1),
(65, 'Parwan', 1),
(66, 'Qandahar', 1),
(67, 'Qunduz', 1),
(68, 'Samangan', 1),
(69, 'Sar-e Pul', 1),
(70, 'Takhar', 1),
(71, 'Uruzgan', 1),
(72, 'Wardag', 1),
(73, 'Zabul', 1),
(74, 'Berat', 2),
(75, 'Bulqize', 2),
(76, 'Delvine', 2),
(77, 'Devoll', 2),
(78, 'Dibre', 2),
(79, 'Durres', 2),
(80, 'Elbasan', 2),
(81, 'Fier', 2),
(82, 'Gjirokaster', 2),
(83, 'Gramsh', 2),
(84, 'Has', 2),
(85, 'Kavaje', 2),
(86, 'Kolonje', 2),
(87, 'Korce', 2),
(88, 'Kruje', 2),
(89, 'Kucove', 2),
(90, 'Kukes', 2),
(91, 'Kurbin', 2),
(92, 'Lezhe', 2),
(93, 'Librazhd', 2),
(94, 'Lushnje', 2),
(95, 'Mallakaster', 2),
(96, 'Malsi e Madhe', 2),
(97, 'Mat', 2),
(98, 'Mirdite', 2),
(99, 'Peqin', 2),
(100, 'Permet', 2),
(101, 'Pogradec', 2),
(102, 'Puke', 2),
(103, 'Sarande', 2),
(104, 'Shkoder', 2),
(105, 'Skrapar', 2),
(106, 'Tepelene', 2),
(107, 'Tirane', 2),
(108, 'Tropoje', 2),
(109, 'Vlore', 2),
(110, '\'Ayn Daflah', 3),
(111, '\'Ayn Tamushanat', 3),
(112, 'Adrar', 3),
(113, 'Algiers', 3),
(114, 'Annabah', 3),
(115, 'Bashshar', 3),
(116, 'Batnah', 3),
(117, 'Bijayah', 3),
(118, 'Biskrah', 3),
(119, 'Blidah', 3),
(120, 'Buirah', 3),
(121, 'Bumardas', 3),
(122, 'Burj Bu Arririj', 3),
(123, 'Ghalizan', 3),
(124, 'Ghardayah', 3),
(125, 'Ilizi', 3),
(126, 'Jijili', 3),
(127, 'Jilfah', 3),
(128, 'Khanshalah', 3),
(129, 'Masilah', 3),
(130, 'Midyah', 3),
(131, 'Milah', 3),
(132, 'Muaskar', 3),
(133, 'Mustaghanam', 3),
(134, 'Naama', 3),
(135, 'Oran', 3),
(136, 'Ouargla', 3),
(137, 'Qalmah', 3),
(138, 'Qustantinah', 3),
(139, 'Sakikdah', 3),
(140, 'Satif', 3),
(141, 'Sayda\'', 3),
(142, 'Sidi ban-al-\'Abbas', 3),
(143, 'Suq Ahras', 3),
(144, 'Tamanghasat', 3),
(145, 'Tibazah', 3),
(146, 'Tibissah', 3),
(147, 'Tilimsan', 3),
(148, 'Tinduf', 3),
(149, 'Tisamsilt', 3),
(150, 'Tiyarat', 3),
(151, 'Tizi Wazu', 3),
(152, 'Umm-al-Bawaghi', 3),
(153, 'Wahran', 3),
(154, 'Warqla', 3),
(155, 'Wilaya d Alger', 3),
(156, 'Wilaya de Bejaia', 3),
(157, 'Wilaya de Constantine', 3),
(158, 'al-Aghwat', 3),
(159, 'al-Bayadh', 3),
(160, 'al-Jaza\'ir', 3),
(161, 'al-Wad', 3),
(162, 'ash-Shalif', 3),
(163, 'at-Tarif', 3),
(164, 'Eastern', 4),
(165, 'Manu\'a', 4),
(166, 'Swains Island', 4),
(167, 'Western', 4),
(168, 'Andorra la Vella', 5),
(169, 'Canillo', 5),
(170, 'Encamp', 5),
(171, 'La Massana', 5),
(172, 'Les Escaldes', 5),
(173, 'Ordino', 5),
(174, 'Sant Julia de Loria', 5),
(175, 'Bengo', 6),
(176, 'Benguela', 6),
(177, 'Bie', 6),
(178, 'Cabinda', 6),
(179, 'Cunene', 6),
(180, 'Huambo', 6),
(181, 'Huila', 6),
(182, 'Kuando-Kubango', 6),
(183, 'Kwanza Norte', 6),
(184, 'Kwanza Sul', 6),
(185, 'Luanda', 6),
(186, 'Lunda Norte', 6),
(187, 'Lunda Sul', 6),
(188, 'Malanje', 6),
(189, 'Moxico', 6),
(190, 'Namibe', 6),
(191, 'Uige', 6),
(192, 'Zaire', 6),
(193, 'Other Provinces', 7),
(194, 'Sector claimed by Argentina/Ch', 8),
(195, 'Sector claimed by Argentina/UK', 8),
(196, 'Sector claimed by Australia', 8),
(197, 'Sector claimed by France', 8),
(198, 'Sector claimed by New Zealand', 8),
(199, 'Sector claimed by Norway', 8),
(200, 'Unclaimed Sector', 8),
(201, 'Barbuda', 9),
(202, 'Saint George', 9),
(203, 'Saint John', 9),
(204, 'Saint Mary', 9),
(205, 'Saint Paul', 9),
(206, 'Saint Peter', 9),
(207, 'Saint Philip', 9),
(208, 'Buenos Aires', 10),
(209, 'Catamarca', 10),
(210, 'Chaco', 10),
(211, 'Chubut', 10),
(212, 'Cordoba', 10),
(213, 'Corrientes', 10),
(214, 'Distrito Federal', 10),
(215, 'Entre Rios', 10),
(216, 'Formosa', 10),
(217, 'Jujuy', 10),
(218, 'La Pampa', 10),
(219, 'La Rioja', 10),
(220, 'Mendoza', 10),
(221, 'Misiones', 10),
(222, 'Neuquen', 10),
(223, 'Rio Negro', 10),
(224, 'Salta', 10),
(225, 'San Juan', 10),
(226, 'San Luis', 10),
(227, 'Santa Cruz', 10),
(228, 'Santa Fe', 10),
(229, 'Santiago del Estero', 10),
(230, 'Tierra del Fuego', 10),
(231, 'Tucuman', 10),
(232, 'Aragatsotn', 11),
(233, 'Ararat', 11),
(234, 'Armavir', 11),
(235, 'Gegharkunik', 11),
(236, 'Kotaik', 11),
(237, 'Lori', 11),
(238, 'Shirak', 11),
(239, 'Stepanakert', 11),
(240, 'Syunik', 11),
(241, 'Tavush', 11),
(242, 'Vayots Dzor', 11),
(243, 'Yerevan', 11),
(244, 'Aruba', 12),
(245, 'Auckland', 13),
(246, 'Australian Capital Territory', 13),
(247, 'Balgowlah', 13),
(248, 'Balmain', 13),
(249, 'Bankstown', 13),
(250, 'Baulkham Hills', 13),
(251, 'Bonnet Bay', 13),
(252, 'Camberwell', 13),
(253, 'Carole Park', 13),
(254, 'Castle Hill', 13),
(255, 'Caulfield', 13),
(256, 'Chatswood', 13),
(257, 'Cheltenham', 13),
(258, 'Cherrybrook', 13),
(259, 'Clayton', 13),
(260, 'Collingwood', 13),
(261, 'Frenchs Forest', 13),
(262, 'Hawthorn', 13),
(263, 'Jannnali', 13),
(264, 'Knoxfield', 13),
(265, 'Melbourne', 13),
(266, 'New South Wales', 13),
(267, 'Northern Territory', 13),
(268, 'Perth', 13),
(269, 'Queensland', 13),
(270, 'South Australia', 13),
(271, 'Tasmania', 13),
(272, 'Templestowe', 13),
(273, 'Victoria', 13),
(274, 'Werribee south', 13),
(275, 'Western Australia', 13),
(276, 'Wheeler', 13),
(277, 'Bundesland Salzburg', 14),
(278, 'Bundesland Steiermark', 14),
(279, 'Bundesland Tirol', 14),
(280, 'Burgenland', 14),
(281, 'Carinthia', 14),
(282, 'Karnten', 14),
(283, 'Liezen', 14),
(284, 'Lower Austria', 14),
(285, 'Niederosterreich', 14),
(286, 'Oberosterreich', 14),
(287, 'Salzburg', 14),
(288, 'Schleswig-Holstein', 14),
(289, 'Steiermark', 14),
(290, 'Styria', 14),
(291, 'Tirol', 14),
(292, 'Upper Austria', 14),
(293, 'Vorarlberg', 14),
(294, 'Wien', 14),
(295, 'Abseron', 15),
(296, 'Baki Sahari', 15),
(297, 'Ganca', 15),
(298, 'Ganja', 15),
(299, 'Kalbacar', 15),
(300, 'Lankaran', 15),
(301, 'Mil-Qarabax', 15),
(302, 'Mugan-Salyan', 15),
(303, 'Nagorni-Qarabax', 15),
(304, 'Naxcivan', 15),
(305, 'Priaraks', 15),
(306, 'Qazax', 15),
(307, 'Saki', 15),
(308, 'Sirvan', 15),
(309, 'Xacmaz', 15),
(310, 'Abaco', 16),
(311, 'Acklins Island', 16),
(312, 'Andros', 16),
(313, 'Berry Islands', 16),
(314, 'Biminis', 16),
(315, 'Cat Island', 16),
(316, 'Crooked Island', 16),
(317, 'Eleuthera', 16),
(318, 'Exuma and Cays', 16),
(319, 'Grand Bahama', 16),
(320, 'Inagua Islands', 16),
(321, 'Long Island', 16),
(322, 'Mayaguana', 16),
(323, 'New Providence', 16),
(324, 'Ragged Island', 16),
(325, 'Rum Cay', 16),
(326, 'San Salvador', 16),
(327, '\'Isa', 17),
(328, 'Badiyah', 17),
(329, 'Hidd', 17),
(330, 'Jidd Hafs', 17),
(331, 'Mahama', 17),
(332, 'Manama', 17),
(333, 'Sitrah', 17),
(334, 'al-Manamah', 17),
(335, 'al-Muharraq', 17),
(336, 'ar-Rifa\'a', 17),
(337, 'Bagar Hat', 18),
(338, 'Bandarban', 18),
(339, 'Barguna', 18),
(340, 'Barisal', 18),
(341, 'Bhola', 18),
(342, 'Bogora', 18),
(343, 'Brahman Bariya', 18),
(344, 'Chandpur', 18),
(345, 'Chattagam', 18),
(346, 'Chittagong Division', 18),
(347, 'Chuadanga', 18),
(348, 'Dhaka', 18),
(349, 'Dinajpur', 18),
(350, 'Faridpur', 18),
(351, 'Feni', 18),
(352, 'Gaybanda', 18),
(353, 'Gazipur', 18),
(354, 'Gopalganj', 18),
(355, 'Habiganj', 18),
(356, 'Jaipur Hat', 18),
(357, 'Jamalpur', 18),
(358, 'Jessor', 18),
(359, 'Jhalakati', 18),
(360, 'Jhanaydah', 18),
(361, 'Khagrachhari', 18),
(362, 'Khulna', 18),
(363, 'Kishorganj', 18),
(364, 'Koks Bazar', 18),
(365, 'Komilla', 18),
(366, 'Kurigram', 18),
(367, 'Kushtiya', 18),
(368, 'Lakshmipur', 18),
(369, 'Lalmanir Hat', 18),
(370, 'Madaripur', 18),
(371, 'Magura', 18),
(372, 'Maimansingh', 18),
(373, 'Manikganj', 18),
(374, 'Maulvi Bazar', 18),
(375, 'Meherpur', 18),
(376, 'Munshiganj', 18),
(377, 'Naral', 18),
(378, 'Narayanganj', 18),
(379, 'Narsingdi', 18),
(380, 'Nator', 18),
(381, 'Naugaon', 18),
(382, 'Nawabganj', 18),
(383, 'Netrakona', 18),
(384, 'Nilphamari', 18),
(385, 'Noakhali', 18),
(386, 'Pabna', 18),
(387, 'Panchagarh', 18),
(388, 'Patuakhali', 18),
(389, 'Pirojpur', 18),
(390, 'Rajbari', 18),
(391, 'Rajshahi', 18),
(392, 'Rangamati', 18),
(393, 'Rangpur', 18),
(394, 'Satkhira', 18),
(395, 'Shariatpur', 18),
(396, 'Sherpur', 18),
(397, 'Silhat', 18),
(398, 'Sirajganj', 18),
(399, 'Sunamganj', 18),
(400, 'Tangayal', 18),
(401, 'Thakurgaon', 18),
(402, 'Christ Church', 19),
(403, 'Saint Andrew', 19),
(404, 'Saint George', 19),
(405, 'Saint James', 19),
(406, 'Saint John', 19),
(407, 'Saint Joseph', 19),
(408, 'Saint Lucy', 19),
(409, 'Saint Michael', 19),
(410, 'Saint Peter', 19),
(411, 'Saint Philip', 19),
(412, 'Saint Thomas', 19),
(413, 'Brest', 20),
(414, 'Homjel\'', 20),
(415, 'Hrodna', 20),
(416, 'Mahiljow', 20),
(417, 'Mahilyowskaya Voblasts', 20),
(418, 'Minsk', 20),
(419, 'Minskaja Voblasts\'', 20),
(420, 'Petrik', 20),
(421, 'Vicebsk', 20),
(422, 'Antwerpen', 21),
(423, 'Berchem', 21),
(424, 'Brabant', 21),
(425, 'Brabant Wallon', 21),
(426, 'Brussel', 21),
(427, 'East Flanders', 21),
(428, 'Hainaut', 21),
(429, 'Liege', 21),
(430, 'Limburg', 21),
(431, 'Luxembourg', 21),
(432, 'Namur', 21),
(433, 'Ontario', 21),
(434, 'Oost-Vlaanderen', 21),
(435, 'Provincie Brabant', 21),
(436, 'Vlaams-Brabant', 21),
(437, 'Wallonne', 21),
(438, 'West-Vlaanderen', 21),
(439, 'Belize', 22),
(440, 'Cayo', 22),
(441, 'Corozal', 22),
(442, 'Orange Walk', 22),
(443, 'Stann Creek', 22),
(444, 'Toledo', 22),
(445, 'Alibori', 23),
(446, 'Atacora', 23),
(447, 'Atlantique', 23),
(448, 'Borgou', 23),
(449, 'Collines', 23),
(450, 'Couffo', 23),
(451, 'Donga', 23),
(452, 'Littoral', 23),
(453, 'Mono', 23),
(454, 'Oueme', 23),
(455, 'Plateau', 23),
(456, 'Zou', 23),
(457, 'Hamilton', 24),
(458, 'Saint George', 24),
(459, 'Bumthang', 25),
(460, 'Chhukha', 25),
(461, 'Chirang', 25),
(462, 'Daga', 25),
(463, 'Geylegphug', 25),
(464, 'Ha', 25),
(465, 'Lhuntshi', 25),
(466, 'Mongar', 25),
(467, 'Pemagatsel', 25),
(468, 'Punakha', 25),
(469, 'Rinpung', 25),
(470, 'Samchi', 25),
(471, 'Samdrup Jongkhar', 25),
(472, 'Shemgang', 25),
(473, 'Tashigang', 25),
(474, 'Timphu', 25),
(475, 'Tongsa', 25),
(476, 'Wangdiphodrang', 25),
(477, 'Beni', 26),
(478, 'Chuquisaca', 26),
(479, 'Cochabamba', 26),
(480, 'La Paz', 26),
(481, 'Oruro', 26),
(482, 'Pando', 26),
(483, 'Potosi', 26),
(484, 'Santa Cruz', 26),
(485, 'Tarija', 26),
(486, 'Federacija Bosna i Hercegovina', 27),
(487, 'Republika Srpska', 27),
(488, 'Central Bobonong', 28),
(489, 'Central Boteti', 28),
(490, 'Central Mahalapye', 28),
(491, 'Central Serowe-Palapye', 28),
(492, 'Central Tutume', 28),
(493, 'Chobe', 28),
(494, 'Francistown', 28),
(495, 'Gaborone', 28),
(496, 'Ghanzi', 28),
(497, 'Jwaneng', 28),
(498, 'Kgalagadi North', 28),
(499, 'Kgalagadi South', 28),
(500, 'Kgatleng', 28),
(501, 'Kweneng', 28),
(502, 'Lobatse', 28),
(503, 'Ngamiland', 28),
(504, 'Ngwaketse', 28),
(505, 'North East', 28),
(506, 'Okavango', 28),
(507, 'Orapa', 28),
(508, 'Selibe Phikwe', 28),
(509, 'South East', 28),
(510, 'Sowa', 28),
(511, 'Bouvet Island', 29),
(512, 'Acre', 30),
(513, 'Alagoas', 30),
(514, 'Amapa', 30),
(515, 'Amazonas', 30),
(516, 'Bahia', 30),
(517, 'Ceara', 30),
(518, 'Distrito Federal', 30),
(519, 'Espirito Santo', 30),
(520, 'Estado de Sao Paulo', 30),
(521, 'Goias', 30),
(522, 'Maranhao', 30),
(523, 'Mato Grosso', 30),
(524, 'Mato Grosso do Sul', 30),
(525, 'Minas Gerais', 30),
(526, 'Para', 30),
(527, 'Paraiba', 30),
(528, 'Parana', 30),
(529, 'Pernambuco', 30),
(530, 'Piaui', 30),
(531, 'Rio Grande do Norte', 30),
(532, 'Rio Grande do Sul', 30),
(533, 'Rio de Janeiro', 30),
(534, 'Rondonia', 30),
(535, 'Roraima', 30),
(536, 'Santa Catarina', 30),
(537, 'Sao Paulo', 30),
(538, 'Sergipe', 30),
(539, 'Tocantins', 30),
(540, 'British Indian Ocean Territory', 31),
(541, 'Belait', 32),
(542, 'Brunei-Muara', 32),
(543, 'Temburong', 32),
(544, 'Tutong', 32),
(545, 'Blagoevgrad', 33),
(546, 'Burgas', 33),
(547, 'Dobrich', 33),
(548, 'Gabrovo', 33),
(549, 'Haskovo', 33),
(550, 'Jambol', 33),
(551, 'Kardzhali', 33),
(552, 'Kjustendil', 33),
(553, 'Lovech', 33),
(554, 'Montana', 33),
(555, 'Oblast Sofiya-Grad', 33),
(556, 'Pazardzhik', 33),
(557, 'Pernik', 33),
(558, 'Pleven', 33),
(559, 'Plovdiv', 33),
(560, 'Razgrad', 33),
(561, 'Ruse', 33),
(562, 'Shumen', 33),
(563, 'Silistra', 33),
(564, 'Sliven', 33),
(565, 'Smoljan', 33),
(566, 'Sofija grad', 33),
(567, 'Sofijska oblast', 33),
(568, 'Stara Zagora', 33),
(569, 'Targovishte', 33),
(570, 'Varna', 33),
(571, 'Veliko Tarnovo', 33),
(572, 'Vidin', 33),
(573, 'Vraca', 33),
(574, 'Yablaniza', 33),
(575, 'Bale', 34),
(576, 'Bam', 34),
(577, 'Bazega', 34),
(578, 'Bougouriba', 34),
(579, 'Boulgou', 34),
(580, 'Boulkiemde', 34),
(581, 'Comoe', 34),
(582, 'Ganzourgou', 34),
(583, 'Gnagna', 34),
(584, 'Gourma', 34),
(585, 'Houet', 34),
(586, 'Ioba', 34),
(587, 'Kadiogo', 34),
(588, 'Kenedougou', 34),
(589, 'Komandjari', 34),
(590, 'Kompienga', 34),
(591, 'Kossi', 34),
(592, 'Kouritenga', 34),
(593, 'Kourweogo', 34),
(594, 'Leraba', 34),
(595, 'Mouhoun', 34),
(596, 'Nahouri', 34),
(597, 'Namentenga', 34),
(598, 'Noumbiel', 34),
(599, 'Oubritenga', 34),
(600, 'Oudalan', 34),
(601, 'Passore', 34),
(602, 'Poni', 34),
(603, 'Sanguie', 34),
(604, 'Sanmatenga', 34),
(605, 'Seno', 34),
(606, 'Sissili', 34),
(607, 'Soum', 34),
(608, 'Sourou', 34),
(609, 'Tapoa', 34),
(610, 'Tuy', 34),
(611, 'Yatenga', 34),
(612, 'Zondoma', 34),
(613, 'Zoundweogo', 34),
(614, 'Bubanza', 35),
(615, 'Bujumbura', 35),
(616, 'Bururi', 35),
(617, 'Cankuzo', 35),
(618, 'Cibitoke', 35),
(619, 'Gitega', 35),
(620, 'Karuzi', 35),
(621, 'Kayanza', 35),
(622, 'Kirundo', 35),
(623, 'Makamba', 35),
(624, 'Muramvya', 35),
(625, 'Muyinga', 35),
(626, 'Ngozi', 35),
(627, 'Rutana', 35),
(628, 'Ruyigi', 35),
(629, 'Banteay Mean Chey', 36),
(630, 'Bat Dambang', 36),
(631, 'Kampong Cham', 36),
(632, 'Kampong Chhnang', 36),
(633, 'Kampong Spoeu', 36),
(634, 'Kampong Thum', 36),
(635, 'Kampot', 36),
(636, 'Kandal', 36),
(637, 'Kaoh Kong', 36),
(638, 'Kracheh', 36),
(639, 'Krong Kaeb', 36),
(640, 'Krong Pailin', 36),
(641, 'Krong Preah Sihanouk', 36),
(642, 'Mondol Kiri', 36),
(643, 'Otdar Mean Chey', 36),
(644, 'Phnum Penh', 36),
(645, 'Pousat', 36),
(646, 'Preah Vihear', 36),
(647, 'Prey Veaeng', 36),
(648, 'Rotanak Kiri', 36),
(649, 'Siem Reab', 36),
(650, 'Stueng Traeng', 36),
(651, 'Svay Rieng', 36),
(652, 'Takaev', 36),
(653, 'Adamaoua', 37),
(654, 'Centre', 37),
(655, 'Est', 37),
(656, 'Littoral', 37),
(657, 'Nord', 37),
(658, 'Nord Extreme', 37),
(659, 'Nordouest', 37),
(660, 'Ouest', 37),
(661, 'Sud', 37),
(662, 'Sudouest', 37),
(663, 'Alberta', 38),
(664, 'British Columbia', 38),
(665, 'Manitoba', 38),
(666, 'New Brunswick', 38),
(667, 'Newfoundland and Labrador', 38),
(668, 'Northwest Territories', 38),
(669, 'Nova Scotia', 38),
(670, 'Nunavut', 38),
(671, 'Ontario', 38),
(672, 'Prince Edward Island', 38),
(673, 'Quebec', 38),
(674, 'Saskatchewan', 38),
(675, 'Yukon', 38),
(676, 'Boavista', 39),
(677, 'Brava', 39),
(678, 'Fogo', 39),
(679, 'Maio', 39),
(680, 'Sal', 39),
(681, 'Santo Antao', 39),
(682, 'Sao Nicolau', 39),
(683, 'Sao Tiago', 39),
(684, 'Sao Vicente', 39),
(685, 'Grand Cayman', 40),
(686, 'Bamingui-Bangoran', 41),
(687, 'Bangui', 41),
(688, 'Basse-Kotto', 41),
(689, 'Haut-Mbomou', 41),
(690, 'Haute-Kotto', 41),
(691, 'Kemo', 41),
(692, 'Lobaye', 41),
(693, 'Mambere-Kadei', 41),
(694, 'Mbomou', 41),
(695, 'Nana-Gribizi', 41),
(696, 'Nana-Mambere', 41),
(697, 'Ombella Mpoko', 41),
(698, 'Ouaka', 41),
(699, 'Ouham', 41),
(700, 'Ouham-Pende', 41),
(701, 'Sangha-Mbaere', 41),
(702, 'Vakaga', 41),
(703, 'Batha', 42),
(704, 'Biltine', 42),
(705, 'Bourkou-Ennedi-Tibesti', 42),
(706, 'Chari-Baguirmi', 42),
(707, 'Guera', 42),
(708, 'Kanem', 42),
(709, 'Lac', 42),
(710, 'Logone Occidental', 42),
(711, 'Logone Oriental', 42),
(712, 'Mayo-Kebbi', 42),
(713, 'Moyen-Chari', 42),
(714, 'Ouaddai', 42),
(715, 'Salamat', 42),
(716, 'Tandjile', 42),
(717, 'Aisen', 43),
(718, 'Antofagasta', 43),
(719, 'Araucania', 43),
(720, 'Atacama', 43),
(721, 'Bio Bio', 43),
(722, 'Coquimbo', 43),
(723, 'Libertador General Bernardo O\'', 43),
(724, 'Los Lagos', 43),
(725, 'Magellanes', 43),
(726, 'Maule', 43),
(727, 'Metropolitana', 43),
(728, 'Metropolitana de Santiago', 43),
(729, 'Tarapaca', 43),
(730, 'Valparaiso', 43),
(731, 'Anhui', 44),
(734, 'Aomen', 44),
(735, 'Beijing', 44),
(736, 'Beijing Shi', 44),
(737, 'Chongqing', 44),
(738, 'Fujian', 44),
(740, 'Gansu', 44),
(741, 'Guangdong', 44),
(743, 'Guangxi', 44),
(744, 'Guizhou', 44),
(745, 'Hainan', 44),
(746, 'Hebei', 44),
(747, 'Heilongjiang', 44),
(748, 'Henan', 44),
(749, 'Hubei', 44),
(750, 'Hunan', 44),
(751, 'Jiangsu', 44),
(753, 'Jiangxi', 44),
(754, 'Jilin', 44),
(755, 'Liaoning', 44),
(757, 'Nei Monggol', 44),
(758, 'Ningxia Hui', 44),
(759, 'Qinghai', 44),
(760, 'Shaanxi', 44),
(761, 'Shandong', 44),
(763, 'Shanghai', 44),
(764, 'Shanxi', 44),
(765, 'Sichuan', 44),
(766, 'Tianjin', 44),
(767, 'Xianggang', 44),
(768, 'Xinjiang', 44),
(769, 'Xizang', 44),
(770, 'Yunnan', 44),
(771, 'Zhejiang', 44),
(773, 'Christmas Island', 45),
(774, 'Cocos (Keeling) Islands', 46),
(775, 'Amazonas', 47),
(776, 'Antioquia', 47),
(777, 'Arauca', 47),
(778, 'Atlantico', 47),
(779, 'Bogota', 47),
(780, 'Bolivar', 47),
(781, 'Boyaca', 47),
(782, 'Caldas', 47),
(783, 'Caqueta', 47),
(784, 'Casanare', 47),
(785, 'Cauca', 47),
(786, 'Cesar', 47),
(787, 'Choco', 47),
(788, 'Cordoba', 47),
(789, 'Cundinamarca', 47),
(790, 'Guainia', 47),
(791, 'Guaviare', 47),
(792, 'Huila', 47),
(793, 'La Guajira', 47),
(794, 'Magdalena', 47),
(795, 'Meta', 47),
(796, 'Narino', 47),
(797, 'Norte de Santander', 47),
(798, 'Putumayo', 47),
(799, 'Quindio', 47),
(800, 'Risaralda', 47),
(801, 'San Andres y Providencia', 47),
(802, 'Santander', 47),
(803, 'Sucre', 47),
(804, 'Tolima', 47),
(805, 'Valle del Cauca', 47),
(806, 'Vaupes', 47),
(807, 'Vichada', 47),
(808, 'Mwali', 48),
(809, 'Njazidja', 48),
(810, 'Nzwani', 48),
(811, 'Bouenza', 49),
(812, 'Brazzaville', 49),
(813, 'Cuvette', 49),
(814, 'Kouilou', 49),
(815, 'Lekoumou', 49),
(816, 'Likouala', 49),
(817, 'Niari', 49),
(818, 'Plateaux', 49),
(819, 'Pool', 49),
(820, 'Sangha', 49),
(821, 'Bandundu', 50),
(822, 'Bas-Congo', 50),
(823, 'Equateur', 50),
(824, 'Haut-Congo', 50),
(825, 'Kasai-Occidental', 50),
(826, 'Kasai-Oriental', 50),
(827, 'Katanga', 50),
(828, 'Kinshasa', 50),
(829, 'Maniema', 50),
(830, 'Nord-Kivu', 50),
(831, 'Sud-Kivu', 50),
(832, 'Aitutaki', 51),
(833, 'Atiu', 51),
(834, 'Mangaia', 51),
(835, 'Manihiki', 51),
(836, 'Mauke', 51),
(837, 'Mitiaro', 51),
(838, 'Nassau', 51),
(839, 'Pukapuka', 51),
(840, 'Rakahanga', 51),
(841, 'Rarotonga', 51),
(842, 'Tongareva', 51),
(843, 'Alajuela', 52),
(844, 'Cartago', 52),
(845, 'Guanacaste', 52),
(846, 'Heredia', 52),
(847, 'Limon', 52),
(848, 'Puntarenas', 52),
(849, 'San Jose', 52),
(850, 'Abidjan', 53),
(851, 'Agneby', 53),
(852, 'Bafing', 53),
(853, 'Denguele', 53),
(854, 'Dix-huit Montagnes', 53),
(855, 'Fromager', 53),
(856, 'Haut-Sassandra', 53),
(857, 'Lacs', 53),
(858, 'Lagunes', 53),
(859, 'Marahoue', 53),
(860, 'Moyen-Cavally', 53),
(861, 'Moyen-Comoe', 53),
(862, 'N\'zi-Comoe', 53),
(863, 'Sassandra', 53),
(864, 'Savanes', 53),
(865, 'Sud-Bandama', 53),
(866, 'Sud-Comoe', 53),
(867, 'Vallee du Bandama', 53),
(868, 'Worodougou', 53),
(869, 'Zanzan', 53),
(870, 'Bjelovar-Bilogora', 54),
(871, 'Dubrovnik-Neretva', 54),
(872, 'Grad Zagreb', 54),
(873, 'Istra', 54),
(874, 'Karlovac', 54),
(875, 'Koprivnica-Krizhevci', 54),
(876, 'Krapina-Zagorje', 54),
(877, 'Lika-Senj', 54),
(878, 'Medhimurje', 54),
(879, 'Medimurska Zupanija', 54),
(880, 'Osijek-Baranja', 54),
(881, 'Osjecko-Baranjska Zupanija', 54),
(882, 'Pozhega-Slavonija', 54),
(883, 'Primorje-Gorski Kotar', 54),
(884, 'Shibenik-Knin', 54),
(885, 'Sisak-Moslavina', 54),
(886, 'Slavonski Brod-Posavina', 54),
(887, 'Split-Dalmacija', 54),
(888, 'Varazhdin', 54),
(889, 'Virovitica-Podravina', 54),
(890, 'Vukovar-Srijem', 54),
(891, 'Zadar', 54),
(892, 'Zagreb', 54),
(893, 'Camaguey', 55),
(894, 'Ciego de Avila', 55),
(895, 'Cienfuegos', 55),
(896, 'Ciudad de la Habana', 55),
(897, 'Granma', 55),
(898, 'Guantanamo', 55),
(899, 'Habana', 55),
(900, 'Holguin', 55),
(901, 'Isla de la Juventud', 55),
(902, 'La Habana', 55),
(903, 'Las Tunas', 55),
(904, 'Matanzas', 55),
(905, 'Pinar del Rio', 55),
(906, 'Sancti Spiritus', 55),
(907, 'Santiago de Cuba', 55),
(908, 'Villa Clara', 55),
(909, 'Government controlled area', 56),
(910, 'Limassol', 56),
(911, 'Nicosia District', 56),
(912, 'Paphos', 56),
(913, 'Turkish controlled area', 56),
(914, 'Central Bohemian', 57),
(915, 'Frycovice', 57),
(916, 'Jihocesky Kraj', 57),
(917, 'Jihochesky', 57),
(918, 'Jihomoravsky', 57),
(919, 'Karlovarsky', 57),
(920, 'Klecany', 57),
(921, 'Kralovehradecky', 57),
(922, 'Liberecky', 57),
(923, 'Lipov', 57),
(924, 'Moravskoslezsky', 57),
(925, 'Olomoucky', 57),
(926, 'Olomoucky Kraj', 57),
(927, 'Pardubicky', 57),
(928, 'Plzensky', 57),
(929, 'Praha', 57),
(930, 'Rajhrad', 57),
(931, 'Smirice', 57),
(932, 'South Moravian', 57),
(933, 'Straz nad Nisou', 57),
(934, 'Stredochesky', 57),
(935, 'Unicov', 57),
(936, 'Ustecky', 57),
(937, 'Valletta', 57),
(938, 'Velesin', 57),
(939, 'Vysochina', 57),
(940, 'Zlinsky', 57),
(941, 'Arhus', 58),
(942, 'Bornholm', 58),
(943, 'Frederiksborg', 58),
(944, 'Fyn', 58),
(945, 'Hovedstaden', 58),
(946, 'Kobenhavn', 58),
(947, 'Kobenhavns Amt', 58),
(948, 'Kobenhavns Kommune', 58),
(949, 'Nordjylland', 58),
(950, 'Ribe', 58),
(951, 'Ringkobing', 58),
(952, 'Roervig', 58),
(953, 'Roskilde', 58),
(954, 'Roslev', 58),
(955, 'Sjaelland', 58),
(956, 'Soeborg', 58),
(957, 'Sonderjylland', 58),
(958, 'Storstrom', 58),
(959, 'Syddanmark', 58),
(960, 'Toelloese', 58),
(961, 'Vejle', 58),
(962, 'Vestsjalland', 58),
(963, 'Viborg', 58),
(964, '\'Ali Sabih', 59),
(965, 'Dikhil', 59),
(966, 'Jibuti', 59),
(967, 'Tajurah', 59),
(968, 'Ubuk', 59),
(969, 'Saint Andrew', 60),
(970, 'Saint David', 60),
(971, 'Saint George', 60),
(972, 'Saint John', 60),
(973, 'Saint Joseph', 60),
(974, 'Saint Luke', 60),
(975, 'Saint Mark', 60),
(976, 'Saint Patrick', 60),
(977, 'Saint Paul', 60),
(978, 'Saint Peter', 60),
(979, 'Azua', 61),
(980, 'Bahoruco', 61),
(981, 'Barahona', 61),
(982, 'Dajabon', 61),
(983, 'Distrito Nacional', 61),
(984, 'Duarte', 61),
(985, 'El Seybo', 61),
(986, 'Elias Pina', 61),
(987, 'Espaillat', 61),
(988, 'Hato Mayor', 61),
(989, 'Independencia', 61),
(990, 'La Altagracia', 61),
(991, 'La Romana', 61),
(992, 'La Vega', 61),
(993, 'Maria Trinidad Sanchez', 61),
(994, 'Monsenor Nouel', 61),
(995, 'Monte Cristi', 61),
(996, 'Monte Plata', 61),
(997, 'Pedernales', 61),
(998, 'Peravia', 61),
(999, 'Puerto Plata', 61),
(1000, 'Salcedo', 61),
(1001, 'Samana', 61),
(1002, 'San Cristobal', 61),
(1003, 'San Juan', 61),
(1004, 'San Pedro de Macoris', 61),
(1005, 'Sanchez Ramirez', 61),
(1006, 'Santiago', 61),
(1007, 'Santiago Rodriguez', 61),
(1008, 'Valverde', 61),
(1009, 'Aileu', 62),
(1010, 'Ainaro', 62),
(1011, 'Ambeno', 62),
(1012, 'Baucau', 62),
(1013, 'Bobonaro', 62),
(1014, 'Cova Lima', 62),
(1015, 'Dili', 62),
(1016, 'Ermera', 62),
(1017, 'Lautem', 62),
(1018, 'Liquica', 62),
(1019, 'Manatuto', 62),
(1020, 'Manufahi', 62),
(1021, 'Viqueque', 62),
(1022, 'Azuay', 63),
(1023, 'Bolivar', 63),
(1024, 'Canar', 63),
(1025, 'Carchi', 63),
(1026, 'Chimborazo', 63),
(1027, 'Cotopaxi', 63),
(1028, 'El Oro', 63),
(1029, 'Esmeraldas', 63),
(1030, 'Galapagos', 63),
(1031, 'Guayas', 63),
(1032, 'Imbabura', 63),
(1033, 'Loja', 63),
(1034, 'Los Rios', 63),
(1035, 'Manabi', 63),
(1036, 'Morona Santiago', 63),
(1037, 'Napo', 63),
(1038, 'Orellana', 63),
(1039, 'Pastaza', 63),
(1040, 'Pichincha', 63),
(1041, 'Sucumbios', 63),
(1042, 'Tungurahua', 63),
(1043, 'Zamora Chinchipe', 63),
(1044, 'Aswan', 64),
(1045, 'Asyut', 64),
(1046, 'Bani Suwayf', 64),
(1047, 'Bur Sa\'id', 64),
(1048, 'Cairo', 64),
(1049, 'Dumyat', 64),
(1050, 'Kafr-ash-Shaykh', 64),
(1051, 'Matruh', 64),
(1052, 'Muhafazat ad Daqahliyah', 64),
(1053, 'Muhafazat al Fayyum', 64),
(1054, 'Muhafazat al Gharbiyah', 64),
(1055, 'Muhafazat al Iskandariyah', 64),
(1056, 'Muhafazat al Qahirah', 64),
(1057, 'Qina', 64),
(1058, 'Sawhaj', 64),
(1059, 'Sina al-Janubiyah', 64),
(1060, 'Sina ash-Shamaliyah', 64),
(1061, 'ad-Daqahliyah', 64),
(1062, 'al-Bahr-al-Ahmar', 64),
(1063, 'al-Buhayrah', 64),
(1064, 'al-Fayyum', 64),
(1065, 'al-Gharbiyah', 64),
(1066, 'al-Iskandariyah', 64),
(1067, 'al-Ismailiyah', 64),
(1068, 'al-Jizah', 64),
(1069, 'al-Minufiyah', 64),
(1070, 'al-Minya', 64),
(1071, 'al-Qahira', 64),
(1072, 'al-Qalyubiyah', 64),
(1073, 'al-Uqsur', 64),
(1074, 'al-Wadi al-Jadid', 64),
(1075, 'as-Suways', 64),
(1076, 'ash-Sharqiyah', 64),
(1077, 'Ahuachapan', 65),
(1078, 'Cabanas', 65),
(1079, 'Chalatenango', 65),
(1080, 'Cuscatlan', 65),
(1081, 'La Libertad', 65),
(1082, 'La Paz', 65),
(1083, 'La Union', 65),
(1084, 'Morazan', 65),
(1085, 'San Miguel', 65),
(1086, 'San Salvador', 65),
(1087, 'San Vicente', 65),
(1088, 'Santa Ana', 65),
(1089, 'Sonsonate', 65),
(1090, 'Usulutan', 65),
(1091, 'Annobon', 66),
(1092, 'Bioko Norte', 66),
(1093, 'Bioko Sur', 66),
(1094, 'Centro Sur', 66),
(1095, 'Kie-Ntem', 66),
(1096, 'Litoral', 66),
(1097, 'Wele-Nzas', 66),
(1098, 'Anseba', 67),
(1099, 'Debub', 67),
(1100, 'Debub-Keih-Bahri', 67),
(1101, 'Gash-Barka', 67),
(1102, 'Maekel', 67),
(1103, 'Semien-Keih-Bahri', 67),
(1104, 'Harju', 68),
(1105, 'Hiiu', 68),
(1106, 'Ida-Viru', 68),
(1107, 'Jarva', 68),
(1108, 'Jogeva', 68),
(1109, 'Laane', 68),
(1110, 'Laane-Viru', 68),
(1111, 'Parnu', 68),
(1112, 'Polva', 68),
(1113, 'Rapla', 68),
(1114, 'Saare', 68),
(1115, 'Tartu', 68),
(1116, 'Valga', 68),
(1117, 'Viljandi', 68),
(1118, 'Voru', 68),
(1119, 'Addis Abeba', 69),
(1120, 'Afar', 69),
(1121, 'Amhara', 69),
(1122, 'Benishangul', 69),
(1123, 'Diredawa', 69),
(1124, 'Gambella', 69),
(1125, 'Harar', 69),
(1126, 'Jigjiga', 69),
(1127, 'Mekele', 69),
(1128, 'Oromia', 69),
(1129, 'Somali', 69),
(1130, 'Southern', 69),
(1131, 'Tigray', 69),
(1132, 'Christmas Island', 70),
(1133, 'Cocos Islands', 70),
(1134, 'Coral Sea Islands', 70),
(1135, 'Falkland Islands', 71),
(1136, 'South Georgia', 71),
(1137, 'Klaksvik', 72),
(1138, 'Nor ara Eysturoy', 72),
(1139, 'Nor oy', 72),
(1140, 'Sandoy', 72),
(1141, 'Streymoy', 72),
(1142, 'Su uroy', 72),
(1143, 'Sy ra Eysturoy', 72),
(1144, 'Torshavn', 72),
(1145, 'Vaga', 72),
(1146, 'Central', 73),
(1147, 'Eastern', 73),
(1148, 'Northern', 73),
(1149, 'South Pacific', 73),
(1150, 'Western', 73),
(1151, 'Ahvenanmaa', 74),
(1152, 'Etela-Karjala', 74),
(1153, 'Etela-Pohjanmaa', 74),
(1154, 'Etela-Savo', 74),
(1155, 'Etela-Suomen Laani', 74),
(1156, 'Ita-Suomen Laani', 74),
(1157, 'Ita-Uusimaa', 74),
(1158, 'Kainuu', 74),
(1159, 'Kanta-Hame', 74),
(1160, 'Keski-Pohjanmaa', 74),
(1161, 'Keski-Suomi', 74),
(1162, 'Kymenlaakso', 74),
(1163, 'Lansi-Suomen Laani', 74),
(1164, 'Lappi', 74),
(1165, 'Northern Savonia', 74),
(1166, 'Ostrobothnia', 74),
(1167, 'Oulun Laani', 74),
(1168, 'Paijat-Hame', 74),
(1169, 'Pirkanmaa', 74),
(1170, 'Pohjanmaa', 74),
(1171, 'Pohjois-Karjala', 74),
(1172, 'Pohjois-Pohjanmaa', 74),
(1173, 'Pohjois-Savo', 74),
(1174, 'Saarijarvi', 74),
(1175, 'Satakunta', 74),
(1176, 'Southern Savonia', 74),
(1177, 'Tavastia Proper', 74),
(1178, 'Uleaborgs Lan', 74),
(1179, 'Uusimaa', 74),
(1180, 'Varsinais-Suomi', 74),
(1181, 'Ain', 75),
(1182, 'Aisne', 75),
(1183, 'Albi Le Sequestre', 75),
(1184, 'Allier', 75),
(1185, 'Alpes-Cote dAzur', 75),
(1186, 'Alpes-Maritimes', 75),
(1187, 'Alpes-de-Haute-Provence', 75),
(1188, 'Alsace', 75),
(1189, 'Aquitaine', 75),
(1190, 'Ardeche', 75),
(1191, 'Ardennes', 75),
(1192, 'Ariege', 75),
(1193, 'Aube', 75),
(1194, 'Aude', 75),
(1195, 'Auvergne', 75),
(1196, 'Aveyron', 75),
(1197, 'Bas-Rhin', 75),
(1198, 'Basse-Normandie', 75),
(1199, 'Bouches-du-Rhone', 75),
(1200, 'Bourgogne', 75),
(1201, 'Bretagne', 75),
(1202, 'Brittany', 75),
(1203, 'Burgundy', 75),
(1204, 'Calvados', 75),
(1205, 'Cantal', 75),
(1206, 'Cedex', 75),
(1207, 'Centre', 75),
(1208, 'Charente', 75),
(1209, 'Charente-Maritime', 75),
(1210, 'Cher', 75),
(1211, 'Correze', 75),
(1212, 'Corse-du-Sud', 75),
(1213, 'Cote-d\'Or', 75),
(1214, 'Cotes-d\'Armor', 75),
(1215, 'Creuse', 75),
(1216, 'Crolles', 75),
(1217, 'Deux-Sevres', 75),
(1218, 'Dordogne', 75),
(1219, 'Doubs', 75),
(1220, 'Drome', 75),
(1221, 'Essonne', 75),
(1222, 'Eure', 75),
(1223, 'Eure-et-Loir', 75),
(1224, 'Feucherolles', 75),
(1225, 'Finistere', 75),
(1226, 'Franche-Comte', 75),
(1227, 'Gard', 75),
(1228, 'Gers', 75),
(1229, 'Gironde', 75),
(1230, 'Haut-Rhin', 75),
(1231, 'Haute-Corse', 75),
(1232, 'Haute-Garonne', 75),
(1233, 'Haute-Loire', 75),
(1234, 'Haute-Marne', 75),
(1235, 'Haute-Saone', 75),
(1236, 'Haute-Savoie', 75),
(1237, 'Haute-Vienne', 75),
(1238, 'Hautes-Alpes', 75),
(1239, 'Hautes-Pyrenees', 75),
(1240, 'Hauts-de-Seine', 75),
(1241, 'Herault', 75),
(1242, 'Ile-de-France', 75),
(1243, 'Ille-et-Vilaine', 75),
(1244, 'Indre', 75),
(1245, 'Indre-et-Loire', 75),
(1246, 'Isere', 75),
(1247, 'Jura', 75),
(1248, 'Klagenfurt', 75),
(1249, 'Landes', 75),
(1250, 'Languedoc-Roussillon', 75),
(1251, 'Larcay', 75),
(1252, 'Le Castellet', 75),
(1253, 'Le Creusot', 75),
(1254, 'Limousin', 75),
(1255, 'Loir-et-Cher', 75),
(1256, 'Loire', 75),
(1257, 'Loire-Atlantique', 75),
(1258, 'Loiret', 75),
(1259, 'Lorraine', 75),
(1260, 'Lot', 75),
(1261, 'Lot-et-Garonne', 75),
(1262, 'Lower Normandy', 75),
(1263, 'Lozere', 75),
(1264, 'Maine-et-Loire', 75),
(1265, 'Manche', 75),
(1266, 'Marne', 75),
(1267, 'Mayenne', 75),
(1268, 'Meurthe-et-Moselle', 75),
(1269, 'Meuse', 75),
(1270, 'Midi-Pyrenees', 75),
(1271, 'Morbihan', 75),
(1272, 'Moselle', 75),
(1273, 'Nievre', 75),
(1274, 'Nord', 75),
(1275, 'Nord-Pas-de-Calais', 75),
(1276, 'Oise', 75),
(1277, 'Orne', 75),
(1278, 'Paris', 75),
(1279, 'Pas-de-Calais', 75),
(1280, 'Pays de la Loire', 75),
(1281, 'Pays-de-la-Loire', 75),
(1282, 'Picardy', 75),
(1283, 'Puy-de-Dome', 75),
(1284, 'Pyrenees-Atlantiques', 75),
(1285, 'Pyrenees-Orientales', 75),
(1286, 'Quelmes', 75),
(1287, 'Rhone', 75),
(1288, 'Rhone-Alpes', 75),
(1289, 'Saint Ouen', 75),
(1290, 'Saint Viatre', 75),
(1291, 'Saone-et-Loire', 75),
(1292, 'Sarthe', 75),
(1293, 'Savoie', 75),
(1294, 'Seine-Maritime', 75),
(1295, 'Seine-Saint-Denis', 75),
(1296, 'Seine-et-Marne', 75),
(1297, 'Somme', 75),
(1298, 'Sophia Antipolis', 75),
(1299, 'Souvans', 75),
(1300, 'Tarn', 75),
(1301, 'Tarn-et-Garonne', 75),
(1302, 'Territoire de Belfort', 75),
(1303, 'Treignac', 75),
(1304, 'Upper Normandy', 75),
(1305, 'Val-d\'Oise', 75),
(1306, 'Val-de-Marne', 75),
(1307, 'Var', 75),
(1308, 'Vaucluse', 75),
(1309, 'Vellise', 75),
(1310, 'Vendee', 75),
(1311, 'Vienne', 75),
(1312, 'Vosges', 75),
(1313, 'Yonne', 75),
(1314, 'Yvelines', 75),
(1315, 'Cayenne', 76),
(1316, 'Saint-Laurent-du-Maroni', 76),
(1317, 'Iles du Vent', 77),
(1318, 'Iles sous le Vent', 77),
(1319, 'Marquesas', 77),
(1320, 'Tuamotu', 77),
(1321, 'Tubuai', 77),
(1322, 'Amsterdam', 78),
(1323, 'Crozet Islands', 78),
(1324, 'Kerguelen', 78),
(1325, 'Estuaire', 79),
(1326, 'Haut-Ogooue', 79),
(1327, 'Moyen-Ogooue', 79),
(1328, 'Ngounie', 79),
(1329, 'Nyanga', 79),
(1330, 'Ogooue-Ivindo', 79),
(1331, 'Ogooue-Lolo', 79),
(1332, 'Ogooue-Maritime', 79),
(1333, 'Woleu-Ntem', 79),
(1334, 'Banjul', 80),
(1335, 'Basse', 80),
(1336, 'Brikama', 80),
(1337, 'Janjanbureh', 80),
(1338, 'Kanifing', 80),
(1339, 'Kerewan', 80),
(1340, 'Kuntaur', 80),
(1341, 'Mansakonko', 80),
(1342, 'Abhasia', 81),
(1343, 'Ajaria', 81),
(1344, 'Guria', 81),
(1345, 'Imereti', 81),
(1346, 'Kaheti', 81),
(1347, 'Kvemo Kartli', 81),
(1348, 'Mcheta-Mtianeti', 81),
(1349, 'Racha', 81),
(1350, 'Samagrelo-Zemo Svaneti', 81),
(1351, 'Samche-Zhavaheti', 81),
(1352, 'Shida Kartli', 81),
(1353, 'Tbilisi', 81),
(1354, 'Auvergne', 82),
(1355, 'Baden-Wurttemberg', 82),
(1356, 'Bavaria', 82),
(1357, 'Bayern', 82),
(1358, 'Beilstein Wurtt', 82),
(1359, 'Berlin', 82),
(1360, 'Brandenburg', 82),
(1361, 'Bremen', 82),
(1362, 'Dreisbach', 82),
(1363, 'Freistaat Bayern', 82),
(1364, 'Hamburg', 82),
(1365, 'Hannover', 82),
(1366, 'Heroldstatt', 82),
(1367, 'Hessen', 82),
(1368, 'Kortenberg', 82),
(1369, 'Laasdorf', 82),
(1370, 'Land Baden-Wurttemberg', 82),
(1371, 'Land Bayern', 82),
(1372, 'Land Brandenburg', 82),
(1373, 'Land Hessen', 82),
(1374, 'Land Mecklenburg-Vorpommern', 82),
(1375, 'Land Nordrhein-Westfalen', 82),
(1376, 'Land Rheinland-Pfalz', 82),
(1377, 'Land Sachsen', 82),
(1378, 'Land Sachsen-Anhalt', 82),
(1379, 'Land Thuringen', 82),
(1380, 'Lower Saxony', 82),
(1381, 'Mecklenburg-Vorpommern', 82),
(1382, 'Mulfingen', 82),
(1383, 'Munich', 82),
(1384, 'Neubeuern', 82),
(1385, 'Niedersachsen', 82),
(1386, 'Noord-Holland', 82),
(1387, 'Nordrhein-Westfalen', 82),
(1388, 'North Rhine-Westphalia', 82),
(1389, 'Osterode', 82),
(1390, 'Rheinland-Pfalz', 82),
(1391, 'Rhineland-Palatinate', 82),
(1392, 'Saarland', 82),
(1393, 'Sachsen', 82),
(1394, 'Sachsen-Anhalt', 82),
(1395, 'Saxony', 82),
(1396, 'Schleswig-Holstein', 82),
(1397, 'Thuringia', 82),
(1398, 'Webling', 82),
(1399, 'Weinstrabe', 82),
(1400, 'schlobborn', 82),
(1401, 'Ashanti', 83),
(1402, 'Brong-Ahafo', 83),
(1403, 'Central', 83),
(1404, 'Eastern', 83),
(1405, 'Greater Accra', 83),
(1406, 'Northern', 83),
(1407, 'Upper East', 83),
(1408, 'Upper West', 83),
(1409, 'Volta', 83),
(1410, 'Western', 83),
(1411, 'Gibraltar', 84),
(1412, 'Acharnes', 85),
(1413, 'Ahaia', 85),
(1414, 'Aitolia kai Akarnania', 85),
(1415, 'Argolis', 85),
(1416, 'Arkadia', 85),
(1417, 'Arta', 85),
(1418, 'Attica', 85),
(1419, 'Attiki', 85),
(1420, 'Ayion Oros', 85),
(1421, 'Crete', 85),
(1422, 'Dodekanisos', 85),
(1423, 'Drama', 85),
(1424, 'Evia', 85),
(1425, 'Evritania', 85),
(1426, 'Evros', 85),
(1427, 'Evvoia', 85),
(1428, 'Florina', 85),
(1429, 'Fokis', 85),
(1430, 'Fthiotis', 85),
(1431, 'Grevena', 85),
(1432, 'Halandri', 85),
(1433, 'Halkidiki', 85),
(1434, 'Hania', 85),
(1435, 'Heraklion', 85),
(1436, 'Hios', 85),
(1437, 'Ilia', 85),
(1438, 'Imathia', 85),
(1439, 'Ioannina', 85),
(1440, 'Iraklion', 85),
(1441, 'Karditsa', 85),
(1442, 'Kastoria', 85),
(1443, 'Kavala', 85),
(1444, 'Kefallinia', 85),
(1445, 'Kerkira', 85),
(1446, 'Kiklades', 85),
(1447, 'Kilkis', 85),
(1448, 'Korinthia', 85),
(1449, 'Kozani', 85),
(1450, 'Lakonia', 85),
(1451, 'Larisa', 85),
(1452, 'Lasithi', 85),
(1453, 'Lesvos', 85),
(1454, 'Levkas', 85),
(1455, 'Magnisia', 85),
(1456, 'Messinia', 85),
(1457, 'Nomos Attikis', 85),
(1458, 'Nomos Zakynthou', 85),
(1459, 'Pella', 85),
(1460, 'Pieria', 85),
(1461, 'Piraios', 85),
(1462, 'Preveza', 85),
(1463, 'Rethimni', 85),
(1464, 'Rodopi', 85),
(1465, 'Samos', 85),
(1466, 'Serrai', 85),
(1467, 'Thesprotia', 85),
(1468, 'Thessaloniki', 85),
(1469, 'Trikala', 85),
(1470, 'Voiotia', 85),
(1471, 'West Greece', 85),
(1472, 'Xanthi', 85),
(1473, 'Zakinthos', 85),
(1474, 'Aasiaat', 86),
(1475, 'Ammassalik', 86),
(1476, 'Illoqqortoormiut', 86),
(1477, 'Ilulissat', 86),
(1478, 'Ivittuut', 86),
(1479, 'Kangaatsiaq', 86),
(1480, 'Maniitsoq', 86),
(1481, 'Nanortalik', 86),
(1482, 'Narsaq', 86),
(1483, 'Nuuk', 86),
(1484, 'Paamiut', 86),
(1485, 'Qaanaaq', 86),
(1486, 'Qaqortoq', 86),
(1487, 'Qasigiannguit', 86),
(1488, 'Qeqertarsuaq', 86),
(1489, 'Sisimiut', 86),
(1490, 'Udenfor kommunal inddeling', 86),
(1491, 'Upernavik', 86),
(1492, 'Uummannaq', 86),
(1493, 'Carriacou-Petite Martinique', 87),
(1494, 'Saint Andrew', 87),
(1495, 'Saint Davids', 87),
(1496, 'Saint George\'s', 87),
(1497, 'Saint John', 87),
(1498, 'Saint Mark', 87),
(1499, 'Saint Patrick', 87),
(1500, 'Basse-Terre', 88),
(1501, 'Grande-Terre', 88),
(1502, 'Iles des Saintes', 88),
(1503, 'La Desirade', 88),
(1504, 'Marie-Galante', 88),
(1505, 'Saint Barthelemy', 88),
(1506, 'Saint Martin', 88),
(1507, 'Agana Heights', 89),
(1508, 'Agat', 89),
(1509, 'Barrigada', 89),
(1510, 'Chalan-Pago-Ordot', 89),
(1511, 'Dededo', 89),
(1512, 'Hagatna', 89),
(1513, 'Inarajan', 89),
(1514, 'Mangilao', 89),
(1515, 'Merizo', 89),
(1516, 'Mongmong-Toto-Maite', 89),
(1517, 'Santa Rita', 89),
(1518, 'Sinajana', 89),
(1519, 'Talofofo', 89),
(1520, 'Tamuning', 89),
(1521, 'Yigo', 89),
(1522, 'Yona', 89),
(1523, 'Alta Verapaz', 90),
(1524, 'Baja Verapaz', 90),
(1525, 'Chimaltenango', 90),
(1526, 'Chiquimula', 90),
(1527, 'El Progreso', 90),
(1528, 'Escuintla', 90),
(1529, 'Guatemala', 90),
(1530, 'Huehuetenango', 90),
(1531, 'Izabal', 90),
(1532, 'Jalapa', 90),
(1533, 'Jutiapa', 90),
(1534, 'Peten', 90),
(1535, 'Quezaltenango', 90),
(1536, 'Quiche', 90),
(1537, 'Retalhuleu', 90),
(1538, 'Sacatepequez', 90),
(1539, 'San Marcos', 90),
(1540, 'Santa Rosa', 90),
(1541, 'Solola', 90),
(1542, 'Suchitepequez', 90),
(1543, 'Totonicapan', 90),
(1544, 'Zacapa', 90),
(1545, 'Alderney', 91),
(1546, 'Castel', 91),
(1547, 'Forest', 91),
(1548, 'Saint Andrew', 91),
(1549, 'Saint Martin', 91),
(1550, 'Saint Peter Port', 91),
(1551, 'Saint Pierre du Bois', 91),
(1552, 'Saint Sampson', 91),
(1553, 'Saint Saviour', 91),
(1554, 'Sark', 91),
(1555, 'Torteval', 91),
(1556, 'Vale', 91),
(1557, 'Beyla', 92),
(1558, 'Boffa', 92),
(1559, 'Boke', 92),
(1560, 'Conakry', 92),
(1561, 'Coyah', 92),
(1562, 'Dabola', 92),
(1563, 'Dalaba', 92),
(1564, 'Dinguiraye', 92),
(1565, 'Faranah', 92),
(1566, 'Forecariah', 92),
(1567, 'Fria', 92),
(1568, 'Gaoual', 92),
(1569, 'Gueckedou', 92),
(1570, 'Kankan', 92),
(1571, 'Kerouane', 92),
(1572, 'Kindia', 92),
(1573, 'Kissidougou', 92),
(1574, 'Koubia', 92),
(1575, 'Koundara', 92),
(1576, 'Kouroussa', 92),
(1577, 'Labe', 92),
(1578, 'Lola', 92),
(1579, 'Macenta', 92),
(1580, 'Mali', 92),
(1581, 'Mamou', 92),
(1582, 'Mandiana', 92),
(1583, 'Nzerekore', 92),
(1584, 'Pita', 92),
(1585, 'Siguiri', 92),
(1586, 'Telimele', 92),
(1587, 'Tougue', 92),
(1588, 'Yomou', 92),
(1589, 'Bafata', 93),
(1590, 'Bissau', 93),
(1591, 'Bolama', 93),
(1592, 'Cacheu', 93),
(1593, 'Gabu', 93),
(1594, 'Oio', 93),
(1595, 'Quinara', 93),
(1596, 'Tombali', 93),
(1597, 'Barima-Waini', 94),
(1598, 'Cuyuni-Mazaruni', 94),
(1599, 'Demerara-Mahaica', 94),
(1600, 'East Berbice-Corentyne', 94),
(1601, 'Essequibo Islands-West Demerar', 94),
(1602, 'Mahaica-Berbice', 94),
(1603, 'Pomeroon-Supenaam', 94),
(1604, 'Potaro-Siparuni', 94),
(1605, 'Upper Demerara-Berbice', 94),
(1606, 'Upper Takutu-Upper Essequibo', 94),
(1607, 'Artibonite', 95),
(1608, 'Centre', 95),
(1609, 'Grand\'Anse', 95),
(1610, 'Nord', 95),
(1611, 'Nord-Est', 95),
(1612, 'Nord-Ouest', 95),
(1613, 'Ouest', 95),
(1614, 'Sud', 95),
(1615, 'Sud-Est', 95),
(1616, 'Heard and McDonald Islands', 96),
(1617, 'Atlantida', 97),
(1618, 'Choluteca', 97),
(1619, 'Colon', 97),
(1620, 'Comayagua', 97),
(1621, 'Copan', 97),
(1622, 'Cortes', 97),
(1623, 'Distrito Central', 97),
(1624, 'El Paraiso', 97),
(1625, 'Francisco Morazan', 97),
(1626, 'Gracias a Dios', 97),
(1627, 'Intibuca', 97),
(1628, 'Islas de la Bahia', 97),
(1629, 'La Paz', 97),
(1630, 'Lempira', 97),
(1631, 'Ocotepeque', 97),
(1632, 'Olancho', 97),
(1633, 'Santa Barbara', 97),
(1634, 'Valle', 97),
(1635, 'Yoro', 97),
(1636, 'Hong Kong', 98),
(1637, 'Bacs-Kiskun', 99),
(1638, 'Baranya', 99),
(1639, 'Bekes', 99),
(1640, 'Borsod-Abauj-Zemplen', 99),
(1641, 'Budapest', 99),
(1642, 'Csongrad', 99),
(1643, 'Fejer', 99),
(1644, 'Gyor-Moson-Sopron', 99),
(1645, 'Hajdu-Bihar', 99),
(1646, 'Heves', 99),
(1647, 'Jasz-Nagykun-Szolnok', 99),
(1648, 'Komarom-Esztergom', 99),
(1649, 'Nograd', 99),
(1650, 'Pest', 99),
(1651, 'Somogy', 99),
(1652, 'Szabolcs-Szatmar-Bereg', 99),
(1653, 'Tolna', 99),
(1654, 'Vas', 99),
(1655, 'Veszprem', 99),
(1656, 'Zala', 99),
(1657, 'Austurland', 100),
(1658, 'Gullbringusysla', 100),
(1659, 'Hofu borgarsva i', 100),
(1660, 'Nor urland eystra', 100),
(1661, 'Nor urland vestra', 100),
(1662, 'Su urland', 100),
(1663, 'Su urnes', 100),
(1664, 'Vestfir ir', 100),
(1665, 'Vesturland', 100),
(1666, 'Aceh', 102),
(1667, 'Bali', 102),
(1668, 'Bangka-Belitung', 102),
(1669, 'Banten', 102),
(1670, 'Bengkulu', 102),
(1671, 'Gandaria', 102),
(1672, 'Gorontalo', 102),
(1673, 'Jakarta', 102),
(1674, 'Jambi', 102),
(1675, 'Jawa Barat', 102),
(1676, 'Jawa Tengah', 102),
(1677, 'Jawa Timur', 102),
(1678, 'Kalimantan Barat', 102),
(1679, 'Kalimantan Selatan', 102),
(1680, 'Kalimantan Tengah', 102),
(1681, 'Kalimantan Timur', 102),
(1682, 'Kendal', 102),
(1683, 'Lampung', 102),
(1684, 'Maluku', 102),
(1685, 'Maluku Utara', 102),
(1686, 'Nusa Tenggara Barat', 102),
(1687, 'Nusa Tenggara Timur', 102),
(1688, 'Papua', 102),
(1689, 'Riau', 102),
(1690, 'Riau Kepulauan', 102),
(1691, 'Solo', 102),
(1692, 'Sulawesi Selatan', 102),
(1693, 'Sulawesi Tengah', 102),
(1694, 'Sulawesi Tenggara', 102),
(1695, 'Sulawesi Utara', 102),
(1696, 'Sumatera Barat', 102),
(1697, 'Sumatera Selatan', 102),
(1698, 'Sumatera Utara', 102),
(1699, 'Yogyakarta', 102),
(1700, 'Ardabil', 103),
(1701, 'Azarbayjan-e Bakhtari', 103),
(1702, 'Azarbayjan-e Khavari', 103),
(1703, 'Bushehr', 103),
(1704, 'Chahar Mahal-e Bakhtiari', 103),
(1705, 'Esfahan', 103),
(1706, 'Fars', 103),
(1707, 'Gilan', 103),
(1708, 'Golestan', 103),
(1709, 'Hamadan', 103),
(1710, 'Hormozgan', 103),
(1711, 'Ilam', 103),
(1712, 'Kerman', 103),
(1713, 'Kermanshah', 103),
(1714, 'Khorasan', 103),
(1715, 'Khuzestan', 103),
(1716, 'Kohgiluyeh-e Boyerahmad', 103),
(1717, 'Kordestan', 103),
(1718, 'Lorestan', 103),
(1719, 'Markazi', 103),
(1720, 'Mazandaran', 103),
(1721, 'Ostan-e Esfahan', 103),
(1722, 'Qazvin', 103),
(1723, 'Qom', 103),
(1724, 'Semnan', 103),
(1725, 'Sistan-e Baluchestan', 103),
(1726, 'Tehran', 103),
(1727, 'Yazd', 103),
(1728, 'Zanjan', 103),
(1729, 'Babil', 104),
(1730, 'Baghdad', 104),
(1731, 'Dahuk', 104),
(1732, 'Dhi Qar', 104),
(1733, 'Diyala', 104),
(1734, 'Erbil', 104),
(1735, 'Irbil', 104),
(1736, 'Karbala', 104),
(1737, 'Kurdistan', 104),
(1738, 'Maysan', 104),
(1739, 'Ninawa', 104),
(1740, 'Salah-ad-Din', 104),
(1741, 'Wasit', 104),
(1742, 'al-Anbar', 104),
(1743, 'al-Basrah', 104),
(1744, 'al-Muthanna', 104),
(1745, 'al-Qadisiyah', 104),
(1746, 'an-Najaf', 104),
(1747, 'as-Sulaymaniyah', 104),
(1748, 'at-Ta\'mim', 104),
(1749, 'Armagh', 105),
(1750, 'Carlow', 105),
(1751, 'Cavan', 105),
(1752, 'Clare', 105),
(1753, 'Cork', 105),
(1754, 'Donegal', 105),
(1755, 'Dublin', 105),
(1756, 'Galway', 105),
(1757, 'Kerry', 105),
(1758, 'Kildare', 105),
(1759, 'Kilkenny', 105),
(1760, 'Laois', 105),
(1761, 'Leinster', 105),
(1762, 'Leitrim', 105),
(1763, 'Limerick', 105),
(1764, 'Loch Garman', 105),
(1765, 'Longford', 105),
(1766, 'Louth', 105),
(1767, 'Mayo', 105),
(1768, 'Meath', 105),
(1769, 'Monaghan', 105),
(1770, 'Offaly', 105),
(1771, 'Roscommon', 105),
(1772, 'Sligo', 105),
(1773, 'Tipperary North Riding', 105),
(1774, 'Tipperary South Riding', 105),
(1775, 'Ulster', 105),
(1776, 'Waterford', 105),
(1777, 'Westmeath', 105),
(1778, 'Wexford', 105),
(1779, 'Wicklow', 105),
(1780, 'Beit Hanania', 106),
(1781, 'Ben Gurion Airport', 106),
(1782, 'Bethlehem', 106),
(1783, 'Caesarea', 106),
(1784, 'Centre', 106),
(1785, 'Gaza', 106),
(1786, 'Hadaron', 106),
(1787, 'Haifa District', 106),
(1788, 'Hamerkaz', 106),
(1789, 'Hazafon', 106),
(1790, 'Hebron', 106),
(1791, 'Jaffa', 106),
(1792, 'Jerusalem', 106),
(1793, 'Khefa', 106),
(1794, 'Kiryat Yam', 106),
(1795, 'Lower Galilee', 106),
(1796, 'Qalqilya', 106),
(1797, 'Talme Elazar', 106),
(1798, 'Tel Aviv', 106),
(1799, 'Tsafon', 106),
(1800, 'Umm El Fahem', 106),
(1801, 'Yerushalayim', 106),
(1802, 'Abruzzi', 107),
(1803, 'Abruzzo', 107),
(1804, 'Agrigento', 107),
(1805, 'Alessandria', 107),
(1806, 'Ancona', 107),
(1807, 'Arezzo', 107),
(1808, 'Ascoli Piceno', 107),
(1809, 'Asti', 107),
(1810, 'Avellino', 107),
(1811, 'Bari', 107),
(1812, 'Basilicata', 107),
(1813, 'Belluno', 107),
(1814, 'Benevento', 107),
(1815, 'Bergamo', 107),
(1816, 'Biella', 107),
(1817, 'Bologna', 107),
(1818, 'Bolzano', 107),
(1819, 'Brescia', 107),
(1820, 'Brindisi', 107),
(1821, 'Calabria', 107),
(1822, 'Campania', 107),
(1823, 'Cartoceto', 107),
(1824, 'Caserta', 107),
(1825, 'Catania', 107),
(1826, 'Chieti', 107),
(1827, 'Como', 107),
(1828, 'Cosenza', 107),
(1829, 'Cremona', 107),
(1830, 'Cuneo', 107),
(1831, 'Emilia-Romagna', 107),
(1832, 'Ferrara', 107),
(1833, 'Firenze', 107),
(1834, 'Florence', 107),
(1835, 'Forli-Cesena ', 107),
(1836, 'Friuli-Venezia Giulia', 107),
(1837, 'Frosinone', 107),
(1838, 'Genoa', 107),
(1839, 'Gorizia', 107),
(1840, 'L\'Aquila', 107),
(1841, 'Lazio', 107),
(1842, 'Lecce', 107),
(1843, 'Lecco', 107),
(1845, 'Liguria', 107),
(1846, 'Lodi', 107),
(1847, 'Lombardia', 107),
(1848, 'Lombardy', 107),
(1849, 'Macerata', 107),
(1850, 'Mantova', 107),
(1851, 'Marche', 107),
(1852, 'Messina', 107),
(1853, 'Milan', 107),
(1854, 'Modena', 107),
(1855, 'Molise', 107),
(1856, 'Molteno', 107),
(1857, 'Montenegro', 107),
(1858, 'Monza and Brianza', 107),
(1859, 'Naples', 107),
(1860, 'Novara', 107),
(1861, 'Padova', 107),
(1862, 'Parma', 107),
(1863, 'Pavia', 107),
(1864, 'Perugia', 107),
(1865, 'Pesaro-Urbino', 107),
(1866, 'Piacenza', 107),
(1867, 'Piedmont', 107),
(1868, 'Piemonte', 107),
(1869, 'Pisa', 107),
(1870, 'Pordenone', 107),
(1871, 'Potenza', 107),
(1872, 'Puglia', 107),
(1873, 'Reggio Emilia', 107),
(1874, 'Rimini', 107),
(1875, 'Roma', 107),
(1876, 'Salerno', 107),
(1877, 'Sardegna', 107),
(1878, 'Sassari', 107),
(1879, 'Savona', 107),
(1880, 'Sicilia', 107),
(1881, 'Siena', 107),
(1882, 'Sondrio', 107),
(1883, 'South Tyrol', 107),
(1884, 'Taranto', 107),
(1885, 'Teramo', 107),
(1886, 'Torino', 107),
(1887, 'Toscana', 107),
(1888, 'Trapani', 107),
(1889, 'Trentino-Alto Adige', 107),
(1890, 'Trento', 107),
(1891, 'Treviso', 107),
(1892, 'Udine', 107),
(1893, 'Umbria', 107),
(1894, 'Valle d\'Aosta', 107),
(1895, 'Varese', 107),
(1896, 'Veneto', 107),
(1897, 'Venezia', 107),
(1898, 'Verbano-Cusio-Ossola', 107),
(1899, 'Vercelli', 107),
(1900, 'Verona', 107),
(1901, 'Vicenza', 107),
(1902, 'Viterbo', 107),
(1903, 'Buxoro Viloyati', 108),
(1904, 'Clarendon', 108),
(1905, 'Hanover', 108),
(1906, 'Kingston', 108),
(1907, 'Manchester', 108),
(1908, 'Portland', 108),
(1909, 'Saint Andrews', 108),
(1910, 'Saint Ann', 108),
(1911, 'Saint Catherine', 108),
(1912, 'Saint Elizabeth', 108),
(1913, 'Saint James', 108),
(1914, 'Saint Mary', 108),
(1915, 'Saint Thomas', 108),
(1916, 'Trelawney', 108),
(1917, 'Westmoreland', 108),
(1918, 'Aichi', 109),
(1919, 'Akita', 109),
(1920, 'Aomori', 109),
(1921, 'Chiba', 109),
(1922, 'Ehime', 109),
(1923, 'Fukui', 109),
(1924, 'Fukuoka', 109),
(1925, 'Fukushima', 109),
(1926, 'Gifu', 109),
(1927, 'Gumma', 109),
(1928, 'Hiroshima', 109),
(1929, 'Hokkaido', 109),
(1930, 'Hyogo', 109),
(1931, 'Ibaraki', 109),
(1932, 'Ishikawa', 109),
(1933, 'Iwate', 109),
(1934, 'Kagawa', 109),
(1935, 'Kagoshima', 109),
(1936, 'Kanagawa', 109),
(1937, 'Kanto', 109),
(1938, 'Kochi', 109),
(1939, 'Kumamoto', 109),
(1940, 'Kyoto', 109),
(1941, 'Mie', 109),
(1942, 'Miyagi', 109),
(1943, 'Miyazaki', 109),
(1944, 'Nagano', 109),
(1945, 'Nagasaki', 109),
(1946, 'Nara', 109),
(1947, 'Niigata', 109),
(1948, 'Oita', 109),
(1949, 'Okayama', 109),
(1950, 'Okinawa', 109),
(1951, 'Osaka', 109),
(1952, 'Saga', 109),
(1953, 'Saitama', 109),
(1954, 'Shiga', 109),
(1955, 'Shimane', 109),
(1956, 'Shizuoka', 109),
(1957, 'Tochigi', 109),
(1958, 'Tokushima', 109),
(1959, 'Tokyo', 109),
(1960, 'Tottori', 109),
(1961, 'Toyama', 109),
(1962, 'Wakayama', 109),
(1963, 'Yamagata', 109),
(1964, 'Yamaguchi', 109),
(1965, 'Yamanashi', 109),
(1966, 'Grouville', 110),
(1967, 'Saint Brelade', 110),
(1968, 'Saint Clement', 110),
(1969, 'Saint Helier', 110),
(1970, 'Saint John', 110),
(1971, 'Saint Lawrence', 110),
(1972, 'Saint Martin', 110),
(1973, 'Saint Mary', 110),
(1974, 'Saint Peter', 110),
(1975, 'Saint Saviour', 110),
(1976, 'Trinity', 110),
(1977, '\'Ajlun', 111),
(1978, 'Amman', 111),
(1979, 'Irbid', 111),
(1980, 'Jarash', 111),
(1981, 'Ma\'an', 111),
(1982, 'Madaba', 111),
(1983, 'al-\'Aqabah', 111),
(1984, 'al-Balqa\'', 111),
(1985, 'al-Karak', 111),
(1986, 'al-Mafraq', 111),
(1987, 'at-Tafilah', 111),
(1988, 'az-Zarqa\'', 111),
(1989, 'Akmecet', 112),
(1990, 'Akmola', 112),
(1991, 'Aktobe', 112),
(1992, 'Almati', 112),
(1993, 'Atirau', 112),
(1994, 'Batis Kazakstan', 112),
(1995, 'Burlinsky Region', 112),
(1996, 'Karagandi', 112),
(1997, 'Kostanay', 112),
(1998, 'Mankistau', 112),
(1999, 'Ontustik Kazakstan', 112),
(2000, 'Pavlodar', 112),
(2001, 'Sigis Kazakstan', 112),
(2002, 'Soltustik Kazakstan', 112),
(2003, 'Taraz', 112),
(2004, 'Central', 113),
(2005, 'Coast', 113),
(2006, 'Eastern', 113),
(2007, 'Nairobi', 113),
(2008, 'North Eastern', 113),
(2009, 'Nyanza', 113),
(2010, 'Rift Valley', 113),
(2011, 'Western', 113),
(2012, 'Abaiang', 114),
(2013, 'Abemana', 114),
(2014, 'Aranuka', 114),
(2015, 'Arorae', 114),
(2016, 'Banaba', 114),
(2017, 'Beru', 114),
(2018, 'Butaritari', 114),
(2019, 'Kiritimati', 114),
(2020, 'Kuria', 114),
(2021, 'Maiana', 114),
(2022, 'Makin', 114),
(2023, 'Marakei', 114),
(2024, 'Nikunau', 114),
(2025, 'Nonouti', 114),
(2026, 'Onotoa', 114),
(2027, 'Phoenix Islands', 114),
(2028, 'Tabiteuea North', 114),
(2029, 'Tabiteuea South', 114),
(2030, 'Tabuaeran', 114),
(2031, 'Tamana', 114),
(2032, 'Tarawa North', 114),
(2033, 'Tarawa South', 114),
(2034, 'Teraina', 114),
(2035, 'Chagangdo', 115),
(2036, 'Hamgyeongbukto', 115),
(2037, 'Hamgyeongnamdo', 115),
(2038, 'Hwanghaebukto', 115),
(2039, 'Hwanghaenamdo', 115),
(2040, 'Kaeseong', 115),
(2041, 'Kangweon', 115),
(2042, 'Nampo', 115),
(2043, 'Pyeonganbukto', 115),
(2044, 'Pyeongannamdo', 115),
(2045, 'Pyeongyang', 115),
(2046, 'Yanggang', 115),
(2047, 'Busan', 116),
(2048, 'Cheju', 116),
(2049, 'Chollabuk', 116),
(2050, 'Chollanam', 116),
(2051, 'Chungbuk', 116),
(2052, 'Chungcheongbuk', 116),
(2053, 'Chungcheongnam', 116),
(2054, 'Chungnam', 116),
(2055, 'Daegu', 116),
(2056, 'Gangwon-do', 116),
(2057, 'Goyang-si', 116),
(2058, 'Gyeonggi-do', 116),
(2059, 'Gyeongsang ', 116),
(2060, 'Gyeongsangnam-do', 116),
(2061, 'Incheon', 116),
(2062, 'Jeju-Si', 116),
(2063, 'Jeonbuk', 116),
(2064, 'Kangweon', 116),
(2065, 'Kwangju', 116),
(2066, 'Kyeonggi', 116),
(2067, 'Kyeongsangbuk', 116),
(2068, 'Kyeongsangnam', 116),
(2069, 'Kyonggi-do', 116),
(2070, 'Kyungbuk-Do', 116),
(2071, 'Kyunggi-Do', 116),
(2072, 'Kyunggi-do', 116),
(2073, 'Pusan', 116),
(2074, 'Seoul', 116),
(2075, 'Sudogwon', 116),
(2076, 'Taegu', 116),
(2077, 'Taejeon', 116),
(2078, 'Taejon-gwangyoksi', 116),
(2079, 'Ulsan', 116),
(2080, 'Wonju', 116),
(2081, 'gwangyoksi', 116),
(2082, 'Al Asimah', 117),
(2083, 'Hawalli', 117),
(2084, 'Mishref', 117),
(2085, 'Qadesiya', 117),
(2086, 'Safat', 117),
(2087, 'Salmiya', 117),
(2088, 'al-Ahmadi', 117),
(2089, 'al-Farwaniyah', 117),
(2090, 'al-Jahra', 117),
(2091, 'al-Kuwayt', 117),
(2092, 'Batken', 118),
(2093, 'Bishkek', 118),
(2094, 'Chui', 118),
(2095, 'Issyk-Kul', 118),
(2096, 'Jalal-Abad', 118),
(2097, 'Naryn', 118),
(2098, 'Osh', 118),
(2099, 'Talas', 118),
(2100, 'Attopu', 119),
(2101, 'Bokeo', 119),
(2102, 'Bolikhamsay', 119),
(2103, 'Champasak', 119),
(2104, 'Houaphanh', 119),
(2105, 'Khammouane', 119),
(2106, 'Luang Nam Tha', 119),
(2107, 'Luang Prabang', 119),
(2108, 'Oudomxay', 119),
(2109, 'Phongsaly', 119),
(2110, 'Saravan', 119),
(2111, 'Savannakhet', 119),
(2112, 'Sekong', 119),
(2113, 'Viangchan Prefecture', 119),
(2114, 'Viangchan Province', 119),
(2115, 'Xaignabury', 119),
(2116, 'Xiang Khuang', 119),
(2117, 'Aizkraukles', 120),
(2118, 'Aluksnes', 120),
(2119, 'Balvu', 120),
(2120, 'Bauskas', 120),
(2121, 'Cesu', 120),
(2122, 'Daugavpils', 120),
(2123, 'Daugavpils City', 120),
(2124, 'Dobeles', 120),
(2125, 'Gulbenes', 120),
(2126, 'Jekabspils', 120),
(2127, 'Jelgava', 120),
(2128, 'Jelgavas', 120),
(2129, 'Jurmala City', 120),
(2130, 'Kraslavas', 120),
(2131, 'Kuldigas', 120),
(2132, 'Liepaja', 120),
(2133, 'Liepajas', 120),
(2134, 'Limbazhu', 120),
(2135, 'Ludzas', 120),
(2136, 'Madonas', 120),
(2137, 'Ogres', 120),
(2138, 'Preilu', 120),
(2139, 'Rezekne', 120),
(2140, 'Rezeknes', 120),
(2141, 'Riga', 120),
(2142, 'Rigas', 120),
(2143, 'Saldus', 120),
(2144, 'Talsu', 120),
(2145, 'Tukuma', 120),
(2146, 'Valkas', 120),
(2147, 'Valmieras', 120),
(2148, 'Ventspils', 120),
(2149, 'Ventspils City', 120),
(2150, 'Beirut', 121),
(2151, 'Jabal Lubnan', 121),
(2152, 'Mohafazat Liban-Nord', 121),
(2153, 'Mohafazat Mont-Liban', 121),
(2154, 'Sidon', 121),
(2155, 'al-Biqa', 121),
(2156, 'al-Janub', 121),
(2157, 'an-Nabatiyah', 121),
(2158, 'ash-Shamal', 121),
(2159, 'Berea', 122),
(2160, 'Butha-Buthe', 122),
(2161, 'Leribe', 122),
(2162, 'Mafeteng', 122),
(2163, 'Maseru', 122),
(2164, 'Mohale\'s Hoek', 122),
(2165, 'Mokhotlong', 122),
(2166, 'Qacha\'s Nek', 122),
(2167, 'Quthing', 122),
(2168, 'Thaba-Tseka', 122),
(2169, 'Bomi', 123),
(2170, 'Bong', 123),
(2171, 'Grand Bassa', 123),
(2172, 'Grand Cape Mount', 123),
(2173, 'Grand Gedeh', 123),
(2174, 'Loffa', 123),
(2175, 'Margibi', 123),
(2176, 'Maryland and Grand Kru', 123),
(2177, 'Montserrado', 123),
(2178, 'Nimba', 123),
(2179, 'Rivercess', 123),
(2180, 'Sinoe', 123),
(2181, 'Ajdabiya', 124),
(2182, 'Fezzan', 124),
(2183, 'Banghazi', 124),
(2184, 'Darnah', 124),
(2185, 'Ghadamis', 124),
(2186, 'Gharyan', 124),
(2187, 'Misratah', 124),
(2188, 'Murzuq', 124),
(2189, 'Sabha', 124),
(2190, 'Sawfajjin', 124),
(2191, 'Surt', 124),
(2192, 'Tarabulus', 124);
INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(2193, 'Tarhunah', 124),
(2194, 'Tripolitania', 124),
(2195, 'Tubruq', 124),
(2196, 'Yafran', 124),
(2197, 'Zlitan', 124),
(2198, 'al-\'Aziziyah', 124),
(2199, 'al-Fatih', 124),
(2200, 'al-Jabal al Akhdar', 124),
(2201, 'al-Jufrah', 124),
(2202, 'al-Khums', 124),
(2203, 'al-Kufrah', 124),
(2204, 'an-Nuqat al-Khams', 124),
(2205, 'ash-Shati\'', 124),
(2206, 'az-Zawiyah', 124),
(2207, 'Balzers', 125),
(2208, 'Eschen', 125),
(2209, 'Gamprin', 125),
(2210, 'Mauren', 125),
(2211, 'Planken', 125),
(2212, 'Ruggell', 125),
(2213, 'Schaan', 125),
(2214, 'Schellenberg', 125),
(2215, 'Triesen', 125),
(2216, 'Triesenberg', 125),
(2217, 'Vaduz', 125),
(2218, 'Alytaus', 126),
(2219, 'Anyksciai', 126),
(2220, 'Kauno', 126),
(2221, 'Klaipedos', 126),
(2222, 'Marijampoles', 126),
(2223, 'Panevezhio', 126),
(2224, 'Panevezys', 126),
(2225, 'Shiauliu', 126),
(2226, 'Taurages', 126),
(2227, 'Telshiu', 126),
(2228, 'Telsiai', 126),
(2229, 'Utenos', 126),
(2230, 'Vilniaus', 126),
(2231, 'Capellen', 127),
(2232, 'Clervaux', 127),
(2233, 'Diekirch', 127),
(2234, 'Echternach', 127),
(2235, 'Esch-sur-Alzette', 127),
(2236, 'Grevenmacher', 127),
(2237, 'Luxembourg', 127),
(2238, 'Mersch', 127),
(2239, 'Redange', 127),
(2240, 'Remich', 127),
(2241, 'Vianden', 127),
(2242, 'Wiltz', 127),
(2243, 'Macau', 128),
(2244, 'Berovo', 129),
(2245, 'Bitola', 129),
(2246, 'Brod', 129),
(2247, 'Debar', 129),
(2248, 'Delchevo', 129),
(2249, 'Demir Hisar', 129),
(2250, 'Gevgelija', 129),
(2251, 'Gostivar', 129),
(2252, 'Kavadarci', 129),
(2253, 'Kichevo', 129),
(2254, 'Kochani', 129),
(2255, 'Kratovo', 129),
(2256, 'Kriva Palanka', 129),
(2257, 'Krushevo', 129),
(2258, 'Kumanovo', 129),
(2259, 'Negotino', 129),
(2260, 'Ohrid', 129),
(2261, 'Prilep', 129),
(2262, 'Probishtip', 129),
(2263, 'Radovish', 129),
(2264, 'Resen', 129),
(2265, 'Shtip', 129),
(2266, 'Skopje', 129),
(2267, 'Struga', 129),
(2268, 'Strumica', 129),
(2269, 'Sveti Nikole', 129),
(2270, 'Tetovo', 129),
(2271, 'Valandovo', 129),
(2272, 'Veles', 129),
(2273, 'Vinica', 129),
(2274, 'Antananarivo', 130),
(2275, 'Antsiranana', 130),
(2276, 'Fianarantsoa', 130),
(2277, 'Mahajanga', 130),
(2278, 'Toamasina', 130),
(2279, 'Toliary', 130),
(2280, 'Balaka', 131),
(2281, 'Blantyre City', 131),
(2282, 'Chikwawa', 131),
(2283, 'Chiradzulu', 131),
(2284, 'Chitipa', 131),
(2285, 'Dedza', 131),
(2286, 'Dowa', 131),
(2287, 'Karonga', 131),
(2288, 'Kasungu', 131),
(2289, 'Lilongwe City', 131),
(2290, 'Machinga', 131),
(2291, 'Mangochi', 131),
(2292, 'Mchinji', 131),
(2293, 'Mulanje', 131),
(2294, 'Mwanza', 131),
(2295, 'Mzimba', 131),
(2296, 'Mzuzu City', 131),
(2297, 'Nkhata Bay', 131),
(2298, 'Nkhotakota', 131),
(2299, 'Nsanje', 131),
(2300, 'Ntcheu', 131),
(2301, 'Ntchisi', 131),
(2302, 'Phalombe', 131),
(2303, 'Rumphi', 131),
(2304, 'Salima', 131),
(2305, 'Thyolo', 131),
(2306, 'Zomba Municipality', 131),
(2307, 'Johor', 132),
(2308, 'Kedah', 132),
(2309, 'Kelantan', 132),
(2310, 'Kuala Lumpur', 132),
(2311, 'Labuan', 132),
(2312, 'Melaka', 132),
(2313, 'Negeri Johor', 132),
(2314, 'Negeri Sembilan', 132),
(2315, 'Pahang', 132),
(2316, 'Penang', 132),
(2317, 'Perak', 132),
(2318, 'Perlis', 132),
(2319, 'Pulau Pinang', 132),
(2320, 'Sabah', 132),
(2321, 'Sarawak', 132),
(2322, 'Selangor', 132),
(2323, 'Sembilan', 132),
(2324, 'Terengganu', 132),
(2325, 'Alif Alif', 133),
(2326, 'Alif Dhaal', 133),
(2327, 'Baa', 133),
(2328, 'Dhaal', 133),
(2329, 'Faaf', 133),
(2330, 'Gaaf Alif', 133),
(2331, 'Gaaf Dhaal', 133),
(2332, 'Ghaviyani', 133),
(2333, 'Haa Alif', 133),
(2334, 'Haa Dhaal', 133),
(2335, 'Kaaf', 133),
(2336, 'Laam', 133),
(2337, 'Lhaviyani', 133),
(2338, 'Male', 133),
(2339, 'Miim', 133),
(2340, 'Nuun', 133),
(2341, 'Raa', 133),
(2342, 'Shaviyani', 133),
(2343, 'Siin', 133),
(2344, 'Thaa', 133),
(2345, 'Vaav', 133),
(2346, 'Bamako', 134),
(2347, 'Gao', 134),
(2348, 'Kayes', 134),
(2349, 'Kidal', 134),
(2350, 'Koulikoro', 134),
(2351, 'Mopti', 134),
(2352, 'Segou', 134),
(2353, 'Sikasso', 134),
(2354, 'Tombouctou', 134),
(2355, 'Gozo and Comino', 135),
(2356, 'Inner Harbour', 135),
(2357, 'Northern', 135),
(2358, 'Outer Harbour', 135),
(2359, 'South Eastern', 135),
(2360, 'Valletta', 135),
(2361, 'Western', 135),
(2362, 'Castletown', 136),
(2363, 'Douglas', 136),
(2364, 'Laxey', 136),
(2365, 'Onchan', 136),
(2366, 'Peel', 136),
(2367, 'Port Erin', 136),
(2368, 'Port Saint Mary', 136),
(2369, 'Ramsey', 136),
(2370, 'Ailinlaplap', 137),
(2371, 'Ailuk', 137),
(2372, 'Arno', 137),
(2373, 'Aur', 137),
(2374, 'Bikini', 137),
(2375, 'Ebon', 137),
(2376, 'Enewetak', 137),
(2377, 'Jabat', 137),
(2378, 'Jaluit', 137),
(2379, 'Kili', 137),
(2380, 'Kwajalein', 137),
(2381, 'Lae', 137),
(2382, 'Lib', 137),
(2383, 'Likiep', 137),
(2384, 'Majuro', 137),
(2385, 'Maloelap', 137),
(2386, 'Mejit', 137),
(2387, 'Mili', 137),
(2388, 'Namorik', 137),
(2389, 'Namu', 137),
(2390, 'Rongelap', 137),
(2391, 'Ujae', 137),
(2392, 'Utrik', 137),
(2393, 'Wotho', 137),
(2394, 'Wotje', 137),
(2395, 'Fort-de-France', 138),
(2396, 'La Trinite', 138),
(2397, 'Le Marin', 138),
(2398, 'Saint-Pierre', 138),
(2399, 'Adrar', 139),
(2400, 'Assaba', 139),
(2401, 'Brakna', 139),
(2402, 'Dhakhlat Nawadibu', 139),
(2403, 'Hudh-al-Gharbi', 139),
(2404, 'Hudh-ash-Sharqi', 139),
(2405, 'Inshiri', 139),
(2406, 'Nawakshut', 139),
(2407, 'Qidimagha', 139),
(2408, 'Qurqul', 139),
(2409, 'Taqant', 139),
(2410, 'Tiris Zammur', 139),
(2411, 'Trarza', 139),
(2412, 'Black River', 140),
(2413, 'Eau Coulee', 140),
(2414, 'Flacq', 140),
(2415, 'Floreal', 140),
(2416, 'Grand Port', 140),
(2417, 'Moka', 140),
(2418, 'Pamplempousses', 140),
(2419, 'Plaines Wilhelm', 140),
(2420, 'Port Louis', 140),
(2421, 'Riviere du Rempart', 140),
(2422, 'Rodrigues', 140),
(2423, 'Rose Hill', 140),
(2424, 'Savanne', 140),
(2425, 'Mayotte', 141),
(2426, 'Pamanzi', 141),
(2427, 'Aguascalientes', 142),
(2428, 'Baja California', 142),
(2429, 'Baja California Sur', 142),
(2430, 'Campeche', 142),
(2431, 'Chiapas', 142),
(2432, 'Chihuahua', 142),
(2433, 'Coahuila', 142),
(2434, 'Colima', 142),
(2435, 'Distrito Federal', 142),
(2436, 'Durango', 142),
(2437, 'Estado de Mexico', 142),
(2438, 'Guanajuato', 142),
(2439, 'Guerrero', 142),
(2440, 'Hidalgo', 142),
(2441, 'Jalisco', 142),
(2442, 'Mexico', 142),
(2443, 'Michoacan', 142),
(2444, 'Morelos', 142),
(2445, 'Nayarit', 142),
(2446, 'Nuevo Leon', 142),
(2447, 'Oaxaca', 142),
(2448, 'Puebla', 142),
(2449, 'Queretaro', 142),
(2450, 'Quintana Roo', 142),
(2451, 'San Luis Potosi', 142),
(2452, 'Sinaloa', 142),
(2453, 'Sonora', 142),
(2454, 'Tabasco', 142),
(2455, 'Tamaulipas', 142),
(2456, 'Tlaxcala', 142),
(2457, 'Veracruz', 142),
(2458, 'Yucatan', 142),
(2459, 'Zacatecas', 142),
(2460, 'Chuuk', 143),
(2461, 'Kusaie', 143),
(2462, 'Pohnpei', 143),
(2463, 'Yap', 143),
(2464, 'Balti', 144),
(2465, 'Cahul', 144),
(2466, 'Chisinau', 144),
(2467, 'Chisinau Oras', 144),
(2468, 'Edinet', 144),
(2469, 'Gagauzia', 144),
(2470, 'Lapusna', 144),
(2471, 'Orhei', 144),
(2472, 'Soroca', 144),
(2473, 'Taraclia', 144),
(2474, 'Tighina', 144),
(2475, 'Transnistria', 144),
(2476, 'Ungheni', 144),
(2477, 'Fontvieille', 145),
(2478, 'La Condamine', 145),
(2479, 'Monaco-Ville', 145),
(2480, 'Monte Carlo', 145),
(2481, 'Arhangaj', 146),
(2482, 'Bajan-Olgij', 146),
(2483, 'Bajanhongor', 146),
(2484, 'Bulgan', 146),
(2485, 'Darhan-Uul', 146),
(2486, 'Dornod', 146),
(2487, 'Dornogovi', 146),
(2488, 'Dundgovi', 146),
(2489, 'Govi-Altaj', 146),
(2490, 'Govisumber', 146),
(2491, 'Hentij', 146),
(2492, 'Hovd', 146),
(2493, 'Hovsgol', 146),
(2494, 'Omnogovi', 146),
(2495, 'Orhon', 146),
(2496, 'Ovorhangaj', 146),
(2497, 'Selenge', 146),
(2498, 'Suhbaatar', 146),
(2499, 'Tov', 146),
(2500, 'Ulaanbaatar', 146),
(2501, 'Uvs', 146),
(2502, 'Zavhan', 146),
(2503, 'Montserrat', 147),
(2504, 'Agadir', 148),
(2505, 'Casablanca', 148),
(2506, 'Chaouia-Ouardigha', 148),
(2507, 'Doukkala-Abda', 148),
(2508, 'Fes-Boulemane', 148),
(2509, 'Gharb-Chrarda-Beni Hssen', 148),
(2510, 'Guelmim', 148),
(2511, 'Kenitra', 148),
(2512, 'Marrakech-Tensift-Al Haouz', 148),
(2513, 'Meknes-Tafilalet', 148),
(2514, 'Oriental', 148),
(2515, 'Oujda', 148),
(2516, 'Province de Tanger', 148),
(2517, 'Rabat-Sale-Zammour-Zaer', 148),
(2518, 'Sala Al Jadida', 148),
(2519, 'Settat', 148),
(2520, 'Souss Massa-Draa', 148),
(2521, 'Tadla-Azilal', 148),
(2522, 'Tangier-Tetouan', 148),
(2523, 'Taza-Al Hoceima-Taounate', 148),
(2524, 'Wilaya de Casablanca', 148),
(2525, 'Wilaya de Rabat-Sale', 148),
(2526, 'Cabo Delgado', 149),
(2527, 'Gaza', 149),
(2528, 'Inhambane', 149),
(2529, 'Manica', 149),
(2530, 'Maputo', 149),
(2531, 'Maputo Provincia', 149),
(2532, 'Nampula', 149),
(2533, 'Niassa', 149),
(2534, 'Sofala', 149),
(2535, 'Tete', 149),
(2536, 'Zambezia', 149),
(2537, 'Ayeyarwady', 150),
(2538, 'Bago', 150),
(2539, 'Chin', 150),
(2540, 'Kachin', 150),
(2541, 'Kayah', 150),
(2542, 'Kayin', 150),
(2543, 'Magway', 150),
(2544, 'Mandalay', 150),
(2545, 'Mon', 150),
(2546, 'Nay Pyi Taw', 150),
(2547, 'Rakhine', 150),
(2548, 'Sagaing', 150),
(2549, 'Shan', 150),
(2550, 'Tanintharyi', 150),
(2551, 'Yangon', 150),
(2552, 'Caprivi', 151),
(2553, 'Erongo', 151),
(2554, 'Hardap', 151),
(2555, 'Karas', 151),
(2556, 'Kavango', 151),
(2557, 'Khomas', 151),
(2558, 'Kunene', 151),
(2559, 'Ohangwena', 151),
(2560, 'Omaheke', 151),
(2561, 'Omusati', 151),
(2562, 'Oshana', 151),
(2563, 'Oshikoto', 151),
(2564, 'Otjozondjupa', 151),
(2565, 'Yaren', 152),
(2566, 'Bagmati', 153),
(2567, 'Bheri', 153),
(2568, 'Dhawalagiri', 153),
(2569, 'Gandaki', 153),
(2570, 'Janakpur', 153),
(2571, 'Karnali', 153),
(2572, 'Koshi', 153),
(2573, 'Lumbini', 153),
(2574, 'Mahakali', 153),
(2575, 'Mechi', 153),
(2576, 'Narayani', 153),
(2577, 'Rapti', 153),
(2578, 'Sagarmatha', 153),
(2579, 'Seti', 153),
(2580, 'Bonaire', 154),
(2581, 'Curacao', 154),
(2582, 'Saba', 154),
(2583, 'Sint Eustatius', 154),
(2584, 'Sint Maarten', 154),
(2585, 'Amsterdam', 155),
(2586, 'Benelux', 155),
(2587, 'Drenthe', 155),
(2588, 'Flevoland', 155),
(2589, 'Friesland', 155),
(2590, 'Gelderland', 155),
(2591, 'Groningen', 155),
(2592, 'Limburg', 155),
(2593, 'Noord-Brabant', 155),
(2594, 'Noord-Holland', 155),
(2595, 'Overijssel', 155),
(2596, 'South Holland', 155),
(2597, 'Utrecht', 155),
(2598, 'Zeeland', 155),
(2599, 'Zuid-Holland', 155),
(2600, 'Iles', 156),
(2601, 'Nord', 156),
(2602, 'Sud', 156),
(2603, 'Area Outside Region', 157),
(2604, 'Auckland', 157),
(2605, 'Bay of Plenty', 157),
(2606, 'Canterbury', 157),
(2607, 'Christchurch', 157),
(2608, 'Gisborne', 157),
(2609, 'Hawke\'s Bay', 157),
(2610, 'Manawatu-Wanganui', 157),
(2611, 'Marlborough', 157),
(2612, 'Nelson', 157),
(2613, 'Northland', 157),
(2614, 'Otago', 157),
(2615, 'Rodney', 157),
(2616, 'Southland', 157),
(2617, 'Taranaki', 157),
(2618, 'Tasman', 157),
(2619, 'Waikato', 157),
(2620, 'Wellington', 157),
(2621, 'West Coast', 157),
(2622, 'Atlantico Norte', 158),
(2623, 'Atlantico Sur', 158),
(2624, 'Boaco', 158),
(2625, 'Carazo', 158),
(2626, 'Chinandega', 158),
(2627, 'Chontales', 158),
(2628, 'Esteli', 158),
(2629, 'Granada', 158),
(2630, 'Jinotega', 158),
(2631, 'Leon', 158),
(2632, 'Madriz', 158),
(2633, 'Managua', 158),
(2634, 'Masaya', 158),
(2635, 'Matagalpa', 158),
(2636, 'Nueva Segovia', 158),
(2637, 'Rio San Juan', 158),
(2638, 'Rivas', 158),
(2639, 'Agadez', 159),
(2640, 'Diffa', 159),
(2641, 'Dosso', 159),
(2642, 'Maradi', 159),
(2643, 'Niamey', 159),
(2644, 'Tahoua', 159),
(2645, 'Tillabery', 159),
(2646, 'Zinder', 159),
(2647, 'Abia', 160),
(2648, 'Abuja Federal Capital Territor', 160),
(2649, 'Adamawa', 160),
(2650, 'Akwa Ibom', 160),
(2651, 'Anambra', 160),
(2652, 'Bauchi', 160),
(2653, 'Bayelsa', 160),
(2654, 'Benue', 160),
(2655, 'Borno', 160),
(2656, 'Cross River', 160),
(2657, 'Delta', 160),
(2658, 'Ebonyi', 160),
(2659, 'Edo', 160),
(2660, 'Ekiti', 160),
(2661, 'Enugu', 160),
(2662, 'Gombe', 160),
(2663, 'Imo', 160),
(2664, 'Jigawa', 160),
(2665, 'Kaduna', 160),
(2666, 'Kano', 160),
(2667, 'Katsina', 160),
(2668, 'Kebbi', 160),
(2669, 'Kogi', 160),
(2670, 'Kwara', 160),
(2671, 'Lagos', 160),
(2672, 'Nassarawa', 160),
(2673, 'Niger', 160),
(2674, 'Ogun', 160),
(2675, 'Ondo', 160),
(2676, 'Osun', 160),
(2677, 'Oyo', 160),
(2678, 'Plateau', 160),
(2679, 'Rivers', 160),
(2680, 'Sokoto', 160),
(2681, 'Taraba', 160),
(2682, 'Yobe', 160),
(2683, 'Zamfara', 160),
(2684, 'Niue', 161),
(2685, 'Norfolk Island', 162),
(2686, 'Northern Islands', 163),
(2687, 'Rota', 163),
(2688, 'Saipan', 163),
(2689, 'Tinian', 163),
(2690, 'Akershus', 164),
(2691, 'Aust Agder', 164),
(2692, 'Bergen', 164),
(2693, 'Buskerud', 164),
(2694, 'Finnmark', 164),
(2695, 'Hedmark', 164),
(2696, 'Hordaland', 164),
(2697, 'Moere og Romsdal', 164),
(2698, 'Nord Trondelag', 164),
(2699, 'Nordland', 164),
(2700, 'Oestfold', 164),
(2701, 'Oppland', 164),
(2702, 'Oslo', 164),
(2703, 'Rogaland', 164),
(2704, 'Soer Troendelag', 164),
(2705, 'Sogn og Fjordane', 164),
(2706, 'Stavern', 164),
(2707, 'Sykkylven', 164),
(2708, 'Telemark', 164),
(2709, 'Troms', 164),
(2710, 'Vest Agder', 164),
(2711, 'Vestfold', 164),
(2712, 'ÃƒÂ˜stfold', 164),
(2713, 'Al Buraimi', 165),
(2714, 'Dhufar', 165),
(2715, 'Masqat', 165),
(2716, 'Musandam', 165),
(2717, 'Rusayl', 165),
(2718, 'Wadi Kabir', 165),
(2719, 'ad-Dakhiliyah', 165),
(2720, 'adh-Dhahirah', 165),
(2721, 'al-Batinah', 165),
(2722, 'ash-Sharqiyah', 165),
(2723, 'Baluchistan', 166),
(2724, 'Federal Capital Area', 166),
(2725, 'Federally administered Tribal ', 166),
(2726, 'North-West Frontier', 166),
(2727, 'Northern Areas', 166),
(2728, 'Punjab', 166),
(2729, 'Sind', 166),
(2730, 'Aimeliik', 167),
(2731, 'Airai', 167),
(2732, 'Angaur', 167),
(2733, 'Hatobohei', 167),
(2734, 'Kayangel', 167),
(2735, 'Koror', 167),
(2736, 'Melekeok', 167),
(2737, 'Ngaraard', 167),
(2738, 'Ngardmau', 167),
(2739, 'Ngaremlengui', 167),
(2740, 'Ngatpang', 167),
(2741, 'Ngchesar', 167),
(2742, 'Ngerchelong', 167),
(2743, 'Ngiwal', 167),
(2744, 'Peleliu', 167),
(2745, 'Sonsorol', 167),
(2746, 'Ariha', 168),
(2747, 'Bayt Lahm', 168),
(2748, 'Bethlehem', 168),
(2749, 'Dayr-al-Balah', 168),
(2750, 'Ghazzah', 168),
(2751, 'Ghazzah ash-Shamaliyah', 168),
(2752, 'Janin', 168),
(2753, 'Khan Yunis', 168),
(2754, 'Nabulus', 168),
(2755, 'Qalqilyah', 168),
(2756, 'Rafah', 168),
(2757, 'Ram Allah wal-Birah', 168),
(2758, 'Salfit', 168),
(2759, 'Tubas', 168),
(2760, 'Tulkarm', 168),
(2761, 'al-Khalil', 168),
(2762, 'al-Quds', 168),
(2763, 'Bocas del Toro', 169),
(2764, 'Chiriqui', 169),
(2765, 'Cocle', 169),
(2766, 'Colon', 169),
(2767, 'Darien', 169),
(2768, 'Embera', 169),
(2769, 'Herrera', 169),
(2770, 'Kuna Yala', 169),
(2771, 'Los Santos', 169),
(2772, 'Ngobe Bugle', 169),
(2773, 'Panama', 169),
(2774, 'Veraguas', 169),
(2775, 'East New Britain', 170),
(2776, 'East Sepik', 170),
(2777, 'Eastern Highlands', 170),
(2778, 'Enga', 170),
(2779, 'Fly River', 170),
(2780, 'Gulf', 170),
(2781, 'Madang', 170),
(2782, 'Manus', 170),
(2783, 'Milne Bay', 170),
(2784, 'Morobe', 170),
(2785, 'National Capital District', 170),
(2786, 'New Ireland', 170),
(2787, 'North Solomons', 170),
(2788, 'Oro', 170),
(2789, 'Sandaun', 170),
(2790, 'Simbu', 170),
(2791, 'Southern Highlands', 170),
(2792, 'West New Britain', 170),
(2793, 'Western Highlands', 170),
(2794, 'Alto Paraguay', 171),
(2795, 'Alto Parana', 171),
(2796, 'Amambay', 171),
(2797, 'Asuncion', 171),
(2798, 'Boqueron', 171),
(2799, 'Caaguazu', 171),
(2800, 'Caazapa', 171),
(2801, 'Canendiyu', 171),
(2802, 'Central', 171),
(2803, 'Concepcion', 171),
(2804, 'Cordillera', 171),
(2805, 'Guaira', 171),
(2806, 'Itapua', 171),
(2807, 'Misiones', 171),
(2808, 'Neembucu', 171),
(2809, 'Paraguari', 171),
(2810, 'Presidente Hayes', 171),
(2811, 'San Pedro', 171),
(2812, 'Amazonas', 172),
(2813, 'Ancash', 172),
(2814, 'Apurimac', 172),
(2815, 'Arequipa', 172),
(2816, 'Ayacucho', 172),
(2817, 'Cajamarca', 172),
(2818, 'Cusco', 172),
(2819, 'Huancavelica', 172),
(2820, 'Huanuco', 172),
(2821, 'Ica', 172),
(2822, 'Junin', 172),
(2823, 'La Libertad', 172),
(2824, 'Lambayeque', 172),
(2825, 'Lima y Callao', 172),
(2826, 'Loreto', 172),
(2827, 'Madre de Dios', 172),
(2828, 'Moquegua', 172),
(2829, 'Pasco', 172),
(2830, 'Piura', 172),
(2831, 'Puno', 172),
(2832, 'San Martin', 172),
(2833, 'Tacna', 172),
(2834, 'Tumbes', 172),
(2835, 'Ucayali', 172),
(2836, 'Batangas', 173),
(2837, 'Bicol', 173),
(2838, 'Bulacan', 173),
(2839, 'Cagayan', 173),
(2840, 'Caraga', 173),
(2841, 'Central Luzon', 173),
(2842, 'Central Mindanao', 173),
(2843, 'Central Visayas', 173),
(2844, 'Cordillera', 173),
(2845, 'Davao', 173),
(2846, 'Eastern Visayas', 173),
(2847, 'Greater Metropolitan Area', 173),
(2848, 'Ilocos', 173),
(2849, 'Laguna', 173),
(2850, 'Luzon', 173),
(2851, 'Mactan', 173),
(2852, 'Metropolitan Manila Area', 173),
(2853, 'Muslim Mindanao', 173),
(2854, 'Northern Mindanao', 173),
(2855, 'Southern Mindanao', 173),
(2856, 'Southern Tagalog', 173),
(2857, 'Western Mindanao', 173),
(2858, 'Western Visayas', 173),
(2859, 'Pitcairn Island', 174),
(2860, 'Biale Blota', 175),
(2861, 'Dobroszyce', 175),
(2862, 'Dolnoslaskie', 175),
(2863, 'Dziekanow Lesny', 175),
(2864, 'Hopowo', 175),
(2865, 'Kartuzy', 175),
(2866, 'Koscian', 175),
(2867, 'Krakow', 175),
(2868, 'Kujawsko-Pomorskie', 175),
(2869, 'Lodzkie', 175),
(2870, 'Lubelskie', 175),
(2871, 'Lubuskie', 175),
(2872, 'Malomice', 175),
(2873, 'Malopolskie', 175),
(2874, 'Mazowieckie', 175),
(2875, 'Mirkow', 175),
(2876, 'Opolskie', 175),
(2877, 'Ostrowiec', 175),
(2878, 'Podkarpackie', 175),
(2879, 'Podlaskie', 175),
(2880, 'Polska', 175),
(2881, 'Pomorskie', 175),
(2882, 'Poznan', 175),
(2883, 'Pruszkow', 175),
(2884, 'Rymanowska', 175),
(2885, 'Rzeszow', 175),
(2886, 'Slaskie', 175),
(2887, 'Stare Pole', 175),
(2888, 'Swietokrzyskie', 175),
(2889, 'Warminsko-Mazurskie', 175),
(2890, 'Warsaw', 175),
(2891, 'Wejherowo', 175),
(2892, 'Wielkopolskie', 175),
(2893, 'Wroclaw', 175),
(2894, 'Zachodnio-Pomorskie', 175),
(2895, 'Zukowo', 175),
(2896, 'Abrantes', 176),
(2897, 'Acores', 176),
(2898, 'Alentejo', 176),
(2899, 'Algarve', 176),
(2900, 'Braga', 176),
(2901, 'Centro', 176),
(2902, 'Distrito de Leiria', 176),
(2903, 'Distrito de Viana do Castelo', 176),
(2904, 'Distrito de Vila Real', 176),
(2905, 'Distrito do Porto', 176),
(2906, 'Lisboa e Vale do Tejo', 176),
(2907, 'Madeira', 176),
(2908, 'Norte', 176),
(2909, 'Paivas', 176),
(2910, 'Arecibo', 177),
(2911, 'Bayamon', 177),
(2912, 'Carolina', 177),
(2913, 'Florida', 177),
(2914, 'Guayama', 177),
(2915, 'Humacao', 177),
(2916, 'Mayaguez-Aguadilla', 177),
(2917, 'Ponce', 177),
(2918, 'Salinas', 177),
(2919, 'San Juan', 177),
(2920, 'Doha', 178),
(2921, 'Jarian-al-Batnah', 178),
(2922, 'Umm Salal', 178),
(2923, 'ad-Dawhah', 178),
(2924, 'al-Ghuwayriyah', 178),
(2925, 'al-Jumayliyah', 178),
(2926, 'al-Khawr', 178),
(2927, 'al-Wakrah', 178),
(2928, 'ar-Rayyan', 178),
(2929, 'ash-Shamal', 178),
(2930, 'Saint-Benoit', 179),
(2931, 'Saint-Denis', 179),
(2932, 'Saint-Paul', 179),
(2933, 'Saint-Pierre', 179),
(2934, 'Alba', 180),
(2935, 'Arad', 180),
(2936, 'Arges', 180),
(2937, 'Bacau', 180),
(2938, 'Bihor', 180),
(2939, 'Bistrita-Nasaud', 180),
(2940, 'Botosani', 180),
(2941, 'Braila', 180),
(2942, 'Brasov', 180),
(2943, 'Bucuresti', 180),
(2944, 'Buzau', 180),
(2945, 'Calarasi', 180),
(2946, 'Caras-Severin', 180),
(2947, 'Cluj', 180),
(2948, 'Constanta', 180),
(2949, 'Covasna', 180),
(2950, 'Dambovita', 180),
(2951, 'Dolj', 180),
(2952, 'Galati', 180),
(2953, 'Giurgiu', 180),
(2954, 'Gorj', 180),
(2955, 'Harghita', 180),
(2956, 'Hunedoara', 180),
(2957, 'Ialomita', 180),
(2958, 'Iasi', 180),
(2959, 'Ilfov', 180),
(2960, 'Maramures', 180),
(2961, 'Mehedinti', 180),
(2962, 'Mures', 180),
(2963, 'Neamt', 180),
(2964, 'Olt', 180),
(2965, 'Prahova', 180),
(2966, 'Salaj', 180),
(2967, 'Satu Mare', 180),
(2968, 'Sibiu', 180),
(2969, 'Sondelor', 180),
(2970, 'Suceava', 180),
(2971, 'Teleorman', 180),
(2972, 'Timis', 180),
(2973, 'Tulcea', 180),
(2974, 'Valcea', 180),
(2975, 'Vaslui', 180),
(2976, 'Vrancea', 180),
(2977, 'Adygeja', 181),
(2978, 'Aga', 181),
(2979, 'Alanija', 181),
(2980, 'Altaj', 181),
(2981, 'Amur', 181),
(2982, 'Arhangelsk', 181),
(2983, 'Astrahan', 181),
(2984, 'Bashkortostan', 181),
(2985, 'Belgorod', 181),
(2986, 'Brjansk', 181),
(2987, 'Burjatija', 181),
(2988, 'Chechenija', 181),
(2989, 'Cheljabinsk', 181),
(2990, 'Chita', 181),
(2991, 'Chukotka', 181),
(2992, 'Chuvashija', 181),
(2993, 'Dagestan', 181),
(2994, 'Evenkija', 181),
(2995, 'Gorno-Altaj', 181),
(2996, 'Habarovsk', 181),
(2997, 'Hakasija', 181),
(2998, 'Hanty-Mansija', 181),
(2999, 'Ingusetija', 181),
(3000, 'Irkutsk', 181),
(3001, 'Ivanovo', 181),
(3002, 'Jamalo-Nenets', 181),
(3003, 'Jaroslavl', 181),
(3004, 'Jevrej', 181),
(3005, 'Kabardino-Balkarija', 181),
(3006, 'Kaliningrad', 181),
(3007, 'Kalmykija', 181),
(3008, 'Kaluga', 181),
(3009, 'Kamchatka', 181),
(3010, 'Karachaj-Cherkessija', 181),
(3011, 'Karelija', 181),
(3012, 'Kemerovo', 181),
(3013, 'Khabarovskiy Kray', 181),
(3014, 'Kirov', 181),
(3015, 'Komi', 181),
(3016, 'Komi-Permjakija', 181),
(3017, 'Korjakija', 181),
(3018, 'Kostroma', 181),
(3019, 'Krasnodar', 181),
(3020, 'Krasnojarsk', 181),
(3021, 'Krasnoyarskiy Kray', 181),
(3022, 'Kurgan', 181),
(3023, 'Kursk', 181),
(3024, 'Leningrad', 181),
(3025, 'Lipeck', 181),
(3026, 'Magadan', 181),
(3027, 'Marij El', 181),
(3028, 'Mordovija', 181),
(3029, 'Moscow', 181),
(3030, 'Moskovskaja Oblast', 181),
(3031, 'Moskovskaya Oblast', 181),
(3032, 'Moskva', 181),
(3033, 'Murmansk', 181),
(3034, 'Nenets', 181),
(3035, 'Nizhnij Novgorod', 181),
(3036, 'Novgorod', 181),
(3037, 'Novokusnezk', 181),
(3038, 'Novosibirsk', 181),
(3039, 'Omsk', 181),
(3040, 'Orenburg', 181),
(3041, 'Orjol', 181),
(3042, 'Penza', 181),
(3043, 'Perm', 181),
(3044, 'Primorje', 181),
(3045, 'Pskov', 181),
(3046, 'Pskovskaya Oblast', 181),
(3047, 'Rjazan', 181),
(3048, 'Rostov', 181),
(3049, 'Saha', 181),
(3050, 'Sahalin', 181),
(3051, 'Samara', 181),
(3052, 'Samarskaya', 181),
(3053, 'Sankt-Peterburg', 181),
(3054, 'Saratov', 181),
(3055, 'Smolensk', 181),
(3056, 'Stavropol', 181),
(3057, 'Sverdlovsk', 181),
(3058, 'Tajmyrija', 181),
(3059, 'Tambov', 181),
(3060, 'Tatarstan', 181),
(3061, 'Tjumen', 181),
(3062, 'Tomsk', 181),
(3063, 'Tula', 181),
(3064, 'Tver', 181),
(3065, 'Tyva', 181),
(3066, 'Udmurtija', 181),
(3067, 'Uljanovsk', 181),
(3068, 'Ulyanovskaya Oblast', 181),
(3069, 'Ust-Orda', 181),
(3070, 'Vladimir', 181),
(3071, 'Volgograd', 181),
(3072, 'Vologda', 181),
(3073, 'Voronezh', 181),
(3074, 'Butare', 182),
(3075, 'Byumba', 182),
(3076, 'Cyangugu', 182),
(3077, 'Gikongoro', 182),
(3078, 'Gisenyi', 182),
(3079, 'Gitarama', 182),
(3080, 'Kibungo', 182),
(3081, 'Kibuye', 182),
(3082, 'Kigali-ngali', 182),
(3083, 'Ruhengeri', 182),
(3084, 'Ascension', 183),
(3085, 'Gough Island', 183),
(3086, 'Saint Helena', 183),
(3087, 'Tristan da Cunha', 183),
(3088, 'Christ Church Nichola Town', 184),
(3089, 'Saint Anne Sandy Point', 184),
(3090, 'Saint George Basseterre', 184),
(3091, 'Saint George Gingerland', 184),
(3092, 'Saint James Windward', 184),
(3093, 'Saint John Capesterre', 184),
(3094, 'Saint John Figtree', 184),
(3095, 'Saint Mary Cayon', 184),
(3096, 'Saint Paul Capesterre', 184),
(3097, 'Saint Paul Charlestown', 184),
(3098, 'Saint Peter Basseterre', 184),
(3099, 'Saint Thomas Lowland', 184),
(3100, 'Saint Thomas Middle Island', 184),
(3101, 'Trinity Palmetto Point', 184),
(3102, 'Anse-la-Raye', 185),
(3103, 'Canaries', 185),
(3104, 'Castries', 185),
(3105, 'Choiseul', 185),
(3106, 'Dennery', 185),
(3107, 'Gros Inlet', 185),
(3108, 'Laborie', 185),
(3109, 'Micoud', 185),
(3110, 'Soufriere', 185),
(3111, 'Vieux Fort', 185),
(3112, 'Miquelon-Langlade', 186),
(3113, 'Saint-Pierre', 186),
(3114, 'Charlotte', 187),
(3115, 'Grenadines', 187),
(3116, 'Saint Andrew', 187),
(3117, 'Saint David', 187),
(3118, 'Saint George', 187),
(3119, 'Saint Patrick', 187),
(3120, 'A\'ana', 188),
(3121, 'Aiga-i-le-Tai', 188),
(3122, 'Atua', 188),
(3123, 'Fa\'asaleleaga', 188),
(3124, 'Gaga\'emauga', 188),
(3125, 'Gagaifomauga', 188),
(3126, 'Palauli', 188),
(3127, 'Satupa\'itea', 188),
(3128, 'Tuamasaga', 188),
(3129, 'Va\'a-o-Fonoti', 188),
(3130, 'Vaisigano', 188),
(3131, 'Acquaviva', 189),
(3132, 'Borgo Maggiore', 189),
(3133, 'Chiesanuova', 189),
(3134, 'Domagnano', 189),
(3135, 'Faetano', 189),
(3136, 'Fiorentino', 189),
(3137, 'Montegiardino', 189),
(3138, 'San Marino', 189),
(3139, 'Serravalle', 189),
(3140, 'Agua Grande', 190),
(3141, 'Cantagalo', 190),
(3142, 'Lemba', 190),
(3143, 'Lobata', 190),
(3144, 'Me-Zochi', 190),
(3145, 'Pague', 190),
(3146, 'Al Khobar', 191),
(3147, 'Aseer', 191),
(3148, 'Ash Sharqiyah', 191),
(3149, 'Asir', 191),
(3150, 'Central Province', 191),
(3151, 'Eastern Province', 191),
(3152, 'Ha\'il', 191),
(3153, 'Jawf', 191),
(3154, 'Jizan', 191),
(3155, 'Makkah', 191),
(3156, 'Najran', 191),
(3157, 'Qasim', 191),
(3158, 'Tabuk', 191),
(3159, 'Western Province', 191),
(3160, 'al-Bahah', 191),
(3161, 'al-Hudud-ash-Shamaliyah', 191),
(3162, 'al-Madinah', 191),
(3163, 'ar-Riyad', 191),
(3164, 'Dakar', 192),
(3165, 'Diourbel', 192),
(3166, 'Fatick', 192),
(3167, 'Kaolack', 192),
(3168, 'Kolda', 192),
(3169, 'Louga', 192),
(3170, 'Saint-Louis', 192),
(3171, 'Tambacounda', 192),
(3172, 'Thies', 192),
(3173, 'Ziguinchor', 192),
(3174, 'Central Serbia', 193),
(3175, 'Kosovo and Metohija', 193),
(3176, 'Vojvodina', 193),
(3177, 'Anse Boileau', 194),
(3178, 'Anse Royale', 194),
(3179, 'Cascade', 194),
(3180, 'Takamaka', 194),
(3181, 'Victoria', 194),
(3182, 'Eastern', 195),
(3183, 'Northern', 195),
(3184, 'Southern', 195),
(3185, 'Western', 195),
(3186, 'Singapore', 196),
(3187, 'Banskobystricky', 197),
(3188, 'Bratislavsky', 197),
(3189, 'Kosicky', 197),
(3190, 'Nitriansky', 197),
(3191, 'Presovsky', 197),
(3192, 'Trenciansky', 197),
(3193, 'Trnavsky', 197),
(3194, 'Zilinsky', 197),
(3195, 'Benedikt', 198),
(3196, 'Gorenjska', 198),
(3197, 'Gorishka', 198),
(3198, 'Jugovzhodna Slovenija', 198),
(3199, 'Koroshka', 198),
(3200, 'Notranjsko-krashka', 198),
(3201, 'Obalno-krashka', 198),
(3202, 'Obcina Domzale', 198),
(3203, 'Obcina Vitanje', 198),
(3204, 'Osrednjeslovenska', 198),
(3205, 'Podravska', 198),
(3206, 'Pomurska', 198),
(3207, 'Savinjska', 198),
(3208, 'Slovenian Littoral', 198),
(3209, 'Spodnjeposavska', 198),
(3210, 'Zasavska', 198),
(3211, 'Pitcairn', 199),
(3212, 'Central', 200),
(3213, 'Choiseul', 200),
(3214, 'Guadalcanal', 200),
(3215, 'Isabel', 200),
(3216, 'Makira and Ulawa', 200),
(3217, 'Malaita', 200),
(3218, 'Rennell and Bellona', 200),
(3219, 'Temotu', 200),
(3220, 'Western', 200),
(3221, 'Awdal', 201),
(3222, 'Bakol', 201),
(3223, 'Banadir', 201),
(3224, 'Bari', 201),
(3225, 'Bay', 201),
(3226, 'Galgudug', 201),
(3227, 'Gedo', 201),
(3228, 'Hiran', 201),
(3229, 'Jubbada Hose', 201),
(3230, 'Jubbadha Dexe', 201),
(3231, 'Mudug', 201),
(3232, 'Nugal', 201),
(3233, 'Sanag', 201),
(3234, 'Shabellaha Dhexe', 201),
(3235, 'Shabellaha Hose', 201),
(3236, 'Togdher', 201),
(3237, 'Woqoyi Galbed', 201),
(3238, 'Eastern Cape', 202),
(3239, 'Free State', 202),
(3240, 'Gauteng', 202),
(3241, 'Kempton Park', 202),
(3242, 'Kramerville', 202),
(3243, 'KwaZulu Natal', 202),
(3244, 'Limpopo', 202),
(3245, 'Mpumalanga', 202),
(3246, 'North West', 202),
(3247, 'Northern Cape', 202),
(3248, 'Parow', 202),
(3249, 'Table View', 202),
(3250, 'Umtentweni', 202),
(3251, 'Western Cape', 202),
(3252, 'South Georgia', 203),
(3253, 'Central Equatoria', 204),
(3254, 'A Coruna', 205),
(3255, 'Alacant', 205),
(3256, 'Alava', 205),
(3257, 'Albacete', 205),
(3258, 'Almeria', 205),
(3260, 'Asturias', 205),
(3261, 'Avila', 205),
(3262, 'Badajoz', 205),
(3263, 'Balears', 205),
(3264, 'Barcelona', 205),
(3267, 'Burgos', 205),
(3268, 'Caceres', 205),
(3269, 'Cadiz', 205),
(3270, 'Cantabria', 205),
(3271, 'Castello', 205),
(3273, 'Ceuta', 205),
(3274, 'Ciudad Real', 205),
(3281, 'Cordoba', 205),
(3282, 'Cuenca', 205),
(3284, 'Girona', 205),
(3285, 'Granada', 205),
(3286, 'Guadalajara', 205),
(3287, 'Guipuzcoa', 205),
(3288, 'Huelva', 205),
(3289, 'Huesca', 205),
(3290, 'Jaen', 205),
(3291, 'La Rioja', 205),
(3292, 'Las Palmas', 205),
(3293, 'Leon', 205),
(3295, 'Lleida', 205),
(3296, 'Lugo', 205),
(3297, 'Madrid', 205),
(3298, 'Malaga', 205),
(3299, 'Melilla', 205),
(3300, 'Murcia', 205),
(3301, 'Navarra', 205),
(3302, 'Ourense', 205),
(3303, 'Pais Vasco', 205),
(3304, 'Palencia', 205),
(3305, 'Pontevedra', 205),
(3306, 'Salamanca', 205),
(3308, 'Segovia', 205),
(3309, 'Sevilla', 205),
(3310, 'Soria', 205),
(3311, 'Tarragona', 205),
(3312, 'Santa Cruz de Tenerife', 205),
(3313, 'Teruel', 205),
(3314, 'Toledo', 205),
(3315, 'Valencia', 205),
(3316, 'Valladolid', 205),
(3317, 'Vizcaya', 205),
(3318, 'Zamora', 205),
(3319, 'Zaragoza', 205),
(3320, 'Amparai', 206),
(3321, 'Anuradhapuraya', 206),
(3322, 'Badulla', 206),
(3323, 'Boralesgamuwa', 206),
(3324, 'Colombo', 206),
(3325, 'Galla', 206),
(3326, 'Gampaha', 206),
(3327, 'Hambantota', 206),
(3328, 'Kalatura', 206),
(3329, 'Kegalla', 206),
(3330, 'Kilinochchi', 206),
(3331, 'Kurunegala', 206),
(3332, 'Madakalpuwa', 206),
(3333, 'Maha Nuwara', 206),
(3334, 'Malwana', 206),
(3335, 'Mannarama', 206),
(3336, 'Matale', 206),
(3337, 'Matara', 206),
(3338, 'Monaragala', 206),
(3339, 'Mullaitivu', 206),
(3340, 'North Eastern Province', 206),
(3341, 'North Western Province', 206),
(3342, 'Nuwara Eliya', 206),
(3343, 'Polonnaruwa', 206),
(3344, 'Puttalama', 206),
(3345, 'Ratnapuraya', 206),
(3346, 'Southern Province', 206),
(3347, 'Tirikunamalaya', 206),
(3348, 'Tuscany', 206),
(3349, 'Vavuniyawa', 206),
(3350, 'Western Province', 206),
(3351, 'Yapanaya', 206),
(3352, 'kadawatha', 206),
(3353, 'A\'ali-an-Nil', 207),
(3354, 'Bahr-al-Jabal', 207),
(3355, 'Central Equatoria', 207),
(3356, 'Gharb Bahr-al-Ghazal', 207),
(3357, 'Gharb Darfur', 207),
(3358, 'Gharb Kurdufan', 207),
(3359, 'Gharb-al-Istiwa\'iyah', 207),
(3360, 'Janub Darfur', 207),
(3361, 'Janub Kurdufan', 207),
(3362, 'Junqali', 207),
(3363, 'Kassala', 207),
(3364, 'Nahr-an-Nil', 207),
(3365, 'Shamal Bahr-al-Ghazal', 207),
(3366, 'Shamal Darfur', 207),
(3367, 'Shamal Kurdufan', 207),
(3368, 'Sharq-al-Istiwa\'iyah', 207),
(3369, 'Sinnar', 207),
(3370, 'Warab', 207),
(3371, 'Wilayat al Khartum', 207),
(3372, 'al-Bahr-al-Ahmar', 207),
(3373, 'al-Buhayrat', 207),
(3374, 'al-Jazirah', 207),
(3375, 'al-Khartum', 207),
(3376, 'al-Qadarif', 207),
(3377, 'al-Wahdah', 207),
(3378, 'an-Nil-al-Abyad', 207),
(3379, 'an-Nil-al-Azraq', 207),
(3380, 'ash-Shamaliyah', 207),
(3381, 'Brokopondo', 208),
(3382, 'Commewijne', 208),
(3383, 'Coronie', 208),
(3384, 'Marowijne', 208),
(3385, 'Nickerie', 208),
(3386, 'Para', 208),
(3387, 'Paramaribo', 208),
(3388, 'Saramacca', 208),
(3389, 'Wanica', 208),
(3390, 'Svalbard', 209),
(3391, 'Hhohho', 210),
(3392, 'Lubombo', 210),
(3393, 'Manzini', 210),
(3394, 'Shiselweni', 210),
(3395, 'Alvsborgs Lan', 211),
(3396, 'Angermanland', 211),
(3397, 'Blekinge', 211),
(3398, 'Bohuslan', 211),
(3399, 'Dalarna', 211),
(3400, 'Gavleborg', 211),
(3401, 'Gaza', 211),
(3402, 'Gotland', 211),
(3403, 'Halland', 211),
(3404, 'Jamtland', 211),
(3405, 'Jonkoping', 211),
(3406, 'Kalmar', 211),
(3407, 'Kristianstads', 211),
(3408, 'Kronoberg', 211),
(3409, 'Norrbotten', 211),
(3410, 'Orebro', 211),
(3411, 'Ostergotland', 211),
(3412, 'Saltsjo-Boo', 211),
(3413, 'Skane', 211),
(3414, 'Smaland', 211),
(3415, 'Sodermanland', 211),
(3416, 'Stockholm', 211),
(3417, 'Uppsala', 211),
(3418, 'Varmland', 211),
(3419, 'Vasterbotten', 211),
(3420, 'Vastergotland', 211),
(3421, 'Vasternorrland', 211),
(3422, 'Vastmanland', 211),
(3423, 'Vastra Gotaland', 211),
(3424, 'Aargau', 212),
(3425, 'Appenzell Inner-Rhoden', 212),
(3426, 'Appenzell-Ausser Rhoden', 212),
(3427, 'Basel-Landschaft', 212),
(3428, 'Basel-Stadt', 212),
(3429, 'Bern', 212),
(3430, 'Canton Ticino', 212),
(3431, 'Fribourg', 212),
(3432, 'Geneve', 212),
(3433, 'Glarus', 212),
(3434, 'Graubunden', 212),
(3435, 'Heerbrugg', 212),
(3436, 'Jura', 212),
(3437, 'Kanton Aargau', 212),
(3438, 'Luzern', 212),
(3439, 'Morbio Inferiore', 212),
(3440, 'Muhen', 212),
(3441, 'Neuchatel', 212),
(3442, 'Nidwalden', 212),
(3443, 'Obwalden', 212),
(3444, 'Sankt Gallen', 212),
(3445, 'Schaffhausen', 212),
(3446, 'Schwyz', 212),
(3447, 'Solothurn', 212),
(3448, 'Thurgau', 212),
(3449, 'Ticino', 212),
(3450, 'Uri', 212),
(3451, 'Valais', 212),
(3452, 'Vaud', 212),
(3453, 'Vauffelin', 212),
(3454, 'Zug', 212),
(3455, 'Zurich', 212),
(3456, 'Aleppo', 213),
(3457, 'Dar\'a', 213),
(3458, 'Dayr-az-Zawr', 213),
(3459, 'Dimashq', 213),
(3460, 'Halab', 213),
(3461, 'Hamah', 213),
(3462, 'Hims', 213),
(3463, 'Idlib', 213),
(3464, 'Madinat Dimashq', 213),
(3465, 'Tartus', 213),
(3466, 'al-Hasakah', 213),
(3467, 'al-Ladhiqiyah', 213),
(3468, 'al-Qunaytirah', 213),
(3469, 'ar-Raqqah', 213),
(3470, 'as-Suwayda', 213),
(3471, 'Changhua County', 214),
(3472, 'Chiayi County', 214),
(3473, 'Chiayi City', 214),
(3474, 'Taipei City', 214),
(3475, 'Hsinchu County', 214),
(3476, 'Hsinchu City', 214),
(3477, 'Hualien County', 214),
(3480, 'Kaohsiung City', 214),
(3481, 'Keelung City', 214),
(3482, 'Kinmen County', 214),
(3483, 'Miaoli County', 214),
(3484, 'Nantou County', 214),
(3486, 'Penghu County', 214),
(3487, 'Pingtung County', 214),
(3488, 'Taichung City', 214),
(3492, 'Tainan City', 214),
(3493, 'New Taipei City', 214),
(3495, 'Taitung County', 214),
(3496, 'Taoyuan City', 214),
(3497, 'Yilan County', 214),
(3498, 'YunLin County', 214),
(3500, 'Dushanbe', 215),
(3501, 'Gorno-Badakhshan', 215),
(3502, 'Karotegin', 215),
(3503, 'Khatlon', 215),
(3504, 'Sughd', 215),
(3505, 'Arusha', 216),
(3506, 'Dar es Salaam', 216),
(3507, 'Dodoma', 216),
(3508, 'Iringa', 216),
(3509, 'Kagera', 216),
(3510, 'Kigoma', 216),
(3511, 'Kilimanjaro', 216),
(3512, 'Lindi', 216),
(3513, 'Mara', 216),
(3514, 'Mbeya', 216),
(3515, 'Morogoro', 216),
(3516, 'Mtwara', 216),
(3517, 'Mwanza', 216),
(3518, 'Pwani', 216),
(3519, 'Rukwa', 216),
(3520, 'Ruvuma', 216),
(3521, 'Shinyanga', 216),
(3522, 'Singida', 216),
(3523, 'Tabora', 216),
(3524, 'Tanga', 216),
(3525, 'Zanzibar and Pemba', 216),
(3526, 'Amnat Charoen', 217),
(3527, 'Ang Thong', 217),
(3528, 'Bangkok', 217),
(3529, 'Buri Ram', 217),
(3530, 'Chachoengsao', 217),
(3531, 'Chai Nat', 217),
(3532, 'Chaiyaphum', 217),
(3533, 'Changwat Chaiyaphum', 217),
(3534, 'Chanthaburi', 217),
(3535, 'Chiang Mai', 217),
(3536, 'Chiang Rai', 217),
(3537, 'Chon Buri', 217),
(3538, 'Chumphon', 217),
(3539, 'Kalasin', 217),
(3540, 'Kamphaeng Phet', 217),
(3541, 'Kanchanaburi', 217),
(3542, 'Khon Kaen', 217),
(3543, 'Krabi', 217),
(3544, 'Krung Thep', 217),
(3545, 'Lampang', 217),
(3546, 'Lamphun', 217),
(3547, 'Loei', 217),
(3548, 'Lop Buri', 217),
(3549, 'Mae Hong Son', 217),
(3550, 'Maha Sarakham', 217),
(3551, 'Mukdahan', 217),
(3552, 'Nakhon Nayok', 217),
(3553, 'Nakhon Pathom', 217),
(3554, 'Nakhon Phanom', 217),
(3555, 'Nakhon Ratchasima', 217),
(3556, 'Nakhon Sawan', 217),
(3557, 'Nakhon Si Thammarat', 217),
(3558, 'Nan', 217),
(3559, 'Narathiwat', 217),
(3560, 'Nong Bua Lam Phu', 217),
(3561, 'Nong Khai', 217),
(3562, 'Nonthaburi', 217),
(3563, 'Pathum Thani', 217),
(3564, 'Pattani', 217),
(3565, 'Phangnga', 217),
(3566, 'Phatthalung', 217),
(3567, 'Phayao', 217),
(3568, 'Phetchabun', 217),
(3569, 'Phetchaburi', 217),
(3570, 'Phichit', 217),
(3571, 'Phitsanulok', 217),
(3572, 'Phra Nakhon Si Ayutthaya', 217),
(3573, 'Phrae', 217),
(3574, 'Phuket', 217),
(3575, 'Prachin Buri', 217),
(3576, 'Prachuap Khiri Khan', 217),
(3577, 'Ranong', 217),
(3578, 'Ratchaburi', 217),
(3579, 'Rayong', 217),
(3580, 'Roi Et', 217),
(3581, 'Sa Kaeo', 217),
(3582, 'Sakon Nakhon', 217),
(3583, 'Samut Prakan', 217),
(3584, 'Samut Sakhon', 217),
(3585, 'Samut Songkhran', 217),
(3586, 'Saraburi', 217),
(3587, 'Satun', 217),
(3588, 'Si Sa Ket', 217),
(3589, 'Sing Buri', 217),
(3590, 'Songkhla', 217),
(3591, 'Sukhothai', 217),
(3592, 'Suphan Buri', 217),
(3593, 'Surat Thani', 217),
(3594, 'Surin', 217),
(3595, 'Tak', 217),
(3596, 'Trang', 217),
(3597, 'Trat', 217),
(3598, 'Ubon Ratchathani', 217),
(3599, 'Udon Thani', 217),
(3600, 'Uthai Thani', 217),
(3601, 'Uttaradit', 217),
(3602, 'Yala', 217),
(3603, 'Yasothon', 217),
(3604, 'Centre', 218),
(3605, 'Kara', 218),
(3606, 'Maritime', 218),
(3607, 'Plateaux', 218),
(3608, 'Savanes', 218),
(3609, 'Atafu', 219),
(3610, 'Fakaofo', 219),
(3611, 'Nukunonu', 219),
(3612, 'Eua', 220),
(3613, 'Ha\'apai', 220),
(3614, 'Niuas', 220),
(3615, 'Tongatapu', 220),
(3616, 'Vava\'u', 220),
(3617, 'Arima-Tunapuna-Piarco', 221),
(3618, 'Caroni', 221),
(3619, 'Chaguanas', 221),
(3620, 'Couva-Tabaquite-Talparo', 221),
(3621, 'Diego Martin', 221),
(3622, 'Glencoe', 221),
(3623, 'Penal Debe', 221),
(3624, 'Point Fortin', 221),
(3625, 'Port of Spain', 221),
(3626, 'Princes Town', 221),
(3627, 'Saint George', 221),
(3628, 'San Fernando', 221),
(3629, 'San Juan', 221),
(3630, 'Sangre Grande', 221),
(3631, 'Siparia', 221),
(3632, 'Tobago', 221),
(3633, 'Aryanah', 222),
(3634, 'Bajah', 222),
(3635, 'Bin \'Arus', 222),
(3636, 'Binzart', 222),
(3637, 'Gouvernorat de Ariana', 222),
(3638, 'Gouvernorat de Nabeul', 222),
(3639, 'Gouvernorat de Sousse', 222),
(3640, 'Hammamet Yasmine', 222),
(3641, 'Jundubah', 222),
(3642, 'Madaniyin', 222),
(3643, 'Manubah', 222),
(3644, 'Monastir', 222),
(3645, 'Nabul', 222),
(3646, 'Qabis', 222),
(3647, 'Qafsah', 222),
(3648, 'Qibili', 222),
(3649, 'Safaqis', 222),
(3650, 'Sfax', 222),
(3651, 'Sidi Bu Zayd', 222),
(3652, 'Silyanah', 222),
(3653, 'Susah', 222),
(3654, 'Tatawin', 222),
(3655, 'Tawzar', 222),
(3656, 'Tunis', 222),
(3657, 'Zaghwan', 222),
(3658, 'al-Kaf', 222),
(3659, 'al-Mahdiyah', 222),
(3660, 'al-Munastir', 222),
(3661, 'al-Qasrayn', 222),
(3662, 'al-Qayrawan', 222),
(3663, 'Adana', 223),
(3664, 'Adiyaman', 223),
(3665, 'Afyon', 223),
(3666, 'Agri', 223),
(3667, 'Aksaray', 223),
(3668, 'Amasya', 223),
(3669, 'Ankara', 223),
(3670, 'Antalya', 223),
(3671, 'Ardahan', 223),
(3672, 'Artvin', 223),
(3673, 'Aydin', 223),
(3674, 'Balikesir', 223),
(3675, 'Bartin', 223),
(3676, 'Batman', 223),
(3677, 'Bayburt', 223),
(3678, 'Bilecik', 223),
(3679, 'Bingol', 223),
(3680, 'Bitlis', 223),
(3681, 'Bolu', 223),
(3682, 'Burdur', 223),
(3683, 'Bursa', 223),
(3684, 'Canakkale', 223),
(3685, 'Cankiri', 223),
(3686, 'Corum', 223),
(3687, 'Denizli', 223),
(3688, 'Diyarbakir', 223),
(3689, 'Duzce', 223),
(3690, 'Edirne', 223),
(3691, 'Elazig', 223),
(3692, 'Erzincan', 223),
(3693, 'Erzurum', 223),
(3694, 'Eskisehir', 223),
(3695, 'Gaziantep', 223),
(3696, 'Giresun', 223),
(3697, 'Gumushane', 223),
(3698, 'Hakkari', 223),
(3699, 'Hatay', 223),
(3700, 'Icel', 223),
(3701, 'Igdir', 223),
(3702, 'Isparta', 223),
(3703, 'Istanbul', 223),
(3704, 'Izmir', 223),
(3705, 'Kahramanmaras', 223),
(3706, 'Karabuk', 223),
(3707, 'Karaman', 223),
(3708, 'Kars', 223),
(3709, 'Karsiyaka', 223),
(3710, 'Kastamonu', 223),
(3711, 'Kayseri', 223),
(3712, 'Kilis', 223),
(3713, 'Kirikkale', 223),
(3714, 'Kirklareli', 223),
(3715, 'Kirsehir', 223),
(3716, 'Kocaeli', 223),
(3717, 'Konya', 223),
(3718, 'Kutahya', 223),
(3719, 'Lefkosa', 223),
(3720, 'Malatya', 223),
(3721, 'Manisa', 223),
(3722, 'Mardin', 223),
(3723, 'Mugla', 223),
(3724, 'Mus', 223),
(3725, 'Nevsehir', 223),
(3726, 'Nigde', 223),
(3727, 'Ordu', 223),
(3728, 'Osmaniye', 223),
(3729, 'Rize', 223),
(3730, 'Sakarya', 223),
(3731, 'Samsun', 223),
(3732, 'Sanliurfa', 223),
(3733, 'Siirt', 223),
(3734, 'Sinop', 223),
(3735, 'Sirnak', 223),
(3736, 'Sivas', 223),
(3737, 'Tekirdag', 223),
(3738, 'Tokat', 223),
(3739, 'Trabzon', 223),
(3740, 'Tunceli', 223),
(3741, 'Usak', 223),
(3742, 'Van', 223),
(3743, 'Yalova', 223),
(3744, 'Yozgat', 223),
(3745, 'Zonguldak', 223),
(3746, 'Ahal', 224),
(3747, 'Asgabat', 224),
(3748, 'Balkan', 224),
(3749, 'Dasoguz', 224),
(3750, 'Lebap', 224),
(3751, 'Mari', 224),
(3752, 'Grand Turk', 225),
(3753, 'South Caicos and East Caicos', 225),
(3754, 'Funafuti', 226),
(3755, 'Nanumanga', 226),
(3756, 'Nanumea', 226),
(3757, 'Niutao', 226),
(3758, 'Nui', 226),
(3759, 'Nukufetau', 226),
(3760, 'Nukulaelae', 226),
(3761, 'Vaitupu', 226),
(3762, 'Central', 227),
(3763, 'Eastern', 227),
(3764, 'Northern', 227),
(3765, 'Western', 227),
(3766, 'Cherkas\'ka', 228),
(3767, 'Chernihivs\'ka', 228),
(3768, 'Chernivets\'ka', 228),
(3769, 'Crimea', 228),
(3770, 'Dnipropetrovska', 228),
(3771, 'Donets\'ka', 228),
(3772, 'Ivano-Frankivs\'ka', 228),
(3773, 'Kharkiv', 228),
(3774, 'Kharkov', 228),
(3775, 'Khersonska', 228),
(3776, 'Khmel\'nyts\'ka', 228),
(3777, 'Kirovohrad', 228),
(3778, 'Krym', 228),
(3779, 'Kyyiv', 228),
(3780, 'Kyyivs\'ka', 228),
(3781, 'L\'vivs\'ka', 228),
(3782, 'Luhans\'ka', 228),
(3783, 'Mykolayivs\'ka', 228),
(3784, 'Odes\'ka', 228),
(3785, 'Odessa', 228),
(3786, 'Poltavs\'ka', 228),
(3787, 'Rivnens\'ka', 228),
(3788, 'Sevastopol\'', 228),
(3789, 'Sums\'ka', 228),
(3790, 'Ternopil\'s\'ka', 228),
(3791, 'Volyns\'ka', 228),
(3792, 'Vynnyts\'ka', 228),
(3793, 'Zakarpats\'ka', 228),
(3794, 'Zaporizhia', 228),
(3795, 'Zhytomyrs\'ka', 228),
(3796, 'Abu Zabi', 229),
(3797, 'Ajman', 229),
(3798, 'Dubai', 229),
(3799, 'Ras al-Khaymah', 229),
(3800, 'Sharjah', 229),
(3801, 'Sharjha', 229),
(3802, 'Umm al Qaywayn', 229),
(3803, 'al-Fujayrah', 229),
(3804, 'ash-Shariqah', 229),
(3805, 'Aberdeen', 230),
(3806, 'Aberdeenshire', 230),
(3807, 'Argyll', 230),
(3808, 'Armagh', 230),
(3809, 'Bedfordshire', 230),
(3810, 'Belfast', 230),
(3811, 'Berkshire', 230),
(3812, 'Birmingham', 230),
(3813, 'Brechin', 230),
(3814, 'Bridgnorth', 230),
(3815, 'Bristol', 230),
(3816, 'Buckinghamshire', 230),
(3817, 'Cambridge', 230),
(3818, 'Cambridgeshire', 230),
(3819, 'Channel Islands', 230),
(3820, 'Cheshire', 230),
(3821, 'Cleveland', 230),
(3822, 'Co Fermanagh', 230),
(3823, 'Conwy', 230),
(3824, 'Cornwall', 230),
(3825, 'Coventry', 230),
(3826, 'Craven Arms', 230),
(3827, 'Cumbria', 230),
(3828, 'Denbighshire', 230),
(3829, 'Derby', 230),
(3830, 'Derbyshire', 230),
(3831, 'Devon', 230),
(3832, 'Dial Code Dungannon', 230),
(3833, 'Didcot', 230),
(3834, 'Dorset', 230),
(3835, 'Dunbartonshire', 230),
(3836, 'Durham', 230),
(3837, 'East Dunbartonshire', 230),
(3838, 'East Lothian', 230),
(3839, 'East Midlands', 230),
(3840, 'East Sussex', 230),
(3841, 'East Yorkshire', 230),
(3842, 'England', 230),
(3843, 'Essex', 230),
(3844, 'Fermanagh', 230),
(3845, 'Fife', 230),
(3846, 'Flintshire', 230),
(3847, 'Fulham', 230),
(3848, 'Gainsborough', 230),
(3849, 'Glocestershire', 230),
(3850, 'Gwent', 230),
(3851, 'Hampshire', 230),
(3852, 'Hants', 230),
(3853, 'Herefordshire', 230),
(3854, 'Hertfordshire', 230),
(3855, 'Ireland', 230),
(3856, 'Isle Of Man', 230),
(3857, 'Isle of Wight', 230),
(3858, 'Kenford', 230),
(3859, 'Kent', 230),
(3860, 'Kilmarnock', 230),
(3861, 'Lanarkshire', 230),
(3862, 'Lancashire', 230),
(3863, 'Leicestershire', 230),
(3864, 'Lincolnshire', 230),
(3865, 'Llanymynech', 230),
(3866, 'London', 230),
(3867, 'Ludlow', 230),
(3868, 'Manchester', 230),
(3869, 'Mayfair', 230),
(3870, 'Merseyside', 230),
(3871, 'Mid Glamorgan', 230),
(3872, 'Middlesex', 230),
(3873, 'Mildenhall', 230),
(3874, 'Monmouthshire', 230),
(3875, 'Newton Stewart', 230),
(3876, 'Norfolk', 230),
(3877, 'North Humberside', 230),
(3878, 'North Yorkshire', 230),
(3879, 'Northamptonshire', 230),
(3880, 'Northants', 230),
(3881, 'Northern Ireland', 230),
(3882, 'Northumberland', 230),
(3883, 'Nottinghamshire', 230),
(3884, 'Oxford', 230),
(3885, 'Powys', 230),
(3886, 'Roos-shire', 230),
(3887, 'SUSSEX', 230),
(3888, 'Sark', 230),
(3889, 'Scotland', 230),
(3890, 'Scottish Borders', 230),
(3891, 'Shropshire', 230),
(3892, 'Somerset', 230),
(3893, 'South Glamorgan', 230),
(3894, 'South Wales', 230),
(3895, 'South Yorkshire', 230),
(3896, 'Southwell', 230),
(3897, 'Staffordshire', 230),
(3898, 'Strabane', 230),
(3899, 'Suffolk', 230),
(3900, 'Surrey', 230),
(3901, 'Sussex', 230),
(3902, 'Twickenham', 230),
(3903, 'Tyne and Wear', 230),
(3904, 'Tyrone', 230),
(3905, 'Utah', 230),
(3906, 'Wales', 230),
(3907, 'Warwickshire', 230),
(3908, 'West Lothian', 230),
(3909, 'West Midlands', 230),
(3910, 'West Sussex', 230),
(3911, 'West Yorkshire', 230),
(3912, 'Whissendine', 230),
(3913, 'Wiltshire', 230),
(3914, 'Wokingham', 230),
(3915, 'Worcestershire', 230),
(3916, 'Wrexham', 230),
(3917, 'Wurttemberg', 230),
(3918, 'Yorkshire', 230),
(3919, 'Alabama', 231),
(3920, 'Alaska', 231),
(3921, 'Arizona', 231),
(3922, 'Arkansas', 231),
(3923, 'Byram', 231),
(3924, 'California', 231),
(3925, 'Cokato', 231),
(3926, 'Colorado', 231),
(3927, 'Connecticut', 231),
(3928, 'Delaware', 231),
(3929, 'District of Columbia', 231),
(3930, 'Florida', 231),
(3931, 'Georgia', 231),
(3932, 'Hawaii', 231),
(3933, 'Idaho', 231),
(3934, 'Illinois', 231),
(3935, 'Indiana', 231),
(3936, 'Iowa', 231),
(3937, 'Kansas', 231),
(3938, 'Kentucky', 231),
(3939, 'Louisiana', 231),
(3940, 'Lowa', 231),
(3941, 'Maine', 231),
(3942, 'Maryland', 231),
(3943, 'Massachusetts', 231),
(3944, 'Medfield', 231),
(3945, 'Michigan', 231),
(3946, 'Minnesota', 231),
(3947, 'Mississippi', 231),
(3948, 'Missouri', 231),
(3949, 'Montana', 231),
(3950, 'Nebraska', 231),
(3951, 'Nevada', 231),
(3952, 'New Hampshire', 231),
(3953, 'New Jersey', 231),
(3954, 'New Jersy', 231),
(3955, 'New Mexico', 231),
(3956, 'New York', 231),
(3957, 'North Carolina', 231),
(3958, 'North Dakota', 231),
(3959, 'Ohio', 231),
(3960, 'Oklahoma', 231),
(3961, 'Ontario', 231),
(3962, 'Oregon', 231),
(3963, 'Pennsylvania', 231),
(3964, 'Ramey', 231),
(3965, 'Rhode Island', 231),
(3966, 'South Carolina', 231),
(3967, 'South Dakota', 231),
(3968, 'Sublimity', 231),
(3969, 'Tennessee', 231),
(3970, 'Texas', 231),
(3971, 'Trimble', 231),
(3972, 'Utah', 231),
(3973, 'Vermont', 231),
(3974, 'Virginia', 231),
(3975, 'Washington', 231),
(3976, 'West Virginia', 231),
(3977, 'Wisconsin', 231),
(3978, 'Wyoming', 231),
(3979, 'United States Minor Outlying I', 232),
(3980, 'Artigas', 233),
(3981, 'Canelones', 233),
(3982, 'Cerro Largo', 233),
(3983, 'Colonia', 233),
(3984, 'Durazno', 233),
(3985, 'FLorida', 233),
(3986, 'Flores', 233),
(3987, 'Lavalleja', 233),
(3988, 'Maldonado', 233),
(3989, 'Montevideo', 233),
(3990, 'Paysandu', 233),
(3991, 'Rio Negro', 233),
(3992, 'Rivera', 233),
(3993, 'Rocha', 233),
(3994, 'Salto', 233),
(3995, 'San Jose', 233),
(3996, 'Soriano', 233),
(3997, 'Tacuarembo', 233),
(3998, 'Treinta y Tres', 233),
(3999, 'Andijon', 234),
(4000, 'Buhoro', 234),
(4001, 'Buxoro Viloyati', 234),
(4002, 'Cizah', 234),
(4003, 'Fargona', 234),
(4004, 'Horazm', 234),
(4005, 'Kaskadar', 234),
(4006, 'Korakalpogiston', 234),
(4007, 'Namangan', 234),
(4008, 'Navoi', 234),
(4009, 'Samarkand', 234),
(4010, 'Sirdare', 234),
(4011, 'Surhondar', 234),
(4012, 'Toskent', 234),
(4013, 'Malampa', 235),
(4014, 'Penama', 235),
(4015, 'Sanma', 235),
(4016, 'Shefa', 235),
(4017, 'Tafea', 235),
(4018, 'Torba', 235),
(4019, 'Vatican City State (Holy See)', 236),
(4020, 'Amazonas', 237),
(4021, 'Anzoategui', 237),
(4022, 'Apure', 237),
(4023, 'Aragua', 237),
(4024, 'Barinas', 237),
(4025, 'Bolivar', 237),
(4026, 'Carabobo', 237),
(4027, 'Cojedes', 237),
(4028, 'Delta Amacuro', 237),
(4029, 'Distrito Federal', 237),
(4030, 'Falcon', 237),
(4031, 'Guarico', 237),
(4032, 'Lara', 237),
(4033, 'Merida', 237),
(4034, 'Miranda', 237),
(4035, 'Monagas', 237),
(4036, 'Nueva Esparta', 237),
(4037, 'Portuguesa', 237),
(4038, 'Sucre', 237),
(4039, 'Tachira', 237),
(4040, 'Trujillo', 237),
(4041, 'Vargas', 237),
(4042, 'Yaracuy', 237),
(4043, 'Zulia', 237),
(4044, 'Bac Giang', 238),
(4045, 'Binh Dinh', 238),
(4046, 'Binh Duong', 238),
(4047, 'Da Nang', 238),
(4048, 'Dong Bang Song Cuu Long', 238),
(4049, 'Dong Bang Song Hong', 238),
(4050, 'Dong Nai', 238),
(4051, 'Dong Nam Bo', 238),
(4052, 'Duyen Hai Mien Trung', 238),
(4053, 'Hanoi', 238),
(4054, 'Hung Yen', 238),
(4055, 'Khu Bon Cu', 238),
(4056, 'Long An', 238),
(4057, 'Mien Nui Va Trung Du', 238),
(4058, 'Thai Nguyen', 238),
(4059, 'Thanh Pho Ho Chi Minh', 238),
(4060, 'Thu Do Ha Noi', 238),
(4061, 'Tinh Can Tho', 238),
(4062, 'Tinh Da Nang', 238),
(4063, 'Tinh Gia Lai', 238),
(4064, 'Anegada', 239),
(4065, 'Jost van Dyke', 239),
(4066, 'Tortola', 239),
(4067, 'Saint Croix', 240),
(4068, 'Saint John', 240),
(4069, 'Saint Thomas', 240),
(4070, 'Alo', 241),
(4071, 'Singave', 241),
(4072, 'Wallis', 241),
(4073, 'Bu Jaydur', 242),
(4074, 'Wad-adh-Dhahab', 242),
(4075, 'al-\'Ayun', 242),
(4076, 'as-Samarah', 242),
(4077, '\'Adan', 243),
(4078, 'Abyan', 243),
(4079, 'Dhamar', 243),
(4080, 'Hadramaut', 243),
(4081, 'Hajjah', 243),
(4082, 'Hudaydah', 243),
(4083, 'Ibb', 243),
(4084, 'Lahij', 243),
(4085, 'Ma\'rib', 243),
(4086, 'Madinat San\'a', 243),
(4087, 'Sa\'dah', 243),
(4088, 'Sana', 243),
(4089, 'Shabwah', 243),
(4090, 'Ta\'izz', 243),
(4091, 'al-Bayda', 243),
(4092, 'al-Hudaydah', 243),
(4093, 'al-Jawf', 243),
(4094, 'al-Mahrah', 243),
(4095, 'al-Mahwit', 243),
(4096, 'Central Serbia', 244),
(4097, 'Kosovo and Metohija', 244),
(4098, 'Montenegro', 244),
(4099, 'Republic of Serbia', 244),
(4100, 'Serbia', 244),
(4101, 'Vojvodina', 244),
(4102, 'Central', 245),
(4103, 'Copperbelt', 245),
(4104, 'Eastern', 245),
(4105, 'Luapala', 245),
(4106, 'Lusaka', 245),
(4107, 'North-Western', 245),
(4108, 'Northern', 245),
(4109, 'Southern', 245),
(4110, 'Western', 245),
(4111, 'Bulawayo', 246),
(4112, 'Harare', 246),
(4113, 'Manicaland', 246),
(4114, 'Mashonaland Central', 246),
(4115, 'Mashonaland East', 246),
(4116, 'Mashonaland West', 246),
(4117, 'Masvingo', 246),
(4118, 'Matabeleland North', 246),
(4119, 'Matabeleland South', 246),
(4120, 'Midlands', 246),
(4121, 'Lienchiang County', 214);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Routash Kumar', 'admin@gmail.com', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', '', 'admin', NULL, NULL, 'active', 'paeAcQuXz5sZgHzUvLTb8CLvjybP7IxuWnwgUBiY3Ixxa0sIW71u6LnMcnPZ', NULL, '2025-03-28 01:32:11'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', '', 'user', NULL, NULL, 'active', NULL, NULL, '2025-03-28 01:31:31'),
(3, 'Prajwal Raisd', 'prajwal.iar@gmail.com', NULL, '$2y$10$15ZVMgH040v4Ukf9KSAFiucPJcfDwmeRKCaguVJBXplTs93m48F1G', 'y3SdZ1D2RPI4LXFDIeLi9NfW8A2qVV5OrxYWN878.png', 'user', NULL, NULL, 'active', NULL, '2020-08-11 04:20:58', '2025-01-20 15:07:51'),
(30, 'Das Vad', 'ddsd@gmail.com', NULL, '$2y$10$qSLa7SJtEzgGbr6IPH6hNOpG1U.U13cwtcIAkZ9qD68vsOCasWCZ2', 'yPBf4u5vDMNolMLn3wtbMNVn2wWNjTtiit0oYOid.png', 'user', NULL, NULL, 'active', NULL, '2025-01-19 16:34:25', '2025-01-19 16:39:25'),
(33, 'vendor', 'vendor@gmail.com', NULL, '$2y$10$SvMsvItXP6vQ9b1vs6asN.IzkNgoMVqDt8r.7bHNMLjulpIPNItI.', 'z21ypYysTAXGX5tYjiELBdqrkgkWjh0O6FUcc9xQ.png', 'vendor', NULL, NULL, 'active', NULL, '2025-01-30 16:12:36', '2025-01-31 14:41:35'),
(34, 'raj', 'raj@gmail.com', NULL, '$2y$10$igTdLsj9tuvKnD7w6Gs6ROKxpmCvrw6DZuPayvCwDAa1YiHU2zCdS', 'fD8q1sAq5dC41nwr23SPuzISQMX4kLseUqKqePKl.png', 'vendor', NULL, NULL, 'active', NULL, '2025-01-31 14:31:07', '2025-01-31 14:38:37'),
(35, 'victor', 'victor@gmail.com', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', 'EGtXac7Rd2Ozp9pj6J6DbnlK6YkH1XW0lbHIx1Ar.png', 'vendor', NULL, NULL, 'active', NULL, '2025-01-31 14:38:24', '2025-04-20 07:37:59'),
(36, 'rktest', 'rk@gmail.com', NULL, '$2y$10$Iq1.rd07rkoESrvxB8Qs6O8m3JrOY.vMPLnzHf4T5PqxuoEn0Mo2O', NULL, 'user', NULL, NULL, 'active', NULL, '2025-01-31 15:28:32', '2025-01-31 15:28:32'),
(37, 'test', 'test@gmail.com', NULL, '$2y$10$h/fE8pMkc2EKxpk5xenNsOyShtgiuWzC5vh63GyszPlqOUoBJMuBm', NULL, 'user', NULL, NULL, 'active', NULL, '2025-01-31 15:29:45', '2025-01-31 15:29:45'),
(38, 'Das Vad', 'new@gmail.com', NULL, '$2y$10$vWtcTyPH2qIDs9SKRv9fguZQX/qC8H9OInb43mrF4zwU9mkGJ5P8C', NULL, 'user', NULL, NULL, 'active', NULL, '2025-04-10 03:11:17', '2025-04-10 03:11:17'),
(39, 'Routash Kumar', 'admina@gmail.com', NULL, '$2y$10$MzbZw3fxDHBFMDpX4QKj7ujq.mXpExzmTCqPGn41eayy21nHx.w46', NULL, 'user', NULL, NULL, 'active', NULL, '2025-04-16 15:59:35', '2025-04-16 15:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 1, 24.50, 1, 24.50, '2025-02-20 16:04:30', '2025-02-20 16:04:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `blind_options`
--
ALTER TABLE `blind_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors_colors_type_id_foreign` (`colors_type_id`);

--
-- Indexes for table `colors_type`
--
ALTER TABLE `colors_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `eighths`
--
ALTER TABLE `eighths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eighths_prices`
--
ALTER TABLE `eighths_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eighths_prices_product_id_foreign` (`product_id`),
  ADD KEY `eighths_prices_eighth_id_foreign` (`eighth_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_tracking`
--
ALTER TABLE `orders_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_tracking_order_id_index` (`order_id`),
  ADD KEY `orders_tracking_product_id_index` (`product_id`),
  ADD KEY `orders_tracking_vendor_id_index` (`vendor_id`);

--
-- Indexes for table `orders_tracking_checkpoints`
--
ALTER TABLE `orders_tracking_checkpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_transactions`
--
ALTER TABLE `orders_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_vendors_products`
--
ALTER TABLE `orders_vendors_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_options_parent_keyword_id_foreign` (`parent_keyword_id`),
  ADD KEY `product_options_product_option_id_foreign` (`product_option_id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `product_option_pricing`
--
ALTER TABLE `product_option_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_option_pricing-old`
--
ALTER TABLE `product_option_pricing-old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_pricing`
--
ALTER TABLE `product_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_pricing_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_size_price`
--
ALTER TABLE `product_size_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `seo_metadata`
--
ALTER TABLE `seo_metadata`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blind_options`
--
ALTER TABLE `blind_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colors_type`
--
ALTER TABLE `colors_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eighths`
--
ALTER TABLE `eighths`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eighths_prices`
--
ALTER TABLE `eighths_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_tracking`
--
ALTER TABLE `orders_tracking`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_tracking_checkpoints`
--
ALTER TABLE `orders_tracking_checkpoints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_transactions`
--
ALTER TABLE `orders_transactions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_vendors_products`
--
ALTER TABLE `orders_vendors_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `product_option_pricing`
--
ALTER TABLE `product_option_pricing`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_option_pricing-old`
--
ALTER TABLE `product_option_pricing-old`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_pricing`
--
ALTER TABLE `product_pricing`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_size_price`
--
ALTER TABLE `product_size_price`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo_metadata`
--
ALTER TABLE `seo_metadata`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_colors_type_id_foreign` FOREIGN KEY (`colors_type_id`) REFERENCES `colors_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `eighths_prices`
--
ALTER TABLE `eighths_prices`
  ADD CONSTRAINT `eighths_prices_eighth_id_foreign` FOREIGN KEY (`eighth_id`) REFERENCES `eighths` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `eighths_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_pricing`
--
ALTER TABLE `product_pricing`
  ADD CONSTRAINT `product_pricing_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
