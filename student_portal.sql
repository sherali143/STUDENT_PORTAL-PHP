-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 11:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `title` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `campus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `title`, `address`, `campus`) VALUES
('Admin', 'Administator', 'Pakistan', 'Fast Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`student_id`, `course_id`, `date`, `status`) VALUES
(1, 1, '2024-05-10', 'PRESENT'),
(1, 2, '2024-05-10', 'ABSENT'),
(2, 1, '2024-05-10', 'PRESENT'),
(3, 2, '2024-05-10', 'PRESENT');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_title`, `instructor_id`) VALUES
(1, 'Data Structure', 'Core', 1),
(2, 'Discrete Structure', 'Core', 2),
(3, 'DataBase', 'Core', 3);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`student_id`, `course_id`, `grade`) VALUES
(1, 1, 'A '),
(1, 2, 'A-'),
(2, 1, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `instructor_title` varchar(255) NOT NULL,
  `instructor_email` varchar(255) NOT NULL,
  `instructor_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`instructor_id`, `instructor_name`, `instructor_title`, `instructor_email`, `instructor_password`) VALUES
(1, 'waqas', 'HOD', 'waqas@gmail.com', 'waqas'),
(2, 'Nauman Azam', 'HOD', 'naumanazam@gmail.com', 'nauman'),
(3, 'Sana', 'HOD', 'sana@gmail.com', 'sana');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`student_id`, `course_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_personal_information`
--

CREATE TABLE `student_personal_information` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_batch` varchar(20) DEFAULT NULL,
  `student_cnic` varchar(255) NOT NULL,
  `student_father_name` varchar(255) NOT NULL,
  `student_campus` varchar(255) NOT NULL,
  `student_degree` varchar(20) DEFAULT NULL,
  `student_email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_personal_information`
--

INSERT INTO `student_personal_information` (`student_id`, `student_name`, `student_batch`, `student_cnic`, `student_father_name`, `student_campus`, `student_degree`, `student_email`, `password`) VALUES
(1, 'sherali', 'Batch 21', '34601-5766422-3', 'SYED TAUQEER ABBAS', 'PESHAWAR', 'BSCS', 'sherali@gmail.com', 'sherali'),
(2, 'samad ', 'BATCH 21', '34601-5766422-1', 'KALEEM', 'PESHAWAR', 'BSCS', 'samad@gmail.com', 'samad'),
(3, 'afshan', 'BATCH 21', '34601-5766422-3', 'Naeem', 'Peshawar', 'BSCS', 'afshan@gmail.com', 'afshan'),
(4, 'saad', 'BATCH 21', '34601-5766422-3', 'Amin', 'Peshawar', 'BSCS', 'saad@gmail.com', 'saad'),
(5, 'shehryar', 'BATCH 21', '34601-8378933-4', 'Sher ', 'Peshawar', 'BSCS', 'shehryar@gmail.com', 'shehryar');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course`
--

CREATE TABLE `teacher_course` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` (`instructor_id`, `instructor_name`, `course_name`) VALUES
(1, 'waqas', 'Data Structure'),
(2, 'Nauman Azam', 'Discrete Structure');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_role`, `user_password`) VALUES
(1, 'sherali', 'sherali@gmail.com', 'student', 'sherali'),
(2, 'samad', 'samad@gmail.com', 'student', 'samad'),
(3, 'waqas', 'waqas@gmail.com', 'teacher', 'waqas'),
(4, 'nauman azam', 'nauman@gmail.com', 'teacher', 'nauman'),
(5, 'admin', 'admin@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD KEY `fk_course_id` (`course_id`),
  ADD KEY `fk_student_id` (`student_id`);

--
-- Indexes for table `student_personal_information`
--
ALTER TABLE `student_personal_information`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_personal_information` (`student_id`),
  ADD CONSTRAINT `attendances_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student_personal_information` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
