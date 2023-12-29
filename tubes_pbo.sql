-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 03:14 PM
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
-- Database: `tubes_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_akun`, `nama`, `email`, `password`, `status`) VALUES
(1, 'elan agum w', 'elanagumw@gmail.com', 'd4c3b2a1', 'true'),
(2, 'asdfasfd', 'asfdsafda', 'safasdfasddf', 'false'),
(3, 'FBDFDF', 'sdfsdf', 'sdfsdf', 'false'),
(4, 'sdfsdf', 'adasda', 'trhdghf', 'false'),
(5, 'adasd', 'adasda', 'adsasd', 'true'),
(6, '1', '1', '1', 'true'),
(7, '2', '2', '2', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `nomer_kamar` int(11) NOT NULL,
  `jenis_kamar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `ketersediaan` varchar(50) NOT NULL,
  `id_kamar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`nomer_kamar`, `jenis_kamar`, `harga`, `ketersediaan`, `id_kamar`) VALUES
(101, 'Single', 100000, 'tersedia', 1),
(102, 'Single', 100000, 'tersedia', 2),
(103, 'Single', 100000, 'tersedia', 3),
(104, 'Single', 100000, 'tersedia', 4),
(105, 'Single', 100000, 'tersedia', 5),
(201, 'Double', 250000, 'tersedia', 6),
(202, 'Double', 250000, 'tersedia', 7),
(203, 'Double', 250000, 'tersedia', 8),
(204, 'Double', 250000, 'tersedia', 9),
(205, 'Double', 250000, 'tersedia', 10),
(301, 'Deluxe', 400000, 'tersedia', 11),
(302, 'Deluxe', 400000, 'tersedia', 12),
(303, 'Deluxe', 400000, 'tersedia', 13),
(304, 'Deluxe', 400000, 'tersedia', 14),
(305, 'Deluxe', 400000, 'tersedia', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `no_kamar` int(11) DEFAULT NULL,
  `tanggal_checkIn` date DEFAULT NULL,
  `tanggal_checkOut` date DEFAULT NULL,
  `id_kustomer` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `no_kamar`, `tanggal_checkIn`, `tanggal_checkOut`, `id_kustomer`, `total_bayar`) VALUES
(5, 101, '2023-12-29', '2023-12-31', 6, 200000),
(6, 305, '2023-12-29', '2024-01-01', 6, 1200000),
(7, 103, '2023-01-01', '2023-12-31', 6, 36400000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`nomer_kamar`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `no_kamar` (`no_kamar`),
  ADD KEY `id_kustomer` (`id_kustomer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `nomer_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`no_kamar`) REFERENCES `kamar` (`nomer_kamar`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_kustomer`) REFERENCES `customer` (`id_akun`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
