-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 03:06 AM
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
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(1, 5, 'z4uyg0', '2021-03-21 23:55:07', '2021-03-22 00:00:07'),
(2, 0, 'hilmxa', '2021-03-22 00:07:52', '2021-03-22 00:12:52'),
(3, 5, '21hm0i', '2021-03-22 00:10:53', '2021-03-22 00:15:53'),
(4, 5, 'ubnpvc', '2021-03-22 00:16:21', '2021-03-22 00:21:21'),
(5, 5, 'crilz1', '2021-03-22 00:52:48', '2021-03-22 00:57:48'),
(6, 0, '16wlqi', '2021-03-22 01:17:11', '2021-03-22 01:22:11'),
(7, 0, 'qe4yv5', '2021-03-22 01:22:21', '2021-03-22 01:27:21'),
(8, 0, 'ebn1jz', '2021-03-22 01:36:31', '2021-03-22 01:41:31'),
(9, 0, 'z9gm2h', '2021-03-22 01:40:07', '2021-03-22 01:45:07'),
(10, 0, 'r5cjxv', '2021-03-22 01:45:36', '2021-03-22 01:50:36'),
(11, 0, 'tspzuh', '2021-03-22 01:50:34', '2021-03-22 01:55:34'),
(12, 0, 'xgcv8n', '2021-03-22 08:31:29', '2021-03-22 08:36:29'),
(13, 0, '56t4sg', '2021-03-22 08:40:06', '2021-03-22 08:45:06'),
(14, 0, '48n3ks', '2021-03-22 09:00:56', '2021-03-22 09:05:56'),
(15, 0, 'mzre2l', '2021-03-22 09:08:29', '2021-03-22 09:13:29'),
(16, 0, 'wt4e7a', '2021-03-22 23:55:11', '2021-03-23 00:00:11'),
(17, 0, 'it168k', '2021-03-23 00:00:19', '2021-03-23 00:05:19'),
(18, 0, 'mztrqe', '2021-03-23 00:11:41', '2021-03-23 00:16:41'),
(19, 0, 'lf6iqj', '2021-03-23 00:15:23', '2021-03-23 00:20:23'),
(20, 0, 'wr7aif', '2021-03-23 00:20:47', '2021-03-23 00:25:47'),
(21, 0, 'f3oblk', '2021-03-23 00:27:00', '2021-03-23 00:32:00'),
(22, 0, 'qus1mg', '2021-03-23 00:41:44', '2021-03-23 00:46:44'),
(23, 0, 'ce3rs0', '2021-03-23 00:47:16', '2021-03-23 00:52:16'),
(24, 0, '3ka4di', '2021-03-23 00:54:12', '2021-03-23 00:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `created_at`) VALUES
(1, 'Michelle', 'Michelle1234', '', '2021-03-23 00:26:24'),
(5, 'ADMIN', 'ADMIN123', '', '2021-03-21 22:43:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
