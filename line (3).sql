-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 11:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `line`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `description`, `start`, `end`) VALUES
(1, 'dsfsdf', 'dsfsdfsd', '2023-03-13 03:00:00', '2023-03-14 09:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `UserID` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerID` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Surname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Role` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Salary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OT` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Picture` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `UserID`, `CustomerID`, `Name`, `Surname`, `Role`, `Salary`, `OT`, `Picture`) VALUES
(41, NULL, 'SN11405', 'ฝ่ายเอกสาร', 'ออกานิกส์ คอสเม่', '', '', '', NULL),
(47, NULL, 'ds2222', 'dddddddddd', 'kkkkkk', 'wdsdasd', '3000', '', NULL),
(48, NULL, 'SN11405', 'vevrvv', 'rvrvrv', '', '100000', '2000', NULL),
(75, NULL, 'fyy22222020', 'efgdfgdfg', '', '', '', '', NULL),
(76, NULL, 'SN1405', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `excel`
--

CREATE TABLE `excel` (
  `id` int(11) NOT NULL,
  `id_mt` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excel`
--

INSERT INTO `excel` (`id`, `id_mt`, `name`, `remain`, `unit`) VALUES
(1, 4, 'Instan Coffee Mix (I am Coffee Brand)', '0.0000', 'ชิ้น'),
(2, 3, 'SEOUL ORGANIC SUNSCREEN SPF 30 PA++', '20.0000', 'ชิ้น'),
(3, 30, 'test', '50.0000', 'ชิ้น');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `UserID` text COLLATE utf8_unicode_ci NOT NULL,
  `Text` text COLLATE utf8_unicode_ci NOT NULL,
  `Timestamp` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`UserID`, `Text`, `Timestamp`) VALUES
('U1efbc797c7174dd636c047f5ca8eba42', 'สวัสดีครับ', '1564327729309'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669772249084'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669772251284'),
('Uab6e9643e0cb7a28baa2a8c556080a08', '', '1669772476600'),
('Uab6e9643e0cb7a28baa2a8c556080a08', 'register', '1669772571973'),
('Uab6e9643e0cb7a28baa2a8c556080a08', '\"รหัส:HR001\"', '1669772599526'),
('Uab6e9643e0cb7a28baa2a8c556080a08', 'รหัส:HR001', '1669772617338'),
('Uab6e9643e0cb7a28baa2a8c556080a08', 'salary', '1669772626786'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669790788534'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791088241'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791091271'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669791093086'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669791467958'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669793561797'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'register', '1669793569236'),
('Uab6e9643e0cb7a28baa2a8c556080a08', 'salary', '1669866755768'),
('Uab6e9643e0cb7a28baa2a8c556080a08', 'register', '1669866890024'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669867606723'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1669872287738'),
('U7d6ab1d8497e4a799721a05c0f0458d3', 'salary', '1670311648391'),
('', '', ''),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670482441172'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670483189276'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670483195457'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670483204582'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670483279225'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670483446456'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670485041918'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670485127418'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670485232501'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670485466566'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670485999801'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670486011847'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487273948'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487308273'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487379166'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487382411'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487441176'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487752245'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670487790332'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489263216'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489370570'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489396591'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489478264'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489612277'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489859652'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489961900'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670489981511'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491243552'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491245815'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491370632'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491372756'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491391276'),
('Ub73170dfc953cda9cfc254ec2d8aafc6', 'salary', '1670491495816');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` tinyint(2) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `username`, `email`, `password`, `role`, `avatar`) VALUES
(1, 'Saransuk Yimyong', 'FullSN', 'namesaransuk@gmail.com', '123456', 1, 'https://scontent.fkdt3-1.fna.fbcdn.net/v/t39.30808-6/333238931_181984454534645_9211249444914261002_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=knHkiw0gQPsAX-wFu2g&_nc_ht=scontent.fkdt3-1.fna&oh=00_AfDJ5_Yi79PQ6AINnpbo2aFtNpR0c3yBnwtT6dP81Q8_Yg&oe=6405DE21'),
(2, 'Kunlasatree Tangsopha', 'Sherrysherjai', 'kunlasatree@gmail.com', '123456', 2, 'https://scontent.fkdt3-1.fna.fbcdn.net/v/t39.30808-6/283966770_1602996486746817_7137421572149199986_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFWDwe0g0Nj1LOTqrLb8qIn4Hv7J-AVfOPge_sn4BV844YwLzlOSdgmkh6UkBPmM0ASiarsuZCQQDRnOwHRp0uM&_nc_ohc=-rrMRHuu0dsAX_7DsQ1&_nc_ht=scontent.fkdt3-1.fna&oh=00_AfDmnzYrcxoTpacKtrhEagPIWWvfYM_i9bj7A_8jGG7Hjw&oe=64046500');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `orderName` text NOT NULL,
  `orderPrice` int(11) NOT NULL,
  `orderQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderId`, `orderName`, `orderPrice`, `orderQuantity`) VALUES
(57, 2, 'Test 2', 700, 2),
(58, 1, 'Test 1', 250, 1),
(59, 4, 'Test 4', 690, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` double NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `picture`) VALUES
(1, 'Test 1', 250, 'https://doctorjel.co.th/img/product_full/revitalize_01.jpg'),
(2, 'Test 2', 350, 'https://doctorjel.co.th/img/product_full/massage_oil_01.jpg'),
(3, 'Test 3', 330, 'https://doctorjel.co.th/img/product_large/hair_02.jpg'),
(4, 'Test 4', 230, 'https://doctorjel.co.th/img/product_large/feona_02.jpg'),
(5, 'Test 5', 370, 'https://doctorjel.co.th/img/product_large/dre_02.jpg'),
(6, 'Test 6', 520, 'https://doctorjel.co.th/img/product_full/shizen_01.jpg'),
(7, 'Test 7', 420, 'https://doctorjel.co.th/img/product_large/honey_04.jpg'),
(8, 'Test 8', 590, 'https://doctorjel.co.th/img/product_full/FM_01.jpg'),
(9, 'Test 9', 620, 'https://doctorjel.co.th/img/product_full/hulx_01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name_en` varchar(30) NOT NULL,
  `name_th` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name_en`, `name_th`) VALUES
(1, 'Admin', 'แอดมิน'),
(2, 'Member', 'ผู้ใช้งาน');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excel`
--
ALTER TABLE `excel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `excel`
--
ALTER TABLE `excel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
