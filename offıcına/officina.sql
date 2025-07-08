-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generato il: Lug 07, 2014 alle 16:04
-- Versione del server: 5.1.40
-- Versione PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `officina`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `amministrazione`
--

CREATE TABLE IF NOT EXISTS `amministrazione` (
  `IdAmm` int(11) NOT NULL,
  `Indirizzo_mail` varchar(50) NOT NULL,
  `Nome_Responsabile` varchar(40) NOT NULL,
  `Cognome_Responsabile` varchar(60) NOT NULL,
  PRIMARY KEY (`IdAmm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `amministrazione`
--

INSERT INTO `amministrazione` (`IdAmm`, `Indirizzo_mail`, `Nome_Responsabile`, `Cognome_Responsabile`) VALUES
(144, 'minetti@bona.it', 'nicole', 'minetti'),
(657, 'lavespa@tin.it', 'guido', 'la vespa'),
(666, 'pezzali@yahoo.it', 'Max', 'Pezzali'),
(767, 'barresi@simail.it', 'danilo', 'barresi'),
(999, 'silvio@soldi.it', 'silvio', 'berlusconi');

-- --------------------------------------------------------

--
-- Struttura della tabella `considerazione`
--

CREATE TABLE IF NOT EXISTS `considerazione` (
  `Matricola_Meccanico` int(11) NOT NULL,
  `IdInc` int(11) NOT NULL,
  `Nome_Meccanico` varchar(40) NOT NULL,
  `Cognome_Meccanico` varchar(60) NOT NULL,
  `Disponibilità` tinyint(1) NOT NULL,
  PRIMARY KEY (`Matricola_Meccanico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `considerazione`
--

INSERT INTO `considerazione` (`Matricola_Meccanico`, `IdInc`, `Nome_Meccanico`, `Cognome_Meccanico`, `Disponibilità`) VALUES
(420864, 12, 'Mirko', 'Donato', 1),
(429429, 14, 'Vincenzo', 'Greco', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `foglio_richiesta`
--

CREATE TABLE IF NOT EXISTS `foglio_richiesta` (
  `codiceFoglio` int(11) NOT NULL,
  `id_richiesta` int(11) NOT NULL,
  `matricola_magz` int(11) NOT NULL,
  `spedito` date NOT NULL,
  `prezzo` int(11) NOT NULL,
  PRIMARY KEY (`codiceFoglio`),
  KEY `id_richiesta` (`id_richiesta`),
  KEY `matricola_magz` (`matricola_magz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `foglio_richiesta`
--

INSERT INTO `foglio_richiesta` (`codiceFoglio`, `id_richiesta`, `matricola_magz`, `spedito`, `prezzo`) VALUES
(101, 10, 776, '2014-07-04', 1400),
(102, 11, 776, '2014-07-02', 2400),
(103, 12, 776, '2014-07-02', 900),
(700, 1011, 776, '2014-06-20', 400);

-- --------------------------------------------------------

--
-- Struttura della tabella `incarico`
--

CREATE TABLE IF NOT EXISTS `incarico` (
  `IdInc` int(11) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Garanzia` int(1) NOT NULL,
  `IdAmm` int(11) NOT NULL,
  `statoInc` int(11) NOT NULL DEFAULT '0',
  `modello` varchar(20) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `costo` int(9) NOT NULL,
  `Data_inizio` date NOT NULL,
  PRIMARY KEY (`IdInc`),
  KEY `IdAmm` (`IdAmm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `incarico`
--

INSERT INTO `incarico` (`IdInc`, `Tipo`, `Garanzia`, `IdAmm`, `statoInc`, `modello`, `cliente`, `telefono`, `costo`, `Data_inizio`) VALUES
(323, 'freni', 1, 657, 0, 'fiat 500', 'filippo ', 3243222, 0, '2014-06-10'),
(543, 'pompa acqua', 1, 999, 0, 'bmw 320', 'rapisarda antonino', 9538765, 0, '2014-06-08'),
(653, 'spinterogeno', 3, 144, 0, 'ferrari gto', 'marco columbro', 3243454, 0, '2014-06-01'),
(987, 'pistoni', 3, 144, 0, 'alfa 147', 'marco rossi', 9322345, 0, '2014-06-02'),
(988, 'marmitta', 1, 144, 0, 'volvo 460', 'francesco bianchi', 9322122, 0, '2014-06-13'),
(2220, 'impianto luci', 0, 666, 0, 'fiat panda', 'mirko donato', 953245, 0, '2014-07-03'),
(3200, 'impianto distribuzione', 0, 767, 1, 'opel Adam', 'vincenzo greco', 94235432, 5700, '2014-07-08'),
(6643, 'sospensioni anteriori', 0, 767, 0, 'fiat panda', 'marcello fortunato', 9566623, 0, '2014-07-06');

-- --------------------------------------------------------

--
-- Struttura della tabella `intervento`
--

CREATE TABLE IF NOT EXISTS `intervento` (
  `IdInt` int(11) NOT NULL,
  `Tipo_Intervento` varchar(30) NOT NULL,
  `matricola_mecc` int(11) NOT NULL,
  `IdInc` int(11) NOT NULL,
  `Stato` int(11) NOT NULL,
  `data_fine` int(11) NOT NULL,
  PRIMARY KEY (`IdInt`),
  KEY `IdInc` (`IdInc`),
  KEY `matricola_mecc` (`matricola_mecc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `intervento`
--

INSERT INTO `intervento` (`IdInt`, `Tipo_Intervento`, `matricola_mecc`, `IdInc`, `Stato`, `data_fine`) VALUES
(117, 'pompa acqua', 429429, 543, 0, 0),
(118, 'marmitta', 429429, 988, 0, 0),
(1010, 'cinghie distribuzione,albero', 3523, 3200, 1, 42),
(3331, 'freni', 3523, 323, 0, 0),
(21321, 'pistoni+guarnizioni', 2165, 987, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `magazziniere`
--

CREATE TABLE IF NOT EXISTS `magazziniere` (
  `Matricola_Magazziniere` int(11) NOT NULL,
  `Nome_Magazziniere` varchar(40) NOT NULL,
  `Cognome_Magazziniere` varchar(60) NOT NULL,
  PRIMARY KEY (`Matricola_Magazziniere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `magazziniere`
--

INSERT INTO `magazziniere` (`Matricola_Magazziniere`, `Nome_Magazziniere`, `Cognome_Magazziniere`) VALUES
(776, 'Orazio', 'Siracusa'),
(777, 'Alfio', 'Musumeci'),
(787, 'Alessandro', 'regalbuto');

-- --------------------------------------------------------

--
-- Struttura della tabella `meccanico`
--

CREATE TABLE IF NOT EXISTS `meccanico` (
  `Matricola_Meccanico` int(11) NOT NULL,
  `Nome_Meccanico` varchar(40) NOT NULL,
  `Cognome_Meccanico` varchar(60) NOT NULL,
  `Disponibilità` tinyint(1) NOT NULL,
  PRIMARY KEY (`Matricola_Meccanico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `meccanico`
--

INSERT INTO `meccanico` (`Matricola_Meccanico`, `Nome_Meccanico`, `Cognome_Meccanico`, `Disponibilità`) VALUES
(2165, 'socrate', 'parnasso', 1),
(3523, 'orazio', 'liotro', 1),
(429429, 'Gigi', 'Buffon', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `richiesta_ricambi`
--

CREATE TABLE IF NOT EXISTS `richiesta_ricambi` (
  `CodRichiesta` int(11) NOT NULL,
  `Pezzo_Richiesto` varchar(70) NOT NULL,
  `Pezzo_disponibile` tinyint(1) NOT NULL DEFAULT '0',
  `IdInt` int(11) NOT NULL,
  `attesa` int(11) NOT NULL DEFAULT '0',
  `stato` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CodRichiesta`),
  KEY `IdInt` (`IdInt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `richiesta_ricambi`
--

INSERT INTO `richiesta_ricambi` (`CodRichiesta`, `Pezzo_Richiesto`, `Pezzo_disponibile`, `IdInt`, `attesa`, `stato`) VALUES
(10, 'cinghia distribuzione', 1, 1010, 10, 1),
(11, 'albero', 1, 1010, 10, 1),
(12, 'bulloneria', 1, 1010, 9, 1),
(1011, 'pistoni', 1, 21321, 24, 1),
(1012, 'guarnizioni', 0, 21321, 0, 0),
(1013, 'fascie', 0, 21321, 0, 0),
(1018, 'bulloneria', 0, 117, 0, 0),
(1019, 'pompa acqua', 0, 117, 0, 0);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `foglio_richiesta`
--
ALTER TABLE `foglio_richiesta`
  ADD CONSTRAINT `foglio_richiesta_ibfk_1` FOREIGN KEY (`id_richiesta`) REFERENCES `richiesta_ricambi` (`CodRichiesta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foglio_richiesta_ibfk_2` FOREIGN KEY (`matricola_magz`) REFERENCES `magazziniere` (`Matricola_Magazziniere`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `incarico`
--
ALTER TABLE `incarico`
  ADD CONSTRAINT `incarico_ibfk_1` FOREIGN KEY (`IdAmm`) REFERENCES `amministrazione` (`IdAmm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `intervento`
--
ALTER TABLE `intervento`
  ADD CONSTRAINT `intervento_ibfk_1` FOREIGN KEY (`IdInc`) REFERENCES `incarico` (`IdInc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervento_ibfk_2` FOREIGN KEY (`matricola_mecc`) REFERENCES `meccanico` (`Matricola_Meccanico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `richiesta_ricambi`
--
ALTER TABLE `richiesta_ricambi`
  ADD CONSTRAINT `richiesta_ricambi_ibfk_1` FOREIGN KEY (`IdInt`) REFERENCES `intervento` (`IdInt`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
