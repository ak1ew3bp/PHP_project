-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2025 at 08:20 AM
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
-- Database: `photo_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `folder_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `user_id`, `folder_name`, `description`) VALUES
(21, 4, 'one', 'Test project'),
(22, 4, 'Tryy', 'Phone testingh');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `folder_id`, `file_path`, `upload_time`) VALUES
(42, 21, 'uploads/4/one/good.jpg', '2025-04-21 07:46:47'),
(43, 21, 'uploads/4/one/goodsheets.webp', '2025-04-21 07:46:47'),
(44, 21, 'uploads/4/one/ako.jpg', '2025-04-21 07:46:47'),
(45, 21, 'uploads/4/one/robn.jpg', '2025-04-21 07:46:47'),
(46, 21, 'uploads/4/one/asa.jpg', '2025-04-21 07:46:47'),
(47, 22, 'uploads/4/Tryy/received_1186999449863602.jpeg', '2025-04-21 07:50:21'),
(48, 22, 'uploads/4/Tryy/received_690785096976852.jpeg', '2025-04-21 07:50:21'),
(49, 22, 'uploads/4/Tryy/received_1844398526345191.jpeg', '2025-04-21 07:50:21'),
(50, 22, 'uploads/4/Tryy/received_1220327689801279.jpeg', '2025-04-21 07:50:21'),
(51, 22, 'uploads/4/Tryy/received_1184272269897103.jpeg', '2025-04-21 07:50:21'),
(52, 22, 'uploads/4/Tryy/received_1336611007446152.jpeg', '2025-04-21 07:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','guest') DEFAULT 'guest'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'test', '$2y$10$qwaQmGN5CIqQilzxTujdM.f7GKBf1ImdZL85O9kthNDhHxGlq3irW', 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
