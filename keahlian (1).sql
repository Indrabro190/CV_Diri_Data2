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
-- Struktur dari tabel `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `nama_keahlian` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `id_utama`, `nama_keahlian`, `keterangan`) VALUES
(2785, 270, 'javascript', 'jagoo'),
(2786, 270, 'mantap', 'Sangat Jagoo'),
(2787, 270, 'html123', 'Pemula'),
(2794, 273, 'C++1223', 'jhvdjqjd'),
(2795, 273, 'mantap', 'terserah'),
(2796, 273, 'html', 'bagus'),
(2797, 274, 'javascript', 'pemula'),
(2798, 274, 'HTML', 'Sangat Jagoo'),
(2799, 274, 'PHP', 'pemula'),
(2820, 281, 'Main Game MLBB', 'jagoo'),
(2821, 281, 'Mancing Ikan', 'Sangat Jagoo'),
(2822, 281, 'Maling Mangga Tetangga', 'Lumayan Jago'),
(2823, 281, 'Nembak Burung Merpati', 'Pemula'),
(2824, 281, 'Tukang Ngerokok Jisamsu premium', 'Pastinya Kecanduan'),
(2825, 282, 'javascript', 'jagoo'),
(2826, 282, 'mantap', 'Sangat Jagoo'),
(2827, 282, 'html', 'bagus'),
(2828, 282, 'Nembak Burung', 'Pemula'),
(2829, 282, 'Tukang Ngerokok', 'Pastinya Kecanduan'),
(2830, 283, 'Bulutangkis', 'Pintar'),
(2831, 283, 'Voli', 'Lumayan Jago'),
(2832, 283, 'Futsal', 'Jagoo'),
(2833, 283, 'Tenis Meja', 'Pemula'),
(2834, 283, 'Basket', 'Lumayan Jagoo'),
(2840, 285, 'javascript', 'jagoo'),
(2841, 285, 'mantap', 'Sangat Jagoo'),
(2842, 285, 'html', 'bagus'),
(2843, 285, 'Nembak Burung', 'Pemula'),
(2844, 285, 'Tukang Ngerokok', 'Pastinya Kecanduan'),
(2850, 287, 'javascript', 'jagoo'),
(2851, 287, 'mantap', 'Sangat Jagoo'),
(2852, 287, 'html', 'bagus'),
(2853, 287, 'Nembak Burung', 'Pemula'),
(2854, 287, 'Tukang Ngerokok', 'Pastinya Kecanduan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`),
  ADD KEY `id_data_diri` (`id_utama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2855;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  ADD CONSTRAINT `keahlian_ibfk_1` FOREIGN KEY (`id_utama`) REFERENCES `data_diri` (`id_utama`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
