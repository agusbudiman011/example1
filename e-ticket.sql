-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2024 pada 07.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-ticket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemesanan`
--

CREATE TABLE `tabel_pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `tanggal_pemesanan` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_pemesanan`
--

INSERT INTO `tabel_pemesanan` (`id_pemesanan`, `id_tiket`, `nama_penerima`, `jumlah_pesanan`, `no_hp`, `total_bayar`, `tanggal_pemesanan`, `id_user`) VALUES
(32, 4, 'asdasdssad', 3, '', 1050000, '2024-07-03 04:52:33', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int(11) NOT NULL,
  `armada` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `pemberangkatan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `armada`, `jurusan`, `harga`, `pemberangkatan`, `kelas`, `keterangan`) VALUES
(3, 'Kereta A', 'Jakarta - Bandung', '120000.00', '2024-07-01 08:00:00', 'Ekonomi', 'Perjalanan pagi'),
(4, 'Kereta A', 'Jakarta - Surabaya', '350000.00', '2024-07-01 10:00:00', 'Bisnis', 'Perjalanan siang'),
(5, 'Kereta A', 'Bandung - Yogyakarta', '250000.00', '2024-07-01 12:00:00', 'Ekonomi', 'Perjalanan siang'),
(6, 'Kereta A', 'Surabaya - Bali', '400000.00', '2024-07-01 14:00:00', 'Eksekutif', 'Perjalanan sore'),
(7, 'Kereta A', 'Jakarta - Semarang', '200000.00', '2024-07-01 16:00:00', 'Ekonomi', 'Perjalanan sore'),
(8, 'Kereta A', 'Bandung - Malang', '270000.00', '2024-07-01 18:00:00', 'Bisnis', 'Perjalanan malam'),
(9, 'Kereta B', 'Yogyakarta - Bali', '380000.00', '2024-07-02 08:00:00', 'Eksekutif', 'Perjalanan pagi'),
(10, 'Kereta B', 'Semarang - Surabaya', '230000.00', '2024-07-02 10:00:00', 'Ekonomi', 'Perjalanan siang'),
(11, 'Kereta B', 'Jakarta - Palembang', '420000.00', '2024-07-02 12:00:00', 'Bisnis', 'Perjalanan siang'),
(12, 'Kereta B', 'Bandung - Lampung', '210000.00', '2024-07-02 14:00:00', 'Ekonomi', 'Perjalanan sore'),
(13, 'Kereta B', 'Malang - Yogyakarta', '280000.00', '2024-07-02 16:00:00', 'Bisnis', 'Perjalanan sore'),
(14, 'Kereta B', 'Surabaya - Jakarta', '390000.00', '2024-07-02 18:00:00', 'Eksekutif', 'Perjalanan malam'),
(15, 'Kereta C', 'Jakarta - Solo', '240000.00', '2024-07-03 08:00:00', 'Ekonomi', 'Perjalanan pagi'),
(16, 'Kereta C', 'Solo - Surabaya', '220000.00', '2024-07-03 10:00:00', 'Bisnis', 'Perjalanan siang'),
(17, 'Kereta C', 'Bandung - Semarang', '180000.00', '2024-07-03 12:00:00', 'Ekonomi', 'Perjalanan siang'),
(18, 'Kereta C', 'Surabaya - Malang', '200000.00', '2024-07-03 14:00:00', 'Eksekutif', 'Perjalanan sore'),
(19, 'Kereta C', 'Yogyakarta - Bandung', '190000.00', '2024-07-03 16:00:00', 'Ekonomi', 'Perjalanan sore'),
(20, 'Kereta C', 'Jakarta - Lampung', '270000.00', '2024-07-03 18:00:00', 'Bisnis', 'Perjalanan malam'),
(21, 'Kereta D', 'Semarang - Jakarta', '260000.00', '2024-07-04 08:00:00', 'Eksekutif', 'Perjalanan pagi'),
(22, 'Kereta D', 'Surabaya - Solo', '230000.00', '2024-07-04 10:00:00', 'Ekonomi', 'Perjalanan siang'),
(23, 'Kereta D', 'Bandung - Jakarta', '200000.00', '2024-07-04 12:00:00', 'Bisnis', 'Perjalanan siang'),
(24, 'Kereta D', 'Malang - Bandung', '290000.00', '2024-07-04 14:00:00', 'Ekonomi', 'Perjalanan sore'),
(25, 'Kereta D', 'Jakarta - Yogyakarta', '330000.00', '2024-07-04 16:00:00', 'Bisnis', 'Perjalanan sore'),
(26, 'Kereta D', 'Bali - Surabaya', '400000.00', '2024-07-04 18:00:00', 'Eksekutif', 'Perjalanan malam'),
(27, 'Kereta E', 'Lampung - Palembang', '210000.00', '2024-07-05 08:00:00', 'Ekonomi', 'Perjalanan pagi'),
(28, 'Kereta E', 'Palembang - Jakarta', '350000.00', '2024-07-05 10:00:00', 'Bisnis', 'Perjalanan siang'),
(29, 'Kereta E', 'Semarang - Malang', '280000.00', '2024-07-05 12:00:00', 'Ekonomi', 'Perjalanan siang'),
(30, 'Kereta E', 'Yogyakarta - Solo', '180000.00', '2024-07-05 14:00:00', 'Eksekutif', 'Perjalanan sore'),
(31, 'Kereta E', 'Jakarta - Bali', '450000.00', '2024-07-05 16:00:00', 'Ekonomi', 'Perjalanan sore'),
(32, 'Kereta E', 'Bandung - Surabaya', '370000.00', '2024-07-05 18:00:00', 'Bisnis', 'Perjalanan malam'),
(33, 'Kereta F', 'Surabaya - Lampung', '380000.00', '2024-07-06 08:00:00', 'Eksekutif', 'Perjalanan pagi'),
(34, 'Kereta F', 'Bandung - Palembang', '290000.00', '2024-07-06 10:00:00', 'Ekonomi', 'Perjalanan siang'),
(35, 'Kereta F', 'Jakarta - Malang', '310000.00', '2024-07-06 12:00:00', 'Bisnis', 'Perjalanan siang'),
(36, 'Kereta F', 'Yogyakarta - Jakarta', '350000.00', '2024-07-06 14:00:00', 'Ekonomi', 'Perjalanan sore'),
(37, 'Kereta F', 'Solo - Bandung', '270000.00', '2024-07-06 16:00:00', 'Bisnis', 'Perjalanan sore'),
(38, 'Kereta F', 'Bali - Jakarta', '500000.00', '2024-07-06 18:00:00', 'Eksekutif', 'Perjalanan malam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'aku', 'kemal@gmail.com', '123', 0),
(2, 'aku', 'kemal@gmail.com', '123', 1),
(3, 'admin', 'admin', 'admin', 1),
(4, 'user002', 'user002@gmail.com', 'user002', 2),
(5, 'user006', 'user006@gmail.com', 'user006', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_pemesanan`
--
ALTER TABLE `tabel_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD UNIQUE KEY `id_barang` (`id_tiket`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`),
  ADD KEY `id_user_3` (`id_user`);

--
-- Indeks untuk tabel `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_pemesanan`
--
ALTER TABLE `tabel_pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
