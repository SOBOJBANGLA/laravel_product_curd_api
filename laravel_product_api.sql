-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 08:00 PM
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
-- Database: `laravel_product_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$12$Sd3x84LZ0/z.ufuNA1qLGeauvxC5txqsi.z7PPbFjeKOaIU//YORm', NULL, '2025-03-02 04:07:17', '2025-03-02 04:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_03_02_093713_create_admins_table', 2),
(6, '2025_03_02_101707_create_products_table', 3),
(7, '2025_03_02_163735_add_user_id_to_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '41fb298f3ee24d24e15bbfbe389ce23aa3209d45cea0d52926dfb76b92117a3f', '[\"*\"]', '2025-03-02 05:06:49', NULL, '2025-03-02 05:00:46', '2025-03-02 05:06:49'),
(2, 'App\\Models\\User', 1, 'auth_token', '08fd47501cc6d9f7a852917bae7b07562060f7b82161702c832cde9755dae261', '[\"*\"]', NULL, NULL, '2025-03-02 07:00:55', '2025-03-02 07:00:55'),
(3, 'App\\Models\\User', 1, 'auth_token', '703181642dca93e28cb1f070db4fe43f240d283c6f2f80425b6a9629c2549bd3', '[\"*\"]', '2025-03-02 10:19:17', NULL, '2025-03-02 10:08:01', '2025-03-02 10:19:17'),
(4, 'App\\Models\\User', 1, 'dashboard-token', '117f1a3287e378d7a9390b776b685c4bbebb6ef1c646374999e6bf119ef0a72b', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:02', '2025-03-02 10:59:02'),
(5, 'App\\Models\\User', 1, 'dashboard-token', '6042cf8f901b31fd7c807cd63fd4008075b8ffa9821c4df3550b9574875c2b72', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:10', '2025-03-02 10:59:10'),
(6, 'App\\Models\\User', 1, 'dashboard-token', 'fa9bbfc076d4168df804d7adeffdb896de6c2dee584e10561e3047e063d35f57', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:11', '2025-03-02 10:59:11'),
(7, 'App\\Models\\User', 1, 'dashboard-token', '4bb22e456d12bad8cfd41ee02a0086d050816b39f5b08f49b6fa5b28a5d7a80c', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:11', '2025-03-02 10:59:11'),
(8, 'App\\Models\\User', 1, 'dashboard-token', '1f71e2daf82ff29c28062c353de5f9ac7e6dbc8d8df66c672f8cb3ad92cd174d', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:11', '2025-03-02 10:59:11'),
(9, 'App\\Models\\User', 1, 'dashboard-token', 'af16c20839e20c84eca0e23f8ac439eac7491749b8d09c7cde014f619c484dba', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:12', '2025-03-02 10:59:12'),
(10, 'App\\Models\\User', 1, 'dashboard-token', 'fed3ecd2308254f33caf1fec7471de513b4f0375816b9d667e31cd98a056ef95', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:12', '2025-03-02 10:59:12'),
(11, 'App\\Models\\User', 1, 'dashboard-token', 'ae12a85c9174aacdb663226143dfb51500c6a80636e2a9fadba89d39552140ce', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:12', '2025-03-02 10:59:12'),
(12, 'App\\Models\\User', 1, 'dashboard-token', '9e5624304b3c6304aa3a407638067eee49d6f28cd9d3a9dcbf641cc263acc4c1', '[\"*\"]', NULL, NULL, '2025-03-02 10:59:12', '2025-03-02 10:59:12'),
(13, 'App\\Models\\User', 1, 'dashboard-token', '89daa098573a99dd966e4e41c481d02639dc67c168790d99f29efc3a90f0266b', '[\"*\"]', NULL, NULL, '2025-03-02 11:00:07', '2025-03-02 11:00:07'),
(14, 'App\\Models\\User', 1, 'dashboard-token', '3a429db9a6dec8e9cf559f40d069d37005f504d80cbc59f227dccdd04f41f8e0', '[\"*\"]', NULL, NULL, '2025-03-02 11:00:17', '2025-03-02 11:00:17'),
(15, 'App\\Models\\User', 1, 'dashboard-token', '401895a7a84f5dc97353d9aaf5312df8f2f5aa94bd70cee5ea81630e17fb591b', '[\"*\"]', NULL, NULL, '2025-03-02 11:01:01', '2025-03-02 11:01:01'),
(16, 'App\\Models\\User', 1, 'dashboard-token', 'a62c3fe44fe564c4ccaa394ebbe0e30f017002c0e414626d6ab6e64530eb5733', '[\"*\"]', NULL, NULL, '2025-03-02 11:01:02', '2025-03-02 11:01:02'),
(17, 'App\\Models\\User', 1, 'dashboard-token', 'f0bd628dbaca6f2de80be6e0e9550db7f5baebc4af75456dcbc195fd07c92491', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:16', '2025-03-02 11:02:16'),
(18, 'App\\Models\\User', 1, 'dashboard-token', '595d2edd2651a7b3290abf46bd17d1333267df36550c53ebebd7f0322dd6fe08', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:19', '2025-03-02 11:02:19'),
(19, 'App\\Models\\User', 1, 'dashboard-token', '7d20df49ca994b8ab51aeb2c3a2931e1e909dc82f58104cb7163fc6ebb1dff0d', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:19', '2025-03-02 11:02:19'),
(20, 'App\\Models\\User', 1, 'dashboard-token', '411365b6c606b0dff9ad1a3a2c2c9254cdc9091aecc3de8fc8d32b74db21f899', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(21, 'App\\Models\\User', 1, 'dashboard-token', 'e2da019bad6b6c9b52b2585acba34f6f415cfb1385177353bbb4904b92e30a8b', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(22, 'App\\Models\\User', 1, 'dashboard-token', 'f1bb7b3821e0ebef33f6f9e9b521ac611b9802b8d5877bd98cf4eb08b4d084ef', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(23, 'App\\Models\\User', 1, 'dashboard-token', 'b84eae69462df892a920757c0544d12cb6b0cbadd138214be5fcab1a867df32c', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(24, 'App\\Models\\User', 1, 'dashboard-token', '8dccc8995d2e015afef141bb18e6144a4a6a9730cb74d2075063fe0c5f5683d8', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(25, 'App\\Models\\User', 1, 'dashboard-token', '2ade5ad00c5dee6d65e807a7cb1cc27b62130a6a317ad88a07e0f927d371047f', '[\"*\"]', NULL, NULL, '2025-03-02 11:02:20', '2025-03-02 11:02:20'),
(26, 'App\\Models\\User', 1, 'dashboard-token', 'b645fca8c56542b41e4b1583988e9558b0ecd47521097b30cbef70bca4399ebe', '[\"*\"]', NULL, NULL, '2025-03-02 11:05:15', '2025-03-02 11:05:15'),
(27, 'App\\Models\\User', 1, 'dashboard-token', '5b58f865ec498ff6ecf18c7e156ff1cd668405a1032b3bda50f68915aca891f7', '[\"*\"]', NULL, NULL, '2025-03-02 11:05:18', '2025-03-02 11:05:18'),
(28, 'App\\Models\\User', 1, 'dashboard-token', '8cb15cf6dd93b06657dc1fe9a5e93183ab7adc83a2b71b12a0f898d52dd02199', '[\"*\"]', NULL, NULL, '2025-03-02 11:06:38', '2025-03-02 11:06:38'),
(29, 'App\\Models\\User', 1, 'dashboard-token', '2696c50ca4e6e582f7382ea7381c1e0f2028323b9872cd55863a88c5f35401c4', '[\"*\"]', NULL, NULL, '2025-03-02 11:06:40', '2025-03-02 11:06:40'),
(30, 'App\\Models\\User', 1, 'dashboard-token', '4937bdcf734df584c37fd696959133bc050d1a1c1cd899ff3235c30d6f497ede', '[\"*\"]', NULL, NULL, '2025-03-02 11:06:42', '2025-03-02 11:06:42'),
(31, 'App\\Models\\User', 1, 'dashboard-token', 'a5bdffef35b16cd4faf537a1fcf13c89f608295ab5a4a57559a3e10124754372', '[\"*\"]', NULL, NULL, '2025-03-02 11:06:43', '2025-03-02 11:06:43'),
(32, 'App\\Models\\User', 2, 'dashboard-token', 'b52009ffabd6e6c745eb9129fadd0ccfd7515246e055a1277ac01b4e9b6fc4f8', '[\"*\"]', NULL, NULL, '2025-03-02 11:07:38', '2025-03-02 11:07:38'),
(33, 'App\\Models\\User', 2, 'dashboard-token', '858d16ba4c33a4b0fbf1316b166f8eea3062b5e0e2e7cb14a1850adb744efa35', '[\"*\"]', NULL, NULL, '2025-03-02 11:07:39', '2025-03-02 11:07:39'),
(34, 'App\\Models\\User', 2, 'dashboard-token', '83373f11c281c84fb6777025277694585def13f738af72ac2f0c92173b904d68', '[\"*\"]', NULL, NULL, '2025-03-02 11:07:55', '2025-03-02 11:07:55'),
(35, 'App\\Models\\User', 2, 'dashboard-token', 'd16e74f0f6ccdc00e82b9b3b9b9dd9fb5015a4aaadcf011638c4f07b6f877484', '[\"*\"]', NULL, NULL, '2025-03-02 11:07:55', '2025-03-02 11:07:55'),
(36, 'App\\Models\\User', 1, 'dashboard-token', 'e07ba5ed52e0d0598310033150909625d0f71eae3f85495c594370725225389a', '[\"*\"]', NULL, NULL, '2025-03-02 11:26:35', '2025-03-02 11:26:35'),
(37, 'App\\Models\\User', 1, 'dashboard-token', '55592959a23c7b1741c1feabbcb68b4cf1b5cb7d707912233cf1c7f5157ce068', '[\"*\"]', NULL, NULL, '2025-03-02 11:29:57', '2025-03-02 11:29:57'),
(38, 'App\\Models\\User', 1, 'dashboard-token', 'a90346ce6627e25246d9fa37fea2dd1f9c46b72c50bb05e68f0a49b73dbfe6ce', '[\"*\"]', NULL, NULL, '2025-03-02 11:30:02', '2025-03-02 11:30:02'),
(39, 'App\\Models\\User', 1, 'dashboard-token', '5c9e1de1061f4105ee4119b872b0f64986324c7a4bf96b66720e43a81f397a35', '[\"*\"]', NULL, NULL, '2025-03-02 11:30:14', '2025-03-02 11:30:14'),
(40, 'App\\Models\\User', 2, 'dashboard-token', '10bcf20ae53b444ac74fda16ece6e50d529a42437609a97e824aad91745cfc50', '[\"*\"]', NULL, NULL, '2025-03-02 11:30:38', '2025-03-02 11:30:38'),
(41, 'App\\Models\\User', 2, 'dashboard-token', '223ef9d39f789eac6b55f46ac1f6e089fd861e0d93e41d9a6c215ae7dbe7b61e', '[\"*\"]', NULL, NULL, '2025-03-02 11:30:55', '2025-03-02 11:30:55'),
(42, 'App\\Models\\User', 2, 'dashboard-token', '853d9f747ffab49ed6df4f7ba6ade59b10519238154d957e3fd9bc79e9c8f91d', '[\"*\"]', NULL, NULL, '2025-03-02 11:31:09', '2025-03-02 11:31:09'),
(43, 'App\\Models\\User', 1, 'dashboard-token', '4a0a7ac6ee2905ea6d0ae5b08b2fe4d8b5891ccb2871be68036d2f520c55efdd', '[\"*\"]', NULL, NULL, '2025-03-02 11:31:28', '2025-03-02 11:31:28'),
(44, 'App\\Models\\User', 1, 'dashboard-token', 'b96f3be01be3a7a65171998fe8fcafd0787c0d10012347219e98aba66db67642', '[\"*\"]', NULL, NULL, '2025-03-02 11:31:50', '2025-03-02 11:31:50'),
(45, 'App\\Models\\User', 2, 'dashboard-token', '8dbb81792323ec58a9be44a6d3330193a86d6278af0f16edce754902eddad305', '[\"*\"]', NULL, NULL, '2025-03-02 11:32:21', '2025-03-02 11:32:21'),
(46, 'App\\Models\\User', 2, 'dashboard-token', '3d54aca774fc581d1134620f626d51e16555a50de008546387919d2d05792851', '[\"*\"]', NULL, NULL, '2025-03-02 11:56:44', '2025-03-02 11:56:44'),
(47, 'App\\Models\\User', 2, 'dashboard-token', '4d3170f27296782130141d58a89b43da4b0ad036b3a6045f43f757090e81b8c9', '[\"*\"]', NULL, NULL, '2025-03-02 11:56:55', '2025-03-02 11:56:55'),
(48, 'App\\Models\\User', 2, 'dashboard-token', 'f36e8479792a3076ae3af323345833ec2e1d1533860782cc77af34d92c6ac8a3', '[\"*\"]', NULL, NULL, '2025-03-02 11:59:26', '2025-03-02 11:59:26'),
(49, 'App\\Models\\User', 2, 'dashboard-token', 'd4db5312b147f632798c21da096d1292a1a9e52e4a72aa9ede6e1a709928020a', '[\"*\"]', NULL, NULL, '2025-03-02 11:59:35', '2025-03-02 11:59:35'),
(50, 'App\\Models\\User', 2, 'dashboard-token', '45f94fde9fdf39b117c87f54164096c8989242fb341518e68748c7a8752344e6', '[\"*\"]', NULL, NULL, '2025-03-02 11:59:48', '2025-03-02 11:59:48'),
(51, 'App\\Models\\User', 3, 'dashboard-token', '278b04ff8c71243b14b8e16fb5972d23434b42896fde6a36228f7be8ad68720a', '[\"*\"]', NULL, NULL, '2025-03-02 12:00:36', '2025-03-02 12:00:36'),
(52, 'App\\Models\\User', 3, 'dashboard-token', '17c69fc066a8b7c8eaa457db256db7493f3e331a035b09fa1e4844f47f80735e', '[\"*\"]', NULL, NULL, '2025-03-02 12:00:57', '2025-03-02 12:00:57'),
(53, 'App\\Models\\User', 3, 'dashboard-token', '8faa3c85fa013a4900de7b142d959a78c2e525a3c0fd40394fc902feb82f3cef', '[\"*\"]', NULL, NULL, '2025-03-02 12:06:50', '2025-03-02 12:06:50'),
(54, 'App\\Models\\User', 3, 'dashboard-token', 'ddb088bc07b0a3852945a5f8164efac9a3fbce8dec87a418d55b827c8bfe5487', '[\"*\"]', NULL, NULL, '2025-03-02 12:07:18', '2025-03-02 12:07:18'),
(55, 'App\\Models\\User', 3, 'dashboard-token', 'e368a81cd00b75d476ee2b8829756445c6c1b2b3bc68875a2adf49fda1ab9d38', '[\"*\"]', NULL, NULL, '2025-03-02 12:07:36', '2025-03-02 12:07:36'),
(56, 'App\\Models\\User', 3, 'dashboard-token', '204fc39b54fbc036726b5cb8a802cbf56b4bde7884049e4bb285ff3c7a30c9f7', '[\"*\"]', NULL, NULL, '2025-03-02 12:07:46', '2025-03-02 12:07:46'),
(57, 'App\\Models\\User', 3, 'dashboard-token', 'e69a3049ff37d494b31342aa4e8ddfc7529864e6c1efa7a8176d4de340149ad6', '[\"*\"]', NULL, NULL, '2025-03-02 12:08:03', '2025-03-02 12:08:03'),
(58, 'App\\Models\\User', 3, 'dashboard-token', 'cf7b7987e45affdcd66320cad367c826537fa5edbac6ab35d5fe27b0057c35fd', '[\"*\"]', NULL, NULL, '2025-03-02 12:09:12', '2025-03-02 12:09:12'),
(59, 'App\\Models\\User', 3, 'dashboard-token', '6c2f798e21f3408a02a8956cb17192bdb19536eba9bf9c31b61b699747c43aca', '[\"*\"]', NULL, NULL, '2025-03-02 12:15:43', '2025-03-02 12:15:43'),
(60, 'App\\Models\\User', 3, 'dashboard-token', 'c94c2b4f9c904f92881ff4c916875c64b4e952208391ec8f8a95edd8468cec74', '[\"*\"]', NULL, NULL, '2025-03-02 12:15:49', '2025-03-02 12:15:49'),
(61, 'App\\Models\\User', 3, 'dashboard-token', 'af5507dab0a9b1571336af552755b33c3a64f8ef0249f2eb8f2fdaca7d781910', '[\"*\"]', NULL, NULL, '2025-03-02 12:15:58', '2025-03-02 12:15:58'),
(62, 'App\\Models\\User', 3, 'dashboard-token', '447ab292b7fa56c01eeeba00cd30a67cfc51a966c5f7a31d181a4136b36cf7b1', '[\"*\"]', NULL, NULL, '2025-03-02 12:17:01', '2025-03-02 12:17:01'),
(63, 'App\\Models\\User', 4, 'dashboard-token', 'e014a9890b91e5ac2c54d16aa7cbfe37002253ea4b0df13933dddd03ea638afc', '[\"*\"]', NULL, NULL, '2025-03-02 12:39:01', '2025-03-02 12:39:01'),
(64, 'App\\Models\\User', 4, 'dashboard-token', 'd4e27b333a2b97c5589815e2d53dc301f77e2de7615cca28dfae91efa0516848', '[\"*\"]', NULL, NULL, '2025-03-02 12:39:48', '2025-03-02 12:39:48'),
(65, 'App\\Models\\User', 4, 'dashboard-token', 'aaee6613f6451ebeb09be2e208bf82d8b3022119d566207d3e955266173b3f73', '[\"*\"]', NULL, NULL, '2025-03-02 12:39:55', '2025-03-02 12:39:55'),
(66, 'App\\Models\\User', 3, 'dashboard-token', '8da244a0fa2b057bf88aa0acc3d932ae054759a65f6edf0204bcfe62ae256f66', '[\"*\"]', NULL, NULL, '2025-03-02 12:42:38', '2025-03-02 12:42:38'),
(67, 'App\\Models\\User', 3, 'dashboard-token', '51f5d81d11cfad9de1061bb7fd916ace05a158b7878be44e982bd9710e923230', '[\"*\"]', NULL, NULL, '2025-03-02 12:42:42', '2025-03-02 12:42:42'),
(68, 'App\\Models\\User', 4, 'dashboard-token', '298cce74bbe0d057b0cccfe05787d877864a132544f85cfbb7f18ca22c06fbd5', '[\"*\"]', NULL, NULL, '2025-03-02 12:48:39', '2025-03-02 12:48:39'),
(69, 'App\\Models\\User', 4, 'dashboard-token', '2058593781ab71649e240defc167b79568977e5100108f7c8a59a2d7ae58dbb5', '[\"*\"]', NULL, NULL, '2025-03-02 12:54:10', '2025-03-02 12:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'sunt', 'Rerum quod eos nihil sit.', 67.64, '2025-03-02 05:06:40', '2025-03-02 05:06:40'),
(2, 1, 'aut', 'Voluptatem praesentium aut impedit accusantium iure.', 43.28, '2025-03-02 05:06:40', '2025-03-02 05:06:40'),
(3, 1, 'necessitatibus', 'Et enim numquam aut quidem minus rem a.', 96.45, '2025-03-02 05:06:40', '2025-03-02 05:06:40'),
(4, 1, 'tenetur', 'Sed eos ut voluptatem praesentium.', 71.23, '2025-03-02 05:06:40', '2025-03-02 05:06:40'),
(5, 1, 'nobis', 'Reprehenderit veritatis dolores cum nemo explicabo sit minima accusantium.', 71.21, '2025-03-02 05:06:40', '2025-03-02 05:06:40'),
(6, 1, 'quidem', 'Amet id voluptatibus amet culpa omnis reiciendis consequatur.', 25.43, '2025-03-02 05:06:41', '2025-03-02 05:06:41'),
(7, 1, 'quod', 'Voluptatem maiores porro accusantium quam culpa blanditiis.', 11.02, '2025-03-02 05:06:41', '2025-03-02 05:06:41'),
(8, 1, 'ab', 'Impedit porro sit eos facilis odio.', 77.85, '2025-03-02 05:06:41', '2025-03-02 05:06:41'),
(9, 1, 'accusamus', 'Aut sunt consequatur cum assumenda veritatis unde doloremque.', 95.02, '2025-03-02 05:06:41', '2025-03-02 05:06:41'),
(10, 1, 'eos', 'Culpa voluptatem voluptatem in maiores eius id.', 97.02, '2025-03-02 05:06:41', '2025-03-02 05:06:41'),
(11, 1, 'Laptop', 'aaaaaaa', 2054.00, '2025-03-02 11:05:49', '2025-03-02 11:05:49'),
(13, 2, 'Laptop222', 'ttttttttt', 5640.00, '2025-03-02 11:07:54', '2025-03-02 11:31:08'),
(14, 1, 'Laptop32', 'ffff', 555.00, '2025-03-02 11:29:55', '2025-03-02 11:29:55'),
(15, 2, 'Laptop89', 'ttttttt', 456.00, '2025-03-02 11:30:54', '2025-03-02 11:30:54'),
(16, 3, 'Laptop98', 'ppppppo', 8779.00, '2025-03-02 12:00:56', '2025-03-02 12:08:02'),
(17, 3, 'Laptop2222', '4444444', 777777.00, '2025-03-02 12:07:17', '2025-03-02 12:07:17'),
(18, 4, 'Laptop35', 'fffff', 777.00, '2025-03-02 12:39:47', '2025-03-02 12:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mamun', 'mamun@gmail.com', NULL, '$2y$12$JSyi2seIUPtRbRJgK7aUOOGNHE/pbzFaa5maZ8bOLbwLRk8RUxQYy', NULL, '2025-03-02 03:27:54', '2025-03-02 03:27:54'),
(2, 'Nazrul', 'jamil@gmail.com', NULL, '$2y$12$tQxwG34lfSBHWTKMESaX9.vdhPlIVsKwlXMCinJyTJeSGS7Aj7ADa', NULL, '2025-03-02 10:21:26', '2025-03-02 10:21:26'),
(3, 'Abir', 'abir@gmail.com', NULL, '$2y$12$ruuwtx0X5JUTekDM22ANo.F.lWx65DBNSeLgKImmz8/TV8MFrxLTW', NULL, '2025-03-02 12:00:35', '2025-03-02 12:00:35'),
(4, 'Amir', 'amir@gmail.com', NULL, '$2y$12$Kdya3ez6ERyQ/xZJBJWzxeJXPTqDPF8Uh4e14D59Hmq.puZTaQjKa', NULL, '2025-03-02 12:38:56', '2025-03-02 12:38:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `products_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
