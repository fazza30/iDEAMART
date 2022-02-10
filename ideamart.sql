-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2022 pada 05.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideamart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` longtext NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` longtext NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `login_type` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`, `hash`, `login_type`, `createdAt`, `updatedAt`, `image`) VALUES
(1, 'Fazza', 'Mufti', '082122484154', 'fazza.mufti18@mhs.uinjkt.ac.id', 'fazza_mufti', '', '', '', '2022-02-02 15:12:25', '2022-02-02 15:12:44', ''),
(2, 'Maliki', 'karim', '085257788423', 'maliki22@gmail.com', 'maliki_72', '', '', '', '2022-02-02 15:12:25', '2022-02-02 15:12:44', NULL),
(3, 'Jason', 'Watmore', '082122484153', 'Watmore@gmail.co.id', 'testinglagi', '', '', 'mahasiswa', '2022-02-02 16:48:08', '2022-02-02 16:48:08', NULL),
(11, 'Jason', 'Watmore', '082122484153', 'Watmore@gmail.co.id', 'testinglagi2242', '$2a$10$ZBqNSceulmhxQsxa70j4aO5/nwpaxzKslmcPHY.Qxj5J888M4xjh.', '', 'mahasiswa', '2022-02-03 15:44:40', '2022-02-03 15:44:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
