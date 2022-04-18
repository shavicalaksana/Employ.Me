-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 18, 2022 at 07:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employme`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_pass`, `admin_username`, `first_name`, `last_name`, `admin_type`) VALUES
(1, 'diluc@gmail.com', 'root', 'diluc', 'Diluc', 'Ragnvindr', '1'),
(2, 'mona@gmail.com', 'root', 'mona', 'Habibie', 'Megistus', '2'),
(3, 'fischl@gmail.com', 'root', 'fischl', 'Fischl', 'von Narfidort', '2'),
(4, 'xiangling@gmail.com', 'root', 'xiangling', 'Xiangling', 'Chef', '2');

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(100) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'Super Admin'),
(2, 'Customer Admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(1, 'diluc@gmail.com', 'Fowl Hunter', 'Looking for many fowls, literally on the river near Mondstadt', 'Indonesia', 'Bali', 'Denpasar', 'hunter', '3'),
(2, 'mona@gmail.com', 'Stargazer', 'Stargazing every month, looking for the best star', 'Indonesia', 'Bali', 'Denpasar', 'stargazer', '3'),
(4, 'fischl@gmail.com', 'Gamer', 'Gaming and Review Games', 'Japan', 'Kyoto', 'Kyoto', 'game', '6'),
(5, 'xiangling@gmail.com', 'Gamer Genshin Impact', 'Genshin Player on Teyvat 24 hours', 'Indonesia', 'Riau Islands', 'Daik Lingga', 'game', '6'),
(7, 'diluc@gmail.com', 'php', 'php learner for best job', 'Indonesia', 'Riau Islands', 'Daik Lingga', 'php fresher', '4'),
(8, 'diluc@gmail.com', 'java', 'java experience for lecture', 'Indonesia', 'Bali', 'Denpasar', 'java', '4'),
(9, 'roxy@gmail.com', 'Programming HTML', 'Membuat Website', 'Indonesia', 'Bali', 'Denpasar', 'html', '4'),
(11, 'mona@gmail.com', 'Design Graphic', 'design', 'Afghanistan', 'Badakhshan', 'Darayim', 'design', '3');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `admin`) VALUES
(1, 'Knights of Favonius', 'Fowl Hunter                ', 'mona@gmail.com'),
(2, 'Sara Cooking', 'Chef                ', 'fischl@gmail.com'),
(8, 'Telkom', 'Telkom', 'diluc@gmail.com'),
(10, 'Liyue Harbor', 'Fisher', 'xiangling@gmail.com'),
(11, 'Microsoft', 'Microsoft', 'fischl@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`id`, `email`, `password`, `first_name`, `last_name`, `dob`, `mobile_number`) VALUES
(9, 'hutao@gmail.com', '$2y$10$fHDOHgoVbBs3KwPMm7x4wurpLULX2fs2mPLO3ZfwHwtCZw3n/XLtS', 'Hutao', 'Pyro', '2020-12-31', '081246967464'),
(19, 'sedih@gmail.com', '$2y$10$eTOHXB.g4wA8n3jaZ5o0FOToVYmRBv7eXxoGCYVaCaKtsbaR9SUum', 'Sedih', 'Sekali', '2021-01-10', '12345'),
(20, 'adrian@gmail.com', '$2y$10$1sEcoO2ftmTBYDcXxwfvmuYVT9bIHRzxmIF1ryEtSmeIlO2px1FkG', 'Adrian', 'Suhu', '2021-01-01', '12345'),
(21, 'mona@gmail.com', '$2y$10$iuGbQ49s5OZqYZqYh07Yq.i/588Jqv6S0NZ4Dg5Pa3Zj3TIIT/eXG', 'Mona', 'Megistus', '2020-08-31', '081246967464'),
(22, 'anis@gmail.com', '$2y$10$dD/V.R32ZcsEcfhndh0uc.yh/SmI90CbI06XCBiXfB/dkrchuuyiS', 'Anis', 'Ratu', '2020-12-20', '081246967464'),
(23, 'roxy@gmail.com', '$2y$10$k3Y6LOTF9z/DlVLGm/FLNeOJP9pLzOtylykLER5dtz5yL58ZtLEIS', 'Roxy', 'robot', '2020-12-31', '081234567890'),
(24, 'xingqiu@gmail.com', '$2y$10$O06oDWZjzoTfXru8Wol3mewMk7Ecw6ovfXWtVoF7Gdo4pFNSWyCHm', 'Xingqiu', 'Hydro', '2020-12-25', '081234567890'),
(25, 'laksanashavica.sl@gmail.com', '$2y$10$7AQSq3z6wnHc00aJRDpCHumr3xJ2IEwCfqXUsBwW69Q7pg9XGviva', 'Shavica Ihya Qurata', 'Laksana', '2001-06-12', '081246967464');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `id_job` int(100) NOT NULL,
  `job_seeker` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `first_name`, `last_name`, `dob`, `file`, `id_job`, `job_seeker`, `mobile_number`) VALUES
(22, 'Mona', 'Megistus', '2020-08-31', 'Logo Kiddoclass.png', 5, ' mona@gmail.com ', '081246967464'),
(28, 'Mona', 'Megistus', '2020-08-31', '1d4101cf4cef3a643a34b3cbd62b5ee0_8939612627285261820.png', 2, ' mona@gmail.com ', '081246967464'),
(29, 'Ratu', 'Annisa', '2020-12-20', 'Analyze Worst.docx', 2, ' anis@gmail.com ', '081246967464'),
(30, 'Mona', 'Megistus', '2020-08-31', '5fadebc78954ada4dcc2966ead7fa504_8081757599449974407.png', 9, ' mona@gmail.com ', '081234567890'),
(31, 'Xingqiu', 'Hydro', '2020-12-25', '80642487_111261180219401_8624082294150755039_n.jpg', 5, ' xingqiu@gmail.com ', '081246967464'),
(32, 'xingqiu', 'yuhu', '2021-01-01', 'TA_05311940000013.pdf', 4, ' xingqiu@gmail.com ', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(3, 'java', 'java for experience'),
(4, 'php', 'php for fresher'),
(5, 'python', 'this is for python'),
(6, 'gaming', 'gaming'),
(7, 'Make Up', 'Make up artist'),
(8, 'programming', 'programming web');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `img`, `name`, `dob`, `number`, `email`, `user_email`) VALUES
(5, '1d4101cf4cef3a643a34b3cbd62b5ee0_8939612627285261820.png', 'Mona', '2020-08-31', '081246967464', 'mona@gmail.com', 'mona@gmail.com'),
(6, '3cbe88093800c708bb296fcdcd6e7dcf.png', 'Hutao', '2020-12-25', '081246967464', 'hutao@gmail.com', 'hutao@gmail.com'),
(7, '388-3886501_chibi-nezuko-hd-png-download.png', 'Anis Ratu', '2020-12-20', '082146967464', 'anis@gmail.com', 'anis@gmail.com'),
(8, '1e14f36b4ab72e0a38f9be0c670f992e.jpg', 'Roxy Robot', '2020-12-31', '081234567890', 'roxy@gmail.com', 'roxy@gmail.com'),
(9, '1d4101cf4cef3a643a34b3cbd62b5ee0_8939612627285261820.png', 'xingqiu', '2020-12-25', '081246967464', 'xingqiu@gmail.com', 'xingqiu@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
