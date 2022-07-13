-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 05.31
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
-- Indeks untuk tabel `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indeks untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`),
  ADD KEY `id_data_diri` (`id_utama`);

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
-- AUTO_INCREMENT untuk tabel `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `id_utama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2855;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  ADD CONSTRAINT `keahlian_ibfk_1` FOREIGN KEY (`id_utama`) REFERENCES `data_diri` (`id_utama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`id_utama`) REFERENCES `data_diri` (`id_utama`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
