-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 17, 2019 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner.jpg', '990px', '200px');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

DROP TABLE IF EXISTS `footer`;
CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<table width=\"990px\">\r\n    \r\n        <tr>\r\n            <td align=\"center\">Cửa hàng :\r\n           <b>Shop Giày Ny Shoes</b></td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\"  >Điện thoại :\r\n            <b>0392775887</b></td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\"   >Địa chỉ :\r\n            <b>180 Cao Lỗ , Phường 4, Quận 8,TPHCM</b></td>\r\n        </tr>\r\n  \r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`, `tinh_trang`) VALUES
(1, 'Tuyen', '1', '1', '1', '1', '57[|||]0[|||||]60[|||]0[|||||][|||]0[|||||]59[|||]1[|||||]58[|||]1[|||||]52[|||]1[|||||]', 'Đã xác '),
(2, 'Tuyến', 'fef', '3e3', '12', '$noi_dung', '57', 'Đã giao'),
(3, '1', '1', '1', '1', '', '58[|||]1[|||||]', 'Đã giao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_doc`
--

DROP TABLE IF EXISTS `menu_doc`;
CREATE TABLE IF NOT EXISTS `menu_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Iphone'),
(2, 'Samsung'),
(3, 'Nokia'),
(4, 'Xiaomi'),
(5, 'Oppo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_ngang`
--

DROP TABLE IF EXISTS `menu_ngang`;
CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(2, 'Sản phẩm', '', 'san_pham'),
(5, 'Liên Hệ', 'Số điện thoại : 0905377032 <br />\r\nFacebook : facebook.com/anh8t', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao`
--

DROP TABLE IF EXISTS `quang_cao`;
CREATE TABLE IF NOT EXISTS `quang_cao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `html`, `vi_tri`) VALUES
(1, '<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_p_1.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"/ban_hang/hinh_anh/tinymce/qc_p_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_p_3.png\" alt=\"\" /></a></p>', 'trai'),
(2, '<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_1.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"/ban_hang/hinh_anh/tinymce/qc_t_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_3.png\" alt=\"\" /></a></p>', 'phai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(41, 'Iphone 11', 33490000, 'iphone11.jpg', '•	Màn hình:\r\n6.5inch, 1242 x 2688 pixel, OLED\r\n•	Hệ điều hành:\r\niOS 13\r\n•	Bộ xử lý:\r\nđang cập nhật, Apple A13\r\n•	Bộ nhớ:\r\n512GB, RAM: 4GB\r\n•	Camera chính:\r\n3 Camera 12MP, Quay phim 4K 2160p@60fps\r\n•	Camera phụ:\r\n12MP\r\n•	Pin:\r\n3.969 mAh\r\n', 1, 'co', 'co', 17),
(42, 'Iphone X', 25000000, 'iphone10.jpg', '•	Màn hình:\r\n5.5inch, 1242 x 2688 pixel, OLED\r\n•	Hệ điều hành:\r\niOS 13\r\n•	Bộ xử lý:\r\nđang cập nhật, Apple A13\r\n•	Bộ nhớ:\r\n512GB, RAM: 4GB\r\n•	Camera chính:\r\n3 Camera 12MP, Quay phim 4K 2160p@60fps\r\n•	Camera phụ:\r\n12MP\r\n•	Pin:\r\n3.969 mAh\r\n', 1, 'co', 'co', 18),
(43, 'Iphone 8 Plus', 16490000, 'iphone8plus.jpg', '•	Màn hình:\r\n6.5inch, 1242 x 2688 pixel, OLED\r\n•	Hệ điều hành:\r\niOS 13\r\n•	Bộ xử lý:\r\nđang cập nhật, Apple A13\r\n•	Bộ nhớ:\r\n512GB, RAM: 4GB\r\n•	Camera chính:\r\n3 Camera 12MP, Quay phim 4K 2160p@60fps\r\n•	Camera phụ:\r\n12MP\r\n•	Pin:\r\n3.969 mAh\r\n', 1, 'co', 'co', 19),
(44, 'Iphone 7 Plus', 12890000, 'iphone7plus.jpg', '•	Màn hình:\r\n6.5inch, 1242 x 2688 pixel, OLED\r\n•	Hệ điều hành:\r\niOS 10\r\n•	Bộ xử lý:\r\nđang cập nhật, Apple A13\r\n•	Bộ nhớ:\r\n512GB, RAM: 2GB\r\n•	Camera chính:\r\n3 Camera 12MP, Quay phim 4K 2160p@60fps\r\n•	Camera phụ:\r\n12MP\r\n•	Pin:\r\n3.969 mAh\r\n', 1, 'co', 'co', 20),
(45, 'Nokia 9.1', 70000, 'nokia9.jpg', 'Hãng sản xuất:nokia\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 5, 'co', 'co', 21),
(46, 'Nokia 7.2', 51000, 'nokia7.jpg', 'Hãng sản xuất:nokia\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 5, 'co', 'co', 22),
(47, 'Nokia 6.2', 1000000, 'nokia62.jpg', 'Hãng sản xuất:nokia\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 5, 'co', 'co', 23),
(48, 'Nokia 6.1', 999000, 'nokia6.jpg', 'Hãng sản xuất:nokia\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 5, 'co', 'co', 24),
(49, 'Nokia 5.1', 500000, 'nokia5.jpg', 'Hãng sản xuất:nokia\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 2, 'co', 'co', 25),
(50, 'Oppo A3', 2000000, 'oppoa3.jpg', 'Hãng sản xuất:OPPo\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 2, 'co', 'co', 26),
(51, 'Oppo A5s', 700000, 'oppoa5s.jpg', 'Hãng sản xuất:OPPo\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh', 2, 'co', 'co', 27),
(52, 'Oppo A9', 10000, 'oppoa9.png', 'Hãng sản xuất:OPPo\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh', 2, 'co', 'co', 28),
(53, 'Oppo F11', 450000, 'oppof11.png', 'Hãng sản xuất:OPPo\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh', 3, 'co', 'co', 29),
(54, 'Oppo Reno', 120000, 'opporeno.png', 'Hãng sản xuất:OPPo\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh', 3, 'co', 'co', 30),
(55, 'Samsung Galaxy Note 10', 540000, 'samsungnote10.jpg', 'Băng tần - Sim	\r\n2G/3G, LTE\r\n\r\nCPU	\r\nExynos 9611 (10nm)\r\n\r\nChip đồ họa ( GPU )	\r\nMali-G72 MP3\r\n\r\nHệ điều hành	\r\nAndroid 9.0 (Pie)\r\n\r\nRAM	\r\n4 GB\r\n\r\nBộ nhớ trong	\r\n64 GB\r\n\r\nThẻ nhớ	\r\nmicroSD, up to 1 TB (dedicated slot)\r\n\r\nMàn hình	\r\n6.4 FHD+ Infinity-U display, Super AMOLED\r\n\r\nCamera trước	\r\n32 MP, f/2.0, 25mm (wide)\r\n\r\nCamera sau	\r\nTriple: 48 MP, f/2.0, (wide), 1/2\", 0.8µm, PDAF 8 MP, f/2.2, 13mm (ultrawide) 5 MP, f/2.2, depth sensor\r\n\r\nPin	\r\nFast battery charging 15W, Li-Ion 4000 mAh\r\n\r\nCảm biến	\r\nFingerprint (under display), accelerometer, gyro, proximity, compass\r\n\r\nMàu sắc	\r\nĐen, Trắng, Xanh Dương\r\n\r\nTình trạng sản phẩm	\r\nMới', 3, 'co', 'co', 31),
(56, 'Samsung Galaxy Note 9', 5000000, 'samsungnote9.jpg', 'Băng tần - Sim	\r\n2G/3G, LTE\r\n\r\nCPU	\r\nExynos 9611 (10nm)\r\n\r\nChip đồ họa ( GPU )	\r\nMali-G72 MP3\r\n\r\nHệ điều hành	\r\nAndroid 9.0 (Pie)\r\n\r\nRAM	\r\n4 GB\r\n\r\nBộ nhớ trong	\r\n64 GB\r\n\r\nThẻ nhớ	\r\nmicroSD, up to 1 TB (dedicated slot)\r\n\r\nMàn hình	\r\n6.4 FHD+ Infinity-U display, Super AMOLED\r\n\r\nCamera trước	\r\n32 MP, f/2.0, 25mm (wide)\r\n\r\nCamera sau	\r\nTriple: 48 MP, f/2.0, (wide), 1/2\", 0.8µm, PDAF 8 MP, f/2.2, 13mm (ultrawide) 5 MP, f/2.2, depth sensor\r\n\r\nPin	\r\nFast battery charging 15W, Li-Ion 4000 mAh\r\n\r\nCảm biến	\r\nFingerprint (under display), accelerometer, gyro, proximity, compass\r\n\r\nMàu sắc	\r\nĐen, Trắng, Xanh Dương\r\n\r\nTình trạng sản phẩm	\r\nMới', 3, 'co', 'co', 32),
(57, 'Samsung Galaxy S9', 300000, 'samsungs9.jpg', 'Băng tần - Sim	\r\n2G/3G, LTE\r\n\r\nCPU	\r\nExynos 9611 (10nm)\r\n\r\nChip đồ họa ( GPU )	\r\nMali-G72 MP3\r\n\r\nHệ điều hành	\r\nAndroid 9.0 (Pie)\r\n\r\nRAM	\r\n4 GB\r\n\r\nBộ nhớ trong	\r\n64 GB\r\n\r\nThẻ nhớ	\r\nmicroSD, up to 1 TB (dedicated slot)\r\n\r\nMàn hình	\r\n6.4 FHD+ Infinity-U display, Super AMOLED\r\n\r\nCamera trước	\r\n32 MP, f/2.0, 25mm (wide)\r\n\r\nCamera sau	\r\nTriple: 48 MP, f/2.0, (wide), 1/2\", 0.8µm, PDAF 8 MP, f/2.2, 13mm (ultrawide) 5 MP, f/2.2, depth sensor\r\n\r\nPin	\r\nFast battery charging 15W, Li-Ion 4000 mAh\r\n\r\nCảm biến	\r\nFingerprint (under display), accelerometer, gyro, proximity, compass\r\n\r\nMàu sắc	\r\nĐen, Trắng, Xanh Dương\r\n\r\nTình trạng sản phẩm	\r\nMới', 4, 'co', 'co', 33),
(58, 'Samsung Galaxy S10', 90000, 'samsungs10.jpg', 'Băng tần - Sim	\r\n2G/3G, LTE\r\n\r\nCPU	\r\nExynos 9611 (10nm)\r\n\r\nChip đồ họa ( GPU )	\r\nMali-G72 MP3\r\n\r\nHệ điều hành	\r\nAndroid 9.0 (Pie)\r\n\r\nRAM	\r\n4 GB\r\n\r\nBộ nhớ trong	\r\n64 GB\r\n\r\nThẻ nhớ	\r\nmicroSD, up to 1 TB (dedicated slot)\r\n\r\nMàn hình	\r\n6.4 FHD+ Infinity-U display, Super AMOLED\r\n\r\nCamera trước	\r\n32 MP, f/2.0, 25mm (wide)\r\n\r\nCamera sau	\r\nTriple: 48 MP, f/2.0, (wide), 1/2\", 0.8µm, PDAF 8 MP, f/2.2, 13mm (ultrawide) 5 MP, f/2.2, depth sensor\r\n\r\nPin	\r\nFast battery charging 15W, Li-Ion 4000 mAh\r\n\r\nCảm biến	\r\nFingerprint (under display), accelerometer, gyro, proximity, compass\r\n\r\nMàu sắc	\r\nĐen, Trắng, Xanh Dương\r\n\r\nTình trạng sản phẩm	\r\nMới', 4, '', 'co', 34),
(59, 'Xiaomi Mi 9', 80000, 'xiaomimi9.jpg', 'Hãng sản xuất:XiaomiDGW\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 4, '', 'co', 35),
(60, 'Xiaomi Mi Mix 3', 3000000, 'xiaomimimix3.jpg', 'Hãng sản xuất:XiaomiDGW\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 4, '', 'co', 36),
(61, 'Xiaomi Note 10', 2323, 'xiaominote10.jpg', 'Hãng sản xuất:XiaomiDGW\r\nKích thước màn hình:6.01\"\r\nĐộ phân giải màn hình:HD+ (720 x 1560 Pixels)\r\nHệ điều hành:Android 9.0 (Pie)\r\nChip xử lý (CPU):Qualcomm Snapdragon 665 8 nhân\r\nRAM:4 GB\r\nMáy ảnh chính:Chính 48 MP & Phụ 8 MP, 2 MP\r\nBộ nhớ trong:64 GB\r\nDung lượng pin (mAh):4030 mAh\r\n', 1, 'co', 'co', 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'images (4).jpg', '#'),
(4, 'images (5).jpg', '#'),
(5, 'images (1).jpg', ''),
(6, 'images (2).jpg', ''),
(7, 'images (3).jpg', ''),
(8, 'images.jpg', ''),
(9, 'images (6).jpg', ''),
(10, 'download.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_quan_tri`
--

DROP TABLE IF EXISTS `thong_tin_quan_tri`;
CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
