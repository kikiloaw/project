-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2023 at 01:59 AM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_system`
--
CREATE DATABASE IF NOT EXISTS `sample_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sample_system`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `ExtensionName` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `Mobile` smallint(6) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MeterNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`updated_at`, `StudentID`, `FirstName`, `LastName`, `MiddleName`, `Email`, `Gender`, `ExtensionName`, `BirthDate`, `Mobile`, `Address`, `MeterNumber`) VALUES
('2023-04-08 21:26:17', 5, 'ghandi', 'galila', 'borja', NULL, 'Male', 'Jr.', '2023-04-11', NULL, NULL, '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
