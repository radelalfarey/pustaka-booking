-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Des 2023 pada 07.03
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2017, '9786025118500', 5, 3, 1, 'img1557402397.jpg\r\n'),
(5, 'PHP Komplet ', 1, 'Jubilee', ' Ce Naaa', 2017, '8346753547', 5, 1, 1, 'img1555522493 jpg\r\n'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura ', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg\r\n'),
(14, 'Bahasa Indonesia', 2, 'Umri Nuraini dan Indriyani ', 'Pusat Perbukuan ', 2015, '757254724884', 3, 0, 0, 'img1557402703.ipg\r\n'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kumia', 'Published ', 2015, '878674646488 ', 5, 0, 0, 'img1557403156.jpg\r\n'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502 jpg\r\n'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurulihsan', 'Luxima', 2014, '5657156565768868', 5, 0, 0, 'img1557404689.jpg'),
(21, 'naruto shipuden', 3, 'masashi', 'shonen', 2009, '123123123213', 2, 0, 0, 'img1701102105.jpeg'),
(23, 'dsaadadsdas', 3, 'dsaadas', '12313', 2007, '1231212', 1, 0, 0, 'img1701104181.jpg'),
(27, 'asd', 3, 'ads', 'dsa', 2009, '111', 10, 0, 0, 'img1701488727.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Komputer'),
(11, 'Bahasa'),
(13, 'Hobby'),
(14, 'Komunikasi'),
(16, 'Agama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Andrianto pratama', 'prtmandri30@gmail.com', '', '123', 1, 1, 12),
(2, 'Andrianto pratama', 'prtmandri30@gmail.com', '', '123', 1, 0, 0),
(3, 'andri', 'andri@gmail.com', 'default.jpg', '$2y$10$/2yiviuUzAePlKioXYErYeHzfZHdBQ8BWqAjEgNPFY669FE8S58OS', 2, 0, 1700461346),
(4, 'ilham', 'ilham@gmail.com', 'default.jpg', '$2y$10$7xgx35PQi7rbB0LRPhmxNulB5eIbahsXuLtLbZzn1sj8RQuRoquiu', 2, 0, 1700461380),
(5, 'ashels', 'ashel@gmail.com', 'pro1701098574.jpg', '$2y$10$ymdSnpdqG3VCmDXZZXahC.q4zdUD/FiBpk/cn7RNnHXx8Xxwotfde', 1, 1, 1700461437),
(6, 'ragil', 'ragil@gmailc.om', 'default.jpg', '$2y$10$Zg/T.VyKt4AGygm3b3lG7OBrbx28em/saEL2XMYVvJy7oBNavxJla', 2, 0, 1700462316),
(7, 'farhan', 'farhan123@gmail.com', 'default.jpg', '$2y$10$xH8UV2UDlM.9racb8neXD.vl0D/0NlrF1HCMXbhcxmuCOLRZywUdC', 2, 0, 1700462452),
(8, 'and', 'and@gmail.com', 'default.jpg', '$2y$10$VsA0PyrVVsd8W9I5AxNaluSRtcODHlGSyW/iPsSjjlTi1KCZea38S', 2, 0, 1700464107),
(9, 'adzana', 'adzana@gmail.com', 'default.jpg', '$2y$10$U8FSybhEgyDVZ7ZXJ7W5Ke0hV0VNHnFZ60t0sxgliKP7o9eZe65Ey', 2, 0, 1700464770),
(10, 'asheell', 'asheell@gmail.com', 'default.jpg', '$2y$10$RaKaC3sZxX2JTUfA.NFp6uOD7VvN1VchzOfPSHnCWy6YuY4tQSqrO', 2, 0, 1700465745),
(11, 'aashel', 'ashell@gmail.com', 'pro1701489032.jpg', '$2y$10$A2rGaNVi5O2F6ts4w6rrf.MgDarcG.Ayji1BfecB3B74VxnFYmj0G', 1, 1, 1701102535),
(12, 'andriii', 'anddd@gmail.com', 'default.jpg', '$2y$10$mCjjinf/FQN.j/Ug7Ki7iOS.BLSvRVrCVZn2RgoNgS6YkafzevqSO', 1, 1, 1701102674);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
