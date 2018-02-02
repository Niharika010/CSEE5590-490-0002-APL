-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2018 at 12:04 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `semester_id`, `name`) VALUES
(1, 1, 'Computers'),
(2, 1, 'Law'),
(3, 2, 'Computer'),
(4, 2, 'Law'),
(5, 3, 'Computer'),
(6, 4, 'Law'),
(7, 3, 'Law'),
(8, 4, 'Computers');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `career` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `credit_hours` int(11) NOT NULL DEFAULT '2',
  `duration` int(11) NOT NULL DEFAULT '6',
  `seats_taken` int(11) NOT NULL DEFAULT '0',
  `seats_total` int(11) NOT NULL DEFAULT '30',
  `image` varchar(500) NOT NULL DEFAULT 'http://via.placeholder.com/100x50'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `career`, `description`, `credit_hours`, `duration`, `seats_taken`, `seats_total`, `image`) VALUES
(1, 'PHP', 1, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(2, 'SQL', 1, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(3, 'SQL', 2, 'SQL Course for beginers', 2, 6, 2, 30, 'http://via.placeholder.com/100x50'),
(4, 'SQL', 3, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(5, 'SQL', 4, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(6, 'SQL', 5, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(7, 'SQL', 6, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(8, 'SQL', 7, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(9, 'SQL', 8, 'SQL Course for beginers', 2, 6, 0, 30, 'http://via.placeholder.com/100x50'),
(10, 'PHP', 2, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(11, 'PHP', 3, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(12, 'PHP', 4, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(13, 'PHP', 5, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(14, 'PHP', 6, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(15, 'PHP', 7, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50'),
(16, 'PHP', 8, 'PHP Course for Beginers', 2, 6, 3, 30, 'http://via.placeholder.com/100x50');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`) VALUES
(1, 'Bachlors'),
(2, 'Masters');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `education_id`, `name`) VALUES
(1, 1, 'Spring'),
(2, 1, 'Fall'),
(3, 2, 'Spring'),
(4, 2, 'Fall');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career` (`career`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_id` (`education_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `career`
--
ALTER TABLE `career`
  ADD CONSTRAINT `career_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`career`) REFERENCES `career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `e` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
