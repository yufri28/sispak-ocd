-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2023 pada 04.31
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgejala`
--

CREATE TABLE `tgejala` (
  `id_gejala` varchar(10) NOT NULL,
  `n_gejala` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgejala`
--

INSERT INTO `tgejala` (`id_gejala`, `n_gejala`, `deskripsi`) VALUES
('G01', 'muncul dorongan untuk melakukan suatu kegiatan berulang-ulang', 'Muncul dorongan untuk melakukan suatu kegiatan berulang-ulang menggambarkan situasi di mana seseorang merasakan hasrat atau keinginan kuat untuk melakukan suatu tindakan atau kegiatan secara berulang kali. '),
('G02', 'terganggunya rutinitas normal', 'Mengacu pada situasi di mana pola kehidupan atau aktivitas sehari-hari seseorang mengalami gangguan atau perubahan yang tidak biasa.'),
('G03', 'memburuknya hubungan sosial', 'Memburuknya hubungan sosial mengacu pada kondisi di mana hubungan antara individu atau kelompok menjadi tidak sehat, tidak harmonis, atau konflik terjadi. '),
('G04', 'munculnya dorongan, kekhawatiran, dan bayangan-bayangan yang terus mengganggu yang menyebabkan kegel', 'Munculnya dorongan, kekhawatiran, dan bayangan-bayangan yang terus mengganggu yang menyebabkan kegelisahan	Ini mengacu pada timbulnya impuls atau keinginan yang kuat untuk melakukan sesuatu');

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
('P01', 'forbbiden thought', '1. berpikir kembali\r\n2. cari tahu kebenaran sebelum bertindak\r\n3. cari bantuan penjelasan pada psikolog\r\n'),
('P02', 'cleaning', '1. berpikir kembali / panggil memori ingatan bahwa haltersebut sudah dilakukan\r\n2. konsultasikan pada profesional seperti psikolog'),
('P03', 'symetry', '1. berpikir ulang tentang hal yang sudah di lakukan\r\n2. terapi dengan bantuan psikolog\r\n'),
('P04', 'harm', '1. cari coping stress yang efektif seperti olahraga dan self care\r\n2. cari bantuan konselingdan terapi psikolog\r\n');

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
('U35', 'dianpolly', '$2y$10$FPe89fLcySN9RNdMdB7EPueP6WdvNepMlyKEON4iSGjRPKjRRxHlO', 'Dian Polly', 'Kupang', '081263817293', 'client'),
('U36', 'aldho1', '$2y$10$CEULL81zLOuQVNmmcWw4ceWi/EC7vLuz.3XrTIwc39PC3SekVebBq', 'aldho', 'aldho', '3432222222', 'client'),
('U37', 'yufri', '$2y$10$Pc7ypqw42Cynsbzo0yiXneBlgMZ5XZHE0OMwRmimzADvqObpfr04m', 'yupiiii', 'dsa', '3.1221231231321', 'client');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id_d`),
  ADD KEY `diagnosis_ibfk_1` (`idduser`),
  ADD KEY `iddgej` (`iddgej`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_kpenyakit` (`id_kpenyakit`),
  ADD KEY `id_ksolusi` (`id_ksolusi`),
  ADD KEY `id_kuser` (`id_kuser`);

--
-- Indeks untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id_solusi`),
  ADD KEY `id_spenyakit` (`id_spenyakit`);

--
-- Indeks untuk tabel `taturancf`
--
ALTER TABLE `taturancf`
  ADD PRIMARY KEY (`id_cf`),
  ADD KEY `id_agejala` (`id_agejala`),
  ADD KEY `id_apenyakit` (`id_apenyakit`);

--
-- Indeks untuk tabel `tgejala`
--
ALTER TABLE `tgejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `tpenyakit`
--
ALTER TABLE `tpenyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `tuser`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
