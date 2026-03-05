-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2026 at 02:15 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'B Asfiya Maysam', 'asfi@gmail.com', 'Computer', 'hello', '2026-02-17 14:53:30'),
(2, 'Arif', 'khansher60266@gmail.com', 'Computer', 'Hello i want to contact to you', '2026-02-17 15:59:28'),
(3, 'asfi', 'asfi@gmail.com', 'Computer', 'hii', '2026-02-18 13:40:27'),
(4, 'Samy', 'manager@grandplaza.com', 'Computer Networks', 'I want to talk to you', '2026-02-21 13:29:31'),
(5, 'asfi', 'asfi@gmail.com', 'Computer', 'sfgrth', '2026-02-28 17:10:32'),
(6, 'asfi', 'asfi@gmail.com', 'Computer', 'hi', '2026-02-28 22:28:13'),
(7, 'asfi', 'asfi@gmail.com', 'Computer', 'xdgsrhsg', '2026-02-28 22:32:19'),
(8, 'asfi', 'asfi@gmail.com', 'Computer Networks', 'zfsgesg', '2026-02-28 22:37:07'),
(9, 'asfi', 'khansher60266@gmail.com', 'Computer', 'Hi', '2026-02-28 22:37:18'),
(10, 'Grand Plaza Hotel', 'asfi@gmail.com', 'Computer Networks', 'hi', '2026-02-28 22:38:09'),
(11, 'asfi', 'khansher60266@gmail.com', 'Computer Networks', 'Hi', '2026-02-28 22:39:52'),
(12, 'asfi', 'asfi@gmail.com', 'Computer', 'awda', '2026-02-28 22:40:18'),
(13, 'asfi', 'asfi@gmail.com', 'Html', 'hello', '2026-02-28 22:43:46'),
(14, 'asfi', 'manager@ksrtc.com', 'Computer Networks', 'hi', '2026-02-28 22:45:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
