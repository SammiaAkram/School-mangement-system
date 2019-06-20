-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 11:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_id` int(13) NOT NULL,
  `Cat_name` varchar(15) NOT NULL,
  `Academic_year` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class` int(12) NOT NULL,
  `Academic_year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `sub_id` int(12) NOT NULL,
  `class` int(12) DEFAULT NULL,
  `Division_id` int(12) NOT NULL,
  `Academic_year` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(12) NOT NULL,
  `designation` varchar(16) NOT NULL,
  `Academic_year` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `class` int(12) NOT NULL,
  `Division_id` int(12) NOT NULL,
  `Ddate` datetime DEFAULT NULL,
  `User_name` varchar(30) NOT NULL,
  `Academic_year` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(12) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(12) NOT NULL,
  `lname` varchar(12) NOT NULL,
  `dob` date DEFAULT NULL,
  `emial` varchar(30) DEFAULT NULL,
  `occupation` varchar(23) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `qualification` varchar(13) NOT NULL,
  `Father_name` varchar(14) NOT NULL,
  `Father_Pnumber` int(15) DEFAULT NULL,
  `Father_office_address` varchar(30) DEFAULT NULL,
  `Emp_phone_no` int(16) NOT NULL,
  `address` varchar(30) NOT NULL,
  `Salary` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendence`
--

CREATE TABLE `employee_attendence` (
  `eid` int(12) NOT NULL,
  `Attendence_date` datetime NOT NULL,
  `Attendence_status` varchar(14) NOT NULL,
  `User_name` varchar(25) NOT NULL,
  `Academic_year` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exid` int(11) NOT NULL,
  `Exam_name` varchar(15) NOT NULL,
  `Out_of` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `User_name` varchar(23) NOT NULL,
  `Academic_year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exams_date`
--

CREATE TABLE `exams_date` (
  `exid` int(11) DEFAULT NULL,
  `End_Date` varchar(23) NOT NULL,
  `class` int(12) NOT NULL,
  `did` int(12) NOT NULL,
  `Ex_rec_id` int(12) NOT NULL,
  `Academic_year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks`
--

CREATE TABLE `exam_marks` (
  `sid` int(12) NOT NULL,
  `Exam_id` int(12) NOT NULL,
  `subject` varchar(13) NOT NULL,
  `marks` int(13) NOT NULL,
  `Out_of` int(12) NOT NULL,
  `Exam_date` varchar(13) NOT NULL,
  `Sub_id` int(13) NOT NULL,
  `User_name` varchar(12) NOT NULL,
  `Academic_year` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_timetable`
--

CREATE TABLE `exam_subject_timetable` (
  `id` int(12) NOT NULL,
  `Sub_id` int(12) NOT NULL,
  `Sub_name` varchar(23) NOT NULL,
  `Exdate` varchar(24) NOT NULL,
  `Academic_year` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedetails`
--

CREATE TABLE `feedetails` (
  `fid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `ftype` varchar(23) NOT NULL,
  `installement` int(16) NOT NULL,
  `Userid` varchar(23) NOT NULL,
  `Cashier_name` varchar(26) NOT NULL,
  `Paying_Bill` varchar(14) NOT NULL,
  `Bank_name` varchar(23) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  `Total_fee` int(12) NOT NULL,
  `Fees_paid` int(12) NOT NULL,
  `Paid_by` varchar(17) NOT NULL,
  `Feestatus` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_structure`
--

CREATE TABLE `fee_structure` (
  `cat_id` int(12) NOT NULL,
  `cat_name` varchar(25) NOT NULL,
  `class` int(12) NOT NULL,
  `Fee_amount` int(12) NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `User` varchar(14) DEFAULT NULL,
  `Academic_year` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `fname` varchar(23) NOT NULL,
  `mname` varchar(23) NOT NULL,
  `lname` varchar(26) NOT NULL,
  `dob` date NOT NULL,
  `religion` varchar(25) NOT NULL,
  `Permanant_address` varchar(26) DEFAULT NULL,
  `Present_address` varchar(26) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `Phone_no` int(14) DEFAULT NULL,
  `Cell_no` int(12) DEFAULT NULL,
  `email_address` varchar(20) DEFAULT NULL,
  `Father_office` varchar(30) DEFAULT NULL,
  `class` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `sid` int(12) NOT NULL,
  `Attendance_Date` date DEFAULT NULL,
  `Attendence_status` date DEFAULT NULL,
  `Academic_year` int(12) DEFAULT NULL,
  `class` int(12) DEFAULT NULL,
  `Division` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_id` int(12) NOT NULL,
  `Sub_name` varchar(15) NOT NULL,
  `marks` int(12) NOT NULL,
  `Pass_marks` int(13) NOT NULL,
  `Academic_year` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `class` int(14) NOT NULL,
  `Division_id` int(13) NOT NULL,
  `qid` int(12) NOT NULL,
  `Sub_id` int(13) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `Employee_id` int(12) NOT NULL,
  `User_name` varchar(16) NOT NULL,
  `Academic_year` varchar(13) NOT NULL,
  `Ddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `working_days`
--

CREATE TABLE `working_days` (
  `Day_id` int(11) NOT NULL,
  `Days` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `class` (`class`),
  ADD KEY `Division_id` (`Division_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`Division_id`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employee_attendence`
--
ALTER TABLE `employee_attendence`
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD KEY `sid` (`sid`),
  ADD KEY `Exam_id` (`Exam_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `exam_subject_timetable`
--
ALTER TABLE `exam_subject_timetable`
  ADD KEY `id` (`id`);

--
-- Indexes for table `feedetails`
--
ALTER TABLE `feedetails`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD KEY `Division_id` (`Division_id`),
  ADD KEY `class` (`class`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`Day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedetails`
--
ALTER TABLE `feedetails`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD CONSTRAINT `class_subject_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`class`),
  ADD CONSTRAINT `class_subject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`Sub_id`),
  ADD CONSTRAINT `class_subject_ibfk_3` FOREIGN KEY (`Division_id`) REFERENCES `division` (`Division_id`);

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `division_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`class`);

--
-- Constraints for table `employee_attendence`
--
ALTER TABLE `employee_attendence`
  ADD CONSTRAINT `employee_attendence_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`);

--
-- Constraints for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD CONSTRAINT `exam_marks_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  ADD CONSTRAINT `exam_marks_ibfk_2` FOREIGN KEY (`Exam_id`) REFERENCES `exams` (`exid`),
  ADD CONSTRAINT `exam_marks_ibfk_3` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `exam_subject_timetable`
--
ALTER TABLE `exam_subject_timetable`
  ADD CONSTRAINT `exam_subject_timetable_ibfk_1` FOREIGN KEY (`id`) REFERENCES `exams` (`exid`);

--
-- Constraints for table `feedetails`
--
ALTER TABLE `feedetails`
  ADD CONSTRAINT `feedetails_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`);

--
-- Constraints for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD CONSTRAINT `fee_structure_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`Cat_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`class`);

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD CONSTRAINT `student_attendance_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Division_id`) REFERENCES `division` (`Division_id`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`class`) REFERENCES `class` (`class`),
  ADD CONSTRAINT `teacher_ibfk_3` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
