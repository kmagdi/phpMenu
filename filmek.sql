-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Nov 22. 18:47
-- Kiszolgáló verziója: 10.4.16-MariaDB
-- PHP verzió: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `filmek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmek`
--

CREATE TABLE `filmek` (
  `id` int(11) NOT NULL,
  `cim` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `rendezo` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `gyarto` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ev` int(4) NOT NULL,
  `hossz` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmek`
--

INSERT INTO `filmek` (`id`, `cim`, `rendezo`, `gyarto`, `ev`, `hossz`) VALUES
(1, 'Csernobil Öröksége: A zóna', 'Maczelka Márk', 'Magyarország', 2011, 105),
(2, 'Randiügynökség', 'K. Asher Levin', 'Amerikai Egyesült Államok', 2011, 82),
(4, 'Underworld 4.  - Az ébredés', 'Mans Marlind, Björn Stein', 'Amerikai Egyesült Államok', 2011, 100),
(5, 'A védhetetlen', 'Daniel Espinoza', 'Amerikai Egyesült Államok', 2012, 120),
(7, 'A szingli fejvadász', 'Julie Anne Robinson', 'Amerikai Egyesült Államok', 2011, 92),
(8, 'Fogadom', 'Michael Sucsy', 'Amerikai Egyesült Államok', 2012, 104),
(9, 'Együtt az ég alatt', 'Jan Schomburg', 'Németország', 2011, 88),
(10, 'Polisse', 'Maiwenn', 'Franciaország', 2011, 127),
(11, 'Scooby-Doo! Rejtélyek nyomában 2. kötet', 'ismeretlen', 'Amerikai Egyesült Államok', 2010, 86),
(12, 'Tavaszolás Zsebibabával', 'ismeretlen', 'Amerikai Egyesült Államok', 2004, 65),
(13, 'Malacka/a hős', 'ismeretlen', 'Amerikai Egyesült Államok', 2003, 75),
(14, 'Micimackó', 'ismeretlen', 'Amerikai Egyesült Államok', 1977, 74),
(15, 'Borotvaélen', 'Asger leth', 'Amerikai Egyesült Államok', 2012, 102),
(16, 'A vérdíj', 'Ian Fitzgibbon', 'Egyesült Királyság, Írország', 2009, 88),
(17, 'A szerelem művészete', 'Emmanuel Mouret', 'Franciaország', 2011, 85),
(18, 'A skorpiókirály 3. - Harc a megváltásért', 'Roel Reiné', 'Amerikai Egyesült Államok', 2012, 101),
(19, 'Egy hét Marilynnel', 'Simon Curtis', 'Egyesült Királyság', 2011, 99),
(20, 'Susi és Tekergő 2: Csibész/a csavargó', 'ismeretlen', 'Amerikai Egyesült Államok', 2001, 69),
(21, 'Menyasszony csaléteknek', 'Sheree Folkson', 'Egyesült Királyság', 2011, 86),
(22, 'Delfinek és bálnák 3D: Az óceánok lakói', 'Jean-Jacques Mantello', 'Amerikai Egyesült Államok', 2008, 42),
(23, 'Az óceán mesevilága 3D', 'Jean-Jacques Mantello', 'Amerikai Egyesült Államok', 2003, 41),
(24, 'Zsarulesen', 'John Badham', 'Amerikai Egyesült Államok', 1987, 117),
(25, 'Zsarulesen 2.', 'John Badham', 'Amerikai Egyesült Államok', 1993, 108),
(26, 'Egyik kopó/másik eb', 'Roger Spottiswoode', 'Amerikai Egyesült Államok', 1989, 97),
(27, 'Anonymus', 'Roland Emmerich', 'Amerikai Egyesült Államok', 2011, 130),
(28, 'Shame - A szégyentelen', 'Steve McQueen', 'Egyesült Királyság', 2011, 98),
(29, 'The Artist - A némafilmes', 'Michel hazanavicius', 'Franciaország, Belgium, Amerikai Egyesült Államok', 2011, 100),
(30, 'Az ajtó', 'Szabó István', 'Magyarország', 2011, 98),
(31, 'Csempészek', 'Baltasar Kormákur', 'Amerikai Egyesült Államok', 2012, 113),
(32, 'Szilvás csirke', 'Marjane Satrapi, Vincent Paronnaud', 'Amerikai Egyesült Államok', 2011, 93),
(33, 'Elles', 'Malgorzata Szumowska', 'Amerikai Egyesült Államok', 2011, 96),
(34, 'LOL - Zűrös kamaszok', 'Lisa Azuleos', 'Amerikai Egyesült Államok', 2008, 103),
(35, 'TOY BOY - Selyemfiú a pácban', 'David Mackensie', 'Amerikai Egyesült Államok', 2009, 97),
(36, 'Élni vagy halni', 'Luc Campeau', 'Amerikai Egyesült Államok', 2005, 84),
(37, 'A bennfentes', 'Michael Mann', 'Amerikai Egyesült Államok', 1999, 157),
(38, 'Kvíz Show', 'Robert Redford', 'Amerikai Egyesült Államok', 1994, 133),
(39, 'Csillagközi invázió', 'Paul Verhoeven', 'Amerikai Egyesült Államok', 1997, 129),
(40, 'Scooby-Doo! Vámpírmusical', 'David Block', 'Amerikai Egyesült Államok', 2011, 75),
(41, 'Bánk bán', 'Vámos László', 'Magyarország', 1974, 100);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `filmek`
--
ALTER TABLE `filmek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `filmek`
--
ALTER TABLE `filmek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
