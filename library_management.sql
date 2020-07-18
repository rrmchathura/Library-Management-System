-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 06:52 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) unsigned NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('akila', 'akila dulanjana', 321, 'What is your nick name?', 'akila'),
('chathura', 'chathura sanjaya', 123, 'What is your nick name?', 'chathu'),
('rrmchathura', 'chathura', 123456, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) unsigned NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) unsigned NOT NULL,
  `stock` int(8) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(66, 'Harry Potter', 5, 'Bloomsbury Publishing', 7800, 132),
(158, 'harry potter', 3, 'Bloomsbury Publishing', 5600, 166),
(503, 'chathura', 6, 'Rabindranath Tagor', 220, 129);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `book_id` int(10) unsigned NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) unsigned NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) unsigned NOT NULL,
  `stock` int(5) unsigned NOT NULL,
  `stu_id` int(10) unsigned NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(503, 'Geetanjoli', 6, 'Rabindranath Tagor', 220, 130, 664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', '2018-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE IF NOT EXISTS `returntbl` (
  `stu_id` int(10) unsigned NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 128, '2018-03-20', '2018-04-21'),
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 128, '2018-04-25', '2018-04-25'),
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 129, '2018-03-25', '2018-03-26'),
(303, 'chathura sanjaya', 'jayasundara', 'BSc', 'NSBm', '1st', '2nd', 66, 'Harry Potter', '5', 'Bloomsbury Publishing', 7800, 131, '2020-07-12', '2020-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(10) unsigned NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(303, 'chathura sanjaya', 'jayasundara', 'BSc', 'NSBm', '1st', '2nd'),
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
