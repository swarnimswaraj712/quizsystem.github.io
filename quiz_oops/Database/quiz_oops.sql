-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 09:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_oops`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'php'),
(2, 'html'),
(3, 'css'),
(4, 'javascript'),
(5, 'jquery'),
(6, 'bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `ans1` varchar(50) NOT NULL,
  `ans2` varchar(50) NOT NULL,
  `ans3` varchar(50) NOT NULL,
  `ans4` varchar(50) NOT NULL,
  `ans` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(1, 'PHP stands for -', 'Hypertext Preprocessor', 'Pretext Hypertext Preprocessor', 'Personal Home Processor', 'None of the above', 0, 1),
(2, 'Who is known as the father of PHP?', 'Drek Kolkevi', 'List Barely', 'Rasmus Lerdrof', 'None of the above', 2, 1),
(3, 'Variable name in PHP starts with -', '! (Exclamation)', '$ (Dollar)', '& (Ampersand)', '# (Hash)', 1, 1),
(4, 'Which of the following is the default file extension of PHP?', '.php', '.hphp', '.xml', '.html', 0, 1),
(5, 'Which of the following is not a variable scope in PHP?', 'Local', 'Static', 'Global', 'Extern', 3, 1),
(6, 'HTML stands for -', 'HighText Machine Language', 'HyperText and links Markup Language', 'HyperText Markup Language', 'None of these', 2, 2),
(7, 'The correct sequence of HTML tags for starting a webpage is -', 'Head, Title, HTML, body', 'HTML, Body, Title, Head', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 3, 2),
(8, 'Which of the following element is responsible for making the text bold in HTML?', 'pre', 'a', 'b', 'br', 2, 2),
(9, 'Which of the following tag is used for inserting the largest heading in HTML?', 'h3', 'h1', 'h5', 'h6', 1, 2),
(10, 'Which of the following tag is used to insert a line-break in HTML?', 'br', 'a', 'pre', 'b', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `img`) VALUES
(1, 'Swarnim Swaraj', 'swarnimswaraj712@gmail.com', 'Abcd@1234', 'Screenshot (1).png'),
(2, 'TEJASWI', 'tejaswimishra2@gmail.com', 'Abcd@0987', 'Screenshot (2).png'),
(3, 'Ram Uday Mishra', 'ramudaymishra3@gmail.com', 'abcde', 'Screenshot (2).png'),
(4, 'KARTIK SINGH', 'kartiksinghk12@gmail.com', '12345', 'Screenshot (5).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
