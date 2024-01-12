-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 03:53 AM
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
-- Database: `hitrack_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `lat` varchar(255) NOT NULL COMMENT 'ละติจูด',
  `lng` varchar(255) NOT NULL COMMENT 'ลองติจูด',
  `location_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันเวลาที่ส่งเข้ามา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `picture_tools`
--

CREATE TABLE `picture_tools` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ชื่อไฟล์รูปภาพ',
  `pic_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันเลาที่ส่งเข้ามา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสอุปกรณ์',
  `name` varchar(255) NOT NULL COMMENT 'ชื่อสัตว์เลี้ยง',
  `status` varchar(255) NOT NULL COMMENT 'สถานะของอุปกรณ์',
  `added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันเวลาที่เพิ่มอุปกรณ์',
  `img` varchar(255) NOT NULL COMMENT 'รูปภาพสัตว์เลี้ยง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสมาชิก',
  `name` varchar(255) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `email` varchar(255) NOT NULL COMMENT 'อีเมล',
  `password` varchar(255) NOT NULL COMMENT 'รหัสผ่าน',
  `urole` varchar(255) NOT NULL COMMENT 'สถานะ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันเวลที่ลงทะเบียน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `urole`, `created_at`) VALUES
(001, 'ball', 'ball@gmail.com', '$2y$10$EXgpgvna/5SBxipjKpZmV.BvcEN0ovYRa.NlhjUfivqdoWe4Ecl12', 'user', '2024-01-10 01:10:46'),
(002, 'chattrakarn', 'chattrakarn@gmail.com', '$2y$10$l3zB9T4YIQy7cmLhjotMZ.GETnKxs9NTnBCUXaWMuZMUm1YbeoaVm', 'admin', '2024-01-10 01:19:09'),
(003, 'test', 'chattrakarn911@gmail.com', '$2y$10$dtHcA5YtQY8Aqdcu1w.uWealX.q.tyMTJi7E2mWX.N6n3wqnRZHuG', 'user', '2024-01-10 01:40:43'),
(004, 'test3 ', 'asd@gmail.com', '$2y$10$QcYedqfcZJIhdiYH1hTk3OHg8t51LFtp6hnFA5DreQR0lTNvdhjcm', 'user', '2024-01-10 01:54:04'),
(005, 'admin', 'admin@gmail.com', '$2y$10$3FXB0WMxsPQLbH0UIlfwPuGW/kAXijjYYyGNcbX3MU4x5KwWgDabG', 'admin', '2024-01-12 00:52:51'),
(006, 'admin2', 'admin2@gmail.com', '$2y$10$aiWslbygBgNVjic9Dr2vB.Ddkswx483BgfZtCyj65/3fOpRJrE7H6', 'user', '2024-01-12 02:26:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture_tools`
--
ALTER TABLE `picture_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `picture_tools`
--
ALTER TABLE `picture_tools`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสอุปกรณ์';

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
