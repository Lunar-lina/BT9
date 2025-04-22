-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 04:22 PM
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
-- Database: `banhang_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `ma_dh` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`ma_dh`, `ma_sp`, `so_luong`, `gia_ban`) VALUES
(156, 187, 3, 300000),
(157, 188, 2, 200000),
(158, 189, 6, 700000),
(159, 190, 10, 1000000),
(159, 191, 6, 400000),
(160, 192, 9, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id`, `ma_kh`, `ngay_dat`, `tong_tien`) VALUES
(156, 5, '2025-04-16', 300000),
(160, 2, '2025-04-14', 1000000),
(159, 2, '2025-04-21', 600000),
(157, 4, '2025-04-21', 500000),
(156, 3, '2025-04-12', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '@',
  `sdt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_kh`, `email`, `sdt`) VALUES
(1, 'Nguyễn Lê Tấn Kha', 'LeTanKha@Gmail.com', 846328453),
(2, 'Võ Lê Đăng Khôi', 'DangKhoi@Gmail.com', 847659847),
(3, 'Nguyễn Đinh Khánh Hà', 'KhanhHa@Gmail.com', 84324235),
(4, 'Nguyễn Quang Thừa', 'ThuaDu@Gmail.com', 84655324),
(5, 'Tôn Thất Hải Hoàn', 'HaiHoan@Gmail.com', 947707856);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten_sp` varchar(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten_sp`, `gia`, `so_luong_ton`) VALUES
(1, 'Giày', 100000, 300),
(2, 'Áo', 50000, 2000),
(3, 'Quần', 40000, 1700),
(4, 'Mũ', 30000, 600),
(5, 'Tất', 10000, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`ma_dh`,`ma_sp`) USING BTREE;

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`id`),
  ADD CONSTRAINT `don_hang_ibfk_2` FOREIGN KEY (`id`) REFERENCES `chi_tiet_don_hang` (`ma_dh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
