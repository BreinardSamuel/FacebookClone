-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2023 at 04:11 AM
-- Server version: 8.0.32-0ubuntu0.22.10.2
-- PHP Version: 8.1.7-1ubuntu3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facebookclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `my_comments`
--

CREATE TABLE `my_comments` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ccreated_on` timestamp NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_posts`
--

CREATE TABLE `my_posts` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `my_posts`
--

INSERT INTO `my_posts` (`user_id`, `post_id`, `post`, `created_on`, `updated_on`, `desc`) VALUES
(40, 1, 'uploads/63a93b52a7774.png', '2022-12-26 04:51:19', '2022-12-27 10:04:14', ''),
(40, 2, 'uploads/63a93b52a7774.png', '2022-12-26 05:32:33', '2022-12-27 10:04:14', ''),
(40, 3, 'uploads/63a93b52a7774.png', '2022-12-26 05:33:26', '2022-12-27 10:04:14', ''),
(40, 4, 'uploads/63a93b52a7774.png', '2022-12-26 05:34:29', '2022-12-27 10:04:14', ''),
(40, 5, 'uploads/63a93b52a7774.png', '2022-12-26 05:37:39', '2022-12-27 10:02:01', ''),
(40, 6, 'uploads/63a93b52a7774.png', '2022-12-26 05:52:37', '2022-12-26 06:12:34', 'hello'),
(40, 7, 'uploads/63a93b52a7774.png', '2022-12-26 05:53:10', '2022-12-26 06:12:34', 'sdsad'),
(40, 8, 'uploads/63a93b52a7774.png', '2022-12-26 06:00:34', '2022-12-26 06:12:34', ''),
(40, 9, 'uploads/63a93b52a7774.png', '2022-12-26 06:12:34', '2022-12-26 06:12:34', 'ok'),
(40, 10, 'uploads/63a93ba0ca6c7.png', '2022-12-26 06:13:52', '2022-12-26 06:13:52', 'hhhh'),
(40, 11, 'uploads/63a93e6790716.png', '2022-12-26 06:25:43', '2022-12-26 06:25:43', 'member'),
(40, 12, 'uploads/63a940eb76bee.png', '2022-12-26 06:36:27', '2022-12-26 06:36:27', 'light yagami'),
(40, 13, 'uploads/63a941e3ec70f.png', '2022-12-26 06:40:35', '2022-12-26 06:40:35', 'black'),
(43, 14, '', '2022-12-26 07:13:06', '2022-12-27 10:04:14', ''),
(0, 15, '', '2022-12-26 07:54:18', '2022-12-27 10:04:14', ''),
(0, 16, '', '2022-12-26 07:58:06', '2022-12-27 10:04:14', ''),
(0, 17, '', '2022-12-26 07:58:58', '2022-12-27 10:04:14', ''),
(0, 18, '', '2022-12-26 07:59:46', '2022-12-27 10:04:14', ''),
(0, 19, '', '2022-12-26 08:00:21', '2022-12-27 10:04:14', ''),
(0, 20, '', '2022-12-26 08:00:55', '2022-12-27 10:04:14', ''),
(0, 21, '', '2022-12-26 08:02:14', '2022-12-27 10:04:14', ''),
(0, 22, '', '2022-12-26 08:02:23', '2022-12-27 10:04:14', ''),
(0, 23, '', '2022-12-26 08:06:17', '2022-12-27 10:04:14', ''),
(74, 24, '', '2022-12-26 08:28:42', '2022-12-27 10:04:14', ''),
(86, 25, '', '2022-12-26 08:30:46', '2022-12-27 10:04:14', ''),
(87, 26, '', '2022-12-26 08:32:13', '2022-12-27 10:05:11', ''),
(87, 27, '', '2022-12-26 08:32:35', '2022-12-27 10:05:11', ''),
(89, 28, '', '2022-12-26 08:34:33', '2022-12-27 10:05:11', ''),
(90, 29, '', '2022-12-26 08:38:31', '2022-12-27 10:05:11', ''),
(90, 30, 'uploads/63a95dc48ae5c.png', '2022-12-26 08:39:32', '2022-12-26 08:39:32', 'first upload'),
(90, 31, 'uploads/63a95de633e52.png', '2022-12-26 08:40:06', '2022-12-26 08:40:06', 'second upload'),
(91, 32, '', '2022-12-26 09:38:10', '2022-12-27 10:05:11', ''),
(92, 33, '', '2022-12-26 11:11:05', '2022-12-27 10:05:11', ''),
(92, 34, 'uploads/63a981fa030bb.png', '2022-12-26 11:14:02', '2022-12-26 11:14:02', 'my new test description'),
(92, 35, 'uploads/63a982357ab37.png', '2022-12-26 11:15:01', '2022-12-26 11:15:01', 'My second description'),
(40, 36, 'uploads/63a9952b3964a.png', '2022-12-26 12:35:55', '2022-12-26 12:35:55', 'last'),
(93, 37, '', '2022-12-26 13:09:36', '2022-12-27 10:05:11', ''),
(93, 38, 'uploads/63a99d3dba24f.png', '2022-12-26 13:10:21', '2022-12-26 13:10:21', 'first post'),
(93, 39, 'uploads/63a99d71926ce.png', '2022-12-26 13:11:13', '2022-12-26 13:11:13', 'second post'),
(40, 40, 'uploads/63aaa536ced68.png', '2022-12-27 07:56:38', '2022-12-27 07:56:38', 'okkkk'),
(40, 41, 'uploads/63ab25b32ec28.png', '2022-12-27 17:04:51', '2022-12-27 17:04:51', 'deathnote'),
(94, 42, '', '2022-12-28 09:18:13', '2022-12-28 09:18:13', ''),
(95, 43, '', '2022-12-29 04:28:29', '2022-12-29 04:28:29', ''),
(94, 44, 'uploads/63eb2f43341f7.png', '2023-02-14 06:50:43', '2023-02-14 06:50:43', ''),
(94, 45, 'uploads/63fb89b5658b3.png', '2023-02-26 16:32:53', '2023-02-26 16:32:53', 'my gym');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` bigint NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'uploads/63a57e79b2eb4.png',
  `created__on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `address`, `email`, `mobile_number`, `password`, `image`, `created__on`, `updated_on`) VALUES
(16, 'samda', 'wefwsd', 's@sk.com', 1234567890, '353446885', NULL, '2022-12-12 09:03:57', '2022-12-28 11:16:44'),
(17, 'samda', 'wefwsd', 's@s.com', 1234567890, '8468468', NULL, '2022-12-12 09:05:26', '2022-12-28 11:16:44'),
(18, 'samda', 'wefwsd', 's@s.com', 1234567890, '8468468', NULL, '2022-12-12 09:06:37', '2022-12-28 11:16:44'),
(19, 'samda', 'wefwsd', 's@s.com', 1234567890, '8468468', NULL, '2022-12-12 09:09:14', '2022-12-28 11:16:44'),
(20, 'new', 'asdckn', 'n@n.com', 1234567890, '123', NULL, '2022-12-12 09:09:39', '2022-12-28 11:16:44'),
(21, 'new', 'hvjhv', 'n@n.com', 1234567890, '123', NULL, '2022-12-12 09:16:35', '2022-12-28 11:16:44'),
(22, 'new', 'hvjhv', 'n@n.com', 1234567890, '123', NULL, '2022-12-12 09:17:15', '2022-12-28 11:16:44'),
(23, 'm', 'fjhtdjh', 'm@m.com', 1234567890, '123', NULL, '2022-12-12 09:25:56', '2022-12-28 11:16:44'),
(24, 'm', 'fjhtdjh', 'm@m.com', 1234567890, '123', NULL, '2022-12-12 09:29:09', '2022-12-28 11:16:44'),
(25, 'new', 'gliugil', 'n@n.com', 1234567890, '123', NULL, '2022-12-12 09:29:30', '2022-12-28 11:16:44'),
(26, 'get', 'dscsdcku', 'g@g.com', 1234567890, '123', NULL, '2022-12-12 10:03:13', '2022-12-28 11:16:44'),
(27, 'sam', 'jggfjgsd', 'sam@sam.com', 1234567890, '123', NULL, '2022-12-15 06:06:22', '2022-12-28 11:16:44'),
(28, 'asdasd', 'gafdshgfh', 'aaa@aaa.com', 1234567890, 'Abc123!@#', NULL, '2022-12-16 06:54:14', '2022-12-16 06:54:14'),
(29, 'asdasd', 'gafdshgfh', 'aaa@aaa.com', 1234567890, 'Abc123!@#', NULL, '2022-12-16 06:57:51', '2022-12-16 06:57:51'),
(30, 'asdasd', 'gafdshgfh', 'aaa@aaa.com', 1234567890, 'Abc123!@#', NULL, '2022-12-16 06:59:33', '2022-12-16 06:59:33'),
(31, 'asdasd', 'gafdshgfh', 'aaa@aaa.com', 1234567890, 'Abc123!@#', NULL, '2022-12-16 07:00:44', '2022-12-16 07:00:44'),
(32, '', '', '', 1234567890, NULL, '1671467182_6fada630d0d44995d178.png', '2022-12-19 16:26:22', '2022-12-28 11:16:44'),
(33, 'breinard samuel', 'gchgfjgfjv', 'm@m.com', 1234567890, 'Abc123!@#', 'uploads/63a5a30580730.png', '2022-12-19 17:30:08', '2022-12-23 12:45:57'),
(34, '', '', '', 1234567890, NULL, '1671467368_c7c9c6a0900bb6599604.png', '2022-12-19 16:29:28', '2022-12-28 11:16:44'),
(35, '', '', '', 1234567890, NULL, '', '2022-12-19 12:42:13', '2022-12-28 11:16:44'),
(36, '', '', '', 1234567890, NULL, '', '2022-12-19 12:43:08', '2022-12-28 11:16:44'),
(37, '', '', '', 1234567890, NULL, '', '2022-12-19 12:43:28', '2022-12-28 11:16:44'),
(38, '', '', '', 1234567890, NULL, '', '2022-12-19 12:47:22', '2022-12-28 11:16:44'),
(39, 'santhosh', 'Testing ', 'santhoshk2win@gmail.com', 1234567890, 'Password@123', 'uploads/63a57a0c3a561.png', '2022-12-23 09:46:55', '2022-12-28 11:16:44'),
(40, 'Breinard Samuel', 'thuckalay', 'breinard@samuel.com', 1234567890, 'Abc123!@#', 'uploads/63ab25a05d277.png', '2022-12-23 11:41:30', '2022-12-27 17:04:32'),
(41, 'Gershom', 'jyfajsdjj', 'gershom@gmail.com', 1234567890, 'Abc123!@#', 'uploads/63a8650ec93a4.png', '2022-12-25 14:57:18', '2022-12-28 11:16:44'),
(42, 'newnew', 'adshgfhgf', 'new.new@new.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 06:48:43', '2022-12-26 06:48:43'),
(43, 'samuel', 'kgsdkagku', 'samuel@samuel.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 06:51:00', '2022-12-26 06:51:00'),
(44, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:15:16', '2022-12-28 11:16:44'),
(45, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:15:33', '2022-12-26 07:15:33'),
(46, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:26:09', '2022-12-26 07:26:09'),
(47, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:35:03', '2022-12-26 07:35:03'),
(48, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:37:54', '2022-12-26 07:37:54'),
(49, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:38:34', '2022-12-26 07:38:34'),
(50, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:38:48', '2022-12-26 07:38:48'),
(51, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:39:04', '2022-12-26 07:39:04'),
(52, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:40:39', '2022-12-26 07:40:39'),
(53, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:45:16', '2022-12-26 07:45:16'),
(54, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:46:20', '2022-12-26 07:46:20'),
(55, 'manman', 'jhavsdjvhjash', 'man@man.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:54:18', '2022-12-26 07:54:18'),
(56, 'hallooo', 'zcjnksjdbc', 'hallo@h.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:58:06', '2022-12-26 07:58:06'),
(57, 'bbbbbbb', 'ajsgdacgjshg', 'b@a.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:58:58', '2022-12-26 07:58:58'),
(58, 'bbbbbbb', 'ajsgdacgjshg', 'b@a.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 07:59:46', '2022-12-26 07:59:46'),
(59, 'bbbbbbb', 'ajsgdacgjshg', 'b@a.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:00:21', '2022-12-26 08:00:21'),
(60, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:00:55', '2022-12-26 08:00:55'),
(61, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:02:14', '2022-12-26 08:02:14'),
(62, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:02:23', '2022-12-26 08:02:23'),
(63, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:03:06', '2022-12-26 08:03:06'),
(64, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:04:09', '2022-12-26 08:04:09'),
(65, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:04:59', '2022-12-26 08:04:59'),
(66, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:05:18', '2022-12-26 08:05:18'),
(67, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:06:17', '2022-12-26 08:06:17'),
(68, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:11:11', '2022-12-26 08:11:11'),
(69, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:13:08', '2022-12-26 08:13:08'),
(70, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:13:35', '2022-12-26 08:13:35'),
(71, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:16:43', '2022-12-26 08:16:43'),
(72, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:17:13', '2022-12-26 08:17:13'),
(73, 'aaksjdbk', 'ascjbkjbskc', 'a@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:17:40', '2022-12-26 08:17:40'),
(74, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:18:55', '2022-12-26 08:18:55'),
(75, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:19:24', '2022-12-26 08:19:24'),
(76, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:20:15', '2022-12-26 08:20:15'),
(77, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:21:06', '2022-12-26 08:21:06'),
(78, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:21:36', '2022-12-26 08:21:36'),
(79, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:22:26', '2022-12-26 08:22:26'),
(80, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:22:36', '2022-12-26 08:22:36'),
(81, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:23:31', '2022-12-26 08:23:31'),
(82, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:25:13', '2022-12-26 08:25:13'),
(83, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:27:26', '2022-12-26 08:27:26'),
(84, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:28:09', '2022-12-26 08:28:09'),
(85, 'aaksjdbk', 'ascjbkjbskc', 'a@bc.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:28:42', '2022-12-26 08:28:42'),
(86, 'bbbkajdbhkj', 'asjdjbdkjb', 'ab@b.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:30:46', '2022-12-26 08:30:46'),
(87, 'bbbiuasdkj', 'sdckhbkh', 'x@x.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:32:13', '2022-12-26 08:32:13'),
(88, 'bbbiuasdkj', 'sdckhbkh', 'x@x.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:32:35', '2022-12-26 08:32:35'),
(89, 'bauxite', 'khvdkahvsdkh', 'nasa@nasa.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:34:33', '2022-12-26 08:34:33'),
(90, 'bauxite', 'nasa,america', 'bauxite@mail.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 08:38:31', '2022-12-26 08:38:31'),
(91, 'nilgris', 'sadjbskjfb', 'nilgris@gmail.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-26 09:38:10', '2022-12-28 11:16:44'),
(92, 'santhosh', 'Test Address', 'santhoshk2win@gmail.com', 1234567890, 'Admin@123', 'uploads/63a981a4723d2.png', '2022-12-26 11:11:05', '2022-12-28 11:16:44'),
(93, 'breinard', 'siuhiuhdosad', 'breinard@hotmail.com', 1234567890, 'Abc123!@#', 'uploads/63a99d532abe9.png', '2022-12-26 13:09:36', '2022-12-26 13:10:43'),
(94, 'Breinard Samuel', 'TamilNadu,India', 'breinardsamuelhp@gmail.com', 9080179826, 'Abc123!@#', 'uploads/63eb2f50951dc.png', '2022-12-28 09:18:13', '2023-02-14 06:50:56'),
(95, 'benjamin Gem', 'Nagercoil,Tamilnadu', 'benjamin.resbee@gmail.com', 1234567890, 'Abc123!@#', 'uploads/63a57e79b2eb4.png', '2022-12-29 04:28:29', '2022-12-29 04:28:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_comments`
--
ALTER TABLE `my_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `my_posts`
--
ALTER TABLE `my_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_comments`
--
ALTER TABLE `my_comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_posts`
--
ALTER TABLE `my_posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
