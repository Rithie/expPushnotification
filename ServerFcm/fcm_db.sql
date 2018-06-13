-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2018 lúc 02:01 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fcm_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fcm_info`
--

CREATE TABLE `fcm_info` (
  `id` int(255) NOT NULL,
  `token` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fcm_info`
--

INSERT INTO `fcm_info` (`id`, `token`) VALUES
(1, 'cimy-IhsPac:APA91bGdppNEZRQl-ab5945tkhlcAjtIkZqUvoMMhvJWKQMHCJgaUyOs013o9eNAYKx7UU7Bz_wUH5aqxa2m8mSfEakhDyq8uRg8YIA--206_UdtpXD9T5UP-J4o6FfV4jePb9X1ibBL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fcm_notifi`
--

CREATE TABLE `fcm_notifi` (
  `id` int(255) NOT NULL,
  `title` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fcm_notifi`
--

INSERT INTO `fcm_notifi` (`id`, `title`, `body`) VALUES
(2, 'title message', 'body message'),
(3, 'Notification Title', 'Message content'),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `fcm_info`
--
ALTER TABLE `fcm_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fcm_notifi`
--
ALTER TABLE `fcm_notifi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `fcm_info`
--
ALTER TABLE `fcm_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `fcm_notifi`
--
ALTER TABLE `fcm_notifi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
