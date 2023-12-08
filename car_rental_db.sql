-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 05:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` char(10) NOT NULL,
  `street_num` int(10) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `pcode` char(10) NOT NULL,
  `is_hq` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street_num`, `street_name`, `city`, `province`, `pcode`, `is_hq`) VALUES
('10MPTBGR', 10, 'Jl. Merpati', 'Bogor', 'Jawa Barat', '00010', 'N'),
('11PRGLTGR', 11, 'Jl. Pergaulan', 'Tangerang', 'Jawa Barat', '00011', 'N'),
('12BBSDPK', 12, 'Jl. Bebas', 'Depok', 'Jawa Barat', '00012', 'N'),
('13BRNSMG', 13, 'Jl. Beringin', 'Semarang', 'Jawa Tengah', '00013', 'Y'),
('14GLGTMG', 14, 'Jl. Gilingsari', 'Temanggung', 'Jawa Tengah', '00014', 'N'),
('15ADPPWT', 15, 'Jl. Adipati', 'Purwokerto', 'Jawa Tengah', '00015', 'N'),
('1DMIJGJ', 1, 'Jl. Damai', 'Jogja', 'DIY', '00001', 'Y'),
('2PRGJGJ', 2, 'Jl. Perang', 'Sleman', 'DIY', '00002', 'N'),
('3SJTMGL', 3, 'Jl. Sejahtera', 'Magelang', 'Jawa Tengah', '00003', 'N'),
('4TGHSL', 4, 'Jl. Tengah', 'Solo', 'Jawa Tengah', '00004', 'N'),
('5DRMLG', 5, 'Jl. Durian Runtuh', 'Malang', 'Jawa Timur', '00005', 'Y'),
('6MSGSBY', 6, 'Jl. Musang King', 'Surabaya', 'Jawa Timur', '00006', 'N'),
('7SLWBDG', 7, 'Jl. Siliwangi', 'Bandung', 'Jawa Barat', '00007', 'N'),
('8RYBKS', 8, 'Jl. Raya', 'Bekasi', 'Jawa Barat', '00008', 'Y'),
('9GRDCRB', 9, 'Jl. Garuda', 'Cirebon', 'Jawa Barat', '00009', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` char(10) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  `color` varchar(50) NOT NULL,
  `lic_plate` char(10) NOT NULL,
  `car_loc` char(10) NOT NULL,
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `make`, `model`, `year`, `color`, `lic_plate`, `car_loc`, `class`) VALUES
('0001', 'Audi', 'R8', 2019, 'Red', 'AB1001II', '1DMIJGJ', 'SC'),
('0002', 'Ford', 'Alpha', 2019, 'Blue', 'AB1002JJ', '2PRGJGJ', 'M'),
('0003', 'Lexus', 'Lancer', 2020, 'Green', 'AA1003KK', '3SJTMGL', 'M'),
('0004', 'Toyota', 'Abstract', 2022, 'Black', 'N4004NT', '4TGHSL', 'C'),
('0005', 'Mazda', 'RX', 2020, 'White', 'N4005JG', '5DRMLG', 'SC'),
('0006', 'Suzuki', 'Denver', 2021, 'White', 'L4006JG', '6MSGSBY', 'SC'),
('0007', 'Mitsubishi', 'Evo', 2023, 'Black', 'D7007BDG', '7SLWBDG', 'S'),
('0008', 'Honda', 'HRV', 2023, 'Dark Green', 'B8008BKS', '8RYBKS', 'S'),
('0009', 'Honda', 'CRV', 2023, 'Green', 'E9009ICB', '9GRDCRB', 'S'),
('0010', 'BMW', 'Extreme', 2018, 'Light Gray', 'F1010BGR', '10MPTBGR', 'C'),
('0011', 'Hyundai', 'Jett', 2021, 'Dark Gray', 'A1111TGR', '11PRGLTGR', 'C'),
('0012', 'Renault', 'Chamber', 2022, 'Yellow', 'B1212DPK', '12BBSDPK', 'M'),
('0013', 'Chevrolet', 'Corvette', 2015, 'Gray', 'H1313SMG', '13BRNSMG', 'M'),
('0014', 'Nissan', 'Skyline', 1998, 'Light Blue', 'AA1414TMG', '14GLGTMG', 'SC'),
('0015', 'Datsun', 'Rock', 2008, 'Light Green', 'R1515TMG', '15ADPPWT', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `car_class`
--

CREATE TABLE `car_class` (
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C',
  `class_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_class`
--

INSERT INTO `car_class` (`class`, `class_desc`) VALUES
('SC', 'Sub-Compact'),
('C', 'Compact'),
('S', 'Sedan'),
('M', 'Modern');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `dlicense` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`dlicense`) VALUES
('000-001'),
('000-002'),
('000-003'),
('000-004'),
('000-005'),
('000-006'),
('000-007'),
('000-008'),
('000-009'),
('000-010'),
('000-011'),
('000-012'),
('000-013'),
('000-014'),
('000-015');

-- --------------------------------------------------------

--
-- Table structure for table `dropoff_charge`
--

CREATE TABLE `dropoff_charge` (
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C',
  `from_loc` char(10) NOT NULL,
  `to_loc` char(10) NOT NULL,
  `charge` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dropoff_charge`
--

INSERT INTO `dropoff_charge` (`class`, `from_loc`, `to_loc`, `charge`) VALUES
('SC', '13BRNSMG', '14GLGTMG', 25000.00),
('SC', '13BRNSMG', '15ADPPWT', 30000.00),
('SC', '1DMIJGJ', '2PRGJGJ', 10000.00),
('SC', '1DMIJGJ', '3SJTMGL', 20000.00),
('SC', '1DMIJGJ', '4TGHSL', 30000.00),
('SC', '1DMIJGJ', '5DRMLG', 50000.00),
('SC', '5DRMLG', '6MSGSBY', 25000.00),
('SC', '8RYBKS', '10MPTBGR', 20000.00),
('SC', '8RYBKS', '11PRGLTGR', 20000.00),
('SC', '8RYBKS', '12BBSDPK', 15000.00),
('SC', '8RYBKS', '7SLWBDG', 27000.00),
('SC', '8RYBKS', '9GRDCRB', 40000.00),
('C', '13BRNSMG', '14GLGTMG', 30000.00),
('C', '13BRNSMG', '15ADPPWT', 35000.00),
('C', '1DMIJGJ', '2PRGJGJ', 15000.00),
('C', '1DMIJGJ', '3SJTMGL', 25000.00),
('C', '1DMIJGJ', '4TGHSL', 35000.00),
('C', '1DMIJGJ', '5DRMLG', 55000.00),
('C', '5DRMLG', '6MSGSBY', 30000.00),
('C', '8RYBKS', '10MPTBGR', 25000.00),
('C', '8RYBKS', '11PRGLTGR', 25000.00),
('C', '8RYBKS', '12BBSDPK', 20000.00),
('C', '8RYBKS', '7SLWBDG', 32000.00),
('C', '8RYBKS', '9GRDCRB', 45000.00),
('S', '13BRNSMG', '14GLGTMG', 35000.00),
('S', '13BRNSMG', '15ADPPWT', 40000.00),
('S', '1DMIJGJ', '2PRGJGJ', 20000.00),
('S', '1DMIJGJ', '3SJTMGL', 30000.00),
('S', '1DMIJGJ', '4TGHSL', 40000.00),
('S', '1DMIJGJ', '5DRMLG', 60000.00),
('S', '5DRMLG', '6MSGSBY', 35000.00),
('S', '8RYBKS', '10MPTBGR', 30000.00),
('S', '8RYBKS', '11PRGLTGR', 30000.00),
('S', '8RYBKS', '12BBSDPK', 25000.00),
('S', '8RYBKS', '7SLWBDG', 37000.00),
('S', '8RYBKS', '9GRDCRB', 50000.00),
('M', '13BRNSMG', '14GLGTMG', 45000.00),
('M', '13BRNSMG', '15ADPPWT', 50000.00),
('M', '1DMIJGJ', '2PRGJGJ', 30000.00),
('M', '1DMIJGJ', '3SJTMGL', 40000.00),
('M', '1DMIJGJ', '4TGHSL', 50000.00),
('M', '1DMIJGJ', '5DRMLG', 70000.00),
('M', '5DRMLG', '6MSGSBY', 45000.00),
('M', '8RYBKS', '10MPTBGR', 40000.00),
('M', '8RYBKS', '11PRGLTGR', 40000.00),
('M', '8RYBKS', '12BBSDPK', 35000.00),
('M', '8RYBKS', '7SLWBDG', 47000.00),
('M', '8RYBKS', '9GRDCRB', 60000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `dlicense` char(10) NOT NULL,
  `work_loc` varchar(100) NOT NULL,
  `emtype` enum('FT','PT','I','C') NOT NULL DEFAULT 'FT',
  `is_pres` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_vpres` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`dlicense`, `work_loc`, `emtype`, `is_pres`, `is_vpres`) VALUES
('000-001', '1DMIJGJ', 'FT', 'Y', 'N'),
('000-002', '2PRGJGJ', 'C', 'N', 'N'),
('000-003', '3SJTMGL', 'FT', 'N', 'Y'),
('000-004', '4TGHSL', 'I', 'N', 'N'),
('000-005', '5DRMLG', 'PT', 'N', 'N'),
('000-006', '6MSGSBY', 'FT', 'Y', 'N'),
('000-007', '7SLWBDG', 'FT', 'N', 'Y'),
('000-008', '8RYBKS', 'I', 'N', 'N'),
('000-009', '9GRDCRB', 'FT', 'Y', 'N'),
('000-010', '10MPTBGR', 'FT', 'N', 'Y'),
('000-011', '11PRGLTGR', 'PT', 'N', 'N'),
('000-012', '12BBSDPK', 'FT', 'N', 'N'),
('000-013', '13BRNSMG', 'FT', 'Y', 'N'),
('000-014', '14GLGTMG', 'FT', 'N', 'N'),
('000-015', '15ADPPWT', 'FT', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `emtype` enum('FT','PT','I','C') NOT NULL DEFAULT 'FT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`emtype`) VALUES
('FT'),
('PT'),
('I'),
('C');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `dlicense` char(10) NOT NULL,
  `address_id` char(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`dlicense`, `address_id`, `first_name`, `last_name`) VALUES
('000-001', '1DMIJGJ', 'Reza', 'Akmal'),
('000-002', '2PRGJGJ', 'Kyrie', 'Irving'),
('000-003', '3SJTMGL', 'Ahmad', 'Hakim'),
('000-004', '4TGHSL', 'Rizky', 'Satria'),
('000-005', '5DRMLG', 'Adam', 'Pratama'),
('000-006', '6MSGSBY', 'Nurul', 'Ghoib'),
('000-007', '7SLWBDG', 'Ariya', 'Sanjaya'),
('000-008', '8RYBKS', 'Halim', 'Cahyanto'),
('000-009', '9GRDCRB', 'Adi', 'Hilmy'),
('000-010', '10MPTBGR', 'Alif', 'Wijaya'),
('000-011', '11PRGLTGR', 'Ilham', 'Ahmad'),
('000-012', '12BBSDPK', 'Zaki', 'Ilham'),
('000-013', '13BRNSMG', 'Safira', 'Siswanto'),
('000-014', '14GLGTMG', 'Alifa', 'Putri'),
('000-015', '15ADPPWT', 'Fara', 'Hasanah');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `dlicense` char(10) NOT NULL,
  `phone_num` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`dlicense`, `phone_num`) VALUES
('000-001', '081266660001'),
('000-002', '082287780002'),
('000-003', '081276548703'),
('000-004', '082110209874'),
('000-005', '085399812225'),
('000-006', '082290098876'),
('000-007', '089677785507'),
('000-008', '087822117688'),
('000-009', '087898120099'),
('000-010', '087722331010'),
('000-011', '081355668711'),
('000-012', '082110920012'),
('000-013', '085740129813'),
('000-014', '085675203714'),
('000-015', '087756783015');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `duration` enum('H','M','D','B') NOT NULL DEFAULT 'B',
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C',
  `from_date` date NOT NULL,
  `percent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`duration`, `class`, `from_date`, `percent`) VALUES
('H', 'SC', '2023-11-30', 10),
('H', 'C', '2023-11-30', 12),
('H', 'S', '2023-11-30', 14),
('H', 'M', '2023-11-30', 16),
('M', 'SC', '2023-11-30', 18),
('M', 'C', '2023-11-30', 20),
('M', 'S', '2023-11-30', 22),
('M', 'M', '2023-11-30', 24),
('D', 'SC', '2023-11-30', 26),
('D', 'C', '2023-11-30', 28),
('D', 'S', '2023-11-30', 30),
('D', 'M', '2023-11-30', 32),
('B', 'SC', '2023-11-30', 34),
('B', 'C', '2023-11-30', 36),
('B', 'S', '2023-11-30', 38),
('B', 'M', '2023-11-30', 40);

-- --------------------------------------------------------

--
-- Table structure for table `promo_rate`
--

CREATE TABLE `promo_rate` (
  `duration` enum('H','M','D','B') NOT NULL DEFAULT 'B',
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C',
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_rate`
--

INSERT INTO `promo_rate` (`duration`, `class`, `amount`) VALUES
('H', 'SC', 100000.00),
('H', 'C', 150000.00),
('H', 'S', 200000.00),
('H', 'M', 250000.00),
('M', 'SC', 300000.00),
('M', 'C', 350000.00),
('M', 'S', 375000.00),
('M', 'M', 400000.00),
('D', 'SC', 450000.00),
('D', 'C', 500000.00),
('D', 'S', 550000.00),
('D', 'M', 600000.00),
('B', 'SC', 650000.00),
('B', 'C', 700000.00),
('B', 'S', 750000.00),
('B', 'M', 1000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `rental_id` char(10) NOT NULL,
  `dlicense` char(10) NOT NULL,
  `car_id` char(10) NOT NULL,
  `from_loc` char(10) NOT NULL,
  `dropoff_loc` char(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `tank_stat` enum('F','T','H','Q','E') NOT NULL DEFAULT 'F',
  `init_odo` int(11) NOT NULL,
  `return_odo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`rental_id`, `dlicense`, `car_id`, `from_loc`, `dropoff_loc`, `from_date`, `to_date`, `tank_stat`, `init_odo`, `return_odo`) VALUES
('0001', '000-001', '0001', '1DMIJGJ', '2PRGJGJ', '2023-11-30', '2023-12-01', 'F', 10000, 10070),
('0002', '000-002', '0002', '1DMIJGJ', '3SJTMGL', '2023-11-30', '0000-00-00', 'F', 11000, 11216),
('0003', '000-003', '0003', '1DMIJGJ', '4TGHSL', '2023-11-30', '2023-12-02', 'T', 13232, 13382),
('0004', '000-004', '0004', '1DMIJGJ', '4TGHSL', '2023-11-30', '2023-12-03', 'Q', 12986, 13186),
('0005', '000-005', '0005', '1DMIJGJ', '5DRMLG', '2023-11-30', '0000-00-00', 'T', 25112, 26000),
('0006', '000-006', '0006', '5DRMLG', '6MSGSBY', '2023-11-30', '2023-12-07', 'H', 11444, 11694),
('0007', '000-007', '0007', '8RYBKS', '7SLWBDG', '2023-11-30', '0000-00-00', 'Q', 37767, 38000),
('0008', '000-008', '0008', '8RYBKS', '9GRDCRB', '2023-11-30', '2023-12-07', 'F', 25674, 25800),
('0009', '000-009', '0009', '8RYBKS', '10MPTBGR', '2023-11-30', '0000-00-00', 'T', 21223, 21500),
('0010', '000-010', '0010', '8RYBKS', '11PRGLTGR', '2023-11-30', '2023-12-14', 'H', 31096, 31110),
('0011', '000-011', '0011', '8RYBKS', '12BBSDPK', '2023-11-30', '2023-12-14', 'T', 40111, 40432),
('0012', '000-012', '0012', '13BRNSMG', '14GLGTMG', '2023-11-30', '2023-12-14', 'E', 49807, 50206),
('0013', '000-013', '0013', '13BRNSMG', '14GLGTMG', '2023-11-30', '0000-00-00', 'Q', 30000, 30439),
('0014', '000-014', '0014', '13BRNSMG', '15ADPPWT', '2023-11-30', '2023-12-30', 'E', 29989, 30389),
('0015', '000-015', '0015', '13BRNSMG', '15ADPPWT', '2023-11-30', '2023-12-30', 'Q', 26710, 27119);

-- --------------------------------------------------------

--
-- Table structure for table `rental_rate`
--

CREATE TABLE `rental_rate` (
  `rental_id` char(10) NOT NULL,
  `duration` enum('H','M','D','B') NOT NULL DEFAULT 'B',
  `class` enum('SC','C','S','M') NOT NULL DEFAULT 'C',
  `count` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_rate`
--

INSERT INTO `rental_rate` (`rental_id`, `duration`, `class`, `count`) VALUES
('0001', 'H', 'SC', 150000.00),
('0002', 'H', 'M', 750000.00),
('0003', 'H', 'M', 400000.00),
('0004', 'H', 'C', 400000.00),
('0005', 'H', 'SC', 250000.00),
('0006', 'M', 'SC', 275000.00),
('0007', 'M', 'S', 300000.00),
('0008', 'M', 'S', 325000.00),
('0009', 'D', 'S', 175000.00),
('0010', 'D', 'C', 150000.00),
('0011', 'D', 'C', 125000.00),
('0012', 'D', 'M', 550000.00),
('0013', 'B', 'M', 1100000.00),
('0014', 'B', 'SC', 850000.00),
('0015', 'B', 'C', 885000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD UNIQUE KEY `street_num` (`street_num`,`street_name`,`city`,`province`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `car_loc` (`car_loc`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `car_class`
--
ALTER TABLE `car_class`
  ADD PRIMARY KEY (`class`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`dlicense`);

--
-- Indexes for table `dropoff_charge`
--
ALTER TABLE `dropoff_charge`
  ADD PRIMARY KEY (`class`,`from_loc`,`to_loc`),
  ADD KEY `from_loc` (`from_loc`),
  ADD KEY `to_loc` (`to_loc`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`dlicense`),
  ADD KEY `work_loc` (`work_loc`),
  ADD KEY `emtype` (`emtype`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`emtype`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`dlicense`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`dlicense`,`phone_num`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`duration`,`class`);

--
-- Indexes for table `promo_rate`
--
ALTER TABLE `promo_rate`
  ADD PRIMARY KEY (`duration`,`class`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `dlicense` (`dlicense`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `from_loc` (`from_loc`),
  ADD KEY `dropoff_loc` (`dropoff_loc`);

--
-- Indexes for table `rental_rate`
--
ALTER TABLE `rental_rate`
  ADD PRIMARY KEY (`rental_id`,`duration`,`class`),
  ADD KEY `duration` (`duration`,`class`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`car_loc`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`class`) REFERENCES `car_class` (`class`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`dlicense`) REFERENCES `person` (`dlicense`);

--
-- Constraints for table `dropoff_charge`
--
ALTER TABLE `dropoff_charge`
  ADD CONSTRAINT `dropoff_charge_ibfk_1` FOREIGN KEY (`class`) REFERENCES `car_class` (`class`),
  ADD CONSTRAINT `dropoff_charge_ibfk_2` FOREIGN KEY (`from_loc`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `dropoff_charge_ibfk_3` FOREIGN KEY (`to_loc`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dlicense`) REFERENCES `person` (`dlicense`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`work_loc`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`emtype`) REFERENCES `employee_type` (`emtype`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`dlicense`) REFERENCES `person` (`dlicense`);

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`duration`,`class`) REFERENCES `promo_rate` (`duration`, `class`);

--
-- Constraints for table `promo_rate`
--
ALTER TABLE `promo_rate`
  ADD CONSTRAINT `promo_rate_ibfk_1` FOREIGN KEY (`class`) REFERENCES `car_class` (`class`);

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`dlicense`) REFERENCES `customer` (`dlicense`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`from_loc`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `rental_ibfk_4` FOREIGN KEY (`dropoff_loc`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `rental_rate`
--
ALTER TABLE `rental_rate`
  ADD CONSTRAINT `rental_rate_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`),
  ADD CONSTRAINT `rental_rate_ibfk_2` FOREIGN KEY (`duration`,`class`) REFERENCES `promo_rate` (`duration`, `class`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
