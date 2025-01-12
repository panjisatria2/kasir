-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 06:04 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_image` varchar(200) DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  `product_supplier` int(11) DEFAULT NULL,
  `product_price_s` double NOT NULL,
  `product_price_b` double NOT NULL,
  `product_stock` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_image`, `product_category`, `product_supplier`, `product_price_s`, `product_price_b`, `product_stock`) VALUES
(3, '8999510785540', 'Pristine', '', 2, 2, 5000, 4000, 856),
(4, '8997032711139', 'Biskies', '', 1, 1, 5000, 4000, 926),
(5, '8999168211422', 'rokok', '', 1, 1, 10000, 10000, 100),
(6, '8992982206001', 'pure life', '', 2, 2, 5000, 4000, 996);

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id`, `nama`) VALUES
(1, 'makanan'),
(2, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`) VALUES
(1, 'BENFOOD'),
(2, 'Hallo Vit');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_akun` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_akun`, `total_harga`, `tanggal_transaksi`) VALUES
(35, 5, 5000.00, '2025-01-04 17:00:00'),
(36, 5, 500000.00, '2025-01-05 17:00:00'),
(37, 5, 250000.00, '2025-01-05 17:00:00'),
(38, 5, 10000.00, '2025-01-07 17:00:00'),
(39, 5, 10000.00, '2025-01-07 17:00:00'),
(40, 5, 10000.00, '2025-01-07 17:00:00'),
(41, 7, 10000.00, '2025-01-07 17:00:00'),
(42, 7, 10000.00, '2025-01-07 17:00:00'),
(43, 7, 10000.00, '2025-01-07 17:00:00'),
(44, 5, 10000.00, '2025-01-07 17:00:00'),
(45, 7, 10000.00, '2025-01-07 17:00:00'),
(46, 7, 5000.00, '2025-01-07 17:00:00'),
(47, 7, 5000.00, '2025-01-07 17:00:00'),
(48, 7, 5000.00, '2025-01-08 17:00:00'),
(49, 7, 20000.00, '2025-01-10 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `total_harga_produk` decimal(10,2) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_kasir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `jumlah_produk`, `harga_satuan`, `total_harga_produk`, `tanggal_transaksi`, `id_kasir`) VALUES
(52, 35, 3, 1, 5000, 5000.00, '2025-01-05', 5),
(53, 36, 3, 100, 5000, 500000.00, '2025-01-06', 5),
(54, 37, 4, 50, 5000, 250000.00, '2025-01-06', 5),
(55, 38, 3, 2, 5000, 10000.00, '2025-01-08', 5),
(56, 39, 3, 2, 5000, 10000.00, '2025-01-08', 5),
(57, 40, 3, 2, 5000, 10000.00, '2025-01-08', 5),
(58, 41, 4, 2, 5000, 10000.00, '2025-01-08', 7),
(59, 42, 4, 2, 5000, 10000.00, '2025-01-08', 7),
(60, 43, 4, 2, 5000, 10000.00, '2025-01-08', 7),
(61, 44, 3, 2, 5000, 10000.00, '2025-01-08', 5),
(62, 45, 3, 2, 5000, 10000.00, '2025-01-08', 7),
(63, 46, 3, 1, 5000, 5000.00, '2025-01-08', 7),
(64, 47, 3, 1, 5000, 5000.00, '2025-01-08', 7),
(65, 48, 3, 1, 5000, 5000.00, '2025-01-09', 7),
(66, 49, 6, 4, 5000, 20000.00, '2025-01-11', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','kasir','owner') NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role`, `foto`) VALUES
(4, 'Panji Satria', 'admin', '1234', 'admin', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\pngegg.png'),
(5, 'Nugi Armas', 'kasir', '1234', 'kasir', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\WhatsApp Image 2024-11-21 at 11.20.08_dbffeedd.jpg'),
(6, 'Heru Mudzaqi', 'owner', '1234', 'owner', 'C:\\Users\\LENOVO\\Downloads\\player_idle-1.png.png'),
(7, 'tegar', 'kasir1', '123', 'kasir', 'C:\\Users\\LENOVO\\OneDrive\\Documents\\pngegg.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category` (`product_category`),
  ADD KEY `product_supplier` (`product_supplier`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
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
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `produk_kategori` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `user` (`id`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaksi_detail_ibfk_3` FOREIGN KEY (`id_kasir`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
