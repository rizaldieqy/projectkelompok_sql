-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 10 Mar 2020 pada 09.29
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pendaftara_Siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata_pendaftar`
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
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `no_daftar` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`no_daftar`, `email`, `Password`) VALUES
(1, 'angga123@gmail.com', 'angga1234'),
(2, 'dedy14045@gamil.com', 'dedymcd'),
(3, 'habibucul@gmail.com', 'habibucul'),
(4, 'imamstater@gmail.com', 'imamstater'),
(5, 'rizaluhuy@gmail.com', 'rizal12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` bigint(20) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `jurusan`) VALUES
(1, 'Akuntansi'),
(2, 'Tata Boga'),
(3, 'Teknik Komputer dan Jaringan'),
(4, 'Penjualan'),
(5, 'Teknik Komputer dan Jaringan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata_pendaftar`
--
ALTER TABLE `biodata_pendaftar`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `no_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode_jurusan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
