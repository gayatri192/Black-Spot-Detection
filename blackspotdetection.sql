-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 09:25 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blackspotdetection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`AdmID` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PWS` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdmID`, `Name`, `Email`, `PWS`) VALUES
(1, 'Gayatri', 'lohargayatri@gmail.com', 'gayu');

-- --------------------------------------------------------

--
-- Table structure for table `blackspot`
--

CREATE TABLE IF NOT EXISTS `blackspot` (
`BID` int(16) NOT NULL,
  `PSID` varchar(28) NOT NULL,
  `LocName` varchar(50) NOT NULL,
  `Add` varchar(40) NOT NULL,
  `RType` varchar(13) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Lattitude` double NOT NULL,
  `Longitude` float NOT NULL,
  `Level` int(4) NOT NULL,
  `City` varchar(60) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blackspot`
--

INSERT INTO `blackspot` (`BID`, `PSID`, `LocName`, `Add`, `RType`, `Description`, `Lattitude`, `Longitude`, `Level`, `City`) VALUES
(2, '3', 'Shirpur', 'Karvanda Naka, shirpur', 'Crime', 'a place on a road that is considered to be dangerous', 0, 0, 1, 'Shirpur'),
(3, '2', 'Surat', 'Dindori Road', 'Crime', 'jhjhadheuyegys', 0, 0, 1, 'surat'),
(4, '2', 'Navapur Road', 'Surat,Gujrat', 'Accident', 'Car Accident', 0, 0, 1, 'surat');

-- --------------------------------------------------------

--
-- Table structure for table `policestation`
--

CREATE TABLE IF NOT EXISTS `policestation` (
`PSID` int(20) NOT NULL,
  `StName` varchar(70) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Mob_No` varchar(13) NOT NULL,
  `PWS` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `policestation`
--

INSERT INTO `policestation` (`PSID`, `StName`, `Email`, `Address`, `Mob_No`, `PWS`) VALUES
(2, 'Surat', 'station@gmail.com', 'Ravel Nagar', '9787680887', 'station'),
(3, 'dnbdhf', 'lohargayatri@gmail.com', 'jfherhur', 'cvbfhg', 'wjehu'),
(4, 'dhjfgrrygegf', 'lohargayatri@gmail.com', 'ajshqweg', '97876876876', 'jhghguy'),
(5, 'taloda', 'lohar@gmail.com', 'ndfbhegwu', '9878976798', 'nsdj'),
(7, 'Lokmanya Tilak', 'local@gmail.com', 'Pipeline Road,Kurla,Mumbai', '9887679800', 'Tilak'),
(8, 'Metro Police Station', 'metro@gmail.com', 'Andheri', '1234567890', '67890');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`UID` int(15) NOT NULL,
  `Name` varchar(36) NOT NULL,
  `Email` varchar(33) NOT NULL,
  `UContact` varchar(15) NOT NULL,
  `PWS` varchar(40) NOT NULL,
  `City` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UID`, `Name`, `Email`, `UContact`, `PWS`, `City`) VALUES
(1, 'Shreya', 'shreyu@gmail.com', '98787658989', 'shree', 'Taloda'),
(2, 'hgfuy', 'trrtytd@gmail.com', '97876566790', 'hjghf', 'gffhg'),
(3, 'Riddhi', 'riddhi@gmail.com', '98786798767', 'riddhi', 'Nashik'),
(4, 'Trupti Patel', 'trupti@gmail.com', '9897869808', 'trupti', 'Taloda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`AdmID`);

--
-- Indexes for table `blackspot`
--
ALTER TABLE `blackspot`
 ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `policestation`
--
ALTER TABLE `policestation`
 ADD PRIMARY KEY (`PSID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `AdmID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blackspot`
--
ALTER TABLE `blackspot`
MODIFY `BID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `policestation`
--
ALTER TABLE `policestation`
MODIFY `PSID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `UID` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
