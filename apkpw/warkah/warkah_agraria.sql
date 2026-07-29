-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2026 pada 03.31
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
-- Database: `warkah_agraria`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_warkah`
--

CREATE TABLE `dokumen_warkah` (
  `id_dokumen` int(11) NOT NULL,
  `id_warkah` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `jenis_dokumen` enum('Akta Jual Beli','Surat Waris','Surat Ukur','Risalah Pemeriksaan Tanah','Bukti Pembayaran Pajak','Sertifikat Tanah','Dokumen Pendukung') DEFAULT NULL,
  `nama_file` varchar(255) NOT NULL,
  `tipe_file` varchar(50) DEFAULT NULL,
  `ukuran_file` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokumen_warkah`
--

INSERT INTO `dokumen_warkah` (`id_dokumen`, `id_warkah`, `nama_dokumen`, `jenis_dokumen`, `nama_file`, `tipe_file`, `ukuran_file`, `uploaded_at`) VALUES
(6, 9, 'AJB hidayat', 'Akta Jual Beli', '9_20260728_100030_89324f6a.pdf', 'application/pdf', 58795, '2026-07-28 08:00:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs_aktivitas`
--

CREATE TABLE `logs_aktivitas` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `aktivitas` text NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `logs_aktivitas`
--

INSERT INTO `logs_aktivitas` (`id_log`, `id_user`, `aktivitas`, `ip_address`, `user_agent`, `tanggal`) VALUES
(1, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 06:51:48'),
(2, 1, 'Backup database (PHP): backup_warkah_2026-07-28_09-00-42.sql', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:00:42'),
(3, 1, 'Mengedit warkah: WRK-2026-003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:05:42'),
(4, 1, 'Menambah pemilik tanah: Hidayat', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:09:38'),
(5, 1, 'Menambah pemilik tanah: Desfian', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:14:31'),
(6, 1, 'Menghapus pemilik tanah: Desfian', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:18:33'),
(7, 1, 'Menghapus pemilik tanah: Hidayat', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:19:17'),
(8, 1, 'Menambah pemilik tanah: Hidayat', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:19:30'),
(9, 1, 'Menambah warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:21:18'),
(10, 1, 'Menghapus warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:25:45'),
(11, 1, 'Menambah warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:26:18'),
(12, 1, 'Menghapus warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:28:41'),
(13, 1, 'Menambah warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:29:32'),
(14, 1, 'Menghapus warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:29:45'),
(15, 1, 'Menambah warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:31:12'),
(16, 1, 'Menghapus warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:31:48'),
(17, 1, 'Upload dokumen untuk warkah: WRK-2026-004', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:50:37'),
(18, 1, 'Upload dokumen untuk warkah: WRK-2026-004', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:52:20'),
(19, 1, 'Menghapus dokumen: AJB Ahmad Fauzi', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:54:34'),
(20, 1, 'Menghapus dokumen: AJB Ahmad Fauzi', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:58:50'),
(21, 1, 'Upload dokumen untuk warkah: WRK-2026-004', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:59:05'),
(22, 1, 'Menghapus dokumen: AJB Ahmad Fauzi', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:59:27'),
(23, 1, 'Menambah warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 07:59:58'),
(24, 1, 'Upload dokumen untuk warkah: WRK-2026-005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:00:30'),
(25, 1, 'Menghapus dokumen: Akta Jual Beli', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:03:35'),
(26, 1, 'Menghapus dokumen: Sertifikat Tanah', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:03:41'),
(27, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:46:21'),
(28, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:47:21'),
(29, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:47:30'),
(30, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:51:38'),
(31, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:52:09'),
(32, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 08:58:08'),
(33, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:05:55'),
(34, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:09:14'),
(35, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:10:11'),
(36, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:10:36'),
(37, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:19:27'),
(38, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-28 09:20:21'),
(39, 1, 'Logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-29 01:16:13'),
(40, 1, 'Login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36 Edg/150.0.0.0', '2026-07-29 01:16:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik_tanah`
--

CREATE TABLE `pemilik_tanah` (
  `id_pemilik` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemilik_tanah`
--

INSERT INTO `pemilik_tanah` (`id_pemilik`, `nama_lengkap`, `nik`, `nomor_telepon`, `alamat`, `pekerjaan`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'Budi Santoso', '1234567890123456', '081234567890', 'Jl. Merdeka No. 10, Jakarta Pusat', 'Pengusaha', 'L', '2026-07-28 06:24:29', NULL),
(2, 'Siti Rahayu', '2345678901234567', '081234567891', 'Jl. Diponegoro No. 5, Bandung', 'PNS', 'P', '2026-07-28 06:24:29', NULL),
(3, 'Ahmad Fauzi', '3456789012345678', '081234567892', 'Jl. Sudirman No. 15, Surabaya', 'Petani', 'L', '2026-07-28 06:24:29', NULL),
(4, 'Dewi Kartika', '4567890123456789', '081234567893', 'Jl. Gatot Subroto No. 8, Medan', 'Guru', 'P', '2026-07-28 06:24:29', NULL),
(7, 'Hidayat', '3376012511050001', '087761710866', 'Jl,Gabus No. 15, RT 004/RW 006, Kelurahan Tegal Sari, Kecamatan Tegal Barat, Kota Tegal, Jawa Tengah 52111.', 'Mahasiswa', 'L', '2026-07-28 07:19:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_perubahan`
--

CREATE TABLE `riwayat_perubahan` (
  `id_riwayat` int(11) NOT NULL,
  `id_warkah` int(11) DEFAULT NULL,
  `aksi` enum('Tambah','Edit','Hapus') NOT NULL,
  `data_lama` text DEFAULT NULL,
  `data_baru` text DEFAULT NULL,
  `dilakukan_oleh` varchar(50) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_perubahan`
--

INSERT INTO `riwayat_perubahan` (`id_riwayat`, `id_warkah`, `aksi`, `data_lama`, `data_baru`, `dilakukan_oleh`, `tanggal`) VALUES
(1, 3, 'Edit', '{\"id_warkah\":\"3\",\"nomor_warkah\":\"WRK-2026-003\",\"nomor_sertifikat\":\"SERT-2026-003\",\"id_pemilik\":\"1\",\"luas_tanah\":\"300.00\",\"jenis_hak_tanah\":\"Hak Milik\",\"status_tanah\":\"Dalam Proses\",\"kecamatan\":\"Kecamatan A\",\"kelurahan_desa\":\"Kelurahan C\",\"tanggal_pendaftaran\":\"2026-03-10\",\"keterangan\":\"Menunggu verifikasi\",\"created_at\":\"2026-07-28 13:24:29\",\"updated_at\":null,\"nama_lengkap\":\"Budi Santoso\",\"nik\":\"1234567890123456\"}', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_sertifikat\":\"SERT-2026-003\",\"id_pemilik\":\"1\",\"luas_tanah\":\"300.00\",\"jenis_hak_tanah\":\"Hak Milik\",\"status_tanah\":\"Bersertifikat\",\"kecamatan\":\"Kecamatan A\",\"kelurahan_desa\":\"Kelurahan C\",\"tanggal_pendaftaran\":\"2026-03-10\",\"keterangan\":\"Menunggu verifikasi\"}', 'admin', '2026-07-28 07:05:42'),
(2, NULL, 'Tambah', '', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.5\",\"jenis_hak_tanah\":\"Hak Milik\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\"}', 'admin', '2026-07-28 07:21:18'),
(3, NULL, 'Hapus', '{\"id_warkah\":\"5\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.50\",\"jenis_hak_tanah\":\"Hak Milik\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\",\"created_at\":\"2026-07-28 14:21:18\",\"updated_at\":null,\"nama_lengkap\":\"Hidayat\"}', '', 'admin', '2026-07-28 07:25:45'),
(4, NULL, 'Tambah', '', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.5\",\"jenis_hak_tanah\":\"Hak Guna Bangunan\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\"}', 'admin', '2026-07-28 07:26:18'),
(5, NULL, 'Hapus', '{\"id_warkah\":\"6\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.50\",\"jenis_hak_tanah\":\"Hak Guna Bangunan\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\",\"created_at\":\"2026-07-28 14:26:18\",\"updated_at\":null,\"nama_lengkap\":\"Hidayat\"}', '', 'admin', '2026-07-28 07:28:41'),
(6, NULL, 'Tambah', '', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.5\",\"jenis_hak_tanah\":\"Hak Guna Usaha\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\"}', 'admin', '2026-07-28 07:29:32'),
(7, NULL, 'Hapus', '{\"id_warkah\":\"7\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.50\",\"jenis_hak_tanah\":\"Hak Guna Usaha\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\",\"created_at\":\"2026-07-28 14:29:32\",\"updated_at\":null,\"nama_lengkap\":\"Hidayat\"}', '', 'admin', '2026-07-28 07:29:45'),
(8, NULL, 'Tambah', '', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.5\",\"jenis_hak_tanah\":\"Hak Guna Bangunan\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\"}', 'admin', '2026-07-28 07:31:12'),
(9, NULL, 'Hapus', '{\"id_warkah\":\"8\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.50\",\"jenis_hak_tanah\":\"Hak Guna Bangunan\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\",\"created_at\":\"2026-07-28 14:31:12\",\"updated_at\":null,\"nama_lengkap\":\"Hidayat\"}', '', 'admin', '2026-07-28 07:31:48'),
(10, 9, 'Tambah', '', '{\"csrf_token\":\"8c4347d8e630ca42a9c57f4dea8c61443c0211fa9177ffd1f22953093734f8ca\",\"nomor_warkah\":\"WRK-2026-005\",\"nomor_sertifikat\":\"SERT-2026-052\",\"id_pemilik\":\"7\",\"luas_tanah\":\"12.5\",\"jenis_hak_tanah\":\"Hak Milik\",\"status_tanah\":\"Belum\",\"kecamatan\":\"Tegal Barat\",\"kelurahan_desa\":\"Kelurahan Tegal Sari\",\"tanggal_pendaftaran\":\"2026-07-28\",\"keterangan\":\"\"}', 'admin', '2026-07-28 07:59:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('admin','operator') DEFAULT 'operator',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `role`, `created_at`, `last_login`) VALUES
(1, 'admin', '$2y$10$WdDngiuis6rV88Vt25lkceTW5zkKs7zDN1frTiyUkEkdR0NrVtJEq', 'Administrator', 'admin@warkah.com', 'admin', '2026-07-28 06:24:29', '2026-07-29 08:16:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warkah`
--

CREATE TABLE `warkah` (
  `id_warkah` int(11) NOT NULL,
  `nomor_warkah` varchar(50) NOT NULL,
  `nomor_sertifikat` varchar(50) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `luas_tanah` decimal(15,2) DEFAULT NULL,
  `jenis_hak_tanah` enum('Hak Milik','Hak Guna Bangunan','Hak Guna Usaha','Hak Pakai','Hak Pengelolaan') DEFAULT NULL,
  `status_tanah` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kelurahan_desa` varchar(50) DEFAULT NULL,
  `tanggal_pendaftaran` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `warkah`
--

INSERT INTO `warkah` (`id_warkah`, `nomor_warkah`, `nomor_sertifikat`, `id_pemilik`, `luas_tanah`, `jenis_hak_tanah`, `status_tanah`, `kecamatan`, `kelurahan_desa`, `tanggal_pendaftaran`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'WRK-2026-001', 'SERT-2026-001', 1, 500.00, 'Hak Milik', 'Bersertifikat', 'Kecamatan A', 'Kelurahan A', '2026-01-15', 'Data lengkap', '2026-07-28 06:24:29', NULL),
(2, 'WRK-2026-002', 'SERT-2026-002', 2, 750.00, 'Hak Guna Bangunan', 'Bersertifikat', 'Kecamatan B', 'Kelurahan B', '2026-02-20', 'Proses perpanjangan', '2026-07-28 06:24:29', NULL),
(3, 'WRK-2026-003', 'SERT-2026-003', 1, 300.00, 'Hak Milik', 'Bersertifikat', 'Kecamatan A', 'Kelurahan C', '2026-03-10', 'Menunggu verifikasi', '2026-07-28 06:24:29', '2026-07-28 07:05:42'),
(4, 'WRK-2026-004', 'SERT-2026-004', 3, 1000.00, 'Hak Guna Usaha', 'Bersertifikat', 'Kecamatan C', 'Kelurahan D', '2026-04-05', 'Sertifikat baru', '2026-07-28 06:24:29', NULL),
(9, 'WRK-2026-005', 'SERT-2026-052', 7, 12.50, 'Hak Milik', 'Belum', 'Tegal Barat', 'Kelurahan Tegal Sari', '2026-07-28', '', '2026-07-28 07:59:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokumen_warkah`
--
ALTER TABLE `dokumen_warkah`
  ADD PRIMARY KEY (`id_dokumen`),
  ADD KEY `id_warkah` (`id_warkah`);

--
-- Indeks untuk tabel `logs_aktivitas`
--
ALTER TABLE `logs_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pemilik_tanah`
--
ALTER TABLE `pemilik_tanah`
  ADD PRIMARY KEY (`id_pemilik`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `riwayat_perubahan`
--
ALTER TABLE `riwayat_perubahan`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_warkah` (`id_warkah`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `warkah`
--
ALTER TABLE `warkah`
  ADD PRIMARY KEY (`id_warkah`),
  ADD UNIQUE KEY `nomor_warkah` (`nomor_warkah`),
  ADD UNIQUE KEY `nomor_sertifikat` (`nomor_sertifikat`),
  ADD KEY `id_pemilik` (`id_pemilik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokumen_warkah`
--
ALTER TABLE `dokumen_warkah`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `logs_aktivitas`
--
ALTER TABLE `logs_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pemilik_tanah`
--
ALTER TABLE `pemilik_tanah`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `riwayat_perubahan`
--
ALTER TABLE `riwayat_perubahan`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `warkah`
--
ALTER TABLE `warkah`
  MODIFY `id_warkah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokumen_warkah`
--
ALTER TABLE `dokumen_warkah`
  ADD CONSTRAINT `dokumen_warkah_ibfk_1` FOREIGN KEY (`id_warkah`) REFERENCES `warkah` (`id_warkah`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `logs_aktivitas`
--
ALTER TABLE `logs_aktivitas`
  ADD CONSTRAINT `logs_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `riwayat_perubahan`
--
ALTER TABLE `riwayat_perubahan`
  ADD CONSTRAINT `riwayat_perubahan_ibfk_1` FOREIGN KEY (`id_warkah`) REFERENCES `warkah` (`id_warkah`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `warkah`
--
ALTER TABLE `warkah`
  ADD CONSTRAINT `warkah_ibfk_1` FOREIGN KEY (`id_pemilik`) REFERENCES `pemilik_tanah` (`id_pemilik`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
