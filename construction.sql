-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 25 avr. 2019 à 03:10
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `construction`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `passwords` varchar(150) NOT NULL,
  `photo` varchar(123) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `mail`, `passwords`, `photo`) VALUES
(1, 'admin', 'test@admin.ci', '1234', 'assets/upload/saros1555678854.png');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `idadd` int(11) NOT NULL AUTO_INCREMENT,
  `numterain` int(11) NOT NULL,
  `superficie` int(11) NOT NULL,
  `ilot` varchar(60) NOT NULL,
  `lot` varchar(50) NOT NULL,
  `idtype` int(11) NOT NULL,
  `idqua` int(11) NOT NULL,
  `cni` varchar(160) NOT NULL,
  `cession` varchar(160) NOT NULL,
  `datedemande` varchar(20) NOT NULL,
  `statut` int(11) NOT NULL,
  `detail` text NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`idadd`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`idadd`, `numterain`, `superficie`, `ilot`, `lot`, `idtype`, `idqua`, `cni`, `cession`, `datedemande`, `statut`, `detail`, `id`) VALUES
(1, 1555, 25, '28', '25', 2, 1, 'assets/document/15551555849346.JPG', 'assets/document/15551555849346.JPG', '21/4/2019', 1, ' \r\n    Votre\r\n    Demande d\'attibution de permis de Contruire \r\n    a Ã©tÃ© acceptÃ© avec veillez prend \r\n    rendez-vous sur notre plateforme pour le passage de retrait de votre Permis de Construction\r\n    NB: prevoit la somme de 25600 pour frais annexe de dossier.', 1),
(2, 581, 250, '30', '20', 2, 2, 'assets/document/5811555904221.JPG', 'assets/document/5811555904221.JPG', '22/4/2019', 1, ' \r\n    Votre\r\n    Demande d\'attibution de permis de Contruire \r\n    a Ã©tÃ© acceptÃ© avec veillez prend \r\n    rendez-vous sur notre plateforme pour le passage de retrait de votre Permis de Construction\r\n    NB: prevoit la somme de 25600 pour frais annexe de dossier.', 1),
(3, 28, 150, '96', '30', 6, 5, 'assets/document/000281555945934.JPG', 'assets/document/000281555945934.JPG', '22/4/2019', 3, ' Demande Annuler par l\'utilisateur.', 1),
(5, 11, 11, '11', '11', 4, 2, 'assets/document/111555985687.JPG', 'assets/document/111555985687.JPG', '23/4/2019', 2, 'Refuser la demande car il est impossible vous donnez ce permis de construction AprÃ©s verification ce terrain ne vous appartient par', 1),
(6, 1, 250, '1', '1', 3, 6, 'assets/document/11555986082.JPG', 'assets/document/11555986082.JPG', '23/4/2019', 1, ' \r\n    Votre\r\n    Demande d\'attibution de permis de Contruire \r\n    a Ã©tÃ© acceptÃ© avec veillez prend \r\n    rendez-vous sur notre plateforme pour le passage de retrait de votre Permis de Construction\r\n    NB: prevoit la somme de 25600 pour frais annexe de dossier.', 3),
(7, 0, 250, '11', '20', 1, 2, 'assets/document/001556018892.JPG', 'assets/document/001556018892.JPG', '23/4/2019', 3, ' Demande Annuler par l\'utilisateur.', 4),
(8, 2, 14, '01', '02', 4, 3, 'assets/document/021556075094.JPG', 'assets/document/021556075094.JPG', '24/4/2019', 1, ' \r\n    Votre\r\n    Demande d\'attibution de permis de Contruire \r\n    a Ã©tÃ© acceptÃ© avec veillez prend \r\n    rendez-vous sur notre plateforme pour le passage de retrait de votre Permis de Construction\r\n    NB: prevoit la somme de 25600 pour frais annexe de dossier.', 1),
(9, 12, 125, '56', '02', 1, 3, 'assets/document/121556160579.JPG', 'assets/document/121556160579.JPG', '25/4/2019', 0, ' Votre demande d\'attribution de permis de construction est en cours d\'analyse merci pour Votre patience ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(110) NOT NULL,
  PRIMARY KEY (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`idtype`, `libelle`) VALUES
(1, 'COURS COMMUNE'),
(2, 'VILLA'),
(3, 'DUPLEX'),
(4, 'R+2'),
(5, 'R+3'),
(6, 'R+4');

-- --------------------------------------------------------

--
-- Structure de la table `quartier`
--

DROP TABLE IF EXISTS `quartier`;
CREATE TABLE IF NOT EXISTS `quartier` (
  `idqua` int(11) NOT NULL AUTO_INCREMENT,
  `libellequa` varchar(120) NOT NULL,
  PRIMARY KEY (`idqua`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `quartier`
--

INSERT INTO `quartier` (`idqua`, `libellequa`) VALUES
(1, 'locodjro'),
(2, 'abobo-doume'),
(3, 'banco 2'),
(4, 'jerusalem'),
(5, 'sante 3'),
(6, 'mossikro'),
(7, 'boribana');

-- --------------------------------------------------------

--
-- Structure de la table `rendez`
--

DROP TABLE IF EXISTS `rendez`;
CREATE TABLE IF NOT EXISTS `rendez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daterdv` varchar(60) NOT NULL,
  `heure` varchar(60) NOT NULL,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rendez`
--

INSERT INTO `rendez` (`id`, `daterdv`, `heure`, `iduser`) VALUES
(6, '2018-02-17', '19:14', 1),
(7, '1994-11-17', '08:30', 3),
(8, '1994-11-17', '11:30', 4),
(9, '1994-11-17', '14:11', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomcli` varchar(160) NOT NULL,
  `datenaisscli` varchar(20) NOT NULL,
  `mailcli` varchar(60) NOT NULL,
  `contactcli` varchar(20) NOT NULL,
  `habitationcli` varchar(30) NOT NULL,
  `passwordcli` varchar(120) NOT NULL,
  `imagecli` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nomcli`, `datenaisscli`, `mailcli`, `contactcli`, `habitationcli`, `passwordcli`, `imagecli`) VALUES
(1, 'saros maha', '17-11-1994', 'mohamedsaros@gmail.com', '59301619', 'locodjro', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'assets/upload/saros1555678854.png'),
(3, 'guindo', '17-11-1994', 'guindo_mohamed@hotmail.fr', '59301619', 'locodjro', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'assets/upload/guindo1555986001.JPG'),
(4, 'test', '17-11-1994', 'yasmine@gmail.com', '59301619', 'locodjro', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'assets/upload/test1556018798.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
