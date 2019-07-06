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
(1, 'CTcWr7dbW7rDq7xtnTZPUOeI77Pg00x', '1', 'demo', '1234567', 'demo@demo.com', '16.07.2017 23:21:58', '88.235.106.35', '60479', '140'),

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `o_data`
--
ALTER TABLE `o_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
