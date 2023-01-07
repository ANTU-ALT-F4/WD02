-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2023 at 10:37 AM
-- Server version: 5.7.39
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wd02_cities`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `country_code` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_code`, `district`, `population`) VALUES
(1, 'Los Angeles', 'USA', 'California', 3694820),
(2, 'Jining', 'CN', NULL, 1544000),
(3, 'Kaiyuan', 'CN', NULL, 299000),
(4, 'Yichun', 'CN', NULL, 598000),
(5, 'Depok', 'INDO', NULL, 2484),
(6, 'Guadalupe', 'MXC', NULL, 395700),
(7, 'La Paz', 'MXC', NULL, 789541),
(8, 'Matamoros', 'MXC', NULL, 322512),
(9, 'San Carlos', 'PHI', NULL, 2113),
(10, 'San Fernando', 'PHI', NULL, 21123),
(11, 'San Jose', 'PHI', NULL, 211243),
(12, 'Zeleznogorsk', 'RF', NULL, 21321),
(13, 'Arlington', 'USA', NULL, 1611565),
(14, 'Aurora', 'USA', NULL, 2313132),
(15, 'Columbus', 'USA', NULL, 23123132),
(16, 'Kansas City', 'USA', NULL, 3462),
(17, 'Richmond', 'USA', NULL, 1453),
(18, 'Springfield', 'USA', NULL, 14531),
(3793, 'New York', 'USA', 'New York', 8008278);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `code` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Continent` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `independece_year` int(11) NOT NULL,
  `population` int(11) NOT NULL,
  `gnp` float NOT NULL,
  `head_of_state` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`code`, `name`, `Continent`, `independece_year`, `population`, `gnp`, `head_of_state`) VALUES
('AFG', 'Afghanistan', 'Asia', 1919, 22720000, 5976, 'Mohammad Omar'),
('CN', 'China', 'Asia', 1949, 1, 27.06, 'Tập Cận Bình'),
('INDO', 'Indonesia', 'Asia', 1945, 274, 3.471, 'Joko Widodo'),
('MXC', 'Mexico', 'North America', 1810, 127, 2.502, 'Andrés Manuel López Obrador'),
('NLD', 'Netherlands', 'Europe', 1581, 15864000, 371362, 'Beatrix'),
('PHI', 'philippines', 'Asia', 1898, 114, 1.049, 'Bongbong Marcos'),
('RF', 'russia federation', 'Asia/Europe', 1991, 143, 4.678, 'Vladimir Vladimirovich Putin'),
('USA', 'United States', 'North America', 1776, 332, 23.39, 'Joe Biden');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `country_code` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Language` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `official` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`country_code`, `Language`, `official`, `percentage`) VALUES
('AFG', 'Pashto', 'T', 52.4),
('NLD', 'Dutch', 'T', 95.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`country_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`code`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
