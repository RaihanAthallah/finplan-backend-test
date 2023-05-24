-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 04:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finplan-backend-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `level`) VALUES
(1, 'Running', 8),
(2, 'Skipping', 5),
(3, 'Push Up', 10);

-- --------------------------------------------------------

--
-- Table structure for table `map_user_hobby`
--

CREATE TABLE `map_user_hobby` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_hobby` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map_user_hobby`
--

INSERT INTO `map_user_hobby` (`id`, `id_user`, `id_hobby`, `status`) VALUES
(1, 1, 1, 'active'),
(2, 3, 1, 'active'),
(3, 8, 3, 'deleted'),
(4, 2, 2, 'active'),
(5, 4, 1, 'deleted'),
(6, 6, 2, 'active'),
(7, 5, 3, 'active'),
(8, 8, 1, 'active'),
(9, 7, 2, 'active'),
(10, 4, 2, 'active'),
(11, 9, 3, 'deleted'),
(12, 10, 2, 'deleted'),
(13, 3, 2, 'active'),
(14, 2, 3, 'active'),
(15, 10, 2, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `status`) VALUES
(1, 'Frasch', 'F', 'active'),
(2, 'Garmuth', 'M', 'active'),
(3, 'Goliath', 'M', 'active'),
(4, 'Luna', 'F', 'active'),
(5, 'Zeus', 'M', 'active'),
(6, 'Aphrodite', 'F', 'active'),
(7, 'Ares', 'M', 'active'),
(8, 'Lina', 'F', 'active'),
(9, 'Lanaya', 'F', 'active'),
(10, 'Hades', 'M', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_user_hobby`
--
ALTER TABLE `map_user_hobby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hobby` (`id_hobby`),
  ADD KEY `index_table_map_user_hobby` (`id_user`,`id_hobby`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `map_user_hobby`
--
ALTER TABLE `map_user_hobby`
  ADD CONSTRAINT `map_user_hobby_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `map_user_hobby_ibfk_2` FOREIGN KEY (`id_hobby`) REFERENCES `hobbies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
