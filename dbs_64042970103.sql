-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2024 at 11:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_64042970103`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(50) NOT NULL,
  `playlist_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `content_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `tutor_id` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('ilL1maVKAXnLOsSKR5kW', '0GTYeAAE4X3Ncv6RFgU0', 'UHVncWZ1NeGC3jMWRWJS', 'HQSHXYX9zn9cGDBsUWa2', 'เป็นการแนะนำที่ดีมาก', '2024-08-30'),
('QMK5TmUHAKkfK8QKoVXI', '0GTYeAAE4X3Ncv6RFgU0', 'UHVncWZ1NeGC3jMWRWJS', 'HQSHXYX9zn9cGDBsUWa2', 'ประทับใจมากค่ะ', '2024-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(50) NOT NULL,
  `tutor_id` varchar(50) NOT NULL,
  `playlist_id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'deactive',
  `exam_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`, `exam_link`) VALUES
('CQnBkfBIlOHf49saAweo', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.01', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'HQhaAslVBXjb2sBJ4XHH.mp4', 'sCMCV3VoE6MqiNPMEZXc.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('7pTuCGGKqJ6Q6TXTZwbB', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.02', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'jIK1wZSTpH7IPEkrw99m.mp4', 'UvElBUSAK6i5bUsKNAjJ.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('zfgsBqyQxpvuK6lIgu6O', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.03', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'OJD4EEBIYZmu2FZ9myJq.mp4', 'LYMGqA5PL83laimzMeqN.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('J1oFN6ShMLGuPl9YGkk4', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.04', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', '9wHhZXPiDUTuMH3wTXAv.mp4', 'w6c8XMOK88PLD7KocqV4.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('SLqVo3Pg2F91qakvNrkh', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.05', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'kZpS10s7sFlLAC1Zz9Rl.mp4', 't7yKyX4sa8g0d3wvQA12.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('6iaD7o5g93pv5yxoKqqG', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.06', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'NrY7GZznbF0YVQL1wsMT.mp4', 'rR8KK3W6ogXvxMHfQGSv.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('RNF8zkB7hACVT2MEwuVH', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.07', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'e4SoCa2wK2PCJwo0c0cx.mp4', 'quO5I3MPpUxwvAY7SPAi.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('7LIJrdVr9IlqnabpqXrk', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.08', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'CHe4JFPobx8Rtnrww5Sr.mp4', 'sU1cuJH8AyIEUpPS7qGW.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('JfMdg4jStTVCYC8BFu95', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.09', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'VmE9mWsPj47T9oAaE8JW.mp4', '7NfTybKHsUIrSjwdd7ba.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('EEYRuwu5PjQkO1YFIt7k', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'วิทยาศาสตร์ ep.10', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'rQ855aD3EwP44ZIgJuxX.mp4', 'kxKmdqpW32rfxmLZtbmZ.png', '2024-08-07', 'active', 'https://docs.google.com/forms/u/1/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform'),
('0GTYeAAE4X3Ncv6RFgU0', 'HQSHXYX9zn9cGDBsUWa2', 'SHe7LqLNhTm1JzI71gh1', 'ท้องฟ้าจำลองศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก', 'ท้องฟ้าจำลองศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก', 'ywOAYQRpH4FBjsgNXkUO.mp4', '3q5vSkfaB82yshA67YWu.png', '2024-08-15', 'active', 'https://docs.google.com/forms/d/e/1FAIpQLSfHcYRBOg_8aB0juPNER7ELyJ5DaItSPM5nsOVVfLW8j3L8UA/viewform');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(50) NOT NULL,
  `tutor_id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('SHe7LqLNhTm1JzI71gh1', 'HQSHXYX9zn9cGDBsUWa2', 'หลักสูตรวิทยาศาสตร์', 'โดย นางสาววิภาวี หนูภักดี ศูนย์วิทยาศาสตร์เพื่อการศึกษาพิษณุโลก ', 'OdpHjM4HyBNQKvjUf2O2.png', '2024-08-07', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('HQSHXYX9zn9cGDBsUWa2', 'นางสาววิภาวี หนูภักดี', 'teacher', 'u64042380119@uru.ac.th', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'ZIvFQ9QOxcAt21T2fNUN.jpg'),
('QV6tl5Mddrjuug8entM1', 'นางสาวกิตติมา', 'teacher', 'kittiyapornmay1@gmail.com', '965b38734b55904903e3f2e1589b99b7697a4546', 'PR6aCXJP7yL5NEBcmpcp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('UHVncWZ1NeGC3jMWRWJS', 'นางสาวกิตติยาภรณ์ รัตนะ', 'kittiyapornmay1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'BXqIJcwThw6f4tuPUxaD.jpg'),
('Xg9Otyh0IWqQC1BGuOck', 'นางสาวลัดดาวัลย์ เข็มทอง', 'u64042380119@uru.ac.th', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mBthMNqInrw3YLbqRzos.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
