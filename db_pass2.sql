-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 11:11 AM
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
-- Database: `db_pass2`
--

-- --------------------------------------------------------

--
-- Table structure for table `pass_detail`
--

CREATE TABLE `pass_detail` (
  `pid` int(10) NOT NULL,
  `uid` int(5) NOT NULL,
  `pdate` varchar(10) NOT NULL,
  `penddate` varchar(10) NOT NULL,
  `ptype` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pass_detail`
--

INSERT INTO `pass_detail` (`pid`, `uid`, `pdate`, `penddate`, `ptype`) VALUES
(9, 6, '11-03-2024', '10-04-2024', 'monthly'),
(10, 7, '01-04-2024', '01-05-2024', 'monthly'),
(11, 8, '10-03-2024', '09-04-2024', 'monthly'),
(12, 3, '19-03-2024', '26-03-2024', 'weekly'),
(16, 9, '04-04-2024', '11-04-2024', 'weekly'),
(17, 10, '15-03-2024', '22-03-2024', 'weekly'),
(19, 11, '13-03-2024', '12-04-2024', 'monthly'),
(20, 13, '12-03-2024', '11-04-2024', 'monthly');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `pid` int(5) NOT NULL,
  `pname` varchar(15) NOT NULL,
  `pcharge` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`pid`, `pname`, `pcharge`) VALUES
(1, 'Karamsad', 19),
(2, 'Umreth', 60),
(3, 'Kheda', 70),
(4, 'Dakor', 72),
(5, 'Kanjari', 60),
(6, 'Mhemdabad', 75),
(7, 'Nadiad', 35),
(8, 'Vadodara', 55),
(9, 'Ahmedabad', 90),
(10, 'Borsad', 25),
(11, 'Petlad', 30),
(12, 'Dabhoi', 80),
(13, 'Khambhat', 65),
(14, 'Dholka', 70);

-- --------------------------------------------------------

--
-- Table structure for table `upayment_details`
--

CREATE TABLE `upayment_details` (
  `upass_no` varchar(15) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucard_no` varchar(20) NOT NULL,
  `card_ed` varchar(15) NOT NULL,
  `card_cvv` int(4) NOT NULL,
  `card_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upayment_details`
--

INSERT INTO `upayment_details` (`upass_no`, `uid`, `ucard_no`, `card_ed`, `card_cvv`, `card_name`) VALUES
('P2024312', 3, '1234 5678 9101 1265', '1226', 123, 'Neha Shah'),
('P202469', 6, '1234 5656 7564', '02/26', 245, 'Akansha Gadhavi'),
('P2024710', 7, '2342353456', '25/27', 111, 'unnati'),
('P2024811', 8, '48218845', '08/09', 789, 'shaily'),
('P2024916', 9, '4564 1234 5678 4789', '1026', 547, 'Maira Shah');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(5) NOT NULL,
  `utype` int(1) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `ucontact` bigint(10) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `upswd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `utype`, `uname`, `ucontact`, `uemail`, `upswd`) VALUES
(1, 0, 'Kalpita Kirve', 9998889898, 'admin@gmail.com', 'admin'),
(3, 1, 'Neha Shah', 9876987698, 'n@gmail.com', 'n123'),
(4, 0, 'Akansha Gadhavi', 9898767654, 'akansha@gmail.com', 'ak123'),
(6, 1, 'Akansha Gadhavi', 9876987698, 'ak@gmail.com', 'ak1234'),
(7, 1, 'unnati', 1234567895, 'unnati@gmail.com', '228'),
(8, 1, 'shaily', 8523697412, 'sd@gmail.com', '12345'),
(9, 1, 'Maira Shah', 9898989898, 'maira@gmial.com', 'ms123'),
(10, 1, 'divya', 9595948596, 'divya@gmail.com', 'd1234'),
(11, 1, 'Soham', 9876987698, 'soham@gmail.com', 'soham123'),
(12, 1, 'Riya', 7675678987, 'riya@gmail.com', 'riya123'),
(13, 1, 'Shrey Nair', 9876987698, 'shrey@gmail.com', 'sh123');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(5) NOT NULL,
  `pid` int(10) NOT NULL,
  `upass_no` varchar(10) NOT NULL,
  `ubdate` varchar(10) NOT NULL,
  `ugender` varchar(6) NOT NULL,
  `uoccu` varchar(10) NOT NULL,
  `ucat` varchar(6) NOT NULL,
  `ufrom` varchar(10) NOT NULL,
  `udes` varchar(10) NOT NULL,
  `ucharge` int(10) NOT NULL,
  `uimg` varchar(50) NOT NULL,
  `uid_type` varchar(20) NOT NULL,
  `uid_no` varchar(20) NOT NULL,
  `uid_img` varchar(50) NOT NULL,
  `ustatus` bit(1) NOT NULL,
  `upaid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `pid`, `upass_no`, `ubdate`, `ugender`, `uoccu`, `ucat`, `ufrom`, `udes`, `ucharge`, `uimg`, `uid_type`, `uid_no`, `uid_img`, `ustatus`, `upaid`) VALUES
(10, 17, 'P20241017', '05-06-2002', 'female', 'Student', 'nac', 'Anand', 'Nadiad', 245, 'UserImg/10_image-275x183.jpg', 'PanCard', '3333', 'UserDoc/10_pancard.jpg', b'1', 0),
(11, 19, 'P20241119', '09-07-2011', 'on', 'Employee', 'ac', 'Anand', 'Khambhat', 3900, 'UserImg/11_person1.png', 'AdharCard', '1234 5678 9864', 'UserDoc/11_aadhar.png', b'1', 0),
(13, 20, 'P20241320', '13-02-2018', 'on', 'Employee', 'ac', 'Anand', 'Ahmedabad', 5400, 'UserImg/13_person1.png', 'AdharCard', '1234 5678 9864', 'UserDoc/13_aadhar.png', b'1', 0),
(3, 12, 'P2024312', '19-06-2009', 'female', 'Employee', 'nac', 'Anand', 'Dakor', 504, 'UserImg/3_pic2.jpg', 'AdharCard', '1234 5678 9833', 'UserDoc/3_aadhar.png', b'1', 1),
(6, 9, 'P202469', '01-11-2001', 'female', 'Student', 'ac', 'Anand', 'Ahmedabad', 5400, 'UserImg/6_person2.jpg', 'AdharCard', '1234 5678 9864', 'UserDoc/6_aadhar.png', b'1', 1),
(7, 10, 'P2024710', '25-01-2024', 'female', 'Student', 'ac', 'Anand', 'Dakor', 4320, 'UserImg/7_person2.jpg', 'AdharCard', '242536', 'UserDoc/7_aadhar.png', b'1', 1),
(8, 11, 'P2024811', '15-06-2003', 'female', 'Student', 'nac', 'Anand', 'Ahmedabad', 2700, 'UserImg/8_person1.png', 'AdharCard', '1234 5678 9864', 'UserDoc/8_pass.png', b'1', 1),
(9, 16, 'P2024916', '16-08-2012', 'female', 'Employee', 'nac', 'Anand', 'Vadodara', 385, 'UserImg/9_pic3.jpg', 'AdharCard', '5454 7898 568', 'UserDoc/9_aadhar.png', b'1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pass_detail`
--
ALTER TABLE `pass_detail`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `upayment_details`
--
ALTER TABLE `upayment_details`
  ADD PRIMARY KEY (`upass_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`upass_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pass_detail`
--
ALTER TABLE `pass_detail`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
