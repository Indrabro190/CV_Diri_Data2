-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 05.36
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
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `riwayat_pendidikan` varchar(50) NOT NULL,
  `nama_pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `id_utama`, `riwayat_pendidikan`, `nama_pendidikan`) VALUES
(388, 270, 'TK1', 'Budi Utomo'),
(389, 270, 'SD', 'Jrebeng Kidul'),
(390, 270, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(391, 270, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(392, 270, 'PERGURUAN TINGGI', 'UNIVERSITAS MALANG'),
(403, 273, 'TK', 'Budi Utomo'),
(404, 273, 'SD', 'Jrebeng Kidul'),
(405, 273, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(406, 273, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(407, 273, 'PERGURUAN TINGGI', 'UNIVERSITAS MALANG'),
(408, 274, 'TK', 'Budi Utomo'),
(409, 274, 'SD', 'Jrebeng Kidul'),
(410, 274, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(411, 274, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(412, 274, 'PERGURUAN TINGGI', 'UNIVERSITAS MALANG'),
(443, 281, 'TK:', 'Budi Utomo'),
(444, 281, 'SD:', 'Jrebeng Kidul'),
(445, 281, 'SMP:', 'SMPN 8 KOTA  PROBOLINGGO'),
(446, 281, 'SMK:', 'SMKN 2 KOTA PROBOLINGGO'),
(447, 281, 'PERGURUAN TINGGI:', '-'),
(448, 282, 'TK', 'Budi Utomo'),
(449, 282, 'SD', 'Jrebeng Kidul'),
(450, 282, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(451, 282, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(452, 282, 'PERGURUAN TINGGI', 'UNIVERSITAS MALANG'),
(453, 283, 'TK', 'Budi Utomo'),
(454, 283, 'SD', 'Jrebeng Kidul'),
(455, 283, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(456, 283, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(457, 283, 'PERGURUAN TINGGI', '-'),
(463, 285, 'TK', 'Budi Utomo'),
(464, 285, 'SD', 'Jrebeng Kidul'),
(465, 285, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(466, 285, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(467, 285, 'PERGURUAN TINGGI', 'UNIVERSITAS MALANG'),
(473, 287, 'TK', 'Budi Utomo'),
(474, 287, 'SD', 'Jrebeng Kidul'),
(475, 287, 'SMP', 'SMPN 8 KOTA  PROBOLINGGO'),
(476, 287, 'SMK', 'SMKN 1 KOTA PROBOLINGGO'),
(477, 287, 'PERGURUAN TINGGI', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD KEY `id_data_diri` (`id_utama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`id_utama`) REFERENCES `data_diri` (`id_utama`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
