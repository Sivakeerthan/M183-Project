-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Jun 2019 um 17:38
-- Server-Version: 10.1.36-MariaDB
-- PHP-Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `m183_lb3`
--
CREATE DATABASE IF NOT EXISTS `m183_lb3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `m183_lb3`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `salt` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`uid`, `uname`, `pw`, `score`, `isAdmin`, `salt`) VALUES
(1, 'Salttest', '$2y$10$Vi6HKgAo1/3M3gxr.uNVJeM/OmLm1B7XH1JNEqXwthTiUgjCpRRJ6', NULL, 0, '?V?x?#\\\r$N?;??c@??ٲ>)l?J##???i????=?B\'X?vI????ǃ~?2b#v\n?t??\0???>]v??\"̻ۢ?ӓ???8|??\'׊???`B?\Z?i??5H???f?P???E???$??X8??P\'΋J???n\r^K???i#?p???h?????ޭ?I?????Cӓ???I?ΕZgA븪~?~╦?౬??w??\ZNZ?Ӕ??d\Z?7#??O???;Ԙ\r???`? ?[U<,0?D???'),
(2, 'Test', '$2y$10$CIv/A/usvbQRnmVSI7F05Os5rqpl.63lsdcv2RpnsYIKKXALjoi2a', NULL, 0, '?Y???????1,+????A?ZK?;????\"Ӿ?GPpY??=C%??3[?\'kah8OoQ??9??ڱk?^?Rs?H?Ҽ?eÝX\'?ĩK??8??\"????j\'N??R]?#?OO.?玼vM??ق????74&V?@YJ?ҁg????sUj\Z	&?`?D???&&?Ʊ??U?3?M???1????uf@?l?????ݡ?????͈?I?>aY????k?R??@Gk?={A?בH?????`@2?\"Z?1˳8>');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
