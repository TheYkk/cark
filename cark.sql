-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Tem 2018, 12:49:44
-- Sunucu sürümü: 10.1.28-MariaDB
-- PHP Sürümü: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cark`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alici`
--

CREATE TABLE `alici` (
  `id` int(11) NOT NULL,
  `alanid` varchar(255) NOT NULL,
  `oyunid` varchar(255) NOT NULL DEFAULT '999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `alici`
--

INSERT INTO `alici` (`id`, `alanid`, `oyunid`) VALUES
(1, '2', '1'),
(2, '2', ''),
(3, '2', ''),
(4, '2', ''),
(5, '2', ''),
(6, '2', ''),
(7, '2', ''),
(8, '2', '5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `loglar`
--

CREATE TABLE `loglar` (
  `id` int(11) NOT NULL,
  `yapanid` varchar(255) NOT NULL,
  `kzn` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `tarih` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `loglar`
--

INSERT INTO `loglar` (`id`, `yapanid`, `kzn`, `ip`, `tarih`) VALUES
(1, '1', 'oyun oynadı 1 hak eksildi.', '46.2.217.21', '15.07.2017 14:12:48'),
(2, '1', 'oyun oynadı 1 çevirme hakkı kazandı.', '46.2.217.21', '15.07.2017 14:12:48'),
(3, '1', 'oyun oynadı 1 hak eksildi.', '46.2.217.21', '15.07.2017 14:12:56'),
(4, '1', 'oyun oynadı 1 puan kazandı.', '46.2.217.21', '15.07.2017 14:12:56'),
(5, '2', 'oyun oynadı 1 hak eksildi.', '88.235.106.35', '16.07.2017 23:22:44'),
(6, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.235.106.35', '16.07.2017 23:22:44'),
(7, '2', 'oyun oynadı 1 hak eksildi.', '88.235.106.35', '16.07.2017 23:22:57'),
(8, '2', 'oyun oynadı 1 puan kazandı.', '88.235.106.35', '16.07.2017 23:22:57'),
(9, '2', 'oyun oynadı 1 hak eksildi.', '88.243.36.88', '19.07.2017 16:32:31'),
(10, '2', 'oyun oynadı 100 puan kazandı.', '88.243.36.88', '19.07.2017 16:32:31'),
(11, '2', 'oyun oynadı 1 hak eksildi.', '88.243.36.88', '19.07.2017 16:32:54'),
(12, '2', 'oyun oynadı 5 çevirme hakkı kazandı.', '88.243.36.88', '19.07.2017 16:32:54'),
(13, '2', 'oyun oynadı 1 hak eksildi.', '88.243.36.88', '19.07.2017 16:33:02'),
(14, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.243.36.88', '19.07.2017 16:33:02'),
(15, '2', 'oyun oynadı 1 hak eksildi.', '88.243.36.88', '19.07.2017 16:33:08'),
(16, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.243.36.88', '19.07.2017 16:33:08'),
(17, '2', 'oyun oynadı 1 hak eksildi.', '88.243.36.88', '19.07.2017 16:33:14'),
(18, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.243.36.88', '19.07.2017 16:33:14'),
(19, '3', 'oyun oynadı 1 hak eksildi.', '91.93.52.202', '20.07.2017 02:14:22'),
(20, '3', 'oyun oynadı 10 puan kazandı.', '91.93.52.202', '20.07.2017 02:14:22'),
(21, '7', 'oyun oynadı 1 hak eksildi.', '178.241.12.194', '28.07.2017 12:09:40'),
(22, '7', 'oyun oynadı 1 çevirme hakkı kazandı.', '178.241.12.194', '28.07.2017 12:09:40'),
(23, '7', 'oyun oynadı 1 hak eksildi.', '178.241.12.194', '28.07.2017 12:09:51'),
(24, '7', 'oyun oynadı 1 puan kazandı.', '178.241.12.194', '28.07.2017 12:09:51'),
(25, '8', 'oyun oynadı 1 hak eksildi.', '94.122.42.167', '01.08.2017 22:24:54'),
(26, '8', 'oyun oynadı 1 puan kazandı.', '94.122.42.167', '01.08.2017 22:24:54'),
(27, '9', 'oyun oynadı 1 hak eksildi.', '24.133.29.240', '09.08.2017 17:22:40'),
(28, '9', 'oyun oynadı 1 puan kazandı.', '24.133.29.240', '09.08.2017 17:22:40'),
(29, '10', 'oyun oynadı 1 hak eksildi.', '176.88.40.105', '09.08.2017 20:24:33'),
(30, '10', 'oyun oynadı 1 puan kazandı.', '176.88.40.105', '09.08.2017 20:24:33'),
(31, '11', 'oyun oynadı 1 hak eksildi.', '162.217.31.112', '22.08.2017 22:22:30'),
(32, '11', 'oyun oynadı 1 puan kazandı.', '162.217.31.112', '22.08.2017 22:22:30'),
(33, '2', 'oyun oynadı 1 hak eksildi.', '78.167.103.146', '28.08.2017 14:35:15'),
(34, '2', 'oyun oynadı 1 puan kazandı.', '78.167.103.146', '28.08.2017 14:35:15'),
(35, '12', 'oyun oynadı 1 hak eksildi.', '81.213.254.6', '06.09.2017 19:07:12'),
(36, '12', 'oyun oynadı 20 puan kazandı.', '81.213.254.6', '06.09.2017 19:07:12'),
(37, '12', 'oyun oynadı 1 hak eksildi.', '151.135.144.75', '07.09.2017 10:14:52'),
(38, '12', 'oyun oynadı 50 puan kazandı.', '151.135.144.75', '07.09.2017 10:14:52'),
(39, '13', 'oyun oynadı 1 hak eksildi.', '78.182.4.118', '07.09.2017 23:21:49'),
(40, '13', 'oyun oynadı 1 çevirme hakkı kazandı.', '78.182.4.118', '07.09.2017 23:21:49'),
(41, '13', 'oyun oynadı 1 hak eksildi.', '78.182.4.118', '07.09.2017 23:21:59'),
(42, '13', 'oyun oynadı 1 puan kazandı.', '78.182.4.118', '07.09.2017 23:21:59'),
(43, '14', 'oyun oynadı 1 hak eksildi.', '194.27.51.35', '19.09.2017 15:58:36'),
(44, '14', 'oyun oynadı 1 puan kazandı.', '194.27.51.35', '19.09.2017 15:58:36'),
(45, '15', 'oyun oynadı 1 hak eksildi.', '88.236.150.87', '23.09.2017 00:28:23'),
(46, '15', 'oyun oynadı 1 puan kazandı.', '88.236.150.87', '23.09.2017 00:28:23'),
(47, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:21:57'),
(48, '16', 'oyun oynadı 1 çevirme hakkı kazandı.', '95.15.20.196', '28.09.2017 19:21:57'),
(49, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:22:04'),
(50, '16', 'oyun oynadı 1 çevirme hakkı kazandı.', '95.15.20.196', '28.09.2017 19:22:04'),
(51, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:22:10'),
(52, '16', 'oyun oynadı 1 çevirme hakkı kazandı.', '95.15.20.196', '28.09.2017 19:22:10'),
(53, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:22:19'),
(54, '16', 'oyun oynadı 1 çevirme hakkı kazandı.', '95.15.20.196', '28.09.2017 19:22:19'),
(55, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:22:26'),
(56, '16', 'oyun oynadı 1 çevirme hakkı kazandı.', '95.15.20.196', '28.09.2017 19:22:26'),
(57, '16', 'oyun oynadı 1 hak eksildi.', '95.15.20.196', '28.09.2017 19:22:32'),
(58, '16', 'oyun oynadı 1 puan kazandı.', '95.15.20.196', '28.09.2017 19:22:32'),
(59, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 20:57:27'),
(60, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 20:57:27'),
(61, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 20:57:33'),
(62, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 20:57:33'),
(63, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 20:58:11'),
(64, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 20:58:11'),
(65, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 20:58:34'),
(66, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 20:58:34'),
(67, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 20:58:41'),
(68, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 20:58:41'),
(69, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:24'),
(70, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:00:24'),
(71, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:30'),
(72, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:30'),
(73, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:36'),
(74, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:00:36'),
(75, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:44'),
(76, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:44'),
(77, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:45'),
(78, '2', 'oyun oynadı 100 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:45'),
(79, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:47'),
(80, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:47'),
(81, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:48'),
(82, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:48'),
(83, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:49'),
(84, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:00:49'),
(85, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:51'),
(86, '2', 'oyun oynadı 50 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:51'),
(87, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:53'),
(88, '2', 'oyun oynadı 5 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:00:53'),
(89, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:53'),
(90, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:53'),
(91, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:54'),
(92, '2', 'oyun oynadı 100 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:54'),
(93, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:55'),
(94, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:55'),
(95, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:56'),
(96, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:56'),
(97, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:00:56'),
(98, '2', 'oyun oynadı 10 puan kazandı.', '88.237.87.83', '18.11.2017 21:00:56'),
(99, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:04'),
(100, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:04'),
(101, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:05'),
(102, '2', 'oyun oynadı 10 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:05'),
(103, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:06'),
(104, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:06'),
(105, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:07'),
(106, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:07'),
(107, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:07'),
(108, '2', 'oyun oynadı 10 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:07'),
(109, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:19'),
(110, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:19'),
(111, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:20'),
(112, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:20'),
(113, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:33'),
(114, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:33'),
(115, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:34'),
(116, '2', 'oyun oynadı 20 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:34'),
(117, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:36'),
(118, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:36'),
(119, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:37'),
(120, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:39'),
(121, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:39'),
(122, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:40'),
(123, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:40'),
(124, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:41'),
(125, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '88.237.87.83', '18.11.2017 21:01:41'),
(126, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:48'),
(127, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:48'),
(128, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:49'),
(129, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:49'),
(130, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:50'),
(131, '2', 'oyun oynadı 50 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:50'),
(132, '2', 'oyun oynadı 1 hak eksildi.', '88.237.87.83', '18.11.2017 21:01:52'),
(133, '2', 'oyun oynadı 1 puan kazandı.', '88.237.87.83', '18.11.2017 21:01:52'),
(134, '20', 'oyun oynadı 1 hak eksildi.', '176.218.45.107', '08.12.2017 03:10:18'),
(135, '20', 'oyun oynadı 1 çevirme hakkı kazandı.', '176.218.45.107', '08.12.2017 03:10:18'),
(136, '20', 'oyun oynadı 1 hak eksildi.', '176.218.45.107', '08.12.2017 03:10:25'),
(137, '20', 'oyun oynadı 1 puan kazandı.', '176.218.45.107', '08.12.2017 03:10:25'),
(138, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:56:39'),
(139, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 12:56:39'),
(140, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:56:47'),
(141, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 12:56:47'),
(142, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:56:56'),
(143, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 12:56:56'),
(144, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:57:02'),
(145, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 12:57:02'),
(146, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:57:35'),
(147, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:57:44'),
(148, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 12:57:44'),
(149, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:57:53'),
(150, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 12:57:53'),
(151, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:58:02'),
(152, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 12:58:02'),
(153, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 12:58:09'),
(154, '2', 'oyun oynadı 10 puan kazandı.', '::1', '28.07.2018 12:58:09'),
(155, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:15'),
(156, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:23'),
(157, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 13:32:23'),
(158, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:26'),
(159, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:26'),
(160, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:30'),
(161, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:30'),
(162, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:31'),
(163, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:32'),
(164, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:32'),
(165, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:32'),
(166, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:32'),
(167, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:33'),
(168, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 13:32:33'),
(169, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:34'),
(170, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 13:32:34'),
(171, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:35'),
(172, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:35'),
(173, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:36'),
(174, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:36'),
(175, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:37'),
(176, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:37'),
(177, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:38'),
(178, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:38'),
(179, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:39'),
(180, '2', 'oyun oynadı 1 çevirme hakkı kazandı.', '::1', '28.07.2018 13:32:39'),
(181, '2', 'oyun oynadı 1 hak eksildi.', '::1', '28.07.2018 13:32:40'),
(182, '2', 'oyun oynadı 1 puan kazandı.', '::1', '28.07.2018 13:32:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `o_data`
--

CREATE TABLE `o_data` (
  `id` int(11) NOT NULL,
  `puan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `isim` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `o_data`
--

INSERT INTO `o_data` (`id`, `puan`, `isim`) VALUES
(1, '25000', 'Call of Duty: Infinite Warfare '),
(2, '5000', 'Counter-Strike: Global Offensive'),
(3, '4750', 'Euro Truck Simulator 2'),
(4, '4500', 'Rust'),
(5, '3500', 'Rocket League'),
(999, '0', 'GIFT'),
(6, '4000', 'Mount & Blade: Warband');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `kod` varchar(255) NOT NULL,
  `durum` varchar(255) NOT NULL DEFAULT '1',
  `kadi` varchar(255) NOT NULL,
  `ksifre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tarih` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `puan` varchar(255) NOT NULL DEFAULT '0',
  `hak` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `kod`, `durum`, `kadi`, `ksifre`, `email`, `tarih`, `ip`, `puan`, `hak`) VALUES
(1, 'Cn78P0l988oBiaJ3ucWfZ2K52Ey81sW', '1', 'Samsangyepa', '15153535', 'Samsangyepa@gmail.com', '15.07.2017 14:11:20', '46.2.217.21', '1', '156'),
(2, 'CTcWr7dbW7rDq7xtnTZPUOeI77Pg00x', '1', 'demo', '1234567', 'demo@demo.com', '16.07.2017 23:21:58', '88.235.106.35', '60479', '140'),
(3, 'CTOcykoK0BD6Oc1whKiQ22nBH1Hao1z', '1', 'MitiSen', '159357852', 'goktugsolmaz1@gmail.com', '20.07.2017 02:13:36', '91.93.52.202', '10', '151'),
(4, 'C2nY919537zd0ztT8aPoCr715aN5WKB', '1', 'swortbreak', 'deneme123', 'blabla@gmail.com', '25.07.2017 01:23:07', '176.55.118.77', '0', '147'),
(5, 'C9h5vN119c107NnIJ3Jk3lBL5Cr9QD8', '1', 'demodemo', 'demodemo', 'demodemo@demodemo.com', '26.07.2017 01:29:53', '78.184.211.238', '0', '146'),
(6, 'CjVFk1W60TJjCfgaQBZ4HA8lc3FA50y', '1', '111111', '111111', '111111@gmail.com', '28.07.2017 12:04:47', '178.241.12.194', '0', '144'),
(7, 'C42A5NOP6TOxGyYWw96i5p42669T1p3', '1', 'halit47', '111111', 'nezewujive@golemico.com', '28.07.2017 12:07:04', '178.241.12.194', '1', '143'),
(8, 'C8k5Vb0C4Z8b8Mijt6459N2BB7weiRJ', '1', 'asdfdsa', '12369874', 'asdf@asdf.com', '01.08.2017 22:24:28', '94.122.42.167', '1', '139'),
(9, 'CQ2jMN73ysxVJY0S2AFUx9j61I856Oc', '1', 'theapeiron', '112358', 'theapeiron@gmail.com', '09.08.2017 17:22:00', '24.133.29.240', '1', '131'),
(10, 'C7Lc8Q2i7fjRRK0P98Dng0BVj6j19Bf', '1', 'cimcimes', 'PEYY2969', 'anlkosar@hotmail.com.tr', '09.08.2017 20:24:09', '176.88.40.105', '1', '131'),
(11, 'CpBG3DvvXBI6lg5B3QCqMl58Sb0zM66', '1', 'sametkoc', 'samet123', 'sametkoc461@gmail.com', '22.08.2017 22:21:59', '162.217.31.112', '1', '118'),
(12, 'CW28PMmH633t0Z379d95K3nY7321734', '1', 'shadowstr', '123456', 'emre.aras@gmail.com', '06.09.2017 19:06:43', '81.213.254.6', '70', '103'),
(13, 'CszZklaBi6j3aEwo80t57xrqy650S4E', '1', 'tav', 'asd123', 'tav@hotmail.com', '07.09.2017 23:20:41', '78.182.4.118', '1', '103'),
(14, 'C40ckUJ308JL085GmxP344ca9s251Lt', '1', 'emreozdes', '425477', 'emreozdes@windowslive.com', '19.09.2017 15:57:46', '194.27.51.35', '1', '91'),
(15, 'CVCuMmckvoY4e1W7WCfntqv7w2mpWey', '1', 'wapane', '344150', 'tubitaks@gmail.com', '23.09.2017 00:27:58', '88.236.150.87', '1', '87'),
(16, 'CZ804QtSPct0H6J56IVR70Rw7dG0Lbz', '1', 'test66', '123123', 'gokhanaktinet@hotmail.com', '28.09.2017 19:20:55', '95.15.20.196', '1', '82'),
(17, 'C64e5263q97522J1pb70454y2hbfBUU', '1', 'erdal', '0025682', 'erdalatas@windowslive.com', '26.10.2017 11:56:02', '78.168.84.191', '0', '55'),
(18, 'CTK30C190dtcZpjFcqA55Fu8ytwauO2', '1', 'ersdal27', '123456', 'erdalatas127@gmail.com', '26.10.2017 12:01:00', '78.168.84.191', '0', '55'),
(19, 'CqXe0rcA43k99DHL3894a84hbVUpffE', '1', 'deneme38', '123456789', 'deneme@hotmail.com', '28.11.2017 17:21:36', '94.123.97.57', '0', '22'),
(20, 'C18rk65Ia9HDcqQodw5YwEDH778wqL4', '1', 'Majestic', '296635', 'onurkabuss@gmail.com', '08.12.2017 03:09:36', '176.218.45.107', '1', '11');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `alici`
--
ALTER TABLE `alici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `loglar`
--
ALTER TABLE `loglar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `o_data`
--
ALTER TABLE `o_data`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `alici`
--
ALTER TABLE `alici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `loglar`
--
ALTER TABLE `loglar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Tablo için AUTO_INCREMENT değeri `o_data`
--
ALTER TABLE `o_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
