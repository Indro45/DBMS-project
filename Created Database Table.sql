-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 07:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `fname` varchar(22) NOT NULL,
  `lname` varchar(22) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `cnum` int(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `pass` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `fname`, `lname`, `gender`, `cnum`, `address`, `email`, `pass`) VALUES
(7, 'Rahat', 'Hossain', 'Male', 1815324514, '1/2 Shahabagh, Dhaka', 'rahat44@gmail.com', 'rahat@45'),
(8, 'Indronil Dey', 'Niloy', 'Male', 1688546108, 'Dhaka', 'niloydhe23@gmail.com', 'niloy@45'),
(9, 'Polok', 'Saha', 'male', 1678214565, 'Dhaka', 'polok@gmail.com', 'polok@34'),
(10, 'Amhmudul', 'hasan', 'Male', 0, 'htyty', 'Niloydhe23@gmail.com', 'Indronil@45'),
(11, 'Rimjhim ', 'ghosh', 'female', 2147483647, 'bbb', 'rimjhim@gmai.com', 'rimjhim');

-- --------------------------------------------------------

--
-- Table structure for table `news_user`
--

CREATE TABLE `news_user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_user`
--

INSERT INTO `news_user` (`id`, `email`, `password`) VALUES
(1, 'Indronil45@gmail.com', 'Indronil@45'),
(2, 'iliyas32@gmail.com', 'iliyas@32'),
(3, 'arefin@67gmail.com', 'arefin@67'),
(4, 'ammarul89@gmail.com', 'ammarul@89'),
(5, 'sadia92@gmail.com', 'sadia@92'),
(6, 'nahori52@gmail.com', 'nahori@52');

-- --------------------------------------------------------

--
-- Table structure for table `new_post`
--

CREATE TABLE `new_post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(300) NOT NULL,
  `user_id` int(50) NOT NULL,
  `Amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_post`
--

INSERT INTO `new_post` (`id`, `title`, `content`, `user_id`, `Amount`) VALUES
(33, '01', 'Apple 10 kg', 1, ''),
(34, '02', 'rice 10 kg', 1, ''),
(35, '03', 'Tomato 10 kg', 1, ''),
(36, '01', 'Paddy 20 kg', 2, ''),
(37, '02', 'potato 10 kg', 2, ''),
(38, '03', 'mustartd 10 kg', 2, ''),
(39, '01', 'Pomegranate 15 kg\r\n', 3, ''),
(40, '02', 'corn 25 kg', 3, ''),
(41, '2002', 'jackfruit 3 pieces', 1, ''),
(42, '5002', 'mango 10 kg', 4, ''),
(43, '5002', 'mango 10 kg', 4, ''),
(44, '15', 'khgjyyfy', 1, ''),
(45, '2002', 'Apple 15 kg', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_user`
--
ALTER TABLE `news_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_post`
--
ALTER TABLE `new_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_user`
--
ALTER TABLE `news_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `new_post`
--
ALTER TABLE `new_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
