-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2022 at 04:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlimaytinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `fullName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`fullName`, `userName`, `password`, `role`, `status`, `email`) VALUES
('Admin', 'admin', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Admin', 1, 'sinhbaoreact2003@gmail.com'),
('Hoàng Gia Bảo', 'bobo', '$2a$12$PhiTGBbHjHoB3dbS6BmCC.rzdMCBqDrdK9Y8Ae8GPcKe1RpHiWARO', 'Nhân viên xuất', 1, 'hgiabao2k3@gmail.com'),
('Trần Nhật Sinh', 'sinhsinh1122', '$2a$12$89As1J0AB0yrqGjnQUHtpevc6voGyvzAd8OvzkS1vGDo3YPO2P.Ia', 'Nhân viên nhập', 1, 'transinh342@gmail.com'),
('Nguyễn Thiên Ân', 'thienan', '$2a$12$myOaq0kATMzNkbxgzQEkPu8ht2K0pXOGzZMZo6nSBowq6EyoLo7tS', 'Quản lý kho', 1, 'a11611112003@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietPhieuNhap`
--

CREATE TABLE `ChiTietPhieuNhap` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ChiTietPhieuNhap`
--

INSERT INTO `ChiTietPhieuNhap` (`maPhieu`, `maMay`, `soLuong`, `donGia`) VALUES
('PN1', 'LP10', 1, 23490000),
('PN1', 'LP19', 1, 19490000),
('PN10', 'LP16', 1, 22990000),
('PN10', 'LP22', 1, 23490000),
('PN10', 'LP9', 4, 16490000),
('PN11', 'LP17', 1, 23190000),
('PN11', 'LP25', 1, 18390000),
('PN11', 'PC1', 8, 7090000),
('PN12', 'LP24', 1, 21490000),
('PN12', 'LP8', 1, 18390000),
('PN13', 'LP24', 1, 21490000),
('PN13', 'LP6', 1, 17490000),
('PN14', 'LP19', 1, 19490000),
('PN14', 'LP20', 1, 20790000),
('PN14', 'LP4', 1, 10690000),
('PN15', 'LP14', 1, 22490000),
('PN15', 'LP6', 1, 17490000),
('PN16', 'LP17', 1, 23190000),
('PN16', 'LP5', 1, 19290000),
('PN16', 'PC06', 1, 9690000),
('PN17', 'LP19', 1, 19490000),
('PN17', 'LP4', 1, 10690000),
('PN18', 'LP15', 1, 25190000),
('PN18', 'LP5', 1, 19290000),
('PN18', 'LP6', 1, 17490000),
('PN18', 'PC06', 1, 9690000),
('PN18', 'PC1', 1, 7090000),
('PN19', 'LP18', 1, 24990000),
('PN19', 'LP24', 1, 21490000),
('PN19', 'LP4', 1, 10690000),
('PN19', 'PC06', 1, 9690000),
('PN2', 'LP20', 1, 20790000),
('PN2', 'LP21', 1, 25990000),
('PN20', 'LP16', 1, 22990000),
('PN20', 'LP25', 10, 18390000),
('PN20', 'LP5', 1, 19290000),
('PN20', 'PC1', 1, 7090000),
('PN21', 'LP16', 45, 22990000),
('PN21', 'LP8', 25, 18390000),
('PN22', 'LP10', 1, 23490000),
('PN22', 'LP15', 1, 25190000),
('PN22', 'LP22', 1, 23490000),
('PN22', 'LP6', 1, 17490000),
('PN23', 'LP19', 2, 19490000),
('PN23', 'LP5', 2, 19290000),
('PN23', 'LP7', 2, 17490000),
('PN24', 'PC7', 20, 116990000),
('PN25', 'LP14', 1, 22490000),
('PN26', 'LP15', 2, 25190000),
('PN27', 'LP5', 10, 19290000),
('PN28', 'LP15', 2, 25190000),
('PN28', 'LP24', 1, 21490000),
('PN29', 'LP4', 1, 10690000),
('PN3', 'LP15', 1, 25190000),
('PN3', 'LP22', 1, 23490000),
('PN3', 'LP25', 1, 18390000),
('PN3', 'LP4', 2, 10690000),
('PN30', 'LP16', 1, 22990000),
('PN30', 'LP24', 1, 21490000),
('PN30', 'LP3', 1, 15000000),
('PN31', 'LP14', 1, 22490000),
('PN31', 'LP25', 1, 18390000),
('PN31', 'LP7', 1, 17490000),
('PN32', 'LP18', 1, 24990000),
('PN32', 'LP5', 1, 19290000),
('PN32', 'LP9', 1, 16490000),
('PN32', 'PC2', 1, 8290000),
('PN32', 'PC7', 1, 11200000),
('PN33', 'LP14', 1, 22490000),
('PN33', 'LP22', 1, 23490000),
('PN33', 'LP3', 1, 15000000),
('PN33', 'PC1', 1, 7090000),
('PN34', 'LP25', 7, 18390000),
('PN34', 'LP6', 20, 17490000),
('PN34', 'LP8', 1, 18390000),
('PN34', 'PC2', 2, 8290000),
('PN35', 'LP24', 1, 21490000),
('PN35', 'LP4', 1, 10690000),
('PN35', 'LP8', 1, 18390000),
('PN35', 'PC5', 1, 9190000),
('PN36', 'LP19', 20, 19490000),
('PN37', 'LP19', 1, 19490000),
('PN37', 'LP4', 1, 10690000),
('PN37', 'LP8', 3, 18390000),
('PN38', 'LP23', 20, 15690000),
('PN38', 'LP6', 30, 17490000),
('PN4', 'LP5', 1, 19290000),
('PN4', 'LP7', 1, 17490000),
('PN4', 'LP9', 1, 16490000),
('PN5', 'LP4', 3, 10690000),
('PN6', 'LP17', 1, 23190000),
('PN6', 'LP3', 1, 15000000),
('PN7', 'LP15', 1, 25190000),
('PN7', 'LP25', 1, 18390000),
('PN7', 'LP8', 5, 18390000),
('PN8', 'LP19', 1, 19490000),
('PN8', 'LP4', 1, 10690000),
('PN8', 'LP9', 1, 16490000),
('PN9', 'LP21', 1, 25990000),
('PN9', 'LP6', 1, 17490000);

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietPhieuXuat`
--

CREATE TABLE `ChiTietPhieuXuat` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ChiTietPhieuXuat`
--

INSERT INTO `ChiTietPhieuXuat` (`maPhieu`, `maMay`, `soLuong`, `donGia`) VALUES
('PX1', 'LP10', 1, 23490000),
('PX1', 'LP19', 13, 19490000),
('PX1', 'LP3', 1, 15000000),
('PX10', 'LP20', 1, 20790000),
('PX10', 'LP4', 1, 10690000),
('PX10', 'LP8', 1, 18390000),
('PX10', 'PC06', 1, 9690000),
('PX10', 'PC2', 1, 8290000),
('PX12', 'LP20', 1, 20790000),
('PX12', 'LP6', 1, 17490000),
('PX12', 'PC1', 1, 7090000),
('PX13', 'LP18', 1, 24990000),
('PX13', 'LP5', 2, 19290000),
('PX13', 'LP6', 1, 17490000),
('PX13', 'PC1', 4, 7090000),
('PX14', 'LP20', 1, 20790000),
('PX14', 'LP24', 1, 21490000),
('PX14', 'LP8', 1, 18390000),
('PX14', 'PC06', 1, 9690000),
('PX14', 'PC2', 1, 8290000),
('PX15', 'LP17', 1, 23190000),
('PX15', 'LP20', 1, 20790000),
('PX15', 'LP5', 1, 19290000),
('PX15', 'LP9', 1, 16490000),
('PX15', 'PC1', 1, 7090000),
('PX16', 'LP14', 4, 22490000),
('PX16', 'LP20', 1, 20790000),
('PX16', 'LP21', 1, 25990000),
('PX17', 'LP21', 2, 25990000),
('PX18', 'LP16', 5, 22990000),
('PX18', 'LP8', 2, 18390000),
('PX19', 'LP18', 1, 24990000),
('PX19', 'LP23', 1, 15690000),
('PX19', 'PC06', 1, 9690000),
('PX19', 'PC3', 1, 8990000),
('PX2', 'LP21', 1, 25990000),
('PX2', 'LP6', 2, 17490000),
('PX2', 'PC06', 1, 9690000),
('PX20', 'LP6', 2, 17490000),
('PX20', 'LP9', 1, 16490000),
('PX20', 'PC06', 1, 9690000),
('PX20', 'PC3', 2, 8990000),
('PX21', 'LP23', 1, 15690000),
('PX21', 'LP7', 1, 17490000),
('PX21', 'PC06', 2, 9690000),
('PX21', 'PC2', 1, 8290000),
('PX22', 'LP5', 1, 19290000),
('PX22', 'LP9', 1, 16490000),
('PX23', 'LP23', 1, 15690000),
('PX23', 'PC06', 1, 9690000),
('PX23', 'PC1', 1, 7090000),
('PX23', 'PC3', 1, 8990000),
('PX24', 'LP19', 1, 19490000),
('PX24', 'LP8', 1, 18390000),
('PX24', 'LP9', 1, 16490000),
('PX24', 'PC3', 1, 8990000),
('PX25', 'LP19', 1, 19490000),
('PX25', 'LP7', 2, 17490000),
('PX25', 'PC1', 1, 7090000),
('PX26', 'LP19', 1, 19490000),
('PX26', 'LP22', 1, 23490000),
('PX26', 'LP3', 1, 15000000),
('PX26', 'LP5', 1, 19290000),
('PX26', 'LP6', 1, 17490000),
('PX3', 'LP22', 1, 23490000),
('PX3', 'LP4', 1, 10690000),
('PX3', 'LP8', 1, 18390000),
('PX4', 'LP17', 1, 23190000),
('PX4', 'LP6', 1, 17490000),
('PX4', 'LP7', 1, 17490000),
('PX5', 'LP16', 1, 22990000),
('PX5', 'LP5', 1, 19290000),
('PX5', 'LP7', 1, 17490000),
('PX5', 'LP9', 1, 16490000),
('PX5', 'PC3', 1, 8990000),
('PX6', 'LP12', 1, 13090000),
('PX6', 'LP13', 1, 9990000),
('PX6', 'LP15', 1, 25190000),
('PX6', 'LP17', 1, 23190000),
('PX7', 'LP21', 1, 25990000),
('PX7', 'LP5', 1, 19290000),
('PX7', 'PC1', 1, 7090000),
('PX8', 'LP24', 1, 21490000),
('PX8', 'LP3', 1, 15000000),
('PX8', 'LP5', 1, 19290000),
('PX8', 'LP8', 1, 18390000),
('PX8', 'PC1', 1, 7090000),
('PX9', 'LP21', 1, 25990000),
('PX9', 'LP22', 1, 23490000),
('PX9', 'LP4', 1, 10690000);

-- --------------------------------------------------------

--
-- Table structure for table `MayTinh`
--

CREATE TABLE `MayTinh` (
  `maMay` varchar(50) NOT NULL,
  `tenMay` varchar(100) DEFAULT NULL,
  `soLuong` int(11) NOT NULL DEFAULT 0,
  `tenCpu` varchar(50) NOT NULL DEFAULT '0',
  `ram` varchar(50) NOT NULL DEFAULT '0',
  `cardManHInh` varchar(50) DEFAULT NULL,
  `gia` double NOT NULL DEFAULT 0,
  `mainBoard` varchar(50) DEFAULT NULL,
  `congSuatNguon` int(11) DEFAULT NULL,
  `loaiMay` varchar(50) DEFAULT NULL,
  `rom` varchar(50) DEFAULT NULL,
  `kichThuocMan` double DEFAULT NULL,
  `dungLuongPin` varchar(50) DEFAULT NULL,
  `xuatXu` varchar(50) DEFAULT NULL,
  `trangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MayTinh`
--

INSERT INTO `MayTinh` (`maMay`, `tenMay`, `soLuong`, `tenCpu`, `ram`, `cardManHInh`, `gia`, `mainBoard`, `congSuatNguon`, `loaiMay`, `rom`, `kichThuocMan`, `dungLuongPin`, `xuatXu`, `trangThai`) VALUES
('LP10', 'Laptop Lenovo IdeaPad Gaming 3', 36, 'Intel Core i5 12500H', '16 GB', 'NVIDIA GeForce RTX 3050', 23490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 0),
('LP12', 'Laptop MSI Modern 14 B11MOU-1028VN', 23, 'Intel Core i3 115G4', '8 GB', 'Intel UHD Graphics', 13090000, NULL, NULL, 'Laptop', '256 GB', 14, '3 Cell', 'Trung Quốc', 0),
('LP13', 'Laptop HP 15s-fq2663TU', 19, 'Intel Core i3 1115G4', '4 GB', 'Intel UHD Graphics', 9990000, NULL, NULL, 'Laptop', '256 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP14', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 3, 'Intel Core i5 12500H', '16 GB', 'Intel Iris Xe Graphics', 22490000, NULL, NULL, 'Laptop', '512 GB', 16, '4 Cell', 'Trung Quốc', 1),
('LP15', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 28, 'Intel Core i7 12700H', '16 GB', 'Intel Iris Xe Graphics', 25190000, NULL, NULL, 'Laptop', '512 GB', 16, '75 Wh', 'Trung Quốc', 1),
('LP16', 'Laptop Acer Nitro Gaming AN515-57-54MV', 62, 'Intel Core i5 11400H', '8', 'NVIDIA GeForce RTX 3050', 22990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell ', 'Trung Quốc', 1),
('LP17', 'Laptop MSI Gaming Katana GF66 12UCK-815VN', 22, 'Intel Core i5 12450H', '8 GB', 'Intel UHD Graphics', 23190000, NULL, NULL, 'Laptop', '512 GB', 15.6, '53.5 Wh', 'Trung Quốc', 1),
('LP18', 'Laptop Asus TUF Gaming FX517ZC-HN077W', 23, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050', 24990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP19', 'Laptop HP Gaming Victus 16-e0175AX', 18, 'AMD Ryzen 5 5600H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 19490000, NULL, NULL, 'Laptop', '512 GB', 16.1, '4 Cell', 'Trung Quốc', 1),
('LP20', 'Laptop MSI GF63 Thin 11UC-444VN', 19, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce RTX 3050', 20790000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP21', 'Laptop Asus TUF Gaming FX517ZE-HN045W', 16, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 25990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP22', 'Laptop Lenovo Yoga Slim 7 Pro 14IHU5O', 20, 'Intel Core i5 11300H', '16 GB', 'Intel Iris Xe Graphics', 23490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell ', 'Trung Quốc', 1),
('LP23', 'Laptop Gigabyte U4 UD-50VN823SO', 37, 'Intel Core i5 1155G7', '16 GB', 'Intel Iris Xe Graphics', 15690000, NULL, NULL, 'Laptop', '512 GB', 14, '36 Wh', 'Trung Quốc', 1),
('LP24', 'Laptop Dell Vostro V5410 i5', 34, 'Intel Core i5 11320H', '8 GB', 'Intel Iris Xe Graphics', 21490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell', 'Trung Quốc', 1),
('LP25', 'Laptop MSI Gaming GF63 Thin 11SC-666VN', 53, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP3', 'Lenovo ThinkPad E14', 83, 'Intel Core i5 11G352', '8GB', 'OnBoard', 15000000, NULL, NULL, 'Laptop', '521GB', 14, '45Wh', 'Trung Quốc', 1),
('LP4', 'Lenovo Ideapad 3 15ITL6', 118, 'Intel Core i3 1115G4', '8GB', 'Onboard', 10690000, NULL, NULL, 'Laptop', '512GB', 15.6, '35Wh', 'Trung Quốc', 1),
('LP5', 'Gigabyte Gaming G5 GD', 11, 'Intel Core i5 11400H', '16GB', 'NVIDIA GeForce RTX 3050 4GB', 19290000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP6', 'MSI Gaming GF63 Thin 11SC-1090VN', 90, 'Intel Core i5 11400H', '8GB', 'NVIDIA GeForce GTX 1650 4GB', 17490000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP7', 'Laptop Asus TUF Gaming FX506LHB-HN188W', 19, 'Intel Core i5 10300H', '8 GB', 'NVIDIA GeForce GTX 1650', 17490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP8', 'Laptop MSI Gaming GF63 Thin 11SC-1090VN', 60, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650 4GB', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP9', 'Laptop Asus TUF Gaming FA506IHRB-HN019W', 25, 'AMD Ryzen 5 4600H', '8 GB', 'NVIDIA GeForce GTX 1650', 16490000, NULL, NULL, 'Laptop', '512 GB', 12, '3 cell', 'Trung Quốc', 1),
('PC06', 'PC E-Power Office 08', 19, 'Intel Core i5 11400', '16 GB', 'Intel UHD Graphics 730', 9690000, 'Intel H510', 9690000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC1', 'PC E-Power Office 04', 16, 'Intel Core i3 10105', '8GB', 'Intel HD Graphics 630', 7090000, 'Intel H510', 0, 'Laptop', '240GB', NULL, NULL, 'Việt Nam', 1),
('PC2', 'PC E-Power Office 05', 30, 'Intel Core i5 10400', '8 GB', 'Intel UHD Graphics 630', 8290000, 'Intel H510', 300, 'PC - Lắp ráp', '8 GB', NULL, NULL, 'Việt Nam', 1),
('PC3', 'PC E-Power Office 07', 19, 'Intel Core i5 11400', '8 GB', 'Intel UHD Graphics 730', 8990000, 'Intel H510', 8990000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC30', 'ASUS Vivobook', 1, ' Ryzen 7 5800H ', '16GB', 'GTX 3060', 25000000, NULL, NULL, 'Laptop', '512GB', 24, '3000', 'Việt Nam', 1),
('PC4', 'PC Gaming E-Power G1650', 71, 'Intel Core i3 10100F', '8 GB', 'Intel UHD Graphics 730', 11990000, 'Intel H510', 300, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC5', 'PC E-Power Office 06', 33, 'Intel Core i5 10400', '16 GB', 'Intel HD Graphics 630', 9190000, 'Intel H510', 200, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC7', 'PC Acer Aspire AS-XC780 DT.B8ASV.006', 21, ' Intel Core i5-7400', '4GB', ' Intel HD Graphics 630 / GeForce GT 720 2GB', 11200000, 'Intel H510', 300, 'PC - Lắp ráp', '1TB', NULL, NULL, 'Việt Nam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `NhaCungCap`
--

CREATE TABLE `NhaCungCap` (
  `maNhaCungCap` varchar(50) NOT NULL,
  `tenNhaCungCap` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `diaChi` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `NhaCungCap`
--

INSERT INTO `NhaCungCap` (`maNhaCungCap`, `tenNhaCungCap`, `Sdt`, `diaChi`) VALUES
('ANPHAT', 'Công Ty TNHH Điều Khiển Tự Động An Phát', '02835109735', '86/21 Phan Tây Hồ, P. 7, Q. Phú Nhuận TP. Hồ Chí Minh'),
('CODO', 'Công Ty TNHH Thương Mại Dịch Vụ Hoàng Cố Đô', '02838115345', '622/16/5 Cộng Hòa, Phường 13, Quận Tân Bình, TP HCM		'),
('FPT', 'Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT', '02873023456', '261 - 263 Khánh Hội, P2, Q4, TP. Hồ Chí Minh'),
('HACOM', 'Công ty Cổ phần đầu tư công nghệ HACOM', '1900 1903', 'Số 129 - 131, phố Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội'),
('HOANGPHAT', 'Công Ty TNHH Thương Mại Hoàng Phát Hải Phòng', '02253250888', 'Số 4, Lô 2A Lê Hồng Phong, Ngô Quyền, Tp. Hải Phòng'),
('PHONGVU', 'Công ty cổ phần dịch vụ - thương mại Phong Vũ', '0967567567', 'Tầng 5, Số 117-119-121 Nguyễn Du, Phường Bến Thành, Quận 1, Thành Phố Hồ Chí Minh'),
('TGDĐ', 'Công ty cổ phần Thế Giới Di Động', '028 38125960', '128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh'),
('VIETSTARS', 'Công ty CP Công nghệ Thương mại Dịch vụ Vietstars', '090 469 0212', ' Số 109 Lê Thanh Nghị  TP Hải dương');

-- --------------------------------------------------------

--
-- Table structure for table `PhieuNhap`
--

CREATE TABLE `PhieuNhap` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NULL DEFAULT NULL,
  `nguoiTao` varchar(50) DEFAULT NULL,
  `maNhaCungCap` varchar(50) DEFAULT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PhieuNhap`
--

INSERT INTO `PhieuNhap` (`maPhieu`, `thoiGianTao`, `nguoiTao`, `maNhaCungCap`, `tongTien`) VALUES
('PN1', '2022-12-01 13:59:09', 'admin', 'FPT', 42980000),
('PN10', '2022-12-07 18:04:19', 'admin', 'HOANGPHAT', 112440000),
('PN11', '2022-12-07 18:48:21', 'admin', 'FPT', 98300000),
('PN12', '2022-12-16 02:19:48', 'admin', 'HACOM', 39880000),
('PN13', '2022-12-16 02:19:36', 'admin', 'PHONGVU', 38980000),
('PN14', '2022-12-08 12:28:57', 'admin', 'FPT', 50970000),
('PN15', '2022-12-08 12:36:25', 'admin', 'FPT', 39980000),
('PN16', '2022-12-08 16:30:48', 'admin', 'HOANGPHAT', 52170000),
('PN17', '2022-12-09 14:29:43', 'admin', 'FPT', 30180000),
('PN18', '2022-12-09 17:08:19', 'admin', 'FPT', 78750000),
('PN19', '2022-12-12 07:09:21', 'admin', 'PHONGVU', 66860000),
('PN2', '2022-12-01 13:59:23', 'admin', 'FPT', 46780000),
('PN20', '2022-12-13 19:46:37', 'admin', 'PHONGVU', 233270000),
('PN21', '2022-12-14 11:54:21', 'admin', 'PHONGVU', 1536180000),
('PN22', '2022-12-14 12:32:09', 'admin', 'FPT', 89660000),
('PN23', '2022-12-14 14:28:52', 'admin', 'FPT', 112540000),
('PN24', '2022-12-14 14:41:23', 'admin', 'FPT', 2339800000),
('PN25', '2022-12-14 15:18:25', 'admin', 'ANPHAT', 22490000),
('PN26', '2022-12-14 20:01:37', 'admin', 'ANPHAT', 50380000),
('PN27', '2022-12-14 20:02:31', 'admin', 'ANPHAT', 192900000),
('PN28', '2022-12-15 10:43:36', 'admin', 'ANPHAT', 71870000),
('PN29', '2022-12-16 02:19:55', 'admin', 'CODO', 10690000),
('PN3', '2022-12-03 03:58:18', 'admin', 'FPT', 88450000),
('PN30', '2022-12-15 23:13:22', 'admin', 'ANPHAT', 59480000),
('PN31', '2022-12-15 23:14:59', 'sinhsinh1122', 'ANPHAT', 58370000),
('PN32', '2022-12-16 02:19:27', 'admin', 'HOANGPHAT', 80260000),
('PN33', '2022-12-16 13:09:45', 'sinhsinh1122', 'VIETSTARS', 68070000),
('PN34', '2022-12-16 15:31:14', 'admin', 'HOANGPHAT', 513500000),
('PN35', '2022-12-16 15:36:48', 'admin', 'HOANGPHAT', 59760000),
('PN36', '2022-12-16 15:40:31', 'admin', 'ANPHAT', 389800000),
('PN37', '2022-12-17 01:02:09', 'admin', 'ANPHAT', 85350000),
('PN38', '2022-12-17 01:08:48', 'admin', 'ANPHAT', 838500000),
('PN4', '2022-12-03 03:58:37', 'admin', 'TGDĐ', 53270000),
('PN5', '2022-12-06 17:51:02', 'admin', 'FPT', 32070000),
('PN6', '2022-12-06 18:50:32', 'admin', 'FPT', 38190000),
('PN7', '2022-12-06 18:59:43', 'admin', 'PHONGVU', 135530000),
('PN8', '2022-12-06 19:15:01', 'admin', 'FPT', 46670000),
('PN9', '2022-12-06 19:20:44', 'admin', 'FPT', 43480000);

-- --------------------------------------------------------

--
-- Table structure for table `PhieuXuat`
--

CREATE TABLE `PhieuXuat` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nguoiTao` varchar(50) NOT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PhieuXuat`
--

INSERT INTO `PhieuXuat` (`maPhieu`, `thoiGianTao`, `nguoiTao`, `tongTien`) VALUES
('PX1', '2022-12-01 14:10:44', 'admin', 291860000),
('PX10', '2022-12-07 18:41:08', 'admin', 57160000),
('PX12', '2022-12-07 19:06:56', 'admin', 45370000),
('PX13', '2022-12-08 12:31:48', 'admin', 109420000),
('PX14', '2022-12-08 16:30:10', 'admin', 78650000),
('PX15', '2022-12-12 22:31:09', 'admin', 86850000),
('PX16', '2022-12-14 15:04:47', 'admin', 136740000),
('PX17', '2022-12-14 15:34:07', 'admin', 51980000),
('PX18', '2022-12-15 20:32:57', 'admin', 151730000),
('PX19', '2022-12-16 02:20:15', 'Admin', 59360000),
('PX2', '2022-12-04 16:45:43', 'admin', 70660000),
('PX20', '2022-12-16 13:26:33', 'Admin', 79140000),
('PX21', '2022-12-16 13:36:43', 'Admin', 60850000),
('PX22', '2022-12-16 16:39:41', 'Admin', 35780000),
('PX23', '2022-12-16 17:18:54', 'Admin', 41460000),
('PX24', '2022-12-16 17:25:10', 'Admin', 63360000),
('PX25', '2022-12-16 18:51:31', 'Admin', 92550000),
('PX26', '2022-12-17 00:19:47', 'Admin', 94760000),
('PX3', '2022-12-04 16:45:52', 'admin', 89350000),
('PX4', '2022-12-04 16:45:59', 'admin', 58170000),
('PX5', '2022-12-06 19:10:13', 'admin', 85250000),
('PX6', '2022-12-06 19:19:12', 'admin', 71460000),
('PX7', '2022-12-06 19:25:43', 'admin', 52370000),
('PX8', '2022-12-07 18:39:54', 'admin', 39880000),
('PX9', '2022-12-07 18:40:22', 'admin', 36680000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`userName`) USING BTREE;

--
-- Indexes for table `ChiTietPhieuNhap`
--
ALTER TABLE `ChiTietPhieuNhap`
  ADD PRIMARY KEY (`maPhieu`,`maMay`),
  ADD KEY `FK_ChiTietPhieuNhap_MayTinh` (`maMay`);

--
-- Indexes for table `ChiTietPhieuXuat`
--
ALTER TABLE `ChiTietPhieuXuat`
  ADD PRIMARY KEY (`maPhieu`,`maMay`),
  ADD KEY `FK_ChiTietPhieuXuat_MayTinh` (`maMay`);

--
-- Indexes for table `MayTinh`
--
ALTER TABLE `MayTinh`
  ADD PRIMARY KEY (`maMay`);

--
-- Indexes for table `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
  ADD PRIMARY KEY (`maNhaCungCap`);

--
-- Indexes for table `PhieuNhap`
--
ALTER TABLE `PhieuNhap`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuNhap_NhaCungCap` (`maNhaCungCap`),
  ADD KEY `FK_PhieuNhap_Account` (`nguoiTao`);

--
-- Indexes for table `PhieuXuat`
--
ALTER TABLE `PhieuXuat`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuXuat_Account` (`nguoiTao`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ChiTietPhieuNhap`
--
ALTER TABLE `ChiTietPhieuNhap`
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `MayTinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_PhieuNhap` FOREIGN KEY (`maPhieu`) REFERENCES `PhieuNhap` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ChiTietPhieuXuat`
--
ALTER TABLE `ChiTietPhieuXuat`
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `MayTinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_PhieuXuat` FOREIGN KEY (`maPhieu`) REFERENCES `PhieuXuat` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PhieuNhap`
--
ALTER TABLE `PhieuNhap`
  ADD CONSTRAINT `FK_PhieuNhap_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `Account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PhieuNhap_NhaCungCap` FOREIGN KEY (`maNhaCungCap`) REFERENCES `NhaCungCap` (`maNhaCungCap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PhieuXuat`
--
ALTER TABLE `PhieuXuat`
  ADD CONSTRAINT `FK_PhieuXuat_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `Account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
