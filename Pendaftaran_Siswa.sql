-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2020 at 08:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pendaftaran_Siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata_pendaftar`
--

CREATE TABLE `biodata_pendaftar` (
  `nisn` bigint(20) NOT NULL,
  `nama_pendaftar` varchar(50) NOT NULL,
  `no_KartuKeluarga` bigint(30) NOT NULL,
  `jenis_kelamin` char(50) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `agama` char(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `nama_orangTua` char(50) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `no_daftar` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` bigint(20) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata_pendaftar`
--
ALTER TABLE `biodata_pendaftar`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `no_daftar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode_jurusan` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
