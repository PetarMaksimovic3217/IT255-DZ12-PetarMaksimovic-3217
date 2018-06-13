-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 02:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `idHotela` int(11) NOT NULL,
  `nazivHotela` varchar(128) NOT NULL,
  `adresaHotela` varchar(128) NOT NULL,
  `brojSoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`idHotela`, `nazivHotela`, `adresaHotela`, `brojSoba`) VALUES
(1, 'Hotel Metropolitan', 'Tadeusa Koscuska 63', 100),
(2, 'Joenna', 'New Hampshire 10W', 300),
(5, 'Jugoslavija', 'Jugoslovenska 31', 500),
(10, 'Slavija', 'Slavijska 1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomname` varchar(255) NOT NULL,
  `tv` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `room_type_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomname`, `tv`, `beds`, `room_type_id`) VALUES
(11, 'Jednokrevetna', 1, 1, '4'),
(12, 'Dvokrevetna', 1, 2, '3'),
(13, 'Trokrevetna', 0, 3, '2'),
(14, 'Apartman', 1, 2, '2'),
(15, 'osmokrevetna', 0, 8, '4'),
(17, '12krevetna', 1, 12, '7'),
(18, '20krevetna', 1, 20, '6'),
(19, '24krevetna', 0, 24, '8');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `name`) VALUES
(1, ''),
(2, 'Executive'),
(3, 'Business'),
(4, 'Leisure'),
(5, 'Perina'),
(6, 'Pericina'),
(7, 'Pericina5'),
(8, 'novi tip'),
(9, 'najnoviji tip');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `token`) VALUES
(15, 'Petar', 'Maksimovic', 'mapet', '2da6a1c5c339d12575e2967e0babd2e6', '9322481c37980173aff14f2d6e7b13adabcb47e1'),
(16, 'zoi', 'korakianiti', 'zojkica', '2da6a1c5c339d12575e2967e0babd2e6', '58fea293775bb5a74e8dfb790361f5d4c93c2098'),
(17, 'Petar', 'Maksimovic', 'Petar', '2da6a1c5c339d12575e2967e0babd2e6', '993cff71d5220947442a40d7adeb3fbcfa95d357'),
(18, 'Petar', 'Maksimovic', 'maksa', '2da6a1c5c339d12575e2967e0babd2e6', '903de8c83ca3c7606645722616ef0764f5d71138'),
(19, 'Marijana', 'Korakianiti', 'makili', 'c30a4443e2f4bd381c9ced059adc6e41', '6223deb2183af765fe901e278a860d1b3b5f3f7c'),
(20, 'MARIJANA', 'Korakianiti', 'makili11', '4f293168bbb54fc9042f4d94f5b249ce', '2830f84fb392cc33605ba07dda9ce7a46b423638'),
(21, 'pericaza', 'periciza', 'pekica', '150a213a5a14b7361e11449db7aeb531', '2ac596d0e09e5669eb89c41925fdc89eaa5838e6'),
(22, 'koje', 'koje', 'kucerak', '2204b01ab76d5980074d5f4c37962952', 'b75ddf03cea0be0f390fa26db9359ada084c3c9c'),
(23, 'maloko', 'maloko', 'maloko', '113df3ba3774d71232e7c1ce93043537', '02dcb05764fcab4fedf398a0f898ea21b9d336c9'),
(24, 'perika', 'perika', 'perika', '557ba9b2432e267a4f3a43c94b391358', 'a8fee687a395fe0a859cd4a0d7b48fbdc98a923a'),
(25, 'marika', 'marika', 'marika', '8ecf7aeecea9b00e1ba22d70695f9c66', '4997712b932d03b1303844fabdbc429543c583be'),
(26, 'fica', 'fica', 'ficatomic', '6f50139bde783114dcc5e0e0ecf98792', 'fb7c8972498b9e95f5c35a12847f922f22f8929c'),
(27, 'marija', 'stefanovic', 'marija', 'cb74c183402afe708a490f0048af6e41', '430eea8c8e1bab100a3e8e9d462a3d810d311d05'),
(28, 'marija5', 'marija5', 'marija5', '2808c6d6e7b4aed69d3390e5ead943a6', '5581bd9a356eb0823056dc811a70758259dce945'),
(29, 'marija', 'marija', 'marija56', '2c5887b9da377b3df218306c7fbae865', '0b84d478c9b21476d4e557f3723f2e8baf991558'),
(30, 'marija567', 'marija567', 'marija567', 'f5f0019bcf34c0f22ad674357ec4f84a', 'fee43a3e5b9a7954b4e563550ca057bada411f59'),
(31, 'marija5678', 'marija5678', 'marija5678', '00151116f9c1245937bea9cb8ef8bf80', '9507eb6a07e6ef6a3d416c29feee14d21373bcb4'),
(32, 'Jelena', 'Krivokapic', 'jeca2', '2da6a1c5c339d12575e2967e0babd2e6', '7c413c87d2dfb3658f0aea8b1c08666e3a84f1d0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotela`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
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
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `idHotela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
