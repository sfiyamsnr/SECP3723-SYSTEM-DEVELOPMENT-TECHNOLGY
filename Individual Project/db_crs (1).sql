-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 31, 2025 at 02:20 PM
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
-- Database: `db_crs`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `lecturer_id` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `lecturer_id`, `message`, `status`, `created_at`) VALUES
(1, 'L001', 'You have been assigned a new course: NETWORK (SECR2133)', 'read', '2025-01-31 02:23:26'),
(2, 'L001', 'You have been assigned a new course: NETWORK (SECR2133)', 'read', '2025-01-31 06:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_course`
--

CREATE TABLE `tb_course` (
  `c_code` varchar(10) NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `c_credit` int(11) NOT NULL,
  `c_lec` varchar(10) NOT NULL,
  `max_student` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_course`
--

INSERT INTO `tb_course` (`c_code`, `c_name`, `c_credit`, `c_lec`, `max_student`) VALUES
('SECJ1023', 'Programming Technique 2', 3, 'L001', 2),
('SECJ2154', 'Object-Oriented Programming', 4, 'L001', 0),
('SECP2523', 'Database', 3, 'L003', 0),
('SECP2613', 'System Analysis Design', 3, 'L002', 0),
('SECP2753', 'Data Mining', 3, 'L003', 0),
('SECP3204', 'Software Engineering', 2, 'L002', 2),
('SECP3723', 'System Development Technology', 3, 'L003', 0),
('SECR2043', 'Operating System', 2, 'L001', 0),
('SECR2133', 'NETWORK', 3, 'L001', 1),
('SECV2113', 'Human Computer Interaction', 2, 'L002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_registration`
--

CREATE TABLE `tb_registration` (
  `r_tid` int(11) NOT NULL COMMENT 'This is the transaction ID',
  `r_student` varchar(10) NOT NULL,
  `r_course` varchar(10) NOT NULL,
  `r_sem` varchar(11) NOT NULL,
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_registration`
--

INSERT INTO `tb_registration` (`r_tid`, `r_student`, `r_course`, `r_sem`, `r_status`) VALUES
(2, 'S002', 'SECJ1023', '2024/2025-1', 2),
(74, 'S004', 'SECP2523', '2024/2025-1', 4),
(78, 'S001', 'SECP2753', '2024/2025-2', 2),
(96, 'S001', 'SECR2133', '2024/2025-2', 2),
(97, 'S001', 'SECP3723', '2024/2025-2', 3),
(98, 'S001', 'SECP3204', '2024/2025-2', 2),
(99, 'S001', 'SECJ2154', '2024/2025-2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `sem_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`sem_id`) VALUES
('2024/2025-1'),
('2024/2025-2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `s_id` int(11) NOT NULL,
  `s_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`s_id`, `s_desc`) VALUES
(1, 'Received'),
(2, 'Approved'),
(3, 'Rejected'),
(4, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `u_sno` varchar(10) NOT NULL,
  `u_pwd` varchar(255) NOT NULL,
  `u_email` varchar(30) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_contact` int(11) NOT NULL,
  `u_req` date DEFAULT NULL,
  `u_utype` int(11) NOT NULL,
  `u_dob` date DEFAULT NULL,
  `u_race` varchar(25) DEFAULT NULL,
  `u_religion` varchar(25) DEFAULT NULL,
  `u_gender` varchar(10) DEFAULT NULL,
  `u_address` varchar(255) DEFAULT NULL,
  `u_postcode` int(6) DEFAULT NULL,
  `u_state` varchar(50) DEFAULT NULL,
  `u_city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`u_sno`, `u_pwd`, `u_email`, `u_name`, `u_contact`, `u_req`, `u_utype`, `u_dob`, `u_race`, `u_religion`, `u_gender`, `u_address`, `u_postcode`, `u_state`, `u_city`) VALUES
('A001', '$2y$10$ouvlvmpzSHHYlHUxQa33YOcXuz5e5LRSwwj0Vj/uIJwETpvL.oYTK', 'aminah@gmail.com', 'AMINAH', 1381239, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('L001', '$2y$10$WYqd2nm1A/.ouQQiiV7moubIWAyV/r0ZjvPPQLvMWhklMJLpkL37e', 'luqmanitik10@gmail.com', 'Luqman Hakim', 172602506, '2023-02-01', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('L002', '$2y$10$lmJKcoxine1cx6q9N4qZl.j/oJPomcCG9k/d0TZMmzyDLV3CgmZiG', 'safiyanursyahadah@graduate.utm', 'Laila Aminah', 172222222, '2023-12-01', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('L003', '$2y$10$4ROU4k/5pECyc.0b/7D29OZa3xKZew5ytNcuZvaNmmHKSpC0Y.GNS', 'hananursarah392@gmail.com', 'Hana Nursarah', 197254568, '2025-01-21', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S001', '$2y$10$sO.KFK6VkyOp86aAH029ROZztSxiANgpwCUdPFScTw9t5OSBlW3RS', 'fat@gmail.com', 'Fatah Abdul', 133333333, '2024-02-01', 2, NULL, NULL, NULL, NULL, 'NO 15 Jalan Kesumbassari', 48000, 'Selangor', NULL),
('S002', '$2y$10$r80Gp5lUXRjB1.wL9jhMOuikD92lHH8VMjig2dIiEV/v8PG224tom', 'kam@gmail.com', 'Kamarul Abdul', 124444444, '2024-10-01', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S004', '$2y$10$6UXiXZgzCErH9kTMgW.zseEf4vD75/eiKhD1ZBuICwlWtUiwcL6t.', 'safiyamasnoor@gmail.com', 'SAFIYA MASNOOR', 197254568, '2025-01-29', 2, '2001-03-05', 'Malay', 'Islam', 'FEMALE', 'No. 11A Jalan Kantansari 3', 48000, 'Selangor', 'Rawang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_utype`
--

CREATE TABLE `tb_utype` (
  `t_id` int(11) NOT NULL,
  `t_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_utype`
--

INSERT INTO `tb_utype` (`t_id`, `t_desc`) VALUES
(1, 'Lecturer'),
(2, 'Student'),
(3, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lecturer_id` (`lecturer_id`);

--
-- Indexes for table `tb_course`
--
ALTER TABLE `tb_course`
  ADD PRIMARY KEY (`c_code`),
  ADD KEY `c_lec` (`c_lec`);

--
-- Indexes for table `tb_registration`
--
ALTER TABLE `tb_registration`
  ADD PRIMARY KEY (`r_tid`),
  ADD KEY `r_student` (`r_student`),
  ADD KEY `r_course` (`r_course`),
  ADD KEY `r_status` (`r_status`),
  ADD KEY `r_sem` (`r_sem`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`u_sno`),
  ADD KEY `u_utype` (`u_utype`);

--
-- Indexes for table `tb_utype`
--
ALTER TABLE `tb_utype`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_registration`
--
ALTER TABLE `tb_registration`
  MODIFY `r_tid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This is the transaction ID', AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `tb_user` (`u_sno`);

--
-- Constraints for table `tb_course`
--
ALTER TABLE `tb_course`
  ADD CONSTRAINT `tb_course_ibfk_1` FOREIGN KEY (`c_lec`) REFERENCES `tb_user` (`u_sno`);

--
-- Constraints for table `tb_registration`
--
ALTER TABLE `tb_registration`
  ADD CONSTRAINT `tb_registration_ibfk_2` FOREIGN KEY (`r_student`) REFERENCES `tb_user` (`u_sno`),
  ADD CONSTRAINT `tb_registration_ibfk_3` FOREIGN KEY (`r_status`) REFERENCES `tb_status` (`s_id`),
  ADD CONSTRAINT `tb_registration_ibfk_4` FOREIGN KEY (`r_course`) REFERENCES `tb_course` (`c_code`),
  ADD CONSTRAINT `tb_registration_ibfk_5` FOREIGN KEY (`r_sem`) REFERENCES `tb_semester` (`sem_id`);

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`u_utype`) REFERENCES `tb_utype` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
