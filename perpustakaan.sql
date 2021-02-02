-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 01:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `PASSWORD` mediumtext DEFAULT NULL,
  `LAST_LOGIN` varchar(40) DEFAULT NULL,
  `ROLE` varchar(15) DEFAULT NULL,
  `FULLNAME` varchar(128) DEFAULT NULL,
  `JENKEL` char(1) DEFAULT NULL,
  `NO_TELP` int(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `PHOTO` mediumtext DEFAULT NULL,
  `DTE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ROLE`, `FULLNAME`, `JENKEL`, `NO_TELP`, `ALAMAT`, `PHOTO`, `DTE_CREATED`) VALUES
('AD001', 'krisnagilangp', '21232f297a57a5a743894a0e4a801fc3', '30-01-2021 19:34:54', 'superadmin', 'Krisna Gilang Prayuda', NULL, NULL, NULL, 'default.png', '2017-06-14'),
('AD002', 'sahid', '9f8b4c019d3b7bc89e82a85fbd0d4008', '15-07-2017 14:14:32', 'admin', 'Sulaeman Sahid', NULL, NULL, NULL, 'huga.jpg', '2017-06-16'),
('AD003', 'hasim', 'd094c0a6c7ec4f01f75837ace20925fa', '16-07-2017 08:47:03', 'superadmin', 'Hasim Rochmad', 'L', 88788899, 'Jl semeru', 'Image_2d6d9b2.jpg', '2017-06-16'),
('AD004', 'tacik', '977dca586aea0eac2674a89793e252ec', '26-06-2017 18:12:38', 'admin', 'Riski Ananda W. P.', NULL, NULL, NULL, 'default.png', '2017-06-20'),
('AD005', 'ravi', '63dd3e154ca6d948fc380fa576343ba6', '24-06-2017 11:46:32', 'admin', 'Rafi Agatha', NULL, NULL, NULL, 'default.png', '2017-06-21'),
('AD006', 'rehan', '8625d1c13eaf0a75068d3cf2cdde43f6', '16-07-2017 14:46:29', 'admin', 'Rehan Arroihan', 'L', 897789088, 'Jl Jalan id', 'stdmp.png', '2017-06-24'),
('AD007', 'rasta', '25f423bce283a8d0cbb66252da5d3cdd', '11-07-2017 07:26:51', 'superadmin', 'Rasta Hirgawana', NULL, NULL, NULL, 'default.png', '2017-07-11'),
('AD008', 'slamet', 'c5a42d9667c760e1b7c064e25536e570', '12-07-2017 03:36:15', 'superadmin', 'Slamet Riyadi', NULL, NULL, NULL, 'default.png', '2017-07-12'),
('AD009', 'arroihan', '29f6e3a5cf5641c3d60a6f38b86a2b92', NULL, 'superadmin', 'Multazam Arroihan Gusdiansyah', NULL, NULL, NULL, 'default.png', '2017-07-16'),
('AD010', 'admin', '21232f297a57a5a743894a0e4a801fc3', '31-01-2021 16:27:44', 'superadmin', 'krisna gilang', 'l', 2147483647, 'Katapang', 'cropped-1920-1080-703113.jpg', '2021-01-01'),
('AD011', 'krisna', '948f5cc9f8c6c3b86a070beaca7d20bf', '28-01-2021 16:20:13', 'admin', 'krisna gilang', 'l', 2147483647, 'Lala land', 'LIBERTY.jpg', '2021-01-01'),
('AD012', 'griselda', '9d2e64075dbec7ee824cbd5d0244d352', '28-01-2021 17:51:37', 'admin', 'Griselda Skywalker', NULL, NULL, NULL, 'default.png', '2021-01-28'),
('AD013', 'prayuda', 'ee08f1e4d9def6496cc9c29099235a42', NULL, 'admin', 'prayuda', NULL, NULL, NULL, 'default.png', '2021-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `KELAS` varchar(128) NOT NULL,
  `JURUSAN` varchar(128) NOT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` mediumtext DEFAULT NULL,
  `D_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `KELAS`, `JURUSAN`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('AGT001', 'AD001', 'Multazam Arroihan G', 'XII', 'RPL', 'Bojonegoro', '02/20/2000', 'Jl. Danau Kerinci V G6D4, Sawojajar, Malang', 'L', '087824555666', '20__Multazam_A_3.JPG', '2017-06-16'),
('AGT002', 'AD001', 'Galbie Elinour', 'X', 'TKJ', 'Malang', '06/16/2017', 'Jl. Kawi no. 89, Malang Kota', 'P', '0897786788954', '12__GALBIE_ELINOUR1.JPG', '2017-06-16'),
('AGT003', 'AD001', 'Alfan Cahyo Wicaksono', 'XI', 'TTT', 'Malang', '10/13/1998', 'Jl. Silak Kesam 101', 'L', '087669887654', '2__Alfan_Cahyo_.JPG', '2017-06-16'),
('AGT004', 'AD001', 'Sasna Salsabila Hapsari', 'XII', 'TSW', 'Madiun', '03/08/1999', 'Perum. Aspol 443, Kota Madiun', 'P', '0818897546788', '30__Sasna_S_.JPG', '2017-06-16'),
('AGT005', 'AD001', 'Riski Ananda Widiya P', 'X', 'TSW', 'Tulungagung', '02/19/2000', 'Perum. Grand Emerald ZU3, Tulungagung', 'P', '093889765643', '31__Riski_Ananda.JPG', '2017-06-16'),
('AGT006', 'AD001', 'Anggyanisa Mutia Putri', 'XI', 'RPL', 'Madiun', '08/18/2000', 'Gg. Pattimura 89', 'P', '085389755644', '2__Anddyanisa_M_.JPG', '2017-06-16'),
('AGT007', 'AD001', 'Prasetya Ananta W. S.', 'X', 'TKJ', 'Malang', '06/16/1999', 'Sulfat Indah 89', 'L', '08267599432', '28__Prsetya_Ananta.JPG', '2017-06-16'),
('AGT008', 'AD001', 'Irvina Firadila', 'XII', 'TTT', 'Lumajang', '08/12/1999', 'Ds. Sambungrejo RT. 4 RW. 7 Kec. Welasasih, Lumajang', 'P', '0876654897765', '14__Irvina_F_.JPG', '2017-06-16'),
('AGT009', 'AD001', 'Ridhwan Rofianto', 'XII', 'TSW', 'Surabaya', '04/01/2001', 'Mburine cito', 'L', '089776598334', '29__RIDHWAN_ROFIANTO.JPG', '2017-06-16'),
('AGT010', 'AD001', 'Muhamad Iqbal Samudra', 'X', 'TKJ', 'Banyuwangi', '04/05/2000', 'Ds. Sumoharjo, RT. 5 RW. 9', 'L', '08677564987', '18__Muh__Iqbal.JPG', '2017-06-16'),
('AGT011', 'AD001', 'Nabila Hanggana Raras', 'X', 'TKR', 'Sidoarjo', '03/08/2000', 'Perum. Sugih Asri F32, Candi, Sidoarjo', 'P', '084876835267', '28__Nabila_Hanggana_Raras.JPG', '2017-06-16'),
('AGT012', 'AD001', 'Erika Prafitasari Rotinsulu', 'XII', 'TTT', 'Sidoarjo', '08/04/2000', 'Perum. Bumi Citra Fajar A76, Sekardangan, Sidoarjo', 'P', '08567498256', '9__Erika_P_.JPG', '2017-06-16'),
('AGT013', 'AD001', 'Nico Ardian Nugroho', 'XI', 'TTT', 'Malang', '04/02/2000', 'Jl. Sironggo Ajoh Kav. 4, Malang', 'L', '089765689645', '24__Nico_Ardian.JPG', '2017-06-16'),
('AGT014', 'AD001', 'Ad Reana Vidya', 'X', 'RPL', 'Malang', '06/29/2000', 'Perum. Siswa Taman AG65, Kepanjen', 'P', '087995764839', '2__Ad_Reana.JPG', '2017-06-29'),
('AGT015', 'AD001', 'Vejryn Shaviero', 'XII', 'RPL', 'Jember', '06/10/2000', 'Jl. Utama Kota gg. 6, Jember', 'L', '088786368495', '34__VEJRYN_SHAVIERO.JPG', '2017-06-29'),
('AGT016', 'AD001', 'Ridjal Fathoni Rosyidi', 'XI', 'RPL', 'Tuban', '07/09/1998', 'Jl. Alun alun kota', 'L', '08766754345', '19__Muh__Ridjal.JPG', '2017-07-09'),
('AGT017', 'AD001', 'Prayuda Gilang', 'X', 'RPL', 'Bandung', '01/22/2021', 'katapang', 'L', '08782456655', 'adrianart-digital-illustration-valak1.jpg', '2021-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TITLE` varchar(150) DEFAULT NULL,
  `AUTHOR` varchar(128) DEFAULT NULL,
  `PUBLISHER` varchar(128) DEFAULT NULL,
  `YEAR` char(4) DEFAULT NULL,
  `SHELF` varchar(128) NOT NULL,
  `QTY` int(11) DEFAULT NULL,
  `KELUAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_ADMIN`, `TITLE`, `AUTHOR`, `PUBLISHER`, `YEAR`, `SHELF`, `QTY`, `KELUAR`) VALUES
('BKO004', 'AD003', 'Mikrotik Kung Fu : Kitab 1', 'Rendra Towidjojo', 'Jasakom', '2016', 'R-8', 13, 1),
('BKO005', 'AD001', 'Windows 10 : Panduan Lengkap', 'Indra Susanto', 'Jasakom', '2013', 'R-2', 5, 3),
('BKO006', 'AD001', 'Bisnis Online Revolution', 'Iwan Kenrianto', 'Gramedia', '2015', 'R-5', 3, 0),
('BKO007', 'AD001', '3 Tools Facebook Graph Gratisan', 'Suryadin Laoddang', 'Dosen Jualan', '2015', 'R-1', 2, 1),
('BKO008', 'AD001', 'Mengolah Database Excel', 'Sumonggo Surya', 'Andi Publisher', '2001', 'R-10', 2, 0),
('BKO009', 'AD001', 'Mahir Corel Draw Dalam 4 Hari', 'Yuli Kristanto S', 'Izuka Komp', '2008', 'R-10', 11, 4),
('BKO010', 'AD001', 'The Magic of Photoshop', 'Hendri Hendratama', 'Informatika', '2013', 'R-8', 3, 3),
('BKO011', 'AD001', 'Teknik Profesional Photoshop CS3', 'Rahmat Widiyanto', 'Elex Media Computindo', '2009', 'R-6', 5, 1),
('BKO012', 'AD001', 'Jago SEO', 'Hidayat Rahmad', 'Elex Media Computindo', '2011', 'R-7', 2, 1),
('BKO013', 'AD001', 'Hacking Wireless Network', 'Suryatama Udin', 'Jasakom', '2014', 'R-3', 9, 0),
('BKO014', 'AD001', 'Blender 3D Modelling', 'Hendri Hendratama', 'Informatika', '2015', 'R-2', 2, 0),
('BKO015', 'AD001', 'Aplikasi Berbasis Android', 'Hyua Hendra La', 'Moklet Publisher', '2019', 'R-2', 4, 0),
('BKO016', 'AD001', 'Membangun Aplikasi ASP', 'Hendro SPd', 'Moklet Publisher', '2020', 'R-2', 3, 1),
('BKO017', 'AD001', 'Basis Data Kebun Binatang', 'Ifa Khoirunnisa', 'Moklet Publisher', '2018', 'R-4', 3, 0),
('BKO018', 'AD001', 'Buku Panduan ASUS', 'Herman Dzumavo', 'Samsara', '2008', 'R-5', 2, 1),
('BKO019', 'AD001', 'The Power of Microsoft Edge', 'Steven Reward', 'Duston Magz', '2017', 'R-6', 6, 0),
('BKO020', 'AD001', 'MySQL Dasar dan Implementasi', 'Supratman Efendi', 'Ilmukom', '2014', 'R-7', 4, 1),
('BKO021', 'AD001', 'Nippon Against World', 'Hasirama Tadashi', 'Sung Yang', '2009', 'R-8', 1, 1),
('BKO022', 'AD001', 'Konfigursi Router Cisco', 'Solikin', 'Safari pub', '2019', 'R-10', 1, 2),
('BKO023', 'AD001', 'Fashion Paris', 'Amire Melaine', 'FranceTime', '2018', 'R-1', 2, 0),
('BKO024', 'AD001', 'Unreleashed Journal', 'Timothy Law', 'Askars', '2017', 'R-3', 4, 0),
('BKO025', 'AD001', 'Pemrograman Dasar', 'Orang', 'Orang', '2021', 'R-3', 9, 1),
('BKO026', 'AD001', 'UML', 'Orang', 'Orang', '2019', '', 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `ID_DIPINJAM` int(11) NOT NULL,
  `ID_PINJAM` varchar(10) DEFAULT NULL,
  `ID_BUKU` varchar(10) DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `DENDA` int(11) DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`ID_DIPINJAM`, `ID_PINJAM`, `ID_BUKU`, `TGL_KEMBALI`, `DENDA`, `STATUS`) VALUES
(13, 'P170623001', 'BKO005', '2017-06-25', 0, 'Sudah Kembali'),
(14, 'P170623001', 'BKO008', '2021-01-01', 640500, 'Sudah Kembali'),
(15, 'P170623001', 'BKO013', '2021-01-01', 640500, 'Sudah Kembali'),
(16, 'P170623002', 'BKO008', '2021-01-05', 644500, 'Sudah Kembali'),
(17, 'P170624001', 'BKO013', '2017-07-09', 4000, 'Sudah Kembali'),
(18, 'P170624001', 'BKO007', '2021-01-07', 645000, 'Sudah Kembali'),
(19, 'P170624001', 'BKO011', '2021-01-07', 645000, 'Sudah Kembali'),
(20, 'P170624002', 'BKO004', '2021-01-19', 651000, 'Sudah Kembali'),
(21, 'P170624002', 'BKO005', '2021-01-19', 651000, 'Sudah Kembali'),
(22, 'P170624002', 'BKO007', '2021-01-19', 651000, 'Sudah Kembali'),
(23, 'P170624003', 'BKO011', '2021-01-21', 652000, 'Sudah Kembali'),
(24, 'P170624003', 'BKO004', '2021-01-21', 652000, 'Sudah Kembali'),
(25, 'P170624003', 'BKO015', '2021-01-21', 652000, 'Sudah Kembali'),
(26, 'P170624004', 'BKO017', '2017-06-25', 0, 'Sudah Kembali'),
(27, 'P170624005', 'BKO013', '2021-01-21', 652000, 'Sudah Kembali'),
(28, 'P170624005', 'BKO006', '2021-01-22', 652500, 'Sudah Kembali'),
(29, 'P170624006', 'BKO011', '2017-06-25', 0, 'Sudah Kembali'),
(30, 'P170624006', 'BKO018', '2017-07-10', 4500, 'Sudah Kembali'),
(31, 'P170625001', 'BKO019', '2021-01-22', 652000, 'Sudah Kembali'),
(32, 'P170625001', 'BKO020', '2021-01-22', 652000, 'Sudah Kembali'),
(33, 'P170625001', 'BKO021', '2021-01-26', 654000, 'Sudah Kembali'),
(34, 'P170625002', 'BKO010', '2017-07-09', 3500, 'Sudah Kembali'),
(35, 'P170625002', 'BKO016', '2021-01-05', 641500, 'Sudah Kembali'),
(36, 'P170626001', 'BKO012', '2021-01-05', 641000, 'Sudah Kembali'),
(37, 'P170626001', 'BKO009', '2021-01-28', 654500, 'Sudah Kembali'),
(38, 'P170626001', 'BKO014', '2021-01-28', 654500, 'Sudah Kembali'),
(39, 'P170626002', 'BKO014', '2021-01-31', 656000, 'Sudah Kembali'),
(40, 'P170626002', 'BKO010', NULL, 0, 'Belum Kembali'),
(41, 'P170629001', 'BKO013', '2021-01-30', 654000, 'Sudah Kembali'),
(42, 'P170629001', 'BKO009', NULL, 0, 'Belum Kembali'),
(43, 'P170629002', 'BKO010', NULL, 0, 'Belum Kembali'),
(44, 'P170629002', 'BKO016', NULL, 0, 'Belum Kembali'),
(45, 'P170629002', 'BKO012', NULL, 0, 'Belum Kembali'),
(46, 'P170709001', 'BKO020', NULL, 0, 'Belum Kembali'),
(47, 'P170709001', 'BKO011', NULL, 0, 'Belum Kembali'),
(48, 'P170709002', 'BKO022', NULL, 0, 'Belum Kembali'),
(49, 'P170709002', 'BKO021', NULL, 0, 'Belum Kembali'),
(50, 'P210101001', 'BKO006', '2021-01-01', 0, 'Sudah Kembali'),
(51, 'P210105001', 'BKO004', '2021-01-13', 2500, 'Sudah Kembali'),
(52, 'P210105002', 'BKO004', NULL, 0, 'Belum Kembali'),
(53, 'P210105003', 'BKO005', '2021-01-05', 1500, 'Sudah Kembali'),
(54, 'P210107001', 'BKO005', NULL, 0, 'Belum Kembali'),
(55, 'P210113001', 'BKO026', NULL, 0, 'Belum Kembali'),
(56, 'P210117001', 'BKO025', NULL, 0, 'Belum Kembali'),
(57, 'P210117002', 'BKO026', NULL, 0, 'Belum Kembali'),
(58, 'P210119001', 'BKO022', NULL, 0, 'Belum Kembali'),
(59, 'P210121001', 'BKO026', NULL, 0, 'Belum Kembali'),
(60, 'P210121002', 'BKO005', NULL, 0, 'Belum Kembali'),
(61, 'P210121003', 'BKO009', NULL, 0, 'Belum Kembali'),
(62, 'P210121003', 'BKO009', NULL, 0, 'Belum Kembali'),
(63, 'P210121003', 'BKO009', NULL, 0, 'Belum Kembali'),
(64, 'P210121004', 'BKO005', NULL, 0, 'Belum Kembali'),
(65, 'P210121004', 'BKO007', NULL, 0, 'Belum Kembali'),
(66, 'P210121004', 'BKO010', NULL, 0, 'Belum Kembali'),
(67, 'P210121005', 'BKO018', NULL, 0, 'Belum Kembali'),
(68, 'P210122001', 'BKO006', '2021-01-30', 2500, 'Sudah Kembali'),
(69, 'P210130001', 'BKO004', '2021-01-30', 0, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PINJAM` varchar(10) NOT NULL,
  `ID_ANGGOTA` varchar(10) DEFAULT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `TGL_PENGEMBALIAN` varchar(20) NOT NULL,
  `JML_BUKU` int(11) NOT NULL,
  `STATS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PINJAM`, `ID_ANGGOTA`, `ID_ADMIN`, `TGL_PINJAM`, `TGL_PENGEMBALIAN`, `JML_BUKU`, `STATS`) VALUES
('P170623001', 'AGT002', 'AD004', '2017-06-23', '', 3, 'Sudah Kembali'),
('P170623002', 'AGT003', 'AD005', '2017-06-23', '', 1, 'Sudah Kembali'),
('P170624001', 'AGT007', 'AD005', '2017-06-24', '', 3, 'Sudah Kembali'),
('P170624002', 'AGT008', 'AD005', '2017-06-24', '', 3, 'Sudah Kembali'),
('P170624003', 'AGT004', 'AD005', '2017-06-24', '', 3, 'Sudah Kembali'),
('P170624004', 'AGT001', 'AD004', '2017-06-24', '', 1, 'Sudah Kembali'),
('P170624005', 'AGT007', 'AD004', '2017-06-24', '', 2, 'Sudah Kembali'),
('P170624006', 'AGT003', 'AD006', '2017-06-24', '', 2, 'Sudah Kembali'),
('P170625001', 'AGT013', 'AD006', '2017-06-25', '', 3, 'Sudah Kembali'),
('P170625002', 'AGT010', 'AD006', '2017-06-25', '', 2, 'Sudah Kembali'),
('P170626001', 'AGT006', 'AD004', '2017-06-26', '', 3, 'Sudah Kembali'),
('P170626002', 'AGT012', 'AD004', '2017-06-26', '', 2, 'Belum Kembali'),
('P170629001', 'AGT014', 'AD006', '2017-06-29', '', 2, 'Belum Kembali'),
('P170629002', 'AGT015', 'AD006', '2017-06-29', '', 3, 'Belum Kembali'),
('P170709001', 'AGT011', 'AD006', '2017-07-09', '', 2, 'Belum Kembali'),
('P170709002', 'AGT016', 'AD006', '2017-07-09', '', 2, 'Belum Kembali'),
('P210101001', 'AGT001', 'AD011', '2021-01-01', '', 1, 'Sudah Kembali'),
('P210105001', 'AGT001', 'AD011', '2021-01-05', '', 1, 'Sudah Kembali'),
('P210105002', 'AGT002', 'AD011', '2021-01-05', '', 1, 'Belum Kembali'),
('P210105003', 'AGT001', 'AD011', '2021-01-05', '', 1, 'Sudah Kembali'),
('P210107001', 'AGT001', 'AD001', '2021-01-07', '', 1, 'Belum Kembali'),
('P210113001', 'AGT003', 'AD001', '2021-01-13', '', 1, 'Belum Kembali'),
('P210117001', 'AGT003', 'AD001', '2021-01-17', '2021-01-20', 1, 'Belum Kembali'),
('P210117002', 'AGT007', 'AD001', '2021-01-17', '2021-01-20', 1, 'Belum Kembali'),
('P210119001', 'AGT016', 'AD001', '2021-01-19', '2021-01-22', 1, 'Belum Kembali'),
('P210121001', 'AGT016', 'AD001', '2021-01-21', '2021-01-24', 1, 'Belum Kembali'),
('P210121002', 'AGT007', 'AD001', '2021-01-21', '2021-01-24', 1, 'Belum Kembali'),
('P210121003', 'AGT005', 'AD001', '2021-01-21', '2021-01-24', 3, 'Belum Kembali'),
('P210121004', 'AGT001', 'AD001', '2021-01-21', '2021-01-24', 3, 'Belum Kembali'),
('P210121005', 'AGT010', 'AD001', '2021-01-21', '2021-01-24', 1, 'Belum Kembali'),
('P210122001', 'AGT006', 'AD001', '2021-01-22', '2021-01-25', 1, 'Sudah Kembali'),
('P210130001', 'AGT008', 'AD010', '2021-01-30', '2021-02-02', 1, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `perpus`
--

CREATE TABLE `perpus` (
  `ID_PERPUS` int(11) NOT NULL,
  `NAMA_P` varchar(128) DEFAULT NULL,
  `ALAMAT_P` mediumtext DEFAULT NULL,
  `ABOUT` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpus`
--

INSERT INTO `perpus` (`ID_PERPUS`, `NAMA_P`, `ALAMAT_P`, `ABOUT`) VALUES
(3, 'Perpustakaan SMK Angkasa 1 Margahayu', 'Jl. Hercules IV No. 01, Lanud Sulaeman, Sulaiman, Margahayu, Sulaiman, Kec. Margahayu, Bandung, Jawa Barat 40229', 'Perpustakaan SMK Angkasa 1 Margahayu ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD UNIQUE KEY `ANGGOTA_PK` (`ID_ANGGOTA`),
  ADD KEY `MAKE_FK` (`ID_ADMIN`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD UNIQUE KEY `BUKU_PK` (`ID_BUKU`),
  ADD KEY `CREATE_FK` (`ID_ADMIN`);

--
-- Indexes for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD PRIMARY KEY (`ID_DIPINJAM`),
  ADD UNIQUE KEY `DETAIL_PINJAM_PK` (`ID_DIPINJAM`),
  ADD KEY `MEMILIKI_FK` (`ID_PINJAM`),
  ADD KEY `MENGAMBIL_FK` (`ID_BUKU`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PINJAM`),
  ADD UNIQUE KEY `PEMINJAMAN_PK` (`ID_PINJAM`),
  ADD KEY `MELAKUKAN_FK` (`ID_ANGGOTA`),
  ADD KEY `MELAYANI_FK` (`ID_ADMIN`);

--
-- Indexes for table `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`ID_PERPUS`),
  ADD UNIQUE KEY `PERPUS_PK` (`ID_PERPUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  MODIFY `ID_DIPINJAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `perpus`
--
ALTER TABLE `perpus`
  MODIFY `ID_PERPUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_ANGGOTA_MAKE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_BUKU_CREATE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD CONSTRAINT `FK_DETAIL_P_MEMILIKI_PEMINJAM` FOREIGN KEY (`ID_PINJAM`) REFERENCES `peminjaman` (`ID_PINJAM`),
  ADD CONSTRAINT `FK_DETAIL_P_MENGAMBIL_BUKU` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_MELAKUKAN_ANGGOTA` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`),
  ADD CONSTRAINT `FK_PEMINJAM_MELAYANI_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
