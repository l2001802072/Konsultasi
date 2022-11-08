-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 09:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lalalost`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(20, 'A01', 'Benjolan Kecil'),
(21, 'A02', 'Bernanah/Cairan'),
(22, 'A03', 'Kemerahan'),
(23, 'A04', 'Benjolan Besar'),
(24, 'A05', 'Meradang'),
(25, 'A06', 'Sakit'),
(26, 'A07', 'Berwarna Putih'),
(27, 'A08', 'Gatal'),
(28, 'A09', 'rasa nyeri'),
(29, 'A10', 'Iritasi sekitar jerawat'),
(30, 'A11', 'Komedo Putih'),
(33, 'A12', 'Bintik Kecil');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','Dokter','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin'),
(11, 'Naura Fika', 'user', 'user', 'User'),
(12, 'dr. Asal Kuliah, SpAK', 'dokter', 'dokter', 'Dokter'),
(14, 'Joni', 'user2', 'user2', 'User'),
(15, 'Jono', 'user3', 'user3', 'User'),
(16, 'Keke', 'user3', 'user3', 'User'),
(17, 'Gunawan', 'user4', 'user4', 'User'),
(18, 'Tri', 'user5', 'user5', 'User'),
(22, '123', '123', '123', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(20) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(8, 'J01', 'POSTULA', 'Avoskin Miraculous Refining Toner, Some by Mi AHA BHA PHA Miracle Toner, Somethinc Niacinamide  + Moisture Beet Serum', 'Hindari penggunaan scrub, Hindari memencet jerawat, hindari makanan manis, jika terdapat banyak spot jerawat silahkan mengunjungi dr. SpKK untuk melakukan treatment chemical peels'),
(9, 'J02', 'NODULAR', 'Skin Game Acne Warior, Avoskin Your Skin Bae Alpha Arbutin + Grapseed', 'Hindari memencet jerawat, hindari makan makanan berminyak dan pedas, tindakan laser PRP oleh dr. SpKK jika perlu. '),
(10, 'J03', 'WHITEHEAD', 'Somethinc Peeling Solution, FREEMAN Oil Absorbing Mint + Lemon Clay Mask', 'Rajin membersihkan muka menggunakan micellar water kemudian facewash, eksfoliasi max 2x dalam seminggu, tidak menggunakan produk makeup berlebihan'),
(11, 'J04', 'PAPULA', 'Safi White Expert Oil Control & Anti Acne 2 in 1 Cleanser and Toner.', 'Membersihkan wajah maksimal 2x sehari dengan double cleansing, rajin mengganti sprei bantal, jika terdapat lebih dari 4 spot area jerawat silahkan kunjungi dr. SpKk terdekat.'),
(12, 'J05', 'KISTIK(JERAWAT BATU)', 'COSRX BHA Blackhead Power Liquid, Kiehl’s Breakout Control Targeted Blemish Spot Treatment, Neutrogena Oil-Free Acne Wash', 'Hindari memegang area jerawat, jangan melakukan eksfoliasi lebih dari 3x dalam seminggu, rajin minum air putih'),
(13, 'J06', 'Jerawat Pasir', 'Moisturizer Skitific, Bioderma Sebium Hydra', 'Hindari memencet jerawat, menyentuh jerawat dan juga cuci muka maksimal 2x sehari'),
(14, 'J07', 'A', 'BCJCD', 'ABCVDJDJ');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pengguna`, `id_penyakit`, `tanggal`) VALUES
(49, 11, 8, '2021-11-17'),
(52, 11, 8, '2022-05-22'),
(53, 11, 11, '2022-06-02'),
(54, 11, NULL, '2022-06-02'),
(55, 11, 8, '2022-06-08'),
(56, 11, NULL, '2022-06-08'),
(57, 11, 8, '2022-06-08'),
(59, 11, 8, '2022-06-08'),
(60, 11, NULL, '2022-06-08'),
(61, 11, NULL, '2022-06-26'),
(62, 11, NULL, '2022-06-26'),
(65, 11, 8, '2022-06-29'),
(66, 11, NULL, '2022-06-29'),
(67, 11, NULL, '2022-06-29'),
(68, 11, 8, '2022-07-05'),
(69, 11, 8, '2022-07-05'),
(71, 11, NULL, '2022-07-12'),
(72, 11, 9, '2022-07-12'),
(73, 11, 13, '2022-07-14'),
(74, 11, 10, '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_penyakit`, `id_gejala`) VALUES
(63, 9, 23),
(64, 9, 24),
(65, 9, 25),
(85, 8, 20),
(86, 8, 21),
(87, 8, 22),
(91, 10, 20),
(92, 10, 26),
(93, 10, 27),
(94, 11, 20),
(95, 11, 28),
(96, 11, 29),
(99, 12, 23),
(100, 12, 27),
(101, 12, 30),
(102, 13, 33),
(103, 14, 29),
(104, 14, 30),
(105, 14, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
