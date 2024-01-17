-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2023 lúc 03:03 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

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
(1, 'đọ.jpg'),
(2, 'đọ1.jpg'),
(3, 'đọ 2.jpg');

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
(16, 'admin01@gmail.com', 'anhkhoa3103', 'xin chào ', 'xin chào', 1);

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
(24, 16, 4, 1738, 1, 2, '2023-10-02');

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
(1, 'Không', 0, '0000-00-00', '0000-00-00'),
(2, 'Sản phẩm mới', 30, '0000-00-00', '0000-00-00'),
(3, 'Khuyến mãi đầu năm', 30, '0000-00-00', '0000-00-00'),
(4, 'Khuyến mãi cuối năm', 30, '0000-00-00', '0000-00-00'),
(5, 'Khuyến', 30, '0000-00-00', '0000-00-00');

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
(1, '24/7', '19it4@gmail.com', 'vku@vku.udn.vn', 'Làng Đại học, Đà Nẵng', 'Khoa Công Nghệ Thông Tin & Truyền Thông - Đại Học Đà Nẵng VKU', 787700624, 123456789);

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
(1, 'Xe', 'wave-50cc-don-nhe-di-hoc-30-1476676123-58044a1be250e.jpg'),
(2, 'Xe Số ', 'Xefun.vn-_-Dream-đỏ-siêu-keng.jpg'),
(3, 'Xe Ga', 'xe-vario-150-do-kieng-dep-voi-2-phuoc-giam-xoc-matris-cuc-chat-sieu-dang-cap-02.jpg'),
(4, 'Xe PKL', 'anh-pkl.jpg');

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
(1, 1, 1, 1, 1, 'XE MÁY SYM ANGELA 50CC SƠN MỜ', 835, '2.jpg', '2.1.jpg', '2.2.jpg', '2020-12-15', '', 9),
(2, 1, 3, 1, 1, 'VARIO 150', 999, '5.jpg', '5.1.jpg', '5.2.jpg', '2020-12-16', '<p><strong>Vario 150 mới&nbsp;</strong>với&nbsp;thiết kế mạnh mẽ đến từ đ&agrave;n anh lớn CBR250RR mang phong c&aacute;ch&nbsp;thể thao, hầm hố, hiện đại hơn như những mẫu xe tương lai với m&agrave;u sắc kh&aacute; nổi bật.&nbsp;Tổng thể thiết kế&nbsp;<s', 46),
(3, 1, 3, 1, 1, 'Xe máy Honda Air Blade 160', 986, '', '', '', '2020-12-15', '', 48),
(4, 1, 2, 1, 1, 'Honda WINNER X Bạc Đen Xanh - Đặc Biệt', 869, '4.jpg', '4.1.jpg', '4.2.jpg', '2020-12-15', '<ul><li><p>Khối lượng bản th&acirc;n</p><p>122kg</p></li><li>&nbsp;</li><li><p>D&agrave;i x Rộng x Cao</p><p>2.019 x 727 x 1.104 mm</p></li><li>&nbsp;</li><li><p>Khoảng c&aacute;ch trục b&aacute;nh xe</p><p>1.278 mm</p></li><li>&nbsp;</li><li><p>Độ cao y&', 42),
(5, 1, 2, 1, 1, 'XE YAMAHA EXCITER 150 2023', 999, '3.jpg', '3.1.jpg', '3.2.jpg', '2020-12-09', '<p>Về thiết kế, Exciter 150 lu&ocirc;n được nhớ đến với một diện mạo v&ocirc; c&ugrave;ng ấn tượng, mang phong c&aacute;ch thể thao mạnh mẽ. Mẫu xe được đ&aacute;nh gi&aacute; cao nhờ sở hữu vẻ ngo&agrave;i mạnh mẽ v&agrave; nam t&iacute;nh, kết hợp c&ugr', 7),
(6, 1, 4, 1, 1, 'MULTISTRADA V4 PIKES PEAK', 999, '8.jpg', '8.1.jpg', '8.2.jpg', '2020-12-23', '<p><strong>Ducati Multistrada V4 Pikes Peak |&nbsp;<a href=\"https://giaxe.2banh.vn/ducati/multistrada-v4-pikes-peak.html\">Gi&aacute; xe Multistrada V4 Pikes Peak</a>&nbsp;| Xe moto Pkl Ducati Multistrada V4 Pikes Peak | Gi&aacute; xe Multistrada V4 Pikes ', 50),
(7, 1, 3, 1, 1, 'XE MÁY 50CC SIRIUS RC', 990, '', '', '', '2020-12-15', '', 5),
(8, 1, 4, 1, 1, 'Z1000', 999, '7.jpg', '7.1.jpg', '7.2.jpg', '2020-12-15', '<p>Gi&aacute;</p><p>Chi Ph&iacute;</p><p><a href=\"https://www.autofun.vn/xe-may-tra-gop/xe-kawasaki-z1000\">Trả G&oacute;p</a></p><p>Th&ocirc;ng số kỹ thuật quan trọng</p><p>Thương hiệu</p><p>D&ograve;ng xe</p><p>C&ocirc;ng suất tối đa(PS)</p><p>Năm sản xu', 49);

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
(2, 'abc', 'abc', 'abc@gmail.com', 'đà nẵng', 'nam', '091208934734', 'abc', '827ccb0eea8a706c4c34a16891f84e7b', 0),
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
(18, 'Huynh', 'Điệp', 'bon@gmail.com', 'mẹ nhu', 'nam', '0909004753', 'bon', '0192023a7bbd73250516f069df18b500', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `gopy`
--
ALTER TABLE `gopy`
  MODIFY `idgopy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `idKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `idsize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
