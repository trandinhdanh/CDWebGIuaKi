-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2023 lúc 06:06 PM
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
-- Cơ sở dữ liệu: `booking_tours`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `id_cus` int(11) NOT NULL,
  `id_tour` int(11) NOT NULL,
  `departure_date` datetime DEFAULT NULL,
  `no_adults` int(11) NOT NULL,
  `no_children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `id_cus`, `id_tour`, `departure_date`, `no_adults`, `no_children`) VALUES
(0, 0, 1, '2023-04-13 00:00:00', 2, 2),
(1, 1, 3, '2023-04-29 00:00:00', 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `email`, `phone`) VALUES
(0, 'đình', '152 abc phường 1', 'abc@gmail.com', '0188542321'),
(1, 'Hiếu', '123 abc phường 8', 'hieu@gmail.com', '0162587456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `days` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `transportation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` double NOT NULL,
  `departure_schedule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id`, `name`, `description`, `days`, `transportation`, `price`, `departure_schedule`) VALUES
(1, 'Nha Trang', 'Ngày 01(Thứ sáu): PHỐ BIỂN NHA TRANG Tham quan suối Hoa Lan, Khám Phá Mê Cung Trận Đồ, Chèo thuyền, ngắm cảnh trên Hồ nghìn xuân - Thủy Tiên. KDL Hòn Lao - Đảo Khỉ. Tham gia chương trình giải trí tại Vinpearl Land. Ngày 02(Chủ nhật): Nha Trang - Sài Gòn (tàu lửa) Tham quan Tháp Bà Ponagar. Chùa Long Sơn. Ngắm cảnh Hòn Chồng, núi Cô Tiên, Khu du lịch suối khoáng nóng Tháp Bà. Ăn tối, xe đưa quý khách ra ga Nha Trang khởi hành về Sài Gòn bằng tàu lửa. Kết thúc chuyến tham quan, hẹn ngày gặp lại.', '2 ngày 2 đêm', 'Tàu lửa', 1540000, 'Thứ 6 và CN'),
(2, 'TP.HCM - PHÚ QUỐC', 'Tặng tour đảo ( Hòn Rỏi - Hòn Dừa ): : quý khách được trải nghiệm một ngày ra khơi đầy thú vị để tận tay câu cá và lặn ngắm san hô\r\nVinWonder - Safari - GrandWorld: Công viên chủ đề với muôn ngàn trò chơi , Thành phố Không ngủ  và vườn thú bán hoang dã lớn nhất Phú Quốc \r\nCáp treo Hòn Thơm: là cáp treo vượt biển dài nhất Đông Nam Á cùng với Aquatopia Water Park – công viên nước hiện đại nhất Đông Nam Á\r\nCơ Sở Sản Xuất Rượu Sim: tham quan vườn sim, thưởng thức thử rượu sim, mật sim hoặc có thể mua về làm quà cho người thân\r\nDinh Cậu: nơi linh thiêng và tâm linh nhất của người dân trên đảo\r\nChợ Đêm Dinh Cậu: là nơi hoạt động mua sắm và vui chơi được diễn ra mỗi tối ở Phú Quốc\r\nKhu Nuôi Cấy Ngọc Trai: là nơi quý khách có thể tận mắt xem các nghệ nhân lấy ngọc từ các con trai\r\nDi Tích Lịch Sử Nhà Lao Cây Dừa: là nơi tái hiện lại cảnh bộ đội nước ta chịu các hình phạt tàn khốc ở nhà tù của quân xâm lược\r\nBãi Sao: là bãi biển đẹp nhất của Phú Quốc với đường bờ biển dài kết hợp với cát trắng và mịn\r\nSuối Tranh: cũng như tên gọi của nó là dòng suối được tự nhiện ban tặng đẹp như tranh vẽ\r\nNhà thùng nước mắm: nơi sản suất và đóng gói tạo ra các chai nước mắm mang thương hiệu trứ danh của Phú Quốc\r\nLàng Chài Hàm Ninh: là lãng chài lâu đời ở Phú Quốc \r\nVườn Hồ Tiêu: quý khách sẽ được tham quan và tìm hiểu về nghề trồng hồ tiêu ở Phú Quốc\r\nChùa Hộ Quốc: được mệnh danh là Thiền Viện Phương Nam ', '3 ngày 2 đêm', 'Máy bay', 5990000, 'Thứ 6, thứ 7 và CN'),
(3, 'Đà Lạt', 'Chinh phục thác Datanla 7 tầng với vẻ đẹp hoang sơ, hùng vỹ nổi tiếng nhất Đà Lạt. Trải nghiệm loạt trò chơi mạo hiểm, thử sức với máng trượt dài nhất Đông Nam Á.\r\nChiêm ngưỡng kiến trúc độc đáo của chùa Linh Phước.\r\nSăn mây, chiêm ngưỡng vẻ đẹp thơ mộng tại đồi chè Cầu Đất.\r\nKhám phá cánh đồng hoa Cẩm Tú Cầu,  cánh đồng hoa ở Tà Nùng đầy mê hoặc. Sống ảo cháy máy với những bối cảnh tuyệt vời tại đây.\r\nTham quan trang trại cún, vui đùa chụp hình cùng những em cún dễ thương. Một điểm đến thú vị nhất cho ai thích những “người bạn bốn chân” trong tour Đà Lạt 4 ngày 3 đêm.\r\nGiao lưu văn hóa cùng người đồng bào tại núi LangBiang. Ngắm nhìn thành phố Đà Lạt ngàn hoa từ độ cao trên 2000m.\r\nCheck in cổng trời thứ 2 của Đà Lạt tại Đà Lạt View. Lưu lại những bức ảnh tuyệt đẹp với những bối cảnh được đầu tư công phu.\r\nKhám phá ngôi làng cổ tích, lạc vào thế giới của những câu chuyện cổ xưa. Khám phá những ngôi nhà tí hon của người lùn, những khung cảnh nên thơ huyền ảo.\r\nChiêm ngưỡng hàng trăm loài hoa quý hiếm tại làng hoa Vạn Thành. Khám phá quy trình trồng hoa, rau củ và trái cây chất lượng cao.', '4 ngày 3 đêm', 'Xe ô tô/máy bay', 2790000, 'Thứ 5 hàng tuần'),
(4, 'TP. HCM -  ĐẢO BÌNH HƯNG', 'Chạm tay đến “Maldives Việt Nam”\r\nBình Hưng là một mảnh ghép không thể thiếu trong bức tranh tứ bình mà thiên nhiên đặc biệt ưu đãi cho Nha Trang. Nằm ẩn dưới chân đèo trên cung đường biển Vĩnh Hy – Bình Tiên, hòn đảo xinh đẹp hiện ra với hang đá nước ngọt rất đặc biệt, làn nước trong xanh nhìn rõ những dải san hô tuyệt đẹp bên dưới, bãi biển thoai thoải với nhiều tảng đá hình thù, màu sắc sinh động, kiểu dáng phong phú, có những tảng đá còn phủ kín rêu xanh. Du khách sẽ được thưởng thức những món hải sản tươi ngon nhất vừa được đánh bắt từ biển về, ngoài ra còn món tôm hùm trứ danh bởi nơi này còn nổi tiếng với nghề nuôi tôm hùm. Cùng iVIVU khám phá ngay hôm nay!', '2 ngày 2 đêm', 'Ô tô / Máy bay/ xe khách', 3425000, '30/4/2023'),
(5, 'Đảo Phú Quý Huyền Thoại', 'Đảo ngọc giữa lòng đại dương, Đảo Phú Qúy còn hoang sơ được thiên nhiên ưu ái nên có rất nhiều cảnh quan, yên bình, bãi biển cát trắng đẹp mê lòng người, Bãi Nhỏ, Gành Hang, Vịnh Triều Dương, Phong Điện, Hải Đăng...các điểm cho du khách trải nghiệm tuyệt vời và khó quên. Phú Qúy còn mang đậm dấu ấn các di tích lịch sử, văn hóa hấp dẫn và đầy tiềm năng. Ngoài ra, Phú Qúy còn sở hữu các resort, các khu nghỉ dưỡng sang trọng từ bình dân đến cao cấp luôn thích hợp cho mọi du khách. Người dân trên đảo thân thiện và nhịp sống hiền hòa cũng là điều hấp dẫn du khách.\r\nNếu đã từng một lần du lịch đảo Phú Quý, du khách sẽ dễ dàng bị “đánh gục” bởi sự hoang sơ đầy quyến rũ của hòn đảo thuộc tỉnh Bình Thuận này:\r\n\r\n- Núi Cao Cát được người dân đảo gọi là núi thiêng do có tượng Phật Quán Thế Âm Bồ Tát nằm ngay trên đỉnh núi.\r\n\r\n- Phong Điện là nơi lý tưởng của các tín đồ check in ưa thích với những cánh quạt phong điện trắng toát, khổng lồ.\r\n\r\n- Vịnh Triều Dương là khoảng thời gian thích hợp nhất để bạn đắm mình trong làn nước biển xanh trong mát lạnh, những con sóng vỗ nhẹ tạo cảm giác thư giãn thích thú và dễ chịu.', '3 ngày 2 đêm', 'Máy bay', 4290000, 'Thứ 2, thứ 5 và CN');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
