-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 10:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'Mr.', 'Abdul', 'Hamid', '123456', 'mr.hamid@gmail.com', '12345678', 'p.jpg'),
(2, 'Nobonita', 'Das', 'Nobonita', '111111', 'nobonita@gmail.com', '012345678', '4881.jpg'),
(3, 'Mr.', 'X', 'X', '222222', 'samiarahman@gmail.com', '133446557', 'p.jpg'),
(4, 'Sakura', 'Haruno', 'Admin', '12345', 'sakura@gmail.com', '8787988767', '7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(2, 'The Complete Reference C++', 'Herbert Schildt', '4th', 'Available', 4, 'CSE'),
(3, 'Data Structure', 'Seymour Lipschutz', '4th', 'Available', 4, 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(5, 'Promi', 'hello!'),
(16, 'Afifa', 'There is no books of ETE department.When will it be available?'),
(17, 'Admin', 'Hi! which book do you need Afifa. Please let us know.'),
(18, '', 'hello! '),
(19, 'Promi', 'Hi! which book do you need Afifa. Please let us know.'),
(20, 'Admin', 'i am Akash'),
(21, 'Admin', 'your admin'),
(22, '', 'hello'),
(23, 'akash_is_best', 'i am Akash'),
(24, 'akash_is_best', 'i am Akash'),
(25, 'akash_is_best', ''),
(26, 'akash_is_best', 'hello'),
(27, 'akash_is_best', 'your admin'),
(28, 'akash_is_best', 'khatam'),
(29, 'akash_is_best', 'tata bye bye'),
(30, 'akash_is_best', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) VALUES
('Promi', 1, '2019-05-21', 31, 3.1, 'not paid'),
('Afifa', 1, '2019-05-21', 1, 0.1, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('Promi', 3, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '2019-04-22', '2019-05-16'),
('Promi', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-03-20', '2019-04-20'),
('Promi', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-01-30', '2019-02-28'),
('Afifa', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-04-20', '2019-05-20'),
('Afifa', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-02-20', '2019-02-10'),
('Afifa', 1, '', '', ''),
('akash_is_best', 1, '', '', ''),
('akash_is_best', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1130031676, 893417872, 'i am akash'),
(2, 893417872, 1130031676, 'yes you are.'),
(3, 893417872, 1130031676, 'but who am I?'),
(4, 893417872, 891014508, 'i am saksham'),
(5, 891014508, 1130031676, 'hello can u give me yashwant kanetkar'),
(6, 891014508, 1130031676, 'thank u for issueing books'),
(7, 12345678, 506172258, 'kya hai bro?'),
(8, 893417872, 1130031676, 'can you give me a let us c by y kanetkar book?'),
(9, 1498441405, 143811205, 'hello akash'),
(10, 1130031676, 143811205, 'hello akash'),
(11, 143811205, 1130031676, 'can u issue book c for dummies'),
(12, 1130031676, 143811205, 'yes I am'),
(13, 143811205, 1130031676, 'thank u ma\'am'),
(14, 743702868, 891014508, 'hello ma\'am'),
(15, 143811205, 1130031676, 'can u provide my project report');

-- --------------------------------------------------------

--
-- Table structure for table `onlinebooks`
--

CREATE TABLE `onlinebooks` (
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT 'link not available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinebooks`
--

INSERT INTO `onlinebooks` (`name`, `authors`, `edition`, `department`, `link`) VALUES
('let us c', 'h sharma', '8th', 'CSE', '5_6262469471877726506.pdf'),
('hk das', 'Saksham Vats', '10th', 'maths', 'H K Dass  Maths Engineering.pdf'),
('project report ', 'Akash Raghav', '1st', 'CSE', 'Project Report.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('Akash', 'Raghav', 'akash_is_best', '12345', 7377, 'akashraghav203131@gmail.com', '9304292055', 'p.jpg'),
('Himanshu', 'Sharma', 'himan', '5432', 7375, 'himanshuaharma4v4@gmail.com', '7351144719', 'p.jpg'),
('soham', 'modi', 'soham25', '12345', 7352, 'soham@gmail.com', '8979894578', '4881.jpg'),
('Mohit', 'Sharma', 'mohit_goood', '123456', 7350, 'mohit@gmail.com', '8087819253', 'p.jpg'),
('Naruto', 'uzumaki', 'seventh_hokage', '12345', 7860, 'kurama@gmail.com', '108108108108', 'p.jpg'),
('Sakura ', 'haruno', 'sakura_naruto', '12345', 7380, 'sakura@gmail.com', '9557828921', 'p.jpg'),
('Eren', 'Jaeger', 'attack_titan', '12345', 8790, 'aot@gmail.com', '9304292055', 'p.jpg'),
('Mikasa', 'Ackerman', 'aot_s4', '12345', 8979, 'mikasa@gmail.com', '876376236', 'p.jpg'),
('armin', 'alert', 'aot_s3', '12345', 6789, 'armin@gmail.com', '6464765577', 'p.jpg'),
('Levi', 'Ackerman', 'Levi24', '12345', 7399, 'levi@gmail.com', '8798654576', ''),
('Akash', 'Raghav', 'akash7377', '12345', 7377, 'akashraghav203131@gmail.com', '9304292055', ''),
('Raghav', 'Akash', 'akash_coder_04', '12345', 7377, 'coder@gmail.com', '8304292055', ''),
('Ayush', 'Rai', 'Raiji', '12345', 7391, 'rai@gmail.com', '7898675647', '4881.jpg'),
('Mohit', 'Sharma', 'mohit35', '12345', 7350, 'sharma@gmail.com', '9897989789', '9.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1130031676, 'akash', 'Raghav', 'akash@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1626385360navya.png', 'Active now'),
(2, 893417872, 'Himanshu', 'Sharma', 'himan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1626386535navya.png', 'Active now'),
(3, 12345678, 'soham', 'modi', 'soham@gmail.com', '12345', 'p.png', ''),
(4, 891014508, 'saksham', 'vats', 'vats@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '16264519263.jpg', 'Offline now'),
(5, 506172258, 'armin', 'alert', 'armin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 'Offline now'),
(6, 1498441405, 'Akash', 'Raghav', 'akashraghav203131@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 'Active now'),
(7, 322061119, 'Raghav', 'Akash', 'coder@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1626498457', 'Active now'),
(8, 1487054022, 'Ayush', 'Rai', 'rai@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '16264986354881.jpg', 'Offline now'),
(9, 1328626350, 'Mohit', 'Sharma', 'sharma@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9.png', 'Offline now'),
(10, 743702868, 'Monika', 'ma\'am', 'monika@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'p.jpg', 'Active now'),
(11, 143811205, 'Sakura', 'Haruno', 'sakura@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '7.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
