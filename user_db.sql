-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 08:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `forconference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conference`
--

INSERT INTO `conference` (`id`, `name`, `email`, `forconference`) VALUES
(1, 'Pratham Matkar', 'fs20if005@gmail.com', ''),
(2, 'Rohit Mangale', 'prathammatkar2506@gmail.com', 'Conference1'),
(3, 'devarsh', 'prathammatkar2506@gmail.com', 'Seminar2'),
(4, 'Omkar Patil', 'formadpractical@gmail.com', 'Seminar1'),
(5, '', 'prathammatkar2506@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `multiple-images`
--

CREATE TABLE `multiple-images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(2500) NOT NULL,
  `image_createtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiple-images`
--

INSERT INTO `multiple-images` (`id`, `image_name`, `image_createtime`) VALUES
(52, 'wallpapersden.com_cool-4k-pattern_3840x2160.jpg', '2023-02-20 05:39:53'),
(53, 'rubiks-cube-digital-art-wallpaper.jpg', '2023-02-20 05:39:53'),
(54, 'INNOVATION CELL PROJECT (1).pdf', '2023-02-20 05:39:53'),
(55, 'rubiks-cube-digital-art-wallpaper-1676871488.jpg', '2023-02-20 06:38:08'),
(56, 'smartphone connected door lock.pdf', '2023-02-20 06:38:08'),
(57, 'rubiks-cube-digital-art-wallpaper-1676871513.jpg', '2023-02-20 06:38:33'),
(58, 'INNOVATION CELL PROJECT (1) (1).pdf', '2023-02-20 06:38:33'),
(59, 'rubiks-cube-digital-art-wallpaper-1676878048.jpg', '2023-02-20 08:27:28'),
(60, 'Shreeya Accomodation.pdf', '2023-02-20 08:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(1, 'prathammatkar2506@gmail.com'),
(2, 'formadpractical@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `projectcat` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `projectname`, `email`, `department`, `projectcat`, `institute`, `description`, `time`) VALUES
(22, 'Bill App', 'pratham@examole.com', 'IT', 'Applications', 'Government Polytechnic Mumbai', 'qwsdwqdsqwsd', '2023-02-20 12:57:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple-images`
--
ALTER TABLE `multiple-images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multiple-images`
--
ALTER TABLE `multiple-images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
