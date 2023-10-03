-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2022 pada 16.00
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsispak_skrip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id_d` varchar(10) NOT NULL,
  `idduser` varchar(10) NOT NULL,
  `iddgej` varchar(10) NOT NULL,
  `dgej` varchar(50) NOT NULL,
  `dbot` float NOT NULL,
  `dfrasa` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` varchar(10) NOT NULL,
  `id_kuser` varchar(10) NOT NULL,
  `id_kpenyakit` varchar(10) NOT NULL,
  `kpenyakit` varchar(100) NOT NULL,
  `persentase` float NOT NULL,
  `id_ksolusi` varchar(10) NOT NULL,
  `kdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `id_kuser`, `id_kpenyakit`, `kpenyakit`, `persentase`, `id_ksolusi`, `kdate`) VALUES
('K01', 'U04', 'P01', 'anxiety', 90.06, 'S01', '07/12/2022, 06:17:53 am'),
('K02', 'U05', 'P02', 'depression', 77.57, 'S02', '07/12/2022, 07:36:36 pm'),
('K03', 'U06', 'P01', 'anxiety', 99.16, 'S01', '07/12/2022, 08:09:13 pm'),
('K04', 'U07', 'P01', 'anxiety', 98.35, 'S01', '07/12/2022, 08:22:54 pm'),
('K05', 'U08', 'P01', 'anxiety', 96.63, 'S01', '07/12/2022, 08:33:42 pm'),
('K06', 'U09', 'P01', 'anxiety', 99.39, 'S01', '07/12/2022, 08:43:51 pm'),
('K07', 'U10', 'P01', 'anxiety', 86.29, 'S01', '07/12/2022, 09:14:34 pm'),
('K08', 'U11', 'P02', 'depression', 97.91, 'S02', '07/12/2022, 09:21:42 pm'),
('K09', 'U12', 'P01', 'anxiety', 93.22, 'S01', '07/12/2022, 09:49:16 pm'),
('K10', 'U13', 'P02', 'depression', 99.72, 'S02', '07/12/2022, 09:58:46 pm'),
('K11', 'U14', 'P02', 'depression', 89.72, 'S02', '07/12/2022, 10:15:34 pm'),
('K12', 'U15', 'P02', 'depression', 99.67, 'S02', '07/12/2022, 10:26:39 pm'),
('K13', 'U16', 'P02', 'depression', 98.47, 'S02', '07/12/2022, 11:41:22 pm'),
('K14', 'U17', 'P02', 'depression', 97.19, 'S02', '07/12/2022, 11:53:51 pm'),
('K15', 'U18', 'P01', 'anxiety', 98.71, 'S01', '08/12/2022, 12:02:40 am'),
('K16', 'U19', 'P02', 'depression', 88.25, 'S02', '08/12/2022, 12:22:52 am'),
('K17', 'U20', 'P01', 'anxiety', 99.08, 'S01', '08/12/2022, 12:34:21 am'),
('K18', 'U21', 'P01', 'anxiety', 97.53, 'S01', '08/12/2022, 02:08:19 pm'),
('K19', 'U22', 'P01', 'anxiety', 85.64, 'S01', '08/12/2022, 02:18:02 pm'),
('K20', 'U23', 'P02', 'depression', 89.33, 'S02', '08/12/2022, 02:40:58 pm'),
('K21', 'U24', 'P02', 'depression', 94.67, 'S02', '08/12/2022, 03:00:21 pm'),
('K22', 'U25', 'P02', 'depression', 96.87, 'S02', '08/12/2022, 03:57:54 pm'),
('K23', 'U26', 'P01', 'anxiety', 98.01, 'S01', '08/12/2022, 04:14:00 pm'),
('K24', 'U27', 'P01', 'anxiety', 95.9, 'S01', '08/12/2022, 04:37:45 pm'),
('K25', 'U28', 'P02', 'depression', 94.31, 'S02', '08/12/2022, 04:52:20 pm'),
('K26', 'U29', 'P01', 'anxiety', 92.3, 'S01', '08/12/2022, 05:43:41 pm'),
('K27', 'U30', 'P02', 'depression', 99.81, 'S02', '08/12/2022, 06:53:29 pm'),
('K28', 'U31', 'P01', 'anxiety', 99.35, 'S01', '08/12/2022, 07:28:41 pm'),
('K29', 'U32', 'P01', 'anxiety', 92.74, 'S01', '08/12/2022, 07:38:49 pm'),
('K30', 'U33', 'P01', 'anxiety', 94.51, 'S01', '08/12/2022, 08:02:13 pm'),
('K31', 'U34', 'P02', 'depression', 75.82, 'S02', '15/12/2022, 07:30:43 pm'),
('K32', 'U35', 'P01', 'anxiety', 98.09, 'S01', '15/12/2022, 07:53:11 pm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

CREATE TABLE `solusi` (
  `id_solusi` varchar(10) NOT NULL,
  `id_spenyakit` varchar(10) NOT NULL,
  `n_spenyakit` varchar(100) NOT NULL,
  `des_solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id_solusi`, `id_spenyakit`, `n_spenyakit`, `des_solusi`) VALUES
('S01', 'P01', 'anxiety', '(1). Meningkatkan konsumsi makanan berserat, (2). Mengonsumsi suplemen vitamin B dan magnesium, (3). Membatasi konsumsi kafein dan alkohol, (4). Rutin berolahraga contohnya olahraga aerobik, (5). Relaksasi (yoga, meditasi, atau terapi pijat), (6). Perbanyak istirahat atau tidur yang cukup, (7). Mengonsumsi karbohidrat kompleks, (8). Minuman berkalsium, seperti yoghurt dan susu, (9). Lakukan teknik relaksasi ringan (teknik relaksasi pernapasan atau relaksasi otot)'),
('S02', 'P02', 'depression', '(1). Mengonsumsi suplemen vitamin B dan magnesium seperti ikan, ayam, dan sereal, (2). Komunikasikan dengan orang terdekat, (3). Lakukan teknik relaksasi ringan (teknik relaksasi pernapasan atau relaksasi otot), (4). Relaksasi (yoga atau meditasi), (5). Konsultasikan ke psikolog untuk diberikan psikoterapi\r\n'),
('S03', 'P03', 'craving', '(1). Mengurangi konsumsi gula, coklat, garam, dan lemak jenuh, (2). Mengonsumsi makanan yang mengandung asam lemak esensial (omega 6) dan magnesium, (3). Mengonsumsi suplemen vitamin B, (4). Berolahraga dan memperbanyak aktivitas, (5). Menjaga pola makan dan mengatur jadwal makan.'),
('S04', 'P04', 'hyperhydration', '(1). Mengurangi asupan garam dan gula dalam makanan, (2). Meningkatkan konsumsi makanan tinggi protein dan kalsium, (3). Mengonsumsi obat diuretik.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `taturancf`
--

CREATE TABLE `taturancf` (
  `id_cf` varchar(10) NOT NULL,
  `id_agejala` varchar(10) NOT NULL,
  `agejala` varchar(30) NOT NULL,
  `id_apenyakit` varchar(10) NOT NULL,
  `apenyakit` varchar(30) NOT NULL,
  `frasa` varchar(30) NOT NULL,
  `bobotcf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `taturancf`
--

INSERT INTO `taturancf` (`id_cf`, `id_agejala`, `agejala`, `id_apenyakit`, `apenyakit`, `frasa`, `bobotcf`) VALUES
('A01', 'G01', 'rasa cemas berlebihan', 'P01', 'anxiety', 'jarang', 0.4),
('A02', 'G02', 'perasaan lebih sensitif', 'P01', 'anxiety', 'jarang', 0.4),
('A03', 'G03', 'mudah marah', 'P01', 'anxiety', 'jarang', 0.4),
('A04', 'G04', 'mudah tersinggung', 'P01', 'anxiety', 'jarang', 0.4),
('A05', 'G05', 'emosi tidak stabil', 'P01', 'anxiety', 'kadang', 0.6),
('A06', 'G06', 'syaraf tegang', 'P01', 'anxiety', 'tidak tahu', 0.2),
('A07', 'G07', 'depresi ringan hingga sedang', 'P01', 'anxiety', 'jarang', 0.4),
('A08', 'G08', 'stress', 'P01', 'anxiety', 'jarang', 0.4),
('A09', 'G10', 'cepat lelah', 'P01', 'anxiety', 'jarang', 0.4),
('A10', 'G11', 'jantung berdebar', 'P01', 'anxiety', 'sering', 0.8),
('A11', 'G16', 'gangguan konsentrasi dan kemam', 'P01', 'anxiety', 'jarang', 0.4),
('A12', 'G27', 'gangguan saluran pencernaan (m', 'P01', 'anxiety', 'sering', 0.8),
('A13', 'G02', 'perasaan lebih sensitif', 'P02', 'depression', 'jarang', 0.4),
('A14', 'G07', 'depresi ringan hingga sedang', 'P02', 'depression', 'jarang', 0.4),
('A15', 'G08', 'stress', 'P02', 'depression', 'jarang', 0.4),
('A16', 'G10', 'cepat lelah', 'P02', 'depression', 'jarang', 0.4),
('A17', 'G13', 'lemah atau tidak bersemangat a', 'P02', 'depression', 'kadang', 0.6),
('A18', 'G14', 'perasaan sedih', 'P02', 'depression', 'jarang', 0.4),
('A19', 'G15', 'gangguan tidur', 'P02', 'depression', 'jarang', 0.4),
('A20', 'G16', 'gangguan konsentrasi dan kemam', 'P02', 'depression', 'jarang', 0.4),
('A21', 'G17', 'bingung', 'P02', 'depression', 'jarang', 0.4),
('A22', 'G18', 'sulit mengucapkan kata-kata', 'P02', 'depression', 'jarang', 0.4),
('A23', 'G19', 'rasa ingin bunuh diri', 'P02', 'depression', 'kadang', 0.6),
('A24', 'G20', 'kepercayaan diri berkurang', 'P02', 'depression', 'jarang', 0.4),
('A25', 'G21', 'nafsu makan menurun', 'P02', 'depression', 'jarang', 0.4),
('A26', 'G08', 'stress', 'P03', 'craving', 'jarang', 0.4),
('A27', 'G09', 'sering merasa lapar atau ngida', 'P03', 'craving', 'jarang', 0.4),
('A28', 'G10', 'cepat lelah', 'P03', 'craving', 'jarang', 0.4),
('A29', 'G11', 'jantung berdebar', 'P03', 'craving', 'jarang', 0.4),
('A30', 'G12', 'pusing', 'P03', 'craving', 'jarang', 0.4),
('A31', 'G26', 'peningkatan berat badan', 'P03', 'craving', 'jarang', 0.4),
('A32', 'G17', 'bingung', 'P04', 'hyperhydration', 'sering', 0.8),
('A33', 'G22', 'pembengkakan wajah', 'P04', 'hyperhydration', 'tidak tahu', 0.2),
('A34', 'G23', 'pembengkakan tangan dan kaki', 'P04', 'hyperhydration', 'tidak tahu', 0.2),
('A35', 'G24', 'perut kembung', 'P04', 'hyperhydration', 'jarang', 0.4),
('A36', 'G25', 'nyeri payudara', 'P04', 'hyperhydration', 'tidak tahu', 0.2),
('A37', 'G26', 'peningkatan berat badan', 'P04', 'hyperhydration', 'tidak tahu', 0.2),
('A38', 'G27', 'gangguan saluran pencernaan (m', 'P04', 'hyperhydration', 'sering', 0.8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgejala`
--

CREATE TABLE `tgejala` (
  `id_gejala` varchar(10) NOT NULL,
  `n_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgejala`
--

INSERT INTO `tgejala` (`id_gejala`, `n_gejala`) VALUES
('G01', 'rasa cemas berlebihan'),
('G02', 'perasaan lebih sensitif'),
('G03', 'mudah marah'),
('G04', 'mudah tersinggung'),
('G05', 'emosi tidak stabil'),
('G06', 'syaraf tegang'),
('G07', 'depresi ringan hingga sedang'),
('G08', 'stress'),
('G09', 'sering merasa lapar atau ngidam'),
('G10', 'cepat lelah'),
('G11', 'jantung berdebar'),
('G12', 'pusing'),
('G13', 'lemah atau tidak bersemangat atau kehilangan minat'),
('G14', 'perasaan sedih'),
('G15', 'gangguan tidur'),
('G16', 'gangguan konsentrasi dan kemampuan mengingat'),
('G17', 'bingung'),
('G18', 'sulit mengucapkan kata-kata'),
('G19', 'rasa ingin bunuh diri'),
('G20', 'kepercayaan diri berkurang'),
('G21', 'nafsu makan menurun'),
('G22', 'pembengkakan wajah'),
('G23', 'pembengkakan tangan dan kaki'),
('G24', 'perut kembung'),
('G25', 'nyeri payudara'),
('G26', 'peningkatan berat badan'),
('G27', 'gangguan saluran pencernaan (mual atau diare)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpenyakit`
--

CREATE TABLE `tpenyakit` (
  `id_penyakit` varchar(10) NOT NULL,
  `n_penyakit` varchar(100) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tpenyakit`
--

INSERT INTO `tpenyakit` (`id_penyakit`, `n_penyakit`, `solusi`) VALUES
('P01', 'anxiety', '(1). meningkatkan konsumsi makanan berserat, (2). mengonsumsi suplemen vitamin b dan magnesium, (3). membatasi konsumsi kafein dan alkohol, (4). rutin berolahraga contohnya olahraga aerobik, (5). relaksasi (yoga, meditasi, atau terapi pijat), (6). perbanyak istirahat atau tidur yang cukup, (7). mengonsumsi karbohidrat kompleks, (8). mengonsumsi minuman berkalsium, seperti yoghurt dan susu, (9). lakukan teknik relaksasi ringan (teknik relaksasi pernapasan atau relaksasi otot).'),
('P02', 'depression', '(1). mengonsumsi suplemen vitamin b dan magnesium seperti ikan, ayam, dan sereal, (2). komunikasikan dengan orang terdekat, (3). lakukan teknik relaksasi ringan (teknik relaksasi pernapasan atau relaksasi otot), (4). lakukan relaksasi seperti yoga atau meditasi, (5). konsultasikan ke psikolog untuk diberikan psikoterapi.'),
('P03', 'craving', '(1). mengurangi konsumsi gula, coklat, garam, dan lemak jenuh, (2). mengonsumsi makanan yang mengandung asam lemak esensial (omega 6) dan magnesium, (3). mengonsumsi suplemen vitamin b, (4). berolahraga dan memperbanyak aktivitas, (5). menjaga pola makan dan mengatur jadwal makan.'),
('P04', 'hyperhydration', '(1). mengurangi asupan garam dan gula dalam makanan, (2). meningkatkan konsumsi makanan tinggi protein dan kalsium, (3). mengonsumsi obat diuretik.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tuser`
--

CREATE TABLE `tuser` (
  `id_tuser` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tuser`
--

INSERT INTO `tuser` (`id_tuser`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
('U02', 'admin', '$2y$10$Kkabht3R0udJy32.8HNGbe3vMOJuYSak6maBqWtp89TtSLpEvVPJO', 'admin', 'admin', 'admin', 'admin'),
('U03', 'tiara', '$2y$10$R7puGafEFSuoMpmb/bp5COyUN.A7tgSdh0IfLBugr3xe0/EBJ6OeC', 'tiara', 'naikolan', '0812', 'client'),
('U04', 'fiona', '$2y$10$hbKPJZISEUBMR.FFGLdI9.5ZPFw//X7RfXa56K3MIjINKyZMhZgFy', 'Fiona Pa padja', 'Naikolan', '08123212', 'client'),
('U05', 'anggimanafe', '$2y$10$8RKU3gUbYp78BhJaJiUEPubliX2EO3hN1wa/MVvdm751FfbBvcNdm', 'Anggi Yosilva Manafe', 'Batuplat', '081256382712', 'client'),
('U06', 'fransiska', '$2y$10$g6lWGbBPtyHa4BeO1U22Guz8BT5Ivr5G0FnsqS3ARse7iuv0tFADu', 'Fransiska Penina Neka', 'Kupang', '08125638291', 'client'),
('U07', 'putripatresia', '$2y$10$HpKob9A7n/YOmPt4axgMGuRpw6tXgCIwU2/19FeXFL6jgZJzsYN5q', 'Putri Patresia Moni Isu', 'Kupang', '0852381920391', 'client'),
('U08', 'elisabeth', '$2y$10$zHXvjVqPZ6C8KnIIveWUm.pBDDyrD4agmJ5BLKnvSdGdKO91Vqe.2', 'Elisabeth Suryati', 'Kupang', '0812387126', 'client'),
('U09', 'cecilia', '$2y$10$bpG1C0l8KvWBVzbWwXg/o.7FCYmF7nEtr7AHwuALcgGp83/n/OueG', 'Cecilia Angelica Tiarawardhani', 'Kupang', '0823152637', 'client'),
('U10', 'restysahertian', '$2y$10$nNfrgz92ljZEGKKxA7ocseTzrsBDF9h5veyRDjTpRhXTYefTpdDNm', 'Resty Sahertian', 'Kupang', '0825361827392', 'client'),
('U11', 'dianeby', '$2y$10$qCVMK7HOIq4HyZGfeYQ5X.7yr4KyQkuyd9Yw3EsNmD3VrrDBweAfy', 'Dian Eby Kawa', 'Kupang\r\n', '082718298198', 'client'),
('U12', 'penina', '$2y$10$faRaVeAOqyE/8Huwo9RFcOUZNUCigbVlOsSUpzR6OofySNs.wh2VW', 'Penina A. Lakat', 'Kupang', '08523172783', 'client'),
('U13', 'joanie', '$2y$10$6HbI5sKY47Z0SbWGF04nNeU5kLUiUnCTQL4Wjy2CyZCZPNEktwx5a', 'Joanie Sophia Mellisya Lany', 'Kupang', '085627381', 'client'),
('U14', 'anastasia', '$2y$10$CbGhgWgW9rTGaFNuvNqXb.syIU9o.7pwSm.r2kto8Brg8uuj5wV.C', 'Anastasia Yuniarsih Kartika Bhia', 'Kupang', '085235162839', 'client'),
('U15', 'mariayuliana', '$2y$10$bkXyyVKieHWk8OqAWCU7ouFcWzTrFZg8LVIG2aae4P5pf6zs/dZF6', 'Maria Yuliana Wonlele', 'Kupang', '082312561829', 'client'),
('U16', 'debora', '$2y$10$VLq6/F8uAzMf8Gkslz7PYO0QAFmOCoWTYlfhdBKJXCM4TFAlwfb46', 'Debora Destriana Luwu', 'Kupang', '081263819207', 'client'),
('U17', 'melinda', '$2y$10$/X2T7xpgwR/jwqjLXe5E/.dmnUFoZR9AoTXz/XqAIIqsq/hTeSN9y', 'Melinda Magdalena Padjodjang ', 'Kupang', '085261283729', 'client'),
('U18', 'magdalena', '$2y$10$JMcUxO0NAwjkjcO5noi/EuT94Ws3HIGgJtYbXLgzRNRbqblK8Pj8K', 'Magdalena Carmila Motu', 'Kupang', '0812516271', 'client'),
('U19', 'elisabeth l', '$2y$10$yvM2H.yKGAwIoUUQGZNX9OHysb1aWLUchUffbNfb68GG.hm7KUVcq', 'Elisabeth L', 'Kupang', '0852718293917', 'client'),
('U20', 'jeanedoven', '$2y$10$WGmI7dGc9kfYCACWYLUeTeRdKpk.rCpRMWpDIZUGOHc1Bo/730Hlu', 'Jeane Doven', 'Kupang', '081252618297', 'client'),
('U21', 'sitimaharani', '$2y$10$8xJWFqCH3cpfDXCmnhbXWuQqc1Y1bCOrltWyslKkiHAq5Srjc5092', 'Siti Maharani Ayuningsi Anshar', 'Kupang', '08512315271', 'client'),
('U22', 'marianovalinda', '$2y$10$skI73QSqkKKsw8SIt9ZPl.y9lERV6fUwAyEX6aFrt1agWIkS.dfdC', 'Maria Novalinda Elisa Peri', 'Kupang', '081256738281', 'client'),
('U23', 'nurilawati', '$2y$10$xHWmXirpw.V3cX7N00/hxuqQ8OJR.bGMB1PX0PIiCjjUTMlnQsazi', 'Nur Ilawati', 'Kupang', '08527381827', 'client'),
('U24', 'chendrika', '$2y$10$X6KYv7aAeI6flAA7b.uLd.d8QnwNwrLUC/yzusCXzH930gDKbcY.q', 'Chendrika Saputri', 'Kupang', '085127391728', 'client'),
('U25', 'putrigardeni', '$2y$10$SkC3uI56wpeGDcWBvl4B6ekrrs/DXbUWZ9hyMX2986Gn7EATF8v9i', 'Putri Gardeni Juwitasari Mooy', 'Kupang', '08527182931', 'client'),
('U26', 'hannyballo', '$2y$10$5kk1lU2UGoWGJ7SxCN1rau1CzfSnVxkHhlq1NEt4Q5ok2IJmJgxYK', 'Hanny Fantika Sari Ballo', 'Kupang', '085235271627', 'client'),
('U27', 'febrianti', '$2y$10$qN0DWBE6QJz9biZKzb/ewu7.uxTqNnJ8qkjxV8GXTE.yuJB03UHEO', 'Febrianti Belandina Sopaba', 'Kupang', '08168983258', 'client'),
('U28', 'frumensia', '$2y$10$lGBmDpZ7CY8U3le1IFlBTOj7aEBKc.ziMTH.GM94LCi/fWfJiDgaS', 'Frumensia Nendong', 'Kupang', '08521235321', 'client'),
('U29', 'aldatlaiskodat', '$2y$10$ftO8CTVoj.pLa.Epw8DOoOhkvAtdKyQBG57AZsvZA8mfTwWFnNMHO', 'Alda T. Laiskodat', 'Kupang', '08125676903', 'client'),
('U30', 'dindambatu', '$2y$10$16Yqrt6NJe/vPBG7ODchY.fDMBrLOOQIQ1F9ZUMgKdBKoSpcw.WHO', 'Dinda Mbatu', 'Kupang', '085125739162', 'client'),
('U31', 'danyella', '$2y$10$8qR6dV9nV2TTkwd9bkjOxeH1tfi8TDcmNKWcsWz9ow83kboL3WHOO', 'Danyella helmina alexis ramehuki', 'Kupang', '085271873821', 'client'),
('U32', 'donnaapryanti', '$2y$10$cyWShnWlu6wFSxdjBmgHbOGLG3Fw/6FYE.NHqHMWzSMV4RG1W.59a', 'Donna Apryanti Dopongtonung', 'Kupang', '08512837291', 'client'),
('U33', 'mariahipir', '$2y$10$SV0cfai0DLD3Ote6CFv4bufaHOf.hRXvmdk.0mWmeMm4GW/unk80O', 'Maria Fransiska I. L. Hipir', 'Kupang', '08126312789', 'client'),
('U34', 'ulfahamzah', '$2y$10$mCOT7K3FCBBCCeyMGeMQGen./pp.I4EKSLSEm5/s3KsZpsta3SMd6', 'Ulfa Hamzah', 'Kupang', '081252891288', 'client'),
('U35', 'dianpolly', '$2y$10$FPe89fLcySN9RNdMdB7EPueP6WdvNepMlyKEON4iSGjRPKjRRxHlO', 'Dian Polly', 'Kupang', '081263817293', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id_d`),
  ADD KEY `diagnosis_ibfk_1` (`idduser`),
  ADD KEY `iddgej` (`iddgej`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_kpenyakit` (`id_kpenyakit`),
  ADD KEY `id_ksolusi` (`id_ksolusi`),
  ADD KEY `id_kuser` (`id_kuser`);

--
-- Indexes for table `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id_solusi`),
  ADD KEY `id_spenyakit` (`id_spenyakit`);

--
-- Indexes for table `taturancf`
--
ALTER TABLE `taturancf`
  ADD PRIMARY KEY (`id_cf`),
  ADD KEY `id_agejala` (`id_agejala`),
  ADD KEY `id_apenyakit` (`id_apenyakit`);

--
-- Indexes for table `tgejala`
--
ALTER TABLE `tgejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tpenyakit`
--
ALTER TABLE `tpenyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id_tuser`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`idduser`) REFERENCES `tuser` (`id_tuser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`iddgej`) REFERENCES `tgejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `konsultasi_ibfk_1` FOREIGN KEY (`id_kpenyakit`) REFERENCES `tpenyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konsultasi_ibfk_2` FOREIGN KEY (`id_ksolusi`) REFERENCES `solusi` (`id_solusi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konsultasi_ibfk_3` FOREIGN KEY (`id_kuser`) REFERENCES `tuser` (`id_tuser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD CONSTRAINT `solusi_ibfk_1` FOREIGN KEY (`id_spenyakit`) REFERENCES `tpenyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `taturancf`
--
ALTER TABLE `taturancf`
  ADD CONSTRAINT `taturancf_ibfk_1` FOREIGN KEY (`id_agejala`) REFERENCES `tgejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taturancf_ibfk_2` FOREIGN KEY (`id_apenyakit`) REFERENCES `tpenyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
