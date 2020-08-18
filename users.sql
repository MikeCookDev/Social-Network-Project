-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 08:59 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(8, 'Mary', 'Poppins', 'mary_poppins', 'Mpoppins@gmail.com', '13fa7927e1afe2cb5ca34d98f5e3b46c', '2020-08-18', 'assets/images/profile_pics/default/head_emerald.png', 0, 0, 'no', ','),
(9, 'Michael', 'Cook', 'michael_cook', 'Mikecook595@gmail.com', 'a4a6a33a3c5fb414fef69b653c591e0a', '2020-08-18', 'assets/images/profile_pics/default/head_carrot.png', 0, 0, 'no', ','),
(10, 'John', 'Doe', 'john_doe', 'Blankemail@gmail.com', 'fc6d71c4ac367c10fe67e3e785003c3e', '2020-08-18', 'assets/images/profile_pics/default/head_carrot.png', 0, 0, 'no', ','),
(11, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-18', 'assets/images/profile_pics/default/head_carrot.png', 0, 0, 'no', ','),
(12, 'Goofy', 'Mouse', 'goofy_mouse', 'Goofy@gmail.com', '4f94d7e65f1e7e55b5bfcf7334449d8f', '2020-08-18', 'assets/images/profile_pics/default/head_carrot.png', 0, 0, 'no', ','),
(13, 'Michael', 'Cook', 'michael_cook_1', 'Mikecookdev@gmail.com', 'a4a6a33a3c5fb414fef69b653c591e0a', '2020-08-18', 'assets/images/profile_pics/default/head_emerald.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
