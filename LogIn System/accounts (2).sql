-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 10:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `time_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity`, `username`, `time_log`) VALUES
('Reset a Password', 'ADMIN', '2021-04-27 08:14:42'),
('Attempted Log in', 'ADMIN', '2021-04-27 08:15:04'),
('Attempted Log in', 'tests', '2021-04-27 08:28:16'),
('Success Log in', 'tests', '2021-04-27 08:28:28'),
('Attempted Log in', 'tests', '2021-04-27 08:33:43'),
('Success Log in', 'tests', '2021-04-27 08:33:56'),
('Attempted Log in', 'tests', '2021-04-27 08:47:31'),
('Success Log in', 'tests', '2021-04-27 08:47:36'),
('Logged out', 'tests', '2021-04-27 08:49:06'),
('Attempted Log in', 'ADMIN', '2021-04-27 08:50:35'),
('Success Log in', 'ADMIN', '2021-04-27 08:50:42'),
('Created an Account', 'Michelle', '2021-04-27 13:30:47'),
('Attempted Log in', 'Michelle', '2021-04-27 13:31:09'),
('Attempted Log in', 'Michelle', '2021-04-27 13:33:40'),
('Attempted Log in', 'Michelle', '2021-04-27 13:34:11'),
('Success Log in', 'Michelle', '2021-04-27 13:34:33'),
('Logged out', 'Michelle', '2021-04-27 13:34:38'),
('Attempted Log in', 'Michelle', '2021-04-27 13:34:58'),
('Success Log in', 'Michelle', '2021-04-27 13:35:09'),
('Logged out', 'Michelle', '2021-04-27 13:35:19'),
('Reset a Password', 'Michelle', '2021-04-27 13:41:19'),
('Attempted Log in', 'Michelle', '2021-04-27 13:41:31'),
('Success Log in', 'Michelle', '2021-04-27 13:41:41'),
('Logged out', 'Michelle', '2021-04-27 13:41:43'),
('Created an Account', 'ADMIN', '2021-04-27 13:48:16'),
('Attempted Log in', 'ADMIN', '2021-04-27 13:48:32'),
('Success Log in', 'ADMIN', '2021-04-27 13:48:41'),
('Logged out', 'ADMIN', '2021-04-27 13:48:43'),
('Reset a Password', 'ADMIN', '2021-04-27 13:51:52'),
('Attempted Log in', 'ADMIN', '2021-04-27 13:52:01'),
('Success Log in', 'ADMIN', '2021-04-27 13:52:09'),
('Logged out', 'ADMIN', '2021-04-27 13:52:10'),
('Attempted Log in', 'ADMIN', '2021-04-27 13:53:51'),
('Success Log in', 'ADMIN', '2021-04-27 13:53:59'),
('Logged out', 'ADMIN', '2021-04-27 13:54:01'),
('Created an Account', 'test', '2021-04-27 13:56:09'),
('Attempted Log in', 'test', '2021-04-27 13:56:21'),
('Success Log in', 'test', '2021-04-27 13:56:29'),
('Logged out', 'test', '2021-04-27 13:56:30'),
('Reset a Password', 'test', '2021-04-27 13:59:11'),
('Attempted Log in', 'test', '2021-04-27 13:59:20'),
('Attempted Log in', 'test', '2021-04-27 13:59:45'),
('Success Log in', 'test', '2021-04-27 13:59:56'),
('Logged out', 'test', '2021-04-27 13:59:57'),
('Created an Account', 'Mean', '2021-04-27 14:02:31'),
('Attempted Log in', 'Mean', '2021-04-27 14:02:41'),
('Attempted Log in', 'Mean', '2021-04-27 14:03:07'),
('Success Log in', 'Mean', '2021-04-27 14:03:18'),
('Logged out', 'Mean', '2021-04-27 14:03:19'),
('Reset a Password', 'Mean', '2021-04-27 14:26:21'),
('Attempted Log in', 'Mean', '2021-04-27 14:26:29'),
('Success Log in', 'Mean', '2021-04-27 14:26:39'),
('Logged out', 'Mean', '2021-04-27 14:26:40'),
('Attempted Log in', 'Mean', '2021-04-27 15:03:15'),
('Success Log in', 'Mean', '2021-04-27 15:03:51'),
('Logged out', 'Mean', '2021-04-27 15:03:57'),
('Attempted Log in', 'Mean', '2021-04-29 02:31:45'),
('Success Log in', 'Mean', '2021-04-29 02:31:55'),
('Logged out', 'Mean', '2021-04-29 03:14:07'),
('Attempted Log in', 'Mean', '2021-04-29 03:14:15'),
('Success Log in', 'Mean', '2021-04-29 03:14:23'),
('Logged out', 'Mean', '2021-04-29 03:24:00'),
('Attempted Log in', 'Mean', '2021-04-29 03:27:19'),
('Success Log in', 'Mean', '2021-04-29 03:27:28'),
('Logged out', 'Mean', '2021-04-29 03:27:32'),
('Attempted Log in', 'Mean', '2021-04-29 04:56:23'),
('Attempted Log in', 'Mean', '2021-04-29 05:02:23'),
('Success Log in', 'Mean', '2021-04-29 05:02:33'),
('Logged out', 'Mean', '2021-04-29 05:23:41'),
('Attempted Log in', 'Mean', '2021-04-29 05:24:06'),
('Success Log in', 'Mean', '2021-04-29 05:24:16'),
('Logged out', 'Mean', '2021-04-29 05:24:18'),
('Attempted Log in', 'Mean', '2021-04-29 05:42:43'),
('Success Log in', 'Mean', '2021-04-29 05:42:52'),
('Logged out', 'Mean', '2021-04-29 05:42:57'),
('Attempted Log in', 'Mean', '2021-04-29 05:46:58'),
('Success Log in', 'Mean', '2021-04-29 05:47:12'),
('Logged out', 'Mean', '2021-04-29 05:47:15'),
('Attempted Log in', 'Mean', '2021-04-29 05:47:38'),
('Success Log in', 'Mean', '2021-04-29 05:47:42'),
('Logged out', 'Mean', '2021-04-29 05:47:44'),
('Attempted Log in', 'Mean', '2021-04-29 05:47:52'),
('Created an Account', 'Michie', '2021-04-29 06:02:16'),
('Attempted Log in', 'Michie', '2021-04-29 06:02:42'),
('Success Log in', 'Michie', '2021-04-29 06:03:05'),
('Logged out', 'Michie', '2021-04-29 06:03:16'),
('Created an Account', 'Michelle Ann', '2021-04-29 06:07:13'),
('Attempted Log in', 'Michelle Ann', '2021-04-29 06:07:34'),
('Success Log in', 'Michelle Ann', '2021-04-29 06:08:08'),
('Logged out', 'Michelle Ann', '2021-04-29 06:08:24'),
('Reset a Password', 'Michelle Ann', '2021-04-29 06:14:00'),
('Attempted Log in', 'Michelle Ann', '2021-04-29 06:14:19'),
('Success Log in', 'Michelle Ann', '2021-04-29 06:14:40'),
('Logged out', 'Michelle Ann', '2021-04-29 06:14:52'),
('Attempted Log in', 'Michie', '2021-04-29 06:16:42'),
('Success Log in', 'Michie', '2021-04-29 06:16:54'),
('Logged out', 'Michie', '2021-04-29 06:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `date_auth`
--

CREATE TABLE `date_auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `time_added` datetime DEFAULT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `date_auth`
--

INSERT INTO `date_auth` (`id`, `user_id`, `code`, `time_added`, `expiration`) VALUES
(33, 6, 609681, '2021-04-27 21:31:09', '2021-04-27 21:36:09'),
(34, 6, 629288, '2021-04-27 21:33:40', '2021-04-27 21:38:40'),
(35, 6, 692307, '2021-04-27 21:34:11', '2021-04-27 21:39:11'),
(36, 6, 536449, '2021-04-27 21:34:58', '2021-04-27 21:39:58'),
(37, 6, 361547, '2021-04-27 21:41:31', '2021-04-27 21:46:31'),
(38, 7, 320626, '2021-04-27 21:48:32', '2021-04-27 21:53:32'),
(39, 7, 480321, '2021-04-27 21:52:00', '2021-04-27 21:57:00'),
(40, 7, 190283, '2021-04-27 21:53:51', '2021-04-27 21:58:51'),
(41, 8, 851083, '2021-04-27 21:56:21', '2021-04-27 22:01:21'),
(42, 8, 360041, '2021-04-27 21:59:20', '2021-04-27 22:04:20'),
(43, 8, 407179, '2021-04-27 21:59:45', '2021-04-27 22:04:45'),
(44, 9, 323496, '2021-04-27 22:02:41', '2021-04-27 22:07:41'),
(45, 9, 823525, '2021-04-27 22:03:06', '2021-04-27 22:08:06'),
(46, 9, 164187, '2021-04-27 22:26:29', '2021-04-27 22:31:29'),
(47, 9, 558183, '2021-04-27 23:03:15', '2021-04-27 23:08:15'),
(48, 9, 701111, '2021-04-29 10:31:44', '2021-04-29 10:36:44'),
(49, 9, 878683, '2021-04-29 11:14:15', '2021-04-29 11:19:15'),
(50, 9, 801405, '2021-04-29 11:27:19', '2021-04-29 11:32:19'),
(51, 9, 160658, '2021-04-29 12:56:23', '2021-04-29 13:01:23'),
(52, 9, 144359, '2021-04-29 13:02:23', '2021-04-29 13:07:23'),
(53, 9, 181907, '2021-04-29 13:24:06', '2021-04-29 13:29:06'),
(54, 9, 263397, '2021-04-29 13:42:43', '2021-04-29 13:47:43'),
(55, 9, 755596, '2021-04-29 13:46:58', '2021-04-29 13:51:58'),
(56, 9, 188471, '2021-04-29 13:47:38', '2021-04-29 13:52:38'),
(57, 9, 994169, '2021-04-29 13:47:52', '2021-04-29 13:52:52'),
(58, 10, 254388, '2021-04-29 14:02:42', '2021-04-29 14:07:42'),
(59, 11, 233022, '2021-04-29 14:07:34', '2021-04-29 14:12:34'),
(60, 11, 868041, '2021-04-29 14:14:19', '2021-04-29 14:19:19'),
(61, 10, 569186, '2021-04-29 14:16:42', '2021-04-29 14:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(6, 'Michelle', '$2y$10$.F21ushYP2oIMzVqj9CqyODHAAWh8CHnxyjp9nx.ICjDk/LAmhBTa', 'amistadmichelle5@gmail.com'),
(7, 'ADMIN', '$2y$10$s3.WYyMkTBFaFnUvhcHXsOh.hrN4H2F0RCnr/sOce4tGfYxSrT1Qi', ''),
(8, 'test', '$2y$10$QJZiQrskPhN2Kj3022.FQOOB7CODNIM8Gvg4YwPUgqvanF5mnhwKm', ''),
(9, 'Mean', '$2y$10$cJI4oOhKJlcI5UG.HsJa8eFYJJ3gH27kjz5ggusOIgXzSjvxN4FTC', 'Mean23@gmail.com'),
(10, 'Michie', '$2y$10$Is6H4OSmXe0mgb4wlrmlS.0aEel4kBE87DauR0oyOId3BYvrXSLgO', 'Michie05@gmail.com'),
(11, 'Michelle Ann', '$2y$10$.asqlxFP388.Wh6jJZPzAOGOQOrggqXl1vjRMIj8QpPh9Y1DbhRmu', 'MichelleAnn04@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `date_auth`
--
ALTER TABLE `date_auth`
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
-- AUTO_INCREMENT for table `date_auth`
--
ALTER TABLE `date_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
