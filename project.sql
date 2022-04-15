-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2022 at 09:22 PM
-- Server version: 8.0.28
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `ID` int NOT NULL,
  `AccountName` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `AccountEmail` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `AccountPaymentID` int NOT NULL,
  `PreviousOrderID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`ID`, `AccountName`, `AccountEmail`, `AccountPaymentID`, `PreviousOrderID`) VALUES
(1, 'a', 'a@amazon.com', 1, 1),
(2, 'b', 'b@amazon.com', 2, 2),
(3, 'c', 'c@amazon.com', 3, 3),
(4, 'd', 'd@amazon.com', 4, 4),
(5, 'e', 'e@amazon.com', 5, 5),
(6, 'f', 'f@amazon.com', 6, 6),
(7, 'g', 'g@amazon.com', 7, 7),
(8, 'h', 'h@amazon.com', 8, 8),
(9, 'i', 'i@amazon.com', 9, 9),
(10, 'j', 'j@amazon.com', 10, 10),
(11, 'k', 'k@amazon.com', 11, 11),
(12, 'l', 'l@amazon.com', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `Amazon`
--

CREATE TABLE `Amazon` (
  `HelpCenter` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Accessibility` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Prime` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `CustomerServiceID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Amazon`
--

INSERT INTO `Amazon` (`HelpCenter`, `Accessibility`, `Prime`, `CustomerServiceID`) VALUES
('1', '1', '1', 1),
('2', '2', '2', 2),
('3', '3', '3', 3),
('4', '4', '4', 4),
('5', '5', '5', 5),
('6', '6', '6', 6),
('7', '7', '7', 7),
('8', '8', '8', 8),
('9', '9', '9', 9),
('10', '10', '10', 10),
('11', '11', '11', 11),
('12', '12', '12', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Associate`
--

CREATE TABLE `Associate` (
  `ID` int NOT NULL,
  `Name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Associate`
--

INSERT INTO `Associate` (`ID`, `Name`, `Email`) VALUES
(1, 'm', 'm@amazon.com'),
(2, 'n', 'n@amazon.com'),
(3, 'o', 'o@amazon.com'),
(4, 'p', 'p@amazon.com'),
(5, 'q', 'q@amazon.com'),
(6, 'r', 'r@amazon.com'),
(7, 's', 's@amazon.com');

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `ID` int NOT NULL,
  `ItemID` int NOT NULL,
  `SystemID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`ID`, `ItemID`, `SystemID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5),
(11, 11, 6),
(12, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `CustomerService`
--

CREATE TABLE `CustomerService` (
  `ID` int NOT NULL,
  `csPhone` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `csEmail` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `csAssociateID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CustomerService`
--

INSERT INTO `CustomerService` (`ID`, `csPhone`, `csEmail`, `csAssociateID`) VALUES
(1, '(111)111-1111', 'help@amazon.com', 1),
(2, '(222)222-2222', 'help@amazon.com', 2),
(3, '(333)333-3333', 'help@amazon.com', 3),
(4, '(444)444-4444', 'help@amazon.com', 4),
(5, '(555)555-5555', 'help@amazon.com', 5),
(6, '(666)666-6666', 'help@amazon.com', 6),
(7, '(777)777-7777', 'help@amazon.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Deals`
--

CREATE TABLE `Deals` (
  `ID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Start` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `End` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Savings` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Deals`
--

INSERT INTO `Deals` (`ID`, `ItemID`, `Start`, `End`, `Savings`) VALUES
(1, 1, '2022-04-14', '2022-04-14', '20%'),
(2, 2, '2022-04-14', '2022-04-14', '10%'),
(3, 3, '2022-04-14', '2022-04-14', '5%'),
(4, 4, '2022-04-14', '2022-04-14', '8%'),
(5, 5, '2022-04-14', '2022-04-14', '12%'),
(6, 6, '2022-04-14', '2022-04-14', '25%'),
(7, 7, '2022-04-14', '2022-04-14', '50%'),
(8, 8, '2022-04-14', '2022-04-14', '60%'),
(9, 9, '2022-04-14', '2022-04-14', '15%'),
(10, 10, '2022-04-14', '2022-04-14', '22%'),
(11, 11, '2022-04-14', '2022-04-14', '30%'),
(12, 12, '2022-04-14', '2022-04-14', '40%');

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE `Item` (
  `ID` int NOT NULL,
  `Name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Price` float NOT NULL,
  `Stock` int DEFAULT NULL,
  `SystemID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`ID`, `Name`, `Price`, `Stock`, `SystemID`) VALUES
(1, 'Headset', 149.95, 20, 1),
(2, 'Controller', 74, 43, 2),
(3, 'Playstation 4 Console', 199.99, 112, 2),
(4, 'Game Disk', 39.95, 4, 2),
(5, 'Currency Card', 29.95, 93, 3),
(6, 'Charging Cable', 9.99, 254, 3),
(7, 'Driving Wheel', 279.03, 2, 4),
(8, 'Controller Charging Station', 22.99, 31, 4),
(9, 'Eshop Gift Card', 5, 55, 5),
(10, 'Pro Controller', 69.99, 77, 5),
(11, 'Keyboard', 138.99, 1, 6),
(12, 'Mouse', 11.89, 13, 6),
(13, 'Apple Keyboard', 129.99, 43, 7),
(14, 'External Port Adapter', 55.99, 92, 7),
(15, 'Xbox 360 Controller', 29.99, 14, 8),
(16, 'Playstation 3 Console', 99.99, 24, 8),
(17, 'Playstation Store Credit', 75, 69, 9),
(18, 'Universal TV Remote', 13.98, 81, 10),
(19, 'Virtual Reality Headset', 399.99, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `ID` int NOT NULL,
  `CardName` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `CardNumber` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `CardExp` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `CardCSV` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`ID`, `CardName`, `CardNumber`, `CardExp`, `CardCSV`) VALUES
(1, 'Bill', '111111111111', '01/22', '111'),
(2, 'Will', '222222222222', '02/22', '222'),
(3, 'Jill', '333333333333', '03/22', '333'),
(4, 'William', '444444444444', '04/22', '444'),
(5, 'Dale', '555555555555', '05/22', '555'),
(6, 'Bale', '666666666666', '06/22', '666'),
(7, 'Jim', '777777777777', '07/22', '777'),
(8, 'Dave', '888888888888', '08/22', '888'),
(9, 'Katy', '999999999999', '09/22', '999'),
(10, 'Zoey', '101010101010', '10/22', '101'),
(11, 'Cole', '110110110110', '11/22', '110'),
(12, 'Chloe', '121212121212', '12/22', '121');

-- --------------------------------------------------------

--
-- Table structure for table `PreviousOrder`
--

CREATE TABLE `PreviousOrder` (
  `ID` int NOT NULL,
  `Item1ID` int NOT NULL,
  `Item2ID` int NOT NULL,
  `Item3ID` int NOT NULL,
  `Item4ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PreviousOrder`
--

INSERT INTO `PreviousOrder` (`ID`, `Item1ID`, `Item2ID`, `Item3ID`, `Item4ID`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 6),
(7, 7, 7, 7, 7),
(8, 8, 8, 8, 8),
(9, 9, 9, 9, 9),
(10, 10, 10, 10, 10),
(11, 11, 11, 11, 11),
(12, 12, 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `ID` int NOT NULL,
  `System` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`ID`, `System`) VALUES
(1, 'Playstation 5'),
(2, 'Playstation 4'),
(3, 'Xbox Series X & S'),
(4, 'Xbox One'),
(5, 'Nintendo'),
(6, 'PC'),
(7, 'Mac'),
(8, 'Legacy'),
(9, 'Online Gaming Services'),
(10, 'Microconsoles'),
(11, 'Virtual Reality');

-- --------------------------------------------------------

--
-- Table structure for table `Visitor`
--

CREATE TABLE `Visitor` (
  `ID` int NOT NULL,
  `VisitorStatusID` int NOT NULL,
  `CartID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Visitor`
--

INSERT INTO `Visitor` (`ID`, `VisitorStatusID`, `CartID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 1),
(12, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `VisitorStatus`
--

CREATE TABLE `VisitorStatus` (
  `ID` int NOT NULL,
  `VisitorStatus` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VisitorStatus`
--

INSERT INTO `VisitorStatus` (`ID`, `VisitorStatus`) VALUES
(1, 'Member'),
(2, 'Visitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Associate`
--
ALTER TABLE `Associate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CustomerService`
--
ALTER TABLE `CustomerService`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Deals`
--
ALTER TABLE `Deals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PreviousOrder`
--
ALTER TABLE `PreviousOrder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Visitor`
--
ALTER TABLE `Visitor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `VisitorStatus`
--
ALTER TABLE `VisitorStatus`
  ADD PRIMARY KEY (`VisitorStatus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
