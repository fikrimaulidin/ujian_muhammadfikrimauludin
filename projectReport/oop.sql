-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 05:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupaten_id` int(11) NOT NULL,
  `kabupaten_nama` varchar(128) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kabupaten_id`, `kabupaten_nama`) VALUES
(1, 'BANDUNG'),
(2, 'JAKARTA'),
(3, 'BEKASI'),
(4, 'CIAMIS'),
(5, 'BOGOR'),
(6, 'GARUT'),
(7, 'CIREBON'),
(8, 'INDRAMAYU'),
(9, 'KARAWANG'),
(10, 'KUNINGAN'),
(11, 'SUBANG'),
(12, 'PURWAKARTA'),
(13, 'SUMEDANG'),
(14, 'TASIKMALAYA'),
(15, 'JOGJAKARTA'),
(16, 'CIMAHI'),
(17, 'DEPOK'),
(18, 'SUKABUMI'),
(19, 'CIMAHI'),
(20, 'BANYUMAS'),
(21, 'MAJALENGKA'),
(22, 'PANGANDARAN'),
(24, 'BANJAR'),
(25, 'SEMARANG');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatan_id` int(11) NOT NULL,
  `kabupaten_id` int(11) DEFAULT NULL,
  `kecamatan_nama` varchar(256) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatan_id`, `kabupaten_id`, `kecamatan_nama`) VALUES
(1, 1, 'CAKUNG'),
(2, 1, 'JATINEGARA'),
(3, 2, 'BEKASI BARAT'),
(4, 2, 'BEKASI SELATAN'),
(5, 2, 'BEKASI TIMUR'),
(6, 2, 'BEKASI UTARA'),
(7, 2, 'JATIASIH'),
(8, 2, 'MUSTIKA JAYA'),
(9, 2, 'JATISAMPURNA'),
(10, 2, 'RAWALUMBU'),
(11, 2, 'BANTAR GEBANG'),
(12, 2, 'MEDAN SATRIA'),
(13, 2, 'PONDOK MELATI'),
(14, 2, 'DUREN SAWIT'),
(15, 2, 'MATRAMAN'),
(16, 2, 'KOJA'),
(17, 2, 'PULO GADUNG'),
(18, 2, 'PONDOK GEDE');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `kelurahan_id` int(11) NOT NULL,
  `kecamatan_id` int(11) DEFAULT NULL,
  `kelurahan_nama` varchar(256) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`kelurahan_id`, `kecamatan_id`, `kelurahan_nama`) VALUES
(1, 1, 'PENGGILINGAN'),
(2, 1, 'CAKUNG BARAT'),
(3, 1, 'PULO GEBANG'),
(4, 1, 'UJUNG MENTENG'),
(5, 1, 'KLENDER'),
(6, 1, 'DUREN SAWIT'),
(7, 1, 'PONDOK KOPI'),
(8, 1, 'BINTARA'),
(9, 1, 'KRANJI'),
(10, 1, 'JATIASIH'),
(11, 1, 'PEDURENAN'),
(12, 1, 'JATIWARINGIN'),
(13, 1, 'MUSTIKASARI'),
(14, 1, 'MUSTIKAJAYA'),
(15, 1, 'JATIMAKMUR'),
(16, 1, 'HARAPAN MULYA'),
(17, 1, 'HARAPAN BARU'),
(18, 1, 'KALIABANG TENGAH'),
(19, 1, 'PEJUANG'),
(20, 1, 'MEDAN SATRIA'),
(21, 2, 'CAWANG'),
(22, 2, 'PONDOK BAMBU'),
(23, 2, 'KAMPUNG MELAYU'),
(24, 2, 'CIBUBUR'),
(25, 2, 'RAMBUTAN'),
(26, 2, 'ALOR BESAR'),
(27, 2, 'ALOR KECIL'),
(28, 2, 'AMPERA'),
(29, 2, 'BAMPALOLA'),
(30, 2, 'DULOLONG'),
(31, 2, 'DULOLONG BARAT'),
(32, 2, 'HULNANI'),
(33, 2, 'LEFOKISU'),
(34, 2, 'LEWALU'),
(35, 2, 'O\'A MATE'),
(36, 2, 'OTVAI'),
(37, 2, 'PULAU BUAYA'),
(38, 2, 'TERNATE'),
(39, 2, 'TERNATE SELATAN'),
(40, 3, 'KELAISI BARAT'),
(41, 3, 'KELAISI TENGAH'),
(42, 3, 'KELAISI TIMUR'),
(43, 3, 'KIRAMAN'),
(44, 3, 'KUNEMAN'),
(45, 3, 'LELLA'),
(46, 3, 'MAIKANG'),
(47, 3, 'MALAIPEA'),
(48, 3, 'MANMAS'),
(49, 3, 'PADANG ALANG'),
(50, 3, 'SIDABUI'),
(51, 3, 'SILAIPUI'),
(52, 3, 'SUBO'),
(53, 3, 'TAMANAPUI'),
(54, 4, 'ALIM MEBUNG'),
(55, 4, 'DAPITAU'),
(56, 4, 'FUISAMA'),
(57, 4, 'FUNGAFENG'),
(58, 4, 'KAFAKBEKA'),
(59, 4, 'LAKWATI'),
(60, 4, 'LEMBUR BARAT'),
(61, 4, 'LEMBUR TENGAH'),
(62, 4, 'LIKWATANG'),
(63, 4, 'MANETWATI'),
(64, 4, 'NUR BENLELANG'),
(65, 4, 'PETLENG'),
(66, 4, 'TOMINUKU'),
(67, 4, 'WELAI SELATAN'),
(68, 5, 'BELEMANA'),
(69, 5, 'ELOK'),
(70, 5, 'KOLANA SELATAN'),
(71, 5, 'KOLANA UTARA'),
(72, 5, 'MARITAING'),
(73, 5, 'MAUKURU'),
(74, 5, 'MAUSAMANG'),
(75, 5, 'PADANG PANJANG'),
(76, 5, 'TANGLAPUI'),
(77, 5, 'TANGLAPUI TIMUR'),
(78, 6, 'AIR MANCUR'),
(79, 6, 'KAMOT'),
(80, 6, 'KENARIMBALA'),
(81, 6, 'LIPPANG'),
(82, 6, 'NAILANG'),
(83, 6, 'PIDO'),
(84, 6, 'TARAMANA'),
(85, 6, 'WAISIKA'),
(86, 7, 'ALILA TIMUR'),
(87, 7, 'KABOLA'),
(88, 7, 'KOPIDIL'),
(89, 7, 'LAWAHING'),
(90, 7, 'PANTE DEERE'),
(91, 8, 'LEMBUR TIMUR'),
(92, 8, 'LUBA'),
(93, 8, 'TALWAI'),
(94, 8, 'TASI'),
(95, 8, 'TULLENG'),
(96, 8, 'WAIMI'),
(97, 9, 'KAMAIFUI'),
(98, 9, 'LAKATULI'),
(99, 9, 'MATARU BARAT'),
(100, 9, 'MATARU SELATAN'),
(101, 9, 'MATARU TIMUR'),
(102, 9, 'MATARU UTARA'),
(103, 9, 'TAMAN MATARU'),
(104, 10, 'BANA'),
(105, 10, 'BANDAR'),
(106, 10, 'BAOLANG'),
(107, 10, 'BOUWELI'),
(108, 10, 'BUKIT MAS'),
(109, 10, 'HELANGDOHI'),
(110, 10, 'KABIR'),
(111, 10, 'MADAR'),
(112, 10, 'MUNASELI'),
(113, 10, 'PANDAI'),
(114, 10, 'WAILAWAR'),
(115, 11, 'BARALER'),
(116, 11, 'BARANUSA'),
(117, 11, 'BLANG MERANG'),
(118, 11, 'ILLU'),
(119, 11, 'KALONDAMA'),
(120, 11, 'LEER'),
(121, 11, 'PIRINGSINA'),
(122, 12, 'ALLUMANG'),
(123, 12, 'BEANGONONG'),
(124, 12, 'KALONDAMA BARAT'),
(125, 12, 'KALONDAMA TENGAH'),
(126, 12, 'KAYANG'),
(127, 12, 'LAMMA'),
(128, 12, 'MARISA'),
(129, 13, 'ARAMABA'),
(130, 13, 'BAGANG'),
(131, 13, 'DELAKI'),
(132, 13, 'EKA JAYA'),
(133, 13, 'MAUTA'),
(134, 13, 'MURIABANG'),
(135, 13, 'TAMAKH'),
(136, 13, 'TOANG'),
(137, 13, 'TUBBE'),
(138, 13, 'TUDE'),
(139, 14, 'BATU'),
(140, 14, 'BUNGABALI'),
(141, 14, 'KAERA'),
(142, 14, 'KALEB'),
(143, 14, 'LALAFANG'),
(144, 14, 'LEKOM'),
(145, 14, 'MAWAR'),
(146, 14, 'MERDEKA'),
(147, 14, 'NULE'),
(148, 14, 'OMBAY'),
(149, 14, 'TEREWENG'),
(150, 15, 'MARU'),
(151, 15, 'PURA'),
(152, 15, 'PURA BARAT'),
(153, 15, 'PURA SELATAN'),
(154, 15, 'PURA TIMUR'),
(155, 15, 'PURA UTARA'),
(156, 16, 'KAILESA'),
(157, 16, 'LANGKURU'),
(158, 16, 'LANGKURU UTARA'),
(159, 16, 'PURNAMA'),
(160, 17, 'ADANG BUOM'),
(161, 17, 'AIR KENARI'),
(162, 17, 'BINONGKO'),
(163, 17, 'FANATING'),
(164, 17, 'KALABAHI BARAT'),
(165, 17, 'KALABAHI KOTA'),
(166, 17, 'KALABAHI TENGAH'),
(167, 17, 'KALABAHI TIMUR'),
(168, 17, 'LENDOLA'),
(169, 17, 'MOTONGBANG'),
(170, 17, 'MUTIARA'),
(171, 17, 'NUSA KENARI'),
(172, 17, 'TELUK KENARI'),
(173, 17, 'WELAI BARAT'),
(174, 17, 'WELAI TIMUR'),
(175, 17, 'WETABUA');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(128) NOT NULL,
  `nim` varchar(128) NOT NULL,
  `jurusan` varchar(128) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `jalan` varchar(128) NOT NULL,
  `kabupaten` varchar(128) NOT NULL,
  `kecamatan` varchar(128) NOT NULL,
  `kelurahan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `nama_mahasiswa`, `nim`, `jurusan`, `jenis_kelamin`, `jalan`, `kabupaten`, `kecamatan`, `kelurahan`) VALUES
(31, 'Fikri', '54419182', 'Informatika', 'L', 'Penggilingan', 'JAKARTA', 'CAKUNG', 'PENGGILINGAN'),
(32, 'Fuad', '54418271', 'Informatika', 'L', 'Pondok Ungu', 'BEKASI', 'BEKASI UTARA', 'KALIABANG TENGAH'),
(33, 'Mikail', '54462821', 'Informatika', 'L', 'Rawa Bebek', 'BEKASI', 'BEKASI UTARA', 'KALIABANG TENGAH'),
(34, 'Arya', '54462738', 'Informatika', 'L', 'Walikota Jakarta Timur', 'JAKARTA', 'CAKUNG', 'CAKUNG BARAT'),
(35, 'Tegar', '54427281', 'Informatika', 'L', 'Jati Asih', 'BEKASI', 'JATIASIH', 'JATIASIH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupaten_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatan_id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`kelurahan_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `kabupaten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `kecamatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `kelurahan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
