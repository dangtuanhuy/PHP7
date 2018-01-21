-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 04:49 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watch`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `AboutId` int(11) NOT NULL,
  `AboutName` varchar(70) NOT NULL,
  `AboutHistory` text NOT NULL,
  `Description` text,
  `AboutImg` varchar(500) DEFAULT NULL,
  `EmployeeCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillId` int(11) NOT NULL,
  `BillCreate` date NOT NULL,
  `BillDetails` varchar(200) NOT NULL,
  `BillStatus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill_order`
--

CREATE TABLE `bill_order` (
  `BillId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CategoryDetails` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `ColorId` int(11) NOT NULL,
  `ColorNames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` varchar(60) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Active` int(11) DEFAULT NULL,
  `RoleId` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeCode` varchar(50) NOT NULL,
  `EmployeePass` varchar(50) NOT NULL,
  `EmployeeName` varchar(80) NOT NULL,
  `EmployeeBirth` date DEFAULT NULL,
  `EmployeeMail` varchar(50) NOT NULL,
  `EmployeePhone` varchar(40) DEFAULT NULL,
  `EmployeeDetails` text,
  `Level` int(11) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feeback`
--

CREATE TABLE `feeback` (
  `Feedback` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `FeedbackCreate` date NOT NULL,
  `FeedbackContent` text NOT NULL,
  `Rely` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `imagine_news`
--

CREATE TABLE `imagine_news` (
  `ImgNewsId` int(11) NOT NULL,
  `ImgNews` varchar(500) DEFAULT NULL,
  `NewsId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `imagine_watch`
--

CREATE TABLE `imagine_watch` (
  `ImgWatchId` int(11) NOT NULL,
  `ImgWatch` varchar(500) DEFAULT NULL,
  `WatchId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `img_imployee`
--

CREATE TABLE `img_imployee` (
  `ImgEmpId` int(11) NOT NULL,
  `ImgEmp` varchar(500) DEFAULT NULL,
  `EmployeeCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `LevelId` int(11) NOT NULL,
  `LevelNames` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`LevelId`, `LevelNames`) VALUES
(1, 'Đại học'),
(2, 'Cao đẳng');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsId` int(11) NOT NULL,
  `NewsTitle` varchar(40) NOT NULL,
  `NewsNames` varchar(70) NOT NULL,
  `NewsContent` text NOT NULL,
  `EmployeeCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderId` int(11) NOT NULL,
  `OrderCreate` date NOT NULL,
  `OrderDeliver` date NOT NULL,
  `OrderPlace` varchar(255) NOT NULL,
  `OrderStatus` int(11) DEFAULT '0',
  `Username` varchar(50) NOT NULL,
  `PaymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `WatchId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `OrderQuantity` int(11) NOT NULL,
  `WatchSoldPrice` decimal(12,2) NOT NULL,
  `WatchOriginalPrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `origin`
--

CREATE TABLE `origin` (
  `OriginId` smallint(6) NOT NULL,
  `OriginNames` varchar(100) NOT NULL,
  `OriginDetails` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentId` int(11) NOT NULL,
  `PaymentNames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `ProducerId` int(11) NOT NULL,
  `ProducerName` varchar(100) NOT NULL,
  `ProducerEmail` varchar(80) NOT NULL,
  `ProducerPhone` varchar(30) NOT NULL,
  `ProducerAddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionId` int(11) NOT NULL,
  `PromotionName` varchar(100) NOT NULL,
  `PromotionDetails` text,
  `PromotionDiscount` int(11) DEFAULT NULL,
  `PromotionOpen` date DEFAULT NULL,
  `PromotionClose` date DEFAULT NULL,
  `PromotionActive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_watch`
--

CREATE TABLE `promotion_watch` (
  `WatchId` int(11) NOT NULL,
  `PromotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `RoleNames` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `RoleDetails` varchar(90) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `RoleStatus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleId`, `RoleNames`, `RoleDetails`, `RoleStatus`) VALUES
(1, 'Khách hàng', 'Khách có thể mua hàng', 1),
(2, 'Nhân viên', 'Nhân viên có thể quản lý một vài tính năng nhỏ của hệ thống', 1);

-- --------------------------------------------------------

--
-- Table structure for table `watch`
--

CREATE TABLE `watch` (
  `WatchId` int(11) NOT NULL,
  `WatchName` varchar(150) NOT NULL,
  `WatchPrice` decimal(12,2) UNSIGNED DEFAULT NULL,
  `WatchDetails` text NOT NULL,
  `WatchQuantity` int(11) NOT NULL,
  `WatchSold` int(11) DEFAULT '0',
  `WatchUpdate` date NOT NULL,
  `ColorId` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `ProducerId` int(11) DEFAULT NULL,
  `OriginId` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`AboutId`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillId`);

--
-- Indexes for table `bill_order`
--
ALTER TABLE `bill_order`
  ADD PRIMARY KEY (`BillId`,`OrderId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`ColorId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeCode`),
  ADD KEY `Role` (`Role`),
  ADD KEY `Level` (`Level`);

--
-- Indexes for table `feeback`
--
ALTER TABLE `feeback`
  ADD PRIMARY KEY (`Feedback`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `imagine_news`
--
ALTER TABLE `imagine_news`
  ADD PRIMARY KEY (`ImgNewsId`),
  ADD KEY `NewsId` (`NewsId`);

--
-- Indexes for table `imagine_watch`
--
ALTER TABLE `imagine_watch`
  ADD PRIMARY KEY (`ImgWatchId`),
  ADD KEY `WatchId` (`WatchId`);

--
-- Indexes for table `img_imployee`
--
ALTER TABLE `img_imployee`
  ADD PRIMARY KEY (`ImgEmpId`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`LevelId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsId`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `Username` (`Username`),
  ADD KEY `PaymentId` (`PaymentId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`WatchId`,`OrderId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `origin`
--
ALTER TABLE `origin`
  ADD PRIMARY KEY (`OriginId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentId`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`ProducerId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionId`);

--
-- Indexes for table `promotion_watch`
--
ALTER TABLE `promotion_watch`
  ADD PRIMARY KEY (`WatchId`,`PromotionId`),
  ADD KEY `PromotionId` (`PromotionId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `watch`
--
ALTER TABLE `watch`
  ADD PRIMARY KEY (`WatchId`),
  ADD KEY `ColorId` (`ColorId`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `ProducerId` (`ProducerId`),
  ADD KEY `OriginId` (`OriginId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `AboutId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `ColorId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeback`
--
ALTER TABLE `feeback`
  MODIFY `Feedback` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagine_news`
--
ALTER TABLE `imagine_news`
  MODIFY `ImgNewsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagine_watch`
--
ALTER TABLE `imagine_watch`
  MODIFY `ImgWatchId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_imployee`
--
ALTER TABLE `img_imployee`
  MODIFY `ImgEmpId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `LevelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `origin`
--
ALTER TABLE `origin`
  MODIFY `OriginId` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `ProducerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `PromotionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watch`
--
ALTER TABLE `watch`
  MODIFY `WatchId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_order`
--
ALTER TABLE `bill_order`
  ADD CONSTRAINT `bill_order_ibfk_1` FOREIGN KEY (`BillId`) REFERENCES `bill` (`BillId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_order_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Role`) REFERENCES `role` (`RoleId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Level`) REFERENCES `level` (`LevelId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feeback`
--
ALTER TABLE `feeback`
  ADD CONSTRAINT `feeback_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imagine_news`
--
ALTER TABLE `imagine_news`
  ADD CONSTRAINT `imagine_news_ibfk_1` FOREIGN KEY (`NewsId`) REFERENCES `news` (`NewsId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imagine_watch`
--
ALTER TABLE `imagine_watch`
  ADD CONSTRAINT `imagine_watch_ibfk_1` FOREIGN KEY (`WatchId`) REFERENCES `watch` (`WatchId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `img_imployee`
--
ALTER TABLE `img_imployee`
  ADD CONSTRAINT `img_imployee_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`PaymentId`) REFERENCES `payment` (`PaymentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`WatchId`) REFERENCES `watch` (`WatchId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion_watch`
--
ALTER TABLE `promotion_watch`
  ADD CONSTRAINT `promotion_watch_ibfk_1` FOREIGN KEY (`WatchId`) REFERENCES `watch` (`WatchId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotion_watch_ibfk_2` FOREIGN KEY (`PromotionId`) REFERENCES `promotion` (`PromotionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watch`
--
ALTER TABLE `watch`
  ADD CONSTRAINT `watch_ibfk_1` FOREIGN KEY (`ColorId`) REFERENCES `color` (`ColorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watch_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watch_ibfk_3` FOREIGN KEY (`ProducerId`) REFERENCES `producer` (`ProducerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watch_ibfk_4` FOREIGN KEY (`OriginId`) REFERENCES `origin` (`OriginId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
