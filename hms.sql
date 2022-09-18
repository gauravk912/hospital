-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 05:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(10, 'Ayurveda', 'Minakshi', 'Pune', '300', 1234567898, 'minakshi@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2022-04-06 06:26:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 10:40:36', NULL, 0),
(21, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 10:40:54', NULL, 0),
(22, NULL, 'test@test.com', 0x3a3a3100000000000000000000000000, '2022-04-04 10:41:58', NULL, 0),
(23, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 10:43:52', '04-04-2022 04:22:16 PM', 1),
(24, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:13:41', '04-04-2022 04:53:53 PM', 1),
(25, NULL, 'test@test.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:28:18', NULL, 0),
(26, NULL, 'test@test.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:28:24', NULL, 0),
(27, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-06 06:26:35', '06-04-2022 12:08:53 PM', 1),
(28, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-06 06:40:10', '06-04-2022 12:10:47 PM', 1),
(29, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 09:57:29', '09-04-2022 03:31:29 PM', 1),
(30, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 10:19:00', NULL, 1),
(31, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 17:53:21', '10-04-2022 12:18:58 AM', 1),
(32, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-10 06:53:24', NULL, 1),
(33, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-10 07:08:34', NULL, 1),
(34, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-18 06:48:41', '18-04-2022 12:22:29 PM', 1),
(35, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-20 06:12:49', '20-04-2022 11:51:03 AM', 1),
(36, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-09 10:50:57', '09-06-2022 05:17:34 PM', 1),
(37, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 13:41:03', '11-06-2022 07:51:45 PM', 1),
(38, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 14:23:15', '11-06-2022 08:24:47 PM', 1),
(39, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 06:47:14', NULL, 1),
(40, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 07:02:06', '12-06-2022 02:09:36 PM', 1),
(41, NULL, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 09:12:18', NULL, 0),
(42, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 09:12:26', '12-06-2022 04:39:55 PM', 1),
(43, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 11:56:51', '12-06-2022 06:01:05 PM', 1),
(44, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 06:07:51', '13-06-2022 03:29:20 PM', 1),
(45, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 14:00:19', '14-06-2022 08:25:40 PM', 1),
(46, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 11:14:29', '15-06-2022 05:11:27 PM', 1),
(47, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-27 05:12:30', '27-06-2022 10:42:40 AM', 1),
(48, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-27 05:50:15', NULL, 1),
(49, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-27 12:55:36', NULL, 1),
(50, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-04 11:25:00', NULL, 1),
(51, NULL, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 13:33:40', NULL, 0),
(52, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 13:33:57', '12-08-2022 07:57:58 PM', 1),
(53, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 16:33:02', '12-08-2022 10:07:51 PM', 1),
(54, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-17 17:33:42', NULL, 1),
(55, 10, 'minakshi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-16 13:02:45', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `clinic_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `clinic_name`) VALUES
(1, 'Amey Clinic'),
(2, 'Kodre Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `LMP` date DEFAULT NULL,
  `medicalPast` mediumtext DEFAULT NULL,
  `Investigation` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `LMP`, `medicalPast`, `Investigation`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(8, 6, '70/140', '100', '55', '36', 'nil', '0000-00-00', NULL, '', '2022-04-09 18:02:35'),
(12, 8, '84', '66', '99', '12', 'no', '2022-04-04', NULL, '', '2022-04-09 18:02:35'),
(13, 8, '22', '22', '22', '22', 'No', '2021-12-14', NULL, '', '2022-04-09 18:02:35'),
(14, 8, '33', '33', '33', '33', 'hi', '2022-04-24', NULL, '', '2022-04-09 18:08:08'),
(15, 8, '46', '46', '46', '46', 'kjkj\r\n', '2023-08-13', NULL, '', '2022-04-09 18:14:23'),
(21, 8, '45', '99', '99', '99', 'yes', '2022-04-19', 'yes', '', '2022-04-10 06:55:48'),
(22, 8, '100', '100', '100', '100', 'inv', '2022-05-04', 'inv', '', '2022-04-10 07:12:27'),
(23, 8, '56', '42', '99', '99', 'plzzzzzz', '2022-04-28', 'plzzzzz', 'plzzzzzzzzzzz', '2022-04-10 07:14:21'),
(24, 9, '46', '28', '89', '12', 'd', '2022-08-09', 'd', 'd', '2022-08-12 14:07:51'),
(25, 9, '84', '42', '22', '38', 'ddddddddddddddddddd', '0000-00-00', 'dddddddddddddddddd', 'dddddddddddddddddd', '2022-08-12 14:27:40'),
(26, 8, '45', '28', '36', '38', 'sfgh', '2022-09-12', 'dfgh', 'dfg', '2022-09-16 13:10:47'),
(28, 9, '55', '55', '55', '55', 'wok', '0000-00-00', 'wok', 'wok', '2022-09-16 13:24:50'),
(29, 9, '66', '66', '66', '66', 'n', '0000-00-00', 'n', 'n', '2022-09-16 13:33:18'),
(31, 9, '88', '88', '88', '88', 'k', '0000-00-00', 'k', 'k', '2022-09-16 13:40:31'),
(32, 8, '46', '25', '78', '38', 'try', '2022-10-08', 'try', 'try', '2022-09-16 13:42:00'),
(33, 8, '99', '99', '99', '99', 'y', '2022-09-26', 'y', 'y', '2022-09-16 15:03:21'),
(34, 9, '88', '88', '88', '88', 'yn', '0000-00-00', 'yn', 'yn', '2022-09-16 15:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 1, 'test', 1234567898, 'abc@gmail.com', 'Male', 'nil', 23, 'nil', '2022-04-04 10:47:51', '2022-04-04 11:14:18'),
(7, 10, 'testpatient', 4567892345, 'testpatient@gmail.com', 'female', 's', 33, 'nn', '2022-04-06 06:28:16', NULL),
(8, 10, 'abc@gmail.com', 5213699749, 'abcc@gmail.com', 'Female', 'ghar', 59, 'Nope', '2022-04-09 10:20:05', '2022-04-10 06:55:14'),
(9, 10, 'fee', 5555, 'abdc@gmail.com', 'male', 'ddddddddd', 56, 'fed', '2022-08-12 13:48:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:00:28', '04-04-2022 04:37:48 PM', 1),
(25, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:27:14', NULL, 0),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 11:27:27', '04-04-2022 04:58:07 PM', 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 08:53:56', '09-04-2022 02:24:33 PM', 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 10:01:51', '09-04-2022 03:33:28 PM', 1),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 10:15:16', NULL, 1),
(30, 8, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-09 10:17:44', NULL, 1),
(31, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-10 07:05:16', '10-04-2022 12:36:34 PM', 1),
(32, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-04-10 07:06:49', NULL, 0),
(33, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-10 07:42:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51'),
(8, 'jjjj', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'mumbai', 'male', 'abc@gmail.com', 'f3e852b06c2a0b962aff0d10af911b98', '2022-04-09 10:17:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
