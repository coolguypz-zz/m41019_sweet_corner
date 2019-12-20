-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2019 at 03:34 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--
CREATE DATABASE IF NOT EXISTS `sweet_corner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_corner`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) DEFAULT NULL,
  `statusId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED DEFAULT NULL,
  `lastInteraction` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `statusId`, `userId`, `lastInteraction`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'b79cf61e-17e5-11ea-9f76-0242ac120002', 2, NULL, '2019-12-06 05:03:18', '2019-12-06 05:03:18', '2019-12-06 05:03:18', NULL),
(2, '12ab835e-1bc8-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:41:10', '2019-12-11 03:41:10', '2019-12-11 03:41:10', NULL),
(3, 'c84f7aeb-1bc8-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:46:15', '2019-12-11 03:46:15', '2019-12-11 03:46:15', NULL),
(4, 'd8818aad-1bc8-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:46:42', '2019-12-11 03:46:42', '2019-12-11 03:46:42', NULL),
(5, 'f66865cb-1bc8-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:47:32', '2019-12-11 03:47:32', '2019-12-11 03:47:32', NULL),
(6, '5e4fe9ce-1bc9-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:50:27', '2019-12-11 03:50:27', '2019-12-11 03:50:27', NULL),
(7, '619bdbcf-1bc9-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 03:50:32', '2019-12-11 03:50:32', '2019-12-11 03:50:32', NULL),
(8, 'a81964bf-1bcc-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 04:13:59', '2019-12-11 04:13:59', '2019-12-11 04:13:59', NULL),
(9, '1b981b68-1bcd-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 04:17:13', '2019-12-11 04:17:13', '2019-12-11 04:17:13', NULL),
(10, '55f793a4-1bd2-11ea-8485-0242ac120002', 2, NULL, '2019-12-11 04:54:38', '2019-12-11 04:54:38', '2019-12-11 04:54:38', NULL),
(11, 'b697c9a1-1d50-11ea-8653-0242ac120002', 2, NULL, '2019-12-13 02:31:48', '2019-12-13 02:31:48', '2019-12-13 02:31:48', NULL),
(12, 'cdbd09dc-1d50-11ea-8653-0242ac120002', 2, NULL, '2019-12-13 02:32:27', '2019-12-13 02:32:27', '2019-12-13 02:32:27', NULL),
(13, '5d3e5c7e-1d59-11ea-8653-0242ac120002', 2, NULL, '2019-12-13 03:33:44', '2019-12-13 03:33:44', '2019-12-13 03:33:44', NULL),
(14, 'e0338ae7-21bf-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 17:57:37', '2019-12-18 17:57:37', '2019-12-18 17:57:37', NULL),
(15, 'd7f12c86-21d2-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:13:23', '2019-12-18 20:13:23', '2019-12-18 20:13:23', NULL),
(16, 'd7f337a3-21d2-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:13:23', '2019-12-18 20:13:23', '2019-12-18 20:13:23', NULL),
(17, 'fc52084f-21d3-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:21:34', '2019-12-18 20:21:34', '2019-12-18 20:21:34', NULL),
(18, 'fc53aa54-21d3-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:21:34', '2019-12-18 20:21:34', '2019-12-18 20:21:34', NULL),
(19, 'a1341263-21d4-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:26:10', '2019-12-18 20:26:10', '2019-12-18 20:26:10', NULL),
(20, 'a135393f-21d4-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:26:10', '2019-12-18 20:26:10', '2019-12-18 20:26:10', NULL),
(21, '7ddc5b65-21d5-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:32:21', '2019-12-18 20:32:21', '2019-12-18 20:32:21', NULL),
(22, '7dddcd1f-21d5-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:32:21', '2019-12-18 20:32:21', '2019-12-18 20:32:21', NULL),
(23, '377f500f-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:37:32', '2019-12-18 20:37:32', '2019-12-18 20:37:32', NULL),
(24, '37809a7b-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:37:32', '2019-12-18 20:37:32', '2019-12-18 20:37:32', NULL),
(25, '8be0a60b-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:39:54', '2019-12-18 20:39:54', '2019-12-18 20:39:54', NULL),
(26, '8be2628c-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:39:54', '2019-12-18 20:39:54', '2019-12-18 20:39:54', NULL),
(27, '94404c87-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:40:08', '2019-12-18 20:40:08', '2019-12-18 20:40:08', NULL),
(28, '944147fa-21d6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:40:08', '2019-12-18 20:40:08', '2019-12-18 20:40:08', NULL),
(29, '7eb13aa1-21d8-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:53:51', '2019-12-18 20:53:51', '2019-12-18 20:53:51', NULL),
(30, '7eb2d1bf-21d8-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 20:53:51', '2019-12-18 20:53:51', '2019-12-18 20:53:51', NULL),
(31, '3cedb3eb-21e6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 22:32:13', '2019-12-18 22:32:13', '2019-12-18 22:32:13', NULL),
(32, '3cf29840-21e6-11ea-8653-0242ac120002', 2, NULL, '2019-12-18 22:32:13', '2019-12-18 22:32:13', '2019-12-18 22:32:13', NULL),
(33, '24be9925-21ff-11ea-8653-0242ac120002', 2, NULL, '2019-12-19 01:30:30', '2019-12-19 01:30:30', '2019-12-19 01:30:30', NULL),
(34, '24bfd86c-21ff-11ea-8653-0242ac120002', 2, NULL, '2019-12-19 01:30:30', '2019-12-19 01:30:30', '2019-12-19 01:30:30', NULL),
(35, '820a8ffc-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:17', '2019-12-20 01:03:17', '2019-12-20 01:03:17', NULL),
(36, '820c9416-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:17', '2019-12-20 01:03:17', '2019-12-20 01:03:17', NULL),
(37, '860ae9b4-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:24', '2019-12-20 01:03:24', '2019-12-20 01:03:24', NULL),
(38, '860c1d49-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:24', '2019-12-20 01:03:24', '2019-12-20 01:03:24', NULL),
(39, '9ae93df7-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:59', '2019-12-20 01:03:59', '2019-12-20 01:03:59', NULL),
(40, '9aeacf40-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:03:59', '2019-12-20 01:03:59', '2019-12-20 01:03:59', NULL),
(41, 'e15164f6-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:05:57', '2019-12-20 01:05:57', '2019-12-20 01:05:57', NULL),
(42, 'e1534a27-22c4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:05:57', '2019-12-20 01:05:57', '2019-12-20 01:05:57', NULL),
(43, '0d159718-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:07:11', '2019-12-20 01:07:11', '2019-12-20 01:07:11', NULL),
(44, '0d17079a-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:07:11', '2019-12-20 01:07:11', '2019-12-20 01:07:11', NULL),
(45, '41605f6e-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:08:38', '2019-12-20 01:08:38', '2019-12-20 01:08:38', NULL),
(46, '41620d1b-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:08:38', '2019-12-20 01:08:38', '2019-12-20 01:08:38', NULL),
(47, '986821d3-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:11:04', '2019-12-20 01:11:04', '2019-12-20 01:11:04', NULL),
(48, '98696301-22c5-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:11:04', '2019-12-20 01:11:04', '2019-12-20 01:11:04', NULL),
(49, '67f0d882-22c6-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:16:53', '2019-12-20 01:16:53', '2019-12-20 01:16:53', NULL),
(50, '67f2016a-22c6-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:16:53', '2019-12-20 01:16:53', '2019-12-20 01:16:53', NULL),
(51, 'af4ee419-22c6-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:18:52', '2019-12-20 01:18:52', '2019-12-20 01:18:52', NULL),
(52, 'af4f8195-22c6-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:18:52', '2019-12-20 01:18:52', '2019-12-20 01:18:52', NULL),
(53, 'f1988b87-22c8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:35:03', '2019-12-20 01:35:03', '2019-12-20 01:35:03', NULL),
(54, 'f19a1685-22c8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:35:03', '2019-12-20 01:35:03', '2019-12-20 01:35:03', NULL),
(55, '7d93b9f3-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:38:57', '2019-12-20 01:38:57', '2019-12-20 01:38:57', NULL),
(56, '7d950cae-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:38:57', '2019-12-20 01:38:57', '2019-12-20 01:38:57', NULL),
(57, '9f8e14e7-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:39:54', '2019-12-20 01:39:54', '2019-12-20 01:39:54', NULL),
(58, '9f8ef05f-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:39:54', '2019-12-20 01:39:54', '2019-12-20 01:39:54', NULL),
(59, 'da17d5bc-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:41:33', '2019-12-20 01:41:33', '2019-12-20 01:41:33', NULL),
(60, 'da196168-22c9-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:41:33', '2019-12-20 01:41:33', '2019-12-20 01:41:33', NULL),
(61, '0a44d666-22ca-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:42:53', '2019-12-20 01:42:53', '2019-12-20 01:42:53', NULL),
(62, '0a4647c1-22ca-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:42:53', '2019-12-20 01:42:53', '2019-12-20 01:42:53', NULL),
(63, '1f1656bc-22ca-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:43:28', '2019-12-20 01:43:28', '2019-12-20 01:43:28', NULL),
(64, '1f179a52-22ca-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 01:43:28', '2019-12-20 01:43:28', '2019-12-20 01:43:28', NULL),
(65, '4a500165-22d4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 02:56:16', '2019-12-20 02:56:16', '2019-12-20 02:56:16', NULL),
(66, '4a514a7b-22d4-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 02:56:16', '2019-12-20 02:56:16', '2019-12-20 02:56:16', NULL),
(67, '407e7a5b-22d8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 03:24:37', '2019-12-20 03:24:37', '2019-12-20 03:24:37', NULL),
(68, '408062b6-22d8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 03:24:37', '2019-12-20 03:24:37', '2019-12-20 03:24:37', NULL),
(69, 'a7409e8c-22d8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 03:27:30', '2019-12-20 03:27:30', '2019-12-20 03:27:30', NULL),
(70, 'a741efaf-22d8-11ea-8ae8-0242ac120002', 2, NULL, '2019-12-20 03:27:30', '2019-12-20 03:27:30', '2019-12-20 03:27:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

CREATE TABLE `cartItems` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) DEFAULT NULL,
  `cartId` int(11) UNSIGNED DEFAULT NULL,
  `productId` int(11) UNSIGNED DEFAULT NULL,
  `quantity` int(11) UNSIGNED DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `pid`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1b993bbb-1bcd-11ea-8485-0242ac120002', 9, 1, 1, '2019-12-11 04:17:13', '2019-12-11 04:17:13', NULL),
(2, '55f9454e-1bd2-11ea-8485-0242ac120002', 10, 1, 10, '2019-12-11 04:54:38', '2019-12-20 01:07:49', NULL),
(3, 'b699bb16-1d50-11ea-8653-0242ac120002', 11, 1, 1, '2019-12-13 02:31:48', '2019-12-13 02:31:48', NULL),
(4, 'cdbe22ef-1d50-11ea-8653-0242ac120002', 12, 1, 1, '2019-12-13 02:32:27', '2019-12-13 02:32:27', NULL),
(5, '5d404f21-1d59-11ea-8653-0242ac120002', 13, 1, 1, '2019-12-13 03:33:44', '2019-12-13 03:33:44', NULL),
(6, '8c51b2c4-1d5c-11ea-8653-0242ac120002', 12, 6, 18, '2019-12-13 03:56:31', '2019-12-13 05:05:53', NULL),
(7, 'e03506a7-21bf-11ea-8653-0242ac120002', 14, 1, 1, '2019-12-18 17:57:37', '2019-12-18 17:57:37', NULL),
(8, 'd7f4dcef-21d2-11ea-8653-0242ac120002', 16, 2, 1, '2019-12-18 20:13:23', '2019-12-18 20:13:23', NULL),
(9, 'fc545fb8-21d3-11ea-8653-0242ac120002', 18, 5, 1, '2019-12-18 20:21:34', '2019-12-18 20:21:34', NULL),
(10, 'a1360b71-21d4-11ea-8653-0242ac120002', 20, 2, 1, '2019-12-18 20:26:10', '2019-12-18 20:26:10', NULL),
(11, '7ddeee50-21d5-11ea-8653-0242ac120002', 22, 2, 1, '2019-12-18 20:32:21', '2019-12-18 20:32:21', NULL),
(12, '378191d5-21d6-11ea-8653-0242ac120002', 24, 2, 1, '2019-12-18 20:37:32', '2019-12-18 20:37:32', NULL),
(13, '416e43ef-21d6-11ea-8653-0242ac120002', 24, 3, 1, '2019-12-18 20:37:49', '2019-12-18 20:37:49', NULL),
(14, '8be379e1-21d6-11ea-8653-0242ac120002', 26, 2, 1, '2019-12-18 20:39:54', '2019-12-18 20:39:54', NULL),
(15, '9441ba84-21d6-11ea-8653-0242ac120002', 28, 3, 1, '2019-12-18 20:40:08', '2019-12-18 20:40:08', NULL),
(16, '7eb3af49-21d8-11ea-8653-0242ac120002', 30, 2, 5, '2019-12-18 20:53:51', '2019-12-19 22:31:48', NULL),
(17, '3cf492ea-21e6-11ea-8653-0242ac120002', 32, 1, 1, '2019-12-18 22:32:13', '2019-12-18 22:32:13', NULL),
(18, '8170ccc2-21e6-11ea-8653-0242ac120002', 30, 8, 4, '2019-12-18 22:34:08', '2019-12-19 22:32:15', NULL),
(19, '14b2e7bc-21e7-11ea-8653-0242ac120002', 30, 4, 4, '2019-12-18 22:38:15', '2019-12-19 22:32:53', NULL),
(20, '4060358b-21ee-11ea-8653-0242ac120002', 30, 7, 5, '2019-12-18 23:29:35', '2019-12-19 22:31:54', NULL),
(21, '7a0af0e5-21ee-11ea-8653-0242ac120002', 30, 9, 6, '2019-12-18 23:31:12', '2019-12-19 22:30:44', NULL),
(97, '9f8fa1d3-22c9-11ea-8ae8-0242ac120002', 58, 8, 3, '2019-12-20 01:39:54', '2019-12-20 01:40:09', NULL),
(98, 'a65ab75d-22c9-11ea-8ae8-0242ac120002', 58, 7, 2, '2019-12-20 01:40:06', '2019-12-20 01:40:06', NULL),
(99, 'da1a2c43-22c9-11ea-8ae8-0242ac120002', 60, 5, 2, '2019-12-20 01:41:33', '2019-12-20 01:41:41', NULL),
(100, 'dd33e2a6-22c9-11ea-8ae8-0242ac120002', 60, 7, 3, '2019-12-20 01:41:38', '2019-12-20 01:41:45', NULL),
(101, '0a474917-22ca-11ea-8ae8-0242ac120002', 62, 5, 1, '2019-12-20 01:42:53', '2019-12-20 01:42:53', NULL),
(102, '1f1965bd-22ca-11ea-8ae8-0242ac120002', 64, 1, 1, '2019-12-20 01:43:28', '2019-12-20 01:43:28', NULL),
(103, '4a527b66-22d4-11ea-8ae8-0242ac120002', 66, 2, 1, '2019-12-20 02:56:16', '2019-12-20 02:56:22', NULL),
(104, '40817dd1-22d8-11ea-8ae8-0242ac120002', 68, 2, 1, '2019-12-20 03:24:37', '2019-12-20 03:24:37', NULL),
(105, 'a742fca5-22d8-11ea-8ae8-0242ac120002', 70, 2, 3, '2019-12-20 03:27:30', '2019-12-20 03:27:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

CREATE TABLE `cartStatuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `mid` varchar(39) DEFAULT NULL,
  `name` varchar(63) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartStatuses`
--

INSERT INTO `cartStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'new', 'New', 'Cart is new and empty', '2019-12-06 04:49:25', '2019-12-06 04:49:25', NULL),
(2, 'active', 'Active', 'Cart has items but the order has not been completed', '2019-12-06 04:49:25', '2019-12-06 04:49:25', NULL),
(3, 'closed', 'Closed', 'The order has been completed and the cart is closed', '2019-12-06 04:49:25', '2019-12-06 04:49:25', NULL),
(4, 'canceled', 'Canceled', 'The order has been canceled and the cart is closed', '2019-12-06 04:49:25', '2019-12-06 04:49:25', NULL),
(5, 'inactive', 'Inactive', 'Cart is no longer the currently active cart, but can be reactivated', '2019-12-06 04:49:25', '2019-12-06 04:49:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) DEFAULT NULL,
  `firstName` varchar(127) DEFAULT NULL,
  `lastName` varchar(127) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastAccessedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `pid`, `firstName`, `lastName`, `email`, `lastAccessedAt`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(12, '0417a861-22b7-11ea-8ae8-0242ac120002', 'July', 'Zhang', 'july@gmail.com', '2019-12-19 23:26:43', '2019-12-19 23:26:43', '2019-12-19 23:26:43', NULL),
(14, '7a13bd21-22c2-11ea-8ae8-0242ac120002', 'June', 'chang', 'june@gmail.com', '2019-12-20 00:48:45', '2019-12-20 00:48:45', '2019-12-20 00:48:45', NULL),
(15, '0d70fa62-22ca-11ea-8ae8-0242ac120002', 'peter', 'zhang', 'developerjr86@gmail.com', '2019-12-20 01:42:59', '2019-12-20 01:42:59', '2019-12-20 01:42:59', NULL),
(24, '7b107d70-22d5-11ea-8ae8-0242ac120002', 'April', 'hang', 'April@gmail.com', '2019-12-20 03:04:47', '2019-12-20 03:04:47', '2019-12-20 03:04:47', NULL),
(25, 'c0fcb848-22d5-11ea-8ae8-0242ac120002', 'peter', 'hang', 'April@gmail.com', '2019-12-20 03:06:44', '2019-12-20 03:06:44', '2019-12-20 03:06:44', NULL),
(26, '9157306e-22d6-11ea-8ae8-0242ac120002', 'July', 'zhang', 'April@gmail.com', '2019-12-20 03:12:34', '2019-12-20 03:12:34', '2019-12-20 03:12:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `createdById` int(10) DEFAULT NULL,
  `altText` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('full_image','thumbnail') NOT NULL DEFAULT 'full_image',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `productId`, `createdById`, `altText`, `name`, `file`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '76d5550e-178e-11ea-9f76-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(2, '76d5577b-178e-11ea-9f76-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(3, '76d5e17c-178e-11ea-9f76-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(4, '76d5e33a-178e-11ea-9f76-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(5, '76d5eb3e-178e-11ea-9f76-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(6, '76d5ef0b-178e-11ea-9f76-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(7, '76d5efc2-178e-11ea-9f76-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(8, '76d5f072-178e-11ea-9f76-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(9, '76d5f172-178e-11ea-9f76-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(10, '76d5f271-178e-11ea-9f76-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(11, '76d5f369-178e-11ea-9f76-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(12, '76d5f461-178e-11ea-9f76-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(13, '76d5f55f-178e-11ea-9f76-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(14, '76d5f660-178e-11ea-9f76-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(15, '76d5f760-178e-11ea-9f76-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(16, '76d5f857-178e-11ea-9f76-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(17, '76d5f951-178e-11ea-9f76-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'full_image', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL),
(18, '76d5fa4f-178e-11ea-9f76-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'thumbnail', '2019-12-05 18:38:43', '2019-12-05 18:38:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderItems`
--

CREATE TABLE `orderItems` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `orderId` int(11) UNSIGNED NOT NULL,
  `each` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) DEFAULT NULL,
  `cartId` int(11) UNSIGNED DEFAULT NULL,
  `guestId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED DEFAULT NULL,
  `statusId` int(11) UNSIGNED DEFAULT NULL,
  `itemCount` int(11) UNSIGNED DEFAULT NULL,
  `total` int(11) UNSIGNED DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderStatuses`
--

CREATE TABLE `orderStatuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` int(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `createdById` int(11) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cost` int(11) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `dairy` varchar(255) NOT NULL,
  `gluten` varchar(255) NOT NULL,
  `nuts` varchar(255) NOT NULL,
  `carbs` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `sugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `createdById`, `caption`, `cost`, `description`, `name`, `createdAt`, `updatedAt`, `deletedAt`, `dairy`, `gluten`, `nuts`, `carbs`, `fat`, `sugar`) VALUES
(1, '8b242404-178f-11ea-9f76-0242ac120002', 1, 'Delicious Strawberry Cupcake', 350, 'These strawberry delights will satisfy both your sweet tooth and those strawberry cravings.', 'Strawberry Delight', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`true`', '`true`', '`false`', 200, 100, 130),
(2, '8b242a2e-178f-11ea-9f76-0242ac120002', 1, 'Sweet Berry Cupcake', 200, 'This is the berry cupcake of your dreams, they may be small but pack huge flavor.', 'Purple Dream', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`false`', '`true`', '`true`', 220, 200, 150),
(3, '8b242dc2-178f-11ea-9f76-0242ac120002', 1, 'Mini Strawberry Cupcake', 225, 'These are a miniature version of our famous Strawberry Delight cupcakes, all the flavor, half the guilt.', 'Mini Berry', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`false`', '`true`', '`true`', 220, 100, 100),
(4, '8b242f92-178f-11ea-9f76-0242ac120002', 1, 'Unicorn Tear Sparkling Cupcake', 650, 'What do unicorn tears taste like? We don\'t know, but we do know these cupcakes taste better!', 'Unicorn Tear', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`true`', '`true`', '`false`', 180, 150, 80),
(5, '8b24311b-178f-11ea-9f76-0242ac120002', 1, 'Red and Yellow Rose Vanilla Cupcake', 575, 'Delightful vanilla cupcakes with rose frosting piled high on top.', 'Pearl Rose', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`true`', '`false`', '`true`', 200, 300, 100),
(6, '8b2432c1-178f-11ea-9f76-0242ac120002', 1, 'Silky Red Cupcake Loaded with Frosting', 350, 'A vanilla cupcake with strawberry silk frosting eloquently piled high with a peach topping.', 'Red Silk', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`true` ', '`true`', '`true`', 300, 200, 150),
(7, '8b24344a-178f-11ea-9f76-0242ac120002', 1, 'Vanilla Cupcake Piled with Vanilla Frosting', 600, 'Not just another vanilla cupcake. Our Vanilla Stack Cake cupcake is stacked with three scoops of vanilla frosting and topped with drizzled vanilla and a delicious cherry.', 'Vanilla Stack Cake', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`true`', '`true`', '`false`', 80, 120, 80),
(8, '8b24361f-178f-11ea-9f76-0242ac120002', 1, 'Blueberry Cupcake Piled High with Toppings', 775, 'A large blueberry cupcake topped with blueberry frosting, chocolate syrup, whip cream, and a sweet cherry. Looks and taste like your favorite blueberry malt.', 'Blueberry Malt Cake', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`false`', '`false`', '`true`', 230, 120, 100),
(9, '8b2437ca-178f-11ea-9f76-0242ac120002', 1, 'Lemon Cupcake with Piled High Lemon Frosting', 450, 'Lemon, lemon, and more lemon! Love lemon? So do we and our Double Lemon cupcake proves it!', 'Double Lemon', '2019-12-05 18:46:27', '2019-12-05 18:46:27', NULL, '`false`', '`false`', '`true`', 160, 120, 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `roleId` int(11) UNSIGNED NOT NULL,
  `firstName` varchar(127) NOT NULL,
  `lastName` varchar(127) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `lastAccessedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderItems`
--
ALTER TABLE `orderItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderStatuses`
--
ALTER TABLE `orderStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orderItems`
--
ALTER TABLE `orderItems`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orderStatuses`
--
ALTER TABLE `orderStatuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;