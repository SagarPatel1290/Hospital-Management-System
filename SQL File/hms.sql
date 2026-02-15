-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 05:00 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Admin@123', '13-05-2025 10:44:18 AM');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(4, 'Radiology', 11, 3, 500, '2025-05-20', '2:45 PM', '2025-05-13 11:12:56', 1, 1, NULL),
(5, 'General Surgery', 12, 4, 500, '2025-05-27', '5:15 PM', '2025-05-13 11:39:51', 1, 1, NULL),
(6, 'Orthopedics', 8, 5, 500, '2025-05-21', '5:45 PM', '2025-05-13 12:06:14', 1, 1, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Orthopedics', 'Dr. Nirav Prajapati,  MS Ortho', 'Sparsh Orthocare, Nadiad', '500', 9400094001, 'niravprajapati@gmail.com', 'eb0cdb6c6e111fef3c1fd7573c55e5a4', '2025-05-13 05:13:28', '2025-05-13 05:19:35'),
(9, 'Obstetrics and Gynecology', 'Dr. Ujjval Shah, MBBS, DGO', 'Shubham Hospital & IVF Center, Nadiad', '500', 9400094002, 'ujjvalshah@gmail.com', '7d19893689c4a836d6800dfafc01bb92', '2025-05-13 05:18:21', NULL),
(10, 'Pediatrics', 'DR. Avani Shah, MB, DCH', 'Shubham Hospital & IVF Center, Nadiad', '500', 9400094003, 'avanishah@gmail.com', '772b00e55b9951725febcba20993e267', '2025-05-13 05:43:54', '2025-05-13 05:45:45'),
(11, 'Radiology', 'Dr. Deven Shah MBBS, DMRD', 'Drashti Radiology Clinic, Nadiad', '500', 9400094004, 'devenshah@gmail.com', '12fb3d3c412e65cd33d7ec4421f5c61f', '2025-05-13 05:48:57', NULL),
(12, 'General Surgery', 'Dr. SamirPatel, MS', 'Sanjay Hospital, Nadiad', '500', 9400094005, 'samirpatel@gmail.com', 'b284919af3d2bd9e984ad6109b8af329', '2025-05-13 05:53:13', NULL),
(13, 'Pathology', 'Dr. Kartik Patel, MD, DCP', 'Riddhi Pathology Laboratory, Nadiad', '500', 9400094006, 'kartikpatel@gmail.com', '64bba20f626279bcbb046e4fb2def170', '2025-05-13 10:10:52', NULL),
(14, 'ENT', 'Dr. Dipa Shah, MS, ENT', 'ENT Surgical Hospital, Nadiad', '500', 9400094007, 'dipashah@gmail.com', '58ba210c2d478f4d4891374797812c6d', '2025-05-13 10:14:51', NULL),
(15, 'Dental Care', 'Dr. Shirish Shah, BDS', 'Family Dental Care, Nadiad', '500', 9400094008, 'shirishshah@gmail.com', '40f61e21192a0dc3e3e7e29b1d39a32d', '2025-05-13 10:18:14', '2025-05-13 10:19:11');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(4, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 05:39:32', '13-05-2025 11:09:38 AM', 1),
(5, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 10:23:11', '13-05-2025 03:57:41 PM', 1),
(6, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 10:39:04', NULL, 1),
(7, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 10:57:56', '13-05-2025 04:40:28 PM', 1),
(8, 11, 'devenshah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:41:39', '13-05-2025 05:16:17 PM', 1),
(9, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:46:31', '13-05-2025 05:16:58 PM', 1),
(10, 11, 'devenshah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:47:55', '13-05-2025 05:19:05 PM', 1),
(11, 9, 'ujjvalshah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:49:23', '13-05-2025 05:22:40 PM', 1),
(12, 10, 'avanishah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:53:01', '13-05-2025 05:24:11 PM', 1),
(13, 12, 'samirpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:54:30', '13-05-2025 05:26:38 PM', 1),
(14, 13, 'kartikpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:56:49', '13-05-2025 05:29:23 PM', 1),
(15, 14, 'dipashah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:59:41', '13-05-2025 05:31:39 PM', 1),
(16, 15, 'shirishshah@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 12:01:55', '13-05-2025 05:34:11 PM', 1),
(17, 8, 'niravprajapati@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 12:07:09', '13-05-2025 05:37:39 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(18, 'Orthopedics', '2025-05-13 04:57:36', NULL),
(19, 'Obstetrics and Gynecology', '2025-05-13 04:58:51', NULL),
(21, 'Pediatrics', '2025-05-13 04:59:42', NULL),
(22, 'Radiology', '2025-05-13 04:59:56', NULL),
(23, 'General Surgery', '2025-05-13 05:00:13', NULL),
(26, 'Pathology', '2025-05-13 05:01:53', NULL),
(27, 'ENT', '2025-05-13 05:02:05', NULL),
(28, 'Dental Care', '2025-05-13 05:02:14', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'Sagar Patel', 'sagarpatel@gmail.com', 9809889089, 'Subject: Request for Appointment and Consultation\r\n\r\nHello,\r\n\r\nI would like to schedule an appointment with a general physician at your hospital. I have been experiencing persistent fatigue and occasional dizziness over the past few weeks and would like to get a professional evaluation.\r\n\r\nPlease let me know the earliest available date for a consultation. I am available on weekdays after 2 PM.\r\n\r\nThank you for your assistance.\r\n\r\nBest regards,\r\nSagar Patel\r\n9809889089', '2025-05-13 11:33:19', 'Subject: Appointment Request Confirmation\r\n\r\nMessage:\r\n\r\nDear Sagar Patel,\r\n\r\nThank you for reaching out to us through our website.\r\n\r\nWe have received your request for a consultation regarding fatigue and dizziness. We understand your concerns and are here to help. We currently have availability for a general physician appointment on [insert date and time, e.g., Tuesday, May 14th at 3:00 PM].\r\n\r\nPlease confirm if this time works for you, or let us know your preferred date and time so we can make the necessary arrangements.\r\n\r\nIf this is an urgent matter, we encourage you to visit our emergency department directly or call us at [insert hospital phone number].\r\n\r\nWe look forward to assisting you.', '2025-05-13 11:38:41', 1),
(4, 'Aashu Patel', 'aashupatel@gmail.com', 8908998098, 'Subject: Request for Appointment and Consultation\r\n\r\nHello,\r\n\r\nI would like to schedule an appointment with a general physician at your hospital. I have been experiencing persistent fatigue and occasional dizziness over the past few weeks and would like to get a professional evaluation.\r\n\r\nPlease let me know the earliest available date for a consultation. I am available on weekdays after 2 PM.\r\n\r\nThank you for your assistance.\r\n\r\nBest regards,\r\nAashu Patel\r\n8908998098', '2025-05-13 11:34:44', NULL, NULL, NULL),
(5, 'Kunj Thakkar', 'kunjthakkar@gmail.com', 7807887087, 'Subject: Request for Appointment and Consultation\r\n\r\nHello,\r\n\r\nI would like to schedule an appointment with a general physician at your hospital. I have been experiencing persistent fatigue and occasional dizziness over the past few weeks and would like to get a professional evaluation.\r\n\r\nPlease let me know the earliest available date for a consultation. I am available on weekdays after 2 PM.\r\n\r\nThank you for your assistance.\r\n\r\nBest regards,\r\nKunj Thakkar\r\n7807887087', '2025-05-13 11:35:46', NULL, NULL, NULL);

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
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 2, '80/120', '110', '85', '97', 'Dolo,\r\nLevocit 5mg', '2024-05-16 09:07:16'),
(2, 5, '120/80', '90', '75', '98f', 'Healthy Person', '2025-05-13 11:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.\r\n<br>\r\n<br>\r\n</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2025-05-13 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Ocean Multispecialty Hospital\r\nNadiad - 387001', 'info_oceanhospital@gmail.com', 9400094000, '2025-05-13 04:16:33', '9 am To 8 Pm');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(3, 8, 'Aashu Patel', 9800098000, 'aashupatel@gmail.com', 'male', 'Dasrath, Vadodra', 18, 'No Medical History ', '2025-05-13 10:25:49', NULL),
(5, 11, 'Sagar Patel', 9809889089, 'sagarpatel@gmail.com', 'male', 'Khaladi, Nadiad', 35, 'No Medical History', '2025-05-13 11:42:57', NULL),
(7, 9, 'Neha Patel', 8908889088, 'nehapatel@gmail.com', 'female', 'Khaladi, Nadiad', 35, 'No Medical History', '2025-05-13 11:52:26', NULL),
(8, 10, 'Purnima Bariya', 7507557057, 'purnimabariya@gmail.com', 'female', 'Vadodra', 18, 'No Medical History', '2025-05-13 11:54:07', NULL),
(9, 12, 'Vrutik Bhatiya', 9459494594, 'vrutikbhatiya@gmail.com', 'male', 'Vadodra', 18, 'No Medical History', '2025-05-13 11:56:12', NULL),
(10, 13, 'Kunj Thakkar', 6506556056, 'kunjthakkar@gmail.com', 'male', 'Dasrath, Vadodra', 18, 'No Medical History', '2025-05-13 11:59:19', NULL),
(11, 14, 'Deep Bhadrakiya', 7607667067, 'deepbhadrakiya@gmail.com', 'male', 'Vadodra', 18, 'Mo Medical History', '2025-05-13 12:01:34', NULL),
(12, 15, 'Shivani Prajapati', 8628668268, 'shivaniprajapati@gmail.com', 'female', 'Vadodra', 18, 'No Medical History', '2025-05-13 12:04:07', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(4, NULL, 'aashupatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 10:28:59', NULL, 0),
(5, 3, 'sagarpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:12:15', '13-05-2025 04:43:10 PM', 1),
(6, NULL, 'aashupatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:39:25', NULL, 0),
(7, 4, 'aashupatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 11:39:35', '13-05-2025 05:10:47 PM', 1),
(8, 5, 'kunjthakkar@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 12:05:00', '13-05-2025 05:36:23 PM', 1),
(9, 3, 'sagarpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2025-05-13 12:06:39', '13-05-2025 05:36:56 PM', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'Sagar Patel', 'Nadiad', 'Nadiad', 'male', 'sagarpatel@gmail.com', 'cf299ba19ce28e89a055d8db3e5578a0', '2025-05-13 11:11:48', NULL),
(4, 'Aashu Patel', 'Dasrath', 'Vadodra', 'male', 'aashupatel@gmail.com', '957f31f5ca7435e46ac40930fd5453c8', '2025-05-13 11:14:04', NULL),
(5, 'KunjThakkar', 'Dasrath', 'Vadodra', 'male', 'kunjthakkar@gmail.com', '06ebce8a53a6d08d219637cc6459f6e0', '2025-05-13 11:15:40', NULL);

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
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
