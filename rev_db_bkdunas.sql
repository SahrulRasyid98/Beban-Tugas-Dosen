-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2019 pada 02.52
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rev_db_bkdunas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` varchar(15) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `email`, `telepon`, `username`, `password`, `status`, `keterangan`) VALUES
('ADM1910001', 'rere', 'rerere@rrer.com', '455544', 'repre', 'repre', 'Aktif', 'repre'),
('ADM1911001', 'Erina', 'erina@gmail.com', '083805867766', 'erina', 'erina', 'Aktif', 'Pegawai Sekre'),
('ADM1911002', 'admin', 'admin@gmail.com', '082222311231', 'admin', 'admin', 'Aktif', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_beban_tugas`
--

CREATE TABLE `tb_beban_tugas` (
  `id_beban_tugas` varchar(15) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `nidn` varchar(15) NOT NULL,
  `status_warek` varchar(20) NOT NULL,
  `status_dekan` varchar(20) NOT NULL,
  `status_kaprodi` varchar(20) NOT NULL,
  `status_dosen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_beban_tugas`
--

INSERT INTO `tb_beban_tugas` (`id_beban_tugas`, `periode`, `tgl`, `nidn`, `status_warek`, `status_dekan`, `status_kaprodi`, `status_dosen`) VALUES
('BTG1912001', 'Ganjil 2019/2020', '2019-12-01', '1. 0110017005', 'Proses', 'Proses', 'Proses', 'Proses'),
('BTG1912002', 'Ganjil 2019/2020', '2019-12-01', '1. 0110017005', 'Disetujui', 'Disetujui', 'Disetujui', 'Disetujui'),
('BTG1912003', 'Genap 2019/2020', '2019-12-01', '1. 0110017005', 'Proses', 'Proses', 'Proses', 'Proses'),
('BTG1912004', 'Genap 2019/2020', '2019-12-01', '111112222235', 'Proses', 'Proses', 'Disetujui', 'Proses'),
('BTG1912005', 'Genap 2019/2020', '2019-12-02', '1. 0108019018', 'Disetujui', 'Disetujui', 'Disetujui', 'Disetujui'),
('BTG1912007', 'Genap 2020/2021', '2019-12-10', '1. 0108019018 ', 'Proses', 'Proses', 'Proses', 'Proses'),
('BTG1912008', 'Ganjil 2019/2020', '2019-12-10', '1. 0108019018 ', 'Disetujui', 'Disetujui', 'Disetujui', 'Disetujui'),
('BTG1912009', 'Ganjil 2019/2020', '2019-12-11', '1. 0103830068 ', 'Disetujui', 'Disetujui', 'Disetujui', 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bkd`
--

CREATE TABLE `tb_bkd` (
  `id_bkd` int(5) NOT NULL,
  `id_beban_tugas` varchar(15) NOT NULL,
  `kategori` varchar(75) NOT NULL,
  `bidang_tugas` varchar(35) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam` varchar(15) NOT NULL,
  `ruang` varchar(35) NOT NULL,
  `fakultas` varchar(35) NOT NULL,
  `sks` int(3) NOT NULL,
  `keterangan` text NOT NULL,
  `revisi` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bkd`
--

INSERT INTO `tb_bkd` (`id_bkd`, `id_beban_tugas`, `kategori`, `bidang_tugas`, `hari`, `jam`, `ruang`, `fakultas`, `sks`, `keterangan`, `revisi`) VALUES
(30, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Bahasa Dan Automata ', 'Kamis', '09.50 - 11.30', '02', 'TI - FTKI', 3, '-', ''),
(31, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Animasi Komputer', 'Selasa', '09:50 - 11:30', 'R.01', 'Teknik Informatika', 2, '-', '[Revisi]'),
(32, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Aljabar Linier', 'Jumat', '15.20 - 17.00', '04', 'SI - FTKI', 2, '-', ''),
(33, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Aljabar Linier', 'Jumat', '08.00 - 09.40', '05', 'SI - FTKI', 2, '-', ''),
(34, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Statik dan Probabiitas', 'Jumat', '13.30 - 15.10', '05', 'SI - FTKI', 2, '-', ''),
(35, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Matematika Diskrit', 'Kamis', '08.00 - 09.40', '01', 'TI - FTKI', 2, '-', ''),
(36, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Matematika Diskrit', 'Kamis', '15.20 - 17.00', '03', 'TI - FTKI', 2, '-', ''),
(37, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Matematika Diskrit', 'Jumat', '13.30 - 15.20', '04', 'TI  - FTKI', 2, '-', ''),
(38, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Teknik Simulai dan Pemodelan', 'Rabu', '15.20 - 17.00', '02', 'TI - FTKI', 3, '-', ''),
(39, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Menejemen Umum', 'Kamis', '13.30 - 15.10', '03', 'SI - FTKI', 2, '-', ''),
(40, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Struktur Data dan Algoritma', 'Jumat', '09.50 - 11.30', '01', 'SI - FTKI', 4, '-', ''),
(41, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Koordinator Mata Kuliah Diskrit', '-', '-', '-', 'FTKI', 1, '-', ''),
(42, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Koordinator Mata Kuiah Aljabar Lini', '-', '-', '-', 'FTKI', 1, '-', ''),
(43, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Pembibing Akademik', '-', '-', '-', 'FTKI', 2, '-', ''),
(44, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Pembibing Kerja Preaktek (S1)', '-', '-', '-', 'FTKI', 1, '-', ''),
(45, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Pembibing Tugas Akhir', '-', '-', '-', 'FTKI', 2, '-', ''),
(46, 'BTG1912004', 'Pendidikan dan Pengajaran', 'PBO', 'Selasa', '13.30 - 15.10', '02', 'SI - FTKI', 2, '-', ''),
(47, 'BTG1912005', 'Pendidikan dan Pengajaran', 'PBO', 'Senin', '13.20 - 15.10', '03', 'SI - FTKI', 2, '-', ''),
(48, 'BTG1912003', 'Pendidikan dan Pengajaran', 'PBO', 'Selasa', '14.30 - 15.10', '03', 'SI - FTKI', 3, '-', ''),
(54, 'BTG1912005', 'Pendidikan dan Pengajaran', 'Coba Untuk Buat Matku Genap', 'Selasa', '13:30 - 15:10', 'R.04', 'Teknik Informatika', 2, '-', ''),
(55, 'BTG1912005', 'Pendidikan dan Pengajaran', 'Yihaaaaaaaaaaaaaa', 'Selasa', '09:50 - 11:30', 'R.02', 'Sistem Informasi', 2, '-', ''),
(56, 'BTG1912001', 'Pendidikan dan Pengajaran', 'Pemrograman Berbasis Web I', 'Senin', '09:50 - 11:30', 'R.03', 'Sistem Informasi', 2, '-', ''),
(57, 'BTG1912002', 'Pendidikan dan Pengajaran', 'Pendidikan Anti Korupsi', 'Selasa', '08:00 - 09:40', 'R.03', 'Teknik Informatika', 2, '-', ''),
(59, 'BTG1912007', 'Pendidikan dan Pengajaran', 'Coba Untuk Buat Matku Genap', 'Rabu', '09:50 - 11:30', 'R.02', 'Teknik Informatika', 3, '-', '[Revisi]'),
(60, 'BTG1912009', 'Pendidikan dan Pengajaran', 'Arsitektur dan Organisasi Komputer', 'Selasa', '09:50 - 11:30', 'R.02', 'Teknik Informatika', 2, '-', ''),
(61, 'BTG1912007', 'Pendidikan dan Pengajaran', '-', 'Senin', '11:40 - 13:20', 'R.03', 'Informatika', 2, '-', ''),
(62, 'BTG1912008', 'Pendidikan dan Pengajaran', 'Kalkulus I', 'Senin', '08:00 - 09:40', 'R.01', 'Informatika', 2, '-', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nidn` varchar(15) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(35) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `fakultas` varchar(35) NOT NULL,
  `program_studi` varchar(35) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `status` varchar(35) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar_ttd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`nidn`, `nama_dosen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `email`, `telpon`, `alamat`, `fakultas`, `program_studi`, `username`, `password`, `status`, `keterangan`, `gambar_ttd`) VALUES
('1. 010003413 ', ' Dra. Yusreini Sabri, M.M.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12539', 'FTKI', 'Sistem Informasi', 'unas20', 'unas20', 'Tetap', 'Tidak ada', '11.png'),
('1. 010019016 ', ' Moh Dimyati Soedja, S.Sos., M', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12566', 'FTKI', 'Sistem Informasi', 'unas47', 'unas47', 'Tetap', 'Tidak ada', '11.png'),
('1. 010019033 ', ' Mochdar Soleman, S.IP., M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12563', 'FTKI', 'Sistem Informasi', 'unas44', 'unas44', 'Tetap', 'Tidak ada', '11.png'),
('1. 010020018 ', ' Dra. Siswanti Kusumo, M.Si', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12565', 'FTKI', 'Sistem Informasi', 'unas46', 'unas46', 'Tetap', 'Tidak ada', '11.png'),
('1. 010083054 ', ' Dr. Drs. Harun Umar, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12570', 'FTKI', 'Sistem Informasi', 'unas51', 'unas51', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102018007 ', ' Dr. Bhakti Nur Avianto, S.IP.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12568', 'FTKI', 'Sistem Informasi', 'unas49', 'unas49', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102030693 ', ' Sazali, S.Ag., M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12549', 'FTKI', 'Sistem Informasi', 'unas30', 'unas30', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102050725 ', ' Drs. Evert Haryanto Hilman, M', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12525', 'FTKI', 'Sistem Informasi', 'unas6', 'unas6', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102150847 ', ' Masidin, S.H., M.H.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12559', 'FTKI', 'Sistem Informasi', 'unas40', 'unas40', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102890272 ', ' Dr. Drs. Zainul Djumadin, M.S', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12561', 'FTKI', 'Sistem Informasi', 'unas42', 'unas42', 'Tetap', 'Tidak ada', '11.png'),
('1. 0102910367 ', ' Ir. Asmah, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12538', 'FTKI', 'Sistem Informasi', 'unas19', 'unas19', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103010797 ', ' Ummu Salamah, S.Ag., M.A', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12550', 'FTKI', 'Sistem Informasi', 'unas31', 'unas31', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103010799 ', ' Septi Andryana, S.Kom., MMSI', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12578', 'FTKI', 'Sistem Informasi', 'unas59', 'unas59', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103010800 ', ' Moh. Iwan Wahyuddin, S.T., M.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12575', 'FTKI', 'Sistem Informasi', 'unas56', 'unas56', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103010801 ', ' Dr. Ucuk Darusalam, S.T., M.T', 'DEKAN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12577', 'FTKI', 'Sistem Informasi', 'dekan', 'dekan', 'Tetap', 'Tidak ada', '29.jpg'),
('1. 0103018022 ', ' Kamaruddin Salim, S.Sos., M.S', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12562', 'FTKI', 'Sistem Informasi', 'unas43', 'unas43', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103018023 ', ' Dr. Andi Yusran, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12560', 'FTKI', 'Sistem Informasi', 'unas41', 'unas41', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103026670 ', ' Drs. I Nyoman Adnyana, M.Si.M', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12556', 'FTKI', 'Sistem Informasi', 'unas37', 'unas37', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103150850 ', ' Ratih Titi Komala Sari, S.T.,', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12533', 'FTKI', 'Sistem Informasi', 'unas14', 'unas14', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103830068 ', ' Drs. Haeruddin Sudibya, M.Sas', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12524', 'FTKI', 'Sistem Informasi', 'unas5', 'unas5', 'Tetap', 'Tidak ada', '11.png'),
('1. 0103930407 ', ' Drs. R. Iwan Siswadijaya, M.S', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12546', 'FTKI', 'Sistem Informasi', 'unas27', 'unas27', 'Tetap', 'Tidak ada', '11.png'),
('1. 0104090784 ', ' Dr. Fauziah, S. Kom. ,  M.M.S', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12530', 'FTKI', 'Sistem Informasi', 'unas11', 'unas11', 'Tetap', 'Tidak ada', '11.png'),
('1. 0104850230 ', ' Dra. Dwi Andayaningsih, M.M.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12537', 'FTKI', 'Sistem Informasi', 'unas18', 'unas18', 'Tetap', 'Tidak ada', '11.png'),
('1. 0104870180 ', ' Ir. Tri Waluyo, M.Agr.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12542', 'FTKI', 'Sistem Informasi', 'unas23', 'unas23', 'Tetap', 'Tidak ada', '11.png'),
('1. 0107019008', 'Nurhayati, S.Kom., M.Kom.', 'KAPRODI', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12580', 'FTKI', 'Teknik Informatika', 'kaproditi', 'kaproditi', 'Tetap', 'Tidak ada', '6.jpg'),
('1. 0107019009 ', ' Agung Triayudi, S.Kom., M.Kom', 'KAPRODI', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12576', 'FTKI', 'Sistem Informasi', 'kaprodisi', 'kaprodisi', 'Tetap', 'Tidak ada', '21.png'),
('1. 0107140838 ', ' Dr. Zulmasyhur, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12567', 'FTKI', 'Sistem Informasi', 'unas48', 'unas48', 'Tetap', 'Tidak ada', '11.png'),
('1. 0108019017 ', ' Sari Ningsih, S.Si., M.M.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12534', 'FTKI', 'Sistem Informasi', 'unas15', 'unas15', 'Tetap', 'Tidak ada', '11.png'),
('1. 0108019018 ', ' Gatot Soepriyono, S.Si., M.S.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12521', 'FTKI', 'Teknik Informatika', 'dosenti', 'dosenti', 'Tetap', 'Tidak ada', '10.png'),
('1. 0108019019 ', ' Yunan Fauzi Wijaya, S.Kom.,MM', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12531', 'FTKI', 'Sistem Informasi', 'unas12', 'unas12', 'Tetap', 'Tidak ada', '11.png'),
('1. 0108019020 ', ' Benrahman, S.Kom., M.MSI', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12548', 'FTKI', 'Sistem Informasi', 'unas29', 'unas29', 'Tetap', 'Tidak ada', '11.png'),
('1. 0108140841 ', ' Aris Gunaryati, S.Si., M.M.S.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12579', 'FTKI', 'Sistem Informasi', 'unas60', 'unas60', 'Tetap', 'Tidak ada', '11.png'),
('1. 0110017004 ', ' Agus Iskandar, S.Kom., M.Kom.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12532', 'FTKI', 'Sistem Informasi', 'unas13', 'unas13', 'Tetap', 'Tidak ada', '11.png'),
('1. 0110017005 ', ' Ira Diana Sholihati, S.Si., M', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12520', 'FTKI', 'Sistem Informasi', 'dosensi', 'dosensi', 'Tetap', 'Tidak ada', '8.jpg'),
('1. 0110140842 ', ' Ir. Endah Tri Esti Handayani,', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12523', 'FTKI', 'Sistem Informasi', 'unas4', 'unas4', 'Tetap', 'Tidak ada', '11.png'),
('1. 0110150858 ', ' Yusuf Wibisono, S.IP., M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12569', 'FTKI', 'Sistem Informasi', 'unas50', 'unas50', 'Tetap', 'Tidak ada', '11.png'),
('1. 0110150859 ', ' Angga Sulaiman, S.IP., M.AP.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12564', 'FTKI', 'Sistem Informasi', 'unas45', 'unas45', 'Tetap', 'Tidak ada', '11.png'),
('1. 0111130824 ', ' Novi Dian Nathasia, S.Kom.,MM', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12572', 'FTKI', 'Sistem Informasi', 'unas53', 'unas53', 'Tetap', 'Tidak ada', '11.png'),
('1. 0111130826 ', ' Andrianingsih, S.Kom.,MMSI.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12528', 'FTKI', 'Sistem Informasi', 'unas9', 'unas9', 'Tetap', 'Tidak ada', '11.png'),
('1. 0111201665 ', ' Prof.Dr. Iskandar Fitri, S.T.', 'WAREK', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12535', 'FTKI', 'Sistem Informasi', 'warek', 'warek', 'Tetap', 'Tidak ada', '9.jpg'),
('1. 0111880262 ', ' Drs. Imran Said Lumban Tobing', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12543', 'FTKI', 'Sistem Informasi', 'unas24', 'unas24', 'Tetap', 'Tidak ada', '11.png'),
('1. 0112150863 ', ' Winarsih, S.Si., MMSI', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12547', 'FTKI', 'Sistem Informasi', 'unas28', 'unas28', 'Tetap', 'Tidak ada', '11.png'),
('1. 0112150864 ', ' Drs. Suadi Sapta Putra, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12536', 'FTKI', 'Sistem Informasi', 'unas17', 'unas17', 'Tetap', 'Tidak ada', '11.png'),
('1. 020010068 ', ' Hj. Nina Khairina, Lc,MA.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12552', 'FTKI', 'Sistem Informasi', 'unas33', 'unas33', 'Tetap', 'Tidak ada', '11.png'),
('1. 020015011 ', ' Tri Bayu Norito, M.Pd.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12545', 'FTKI', 'Sistem Informasi', 'unas26', 'unas26', 'Tetap', 'Tidak ada', '11.png'),
('1. 020019059 ', ' Faisal Romdonih, M.Si.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12551', 'FTKI', 'Sistem Informasi', 'unas32', 'unas32', 'Tetap', 'Tidak ada', '11.png'),
('1. 020083113 ', ' Drs. Nius Nainggolan, MM.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12554', 'FTKI', 'Sistem Informasi', 'unas35', 'unas35', 'Tetap', 'Tidak ada', '11.png'),
('1. 020188001 ', ' Drs. Toto Sugiono, MM', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12540', 'FTKI', 'Sistem Informasi', 'unas21', 'unas21', 'Tetap', 'Tidak ada', '11.png'),
('1. 030001171 ', ' Zaenah, SH, M.H,', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12558', 'FTKI', 'Sistem Informasi', 'unas39', 'unas39', 'Tetap', 'Tidak ada', '11.png'),
('1. 030003430 ', ' Dra. Retna Setya Pratiwi, M.S', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12527', 'FTKI', 'Sistem Informasi', 'unas8', 'unas8', 'Tetap', 'Tidak ada', '11.png'),
('1. 030005002 ', ' Nur Fajri, S.Sos., M.Si.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12526', 'FTKI', 'Sistem Informasi', 'unas7', 'unas7', 'Tetap', 'Tidak ada', '11.png'),
('1. 030018036 ', ' Dyah Handayani Dewi, S.E., M.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12541', 'FTKI', 'Sistem Informasi', 'unas22', 'unas22', 'Tetap', 'Tidak ada', '11.png'),
('1. 030020067 ', ' Supadi, S.E., M.A.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12555', 'FTKI', 'Sistem Informasi', 'unas36', 'unas36', 'Tetap', 'Tidak ada', '11.png'),
('1. 050018019 ', ' Deny Hidayatullah, S.E., M.M.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12544', 'FTKI', 'Sistem Informasi', 'unas25', 'unas25', 'Tetap', 'Tidak ada', '11.png'),
('1. 050019020 ', ' Arie Gunawan, S.Kom., MMSI.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12573', 'FTKI', 'Sistem Informasi', 'unas54', 'unas54', 'Tetap', 'Tidak ada', '11.png'),
('1. 050019023 ', ' Rima Tamara Aldisa, S.Kom., M', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12571', 'FTKI', 'Sistem Informasi', 'unas52', 'unas52', 'Tetap', 'Tidak ada', '11.png'),
('1. 050019051 ', ' Sigit Wijanarko, S.T., M.Kom.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12529', 'FTKI', 'Sistem Informasi', 'unas10', 'unas10', 'Tetap', 'Tidak ada', '11.png'),
('1. 050019052 ', ' Rini Nuraini, ST., M.Kom.', 'DOSEN', 'Perempuan', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12574', 'FTKI', 'Sistem Informasi', 'unas55', 'unas55', 'Tetap', 'Tidak ada', '11.png'),
('1. 060118017 ', ' Kurnia Rachmawati, S.S., M.A.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12522', 'FTKI', 'Sistem Informasi', 'unas3', 'unas3', 'Tetap', 'Tidak ada', '11.png'),
('1. 060118068 ', ' Abu Bakar Shiddiq, M.S.I.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12553', 'FTKI', 'Sistem Informasi', 'unas34', 'unas34', 'Tetap', 'Tidak ada', '11.png'),
('1. 070014063 ', ' Adi Purnomo Santoso, SH., MH.', 'DOSEN', 'Laki-laki', 'Jakarta', '0000-00-00', 'contoh@gmail.com', '87654321112', 'Jl. Sawo Manila No.61, Pejaten, Pasar Minggu, Jakarta Selatan 12557', 'FTKI', 'Sistem Informasi', 'unas38', 'unas38', 'Tetap', 'Tidak ada', '11.png'),
('NIDN', 'nama_dosen', 'jabatan', 'jenis_kelamin', 'tempat_lahir', '0000-00-00', 'email', 'telepon', 'alamat', 'fakultas', 'program_studi', 'username', 'password', 'status', 'keterangan', 'gambar_ttd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `idm` int(8) NOT NULL,
  `id_matkul` varchar(15) NOT NULL,
  `matkul` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_matkul`
--

INSERT INTO `tb_matkul` (`idm`, `id_matkul`, `matkul`, `semester`, `jurusan`, `deskripsi`) VALUES
(52, '1708030201', 'Algoritma dan Pemrograman I', 'Ganjil', 'TI', 'Tidak ada'),
(53, '1708030301', 'Algoritma Pararel', 'Ganjil', 'TI', 'Tidak ada'),
(54, '1708030203', 'Aljabar Linier', 'Ganjil', 'TI', 'Tidak ada'),
(55, '1708030601', 'Animasi Komputer', 'Ganjil', 'TI', 'Tidak ada'),
(56, '1708030309', 'Arsitektur dan Organisasi Komputer', 'Ganjil', 'TI', 'Tidak ada'),
(57, '1700000102', 'Bahasa Indonesia', 'Ganjil', 'TI', 'Tidak ada'),
(58, '1708020101', 'Bahasa Inggris Informatika', 'Ganjil', 'TI', 'Tidak ada'),
(59, '1700000108', 'Bahasa Inggris / TOEFL', 'Ganjil', 'TI', 'Tidak ada'),
(60, '1708030327', 'Basis Data', 'Ganjil', 'TI', 'Tidak ada'),
(61, '1708030304', 'Data Science', 'Ganjil', 'TI', 'Tidak ada'),
(62, '1708030622', 'Deep Learning', 'Ganjil', 'TI', '-'),
(63, '1708030303', 'E-Business', 'Ganjil', 'TI', 'Tidak ada'),
(64, '1708020501', 'Etika Profesi Teknologi Informasi', 'Ganjil', 'TI', 'Tidak ada'),
(65, '1708030209', 'Fisika Dasar', 'Ganjil', 'TI', 'Tidak ada'),
(66, '1708030305', 'Internet of Things', 'Ganjil', 'TI', 'Tidak ada'),
(67, '1708030206', 'Kalkulus I', 'Ganjil', 'TI', 'Tidak ada'),
(68, '1708030306', 'Kecerdasan Buatan dan Logika Fuzzy', 'Ganjil', 'TI', 'Tidak ada'),
(69, '1708030402', 'Kerja Praktek', 'Ganjil', 'TI', 'Tidak ada'),
(70, '1708020502', 'Ketrampilan Berkomunikasi', 'Ganjil', 'TI', 'Tidak ada'),
(71, '1700000107', 'Kewirausahaan', 'Ganjil', 'TI', 'Tidak ada'),
(72, '1708030502', 'Komputer dan Masyarakat', 'Ganjil', 'TI', 'Tidak ada'),
(73, '1708030608', 'Komunikasi Serat Optik', 'Ganjil', 'TI', 'Tidak ada'),
(74, '1700000105', 'Konservasi Alam dan Lingkungan **', 'Ganjil', 'TI', 'Tidak ada'),
(75, '1708030210', 'Logika Informatika', 'Ganjil', 'TI', 'Tidak ada'),
(76, '1708030307', 'Manajemen Proyek Teknologi Informasi', 'Ganjil', 'TI', 'Tidak ada'),
(77, '1708030308', 'Metodologi Penelitian Teknologi Informasi', 'Ganjil', 'TI', 'Tidak ada'),
(78, '1700000104', 'Olahraga / Seni **', 'Ganjil', 'TI', 'Tidak ada'),
(79, '1708030313', 'Pemrograman Multimedia', 'Ganjil', 'TI', 'Tidak ada'),
(80, '1700000103', 'Pendidikan Agama', 'Ganjil', 'TI', 'Tidak ada'),
(81, '1700000106', 'Pendidikan Anti Korupsi', 'Ganjil', 'TI', 'Tidak ada'),
(82, '1700000101', 'Pendidikan Kewarganegaraan', 'Ganjil', 'TI', 'Tidak ada'),
(83, '1700000109', 'Pendidikan Pancasila', 'Ganjil', 'TI', 'Tidak ada'),
(84, '1708030214', 'Pengantar Teknologi Komunikasi dan Informatika', 'Ganjil', 'TI', 'Tidak ada'),
(85, '1708030316', 'Pengelolaan Instalasi Komputer', 'Ganjil', 'TI', 'Tidak ada'),
(86, '1708030318', 'Perancangan dan Analisis Algoritma', 'Ganjil', 'TI', 'Tidak ada'),
(87, '1708030215', 'Praktikum Algoritma dan Pemrograman I', 'Ganjil', 'TI', 'Tidak ada'),
(88, '1708030320', 'Praktikum E-Business', 'Ganjil', 'TI', 'Tidak ada'),
(89, '1708030217', 'Praktikum Fisika Dasar', 'Ganjil', 'TI', 'Tidak ada'),
(90, '1708030322', 'Praktikum Pemrograman Multimedia', 'Ganjil', 'TI', 'Tidak ada'),
(91, '1708030324', 'Praktikum Pemrograman Web', 'Ganjil', 'TI', 'Tidak ada'),
(92, '1708030325', 'Praktikum Pengelolaan Instalasi Komputer', 'Ganjil', 'TI', 'Tidak ada'),
(93, '1708030218', 'Praktikum Sistem Digital', 'Ganjil', 'TI', 'Tidak ada'),
(94, '1708020349', 'Praktikum Sistem Operasi', 'Ganjil', 'TI', 'Tidak ada'),
(95, '1708030219', 'Praktikum Struktur Data dan Algoritma', 'Ganjil', 'TI', 'Tidak ada'),
(96, '1708030326', 'Rekayasa Perangkat Lunak', 'Ganjil', 'TI', 'Tidak ada'),
(97, '1708030618', 'Sistem Komunikasi Gelombang Mikro', 'Ganjil', 'TI', 'Tidak ada'),
(98, '1708020348', 'Sistem Operasi', 'Ganjil', 'TI', 'Tidak ada'),
(99, '1708030220', 'Statistika dan Probabilitas', 'Ganjil', 'TI', 'Tidak ada'),
(100, '1708030330', 'Teknik Kompilasi', 'Ganjil', 'TI', 'Tidak ada'),
(101, '1708030329', 'Teknik Riset Operasional', 'Ganjil', 'TI', 'Tidak ada'),
(102, '1708030403', 'Tugas Akhir', 'Ganjil', 'TI', 'Tidak ada'),
(103, '1700000102', 'Bahasa Indonesia', 'Ganjil', 'SI', 'Tidak ada'),
(104, '1700000108', 'Bahasa Inggris / TOEFL', 'Ganjil', 'SI', 'Tidak ada'),
(105, '1708020205', 'Change Management', 'Ganjil', 'SI', 'Tidak ada'),
(106, '1708020203', 'Dasar - Dasar Pemrograman I', 'Ganjil', 'SI', 'Tidak ada'),
(107, '1708020326', 'Grafik Komputer', 'Ganjil', 'SI', 'Tidak ada'),
(108, '1708020202', 'Kalkulus', 'Ganjil', 'SI', 'Tidak ada'),
(109, '1708020502', 'Ketrampilan Berkomunikasi', 'Ganjil', 'SI', 'Tidak ada'),
(110, '1700000107', 'Kewirausahaan', 'Ganjil', 'SI', 'Tidak ada'),
(111, '1700000105', 'Konservasi Alam dan Lingkungan **', 'Ganjil', 'SI', 'Tidak ada'),
(112, '1708020324', 'Manajemen Proyek Sistem Informasi', 'Ganjil', 'SI', 'Tidak ada'),
(113, '1708020305', 'Manajemen Sistem Teknologi Informasi', 'Ganjil', 'SI', 'Tidak ada'),
(114, '1708030203', 'Matematika Diskrit', 'Ganjil', 'SI', 'Tidak ada'),
(115, '1708030308', 'Metodologi Penelitian Teknologi Informasi', 'Ganjil', 'SI', 'Tidak ada'),
(116, '1700000104', 'Olahraga / Seni **', 'Ganjil', 'SI', 'Tidak ada'),
(117, '1708020322', 'Pemrograman Berbasis Web I', 'Ganjil', 'SI', 'Tidak ada'),
(118, '1708020346', 'Pemrograman Visual', 'Ganjil', 'SI', 'Tidak ada'),
(119, '1700000103', 'Pendidikan Agama', 'Ganjil', 'SI', 'Tidak ada'),
(120, '1700000106', 'Pendidikan Anti Korupsi', 'Ganjil', 'SI', 'Tidak ada'),
(121, '1700000101', 'Pendidikan Kewarganegaraan', 'Ganjil', 'SI', 'Tidak ada'),
(122, '1700000109', 'Pendidikan Pancasila', 'Ganjil', 'SI', 'Tidak ada'),
(123, '1708030214', 'Pengantar Teknologi Sistem Informasi', 'Ganjil', 'SI', 'Tidak ada'),
(124, '1708020304', 'Pengelolaan Sistem Komputer', 'Ganjil', 'SI', 'Tidak ada'),
(125, '1708020214', 'Pengolahan Citra dan Computer Vision', 'Ganjil', 'SI', 'Tidak ada'),
(126, '1708020321', 'Pengolahan Data Terdistribusi', 'Ganjil', 'SI', 'Tidak ada'),
(127, '1708020336', 'Perancangan Basis Data Lanjut', 'Ganjil', 'SI', 'Tidak ada'),
(128, '1708020204', 'Praktikum Dasar - Dasar Pemrograman I', 'Ganjil', 'SI', 'Tidak ada'),
(129, '1708020323', 'Praktikum Pemrograman Berbasis Web I', 'Ganjil', 'SI', 'Tidak ada'),
(130, '1708020347', 'Praktikum Pemrograman Visual', 'Ganjil', 'SI', 'Tidak ada'),
(131, '1708020308', 'Praktikum Sistem Basis Data', 'Ganjil', 'SI', 'Tidak ada'),
(132, '1708020349', 'Praktikum Sistem Operasi', 'Ganjil', 'SI', 'Tidak ada'),
(133, '1708020313', 'Rekayasa Perangkat Lunak Sistem Informasi', 'Ganjil', 'SI', 'Tidak ada'),
(134, '1708020332', 'Rekayasa Sistem Berorientasi Obyek', 'Ganjil', 'SI', 'Tidak ada'),
(135, '1708020307', 'Sistem Basis Data', 'Ganjil', 'SI', 'Tidak ada'),
(136, '1708020211', 'Sistem Berbasis Pengetahuan', 'Ganjil', 'SI', 'Tidak ada'),
(137, '1708020348', 'Sistem Operasi', 'Ganjil', 'SI', 'Tidak ada'),
(138, '1708020319', 'Sistem Pendukung Keputusan', 'Ganjil', 'SI', 'Tidak ada'),
(139, '1708020309', 'Sistem Terdistribusi', 'Ganjil', 'SI', 'Tidak ada'),
(140, '1708020335', 'Teknik Data Mining', 'Ganjil', 'SI', 'Tidak ada'),
(141, '1708020320', 'Teknik Riset Operasional', 'Ganjil', 'SI', 'Tidak ada'),
(142, '1703023402', 'TOEFL Preparation', 'Ganjil', 'SI', 'Tidak ada'),
(143, '1708020404', 'Tugas Akhir', 'Ganjil', 'SI', 'Tidak ada'),
(144, '98989898989', 'Yihaaaaaaaaaaaaaa', 'Genap', 'SI', 'Tidak ada'),
(145, '90129301', 'Coba Untuk Buat Matku Genap', 'Genap', 'TI', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_beban_tugas`
--
ALTER TABLE `tb_beban_tugas`
  ADD UNIQUE KEY `id_beban_tugas` (`id_beban_tugas`);

--
-- Indeks untuk tabel `tb_bkd`
--
ALTER TABLE `tb_bkd`
  ADD UNIQUE KEY `id_bkd` (`id_bkd`);

--
-- Indeks untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`idm`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_bkd`
--
ALTER TABLE `tb_bkd`
  MODIFY `id_bkd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tb_matkul`
--
ALTER TABLE `tb_matkul`
  MODIFY `idm` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
