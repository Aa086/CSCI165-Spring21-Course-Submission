-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2013 at 03:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `MenuSeqNo` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `ItemNo` int(11) NOT NULL,
  `ItemName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY (`MenuSeqNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuSeqNo`, `Category`, `ItemNo`, `ItemName`, `Price`) VALUES
(1, 'A', 206, 'Fresh Tomatoe', 4.35),
(2, 'A', 979, 'Lettuce - Arugula', 6.25),
(3, 'A', 428, 'Muffin Mix - Corn Harvest', 6.2),
(4, 'A', 419, 'Apples - Sliced / Wedge', 6.09),
(5, 'A', 448, 'Freedom Fries', 3.57),
(6, 'E', 1000, 'Chocolate Chip Cookie', 6.45),
(7, 'E', 635, 'Beer', 9.0),
(8, 'E', 943, 'Beef Patty', 3.79),
(9, 'E', 248, 'Apple - Royal Gala', 8.75),
(10, 'E', 207, 'Pork Sandwich', 6.34);

-- --------------------------------------------------------

--
-- Table structure for table `tablelist`
--

CREATE TABLE IF NOT EXISTS `tablelist` (
  `TableSeqNo` int(11) NOT NULL AUTO_INCREMENT,
  `TableNo` int(11) NOT NULL,
  `WaiterSeqNo` int(11) NOT NULL,
  PRIMARY KEY (`TableSeqNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tablelist`
--

INSERT INTO `tablelist` (`TableSeqNo`, `TableNo`, `WaiterSeqNo`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 5, 1),
(4, 9, 1),
(5, 11, 1),
(6, 15, 1),
(7, 3, 2),
(8, 4, 2),
(9, 6, 2),
(10, 7, 2),
(11, 17, 2),
(12, 18, 2),
(13, 8, 3),
(14, 10, 3),
(15, 12, 3),
(16, 13, 4),
(17, 14, 4),
(18, 26, 4);

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE IF NOT EXISTS `waiter` (
  `WaiterSeqNo` int(11) NOT NULL AUTO_INCREMENT,
  `WaiterName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`WaiterSeqNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`WaiterSeqNo`, `WaiterName`) VALUES
(1, 'Nancy Jean'),
(2, 'Bubba Lee'),
(3, 'Jim Bob'),
(4, 'Laura Flo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;