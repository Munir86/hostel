-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 08:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2020-09-08 20:31:45', '2021-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_fn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(10, '4', ' الجامعة الافتراضية السورية', 'هندسة برمجيات ', '2022-08-09 06:59:40'),
(11, '4', 'جامعة تشرين', 'هندسة حاسوب', '2022-08-09 06:59:46'),
(12, '5', 'جامعة حلب', 'طب اسنان', '2022-08-09 06:59:58'),
(13, '4', 'الجامعة السورية الخاصة', 'فيزياء', '2022-08-23 08:30:31'),
(14, '4', 'جامعة الفرات', 'تربية رياضية', '2022-08-23 08:30:43'),
(15, '4', 'المعهد الوطني للادارة العامة', 'ادارة اعمال', '2022-08-23 08:30:51'),
(16, '4', 'جامعة البعث', 'كلية طب الاسنان', '2022-08-23 08:31:08'),
(17, '4', 'المعهد الوطني العالي للفنون المسرحية', 'الفنون التشكيلية', '2022-08-23 08:32:38'),
(18, '2', 'الجامعة الافتراضية السورية', 'تقانة المعلومات', '2022-08-23 08:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `middleName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guardianRelation` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corresCIty` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corresState` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pmntCity` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pmnatetState` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(22, 105, 5, 450, 1, '2024-01-25', 6, 'هندسة برمجيات ', '236098', 'منير', 'نايف', 'احمد', 'ذكر', 999999999, 'munir_236098@svuonlin.org', 9111111111, 'نايف', 'اب', 9333333333, 'سوريا', 'دمشق', '', 963, 'سوريا', 'دمشق', '', 963, '2024-01-19 22:03:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(10, 2, 230, 60, '2024-01-19 21:37:59'),
(11, 2, 330, 150, '2024-01-19 21:55:36'),
(12, 3, 231, 230, '2024-01-19 21:56:09'),
(13, 3, 232, 350, '2024-01-19 21:56:23'),
(14, 4, 233, 300, '2024-01-19 21:56:37'),
(15, 1, 234, 193, '2024-01-19 21:56:55'),
(16, 4, 235, 100, '2024-01-19 21:57:13'),
(17, 5, 105, 450, '2024-01-19 21:57:29'),
(18, 4, 99, 350, '2024-01-19 21:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Marryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Nevada'),
(26, 'New Jersey'),
(27, 'New York'),
(28, 'North Carolina'),
(29, 'North Dakota'),
(30, 'Ohio'),
(31, 'Oklahoma'),
(32, 'South Carolina'),
(33, 'South Dakota'),
(34, 'Texas'),
(35, 'Virginia'),
(36, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(9, 10, 'terry@mail.com', 0x3a3a31, '', '', '2024-03-05 04:12:00'),
(10, 10, 'terry@mail.com', 0x3a3a31, '', '', '2024-03-05 04:14:44'),
(11, 21, 'ross@mail.com', 0x3a3a31, '', '', '2024-03-05 04:19:52'),
(12, 21, 'ross@mail.com', 0x3a3a31, '', '', '2024-03-05 08:53:33'),
(13, 21, 'ross@mail.com', 0x3a3a31, '', '', '2024-03-05 17:35:34'),
(14, 21, 'ross@mail.com', 0x3a3a31, '', '', '2024-03-06 02:43:01'),
(25, 19, 'bruce@mail.com', 0x3a3a31, '', '', '2022-04-03 14:44:31'),
(31, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:05:18'),
(32, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:35:27'),
(33, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:35:35'),
(34, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:35:56'),
(35, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:36:57'),
(36, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:38:28'),
(37, 34, 'munir_236098@svuonlin.org', 0x3a3a31, '', '', '2024-01-19 22:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `middleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passUdateDate` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(34, '236098', 'منير', 'نايف', 'احمد', 'ذكر', 999999999, 'munir_236098@svuonlin.org', '81dc9bdb52d04dc20036dbd8313ed055', '2024-01-19 22:04:26', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
