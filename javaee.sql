-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Haz 2018, 10:40:31
-- Sunucu sürümü: 5.7.11
-- PHP Sürümü: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `javaee`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `keyreg` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `active`, `create_date`, `email`, `keyreg`, `name`, `password`, `surname`, `username`) VALUES
(1, b'1', '2018-05-27 10:00:04', 'aonur@yopmail.com', '693a0379-e9a3-49bc-9778-5db08667a6c6', 'Onur2', '1234567', 'Ciner', 'aonur'),
(2, b'0', '2018-05-27 10:32:47', 'bonur@yopmail.com', '468594d6-bbf9-4257-aa0e-7982d8eb6815', 'bonur', '1234567', 'kjasjldk', 'bonur'),
(6, b'1', '2018-05-27 10:36:07', 'donur@yopmail.com', '6475ec5d-0eb5-47c3-adb2-f5893f6c5847', 'donur', '1234567', 'askdasl', 'donur'),
(5, b'0', '2018-05-27 10:35:37', 'conur@yopmail.com', '5de79ba3-4ed5-45cc-aaf6-ae9862326f5f', 'conur', '1234567', 'asdas', 'conur'),
(7, b'0', '2018-05-27 19:12:39', 'aliveli@yopmail.com', 'b23bd822-ee86-40fb-9677-9d1596cfa1ce', 'Ali', '12345678', 'Veli', 'aliveli'),
(8, b'1', '2018-05-27 19:12:41', 'aliveli@yopmail.com', '8b6d5121-6175-4e2e-ba8d-a0f141e3d385', 'Ali', '12345678', 'Veli', 'aliveli');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `note`
--

CREATE TABLE `note` (
  `id` bigint(20) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci,
  `create_date` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `note`
--

INSERT INTO `note` (`id`, `content`, `create_date`, `title`, `user_id`) VALUES
(6, 'Ciner slaidl asildiş as\nasl dlasil das\nlasidlişasldilasildişaslişdisaşld\nalisdilasildiaslid\n', '2018-05-26 19:43:18', 'Onur', 1),
(10, 'vcxvxc vxc vx', '2018-05-27 10:40:59', 'dsfsdf', 6),
(11, 'cvbcvbc bcv b', '2018-05-27 10:41:42', 'dfgdf gdfg vbcvb', 6),
(14, 'jfgghjfgh', '2018-05-27 19:13:41', 'fjgh', 8);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `note`
--
ALTER TABLE `note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
