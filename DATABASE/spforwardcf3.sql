-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2022 pada 13.14
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
-- Database: `spforwardcf3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `id` int(10) NOT NULL,
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `solusi` text NOT NULL,
  `penyebab` text NOT NULL,
  `gambar` text NOT NULL
  `merk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`id`, `kode_diagnosa`, `nama_diagnosa`, `solusi`, `penyebab`, `gambar`, `merk`) VALUES
(1, 'P001', 'Hama Kutu Daun (Aphid)', 'Aphid dapat menjadi vektor virus sehingga harus dikendalikan dengan rutin menyemprotkan insektisida berbahan aktif Abamectin atau Profenofos secara berkala.', 'Hama aphid atau kutu kebul menyerang stroberi dengan menghisap sari daun muda. Gejala yang terjadi yaitu timbul bercak serbuk kehitaman dan kondisi daun pucuk kurang besar.', 'aphid.PNG','curacron.jpg'),
(2, 'P002', 'Hama Ulat', 'Pengendalian hama ulat bisa dengan rutin menyemprotkan insektisida dengan bahan aktif Emamektin benzoat atau Deltametrin.', 'Biasanya terjadi di awal musim hujan, kupu-kupu bertelur pada sela-sela daun kemudian menjadi ulat. Gejala yang terjadi yaitu daun berlubang dan terkadang memakan buah muda ataupun buah yang siap panen. ', 'ulat.png','siklon.jpg'),
(3, 'P003', 'Kutu Thrips', 'Pengendalian dapat dilakukan rutin setiap minggu dengan melakukan penyemprotan insektisida berbahan aktif Abamectin.', 'Kutu ini menyerang stroberi di awal musim panas maupun penghujan. Gejala yang terjadi yaitu terdapat perubahan pada warna daun menjadi kecoklatan, daun keriting, buah berwarna hijau kecoklatan', 'thrips.jpg','demolish.jpg'),
(4, 'P004', 'Spider Mites', 'Pengendalian dilakukan dengan rutin membasahi bawah daun stroberi dengan sprayer bertekanan tinggi setiap tiga hari sekali, melakukanpenyemprotan Akarisida berbahan aktif Piridaben atau penyemprotan berbahan aktif Sulfur pada sore menjelang malam hari.', 'Sering ditemukan pada stroberi yang ditanam dalam greenhouse, hama ini menyukai lingkungan panas dengan tingkat kelembaban rendah. Gejala yang timbul yaitu daun menguning, pada pinggiran daun terdapat seperti sarang laba-laba.', 'spider.jpg','samite.jpg'),
(5, 'P005', 'Cendawan Powdery Mildew', 'Pengendalian secara kimiawi untuk hama ini yaitu dengan menyemprotkan fungisida berbahan aktif Dritazol, Metoksi Aklirat atau Difenokonazol.', 'Menyerang jenis stroberi yang memiliki buah manis dan dibudidayakan dalam greenhouse dengan kelebaban rendah. Ciri dari cendawan ini yaitu memiliki hifa atau bercak berwarna putih, dapat menyerang buah, daun, batang. Jika sudah parah, menimbulkan bercak ungu pada daun.', 'powder.jpg','score.png'),
(6, 'P006', 'Cendawan Botrytis', 'Pencegahan dapat dilakukan dengan menghindari daun terlalu basah, dan pengendalian kimiawi dilakukan dengan penyemprotan kombinasi insektisida Amistar dan Score.', 'Pencegahan dapat dilakukan dengan menghindari daun terlalu basah, dan pengendalian kimiawi dilakukan dengan penyemprotan kombinasi insektisida Amistar dan Score', 'bort.jpg','gabung.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(11) NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode_gejala`, `nama_gejala`, `keterangan`, `gambar`) VALUES
(13, 'G001', 'terdapat bercak kehitaman pada daun', '', 'g1 Terdapat bercak serbuk kehitaman.png'),
(14, 'G002', 'ukuran pucuk kecil', '', 'g2 Pucuk kecil.png'),
(15, 'G003', 'daun menggulung atau mengkerut', '', 'g3 Daun menggulung mengkerut.jpg'),
(16, 'G004', 'daun keriting', '', 'g4 Daun keriting.jpg'),
(18, 'G006', 'terdapat daun berlubang', '', 'g6 daun berlubang.jpg'),
(19, 'G007', 'terdapat bekas gigitan pada buah', '', 'g7 bekas gigitan pada buah.jpg'),
(20, 'G008', 'terdapat daun yang tampak transparan', '', 'g8 daun nampak transparan.jpg'),
(21, 'G009', 'terdapat daun yang berwarna kecoklatan', '', 'g9 daun kecoklatan.png'),
(22, 'G010', 'warna buah hijau kecoklatan', '', 'g10 buah hijau kecoklatan.png'),
(23, 'G011', 'terdapat bercak putih pada daun', '', 'g11 bercak putih pada daun.jpg'),
(24, 'G012', 'terdapat daun yang menguning', '', 'g12 daun menguning.jpg'),
(25, 'G013', 'buah berukuran kecil', '', 'g13 buah berukuran kecil.jpg'),
(26, 'G014', 'biji stroberi menghitam', '', 'g14 biji stroberi menghitam.PNG'),
(27, 'G015', 'daun pucuk mengalami gundul', '', 'g15 pucuk daun gundul.jpg'),
(28, 'G016', 'terdapat jaring laba-laba pada pinggiran daun', '', 'g16 jaring laba pada daun.jpg'),
(29, 'G017', 'terdapat bercak ungu pada daun', '', 'g17 bercak ungu pada daun.jpg'),
(30, 'G018', 'terdapat hifa putih seperti tepung pada daun atau buah', '', 'g18 hifa putih pada daun buah.PNG'),
(31, 'G019', 'terdapat busuk basah pada buah', '', 'g19 busuk basah pada buah.jpg'),
(32, 'G020', 'terdapat busuk kering pada daun', '', 'g20 busuk kering pada daun.jpg'),
(33, 'G021', 'buah mengering kecoklatan', '', 'g21 buah mengering kecoklatan.jpg'),
(34, 'G005', 'pembentukan buat terhambat', '', 'g5 pembentukan buah terhambat.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tgl` date NOT NULL,
  `hasil_konsultasi` varchar(30) NOT NULL,
  `kepercayaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nama`, `email`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`, `kepercayaan`) VALUES
(40, '', '', '', '', '0000-00-00', '', 'Positif'),
(41, '', '', '', '', '0000-00-00', '', 'Positif');


-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `id` int(11) NOT NULL,
  `kode_gejala` varchar(10) NOT NULL,
  `jawaban` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`id`, `kode_gejala`, `jawaban`) VALUES
(1, 'G001', 'Ya'),
(2, 'G003', 'Ya'),
(3, 'G008', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(10) NOT NULL,
  `kode_gejala` varchar(10) NOT NULL,
  `mb` varchar(10) NOT NULL,
  `md` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`, `md`) VALUES
(12, 'P001', 'G001', '1', '0.01'),
(13, 'P001', 'G002', '1', '0.03'),
(14, 'P001', 'G003', '0.8', '0.03'),
(15, 'P001', 'G004', '0.8', '0.04'),
(18, 'P002', 'G007', '1', '0.02'),
(19, 'P002', 'G008', '1', '0.04'),
(20, 'P001', 'G005', '0.8', '0.01'),
(21, 'P002', 'G006', '1', '0.02'),
(22, 'P003', 'G003', '0.8', '0.03'),
(23, 'P003', 'G004', '0.8', '0.04'),
(24, 'P003', 'G009', '1', '0.02'),
(25, 'P003', 'G010', '1', '0.02'),
(26, 'P003', 'G011', '0.8', '0.02'),
(27, 'P003', 'G013', '1', '0.03'),
(28, 'P003', 'G012', '0.8', '0.04'),
(29, 'P003', 'G014', '1', '0.04'),
(30, 'P004', 'G011', '0.8', '0.02'),
(31, 'P004', 'G012', '0.8', '0.04'),
(32, 'P004', 'G015', '1', '0.02'),
(33, 'P004', 'G016', '1', '0.01'),
(34, 'P005', 'G004', '0.8', '0.04'),
(35, 'P005', 'G012', '0.8', '0.04'),
(36, 'P005', 'G017', '1', '0.01'),
(37, 'P005', 'G018', '1', '0.01'),
(38, 'P006', 'G019', '1', '0.01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
