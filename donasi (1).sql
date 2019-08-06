-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 10:44 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_admin`
--

CREATE TABLE `acc_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `noktp` varchar(255) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acc_donatur`
--

CREATE TABLE `acc_donatur` (
  `id_donatur` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `noktp` varchar(255) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_donatur`
--

INSERT INTO `acc_donatur` (`id_donatur`, `username`, `email`, `password`, `nama`, `noktp`, `jenisKelamin`, `alamat`, `nohp`, `foto`) VALUES
(6, 'antonandre', 'antonandre@gmail.com', '2e51424fba3b1b8b6191a8068a3035e76c384b3d770f00e94112d8425ae83c5da6613505480927756c52160257685fa5c5eeff2024790c3d20b50cea473755afMaxMmGTSeCEUgzuVwaYwas+EPpWXB+bpL4T93ntxq40=', '', '', '', '', '', ''),
(9, 'ariel', 'ariel@gmail.com', 'c33b7604f20b7e141c190df0bd53414f6ae09b7b7940a1c5378b17602f5bd6c3e320882cf5bcdaf401f7fe072e19a559ec0cdf4f535d2dd4ef4c2586b5ee063eKe1HLVRFJTzV6y5ynCEhoPj8qNoYHgSck7HUI68lV3U=', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `acc_penerima`
--

CREATE TABLE `acc_penerima` (
  `id_penerima` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `noktp` varchar(255) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_penerima`
--

INSERT INTO `acc_penerima` (`id_penerima`, `username`, `email`, `password`, `nama`, `noktp`, `jenisKelamin`, `alamat`, `nohp`, `foto`) VALUES
(4, 'yosep_antonius', 'yosep_antonius@gmail.com', '09b25ca0f1d399c2e55c0620b0ce853ecafeabe5b80ec4b5e73b66e0a118cc2e3624c98e5a77f2ca2d9a4d0a46b0c0fc2004cbac36859e1356c53a53e73f35f1XWvtfG8unrVjNhveoHs1eX+akOqFU7koNFjn802jkhc=', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `judul_project` varchar(255) NOT NULL,
  `kategori_project` varchar(255) NOT NULL,
  `batas_project` varchar(255) NOT NULL,
  `target_project` varchar(255) NOT NULL,
  `ajakan_project` varchar(255) NOT NULL,
  `deskripsi_project` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `id_penerima`, `judul_project`, `kategori_project`, `batas_project`, `target_project`, `ajakan_project`, `deskripsi_project`, `foto`) VALUES
(4, 4, 'Bantu Panti X', 'Panti Asuhan', '10-08-2019', '1000000', 'Mari Donasi', 'Donasi untuk Panti X', ''),
(7, 4, 'Bantu Panti Asuhan XY', 'Difabel', '2019-08-29', '2000000', 'Mari Bantu teman teman Kita', 'Membantu dapat mengakibatkan ', '/assets/upload/CC2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_wallet` int(11) NOT NULL,
  `d_k` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_wallet`, `d_k`, `jumlah`, `keterangan`, `flag`) VALUES
(7, 6, 'DEBIT', '200000', 'SEMOGA BERKAH LIKE AYAM BERSIH BERKAH!!', 0),
(8, 6, 'DEBIT', '400000', 'SEMOGA BERSIH DAN BAROKAH KAYAK AYAM DONG!!', 0),
(9, 7, 'DEBIT', '800000', 'MANTAPP', 0),
(10, 7, 'DEBIT', '300000', 'JOSSS!!', 0),
(11, 8, 'DEBIT', '200000', 'GUANDOSS!!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id_wallet` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `id_donatur` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `privateKey` varchar(255) NOT NULL,
  `publicKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id_wallet`, `id_project`, `id_donatur`, `address`, `privateKey`, `publicKey`) VALUES
(6, 7, 6, 'YOOYOO', 'DUMMY', 'YYYY'),
(7, 7, 9, 'YOOYOO', 'DUMMY', 'YYYY'),
(8, 4, 9, 'YOOYOO', 'DUMMY', 'YYYY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_admin`
--
ALTER TABLE `acc_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `acc_donatur`
--
ALTER TABLE `acc_donatur`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indexes for table `acc_penerima`
--
ALTER TABLE `acc_penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id_wallet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_admin`
--
ALTER TABLE `acc_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_donatur`
--
ALTER TABLE `acc_donatur`
  MODIFY `id_donatur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `acc_penerima`
--
ALTER TABLE `acc_penerima`
  MODIFY `id_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id_wallet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
