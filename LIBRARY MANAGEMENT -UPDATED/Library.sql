-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2018 at 10:35 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Library`
--

-- --------------------------------------------------------

--
-- Table structure for table `BOOK`
--

CREATE TABLE `BOOK` (
  `NAME` varchar(20) DEFAULT NULL,
  `YEAR` varchar(10) DEFAULT NULL,
  `LANG` varchar(10) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `ACTUAL` int(11) DEFAULT NULL,
  `REM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BOOK`
--

INSERT INTO `BOOK` (`NAME`, `YEAR`, `LANG`, `ID`, `ACTUAL`, `REM`) VALUES
('Harry Potter', '2000', 'English', 101, 20, 20),
('Lord Of the Rings', '1998', 'English', 101, 15, 15),
('Game of Thrones', '2008', 'English', 101, 21, 21),
('Into Thin Air', '2002', 'Japanese', 102, 10, 10),
('Guns,Germs,Steel', '2001', 'English', 102, 10, 10),
('The Little Prince', '2005', 'Russian', 101, 20, 20),
('Meditations', '2002', 'English', 102, 10, 10),
('Stephen Hawking', '1997', 'Spanish', 102, 10, 10),
('Dragon Tattoo', '2011', 'Mandarin', 101, 20, 20),
('Person And Situation', '2000', 'Spanish', 103, 8, 8),
('SWAY', '2010', 'Mandarin', 103, 8, 8),
('The Alchemist', '2008', 'Russian', 101, 20, 20),
('NOAH', '2006', 'Russian', 104, 20, 23),
('The Boys in The Boat', '1963', 'English', 105, 20, 20),
('Walk in the Woods', '1955', 'Spanish', 105, 20, 20),
('RedBreast', '2009', 'Russian', 107, 20, 20),
('Andromeda', '1980', 'English', 106, 20, 20),
('There Were None', '1987', 'Spanish', 107, 20, 20),
('What NExt!', '2000', 'English', 107, 20, 20),
('The Martian', '1990', 'Mandarin', 106, 20, 20),
('abcd', '1928', 'English', 101, 20, 10),
('abcd', '1928', 'English', 101, 20, 10),
('LOVE', '2018', 'BHOJPURI', 103, 10, 10),
('xyz', '2020', 'Braille', 102, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORY`
--

CREATE TABLE `CATEGORY` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CATEGORY`
--

INSERT INTO `CATEGORY` (`ID`, `NAME`) VALUES
(101, 'FICTION'),
(102, 'NON-FICTION'),
(103, 'PSYCHOLOGY'),
(104, 'HISTORY'),
(105, 'BIOGRAPHY'),
(106, 'FANTASY'),
(107, 'MYSTERY');

-- --------------------------------------------------------

--
-- Table structure for table `DISPLAY`
--

CREATE TABLE `DISPLAY` (
  `SNO` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `STAFF`
--

CREATE TABLE `STAFF` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `IsADMIN` varchar(10) DEFAULT NULL,
  `DESG` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STAFF`
--

INSERT INTO `STAFF` (`ID`, `NAME`, `IsADMIN`, `DESG`) VALUES
(91, 'Adm1', 'Y', 'Prof'),
(92, 'Adm2', 'Y', 'Prof'),
(93, 'Stf1', 'N', 'Prof'),
(94, 'Adm3', 'Y', 'Dr'),
(95, 'Stf2', 'N', 'Dr');

-- --------------------------------------------------------

--
-- Table structure for table `STATUS`
--

CREATE TABLE `STATUS` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `NUMBER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STATUS`
--

INSERT INTO `STATUS` (`ID`, `NAME`, `NUMBER`) VALUES
(101, 'PRAVEEN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `BORR_ID` int(11) DEFAULT NULL,
  `DEPT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`ID`, `NAME`, `SEX`, `DOB`, `BORR_ID`, `DEPT`) VALUES
(101, 'Praveen', 'Male', '1998-07-21', 1, 'CSE'),
(102, 'Monisha', 'Female', '1998-01-23', 2, 'CSE'),
(103, 'Ashok', 'Male', '1998-08-07', 3, 'CSE'),
(104, 'Manan', 'Male', '1997-02-15', 4, 'CSE'),
(105, 'Sourish', 'Male', '1998-10-20', 5, 'CSE'),
(106, 'Akshay', 'Male', '1998-12-21', 6, 'ECE'),
(107, 'Akash', 'Male', '2000-05-13', 7, 'ECE'),
(108, 'Shivam', 'Male', '1996-01-01', 8, 'CSE'),
(110, 'Vikash', 'Male', '1997-07-22', 10, 'Chemical'),
(111, 'Mahesh', 'Male', '1998-12-15', 11, 'Ceramics'),
(112, 'Naukesh', 'Male', '2000-10-16', 12, 'Electrical'),
(113, 'Rakesh', 'Male', '1999-04-03', 13, 'ECE'),
(114, 'Aman', 'Male', '2001-12-25', 14, 'Metallurgy'),
(115, 'Shubham', 'Male', '1997-10-29', 15, 'Chemical'),
(115, 'ABCD', 'male', NULL, 15, 'CSE'),
(116, 'defgh', 'TRANS', NULL, 16, 'Aerospace'),
(117, 'Sanchita', 'Female', NULL, 17, 'ECE'),
(118, '', '', NULL, 18, ''),
(119, '', '', NULL, 19, ''),
(119, 'GPS', 'MALE', NULL, 19, 'CSE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CATEGORY`
--
ALTER TABLE `CATEGORY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `DISPLAY`
--
ALTER TABLE `DISPLAY`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DISPLAY`
--
ALTER TABLE `DISPLAY`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
