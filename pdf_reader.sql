-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 10:36 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdf_reader`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Author` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Path` varchar(200) NOT NULL,
  PRIMARY KEY (`Name`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `Name`, `Description`, `Author`, `Price`, `Path`) VALUES
(14, '6 xerox.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\Documents\\6 xerox.pdf'),
(21, 'acc.lec7 safwa.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\acc.lec7 safwa.pdf'),
(29, 'Analytical pharma lecture 9.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\Analytical pharma lecture 9.pdf'),
(16, 'ch2.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\Documents\\ch2.pdf'),
(17, 'ES-chapter3.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\Documents\\ES-chapter3.pdf'),
(20, 'ITS_professional_summer_internship_program_2016.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Desktop\\ITS_professional_summer_internship_program_2016.pdf'),
(22, 'Project3.pdf', NULL, NULL, NULL, 'C:\\Users\\HossamOsama\\Downloads\\Project3.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `PageNumber` int(11) NOT NULL,
  `Note` varchar(500) CHARACTER SET utf8 NOT NULL,
  `Headline` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`UserID`,`BookID`,`PageNumber`,`Headline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`UserID`, `BookID`, `PageNumber`, `Note`, `Headline`) VALUES
(1, 0, 0, 'Hossam El-Deen Osama', 'Hossam'),
(1, 16, 0, 'Is Good', 'Cover'),
(1, 22, 0, 'Scanner is Defficult', 'Compiler'),
(1, 22, 1, 'Is Good because it logic', 'Parser'),
(1, 22, 1, 'It is Easy Gedan', 'Scanner');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Password`, `Email`) VALUES
(1, 'Hossam', '12Gadget', 'Hossam.Osama@Outlook.Com'),
(3, 'Ahmed', '12Gadget', 'AhmedAshraf@outtlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `userbook`
--

DROP TABLE IF EXISTS `userbook`;
CREATE TABLE IF NOT EXISTS `userbook` (
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userbook`
--

INSERT INTO `userbook` (`UserID`, `BookID`) VALUES
(0, 14),
(0, 15),
(0, 20),
(0, 21),
(0, 22),
(1, 14),
(1, 16),
(1, 22),
(1, 29),
(3, 16),
(3, 17);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
