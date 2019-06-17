-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Jun 2019 um 13:33
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

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `salt` varchar(256) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`uid`, `uname`, `pw`, `score`, `isAdmin`, `salt`) VALUES
(1, 'Salttest', '$2y$10$Vi6HKgAo1/3M3gxr.uNVJeM/OmLm1B7XH1JNEqXwthTiUgjCpRRJ6', NULL, 0, '?V?x?#\\\r$N?;??c@??ٲ>)l?J##???i????=?B\'X?vI????ǃ~?2b#v\n?t??\0???>]v??\"̻ۢ?ӓ???8|??\'׊???`B?\Z?i??5H???f?P???E???$??X8??P\'΋J???n\r^K???i#?p???h?????ޭ?I?????Cӓ???I?ΕZgA븪~?~╦?౬??w??\ZNZ?Ӕ??d\Z?7#??O???;Ԙ\r???`? ?[U<,0?D???');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
