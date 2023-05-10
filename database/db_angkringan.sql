-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2023 pada 10.44
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_angkringan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `angkringan`
--

CREATE TABLE `angkringan` (
  `id_angkringan` int(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_angkringan` varchar(50) NOT NULL,
  `nama_pemilik` varchar(20) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `jam_buka_tutup` varchar(50) NOT NULL,
  `accept` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `angkringan`
--

INSERT INTO `angkringan` (`id_angkringan`, `id_user`, `nama_angkringan`, `nama_pemilik`, `alamat`, `cover`, `phone`, `jam_buka_tutup`, `accept`) VALUES
(1, 3, 'Angkringan Mah Dedeh', 'Didi', 'Jl. Siti Armilah, Perempatan Majalengka Kulon, Kec. Majalengka, Kab. Majalengka, Jawa Barat, 45418', 'IMG20211122165051.jpg', '087723411222', '14.30 - 02.00 WIB', 1),
(2, 2, 'Angkringan Moza', 'Riska', 'Jl. Kamboja, Majalengka Wetan, Kec. Majalengka, Kab. Majalengka, Jawa Barat', 'IMG202111221650284.jpg', '081231222154', '14.00 - 24.00 WIB', 1),
(16, 11, 'ergi', 'ergi', 'Jl. Babakan Jawa, Majalengka Kidul, Kec. Majalengka, Kab. Majalengka, Jawa Barat', 'WhatsApp_Image_2022-01-18_at_20_29_25_(1).jpeg', '+628591114867', '09.00-09.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dk` int(11) NOT NULL,
  `id_angkringan` int(11) NOT NULL,
  `dokumentasi` varchar(225) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumentasi`
--

INSERT INTO `dokumentasi` (`id_dk`, `id_angkringan`, `dokumentasi`, `ket`) VALUES
(3, 1, 'IMG202111221652031.jpg', 'Ini adalah sesi observasi'),
(4, 1, 'IMG20211122165044.jpg', 'Dokumentasi menu pada angkringan Mah Dedeh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `id_angkringan` int(30) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_angkringan`, `nama_produk`, `harga`, `status`) VALUES
(1, 1, 'Nasi', 2500, 1),
(4, 1, 'Sate Usus', 1500, 1),
(5, 1, 'Sate Kulit', 1500, 1),
(7, 1, 'Sayap', 4000, 1),
(8, 1, 'Sate Ayam', 3000, 1),
(9, 1, 'Kepala Ayam', 3000, 1),
(10, 1, 'Ati Ampela', 4000, 1),
(11, 1, 'Telor Puyuh', 3000, 1),
(12, 1, 'Kikil', 1500, 1),
(13, 1, 'Kopi', 3000, 1),
(14, 1, 'Non-Kopi', 4000, 1),
(15, 1, 'Es Manis Dingin / Panas', 2000, 1),
(16, 0, 'Goodday', 3000, 0),
(18, 1, 'Baso', 4000, 1),
(19, 1, 'Tusukan Kentang', 2000, 1),
(20, 1, 'mie telor', 8000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_token`
--

CREATE TABLE `t_token` (
  `id_token` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `id_role` int(20) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `id_role`, `password`, `email`) VALUES
(1, 'admin', 1, '21232f297a57a5a743894a0e4a801fc3', 'riskaamali22@gmail.com'),
(2, 'riska', 2, 'fb059ad1c514876b15b3ec40df1acdac', 'dederiskaamalia22@gmail.com'),
(3, 'didi', 2, 'c19c8f9b6caad92726f88434d1493ad5', 'didi@gmail.com'),
(11, 'ergi', 2, '37deed96a5d262ce10a4fe174ccba1f6', 'ergi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `angkringan`
--
ALTER TABLE `angkringan`
  ADD PRIMARY KEY (`id_angkringan`);

--
-- Indeks untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_dk`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `t_token`
--
ALTER TABLE `t_token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `angkringan`
--
ALTER TABLE `angkringan`
  MODIFY `id_angkringan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `t_token`
--
ALTER TABLE `t_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
