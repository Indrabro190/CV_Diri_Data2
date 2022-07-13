-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 05.35
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata_diri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_diri`
--

CREATE TABLE `data_diri` (
  `id_utama` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tempat` varchar(50) NOT NULL,
  `Tgl_lahir` varchar(50) NOT NULL,
  `Jenis_Kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Gol_Darah` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `RT_RW` varchar(30) NOT NULL,
  `Kel_Desa` varchar(50) NOT NULL,
  `Kecamatan` varchar(30) NOT NULL,
  `Agama` varchar(30) NOT NULL,
  `Status_Perkawinan` varchar(30) NOT NULL,
  `Pekerjaan` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(30) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_diri`
--

INSERT INTO `data_diri` (`id_utama`, `Nama`, `Tempat`, `Tgl_lahir`, `Jenis_Kelamin`, `Gol_Darah`, `Alamat`, `RT_RW`, `Kel_Desa`, `Kecamatan`, `Agama`, `Status_Perkawinan`, `Pekerjaan`, `Kewarganegaraan`, `No_Telepon`) VALUES
(270, 'fauzi zainal', 'probolinggo', '2022-12-31', 'Laki-laki', 'O', 'jl.salak', 'jzsdkvjb', 'krajan', 'wonoasih', 'islam', 'Nikah', 'boyband', 'WNI', '0'),
(273, 'Waqalah', 'probolinggo', '2022-12-31', 'Laki-laki', 'O', 'jl.salak', '01/03', 'krajan', 'wonoasih', 'cwe', 'Nikah', 'boyband', 'WNI', '0'),
(274, 'Wahyu Hidayat', 'Jakarta', '2021-12-29', 'Laki-laki', 'O', 'Denpasar', '12/05', 'krajan', 'wonoasih', 'islam', 'Nikah', 'boyband', 'WNI', '0'),
(281, 'Firdaus Zanky R', 'probolinggo', '2004-07-28', 'Laki-laki', 'O', 'jl.salak', '01/03', 'krajan', 'wonoasih', 'islam', 'Belum Nikah', 'Gamers', 'WNI', '0'),
(282, 'indra', 'probolinggo', '2022-12-31', 'Laki-laki', 'O', 'jl.salak', 'jzsdkvjb', 'krajan', 'wonoasih', 'islam', 'Nikah', 'boyband', 'WNI', '0'),
(283, 'Farid Garah', 'Cina', '2019-12-31', 'Laki-laki', 'O', 'jl.salak', 'jzsdkvjb', 'krajan', 'Varafa', 'islam', 'Nikah', 'boyband', 'WNI', '0'),
(285, 'David', 'Surabaya', '2020-10-28', 'Laki-laki', 'O', 'jl.salak', 'jzsdkvjb', 'krajan', 'wonoasih', 'islam', 'Belum Nikah', 'boyband', 'WNI', '0'),
(287, 'Virdo', 'probolinggo', '2022-12-31', 'Laki-laki', 'O', 'jl.salak', 'jzsdkvjb', 'krajan', 'wonoasih', 'islam', 'Nikah', 'boyband', 'WNI', '082123457832');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`id_utama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `id_utama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
