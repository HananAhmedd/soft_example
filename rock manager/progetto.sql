-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Giu 22, 2014 alle 18:47
-- Versione del server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `progetto`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `acquisti`
--

CREATE TABLE IF NOT EXISTS `acquisti` (
  `ID_Acquisto` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Fornitore` int(11) DEFAULT NULL,
  `ID_MateriaPrima` int(11) DEFAULT NULL,
  `NFatturazione` varchar(8) NOT NULL DEFAULT '',
  `Data` date DEFAULT NULL,
  `PUnitario` float DEFAULT NULL,
  `Quantita` int(11) NOT NULL,
  `PTotale` float DEFAULT NULL,
  `Tipo_Pagamento` varchar(30) DEFAULT NULL,
  `Note` varchar(70) NOT NULL,
  PRIMARY KEY (`ID_Acquisto`),
  KEY `forn` (`ID_Fornitore`),
  KEY `acq` (`ID_MateriaPrima`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `acquisti`
--

INSERT INTO `acquisti` (`ID_Acquisto`, `ID_Fornitore`, `ID_MateriaPrima`, `NFatturazione`, `Data`, `PUnitario`, `Quantita`, `PTotale`, `Tipo_Pagamento`, `Note`) VALUES
(1, 1, 1, '47851', '2010-04-07', 15, 21, 300, 'Contanti', 'Nessuna'),
(2, 1, 1, '47416', '2014-07-13', 15, 30, 300, 'Assegno', 'Nessuna'),
(3, 1, 2, '47851', '2012-11-13', 18, 40, 450, 'Contanti', 'Nessuna'),
(4, 1, 1, '47963', '2012-05-14', 12, 12, 118, 'Assegno', 'nessuna'),
(5, 1, 1, '47102', '2013-02-15', 1.5, 70, 150, 'Contanti', 'Nessuna '),
(6, 1, 1, '47131', '2001-04-12', 1.5, 61, 130, 'Assegno', 'Nessuna '),
(7, 1, 2, '48754', '2015-04-22', 25, 31, 300, 'Contante', 'Nessuna '),
(8, 1, 2, '12478', '2014-07-15', 16, 10, 450, 'Contanti', 'Nessuna'),
(9, 1, 2, '14732', '2014-05-14', 10, 51, 500, 'Assegno', 'Nessuna');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE IF NOT EXISTS `clienti` (
  `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT,
  `Ragione_Sociale` varchar(25) DEFAULT NULL,
  `P_IVA` varchar(11) DEFAULT NULL,
  `C_Fiscale` varchar(16) DEFAULT NULL,
  `Indirizzo` varchar(30) DEFAULT NULL,
  `Citta` varchar(15) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Telefono2` varchar(15) DEFAULT NULL,
  `Note` varchar(70) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`ID_Cliente`, `Ragione_Sociale`, `P_IVA`, `C_Fiscale`, `Indirizzo`, `Citta`, `CAP`, `Telefono`, `Telefono2`, `Note`) VALUES
(1, 'Costruzioni S.r.l', '41782412', '', 'via Franco Alati, 14', 'Reggio Calabria', '89065', '342-1798445', '', 'nessuna');

-- --------------------------------------------------------

--
-- Struttura della tabella `fornitori`
--

CREATE TABLE IF NOT EXISTS `fornitori` (
  `ID_Fornitore` int(11) NOT NULL AUTO_INCREMENT,
  `Ragione_Sociale` varchar(25) DEFAULT NULL,
  `P_IVA` varchar(11) DEFAULT NULL,
  `C_Fiscale` varchar(16) DEFAULT NULL,
  `Indirizzo` varchar(30) DEFAULT NULL,
  `Citta` varchar(15) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Telefono2` varchar(15) DEFAULT NULL,
  `Note` varchar(70) NOT NULL,
  PRIMARY KEY (`ID_Fornitore`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `fornitori`
--

INSERT INTO `fornitori` (`ID_Fornitore`, `Ragione_Sociale`, `P_IVA`, `C_Fiscale`, `Indirizzo`, `Citta`, `CAP`, `Telefono`, `Telefono2`, `Note`) VALUES
(1, 'Sabbia S.r.l', '4754125478', '', 'Via reggio, 54', 'Bova Superiore', '89065', '', '', 'nessuna'),
(2, 'ItalCementi S.p.A.', '4754125968', '', 'Via Umberto II,154/b', 'Milano', '62050', '038-412514', '', 'Nessuno');

-- --------------------------------------------------------

--
-- Struttura della tabella `logacc`
--

CREATE TABLE IF NOT EXISTS `logacc` (
  `Numero` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(15) NOT NULL,
  `Data` timestamp NOT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

--
-- Dump dei dati per la tabella `logacc`
--

INSERT INTO `logacc` (`Numero`, `Username`, `Data`) VALUES
(1, 'Username', '2014-06-14 12:31:06'),
(2, 'Username', '2014-06-14 12:32:47'),
(3, 'Username', '2014-06-14 12:32:48'),
(4, 'Username', '2014-06-14 13:35:25'),
(5, 'Username', '2014-06-14 13:36:03'),
(6, 'Username', '2014-06-14 13:37:04'),
(7, 'Username', '2014-06-14 13:38:48'),
(8, 'Username', '2014-06-14 13:40:30'),
(9, 'Username', '2014-06-14 13:40:44'),
(10, 'Username', '2014-06-14 13:40:58'),
(11, 'Username', '2014-06-14 13:41:09'),
(12, 'Username', '2014-06-14 13:42:35'),
(13, 'Username', '2014-06-14 13:46:40'),
(14, 'Username', '2014-06-14 13:59:02'),
(15, 'Username', '2014-06-14 14:00:13'),
(16, 'Username', '2014-06-14 14:39:49'),
(17, 'Username', '2014-06-14 14:46:50'),
(18, 'Username', '2014-06-14 14:48:04'),
(19, 'Username', '2014-06-14 14:53:35'),
(20, 'Username', '2014-06-14 15:10:28'),
(21, 'Username', '2014-06-14 15:10:30'),
(22, 'Username', '2014-06-14 15:10:57'),
(23, 'Username', '2014-06-14 15:11:23'),
(24, 'Username', '2014-06-14 15:13:05'),
(25, 'Username', '2014-06-14 15:24:24'),
(26, 'Username', '2014-06-14 15:25:19'),
(27, 'Username', '2014-06-14 15:28:57'),
(28, 'Username', '2014-06-14 15:30:09'),
(29, 'Username', '2014-06-14 15:32:32'),
(30, 'Username', '2014-06-14 15:33:16'),
(31, 'Username', '2014-06-14 15:35:02'),
(32, 'Username', '2014-06-14 15:36:49'),
(33, 'Username', '2014-06-14 15:37:31'),
(34, 'Username', '2014-06-14 15:38:21'),
(35, 'Username', '2014-06-14 15:39:14'),
(36, 'Username', '2014-06-14 15:40:47'),
(37, 'Username', '2014-06-14 15:42:00'),
(38, 'Username', '2014-06-14 15:51:35'),
(39, 'Username', '2014-06-14 15:55:23'),
(40, 'Username', '2014-06-14 15:56:16'),
(41, 'Username', '2014-06-14 15:59:11'),
(42, 'Username', '2014-06-14 16:00:32'),
(43, 'Username', '2014-06-14 16:01:30'),
(44, 'Username', '2014-06-14 16:02:14'),
(45, 'Username', '2014-06-14 16:04:41'),
(46, 'Username', '2014-06-14 16:15:27'),
(47, 'Username', '2014-06-14 16:17:02'),
(48, 'Username', '2014-06-14 16:25:14'),
(49, 'Username', '2014-06-14 16:27:11'),
(50, 'Username', '2014-06-14 16:28:14'),
(51, 'Username', '2014-06-14 16:28:27'),
(52, 'Username', '2014-06-15 16:42:47'),
(53, 'Username', '2014-06-15 16:44:21'),
(54, 'Username', '2014-06-15 16:44:50'),
(55, 'Username', '2014-06-15 16:45:31'),
(56, 'Username', '2014-06-15 16:49:21'),
(57, 'Username', '2014-06-15 16:49:48'),
(58, 'Username', '2014-06-15 16:52:21'),
(59, 'Username', '2014-06-15 16:54:41'),
(60, 'Username', '2014-06-15 16:54:55'),
(61, 'Username', '2014-06-15 17:00:59'),
(62, 'Username', '2014-06-15 17:01:16'),
(63, 'Username', '2014-06-15 17:05:37'),
(64, 'Username', '2014-06-15 17:07:24'),
(65, 'Username', '2014-06-15 17:07:47'),
(66, 'Username', '2014-06-15 17:12:09'),
(67, 'Username', '2014-06-15 17:12:31'),
(68, 'Username', '2014-06-15 17:13:55'),
(69, 'Username', '2014-06-15 17:14:15'),
(70, 'Username', '2014-06-15 17:17:15'),
(71, 'Username', '2014-06-15 17:20:25'),
(72, 'Username', '2014-06-15 17:24:19'),
(73, 'Username', '2014-06-15 17:24:43'),
(74, 'Username', '2014-06-15 17:25:27'),
(75, 'Username', '2014-06-15 17:26:04'),
(76, 'Username', '2014-06-15 17:26:21'),
(77, 'Username', '2014-06-15 17:28:24'),
(78, 'Username', '2014-06-15 17:28:38'),
(79, 'Username', '2014-06-15 17:28:53'),
(80, 'Username', '2014-06-15 17:29:13'),
(81, 'Username', '2014-06-15 17:29:29'),
(82, 'Username', '2014-06-15 17:30:54'),
(83, 'Username', '2014-06-15 17:31:18'),
(84, 'Username', '2014-06-15 17:32:28'),
(85, 'Username', '2014-06-15 17:33:06'),
(86, 'Username', '2014-06-15 17:36:04'),
(87, 'Username', '2014-06-15 17:36:35'),
(88, 'Username', '2014-06-15 17:37:04'),
(89, 'Username', '2014-06-15 17:37:20'),
(90, 'Username', '2014-06-15 17:38:33'),
(91, 'Username', '2014-06-15 17:39:00'),
(92, 'Username', '2014-06-15 17:43:50'),
(93, 'Username', '2014-06-15 17:44:08'),
(94, 'Username', '2014-06-15 17:45:28'),
(95, 'Username', '2014-06-15 17:45:53'),
(96, 'Username', '2014-06-15 17:46:06'),
(97, 'Username', '2014-06-15 17:47:51'),
(98, 'Username', '2014-06-15 17:48:25'),
(99, 'Username', '2014-06-15 17:48:43'),
(100, 'Username', '2014-06-15 18:28:26'),
(101, 'Username', '2014-06-15 18:28:37'),
(102, 'Username', '2014-06-15 18:28:58'),
(103, 'Username', '2014-06-15 18:30:55'),
(104, 'Username', '2014-06-15 18:31:10'),
(105, 'Username', '2014-06-15 18:32:35'),
(106, 'Username', '2014-06-15 18:32:50'),
(107, 'Username', '2014-06-15 18:33:13'),
(108, 'Username', '2014-06-15 18:34:32'),
(109, 'Username', '2014-06-15 18:36:09'),
(110, 'Username', '2014-06-15 18:36:26'),
(111, 'Username', '2014-06-15 18:37:02'),
(112, 'Username', '2014-06-15 18:37:24'),
(113, 'Username', '2014-06-15 18:37:36'),
(114, 'Username', '2014-06-15 19:14:24'),
(115, 'Username', '2014-06-15 19:15:00'),
(116, 'Username', '2014-06-15 19:15:46'),
(117, 'Username', '2014-06-15 19:16:31'),
(118, 'Username', '2014-06-15 19:18:11'),
(119, 'Username', '2014-06-15 19:19:37'),
(120, 'Username', '2014-06-15 19:20:15'),
(121, 'Username', '2014-06-15 19:22:58'),
(122, 'Username', '2014-06-15 19:26:34'),
(123, 'Username', '2014-06-15 19:27:44'),
(124, 'Username', '2014-06-15 19:28:12'),
(125, 'Username', '2014-06-15 19:28:58'),
(126, 'Username', '2014-06-15 19:29:31'),
(127, 'Username', '2014-06-15 19:41:09'),
(128, 'Username', '2014-06-15 19:42:48'),
(129, 'Username', '2014-06-15 19:45:01'),
(130, 'Username', '2014-06-15 19:46:16'),
(131, 'Username', '2014-06-15 19:50:23'),
(132, 'Username', '2014-06-15 19:50:55'),
(133, 'Username', '2014-06-15 19:51:26'),
(134, 'Username', '2014-06-15 19:51:47'),
(135, 'Username', '2014-06-15 19:53:05'),
(136, 'Username', '2014-06-16 08:05:26'),
(137, 'Username', '2014-06-16 08:11:25'),
(138, 'Username', '2014-06-16 08:13:18'),
(139, 'Username', '2014-06-16 08:13:43'),
(140, 'Username', '2014-06-16 08:13:58'),
(141, 'Username', '2014-06-16 08:14:44'),
(142, 'Username', '2014-06-16 08:15:14'),
(143, 'Username', '2014-06-16 08:19:16'),
(144, 'Username', '2014-06-16 08:20:41'),
(145, 'Username', '2014-06-16 08:21:13'),
(146, 'Username', '2014-06-16 08:22:13'),
(147, 'Username', '2014-06-16 08:23:10'),
(148, 'Username', '2014-06-16 08:23:56'),
(149, 'Username', '2014-06-16 08:24:55'),
(150, 'Username', '2014-06-16 08:25:48'),
(151, 'Username', '2014-06-16 08:26:49'),
(152, 'Username', '2014-06-16 08:34:55'),
(153, 'Username', '2014-06-16 08:35:27'),
(154, 'Username', '2014-06-16 08:35:54'),
(155, 'Username', '2014-06-16 08:36:59'),
(156, 'Username', '2014-06-16 08:39:55'),
(157, 'Username', '2014-06-16 08:40:19'),
(158, 'Username', '2014-06-16 08:40:49'),
(159, 'Username', '2014-06-16 08:43:09'),
(160, 'Username', '2014-06-16 08:43:49'),
(161, 'Username', '2014-06-16 08:44:37'),
(162, 'Username', '2014-06-16 08:51:04'),
(163, 'Username', '2014-06-16 08:53:42'),
(164, 'Username', '2014-06-16 08:59:55'),
(165, 'Username', '2014-06-16 09:00:39'),
(166, 'Username', '2014-06-16 09:02:49'),
(167, 'Username', '2014-06-16 09:03:14'),
(168, 'Username', '2014-06-16 09:03:54'),
(169, 'Username', '2014-06-16 09:04:18'),
(170, 'Username', '2014-06-16 09:09:04'),
(171, 'Username', '2014-06-16 09:10:32'),
(172, 'Username', '2014-06-16 09:12:31'),
(173, 'Username', '2014-06-16 09:14:18'),
(174, 'Username', '2014-06-16 09:14:38'),
(175, 'Username', '2014-06-16 09:16:56'),
(176, 'Username', '2014-06-16 09:17:09'),
(177, 'Username', '2014-06-16 09:17:24'),
(178, 'Username', '2014-06-16 09:18:43'),
(179, 'Username', '2014-06-16 09:18:59'),
(180, 'Username', '2014-06-16 09:20:21'),
(181, 'Username', '2014-06-16 09:21:57'),
(182, 'Username', '2014-06-16 09:22:07'),
(183, 'Username', '2014-06-16 09:22:31'),
(184, 'Username', '2014-06-16 09:23:38'),
(185, 'Username', '2014-06-16 09:23:50'),
(186, 'Username', '2014-06-16 09:24:01'),
(187, 'Username', '2014-06-16 09:28:15'),
(188, 'Username', '2014-06-16 09:28:41'),
(189, 'Username', '2014-06-16 09:31:05'),
(190, 'Username', '2014-06-16 09:31:27'),
(191, 'Username', '2014-06-16 09:31:54'),
(192, 'Username', '2014-06-16 09:32:42'),
(193, 'Username', '2014-06-16 09:34:36'),
(194, 'Username', '2014-06-16 09:36:25'),
(195, 'Username', '2014-06-16 09:37:57'),
(196, 'Username', '2014-06-16 09:39:57'),
(197, 'Username', '2014-06-16 09:42:15'),
(198, 'Username', '2014-06-16 09:43:18'),
(199, 'Username', '2014-06-16 09:45:16'),
(200, 'Username', '2014-06-16 09:46:27'),
(201, 'Username', '2014-06-16 09:48:08'),
(202, 'Username', '2014-06-19 14:32:08');

-- --------------------------------------------------------

--
-- Struttura della tabella `logmod`
--

CREATE TABLE IF NOT EXISTS `logmod` (
  `ID_Modifica` int(11) NOT NULL AUTO_INCREMENT,
  `Utente` varchar(15) NOT NULL,
  `TabMod` varchar(15) NOT NULL,
  `ID_Campo` varchar(15) NOT NULL,
  `Tipo` varchar(15) NOT NULL,
  `Data` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Modifica`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dump dei dati per la tabella `logmod`
--

INSERT INTO `logmod` (`ID_Modifica`, `Utente`, `TabMod`, `ID_Campo`, `Tipo`, `Data`) VALUES
(1, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-14 13:37:15'),
(2, 'Username', 'Clienti', '1', 'Modifica', '2014-06-14 13:42:49'),
(3, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-14 13:46:47'),
(4, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 15:35:24'),
(5, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 15:37:01'),
(6, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 15:37:41'),
(7, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 15:38:35'),
(8, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 15:39:33'),
(9, 'Username', 'Acquisti', '9', 'Modifica', '2014-06-14 15:40:54'),
(10, 'Username', 'Acquisti', '8', 'Modifica', '2014-06-14 15:51:45'),
(11, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 15:55:33'),
(12, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 15:56:24'),
(13, 'Username', 'Acquisti', '8', 'Modifica', '2014-06-14 15:59:19'),
(14, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 16:00:39'),
(15, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-14 16:01:38'),
(16, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 16:04:49'),
(17, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 16:15:40'),
(18, 'Username', 'Ordini', '3', 'Modifica', '2014-06-14 16:15:48'),
(19, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-14 16:17:11'),
(20, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-14 16:25:23'),
(21, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-14 16:27:19'),
(22, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-15 19:15:56'),
(23, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-15 19:16:44'),
(24, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-15 19:18:31'),
(25, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-15 19:29:08'),
(26, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-15 19:29:40'),
(27, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-15 19:43:02'),
(28, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-15 19:45:10'),
(29, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-15 19:47:16'),
(30, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-15 19:50:30'),
(31, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-15 19:51:02'),
(32, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 08:06:20'),
(33, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 08:11:44'),
(34, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 08:15:23'),
(35, 'Username', 'Acquisti', '8', 'Modifica', '2014-06-16 09:28:25'),
(36, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-16 09:28:50'),
(37, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 09:31:37'),
(38, 'Username', 'Produzione', '4', 'Modifica', '2014-06-16 09:32:15'),
(39, 'Username', 'Produzione', '4', 'Modifica', '2014-06-16 09:32:55'),
(40, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 09:34:57'),
(41, 'Username', 'Acquisti', '8', 'Modifica', '2014-06-16 09:36:35'),
(42, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 09:38:09'),
(43, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-16 09:38:27'),
(44, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 09:38:38'),
(45, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 09:40:08'),
(46, 'Username', 'Acquisti', '6', 'Modifica', '2014-06-16 09:40:55'),
(47, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-16 09:42:22'),
(48, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 09:42:38'),
(49, 'Username', 'Acquisti', '4', 'Modifica', '2014-06-16 09:44:22'),
(50, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 09:45:42'),
(51, 'Username', 'Acquisti', '7', 'Modifica', '2014-06-16 09:46:36'),
(52, 'Username', 'Acquisti', '8', 'Modifica', '2014-06-16 09:46:49'),
(53, 'Username', 'Ordini', '2', 'Modifica', '2014-06-16 09:48:26'),
(54, 'Username', 'Acquisti', '5', 'Modifica', '2014-06-19 14:32:42');

-- --------------------------------------------------------

--
-- Struttura della tabella `materie_prime`
--

CREATE TABLE IF NOT EXISTS `materie_prime` (
  `ID_MateriaPrima` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(20) DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `Q_Disponibile` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_MateriaPrima`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `materie_prime`
--

INSERT INTO `materie_prime` (`ID_MateriaPrima`, `Nome`, `Costo`, `Q_Disponibile`) VALUES
(1, 'Sabbia', 1.52, 198),
(2, 'Cemento', 0.57, 224);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE IF NOT EXISTS `ordini` (
  `ID_Ordine` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int(11) DEFAULT NULL,
  `ID_Prodotto` int(11) DEFAULT NULL,
  `N_Fattura` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `P_Unitario` float DEFAULT NULL,
  `Quantita` int(11) DEFAULT NULL,
  `PTotale` float DEFAULT NULL,
  `Data_Pagamento` date DEFAULT NULL,
  `Tipo_Pagamento` varchar(30) DEFAULT NULL,
  `Note` varchar(70) NOT NULL,
  PRIMARY KEY (`ID_Ordine`),
  KEY `clie` (`ID_Cliente`),
  KEY `prod` (`ID_Prodotto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`ID_Ordine`, `ID_Cliente`, `ID_Prodotto`, `N_Fattura`, `Data`, `P_Unitario`, `Quantita`, `PTotale`, `Data_Pagamento`, `Tipo_Pagamento`, `Note`) VALUES
(1, 1, 1, 45884, '2014-05-12', 1.5, 100, 200, '2025-04-13', 'contanti', 'Nessuna'),
(2, 1, 1, 47851, '2008-01-07', 1.5, 100, 120, '2006-11-04', '', ''),
(3, 1, 2, 4751159, '2014-06-15', 12, 21, 361, '2014-06-18', 'Contanti', 'nessuna');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE IF NOT EXISTS `prodotti` (
  `ID_Prodotto` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(15) DEFAULT NULL,
  `P_unitario` float DEFAULT NULL,
  `Q_Disponibile` float DEFAULT NULL,
  `Misure` varchar(15) DEFAULT NULL,
  `Q_Cemento` float DEFAULT NULL,
  `Q_Sabbia` float DEFAULT NULL,
  `Q_Ghiaia` float DEFAULT NULL,
  `Q_Colorante` float DEFAULT NULL,
  `Q_Ferro` float DEFAULT NULL,
  `Note` varchar(70) NOT NULL,
  PRIMARY KEY (`ID_Prodotto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`ID_Prodotto`, `Nome`, `P_unitario`, `Q_Disponibile`, `Misure`, `Q_Cemento`, `Q_Sabbia`, `Q_Ghiaia`, `Q_Colorante`, `Q_Ferro`, `Note`) VALUES
(1, 'Tubo standard', 0.6, 26, '75x23x25', 0.25, 0.74, 0.54, 0, 0.74, 'Nessuna'),
(2, 'Tubo 3m', 15, 12, '311x50x7', 0.25, 0.25, 0.87, 1.25, 1, 'Nessuna'),
(3, '0', 1500, 16, '0', 0, 0, 0, 0, 0, 'Nessuna'),
(4, '1', 1, 22, '1x12x45', 1, 1, 1, 1, 1, 'Nessuna');

-- --------------------------------------------------------

--
-- Struttura della tabella `produzione`
--

CREATE TABLE IF NOT EXISTS `produzione` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(15) NOT NULL,
  `ID_Prodotto` int(11) DEFAULT NULL,
  `Quantita` int(11) NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `prod` (`ID_Prodotto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `produzione`
--

INSERT INTO `produzione` (`ID`, `Nome`, `ID_Prodotto`, `Quantita`, `Data`) VALUES
(1, 'tubo Standard', 1, 152, '2014-05-22'),
(2, 'Tubo 3m', 2, 4, '2014-06-09'),
(3, '', 2, 18, '2014-06-30'),
(4, '', 3, 10, '2014-04-15'),
(5, 'tubo standard', 1, 30, '2014-05-14');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utenti` (
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`Username`, `Password`) VALUES
('Username', 'Password');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `acquisti`
--
ALTER TABLE `acquisti`
  ADD CONSTRAINT `acq` FOREIGN KEY (`ID_MateriaPrima`) REFERENCES `materie_prime` (`ID_MateriaPrima`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `forn` FOREIGN KEY (`ID_Fornitore`) REFERENCES `fornitori` (`ID_Fornitore`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `prod` FOREIGN KEY (`ID_Prodotto`) REFERENCES `prodotti` (`ID_Prodotto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clie` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `produzione`
--
ALTER TABLE `produzione`
  ADD CONSTRAINT `produzione_ibfk_1` FOREIGN KEY (`ID_Prodotto`) REFERENCES `prodotti` (`ID_Prodotto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
