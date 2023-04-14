-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 14, 2023 at 05:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` varchar(5) NOT NULL,
  `id_distributor` varchar(5) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_distributor`
--

CREATE TABLE `tb_distributor` (
  `id_distributor` varchar(5) NOT NULL,
  `nama_distributor` varchar(30) NOT NULL,
  `email_distributor` varchar(30) NOT NULL,
  `alamat_distributor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_hewan`
--

CREATE TABLE `tb_hewan` (
  `id_hewan` varchar(5) NOT NULL,
  `nama_hewan` varchar(30) NOT NULL,
  `jenis_hewan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id_konsumen` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `id_hewan` varchar(5) NOT NULL,
  `nama_konsumen` varchar(30) NOT NULL,
  `email_konsumen` varchar(30) NOT NULL,
  `alamat_konsumen` varchar(30) NOT NULL,
  `no_telepon_konsumen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id_layanan` varchar(5) NOT NULL,
  `jenis_layanan` varchar(30) NOT NULL,
  `harga_layanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` varchar(5) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `email_pegawai` varchar(30) NOT NULL,
  `alamat_pegawai` varchar(30) NOT NULL,
  `no_telepon_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `id_hewan` varchar(5) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL,
  `alamat_pelanggan` varchar(30) NOT NULL,
  `no_telepon_pelanggan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penukaran_poin`
--

CREATE TABLE `tb_penukaran_poin` (
  `id_penukaran_poin` varchar(5) NOT NULL,
  `id_poin` varchar(5) NOT NULL,
  `id_tkonsumen` varchar(5) NOT NULL,
  `id_tpelanggan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_poin`
--

CREATE TABLE `tb_poin` (
  `id_poin` varchar(5) NOT NULL,
  `poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_saran_kritik`
--

CREATE TABLE `tb_saran_kritik` (
  `id_saran_kritik` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `nama_pengirim` varchar(30) NOT NULL,
  `email_pengirim` varchar(30) NOT NULL,
  `pesan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tkonsumen`
--

CREATE TABLE `tb_tkonsumen` (
  `id_tkonsumen` varchar(5) NOT NULL,
  `id_konsumen` varchar(5) NOT NULL,
  `id_pegawai` varchar(5) NOT NULL,
  `id_layanan` varchar(5) NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `id_penukaran_poin` varchar(5) NOT NULL,
  `jenis_transaksi` varchar(30) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tpelanggan`
--

CREATE TABLE `tb_tpelanggan` (
  `id_tpelanggan` varchar(5) NOT NULL,
  `id_pelanggan` varchar(5) NOT NULL,
  `id_pegawai` varchar(5) NOT NULL,
  `id_layanan` varchar(5) NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `id_penukaran_poin` varchar(5) NOT NULL,
  `jenis_transaksi` varchar(30) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_distributor` (`id_distributor`);

--
-- Indexes for table `tb_distributor`
--
ALTER TABLE `tb_distributor`
  ADD PRIMARY KEY (`id_distributor`);

--
-- Indexes for table `tb_hewan`
--
ALTER TABLE `tb_hewan`
  ADD PRIMARY KEY (`id_hewan`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_hewan` (`id_hewan`);

--
-- Indexes for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_user` (`id_user`,`id_hewan`),
  ADD KEY `id_hewan` (`id_hewan`);

--
-- Indexes for table `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD PRIMARY KEY (`id_penukaran_poin`),
  ADD KEY `id_poin` (`id_poin`,`id_tkonsumen`,`id_tpelanggan`),
  ADD KEY `id_tkonsumen` (`id_tkonsumen`),
  ADD KEY `id_tpelanggan` (`id_tpelanggan`);

--
-- Indexes for table `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tb_saran_kritik`
--
ALTER TABLE `tb_saran_kritik`
  ADD PRIMARY KEY (`id_saran_kritik`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_tkonsumen`
--
ALTER TABLE `tb_tkonsumen`
  ADD PRIMARY KEY (`id_tkonsumen`),
  ADD KEY `id_konsumen` (`id_konsumen`,`id_pegawai`,`id_layanan`,`id_barang`,`id_penukaran_poin`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_layanan` (`id_layanan`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_penukaran_poin` (`id_penukaran_poin`);

--
-- Indexes for table `tb_tpelanggan`
--
ALTER TABLE `tb_tpelanggan`
  ADD PRIMARY KEY (`id_tpelanggan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`,`id_pegawai`,`id_layanan`,`id_barang`,`id_penukaran_poin`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_layanan` (`id_layanan`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_penukaran_poin` (`id_penukaran_poin`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`id_distributor`) REFERENCES `tb_distributor` (`id_distributor`);

--
-- Constraints for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD CONSTRAINT `tb_konsumen_ibfk_1` FOREIGN KEY (`id_hewan`) REFERENCES `tb_hewan` (`id_hewan`),
  ADD CONSTRAINT `tb_konsumen_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pelanggan_ibfk_2` FOREIGN KEY (`id_hewan`) REFERENCES `tb_hewan` (`id_hewan`);

--
-- Constraints for table `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_1` FOREIGN KEY (`id_poin`) REFERENCES `tb_poin` (`id_poin`),
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_2` FOREIGN KEY (`id_tkonsumen`) REFERENCES `tb_tkonsumen` (`id_tkonsumen`),
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_3` FOREIGN KEY (`id_tpelanggan`) REFERENCES `tb_tpelanggan` (`id_tpelanggan`);

--
-- Constraints for table `tb_saran_kritik`
--
ALTER TABLE `tb_saran_kritik`
  ADD CONSTRAINT `tb_saran_kritik_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_tkonsumen`
--
ALTER TABLE `tb_tkonsumen`
  ADD CONSTRAINT `tb_tkonsumen_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_tkonsumen_ibfk_2` FOREIGN KEY (`id_konsumen`) REFERENCES `tb_konsumen` (`id_konsumen`),
  ADD CONSTRAINT `tb_tkonsumen_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `tb_layanan` (`id_layanan`),
  ADD CONSTRAINT `tb_tkonsumen_ibfk_4` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`),
  ADD CONSTRAINT `tb_tkonsumen_ibfk_5` FOREIGN KEY (`id_penukaran_poin`) REFERENCES `tb_penukaran_poin` (`id_penukaran_poin`);

--
-- Constraints for table `tb_tpelanggan`
--
ALTER TABLE `tb_tpelanggan`
  ADD CONSTRAINT `tb_tpelanggan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_tpelanggan_ibfk_2` FOREIGN KEY (`id_layanan`) REFERENCES `tb_layanan` (`id_layanan`),
  ADD CONSTRAINT `tb_tpelanggan_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`),
  ADD CONSTRAINT `tb_tpelanggan_ibfk_4` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tb_tpelanggan_ibfk_5` FOREIGN KEY (`id_penukaran_poin`) REFERENCES `tb_penukaran_poin` (`id_penukaran_poin`);

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_pelanggan` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
