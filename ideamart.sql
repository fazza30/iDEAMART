-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2021 pada 06.39
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` longtext DEFAULT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `email`, `username`, `password`) VALUES
(1, 'admin', 'utama', 'admin_karir_uin@gmail.com', 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`answer_id`, `answer`, `date_created`) VALUES
(1, 'Sangat Setuju', '2021-12-04 05:01:32'),
(2, 'Setuju', '2021-12-04 05:01:32'),
(3, 'Tidak Setuju', '2021-12-04 05:01:32'),
(4, 'Sangat Tidak Setuju', '2021-12-04 05:01:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_question`
--

CREATE TABLE `hasil_question` (
  `hasil_question_id` int(11) NOT NULL,
  `hasil_question` int(11) NOT NULL,
  `ulasan_question` longtext NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `sub_kategori_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_question`
--

CREATE TABLE `kategori_question` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_question`
--

INSERT INTO `kategori_question` (`kategori_id`, `kategori`, `date_created`, `date_modified`) VALUES
(1, 'mandatory', '2021-11-27 13:04:24', '2021-11-27 13:04:24'),
(2, 'choice based', '2021-11-27 13:04:41', '2021-11-27 13:04:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `sub_kategori_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`question_id`, `question`, `sub_kategori_id`, `kategori_id`, `date_created`) VALUES
(1, 'Pusat Karier memiliki visi dan misi yang jelas?', 1, 1, '2021-11-27 13:09:35'),
(2, 'Tujuan dari Pusat Karier telah difahami dengan baik oleh seluruh pengguna layanan\r\n', 1, 1, '2021-11-27 13:10:13'),
(3, 'Pusat Karier memberikan layanan konsisten dengan tujuan', 1, 1, '2021-11-27 13:10:13'),
(4, 'Informasi layanan Pusat Karier mudah diakses', 1, 1, '2021-11-27 13:11:04'),
(5, 'Konten Media Pusat Karier informatif', 2, 1, '2021-11-27 13:11:04'),
(6, 'Presentasi Media Pusat Karier Menarik', 2, 1, '2021-12-02 03:46:08'),
(7, 'Konten Media Pusat Karier mudah difahami', 2, 1, '2021-12-02 03:47:10'),
(8, 'Konten Media Pusat Karier sesuai dengan kebutuhan karier', 2, 1, '2021-12-02 03:47:10'),
(9, 'Saya senang mengikuti sosial media Pusat Karier', 3, 1, '2021-12-02 03:49:00'),
(10, 'Saya akan merekomendasikan teman untuk menjadi pengikut sosial media Pusat Karier', 3, 1, '2021-12-02 03:49:00'),
(11, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier di industri', 3, 1, '2021-12-02 03:49:39'),
(12, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier sebagai wirausaha', 3, 1, '2021-12-02 03:49:39'),
(13, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier untuk studi lanjut', 3, 1, '2021-12-02 03:51:08'),
(14, 'Prosedur kerjasama sudah dapat dipahami dengan baik', 4, 1, '2021-12-02 03:51:08'),
(15, 'Admin Pusat Karier cepat menanggapi e-mail yang masuk', 4, 1, '2021-12-02 03:51:08'),
(16, 'Pusat Karier mengurus persuratan yang dibutuhkan dengan cepat', 4, 1, '2021-12-02 03:51:08'),
(17, 'Kegiatan yang dibuat Pusat Karier sesuai dengan kebutuhan mahasiswa dan alumni', 5, 1, '2021-12-02 03:53:18'),
(18, 'Kegiatan yang diadakan pusat karier relevan dengan perkembangan dunia karier masa kini', 5, 1, '2021-12-02 03:53:18'),
(19, 'Kegiatan Pusat Karier dapat meningkatkan kemampuan mahasiswa/alumni untuk lebih siap memasuki dunia karier', 5, 1, '2021-12-02 03:53:18'),
(20, 'Variasi kegiatan Pusat Karier memberikan saya motivasi untuk mempersiapkan karier yang excellent', 5, 1, '2021-12-02 03:53:18'),
(21, 'Narasumber kegiatan Pusat Karier adalah mereka yang profesional di bidangnya', 5, 1, '2021-12-02 03:53:18'),
(22, 'Sertifikat keikutsertaan kegiatan Pusat Karier diterima tepat pada waktunya', 5, 1, '2021-12-02 03:55:09'),
(23, 'Saya senang mengikuti kegiatan Pusat Karier', 5, 1, '2021-12-02 03:55:09'),
(24, 'Saya mendapatkan manfaat dari kegiatan yang diselenggarakan Pusat Karier', 6, 1, '2021-12-02 03:56:56'),
(25, 'Saya senang dengan kesempatan yang diberikan Pusat Karier dalam program terstrukturnya', 6, 1, '2021-12-02 03:56:56'),
(26, 'Saya mendapatkan alternatif yang cukup memadai untuk meningkatkan pengetahuan dan kompetensi yang saya inginkan', 6, 1, '2021-12-02 03:56:56'),
(27, 'Saya termotivasi untuk mengembangkan keterampilan baru setelah mengikuti kegiatan Pusat Karier', 6, 1, '2021-12-02 03:56:56'),
(28, 'Data tracer study mudah diakses prodi', 7, 2, '2021-12-02 03:58:40'),
(29, 'Pusat Karier merespon cepat kebutuhan data', 7, 2, '2021-12-02 03:58:40'),
(30, 'Pusat Karier memberikan data yang dibutuhkan', 7, 2, '2021-12-02 03:58:40'),
(31, 'Pusat Karier memberikan data yang dapat dipertanggungjawabkan', 7, 2, '2021-12-02 03:58:40'),
(32, 'Pusat Karier memberikan data yang akurat', 7, 2, '2021-12-02 03:58:40'),
(33, 'Prosedur kerjasama media partner dapat difahami dengan baik', 8, 2, '2021-12-02 04:00:47'),
(34, 'Pusat Karier menawarkan kerjasama media partner yang fair', 8, 2, '2021-12-02 04:00:47'),
(35, 'Kerjasama sebaaai media partner dengan Pusat Karier memberikan pengaruh positif terhdap kegiatan yang diselenggarakan', 8, 2, '2021-12-02 04:00:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori_question`
--

CREATE TABLE `sub_kategori_question` (
  `sub_kategori_id` int(11) NOT NULL,
  `sub_kategori` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_kategori_question`
--

INSERT INTO `sub_kategori_question` (`sub_kategori_id`, `sub_kategori`, `kategori_id`, `date_created`, `date_updated`) VALUES
(1, 'Pengelola', 1, '2021-11-27 13:07:19', '2021-11-27 13:07:19'),
(2, 'Media Sosial', 1, '2021-11-27 13:07:19', '2021-12-02 03:36:19'),
(3, 'Organizational Belonging', 1, '2021-11-27 13:07:44', '2021-12-02 03:39:05'),
(4, 'Administration', 1, '2021-11-27 13:08:16', '2021-12-02 03:39:12'),
(5, 'Event', 1, '2021-11-27 13:08:33', '2021-11-27 13:08:33'),
(6, 'Pengembangan Diri', 1, '2021-12-02 03:39:49', '2021-12-02 03:39:49'),
(7, 'Data Services', 2, '2021-12-02 03:40:20', '2021-12-02 03:40:20'),
(8, 'Media Partner', 2, '2021-12-02 03:40:20', '2021-12-02 03:40:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext DEFAULT NULL,
  `password` longtext NOT NULL,
  `username` longtext NOT NULL,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `username`, `image`) VALUES
(1, 'Fazza', 'Mufti', '082122484154', 'fazza.mufti18@mhs.uinjkt.ac.id', 'fazza_ganteng', 'fazza_mufti', ''),
(2, 'Maliki', 'karim', '085257788423', 'maliki22@gmail.com', 'dozk', 'maliki_72', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indeks untuk tabel `hasil_question`
--
ALTER TABLE `hasil_question`
  ADD PRIMARY KEY (`hasil_question_id`);

--
-- Indeks untuk tabel `kategori_question`
--
ALTER TABLE `kategori_question`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indeks untuk tabel `sub_kategori_question`
--
ALTER TABLE `sub_kategori_question`
  ADD PRIMARY KEY (`sub_kategori_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hasil_question`
--
ALTER TABLE `hasil_question`
  MODIFY `hasil_question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_question`
--
ALTER TABLE `kategori_question`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `sub_kategori_question`
--
ALTER TABLE `sub_kategori_question`
  MODIFY `sub_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
