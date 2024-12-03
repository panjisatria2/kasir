-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 09:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga` double NOT NULL,
  `status_transaksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_keuangan`
--

INSERT INTO `laporan_keuangan` (`id`, `tanggal`, `kode_produk`, `nama_produk`, `jumlah`, `harga`, `status_transaksi`) VALUES
(1, '2024-11-29', '1', 'Oli ', 1, 100000, 'HAPUS'),
(2, '2024-11-29', '2', 'Oli Gardan', 1, 50000, 'HAPUS'),
(3, '2024-11-30', '3', 'Ban Luar', 2, 250000, 'HAPUS'),
(4, '2024-11-30', '4', 'Ban Dalam', 1, 50000, 'HAPUS');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `no_member` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(15) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_supplier` int(11) NOT NULL,
  `product_price_s` double NOT NULL,
  `product_price_b` double NOT NULL,
  `product_stock` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_image`, `product_category`, `product_supplier`, `product_price_s`, `product_price_b`, `product_stock`) VALUES
(1, 'P00001', 'Oli ', 'oli.png', 1, 2, 100000, 50000, 500),
(2, 'P00002', 'Oli Gardan', 'oligrdan.jpg', 6, 1, 50000, 35000, 100),
(3, 'P00003', 'Ban Luar', 'banluar.png', 1, 4, 250000, 200000, 50),
(4, 'P00004', 'Ban Dalam', 'bandalam.jpg', 1, 2, 50000, 30000, 100),
(5, 'P00005', 'Velg', 'velg.png', 1, 1, 600000, 450000, 10),
(24, 'P00006', 'Shockbreaker', 'shock.jpg', 5, 1, 200000, 100000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `description`) VALUES
(1, 'Ban', ''),
(5, 'Sparepart', ''),
(6, 'Oli dan Pelumas', ''),
(7, 'Aki dan Baterai', ''),
(8, 'Filter', ''),
(9, 'Kabel dan Kelistrikan', '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `phone`, `address`) VALUES
(1, 'Yamaha Parts & Accessories', '08151222444', 'Jakarta Utara, Indonesia'),
(2, 'Honda Parts & Accessories', '081577744411', 'Jakarta Timur, Indonesia'),
(4, 'Michelin', '0834222112212', 'Tangerang, Indonesia'),
(5, 'Bosch Automotive', '08135433211', 'Jakarta Timur, Indonesia'),
(6, 'Michelin', '0834222112212', 'Tangerang, Indonesia'),
(7, 'Bosch Automotive', '08135433211', 'Jakarta Timur, Indonesia'),
(8, 'Motul ', '081283682', 'Bandung, Indonesia'),
(9, 'NGK Spark Plugs ', '081354332112', 'Tangerang Selatan, Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal_transaksi` time NOT NULL,
  `status` enum('gagal','berhasil','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `harga_perpcs` decimal(10,2) NOT NULL,
  `total_harga_produk` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('owner','kasir','admin','') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`, `foto`) VALUES
(1, 'panji satria', 'admin', '123', 'admin', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\kasirr\\src\\img\\pngegg.png'),
(4, 'heru mudzaqi', 'heru', '123', 'owner', ''),
(6, 'nugi armas', 'nugi', '123', 'kasir', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\WhatsApp Image 2024-11-21 at 11.20.08_dbffeedd.jpg'),
(23, 'atmin', 'atmin', '123', 'admin', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\kasirr\\src\\img\\User.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_supplier` (`product_supplier`),
  ADD KEY `product_category` (`product_category`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_supplier`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_category`) REFERENCES `product_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
