-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 05:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcofes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `name_city` varchar(225) NOT NULL,
  `image` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`name_city`, `image`) VALUES
('Gaza', 'upload/image_city/1738231219.jpg'),
('Jerusalem', 'upload/image_city/2165072360.jpg'),
('rafah', 'upload/image_city/2343503372.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cofe`
--

CREATE TABLE `cofe` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `city_name` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cofe`
--

INSERT INTO `cofe` (`id`, `name`, `address`, `phone_num`, `image`, `city_name`) VALUES
(50, 'bono', 'Palestin - Gaza', '+1111111111', 'upload/image_cofe/1736820686.jpg', 'Gaza'),
(51, 'zoom cafe', 'palestine Jerusalem', '+97254267945', 'upload/image_cofe/2321724524.jpg', 'Jerusalem'),
(52, 'mazagk here', 'palestine Jerusalem', '+9721548794', 'upload/image_cofe/2351410215.png', 'Jerusalem'),
(56, 'friend', 'khanyounes', '2154879836', 'upload/image_cofe/1855717931.jpeg', 'Gaza'),
(57, 'hi', 'Palestine  - Gaza', '0545456867', 'upload/image_cofe/1775349084.jpeg', 'Gaza'),
(58, 'roro', 'Palestine  - Gaza', '2143234234', 'upload/image_cofe/2260297976.jpg', 'rafah');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rate` double(2,1) NOT NULL,
  `current_timeDate` varchar(255) DEFAULT NULL,
  `cofe_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `rate`, `current_timeDate`, `cofe_name`) VALUES
(64, 4.0, '2022-05-13 01:58:28', 'Gaza'),
(65, 3.0, '2022-05-15 18:45:15', 'Jerusalem'),
(66, 3.0, '2022-05-15 18:56:15', 'Jerusalem'),
(67, 1.0, '2022-05-15 18:56:20', 'Gaza'),
(68, 3.0, '2022-05-15 19:26:29', 'Jerusalem'),
(69, 3.0, '2022-05-15 19:39:14', 'Gaza'),
(70, 3.0, '2022-05-15 19:39:59', 'Jerusalem'),
(71, 3.0, '2022-05-21 13:29:43', 'Gaza'),
(72, 3.0, '2022-05-26 17:34:02', 'rafah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(4, 'yara', 'c8837b23ff8aaa8a2dde915473ce0991'),
(5, 'yara', '4297f44b13955235245b2497399d7a93');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`name_city`);

--
-- Indexes for table `cofe`
--
ALTER TABLE `cofe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
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
-- AUTO_INCREMENT for table `cofe`
--
ALTER TABLE `cofe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
