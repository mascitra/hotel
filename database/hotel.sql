-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Agu 2016 pada 16.21
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cc_detail`
--

CREATE TABLE `cc_detail` (
  `id_cc` int(5) NOT NULL,
  `cc_name` varchar(100) NOT NULL,
  `cc_date` date NOT NULL,
  `cvv` varchar(5) NOT NULL,
  `cc_number` int(10) NOT NULL,
  `cc_type` varchar(100) NOT NULL,
  `cc_userid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cc_detail`
--

INSERT INTO `cc_detail` (`id_cc`, `cc_name`, `cc_date`, `cvv`, `cc_number`, `cc_type`, `cc_userid`) VALUES
(17, '1adda', '2014-01-01', '122', 12122, 'Visa', 34),
(18, 'adada', '2014-01-01', '122', 12122, 'Visa', 35),
(19, '1adda', '2014-01-01', '122', 12122, 'Visa', 35),
(20, 'adada', '2014-02-01', '122', 12122, 'Visa', 35),
(21, 'adada', '2014-02-01', '1212', 41121, 'Mastercard', 35),
(22, 'Rizki Herdatullah', '2020-07-01', '192', 2147483647, 'Mastercard', 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `idclass` int(10) NOT NULL,
  `no_jenis` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `price` varchar(20) NOT NULL,
  `fasilitas` varchar(20) NOT NULL,
  `kamar_kosong` int(4) NOT NULL,
  `photoclass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`idclass`, `no_jenis`, `title`, `price`, `fasilitas`, `kamar_kosong`, `photoclass`) VALUES
(1, 0, 'Single Room VVIP', '400000', '<a rel="" target="" ', 0, 'singleroom.jpg'),
(2, 0, 'Double Room', '600000', '<p>sdasdasdd adadad<', 0, 'doubleroom.jpg'),
(3, 0, 'Suite Room VVIP', '1500000', '<p>asdasdasdadada ad', 0, 'suiteroom.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `idclass` varchar(10) NOT NULL,
  `fac` varchar(40) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`idclass`, `fac`, `title`, `status`) VALUES
('2', 'lcd', 'LCD', '1'),
('2', 'wifi', 'WiFi', '1'),
('2', 'breakfast', 'Sarapan', '1'),
('2', 'safe', 'Pelayanan Hotel Plus', '0'),
('2', 'bath', 'Kamar Mandi', '1'),
('2', 'dinner', 'Makan Malam', '1'),
('2', 'parking', 'Parkir', '1'),
('2', 'laundry', 'Laundry', '0'),
('3', 'lcd', 'LCD', '1'),
('3', 'wifi', 'WiFi', '1'),
('3', 'breakfast', 'Sarapan', '1'),
('3', 'safe', 'Pelayanan Hotel Plus', '1'),
('3', 'bath', 'Kamar Mandi', '1'),
('3', 'dinner', 'Makan Malam', '1'),
('3', 'parking', 'Parkir', '1'),
('3', 'laundry', 'Laundry', '0'),
('1', 'lcd', 'LCD', '1'),
('1', 'wifi', 'WiFi', '1'),
('1', 'breakfast', 'Sarapan', '1'),
('1', 'safe', 'Pelayanan Hotel Plus', '0'),
('1', 'bath', 'Kamar Mandi', '1'),
('1', 'dinner', 'Makan Malam', '0'),
('1', 'parking', 'Parkir', '1'),
('1', 'laundry', 'Laundry', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foods`
--

CREATE TABLE `foods` (
  `id_food` int(3) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis_makanan` enum('0','1') NOT NULL,
  `harga` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foods`
--

INSERT INTO `foods` (`id_food`, `nama`, `jenis_makanan`, `harga`) VALUES
(1, 'Nasi Putih', '0', '5000'),
(2, 'Air Putih', '1', '3000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_produk`
--

CREATE TABLE `foto_produk` (
  `id_foto_produk` int(10) UNSIGNED NOT NULL,
  `idclass` int(10) UNSIGNED NOT NULL,
  `image` text,
  `thumb` text,
  `default` enum('1','0') DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto_produk`
--

INSERT INTO `foto_produk` (`id_foto_produk`, `idclass`, `image`, `thumb`, `default`) VALUES
(106, 1, 'assets/img/c4ca4238a0b923820dcc509a6f75849b03_Cikal-Bakal-Gamer.jpg', 'assets/img/thumbnails/thumb_c4ca4238a0b923820dcc509a6f75849b03_Cikal-Bakal-Gamer.jpg', '0'),
(105, 1, 'assets/img/c4ca4238a0b923820dcc509a6f75849b10730134426_59c2652f57_c.jpg', 'assets/img/thumbnails/thumb_c4ca4238a0b923820dcc509a6f75849b10730134426_59c2652f57_c.jpg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guest`
--

CREATE TABLE `guest` (
  `no_ktp` varchar(16) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `id` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(100) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode_grup` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guest`
--

INSERT INTO `guest` (`no_ktp`, `nama_depan`, `nama_belakang`, `id`, `email`, `telepon`, `alamat`, `kota`, `zip`, `provinsi`, `negara`, `user_id`, `kode_grup`) VALUES
('7584398395039572', 'Admin12', 'istrator123', 32, 'admin@gie-art.com', '121234', 'adad', 'KABUPATEN ACEH SELATAN', '123', '11', 'Indonesia', 0, ''),
('3113953424039572', 'Admin12', 'istrator123', 33, 'admin@gie-art.com', '121234', 'adad', 'KABUPATEN ACEH SELATAN', '123', '11', 'Indonesia', 0, ''),
('338439839339534', 'Admin12', 'istrator123', 34, 'admin@gie-art.com', '121234', 'ada', '347', '1212', '11', 'Indonesia', 20, ''),
('1275663983950395', 'Admin123451', 'istrator123', 35, 'admin@admin.com', '0123', 'telo', '359', '1212', '11', 'Indonesia', 1, ''),
('5084398395039532', 'Rizki', 'Herdatullah', 36, 'rizkiherda@gmail.com', '8980129366', 'Dusun Tanjung Lor RT 02 RW 01 Desa Karanganyar Kecamatan Paiton', '383', '67291', '35', 'Indonesia', 21, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guest_group`
--

CREATE TABLE `guest_group` (
  `id_guest_group` int(2) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `diskon` tinyint(3) NOT NULL,
  `status_guest_group` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guest_group`
--

INSERT INTO `guest_group` (`id_guest_group`, `kode`, `nama`, `diskon`, `status_guest_group`) VALUES
(1, 'U0134', 'Umum', 0, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `idoptions` int(10) NOT NULL,
  `options_name` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`idoptions`, `options_name`, `value`) VALUES
(1, 'company_name', 'Telo Hotel 3'),
(2, 'company_address', '<p>Jl. Aplikasi No. 133</p>'),
(3, 'company_number', '09876554333'),
(4, 'currency', 'Rp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `order_id` int(5) NOT NULL,
  `guest_id` int(5) NOT NULL,
  `class_id` int(10) NOT NULL,
  `tgl_order` date NOT NULL,
  `cc_id` int(5) NOT NULL,
  `payment_total` int(100) NOT NULL,
  `order_status` int(5) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`order_id`, `guest_id`, `class_id`, `tgl_order`, `cc_id`, `payment_total`, `order_status`, `check_in`, `check_out`) VALUES
(22, 35, 1, '2014-01-28', 19, 400000, 2, '2014-01-28', '2014-01-28'),
(23, 35, 1, '2014-02-01', 20, 380000, 3, '2014-02-01', '2014-02-01'),
(24, 35, 2, '2014-02-02', 21, 1200000, 2, '2014-02-03', '2014-02-04'),
(25, 36, 2, '2016-08-01', 22, 1200000, 0, '2016-08-02', '2016-08-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `body`, `created`, `modified`, `parent`, `template`, `order`) VALUES
(1, '', 'Home', '<p>Telo kaspo</p>', '2013-12-22 10:22:19', '0000-00-00 00:00:00', 0, 'homepage', 1),
(2, 'service', 'Services', '<p>service</p>', '2013-12-22 10:22:37', '0000-00-00 00:00:00', 0, 'service', 2),
(3, 'booking', 'Booking', '<p>booking</p>', '2013-12-22 17:08:34', '0000-00-00 00:00:00', 0, 'page', 3),
(4, 'news', 'Berita', '<p>news</p>', '2014-01-31 17:47:24', '0000-00-00 00:00:00', 0, 'news', 4),
(5, 'galery', 'Galery', '', '2014-02-04 07:56:01', '0000-00-00 00:00:00', 0, 'galery', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_article`
--

CREATE TABLE `post_article` (
  `post_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `featurephoto` varchar(100) NOT NULL,
  `post_entry` longtext NOT NULL,
  `create_date` date NOT NULL,
  `hit` int(10) NOT NULL,
  `create_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post_article`
--

INSERT INTO `post_article` (`post_id`, `title`, `featurephoto`, `post_entry`, `create_date`, `hit`, `create_by`) VALUES
(1, 'Ini adalah artikel pertama', 'computer-virus-character-hi_1375739973.png', '<p>VIRUS 2</p>\r\n<p><img style="height: 258px; width: 300px;" src="../../../../hotel/uploads/images/computer-virus-character-hi_1375715930.png" alt="" /></p>', '2013-08-06', 0, 'admin'),
(2, 'ada', '', 'adada', '2013-12-17', 0, 'admin'),
(3, 'TommyVault', '', 'TommyVault', '2013-12-17', 0, 'admin'),
(6, '1ada', '1ada.png', 'aaaaaaaaaaa', '2014-01-27', 0, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promote`
--

CREATE TABLE `promote` (
  `idpromo` int(10) NOT NULL,
  `idclass` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` varchar(3) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promote`
--

INSERT INTO `promote` (`idpromo`, `idclass`, `title`, `start_date`, `end_date`, `discount`, `description`, `status`) VALUES
(1, '1', 'PROMO 2', '2013-08-02', '2014-02-28', '5', '<p>TADASDASDASD</p>', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `idrooms` int(10) NOT NULL,
  `numbers` varchar(100) NOT NULL,
  `idclass` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `namespace` varchar(50) NOT NULL,
  `guest_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`idrooms`, `numbers`, `idclass`, `status`, `namespace`, `guest_id`) VALUES
(525, 'ada-1', '2', '0', 'ada', 0),
(526, 'ada-2', '2', '0', 'ada', 0),
(527, 'ada-3', '2', '1', 'ada', 35),
(528, 'ada-4', '2', '0', 'ada', 0),
(529, 'ada-5', '2', '0', 'ada', 0),
(530, 'Single-1', '1', '1', 'Single', 0),
(531, 'Single-2', '1', '1', 'Single', 0),
(532, 'Single-3', '1', '1', 'Single', 0),
(533, 'Single-4', '1', '1', 'Single', 0),
(534, 'Single-5', '1', '1', 'Single', 0),
(535, 'Suite-1', '3', '0', 'Suite', 0),
(536, 'Suite-2', '3', '0', 'Suite', 0),
(537, 'Suite-3', '3', '0', 'Suite', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id_service` int(2) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `harga` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id_service`, `nama`, `harga`) VALUES
(1, 'Spa', 75000),
(2, 'Karaoke', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_desc` varchar(255) NOT NULL,
  `slide_image` varchar(255) NOT NULL,
  `slide_thumb` text NOT NULL,
  `slide_order` int(11) NOT NULL,
  `slide_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_desc`, `slide_image`, `slide_thumb`, `slide_order`, `slide_status`) VALUES
(36, 'telooo', 'telooooooooooooooo', 'assets/img/telooo.jpg', 'assets/img/thumbnails/telooo.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1268889823, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cc_detail`
--
ALTER TABLE `cc_detail`
  ADD PRIMARY KEY (`id_cc`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`idclass`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `foto_produk`
--
ALTER TABLE `foto_produk`
  ADD PRIMARY KEY (`id_foto_produk`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_group`
--
ALTER TABLE `guest_group`
  ADD PRIMARY KEY (`id_guest_group`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`idoptions`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_article`
--
ALTER TABLE `post_article`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `promote`
--
ALTER TABLE `promote`
  ADD PRIMARY KEY (`idpromo`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`idrooms`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cc_detail`
--
ALTER TABLE `cc_detail`
  MODIFY `id_cc` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `idclass` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id_food` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `foto_produk`
--
ALTER TABLE `foto_produk`
  MODIFY `id_foto_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `guest_group`
--
ALTER TABLE `guest_group`
  MODIFY `id_guest_group` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `idoptions` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_article`
--
ALTER TABLE `post_article`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `promote`
--
ALTER TABLE `promote`
  MODIFY `idpromo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `idrooms` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
