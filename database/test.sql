-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2019 at 03:31 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `MTEC_TEST`
--

-- --------------------------------------------------------

--
-- Table structure for table `esp8266`
--

CREATE TABLE `esp8266` (
  `id` int(11) NOT NULL,
  `temp` int(11) NOT NULL,
  `day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(50) NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `button_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `Token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `device_id`, `button_time`, `Token`) VALUES
(1, '2323', '2019-06-12 17:00:00.000000', '23222212323'),
(23, '1', '2019-06-25 17:00:00.000000', '22133443434'),
(90, '9990', '2019-06-27 17:00:00.000000', '555'),
(89890, '989809', '2019-06-27 17:00:00.000000', '9989898'),
(89891, '', '2019-06-27 17:00:00.000000', ''),
(89892, '', '2019-06-27 17:00:00.000000', ''),
(89893, '', '2019-06-27 17:00:00.000000', ''),
(89894, '', '2019-06-27 17:00:00.000000', ''),
(89895, '', '2019-06-27 17:00:00.000000', ''),
(89896, '', '2019-06-27 17:00:00.000000', ''),
(89897, '', '2019-06-27 17:00:00.000000', ''),
(89898, '', '2019-06-27 17:00:00.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_id` int(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'hello', 'oo', '50000', 'tomjar', '123456789'),
(2, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(3, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(5, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(6, 'hello', 'oo', '50000', 'tomjar', '123456789'),
(7, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(8, 'hello', 'oo', '50000', 'tomjar', '123456789'),
(9, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(10, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(11, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(12, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(13, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(14, 'undefined', ';lkl;klklkkl', 'pp@bb', 'lkllklk', '1234567'),
(15, 'naratorn', 'boonpea,', 'naratorn_152@hotmail.com', 'tomjawhoon', '123456789'),
(16, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', '12345678'),
(17, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', 'fdfdf'),
(18, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', 'kkk'),
(19, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', 'vvvvv'),
(20, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', 'tomtom'),
(21, 'tomtom', '1111', 'naratorn_152@hotmail.com', 'jawhoon', 'nnn'),
(22, 'lljlk', 'lkl;k', 'tom@hotmail.com', ';lk;lk', '12345'),
(23, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'naratorn_tom', '12345'),
(24, '', '', '', '', ''),
(25, 'นาย นราทร', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'jawhoon', '123456789'),
(26, 'นาย นราทร', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '1'),
(27, 'naratorn', 'boonpeam', 'tomjawhoon@hotmail.com', 'tomjawhoon', '111111111'),
(28, '', '', '', '', ''),
(29, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '111111111'),
(30, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '111111111'),
(31, 'tomjaw', 'tomtom', 'tomjawhoon@hotmail.com', 'tomjawhoon', '111111111'),
(32, 'นาย นราทร', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tomtomtomzaza', '111111111'),
(33, 'tomjawhoonq', 'boonpeam', 'test4@hotmail.com', 'tomjawhoob11111', '1111111111'),
(34, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tomjawhoon11111111', '123456789'),
(35, 'นาย นราทร', 'บุญเปี่ยม', 'parn_6740@hotmail.com', '5935512042', '111111111'),
(36, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'jawhoonza', '1111111111111'),
(37, 's', '', '', '', ''),
(38, 's', '', '', '', ''),
(39, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tom', '1'),
(40, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tom', '1'),
(41, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tetet', '1'),
(42, '', '', '', '', ''),
(43, '', '', '', '', ''),
(44, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '', ''),
(45, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', ''),
(46, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '123'),
(47, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '123'),
(48, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'naratorn_tom', '123'),
(49, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'naratorn_tom', '123'),
(50, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'naratorn_tom', '123'),
(51, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '1'),
(52, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '1'),
(53, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '123'),
(54, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tetet11', '11'),
(55, '', '', '', '', ''),
(56, 'hello', 'oo', '7777777', 'tomjar', '123456789'),
(57, 'นาย นราทร', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tetet222', '123'),
(58, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '5935512088', '12345'),
(59, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'tomjawhoon', '111111111'),
(60, 'Er', 'Ty', 'nan@hotmail', 'Ton', ''),
(61, 'นาย นราทร', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', 'g', '1'),
(62, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '', ''),
(63, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '', ''),
(64, 'นาย', 'บุญเปี่ยม', 'naratorn_152@hotmail.com', '', ''),
(65, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `esp8266`
--
ALTER TABLE `esp8266`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `esp8266`
--
ALTER TABLE `esp8266`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89899;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
