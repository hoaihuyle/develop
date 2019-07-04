-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2018 at 07:21 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foody_account`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(11) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `lastname`, `email`, `password`, `gender`) VALUES
(6, 'huy', '', 'hoaihuy2011.vn@gmail.com', '25d55ad283aa400af464c76d713c07ad', ''),
(7, 'rin123', '', 'rin@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(8, 'huy', '', 'huy@gmail.com', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(24, ' Nhà hàng', ''),
(27, ' Cafe', ''),
(28, ' Tiệm bánh', ''),
(30, ' Ăn vặt', ''),
(33, ' Buffet', ''),
(34, ' Ăn chay', ''),
(36, ' Shop online', '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8 NOT NULL,
  `shop_id` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `price`, `thumbnail`, `shop_id`) VALUES
(2, 'Trà Sữa Hân Hy', ' ', ' 10.000đ - 32.000đ', 'uploads/tha-om-garden-house_153_858.jpg', '48'),
(3, ' Sweet Kingdom', ' ', ' 10.000đ - 40.000đ', 'uploads/348s_124.jpg', '30'),
(4, ' Bún Riêu Cua & Bánh', ' ', ' 20.000đ - 25.000đ', 'uploads/bunreucua_698.jpg', '30'),
(5, ' Cơm gà', ' ', ' 50.000', 'uploads/foody-mobile-foody-a-hai-com-ga-x-869-635948407399671556_971.jpg', '35'),
(6, ' Cafe  sữa', ' ', ' 15.000', 'uploads/download_890.jpg', '39'),
(7, ' Cafe  sữa sài gòn', ' ', ' 20000', 'uploads/download_10.jpg', '39'),
(8, ' Bún bò huế ', ' ', ' ', 'uploads/1-8515-1516314392_664.jpg', '47'),
(9, ' Chè thập cẩm', ' ', ' ', 'uploads/foody-mobile-foody-che-hem-772-63-901-635840626408572920_949_743.jpg', '52'),
(10, 'Sường nướng tảng', ' ', ' ', '', '54'),
(11, ' Gà luộc ', ' ', ' ', '', '46'),
(12, ' Chè chuối ', ' ', ' ', '', '52'),
(13, ' Bánh Kem ', ' ', ' ', '', '42'),
(14, ' Bánh bông lan', ' ', ' ', '', '41'),
(15, ' Bánh dứa Đài Loan', ' ', ' ', '', '40'),
(16, ' Bánh gạo', ' ', ' ', '', '43'),
(17, ' Bánh xếp chiên', ' ', ' ', '', '40'),
(18, ' Trà đào', ' ', ' ', '', '38'),
(19, ' Cookie ice blend', ' ', ' ', '', '38'),
(20, ' Ngô mỹ chiên bơ', ' ', ' ', '', '30'),
(21, ' Salad Nga', ' ', ' ', '', '30'),
(22, ' Gỏi cuốn tôm thịt', ' ', ' ', '', '31'),
(23, ' Nem hải sản ', ' ', ' ', '', '31'),
(24, ' Cơm cuộn ', ' ', ' ', '', '31'),
(25, ' Bò nướng xiên', ' ', ' ', '', '32'),
(26, ' Chạo tôm ', ' ', ' ', '', '33'),
(27, ' Cánh-đùi gà nướng', ' ', ' ', '', '35'),
(28, ' Rau củ nướng sốt ', ' ', ' ', '', '48'),
(29, 'sữa chua ', ' ', ' 12000', '', '37'),
(30, ' Bánh bột lọc', ' ', ' 10.000', '', '30'),
(31, ' bánh sừng', ' ', ' ', '', '40'),
(32, ' bánh mì nướng muối ', ' ', ' ', '', '44'),
(33, ' bánh tráng trộn', ' ', ' ', '', '33'),
(34, ' bánh trứng chiên', ' ', ' ', '', '54'),
(35, ' cơm cuộn trứng ', ' ', ' ', '', '56'),
(36, ' smothies xoài', ' ', ' ', '', '38'),
(37, '  smothies dâu', ' ', ' ', '', '51');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `area` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(20) CHARACTER SET utf8 NOT NULL,
  `time_open` varchar(20) CHARACTER SET utf8 NOT NULL,
  `price_area` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 NOT NULL,
  `thumbnail` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `area`, `address`, `time_open`, `price_area`, `phone`, `email`, `thumbnail`) VALUES
(30, ' Le Parfum', 'Huế', ' 5 Le Loi Street | L', ' 5:00-24:00', ' 300.000-1.200.000', ' 0872532765', 'Parfum@gmail.com', 'uploads/photo3jpg_822.jpg'),
(31, ' Ancient Hue', '   Huế ', '   104/47 Phu Mong ,', '   6:00-21:00', '   300.000-1.200.000', ' +84 54 3590 356', 'AncientHue@gmail.com', 'uploads/635795824907697182_88_304.jpg'),
(32, ' Junrei Restaurant', ' Huế', '  Carretera Minh Man', '  8:00-22:00', '  200.000-800.000', ' +84 54 3885 461', 'Junrei@gmail.com', ''),
(33, ' Ben Xuan Garden Hou', 'Huế', ' Đường Văn Thánh - V', ' 9:00 - 21:00', ' 70.000-350.000', ' +84 128 768 0960', 'BenXuan@gmail.com', 'uploads/half-moon-court-covered_628.jpg'),
(34, ' Tha Om Garden House', ' Huế', ' ', ' 6:00-24:00', ' 100.000-750.000', ' 84 90 528 58 52', 'ThaOmGardenHouse@gma', 'uploads/tha-om-garden-house_153.jpg'),
(35, ' Nhà Hàng Imperial', '  Huế ', ' 8 Hùng Vương', ' 6:00-21:00', ' 100.000-1.000.000đồ', ' +84 234 3882 222', 'Imperial@gmail.com', 'uploads/photo0jpg_749.jpg'),
(36, 'Tinh Gia Vien', ' Huế', ' 7K/28 Le Thanh Ton', ' 6:00-21:00', ' 100.000-1.000.000đồ', ' +84 128 768 0960', 'vien@gmail.com', 'uploads/binh-hoa-h2_885.png'),
(37, ' Quán cà phê Garden ', ' Huế', ' 1/7 Nguyễn Công Tr', ' 7:00 - 23:00', ' 200.000-2.000.000', ' +84 54 6555 999', 'Gardenriver@gmail.co', 'uploads/confortable-sit-nearby_252.jpg'),
(38, ' Nook Cafe & Bar', ' Huế ', ' 34/7 Nguyễn Tri Phư', ' 6:00-21:00', ' 100.000-1.000.000đồ', ' +84 93 506 97 41', 'Nook@gmail.com', 'uploads/sunny-rooftop-terrace_280.jpg'),
(39, ' Cà phê Vỹ Dạ Xưa', ' Huế', ' 131 Nguyễn Sinh Cun', ' 6:00-24:00', ' 200.000-2.000.000', ' +84 54 3 933 636', 'Vydaxua@gmail.com', 'uploads/ca-phe-vy-da-xua_788.jpg'),
(40, ' Tiệm Bánh Âu Bloom ', 'Huế', ' 18 Kiệt 25 Hai Bà T', ' 07:00 - 22:00 ', ' 5.000đ - 250.000đ', ' +84 128 768 0960', 'BloomCakes@gmail.com', 'uploads/foody-mobile-73-jpg-313-635866399597444233_573.jpg'),
(41, ' Tiệm Bánh Jolie Cui', '  Huế', ' 28 Nguyễn Du', ' 15:00 - 21:0', ' 10.000đ - 200.000đ', ' +84 54 3590 356', 'Cuisine@gmail.com', 'uploads/foody-mobile-banh-jpg-329-636126432990596665_425.jpg'),
(42, ' Tiệm Bánh Yuki', '  Huế', ' 37 Hồ Đắc Di, P. An', ' 06:30 - 22:30', ' 50.000đ - 300.000đ', ' +84 128 768 0960', 'Yuki@gmail.com', 'uploads/foody-mobile-kem-22-jpg-330-636205004416752494_139.jpg'),
(43, ' Tiệm Bánh Hamint Ki', ' Huế', ' 71 Bến Nghé', '  07:00 - 22:0', ' 6.000đ - 300.000đ', ' +84 54 6555 999', 'HamintKitchen@gmail.', 'uploads/foody-mobile-blan-jpg-964-636402863213366494_200.jpg'),
(44, ' Gà Ngủ Cây Nướng - ', ' Huế', ' Trường Chinh', '  08:00 - 22:00 ', ' 99.000đ - 198.000đ', ' +84 54 3 933 636', 'ngucaynuong@gmail.co', 'uploads/foody-mobile-ngu-cay-jpg-658-636422931864559065_150.jpg'),
(45, ' Nắng - Milk Tea And', ' Huế', ' 20/85 An Dương Vươn', '  09:00 - 22:00 ', ' 12.000đ - 120.000đ', ' +84 54 3 933 636', 'nang@gmail.com', 'uploads/foody-mobile-nag-jpg-327-636282944536087307_173.jpg'),
(46, ' Vườn Ngự Hà - Món C', '  Huế', ' 181 Xuân 68, P. Thu', ' 07:00 - 22:00', ' 20.000đ - 80.000đ', ' +84 54 3885 461', 'nguha@gmail.com', 'uploads/foody-mobile-foody-quan-chay-ngu--816-635917395480014637_409.jpg'),
(47, ' Liên Hoa Thư Quán -', ' Huế', ' 3 Lê Quý Đôn', ' 07:00 - 22:00', ' 15.000đ - 55.000đ', '+84123372782', 'thuquan@gmail.com', 'uploads/foody-mobile-picturelist-jpg-292-635810390760023534_308.jpg'),
(48, ' Quán Chay Bà Minh', ' Huế', ' 4 Hàn Thuyên, P. Th', ' 07:00 - 22:00', ' 15.000đ - 55.000đ', ' +84 54 6555 999', 'bminh@gmail.com', 'uploads/foody-mobile-thien-d-jpg-816-636136054245736817_266.jpg'),
(49, ' Nem Chua Rán Khang', '  Huế', ' 131 Ngô Thế Lân', ' 06:30 - 22:00', ' 10.000đ - 22.000đ', ' +84 54 3590 356', 'nemrangkhang@gmail.c', 'uploads/foody-mobile-foody-quan-chay-ngu--816-635917395480014637_880.jpg'),
(50, ' Sasin - Mì Cay 7 Cấ', ' Huế', ' 30 Trường Chinh', '  09:00 - 22:00', ' 15.000đ - 37.000đ', ' +84 54 3590 356', 'sasin@gmail.com', 'uploads/ca-phe-vy-da-xua_15.jpg'),
(51, ' Mô Ri - Fruit Juice', 'Huế', ' 12 Ngô Gia Tự, P. V', '   09:00 - 22:00', ' 8.000đ - 25.000đ', ' +84 54 3 933 636', 'mori@gmail.com', 'uploads/foody-mobile-kem-22-jpg-330-636205004416752494_883.jpg'),
(52, ' Chè Hẻm', ' Huế', ' Số 1 Kiệt 29 Hùng V', '  10:15 - 21:00', ' 7.000đ - 11.000đ', ' +84 1349489192', 'chehem@gmail.com', 'uploads/foody-mobile-foody-che-hem-772-63-901-635840626408572920_949.jpg'),
(53, ' Đô 5K - BBQ Buffet', ' Huế', ' 6 Hà Nội', ' 15:00 - 21:30 ', ' 1.500đ - 55.000đ', ' +84 128 768 0960', 'BBQ@gmail.com', 'uploads/foody-mobile-5k-jpg-190-636265760920959419_383.jpg'),
(54, ' Buffet Vỉa Hè', ' Huế', ' 116 Đinh Tiên Hoàng', ' 10:00 - 22:00  ', ' 6.000đ - 35.000đ', ' +84 128 768 0960', 'viahe@gmail.com', 'uploads/confortable-sit-nearby_117.jpg'),
(55, ' Rice Buffet Restaur', ' Huế', ' 06 Phùng Chí Kiên', ' 10:00 - 21:00', ' 30.000đ - 100.000đ', ' +84 234 3882 222', 'rice@gmail.com', 'uploads/foody-mobile-73-jpg-313-635866399597444233_538.jpg'),
(56, ' Deabu Hotpot', '  Huế', '  8 Lê Quang Đạo', '   09:00 - 22:30  ', '  29.000đ - 79.000đ', ' +84 54 3885 461', 'deabu@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `shop_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`shop_id`, `category_id`) VALUES
(0, 36),
(26, 31),
(27, 27),
(28, 27),
(29, 24),
(30, 24),
(31, 24),
(31, 27),
(31, 28),
(32, 24),
(33, 24),
(34, 24),
(35, 24),
(36, 24),
(37, 27),
(38, 27),
(39, 27),
(40, 28),
(41, 28),
(42, 28),
(43, 28),
(44, 36),
(45, 36),
(46, 34),
(47, 34),
(48, 34),
(49, 30),
(50, 30),
(51, 30),
(52, 30),
(53, 33),
(54, 33),
(55, 33),
(56, 33);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `gender`) VALUES
(28, 'huy', 'le', 'hoaihuy@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Nam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`shop_id`,`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
