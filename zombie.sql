-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2024 at 07:45 PM
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
-- Database: `zombie`
--

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id` int NOT NULL,
  `zombie_id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `zombie_id`, `name`) VALUES
(1, 1, 'Kirvis'),
(2, 2, 'Peilis'),
(3, 3, 'Kuoka'),
(4, 4, 'Dantys'),
(5, 5, 'Granata'),
(6, 6, 'Adata'),
(7, 7, 'Kalavijas');

-- --------------------------------------------------------

--
-- Table structure for table `zombies`
--

CREATE TABLE `zombies` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `strength` varchar(100) DEFAULT NULL,
  `health` varchar(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `zombies`
--

INSERT INTO `zombies` (`id`, `name`, `strength`, `health`, `updated_at`, `created_at`) VALUES
(1, 'Putinas', 'Almost dead', NULL, '2024-02-17 13:11:47', '2024-02-17 13:11:47'),
(2, 'Souigu', 'Dead', 51, '2024-02-18 07:08:08', '2024-02-18 07:08:08'),
(3, 'Gerasimov', 'Strong', '66', '2024-02-18 07:08:55', '2024-02-18 07:08:55'),
(4, 'Ork', 'Strong', 4, '2024-02-18 07:10:21', '2024-02-18 07:10:21'),
(5, 'lowewrcase', 'Dead', 55, '2024-02-18 07:13:22', '2024-02-18 07:13:22'),
(6, 'mazosraidesDu', 'Dead', '33', '2024-02-18 07:14:41', '2024-02-18 07:14:41'),
(7, 'tIKPIRMAMAZA', 'Strong', '1', '2024-02-18 07:37:58', '2024-02-18 07:37:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zombies`
--
ALTER TABLE `zombies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zombies`
--
ALTER TABLE `zombies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `zombie_id` FOREIGN KEY (`id`) REFERENCES `zombies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
