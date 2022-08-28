-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Ağu 2022, 15:06:40
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `autocomplete`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `property` varchar(500) NOT NULL,
  `image` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `animals`
--

INSERT INTO `animals` (`id`, `title`, `property`, `image`) VALUES
(1, 'panda', 'panda desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3evCww_wnBXe3Ne0bwZFCr5DfpuSdcVP6dUoZCCQ4CuCtabunfyNexLZvAgF51dfrQWk&usqp=CAU'),
(2, 'cat', 'cat desc', 'https://cdnuploads.aa.com.tr/uploads/Contents/2022/08/08/thumbs_b_c_d4be2822f2cd8c64f5206c2b184eeb48.jpg?v=120856'),
(3, 'camel', 'camel desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR76MfuzfX1AYPkiu8icAR5XJt2vw9qqEue9Q&usqp=CAU'),
(4, 'rabbit', 'rabbit desc', 'https://images.ctfassets.net/9l3tjzgyn9gr/photo-112402/cf25fec1eea7ab0665f586b3481e436c/112402-rabbit-lucky-animals-510x600.jpg'),
(5, 'tiger', 'tiger desc', 'https://a-z-animals.com/media/tiger_laying_hero_background.jpg'),
(6, 'cartoon rabbit', 'cartoon rabbit desc', 'https://img.freepik.com/free-vector/white-rabbit-cartoon-white-background_1308-66612.jpg?w=2000');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
