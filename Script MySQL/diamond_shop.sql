-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 05:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamond_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

DROP TABLE IF EXISTS `billdetail`;
CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL,
  `id_bills` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `quanty`, `total`, `id_bills`) VALUES
(1, 1, 1, 200000, 5),
(2, 2, 1, 200000, 5),
(3, 5, 2, 400000, 5),
(4, 6, 1, 200000, 5),
(5, 18, 1, 200000, 6),
(6, 15, 4, 800000, 6),
(7, 2, 1, 200000, 7),
(8, 5, 1, 200000, 7),
(9, 8, 3, 600000, 7),
(10, 7, 1, 200000, 8),
(11, 30, 1, 200000, 8),
(12, 16, 1, 200000, 9),
(13, 8, 1, 200000, 10),
(14, 18, 1, 200000, 11),
(15, 2, 1, 200000, 12),
(16, 2, 1, 200000, 13),
(17, 5, 1, 200000, 13),
(18, 10, 1, 200000, 14);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(3, 'phuongloan322000@gmail.com', '0923588447', 'Trần Thị Phương Loan', 'Hue', 0, 0, '0'),
(4, 'phuongloan322000@gmail.com', '', 'Trần Thị Phương Loan', 'Hue', 0, 0, '0'),
(5, 'phuongloan322000@gmail.com', '', 'Trần Thị Phương Loan', 'Hue', 0, 0, 'a'),
(6, 'phuongloan322000@gmail.com', '+84923588447', 'Trần Thị Phương Loan', 'Hue', 0, 0, 'a'),
(7, 'phuongloan322000@gmail.com', '09666342343', 'Trần Thị Phương Loan', 'Đà Nẵng', 0, 0, 'b'),
(8, 'phuongloan322000@gmail.com', '1', 'Trần Thị Phương Loan', 'Hue', 0, 0, '2'),
(9, 'phuongloan322000@gmail.com', '1', 'Trần Thị Phương Loan', 'Hue', 0, 0, '1'),
(10, 'phuongloan322000@gmail.com', '+84923588447', 'Trần Thị Phương Loan', 'Hue', 0, 0, '1'),
(11, 'khoavida@gmail.com', '+84794878044', 'khoa', 'khoa le', 0, 0, '123'),
(12, 'phuongloan322000@gmail.com', '1', 'Trần Thị Phương Loan', 'Hue', 0, 0, '1'),
(13, 'phuongloan322000@gmail.com', '+84923588447', 'Trần Thị Phương Loan', 'Hue', 0, 0, ''),
(14, 'phuongloan322000@gmail.com', '+84923588447', 'Trần Thị Phương Loan', 'Hue', 200000, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Vòng tay', NULL),
(2, 'Đồng hồ', NULL),
(3, 'Nhẫn', NULL),
(4, 'Dây chuyền', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `id_product` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `id_product`, `name`, `code`, `img`, `type`) VALUES
(1, 1, 'Vàng', '#FFFF00', 'vong10.png', 'NULL'),
(2, 2, 'Xanh', '#FFFF00', 'vong16.png', 'NULL'),
(3, 2, 'Vàng', '#FFFF00', 'vong14.png', 'NULL'),
(4, 4, 'Xanh', '#FFFF00', 'vong10.png', 'NULL'),
(5, 5, 'Vàng', '#FFFF00', 'vong12.png', 'NULL'),
(6, 6, 'Vàng', '#FFFF00', 'vong13.jpg', 'NULL'),
(7, 7, 'Vàng', '#FFFF00', 'vong14.png', 'NULL'),
(8, 8, 'Vàng', '#FFFF00', 'vong16.png', 'NULL'),
(9, 9, 'Vàng', '#FFFF00', 'vong16.png', 'NULL'),
(10, 10, 'Vàng', '#FFFF00', 'vong17.png', 'NULL'),
(11, 11, 'Vàng', '#FFFF00', 'vong10.png', 'NULL'),
(12, 12, 'Vàng', '#FFFF00', 'vong12.png', 'NULL'),
(13, 13, 'Vàng', '#FFFF00', 'vong13.jpg', 'NULL'),
(14, 14, 'Vàng', '#FFFF00', 'dongho2.jpg', 'NULL'),
(15, 15, 'Vàng', '#FFFF00', 'dongho2.jpg', 'NULL'),
(16, 16, 'Vàng', '#FFFF00', 'dongho3.jpg', 'NULL'),
(17, 17, 'Vàng', '#FFFF00', 'dongho2.jpg', 'NULL'),
(18, 18, 'Vàng', '#FFFF00', 'vong3.png', 'NULL'),
(19, 19, 'Vàng', '#FFFF00', 'vong4.png', 'NULL'),
(20, 20, 'Vàng', '#FFFF00', 'vong5.png', 'NULL'),
(21, 21, 'Vàng', '#FFFF00', 'vong6.png', 'NULL'),
(22, 22, 'Vàng', '#FFFF00', 'vong7.png', 'NULL'),
(23, 23, 'Vàng', '#FFFF00', 'nhantinh1.png', 'nhan3.mp4'),
(24, 24, 'Vàng', '#FFFF00', 'vong9.png', 'NULL'),
(25, 25, 'Vàng', '#FFFF00', 'vong10.png', 'NULL'),
(26, 27, 'Trắng', '1', 'nhantinh11.png', 'nhan11.mp4'),
(28, 28, 'Nhan 28', '#000000', 'nhantinh12.png', 'nhan12.mp4'),
(29, 30, 'Vang', '#FFFF00', 'vong10.png', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `name`, `title`, `content`) VALUES
(1, 'phuongloan322000@gmail.com', 'Trần Thị Phương Loan', '', ''),
(2, 'phuongloan322000@gmail.com', 'Trần Thị Phương Loan', '1', '1'),
(3, '', '', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, '', '', '', ''),
(14, '', '', '', ''),
(15, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '11', ''),
(16, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1', ''),
(17, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '123', ''),
(18, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', 'hỏi đáp', ''),
(19, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', 'hỏi đáp', ''),
(20, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1', ''),
(21, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '3', ''),
(22, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '121', ''),
(23, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '121', ''),
(24, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1ưq', 'ư'),
(25, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1ưq', 'ư'),
(26, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(27, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(28, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(29, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(30, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(31, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(32, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(33, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(34, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(35, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(36, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(37, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(38, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(39, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(40, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(41, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(42, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '313`1', ''),
(43, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '313`1', ''),
(44, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '313`1', ''),
(45, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '313`1', ''),
(46, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '313`1', ''),
(47, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '2121', 'a'),
(48, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '21213', ''),
(49, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '11', ''),
(50, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1311', ''),
(51, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '3243', ''),
(52, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', 'w', '1313'),
(53, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan2', '31321', ''),
(54, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '2121', ''),
(55, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '31', ''),
(56, '', '', '', ''),
(57, '123@123', '123', '123', '123'),
(58, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '123', '123'),
(59, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', '213'),
(60, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '123', '12321'),
(61, '23421213@12321', 'Tran Thi Phuong Loan', '123', ''),
(62, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', 'hỏi đáp', ''),
(63, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '1', ''),
(64, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '123', ''),
(65, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '213', ''),
(66, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '21`', ''),
(67, 'phuongloan322000@gmail.com', 'Tran Thi Phuong Loan', '133`', '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`) VALUES
(1, 'Trang chủ', '/trang-chu'),
(2, 'Sản phẩm', '/tat-ca-san-pham'),
(3, 'So sánh', '/so-sanh'),
(4, 'Giỏ hàng', '/gio-hang'),
(5, 'Bài viết', '/bai-viet'),
(6, 'Liên hệ', '/lien-he');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(11) NOT NULL,
  `id_user` bigint(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `detail` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `size`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'L,S,M', 'Manicure & Pedicure', 200000, 0, 'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...', 1, 0, '<h4>Product Information</h4>\r\n						<table class=\"table table-striped\">\r\n							<tbody>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Color:</td>\r\n									<td class=\"techSpecTD2\">Black</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Style:</td>\r\n									<td class=\"techSpecTD2\">Apparel,Sports</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Season:</td>\r\n									<td class=\"techSpecTD2\">spring/summer</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Usage:</td>\r\n									<td class=\"techSpecTD2\">fitness</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Sport:</td>\r\n									<td class=\"techSpecTD2\">122855031</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Brand:</td>\r\n									<td class=\"techSpecTD2\">Shock Absorber</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>\r\n						<p>Raw denim you probably haven\'t heard of them jean shorts\r\n							Austin. Nesciunt tofu stumptown aliqua, retro synth master\r\n							cleanse. Mustache cliche tempor, williamsburg carles vegan\r\n							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher\r\n							synth. Cosby sweater eu banh mi, qui irure terry richardson ex\r\n							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis\r\n							cardigan american apparel, butcher voluptate nisi qui.</p>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(2, 1, 'L,S,M', 'Vòng tay 1', 200000, 0, 'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, 'L,S,M', 'Vòng tay kim cương', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, 'L,S,M', 'Vòng tay bạc', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, 'L,S,M', 'Vòng tay sang chảnh', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, 'L,S,M', 'Vòng tay màu bạc', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, 'L,S,M', 'Lắc tay đẹp', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, 'L,S,M', 'Vòng thủ thủy', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, 'L,S,M', 'Vòng kim cang', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, 'L,S,M', 'Vòng tay ngọc trai', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 1, 'L,S,M', 'Vòng tay đá quý', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 1, 'L,S,M', 'Vòng tay may mắn', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 1, 'L,S,M', 'Vòng tay hạt xoàn', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 2, 'L,S,M', 'Đồng hồ sang chảnh', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 2, 'L,S,M', 'Đồng hồ quý hiếm', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 2, 'L,S,M', 'Đồng hồ đá quý', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 2, 'L,S,M', 'Đồng hồ kim cương quý', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 1, 'L,S,M', 'Vòng may mắn quý hiếm', 200000, 0, '', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(20, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(21, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 3, 'L,S,M', 'Nhẫn kim cương đá trắng', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(26, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(27, 3, 'L,S,M', 'Nhẫn hạt hồng đính đá', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(28, 3, 'L,S,M', 'Nhẫn cưới kim cương trắng', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(30, 1, 'L', 'Vòng tay', 200000, 1, '1', 1, 1, 'Vong', '2021-08-10 10:32:36', '2021-08-10 10:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(6, 'slide3.PNG', 'Tran Phuong Loan', 'Don’t cry because it’s over, smile because it happened. '),
(7, 'slide2.PNG', 'Tran Phuong Loan A', 'In three words I can sum up everything I’ve learned about life: it goes on'),
(8, 'slide1.PNG', 'Tran Phuong Loan B', 'To live is the rarest thing in the world. Most people exist, that is all.'),
(9, 'slide4.PNG', 'Tran Phuong Loan C', 'Good friends, good books, and a sleepy conscience: this is the ideal life. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(87, 'phuongloan322000@gmail.com2', '1 ', '1 ', '1 '),
(88, 'phuongloan322000@gmail.com3', '$2a$12$7YlTTZua8RD.JfGHDXYFR.t8s7HSLG92.GvY3zOaVfiszvjk/fK1K', 'Trần Thị Phương Loan33', 'DN'),
(89, 'phuongloan322000@gmail.comssa', '$2a$12$ENxZRMCrppHbLkBOjusSAeXV1I.L3KAMlVFunqdZxXrS8sKrBwQHq', 'Trần Thị Phương Loan', 'Hue'),
(90, 'phuongloan322000@gmail.com1', '$2a$12$LLd2mPJcIE9IBOwSv/pdo.Vd6XbQu6dqQs5IKEjCsIc/ZNnQrCQtu', 'Trần Thị Phương Loan111222', 'Hue1'),
(91, 'phuongloan322000@gmail.coma', '$2a$12$OWwG9vVLivPwlua.CESzS.QX7kJP5weSUB9MZRd5oypYDHjR0rqlW', 'Trần Thị Phương Loan', 'Huea'),
(92, 'phuongloan3322000@gmail.com', '$2a$12$ky8SACPsaW/19I/ZBPWj7Oj4JCzPsp5xyarSJ8urQvKHfE9A0XBt.', 'Trần Thị Phương Loan', 'Hue'),
(93, 'phuongloan322000@gmail.com', '$2a$12$3J5TpOgI17dJgwb.a3HmuurlgEBsSNppEo46XepZLdAdMcILWbm6.', 'Trần Thị Phương Loan', 'Hue'),
(94, 'khoa@khoa', '$2a$12$pXLiZeqcApWAiQoeOB0lMeiD.Nm.Ih.Q6.oecPH7fSwfJI9jmZ8YK', 'khoa', 'khoa le'),
(95, 'hacker@hack', '$2a$12$aK.UOTm9dbtZfZ8WClmpV.4tcgUYWs54ncqvYHFE7oKB84YVbF8ai', '123', '123'),
(96, 'phuon21gloan322000@gmail.com', '$2a$12$s1sETHXt1Jp10wPWjwzoSuqC3IIqmj30XAgVsXxp76jhmtc6rF8Ky', 'Trần Thị Phương Loan A', 'Hà nội'),
(97, 'phuongloan322000@gmail.com5', '$2a$12$mKHroxYQGLXXUWZWAtlpC.nMtFv7SyAYoJx.CYy42dhmk5O7wGeQq', 'Trần Thị Phương Loan', 'Ho Chi Minh'),
(98, '', '$2a$12$n7fPbi/G8AFOyq5c5MhCp.Hv5uVVPk1i2sGBXLHD11pu75WpapAHe', '', ''),
(99, 'phuongloan322000@gmail.com1111111', '$2a$12$xHgoWWClHUQVzOhUHRBdZu9y/u3FC3g0zzOJ1i6YMrT2wFYOAYnqS', '123456', 'Hue'),
(100, 'phu1111ongloan322000@gmail.com', '$2a$12$CNItUUyvXQ67Gpj3jFc2AuqEiRvNOFJGVRfVLxoPVz5fS5lIs1S2i', '111111', 'Hue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_2` (`id_product`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`),
  ADD KEY `id_color` (`id_color`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`);

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_color`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
