-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2013 at 07:03 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xml_project`
--
CREATE DATABASE IF NOT EXISTS `xml_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xml_project`;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `paid` decimal(8,2) NOT NULL,
  `description` varchar(200) NOT NULL,
  `salesperson` varchar(200) NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `date`, `amount`, `paid`, `description`, `salesperson`) VALUES
(1, '2013-12-01', '103.28', '103.28', 'Sold some tubes.', 'Billy'),
(2, '2013-12-01', '20.26', '20.26', 'Sold some gloves.', 'Joe'),
(3, '2013-12-01', '10.25', '0.25', 'Sold a pump gasket.', 'Rick');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
