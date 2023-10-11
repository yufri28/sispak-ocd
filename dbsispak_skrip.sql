-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2023 pada 06.16
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

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

--
-- Dumping data untuk tabel `taturancf`
--

INSERT INTO `taturancf` (`id_cf`, `id_agejala`, `agejala`, `id_apenyakit`, `apenyakit`, `frasa`, `bobotcf`) VALUES
('A01', 'G01', 'muncul dorongan untuk melakuka', 'P01', 'cleaning', 'selalu', 1),
('A02', 'G02', 'terganggunya rutinitas normal', 'P01', 'cleaning', 'selalu', 1),
('A03', 'G04', 'munculnya dorongan, kekhawatir', 'P01', 'cleaning', 'kadang', 0.6),
('A04', 'G05', 'menghabiskan waktu lebih dari ', 'P01', 'cleaning', 'jarang', 0.4),
('A05', 'G06', 'perbuatan berulang yang dilaku', 'P01', 'cleaning', 'selalu', 1),
('A06', 'G07', 'berusaha menekan atau menghila', 'P01', 'cleaning', 'sering', 0.8),
('A07', 'G08', 'tidak sedang berada di bawah p', 'P01', 'cleaning', 'tidak tahu', 0.2),
('A08', 'G09', 'kecemasan yang muncul berasal ', 'P01', 'cleaning', 'selalu', 1),
('A09', 'G12', 'berpikir bahwa tangannya tetap', 'P01', 'cleaning', 'selalu', 1),
('A10', 'G13', 'mengecek suatu pekerjaan secar', 'P01', 'cleaning', 'selalu', 1),
('A11', 'G14', 'ketertarikan secara emosional ', 'P01', 'cleaning', 'sering', 0.8),
('A12', 'G15', 'suka mengoleksi barang bekas a', 'P01', 'cleaning', 'jarang', 0.4),
('A13', 'G17', 'meyakini bahwa dirinya terkont', 'P01', 'cleaning', 'kadang', 0.6),
('A14', 'G20', 'berusaha menghindari tempat - ', 'P01', 'cleaning', 'kadang', 0.6),
('A15', 'G22', 'berhitung dengan menggunakan p', 'P01', 'cleaning', 'kadang', 0.6),
('A16', 'G27', 'selalu berpikir dan memastikan', 'P01', 'cleaning', 'sering', 0.8),
('A17', 'G30', 'ada pikiran yang berulang bahw', 'P01', 'cleaning', 'sering', 0.8),
('A18', 'G31', 'dorongan untuk mencuci secara ', 'P01', 'cleaning', 'selalu', 1),
('A19', 'G01', 'muncul dorongan untuk melakuka', 'P02', 'symetry', 'kadang', 0.6),
('A20', 'G02', 'terganggunya rutinitas normal', 'P02', 'symetry', 'kadang', 0.6),
('A21', 'G04', 'munculnya dorongan, kekhawatir', 'P02', 'symetry', 'sering', 0.8),
('A22', 'G07', 'berusaha menekan atau menghila', 'P02', 'symetry', 'sering', 0.8),
('A23', 'G08', 'tidak sedang berada di bawah p', 'P02', 'symetry', 'tidak tahu', 0.2),
('A24', 'G09', 'kecemasan yang muncul berasal ', 'P02', 'symetry', 'selalu', 1),
('A25', 'G18', 'muncul kebutuhan untuk memasti', 'P02', 'symetry', 'selalu', 1),
('A26', 'G27', 'selalu berpikir dan memastikan', 'P02', 'symetry', 'sering', 0.8),
('A27', 'G28', 'kebutuhan untuk melakukan sesu', 'P02', 'symetry', 'sering', 0.8),
('A28', 'G29', 'ritual / kebiasaan menghitung ', 'P02', 'symetry', 'sering', 0.8),
('A29', 'G01', 'muncul dorongan untuk melakuka', 'P03', 'forbbiden thought', 'jarang', 0.4),
('A30', 'G02', 'terganggunya rutinitas normal', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A31', 'G03', 'memburuknya hubungan sosial', 'P03', 'forbbiden thought', 'sering', 0.8),
('A32', 'G04', 'munculnya dorongan, kekhawatir', 'P03', 'forbbiden thought', 'sering', 0.8),
('A33', 'G05', 'menghabiskan waktu lebih dari ', 'P03', 'forbbiden thought', 'jarang', 0.4),
('A34', 'G07', 'berusaha menekan atau menghila', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A35', 'G08', 'tidak sedang berada di bawah p', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A36', 'G09', 'kecemasan yang muncul berasal ', 'P03', 'forbbiden thought', 'sering', 0.8),
('A37', 'G10', 'merasa ragu telah mematikan ko', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A38', 'G11', 'ragu apakah pintu rumah diting', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A39', 'G12', 'berpikir bahwa tangannya tetap', 'P03', 'forbbiden thought', 'jarang', 0.4),
('A40', 'G14', 'ketertarikan secara emosional ', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A41', 'G15', 'suka mengoleksi barang bekas a', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A42', 'G16', 'melakukan ritual mental sepert', 'P03', 'forbbiden thought', 'jarang', 0.4),
('A43', 'G17', 'meyakini bahwa dirinya terkont', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A44', 'G20', 'berusaha menghindari tempat - ', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A45', 'G21', 'perasaan tertekan karena timbu', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A46', 'G24', 'selalu merasa bahwa agama (key', 'P03', 'forbbiden thought', 'sering', 0.8),
('A47', 'G25', 'merasa cemas tentang keadaan d', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A48', 'G26', 'memiliki ritual atau cara-cara', 'P03', 'forbbiden thought', 'sering', 0.8),
('A49', 'G29', 'ritual / kebiasaan menghitung ', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A50', 'G32', 'menyembunyikan pisau di dapur ', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A51', 'G33', 'menghindari menonton film keke', 'P03', 'forbbiden thought', 'tidak tahu', 0.2),
('A52', 'G34', 'pengakuan dan doa yang berlebi', 'P03', 'forbbiden thought', 'kadang', 0.6),
('A53', 'G01', 'muncul dorongan untuk melakuka', 'P04', 'harm', 'kadang', 0.6),
('A54', 'G02', 'terganggunya rutinitas normal', 'P04', 'harm', 'kadang', 0.6),
('A55', 'G03', 'memburuknya hubungan sosial', 'P04', 'harm', 'kadang', 0.6),
('A56', 'G04', 'munculnya dorongan, kekhawatir', 'P04', 'harm', 'sering', 0.8),
('A57', 'G07', 'berusaha menekan atau menghila', 'P04', 'harm', 'jarang', 0.4),
('A58', 'G08', 'tidak sedang berada di bawah p', 'P04', 'harm', 'tidak tahu', 0.2),
('A59', 'G09', 'kecemasan yang muncul berasal ', 'P04', 'harm', 'selalu', 1),
('A60', 'G19', 'muncul dorongan agresif yang m', 'P04', 'harm', 'kadang', 0.6),
('A61', 'G23', 'sering khawatir akan menyakiti', 'P04', 'harm', 'kadang', 0.6),
('A62', 'G30', 'ada pikiran yang berulang bahw', 'P04', 'harm', 'kadang', 0.6),
('A63', 'G32', 'menyembunyikan pisau di dapur ', 'P04', 'harm', 'kadang', 0.6);

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
('G04', 'munculnya dorongan, kekhawatiran, dan bayangan-bayangan yang terus mengganggu yang menyebabkan kegel', 'Munculnya dorongan, kekhawatiran, dan bayangan-bayangan yang terus mengganggu yang menyebabkan kegelisahan	Ini mengacu pada timbulnya impuls atau keinginan yang kuat untuk melakukan sesuatu'),
('G05', 'menghabiskan waktu lebih dari satu jam untuk melakukan hal yang berulang', 'Melakukan aktifitas yang sama dalam jangka waktu yang lama'),
('G06', 'perbuatan berulang yang dilakukan bukan untuk memperoleh kepuasan. tetapi hanya untuk mengurangi pen', 'Melakukan perbuatan untuk menghilangkan perasaan cemas dan memeperoleh kepuasan'),
('G07', 'berusaha menekan atau menghilangkan gangguan kecemasan dengan melakukan kegiatan berulang', 'menggambarkan perilaku yang umum ditemui pada individu yang mengalami kecemasan, individu tersebut sedang mencoba untuk mengatasi atau mengurangi kecemasan yang mereka rasakan'),
('G08', 'tidak sedang berada di bawah pengaruh obat-obatan ketika sedang cemas', 'menggambarkan bahwa seseorang saat itu tidak sedang menggunakan obat-obatan atau zat-zat tertentu yang dapat memengaruhi pikiran atau emosinya, sementara ia merasa cemas'),
('G09', 'kecemasan yang muncul berasal dari dalam diri, bukan pengaruh dari luar', 'menggambarkan gagasan bahwa kecemasan seringkali berasal dari faktor internal atau pikiran dan perasaan individu, bukan hanya dari pengaruh eksternal atau situasi di sekitarnya.   '),
('G10', 'merasa ragu telah mematikan kompor', 'menggambarkan perasaan ketidakpastian seseorang setelah mereka berpikir bahwa mereka mungkin telah mematikan kompor atau alat masak yang menggunakan api. Ketidakpastian semacam ini sering kali muncul dalam kehidupan sehari-hari dan berkaitan dengan keselamatan. Orang sering kali khawatir meninggalkan peralatan yang berpotensi berbahaya dalam keadaan menyala, seperti kompor, oven, atau setrika.'),
('G11', 'ragu apakah pintu rumah ditinggalkan dalam keadaan terbuka', 'menggambarkan keadaan ketidakpastian atau keraguan seseorang terkait dengan apakah pintu rumah telah ditinggalkan dalam keadaan terbuka atau tidak. Frasa ini mencerminkan situasi di mana seseorang merasa tidak yakin atau ragu apakah pintu rumah telah dikunci atau ditutup dengan benar sebelum meninggalkan rumah atau sebelum tidur.'),
('G12', 'berpikir bahwa tangannya tetap kotor meski telah dicuci berkali-kali', 'menggambarkan suatu keadaan di mana seseorang merasa cemas atau khawatir tentang kebersihan tangannya, meskipun sebenarnya sudah melakukan upaya untuk membersihkannya dengan mencuci berkali-kali'),
('G13', 'mengecek suatu pekerjaan secara berulang', 'rujuk pada tindakan atau proses memeriksa atau mengevaluasi suatu pekerjaan atau tugas secara berulang-ulang atau berkali-kali dikarenakan rasa cemas pekerjaan itu tidak dijalankan dengan baik.\r\n\r\n'),
('G14', 'ketertarikan secara emosional yang berlebihan untuk merawat barang atau benda', 'kondisi di mana seseorang memiliki perasaan yang sangat kuat terhadap barang atau benda tertentu hingga mencapai tingkat perhatian dan perasaan yang berlebihan'),
('G15', 'suka mengoleksi barang bekas atau barang yang tidak berharga, dengan asumsi bahwa barang tersebut ak', 'Perilaku seseorang yang memiliki kecenderungan untuk menyimpan atau mengumpulkan barang-barang yang umumnya dianggap tidak berguna atau sudah tidak digunakan oleh orang lain. Perilaku ini didasarkan pada keyakinan bahwa barang-barang tersebut dapat memiliki nilai atau kegunaan di masa depan, meskipun pada awalnya barang-barang tersebut mungkin terlihat tidak berharga.'),
('G16', 'melakukan ritual mental seperti mengucapkan doa, kata atau kalimat tertentu, secara diam-diam dan be', 'mengacu pada tindakan atau kebiasaan seseorang untuk melakukan serangkaian aktivitas mental tertentu secara rutin dan dalam keheningan, seringkali sebagai bagian dari praktik spiritual atau kebiasaan pribadi dengan tujuan mengurangi stress.'),
('G17', 'meyakini bahwa dirinya terkontaminasi kuman /penyakit dari orang lain ', 'menggambarkan sebuah keadaan di mana seseorang memiliki keyakinan bahwa mereka telah terpapar atau terkontaminasi oleh kuman atau penyakit yang berasal dari orang lain. Ini adalah fenomena yang bisa terjadi dalam konteks kesehatan mental.'),
('G18', 'muncul kebutuhan untuk memastikan segala benda dalam kondisi khusus (misalnya susunan benda mesti si', 'menggambarkan keinginan atau kebutuhan untuk menjaga atau menciptakan tata letak atau susunan benda yang memenuhi syarat tertentu. Individu akan  merasa cemas apabila melihat susunan benda yang tidak sesuai.\r\n'),
('G19', 'muncul dorongan agresif yang mengerikan( misalnya melukai anak-anak atau berteriak di tempat ibadah)', 'dalam situasi ini, terjadi penampakan dorongan agresif yang sangat mengkhawatirkan. Ini adalah tindakan yang sangat tidak sesuai dengan norma-norma sosial dan etika. Dorongan untuk melukai anak-anak atau berteriak di tempat ibadah adalah perilaku yang sangat tidak dapat diterima dalam masyarakat'),
('G20', 'berusaha menghindari tempat - tempat yang memicu munculnya obsesi (misalnya menghindari berjabat tan', 'menggambarkan tindakan seseorang yang berupaya untuk menghindari situasi atau tempat yang dapat memicu perasaan obsesi atau kecemasan yang intens. Ini adalah ciri dari gangguan obsesif kompulsif (OCD), di mana individu mengalami obsesi yang berulang dan memaksa serta berusaha untuk mengurangi ketidaknyamanan dengan melakukan tindakan tertentu, yang disebut kompulsi.'),
('G21', 'perasaan tertekan karena timbulnya gambaran seksual yang tidak menyenangkan secara berulang di dalam', 'menggambarkan kondisi emosional seseorang yang mungkin sedang mengalami tekanan atau kecemasan karena adanya pikiran atau gambaran seksual yang tidak diinginkan yang muncul secara berulang dalam pikirannya. Ini pengalaman membuat seseorang merasa tidak nyaman.'),
('G22', 'berhitung dengan menggunakan pola tertentu', 'merujuk pada metode atau proses menghitung atau melakukan perhitungan matematika dengan mengikuti suatu pola atau aturan tertentu.'),
('G23', 'sering khawatir akan menyakiti diri sendiri atau orang lain tanpa ada maksud dan alasan yang jelas', 'menggambarkan perasaan kekhawatiran atau ketidakamanan seseorang terhadap potensi tindakan merugikan yang dapat dilakukan terhadap diri sendiri atau orang lain, meskipun tanpa niat atau alasan yang jelas.'),
('G24', 'selalu merasa bahwa agama (keyakinan) yang dianut adalah yang paling benar, sedangkan yang diyakini ', 'menggambarkan sikap atau pandangan yang dikenal sebagai etnosentrisme keagamaan atau keyakinan yang eksklusif. Ini mencerminkan keyakinan bahwa agama atau keyakinan tertentu yang seseorang anut adalah satu-satunya yang benar, sementara keyakinan orang lain dianggap sebagai kesalahan atau tidak benar.'),
('G25', 'merasa cemas tentang keadaan diri sendiri. selalu bertanya kepada diri untuk memastikan bahwa diri s', 'menggambarkan perasaan cemas atau kekhawatiran yang mungkin dirasakan seseorang terhadap diri mereka sendiri. Frasa ini mengindikasikan adanya ketidakpastian atau keraguan yang mendalam tentang moralitas atau niat seseorang.'),
('G26', 'memiliki ritual atau cara-cara khusus untuk menghilangkan atau membatalkan pikiran yang muncul', 'mengacu pada tindakan atau kegiatan yang seseorang lakukan secara teratur atau dengan cara tertentu untuk mengatasi atau menghilangkan pikiran yang datang secara tidak diinginkan atau mengganggu'),
('G27', 'selalu berpikir dan memastikan kembali dengan cara mengingat-ingat sikap yang telah dilakukan sepanj', 'menggambarkan suatu tindakan atau kebiasaan seseorang untuk secara rutin merefleksikan dan mengkaji kembali perilaku dan sikap mereka selama sepanjang hari. Tujuannya adalah untuk memahami atau mengevaluasi bagaimana mereka telah berperilaku atau bertindak dalam berbagai situasi.'),
('G28', 'kebutuhan untuk melakukan sesuatu secara simetris. seperti jika menggaruk lutut kiri, maka harus men', 'menggambarkan perilaku atau keinginan untuk melakukan tindakan dengan pola yang simetris atau seimbang. Dalam konteks ini, jika seseorang melakukan suatu tindakan pada salah satu sisi tubuhnya, seperti menggaruk lutut kiri, maka mereka merasa perlu atau cenderung untuk melakukan tindakan yang sama pada sisi tubuh yang lain, yaitu menggaruk lutut kanan.'),
('G29', 'ritual / kebiasaan menghitung hingga angka tertentu pada saat melakukan suatu aktivitas.', 'mengacu pada tindakan atau kebiasaan seseorang yang melibatkan penghitungan hingga mencapai angka tertentu sebagai bagian dari aktivitas tertentu yang mereka lakukan. Ini bisa menjadi bentuk kumpulan tindakan atau ritual yang dilakukan secara berulang-ulang dengan angka-angka yang telah ditentukan sebelumnya untuk menghilangkan kecemasan.'),
('G30', 'ada pikiran yang berulang bahwa barang yang digunakan, atau tubuh kotor', 'Ini bisa merujuk pada perasaan kekhawatiran atau ketidaknyamanan terkait dengan barang-barang yang telah digunakan atau kotor. '),
('G31', 'dorongan untuk mencuci secara berulang atau membersihkan barang-barang yang telah tercemar. ', 'mengacu pada kecenderungan atau keinginan seseorang untuk melakukan tindakan pembersihan berulang-ulang terhadap barang-barang atau area yang mereka anggap telah terkontaminasi atau tercemar'),
('G32', 'menyembunyikan pisau di dapur dan barang lain yang mungkin digunakan sebagai senjata', 'menggambarkan tindakan menyimpan atau menyembunyikan benda-benda yang memiliki potensi untuk digunakan sebagai alat untuk melukai atau mengancam orang lain dan diri sendiri.'),
('G33', 'menghindari menonton film kekerasan', 'mengandung arti bahwa seseorang berusaha untuk tidak menonton atau menghindari film-film yang mengandung adegan kekerasan. Dalam konteks ini, &quot;menonton film kekerasan&quot; merujuk pada kegiatan menonton film-film yang menggambarkan adegan kekerasan fisik, psikologis, atau emosional, yang dapat mencakup pertempuran, penganiayaan, tindakan kriminal, atau kekerasan lainnya'),
('G34', 'pengakuan dan doa yang berlebihan', 'merujuk pada ungkapan atau tindakan yang melibatkan pengungkapan atau doa yang terlalu banyak dan berlebihan');

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
('P01', 'cleaning', '1.) berpikir kembali / panggil memori ingatan bahwa hal \r\n      tersebut sudah dilakukan\r\n\r\n\r\n2.) konsultasikan pada profesional seperti psikolog\r\n'),
('P02', 'symetry', '1.) berpikir ulang tentang hal yang sudah di lakukan\r\n2.) terapi dengan bantuan psikolog\r\n'),
('P03', 'forbbiden thought', '1.)	berpikir kembali\r\n2.)	cari tahu kebenaran sebelum bertindak\r\n3.)	cari bantuan penjelasan pada psikolog\r\n'),
('P04', 'harm', '1.) cari coping stress yang efektif seperti olahraga dan self \r\n      care\r\n2.) cari bantuan konselingdan terapi psikolog\r\n');

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
