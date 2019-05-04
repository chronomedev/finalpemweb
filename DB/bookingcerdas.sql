-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2019 at 06:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingcerdas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(2) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `nasabah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `no_rek`, `nasabah`) VALUES
(1, 'Mandiri', '12345678987', 'Fauzan Indra Pramana'),
(3, 'BNI', '1324569871254', 'Fauzan Indra Pramana'),
(4, 'BTN', '132654897564123', 'Fauzan Indra Pramana');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `size` varchar(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `kode` int(10) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `kd_cus` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `model` varchar(100) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kd_cus` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kd_cus`, `nama`, `alamat`, `no_telp`, `username`, `password`, `gambar`) VALUES
('20190401112209', 'palskuy', 'asdkad', '12381', 'palskuy', '3c3d9cff2bf438fd582fdcaeed6a855a5a4dcbcd', ''),
('20190422033902', 'Abraham', 'sadhah', '123141', 'customer01', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', ''),
('20190422033924', 'Naufal', 'sadjaj', '123818', 'customer02', '1d7068e0ebba37d9b545245e781508987e0fc59a', ''),
('20190422055115', 'fake', 'fakeaaa', '222652652', 'fake', 'c053ecf9ed41df0311b9df13cc6c3b6078d2d3c2', '');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_kon` int(6) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `bayar_via` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(10) NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL,
  `status` enum('Bayar','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_kon`, `nopo`, `kd_cus`, `bayar_via`, `tanggal`, `jumlah`, `bukti_transfer`, `status`) VALUES
(14, '13', '13', '0', '2017-08-20 00:00:00', 0, '0', 'Belum'),
(15, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 0, '0', 'Belum'),
(16, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 220000, '0', 'Belum'),
(17, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 665000, '0', 'Belum'),
(18, '20170821073545', '20170821073545', '0', '2017-08-21 08:23:48', 630000, '0', 'Belum'),
(19, '20170824123653', '20170824123653', '0', '2017-08-24 12:38:58', 489999, '0', 'Belum'),
(20, '20190422055115', '20190422055115', '0', '2019-05-03 16:19:13', 100000, '0', 'Belum'),
(21, '20190422055115', '20190422055115', '0', '2019-05-03 16:24:25', 6790000, '0', 'Belum'),
(22, '20190422055115', '20190422055115', '0', '2019-05-03 16:45:38', 6790000, '0', 'Belum'),
(23, '20190422055115', '20190422055115', '0', '2019-05-03 16:46:00', 120000, '0', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `pengulas_review`
--

CREATE TABLE `pengulas_review` (
  `nama_reviewer` varchar(100) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `deskripsi_review` varchar(200) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengulas_review`
--

INSERT INTO `pengulas_review` (`nama_reviewer`, `id_produk`, `deskripsi_review`, `rating`) VALUES
('fake', 13, 'power shell corrupt', 0),
('fake', 13, 'power shell corrupt', 0),
('fake', 13, 'baguszzz', 4),
('fake', 15, 'bagus bro', 4);

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `nopo` varchar(20) NOT NULL,
  `style` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` varchar(4) NOT NULL,
  `tanggalkirim` date NOT NULL,
  `tanggalexport` date NOT NULL,
  `status` enum('Proses','Selesai','Terkirim','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_terima`
--

CREATE TABLE `po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `style` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(4) NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_terima`
--

INSERT INTO `po_terima` (`id`, `nopo`, `kd_cus`, `kode`, `tanggal`, `style`, `color`, `size`, `qty`, `total`) VALUES
(19, '13', '13', 16, '2017-08-20 00:00:00', '', 'Red', 'All ', 1, 159999),
(20, '13', '13', 15, '2017-08-20 00:00:00', '', 'Red', 'All ', 2, 240000),
(22, '20170820071826', '20170820071826', 15, '2017-08-21 00:00:00', '', 'Red', 'All ', 2, 240000),
(23, '20170820071826', '20170820071826', 16, '2017-08-21 00:00:00', '', 'Red', 'All ', 1, 159999),
(24, '20170820071826', '20170820071826', 13, '2017-08-21 00:00:00', '', 'Black', 'All ', 2, 180000),
(25, '20170820071826', '20170820071826', 12, '2017-08-21 00:00:00', '', 'White', 'All ', 1, 120000),
(26, '20170820071826', '20170820071826', 11, '2017-08-21 00:00:00', '', 'Black', 'All ', 1, 100000),
(28, '20170820071826', '20170820071826', 8, '2017-08-21 07:25:56', '', 'Black', 'All ', 3, 330000),
(29, '20170820071826', '20170820071826', 9, '2017-08-21 07:25:58', '', 'Gray', 'All ', 2, 240000),
(30, '20170820071826', '20170820071826', 5, '2017-08-21 07:26:03', '', 'Black', 'All ', 1, 95000),
(31, '20170821073545', '20170821073545', 12, '2017-08-21 08:23:23', '', 'White', 'All ', 1, 120000),
(32, '20170821073545', '20170821073545', 13, '2017-08-21 08:23:27', '', 'Black', 'All ', 3, 270000),
(33, '20170821073545', '20170821073545', 15, '2017-08-21 08:23:33', '', 'Red', 'All ', 2, 240000),
(34, '20170824123653', '20170824123653', 10, '2017-08-24 12:37:31', '', 'Black', 'All ', 1, 110000),
(35, '20170824123653', '20170824123653', 16, '2017-08-24 12:37:44', '', 'Red', 'All ', 1, 159999),
(36, '20170824123653', '20170824123653', 12, '2017-08-24 12:37:55', '', 'White', 'All ', 1, 120000),
(37, '20170824123653', '20170824123653', 7, '2017-08-24 12:38:39', '', 'Red', 'All ', 1, 100000),
(38, '20190422055115', '20190422055115', 11, '2019-05-03 16:19:01', '', 'Victorian', '2 be', 1, 100000),
(39, '20190422055115', '20190422055115', 14, '2019-05-03 16:24:19', '', 'Tradsional', '2bed', 1, 6790000),
(40, '20190422055115', '20190422055115', 14, '2019-05-03 16:45:11', '', 'Medium', '2bed', 1, 6790000),
(41, '20190422055115', '20190422055115', 9, '2019-05-03 16:45:56', '', 'Medium', '1 be', 1, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `nama`, `jenis`, `size`, `color`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(5, 'Cool', 'Classic', '2 bed', 'Vintage', 95000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 4, 'gambar_produk/wallpaper code 2b.jpg'),
(6, 'Kamar Kencana', 'VVIP', '2 bed', 'Vintage', 105000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 5, 'gambar_produk/kamar2.jpg'),
(7, 'Kamar Raflessia', 'Budget', '3 bed', 'Modern', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 4, 'gambar_produk/kamar3.jpg'),
(8, 'Black Dragon', 'Budget', '2 Bed', 'Nautical', 110000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 1, 'gambar_produk/kamar4.jpg'),
(9, 'Kamar Galaxy', 'Medium', '1 bed', 'vintage', 120000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 7, 'gambar_produk/kamar5.jpg'),
(10, 'Kamar Soka', 'Budget', '2 bed', 'rustic', 110000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 9, 'gambar_produk/kamar6.jpg'),
(11, 'Kamar Violet', 'standart', '2 bed', 'Victorian', 100000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 9, 'gambar_produk/kamar7.jpg'),
(12, 'Kamar Melati', 'Medium', '2 bed', 'modern', 120000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 6, 'gambar_produk/kamar8.jpg'),
(13, 'Kamar Violet', 'Budget', '2 bed', 'Vintage', 90000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 7, 'gambar_produk/kamar9.jpg'),
(14, 'Kamar Kenanga', 'Medium', '2bed', 'Tradsional', 6790000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 13, 'gambar_produk/kamar10.jpg'),
(15, 'Kamar Lavender', 'Classic', '3 bed', 'modern', 120000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 7, 'gambar_produk/kamar11.jpg'),
(16, 'Kamar Lactus', 'VIP', '2 bed', 'Minimalis', 159999, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', 11, 'gambar_produk/kamar12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_po_terima`
--

CREATE TABLE `tmp_po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(10) NOT NULL,
  `kd_cus` varchar(10) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `style` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(4) NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(2, 'abraham', '1517d545cc11283e2360bdb315c68b19bd465256', 'Abraham', 'gambar_admin/gojita2.jpg'),
(3, 'naufal', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Naufal', 'gambar_admin/gojita2.jpg'),
(4, 'faisal', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Faisal:)', 'gambar_admin/instagram-grey-icon.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kd_cus`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `pengulas_review`
--
ALTER TABLE `pengulas_review`
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`nopo`);

--
-- Indexes for table `po_terima`
--
ALTER TABLE `po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom`
--
ALTER TABLE `custom`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_kon` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `po_terima`
--
ALTER TABLE `po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengulas_review`
--
ALTER TABLE `pengulas_review`
  ADD CONSTRAINT `pengulas_review_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
