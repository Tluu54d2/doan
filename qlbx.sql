-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 24, 2024 lúc 02:36 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `idbanner` int(11) NOT NULL,
  `anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`idbanner`, `anh`) VALUES
(1, '600_xiaomi-12-pro-xtmobile.webp'),
(2, '642246378.jpeg'),
(3, '1349547788.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `idcolor` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`idcolor`, `color`) VALUES
(1, 'đỏ'),
(2, 'vàng'),
(3, 'đen'),
(4, 'xám'),
(5, 'xanh'),
(6, 'nâu'),
(7, 'cam'),
(8, 'trắng'),
(9, 'hồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `email`, `name`, `subject`, `message`, `status`) VALUES
(15, 'bon123@gmail.com', 'BON', 'HELLO', 'HELLO', 1),
(16, 'admin01@gmail.com', 'anhkhoa3103', 'xin chào ', 'xin chào', 1),
(17, 'xikhum223@gmail.com', 'Măng cụt', 'hhh', 'hhh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gopy`
--

CREATE TABLE `gopy` (
  `idgopy` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gopy`
--

INSERT INTO `gopy` (`idgopy`, `idSP`, `email`, `noidung`) VALUES
(1, 1, 'abc@gmail.com', 'GIÀY TÂY NAM CÔNG SỞ DA'),
(2, 1, 'abc@gmial.com', 'giày đẹp thiệt'),
(3, 9, 'ngophitin2001@gmal.com', 'GIày này cũng ổn'),
(4, 9, 'abc@gmail.com', 'Giày công sở 2 này đẹp và bền'),
(5, 2, 'abc@gmail.com', 'Giày này cho học sinh có phù hợp không?'),
(6, 5, 'ngophitin2001@gmal.com', 'Giày học ính nam này đẹp, bền '),
(7, 6, 'ngophitin2001@gmal.com', 'Giày bền, đẹp và rất đáng tiền'),
(8, 4, 'abc@gmial.com', 'Giày da bò này là da thiệt nè'),
(9, 3, 'gopy@gmail.com', 'Giày này hợp thời trang này'),
(10, 7, 'ngophitin2001@gmal.com', 'GIÀY THỜI TRANG này đẹp và bền á ad'),
(11, 8, 'ngophitin2001@gmal.com', 'Loại giày này hợp với mình nè');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `ngaymua` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idhoadon`, `idUser`, `idSP`, `tongtien`, `trangthai`, `soluongmua`, `ngaymua`) VALUES
(18, 6, 3, 150, 1, 1, '2021-01-11'),
(21, 10, 5, 1998, 1, 2, '2023-09-13'),
(23, 18, 4, 869, 1, 1, '2023-10-02'),
(24, 16, 4, 1738, 1, 2, '2023-10-02'),
(25, 19, 5, 999, 1, 1, '2024-01-12'),
(26, 19, 5, 1998, 1, 2, '2024-01-12'),
(27, 19, 135, 22, 1, 1, '2024-01-15'),
(29, 19, 135, 22, 1, 1, '2024-01-17'),
(30, 19, 168, 7000, 1, 1, '2024-01-17'),
(31, 20, 168, 14000, 1, 2, '2024-01-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `idKM` int(11) NOT NULL,
  `loaiKM` varchar(255) NOT NULL,
  `giatriKM` float NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`idKM`, `loaiKM`, `giatriKM`, `ngaybatdau`, `ngayketthuc`) VALUES
(6, 'Sản phẩm mới', 10, '2024-01-13', '2024-03-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `layout`
--

CREATE TABLE `layout` (
  `id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `mail_1` varchar(255) NOT NULL,
  `mail_2` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `donvi` varchar(255) NOT NULL,
  `phone_1` double NOT NULL,
  `phone_2` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `layout`
--

INSERT INTO `layout` (`id`, `time`, `mail_1`, `mail_2`, `diachi`, `donvi`, `phone_1`, `phone_2`) VALUES
(1, '24/7', '4anhtai@gmail.com', 'tttk@vku.udn.vn', '99 Tô Hiến Thành, Đà Nẵng', 'Khoa Công Nghệ Thông Tin- Cao đẳng nghề Đà Nẵng', 787700624, 123456789);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idLoaiSP` int(11) NOT NULL,
  `tenLSP` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`idLoaiSP`, `tenLSP`, `hinhanh`) VALUES
(1, 'iphone', '11.webp'),
(2, 'Samsung', '12.webp'),
(3, 'xiaomi', '14.jpg'),
(4, 'Oppo', '13.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `idQuyen` int(11) NOT NULL,
  `tenquyen` varchar(255) NOT NULL,
  `chitietquyen` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`idQuyen`, `tenquyen`, `chitietquyen`) VALUES
(1, 'admin', 'quản lý trang web'),
(0, 'customer', 'khách hàng quen'),
(2, 'banhang', 'Nhân viên bán hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `idKM` int(11) NOT NULL,
  `idLoaiSP` int(11) NOT NULL,
  `idcolor` int(11) NOT NULL,
  `idsize` int(11) NOT NULL,
  `tenSP` varchar(255) NOT NULL,
  `Dongia` int(11) NOT NULL,
  `anh1` varchar(255) NOT NULL,
  `anh2` varchar(255) NOT NULL,
  `anh3` varchar(255) NOT NULL,
  `ngaynhap` date NOT NULL,
  `mota` varchar(255) NOT NULL,
  `soluong` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idKM`, `idLoaiSP`, `idcolor`, `idsize`, `tenSP`, `Dongia`, `anh1`, `anh2`, `anh3`, `ngaynhap`, `mota`, `soluong`) VALUES
(122, 6, 1, 2, 1, 'iphone 6 32gb gold', 7, 'iphone-6-32gb-gold.jpg', 'iphone-6-32gb-gold.jpg', 'iphone-6-32gb-gold.jpg', '2024-01-13', '', 100),
(123, 6, 1, 2, 1, 'iphone 7 256gb gold', 9, 'iphone-7-256gb.jpg', 'iphone-7-256gb.jpg', 'iphone-7-256gb.jpg', '2024-01-13', '', 100),
(124, 6, 1, 3, 1, 'iphone 8 64gb ', 10, 'iphone-8-64gb.jpg', 'iphone-8-64gb.jpg', 'iphone-8-64gb.jpg', '2024-01-13', '', 100),
(125, 6, 1, 8, 1, 'iphone x 64gb', 12, 'iphone-x-64gb.jpg', 'iphone-x-64gb.jpg', 'iphone-x-64gb.jpg', '2024-01-13', '', 100),
(126, 6, 1, 2, 1, 'iphone xs max', 14, 'iphone-xs-max-gold.jpg', 'iphone-xs-max-gold.jpg', 'iphone-xs-max-gold.jpg', '2024-01-13', '', 100),
(127, 6, 1, 9, 1, 'iphone 11', 16, 'iphone-11.webp', 'iphone-11.webp', 'iphone-11.webp', '2024-01-13', '', 100),
(128, 6, 1, 5, 1, 'iphone 12 mini', 16, 'iphone-12-mini.webp', 'iphone-12-mini.webp', 'iphone-12-mini.webp', '2024-01-13', '', 100),
(129, 6, 1, 9, 1, 'iphone 13', 18, 'iphone-13_2_.webp', 'iphone-13_2_.webp', 'iphone-13_2_.webp', '2024-01-13', '', 100),
(130, 6, 1, 3, 1, 'iphone 14 128gb', 20, 'iphone-14-128gb.webp', 'iphone-14-128gb.webp', 'iphone-14-128gb.webp', '2024-01-13', '', 100),
(131, 6, 1, 8, 1, 'Iphone 4 - 8Gb', 2, 'apple-iphone-4-.jpg', 'apple-iphone-4-.jpg', 'apple-iphone-4-.jpg', '2024-01-13', '', 100),
(132, 6, 2, 5, 1, 'Samsung galaxy a15', 5, 'dien-thoai_samsung-galaxy-a15-1.webp', 'dien-thoai_samsung-galaxy-a15-1.webp', 'dien-thoai_samsung-galaxy-a15-1.webp', '2024-01-13', '', 100),
(133, 6, 2, 3, 1, 'Samsung galaxy a25', 7, 'a25.jpeg', 'a25.jpeg', 'a25.jpeg', '2024-01-13', '', 100),
(134, 6, 2, 5, 1, 'Samsung galaxy s23 fe', 16, 'samsung-galaxy-s23-fe-gia-re-4.jpg', 'samsung-galaxy-s23-fe-gia-re-4.jpg', 'samsung-galaxy-s23-fe-gia-re-4.jpg', '2024-01-13', '', 100),
(135, 6, 2, 1, 1, 'Samsung z fold', 22, 'sm-f926_zfold.webp', 'sm-f926_zfold.webp', 'sm-f926_zfold.webp', '2024-01-13', '', 98),
(136, 6, 2, 2, 1, 'Samsung galaxy z flip 3', 25, '600_samsung_galaxy_z_flip_3_kem.webp', '600_samsung_galaxy_z_flip_3_kem.webp', '600_samsung_galaxy_z_flip_3_kem.webp', '2024-01-13', '', 100),
(138, 6, 2, 8, 1, 'Samsung galaxy m54', 6, 'm54.jpg', 'm54.jpg', 'm54.jpg', '2024-01-13', '', 100),
(140, 6, 2, 4, 1, 'Samsung galaxy a34', 4, 'samsung-galaxy-a34-5g-bac.jpg', 'samsung-galaxy-a34-5g-bac.jpg', 'samsung-galaxy-a34-5g-bac.jpg', '2024-01-13', '', 100),
(141, 6, 3, 5, 1, 'redmi note 12 128gb', 6, '1685420951742_xiaomi_redmi_note_12_128gb_.webp', '1685420951742_xiaomi_redmi_note_12_128gb_.webp', '1685420951742_xiaomi_redmi_note_12_128gb_.webp', '2024-01-13', '', 100),
(142, 6, 3, 3, 1, 'xiaomi 13 lite', 10, 'thumb-xiaomi-13-lite.png', 'thumb-xiaomi-13-lite.png', 'thumb-xiaomi-13-lite.png', '2024-01-13', '', 100),
(143, 6, 3, 3, 1, 'xiaomi 13 pro', 22, 'ava-13pro-black.webp', 'ava-13pro-black.webp', 'ava-13pro-black.webp', '2024-01-13', '', 100),
(144, 6, 3, 5, 1, 'xiaomi mi14', 25, 'xiaomi14.jpg', 'xiaomi14.jpg', 'xiaomi14.jpg', '2024-01-13', '', 100),
(145, 6, 3, 5, 1, 'xiaomi mi11', 14, 'mi11.jpg', 'mi11.jpg', 'mi11.jpg', '2024-01-13', '', 100),
(146, 6, 3, 3, 1, 'xiaomi 12 ultra', 17, 'n-thoai-xiaomi-12sultra.webp', 'n-thoai-xiaomi-12sultra.webp', 'n-thoai-xiaomi-12sultra.webp', '2024-01-13', '', 100),
(147, 6, 3, 5, 1, 'xiaomi 13c', 4, '13c.webp', '13c.webp', '13c.webp', '2024-01-13', '', 100),
(148, 6, 3, 8, 1, 'xiaomi mi 10s', 10, 'xiaomi-mi-10s.webp', 'xiaomi-mi-10s.webp', 'xiaomi-mi-10s.webp', '2024-01-13', '', 100),
(149, 6, 3, 2, 1, 'xiaomi mi 11 lite 5g', 9, 'CGG_Xiaomi_Mi_11_Lite_5G.jpg', 'CGG_Xiaomi_Mi_11_Lite_5G.jpg', 'CGG_Xiaomi_Mi_11_Lite_5G.jpg', '2024-01-13', '', 100),
(150, 6, 3, 3, 1, 'xiaomi k60 ultra', 8, 'xiaomi-redmi-k60-ultra-den.jpg.webp', 'xiaomi-redmi-k60-ultra-den.jpg.webp', 'xiaomi-redmi-k60-ultra-den.jpg.webp', '2024-01-13', '', 100),
(151, 6, 3, 4, 1, 'xiaomi 12', 10, 'xiaomi-12-xam_.webp', 'xiaomi-12-xam_.webp', 'xiaomi-12-xam_.webp', '2024-01-13', '', 100),
(152, 6, 3, 5, 1, 'redmi a1', 2, '10053969-dien-thoai-xiaomi-redmi-a1-2gb-32gb-xanh-duong-1.jpg', '10053969-dien-thoai-xiaomi-redmi-a1-2gb-32gb-xanh-duong-1.jpg', '10053969-dien-thoai-xiaomi-redmi-a1-2gb-32gb-xanh-duong-1.jpg', '2024-01-13', '', 100),
(153, 6, 4, 8, 1, 'oppo reno 11f', 8, 'dien-thoai-oppo-reno-11-f.webp', 'dien-thoai-oppo-reno-11-f.webp', 'dien-thoai-oppo-reno-11-f.webp', '2024-01-13', '', 100),
(154, 6, 4, 2, 1, 'oppo a38', 6, 'dien_thoai_oppo_a38_f4e594288b564da3b3b720aaf6b82d64_master.webp', 'dien_thoai_oppo_a38_f4e594288b564da3b3b720aaf6b82d64_master.webp', 'dien_thoai_oppo_a38_f4e594288b564da3b3b720aaf6b82d64_master.webp', '2024-01-13', '', 100),
(155, 6, 4, 2, 1, 'oppo a57', 7, 'ava-a57-gold.webp', 'ava-a57-gold.webp', 'ava-a57-gold.webp', '2024-01-13', '', 100),
(156, 6, 4, 5, 1, 'oppo reno 10', 9, 'oppo-reno101.jpg', 'oppo-reno101.jpg', 'oppo-reno101.jpg', '2024-01-13', '', 100),
(157, 6, 4, 5, 1, 'oppo  a18', 4, '1698932384897_oppo_a18_blue_didongviet_1.webp', '1698932384897_oppo_a18_blue_didongviet_1.webp', '1698932384897_oppo_a18_blue_didongviet_1.webp', '2024-01-13', '', 100),
(158, 6, 4, 3, 1, 'oppo reno 8pro', 9, 'oppo-reno-8-pro-den_85fa7693a6384ce484a945b982cedf23_grande.webp', 'oppo-reno-8-pro-den_85fa7693a6384ce484a945b982cedf23_grande.webp', 'oppo-reno-8-pro-den_85fa7693a6384ce484a945b982cedf23_grande.webp', '2024-01-13', '', 100),
(159, 6, 4, 2, 1, 'oppo fine n3 fold', 20, 'oppo-find-n3-fold-_cd80917cb9224ef08c03f88edb37eb7a_grande.jpg', 'oppo-find-n3-fold-_cd80917cb9224ef08c03f88edb37eb7a_grande.jpg', 'oppo-find-n3-fold-_cd80917cb9224ef08c03f88edb37eb7a_grande.jpg', '2024-01-13', '', 100),
(160, 6, 4, 5, 1, 'oppo reno 11pro', 18, 'oppo-reno11-pro-xanh.jpg.webp', 'oppo-reno11-pro-xanh.jpg.webp', 'oppo-reno11-pro-xanh.jpg.webp', '2024-01-13', '', 100),
(161, 6, 4, 4, 1, 'oppo reno 10 pro', 16, 'oppo-reno10-pro_4_.webp', 'oppo-reno10-pro_4_.webp', 'oppo-reno10-pro_4_.webp', '2024-01-13', '', 100),
(162, 6, 4, 3, 1, 'oppo a98', 8, 'oppo-a98-4g-600x600.jpg', 'oppo-a98-4g-600x600.jpg', 'oppo-a98-4g-600x600.jpg', '2024-01-13', '', 100),
(163, 6, 4, 3, 1, 'oppo reno 8t', 9, 'reno8t.jpg', 'reno8t.jpg', 'reno8t.jpg', '2024-01-13', '', 100),
(164, 6, 4, 3, 1, 'oppo a79', 7, 'a79.webp', 'a79.webp', 'a79.webp', '2024-01-13', '', 100),
(165, 6, 4, 5, 1, 'oppo a78 256gb', 7, 'oppo-a78-256gb_main_965_1020.png.webp', 'oppo-a78-256gb_main_965_1020.png.webp', 'oppo-a78-256gb_main_965_1020.png.webp', '2024-01-13', '', 100),
(166, 6, 4, 7, 1, 'oppo a77s', 11, 'oppo-a77s-8gb-128gb-cty-xtmobile.png', 'oppo-a77s-8gb-128gb-cty-xtmobile.png', 'oppo-a77s-8gb-128gb-cty-xtmobile.png', '2024-01-13', '', 100),
(167, 6, 4, 3, 1, 'oppo a17', 5, 'a17.webp', 'a17.webp', 'a17.webp', '2024-01-13', '', 100),
(168, 6, 1, 1, 1, 'Iphone 4 - 8Gb', 7000, 'apple-iphone-4-.jpg', 'apple-iphone-4-.jpg', 'apple-iphone-4-.jpg', '2024-01-13', '', 97);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `idsize` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`idsize`, `size`) VALUES
(1, 25),
(2, 26),
(3, 27),
(4, 28),
(5, 29),
(6, 30),
(7, 31),
(8, 32),
(9, 33),
(10, 34),
(11, 35),
(12, 36),
(13, 37),
(14, 38),
(15, 39),
(16, 40),
(17, 41),
(18, 42),
(19, 43),
(20, 44),
(21, 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `ho` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `idQuyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`idUser`, `ho`, `ten`, `email`, `diachi`, `gioitinh`, `sodienthoai`, `tendangnhap`, `matkhau`, `idQuyen`) VALUES
(2, 'abc', 'abc', 'abc@gmail.com', 'đà nẵng', 'nam', '091208934734', 'abc', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(3, 'bán', 'hàng', 'banhang@gmail.com', 'đà nẵng', 'nam', '091208934734', 'banhang', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(4, 'Mai', 'Nhựt', 'mvnhut@gmail.com', 'quảng nam', 'nam', '0987765442', 'mainhut', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(5, 'đào', 'nguyên', 'dvnguyen@gmail.com', 'daklak', 'nam', '0987765442', 'daonguyen', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(6, 'tin', 'ngô', 'ngotin@gmail.com', 'Đồng Nai', 'nam', '111111111111', 'ngotin', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(10, 'huynh', 'khoa', 'khoa@gmail.com', 'danang', 'nam', '0708237960', 'khoa@gmail.com', 'cd6b1a3829e9dd68bb3251a1fcaee328', 1),
(11, 'Lan', 'Điệp', 'asd@gmail,com', 'mẹ nhu', 'nam', '0909004753', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(12, 'Lan', 'Điệp', 'lan@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'admin', '4c52321f', 0),
(13, 'Lan', 'Điệp', 'duongnguyen3412@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'admin', '36b3a25e38ed06a8ab2f2cca0e21b873', 0),
(14, 'Lan', 'Điệp', '123khoa@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'admin123', 'a6981e33a285bcc22814edfa61ec5741', 0),
(15, 'thy', 'huỳnh', 'thy@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'thy', '5c159a4a', 0),
(16, 'Lan', 'huỳnh', 'thykhoacomputerdanang@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'khoapro', '350506d2ac20028458c2a7efb1580646', 2),
(17, 'Lan', 'Điệp', 'duongnguyen3412@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'admin1', '36b3a25e38ed06a8ab2f2cca0e21b873', 1),
(18, 'Huynh', 'Điệp', 'bon@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'bon', '0192023a7bbd73250516f069df18b500', 0),
(19, 'le', 'thuận', 'leducthuan112003@gmail.com', 'dn', 'nam', '0702553103', 'thuan', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(20, 'ha', 'hien', 'xikhum223@gmail.com', 'dn', 'nam', '11111111', 'mn', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(21, 'nguyen', 'thuan', 'leducthuan112003@gmail.com', 'qn', 'nam', '11111111', 'haha', '4a7d1ed414474e4033ac29ccb8653d9b', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbanner`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idcolor`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`idgopy`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`),
  ADD KEY `sanpham` (`idSP`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`idKM`);

--
-- Chỉ mục cho bảng `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idLoaiSP`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`idQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLoaiSP` (`idLoaiSP`),
  ADD KEY `idKM` (`idKM`),
  ADD KEY `idcolor` (`idcolor`),
  ADD KEY `idsize` (`idsize`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`idsize`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idQuyen` (`idQuyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `idcolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `gopy`
--
ALTER TABLE `gopy`
  MODIFY `idgopy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `idKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `idQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `idsize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idLoaiSP`) REFERENCES `loaisanpham` (`idLoaiSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idsize`) REFERENCES `size` (`idsize`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`idKM`) REFERENCES `khuyenmai` (`idKM`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
