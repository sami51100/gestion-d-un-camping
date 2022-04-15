-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 déc. 2021 à 17:00
-- Version du serveur : 5.7.31
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet304_sami_rahim`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnant`
--

DROP TABLE IF EXISTS `accompagnant`;
CREATE TABLE IF NOT EXISTS `accompagnant` (
  `Id_Acc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Acc` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Acc` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Acc` date NOT NULL,
  `Type_Tarif_Acc` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Client` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id_Acc`),
  KEY `accompagnants_id_client_foreign` (`Id_Client`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `accompagnant`
--

INSERT INTO `accompagnant` (`Id_Acc`, `Nom_Acc`, `Prenom_Acc`, `Date_Naissance_Acc`, `Type_Tarif_Acc`, `Id_Client`) VALUES
(1, 'Vallee', 'Inès', '1949-05-30', 'enfant', 8),
(2, 'Gonzalez', 'Gabriel', '1946-11-12', 'enfant', 8),
(3, 'Bernard', 'Astrid', '1998-03-01', 'enfant', 3),
(4, 'Herve', 'Jacqueline', '1956-09-08', 'enfant', 5),
(5, 'Cohen', 'Léon', '1988-10-26', 'enfant', 2),
(6, 'Peltier', 'Frédéric', '1948-10-02', 'adulte', 10),
(7, 'Vidal', 'Luce', '2000-02-02', 'enfant', 3),
(8, 'Girard', 'Étienne', '1959-11-15', 'adulte', 6),
(9, 'Pottier', 'Alfred', '1987-06-03', 'adulte', 3),
(10, 'Gallet', 'William', '1981-12-26', 'adulte', 5);

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `Id_Activite` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Activite` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Lieu_Activite` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Type_Activite` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prerequis_Activite` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Activite`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`Id_Activite`, `Nom_Activite`, `Lieu_Activite`, `Type_Activite`, `Prerequis_Activite`) VALUES
(1, 'Yoga', 'Camping', 'sport', 'tenue de sport'),
(2, 'Yoga', 'Camping', 'detente', 'tenue de sport'),
(3, 'Randonnee', 'Camping', 'detente', 'tenue de sport'),
(4, 'Yoga', 'Forêt', 'detente', 'tenue de sport'),
(5, 'Feu de camp', 'Camping', 'sport', 'tenue de sport'),
(6, 'Velo', 'Camping', 'sport', 'tenue de sport'),
(7, 'Feu de camp', 'Forêt', 'loisir', 'tenue de sport'),
(8, 'Yoga', 'Camping', 'sport', 'tenue de sport'),
(9, 'Course orientation', 'Forêt', 'detente', 'tenue de sport'),
(10, 'Paintball', 'Forêt', 'detente', 'tenue de sport');

-- --------------------------------------------------------

--
-- Structure de la table `agent_entretien`
--

DROP TABLE IF EXISTS `agent_entretien`;
CREATE TABLE IF NOT EXISTS `agent_entretien` (
  `Id_Agent` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Agent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Agent` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Agent` date NOT NULL,
  `Adresse_Agent` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Agent`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `agent_entretien`
--

INSERT INTO `agent_entretien` (`Id_Agent`, `Nom_Agent`, `Prenom_Agent`, `Date_Naissance_Agent`, `Adresse_Agent`) VALUES
(1, 'Durand', 'Emmanuel', '1987-04-08', '93, rue de Humbert\n20 887 Dubois'),
(2, 'Mallet', 'Tristan', '1958-03-17', '1, rue Frédéric Bousquet\n48600 Barredan'),
(3, 'Vallee', 'Alexandria', '1975-10-23', 'rue Pierre Rossi\n59316 Ferrand-la-Forêt'),
(4, 'Pottier', 'Noël', '1981-07-12', '67, place de Benoit\n62 909 SeguinVille'),
(5, 'Alexandre', 'Pierre', '1946-01-26', '8, place de Rodriguez\n36210 Andre'),
(6, 'Ramos', 'Patricia', '1985-06-11', 'rue Dominique Humbert\n12507 Descamps'),
(7, 'Charles', 'Patrick', '1998-07-27', '63, impasse Bonnin\n72406 Lombard-sur-Chevallier'),
(8, 'Boulay', 'Christophe', '1971-11-14', '497, boulevard Frédéric Berger\n71851 Joly'),
(9, 'Ribeiro', 'Martine', '1973-08-28', 'boulevard Bernadette Benard\n72346 Legendre'),
(10, 'Gerard', 'Andrée', '2004-12-02', '724, rue de Roger\n07695 Rousset-sur-Mer');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

DROP TABLE IF EXISTS `animateur`;
CREATE TABLE IF NOT EXISTS `animateur` (
  `Id_Animateur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Animateur` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Animateur` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Animateur` date NOT NULL,
  `Adresse_Animateur` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Numero_Tel_Animateur` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Animateur`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `animateur`
--

INSERT INTO `animateur` (`Id_Animateur`, `Nom_Animateur`, `Prenom_Animateur`, `Date_Naissance_Animateur`, `Adresse_Animateur`, `Numero_Tel_Animateur`) VALUES
(1, 'Dumas', 'Nathalie', '2003-05-01', '26, place Leblanc\n20 483 Delattre-les-Bains', '+33 8 10 04 22 37'),
(2, 'Devaux', 'Hugues', '1991-09-05', '15, rue Gilbert Guyot\n12398 Turpindan', '+33 (0)8 09 08 24 07'),
(3, 'Duhamel', 'Thomas', '2002-06-19', '68, chemin Eugène Leclerc\n52937 Legrandnec', '0817558271'),
(4, 'Leroux', 'Camille', '1971-02-06', '71, rue Geneviève Ferrand\n70181 Leleu', '+33 (0)8 91 76 00 14'),
(5, 'Fernandes', 'Éric', '1975-11-08', '80, avenue Levy\n70 420 Navarro', '+33 (0)8 25 74 51 34'),
(6, 'Normand', 'Victoire', '1982-10-21', '746, rue Aubert\n18 201 Blanchet', '+33 (0)8 98 57 08 45'),
(7, 'Nguyen', 'Olivier', '1969-03-25', '1, avenue Frédéric Faivre\n14 413 Barthelemy', '0826738546'),
(8, 'Bruneau', 'Océane', '1990-08-22', '9, chemin Ledoux\n95 195 MaceVille', '0893884508'),
(9, 'Dufour', 'Patrick', '1956-06-01', '5, chemin Stéphane De Oliveira\n22 727 Becker-sur-Mer', '+33 (0)8 08 58 54 32'),
(10, 'Boucher', 'Christine', '1942-08-30', '895, place de Valette\n55 934 Bouchetdan', '+33 8 98 04 96 07');

-- --------------------------------------------------------

--
-- Structure de la table `caution`
--

DROP TABLE IF EXISTS `caution`;
CREATE TABLE IF NOT EXISTS `caution` (
  `Id_Caution` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Pourcent_Caution` int(11) NOT NULL,
  `Etat_Emplacement` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Caution`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `caution`
--

INSERT INTO `caution` (`Id_Caution`, `Pourcent_Caution`, `Etat_Emplacement`) VALUES
(1, 20, 'degrade'),
(2, 20, 'neuf');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Id_Client` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Client` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Client` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Client` date NOT NULL,
  `Numero_Tel_Client` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Adresse_Client` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Reservation` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id_Client`),
  KEY `clients_id_reservation_foreign` (`Id_Reservation`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id_Client`, `Nom_Client`, `Prenom_Client`, `Date_Naissance_Client`, `Numero_Tel_Client`, `Adresse_Client`, `Id_Reservation`) VALUES
(1, 'Huet', 'Maggie', '1985-12-06', '+33 8 00 22 07 79', '4, rue Isaac Blot\n54573 Descamps', 1),
(2, 'Tanguy', 'Michelle', '1946-07-01', '+33 8 99 33 98 49', '5, impasse de Dupont\n94 256 Peron-sur-Hoarau', 2),
(3, 'Pierre', 'Henri', '1982-02-09', '08 13 73 26 31', '1, place Isaac Mendes\n51293 Moreno', 3),
(4, 'Baudry', 'Margaux', '1967-05-07', '08 95 93 95 35', '6, impasse François Neveu\n25 645 Guerin-les-Bains', 4),
(5, 'Lefebvre', 'Augustin', '1975-03-05', '0822309555', '81, chemin Charlotte Aubert\n71 463 Brunet', 5),
(6, 'Bailly', 'Alphonse', '1986-11-18', '0897112380', 'rue Benoît Gosselin\n96 622 Delattredan', 6),
(7, 'Evrard', 'Édouard', '1999-03-26', '+33 (0)8 15 13 20 43', '6, avenue Charles\n63 943 Guyon-les-Bains', 7),
(8, 'Guillaume', 'Élodie', '1990-08-20', '08 23 49 40 60', '77, rue Dumas\n67729 Devaux-sur-Carre', 8),
(9, 'Lucas', 'Frédéric', '1974-02-20', '08 99 79 40 52', 'rue Agathe Lelievre\n79 339 Pelletier-la-Forêt', 9),
(10, 'Da Silva', 'Frédéric', '1978-11-01', '+33 8 25 74 07 38', 'avenue de Durand\n01897 Legros', 10);

-- --------------------------------------------------------

--
-- Structure de la table `detenir`
--

DROP TABLE IF EXISTS `detenir`;
CREATE TABLE IF NOT EXISTS `detenir` (
  `Id_Animateur` bigint(20) UNSIGNED NOT NULL,
  `Id_Specialite` bigint(20) UNSIGNED NOT NULL,
  KEY `detenirs_id_animateur_foreign` (`Id_Animateur`),
  KEY `detenirs_id_specialite_foreign` (`Id_Specialite`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `detenir`
--

INSERT INTO `detenir` (`Id_Animateur`, `Id_Specialite`) VALUES
(3, 8),
(7, 3),
(10, 10),
(1, 1),
(9, 7),
(5, 9),
(4, 3),
(7, 5),
(1, 3),
(2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

DROP TABLE IF EXISTS `diplome`;
CREATE TABLE IF NOT EXISTS `diplome` (
  `Id_Diplome` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Diplome` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Diplome`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `diplome`
--

INSERT INTO `diplome` (`Id_Diplome`, `Nom_Diplome`) VALUES
(1, 'BAFA'),
(2, 'BAFA'),
(3, 'BAFA'),
(4, 'BAFA'),
(5, 'BAFA'),
(6, 'BAFA'),
(7, 'BAFA'),
(8, 'BAFA'),
(9, 'BAFA'),
(10, 'BAFA');

-- --------------------------------------------------------

--
-- Structure de la table `disposer`
--

DROP TABLE IF EXISTS `disposer`;
CREATE TABLE IF NOT EXISTS `disposer` (
  `Id_Reservation` bigint(20) UNSIGNED NOT NULL,
  `Id_Emplacement` bigint(20) UNSIGNED NOT NULL,
  KEY `disposers_id_reservation_foreign` (`Id_Reservation`),
  KEY `disposers_id_emplacement_foreign` (`Id_Emplacement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `disposer`
--

INSERT INTO `disposer` (`Id_Reservation`, `Id_Emplacement`) VALUES
(7, 5),
(8, 2),
(16, 7),
(10, 4),
(10, 4),
(6, 8),
(19, 6),
(16, 10),
(16, 1),
(4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `durer`
--

DROP TABLE IF EXISTS `durer`;
CREATE TABLE IF NOT EXISTS `durer` (
  `Id_Emplacement` int(11) NOT NULL,
  `Id_Periode` int(11) NOT NULL,
  PRIMARY KEY (`Id_Emplacement`,`Id_Periode`),
  KEY `Id_Periode` (`Id_Periode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `durer`
--

INSERT INTO `durer` (`Id_Emplacement`, `Id_Periode`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

DROP TABLE IF EXISTS `emplacement`;
CREATE TABLE IF NOT EXISTS `emplacement` (
  `Id_Emplacement` int(11) NOT NULL AUTO_INCREMENT,
  `Surface_Emplacement` int(11) DEFAULT NULL,
  `Type_Emplacement` varchar(25) DEFAULT NULL,
  `Prix_Emplacement` decimal(15,2) DEFAULT NULL,
  `Prix_Equipement` decimal(15,2) DEFAULT NULL,
  `Id_Equipement` int(11) NOT NULL,
  `Id_Caution` int(11) NOT NULL,
  PRIMARY KEY (`Id_Emplacement`),
  KEY `Id_Equipement` (`Id_Equipement`),
  KEY `Id_Caution` (`Id_Caution`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`Id_Emplacement`, `Surface_Emplacement`, `Type_Emplacement`, `Prix_Emplacement`, `Prix_Equipement`, `Id_Equipement`, `Id_Caution`) VALUES
(1, 100, 'tente', '20.00', '5.40', 1, 1),
(2, 100, 'tente', '20.00', '5.40', 2, 1),
(3, 100, 'caravane', '20.00', '5.40', 3, 2),
(4, 100, 'caravane', '20.00', '5.40', 4, 1),
(5, 100, 'camping-cars', '25.00', '6.75', 5, 2),
(6, 100, 'camping-cars', '25.00', '6.75', 6, 1),
(7, 120, 'mobil home', '30.00', '6.60', 7, 1),
(8, 120, 'mobil home', '30.00', '6.60', 8, 2),
(9, 140, 'pavillions', '40.00', '8.80', 9, 2),
(10, 140, 'chalet', '40.00', '8.80', 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `entretenir`
--

DROP TABLE IF EXISTS `entretenir`;
CREATE TABLE IF NOT EXISTS `entretenir` (
  `Id_Emplacement` bigint(20) UNSIGNED NOT NULL,
  `Id_Agent` bigint(20) UNSIGNED NOT NULL,
  KEY `entretenirs_id_emplacement_foreign` (`Id_Emplacement`),
  KEY `entretenirs_id_agent_foreign` (`Id_Agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `entretenir`
--

INSERT INTO `entretenir` (`Id_Emplacement`, `Id_Agent`) VALUES
(9, 4),
(3, 7),
(3, 3),
(5, 7),
(5, 1),
(7, 4),
(5, 1),
(6, 6),
(6, 8),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `Id_Equipement` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Pourcent_Electricite` int(11) NOT NULL,
  `Pourcent_Wifi` int(11) NOT NULL,
  `Pourcent_Eau` int(11) NOT NULL,
  PRIMARY KEY (`Id_Equipement`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`Id_Equipement`, `Pourcent_Electricite`, `Pourcent_Wifi`, `Pourcent_Eau`) VALUES
(1, 12, 5, 10),
(2, 12, 5, 10),
(3, 12, 5, 10),
(4, 12, 5, 10),
(5, 12, 5, 10),
(6, 12, 5, 10),
(10, 12, 0, 10),
(9, 12, 0, 10),
(8, 12, 0, 10),
(7, 12, 0, 10);

-- --------------------------------------------------------

--
-- Structure de la table `guider`
--

DROP TABLE IF EXISTS `guider`;
CREATE TABLE IF NOT EXISTS `guider` (
  `Id_Reservation` bigint(20) UNSIGNED NOT NULL,
  `Id_Placeur` bigint(20) UNSIGNED NOT NULL,
  KEY `guiders_id_placeur_foreign` (`Id_Placeur`),
  KEY `guiders_id_reservation_foreign` (`Id_Reservation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `guider`
--

INSERT INTO `guider` (`Id_Reservation`, `Id_Placeur`) VALUES
(5, 4),
(12, 7),
(5, 1),
(14, 8),
(7, 10),
(4, 8),
(16, 3),
(20, 7),
(4, 1),
(6, 9);

-- --------------------------------------------------------

--
-- Structure de la table `inscrire_activite`
--

DROP TABLE IF EXISTS `inscrire_activite`;
CREATE TABLE IF NOT EXISTS `inscrire_activite` (
  `Id_Acc` bigint(20) UNSIGNED NOT NULL,
  `Id_Client` bigint(20) UNSIGNED NOT NULL,
  `Id_Seance` bigint(20) UNSIGNED NOT NULL,
  `Prix_Activite` decimal(15,2) NOT NULL,
  KEY `inscrire_activites_id_acc_foreign` (`Id_Acc`),
  KEY `inscrire_activites_id_seance_foreign` (`Id_Seance`),
  KEY `inscrire_activites_id_client_foreign` (`Id_Client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `inscrire_activite`
--

INSERT INTO `inscrire_activite` (`Id_Acc`, `Id_Client`, `Id_Seance`, `Prix_Activite`) VALUES
(7, 4, 4, '4.00'),
(3, 6, 10, '4.00'),
(5, 4, 6, '4.00'),
(3, 7, 9, '4.00'),
(8, 9, 3, '4.00'),
(1, 2, 6, '4.00'),
(5, 10, 1, '4.00'),
(3, 6, 10, '4.00'),
(1, 2, 4, '4.00'),
(8, 9, 10, '4.00');

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

DROP TABLE IF EXISTS `occuper`;
CREATE TABLE IF NOT EXISTS `occuper` (
  `Id_Vehicule` bigint(20) UNSIGNED NOT NULL,
  `Id_Emplacement` bigint(20) UNSIGNED NOT NULL,
  KEY `occupers_id_vehicule_foreign` (`Id_Vehicule`),
  KEY `occupers_id_emplacement_foreign` (`Id_Emplacement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `occuper`
--

INSERT INTO `occuper` (`Id_Vehicule`, `Id_Emplacement`) VALUES
(3, 2),
(6, 6),
(2, 4),
(8, 4),
(4, 9),
(7, 2),
(2, 6),
(7, 1),
(2, 8),
(7, 3);

-- --------------------------------------------------------

--
-- Structure de la table `periode`
--

DROP TABLE IF EXISTS `periode`;
CREATE TABLE IF NOT EXISTS `periode` (
  `Id_Periode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Type_Saison` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Pourcent_Saison` int(11) NOT NULL,
  PRIMARY KEY (`Id_Periode`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `periode`
--

INSERT INTO `periode` (`Id_Periode`, `Type_Saison`, `Pourcent_Saison`) VALUES
(1, 'basse saison ', -10),
(2, 'moyenne saison', 0),
(3, 'haute saison', 10);

-- --------------------------------------------------------

--
-- Structure de la table `placeur`
--

DROP TABLE IF EXISTS `placeur`;
CREATE TABLE IF NOT EXISTS `placeur` (
  `Id_Placeur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Placeur` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Placeur` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Placeur` date NOT NULL,
  `Adresse_Placeur` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Placeur`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `placeur`
--

INSERT INTO `placeur` (`Id_Placeur`, `Nom_Placeur`, `Prenom_Placeur`, `Date_Naissance_Placeur`, `Adresse_Placeur`) VALUES
(1, 'Legendre', 'Gilles', '1952-08-30', '76, rue Leger\n81928 Gimenezdan'),
(2, 'Chartier', 'Laurent', '1999-06-24', '62, chemin Grégoire Vincent\n87994 Pruvost-sur-Mer'),
(3, 'Leroy', 'Laetitia', '1998-08-20', '291, rue de Aubert\n14 788 GuillouVille'),
(4, 'Chauveau', 'Louise', '1942-02-24', '47, boulevard Vaillant\n93890 Morvan'),
(5, 'Maurice', 'Margaux', '1953-10-12', '72, rue de Roger\n70592 Vincent-la-Forêt'),
(6, 'Guibert', 'Lucas', '1977-06-02', '4, avenue Roland Michaud\n99 247 Duval'),
(7, 'Guillot', 'Zoé', '1992-03-13', '63, rue Nicolas\n00 812 BenoitBourg'),
(8, 'Perez', 'Inès', '1956-08-13', '22, chemin Isaac Lacroix\n45 876 Perrot'),
(9, 'Dos Santos', 'Henri', '1998-10-02', '65, boulevard Isabelle Noel\n05972 Marques-sur-Devaux'),
(10, 'Aubry', 'Michelle', '1987-09-28', '8, place de Torres\n68 583 Antoine');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

DROP TABLE IF EXISTS `posseder`;
CREATE TABLE IF NOT EXISTS `posseder` (
  `Id_Animateur` bigint(20) UNSIGNED NOT NULL,
  `Id_Placeur` bigint(20) UNSIGNED NOT NULL,
  `Id_Diplome` bigint(20) UNSIGNED NOT NULL,
  `Date_Obtention` date NOT NULL,
  KEY `posseders_id_animateur_foreign` (`Id_Animateur`),
  KEY `posseders_id_placeur_foreign` (`Id_Placeur`),
  KEY `posseders_id_diplome_foreign` (`Id_Diplome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`Id_Animateur`, `Id_Placeur`, `Id_Diplome`, `Date_Obtention`) VALUES
(5, 7, 9, '1988-06-06'),
(8, 7, 9, '2005-10-19'),
(9, 8, 6, '1987-10-08'),
(6, 4, 4, '1952-02-12'),
(5, 9, 9, '1960-01-30'),
(2, 2, 9, '1988-03-25'),
(9, 1, 2, '1942-10-16'),
(4, 2, 3, '2000-10-12'),
(9, 6, 7, '1975-09-12'),
(8, 6, 7, '1986-12-10');

-- --------------------------------------------------------

--
-- Structure de la table `posseder_personnel`
--

DROP TABLE IF EXISTS `posseder_personnel`;
CREATE TABLE IF NOT EXISTS `posseder_personnel` (
  `Id_Agent` bigint(20) UNSIGNED NOT NULL,
  `Id_Recep` bigint(20) UNSIGNED NOT NULL,
  `Id_Diplome` bigint(20) UNSIGNED NOT NULL,
  `Date_Obtention` date NOT NULL,
  KEY `posseder_personnels_id_agent_foreign` (`Id_Agent`),
  KEY `posseder_personnels_id_recep_foreign` (`Id_Recep`),
  KEY `posseder_personnels_id_diplome_foreign` (`Id_Diplome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `posseder_personnel`
--

INSERT INTO `posseder_personnel` (`Id_Agent`, `Id_Recep`, `Id_Diplome`, `Date_Obtention`) VALUES
(10, 5, 2, '1945-11-22'),
(5, 10, 2, '1975-08-11'),
(2, 5, 9, '1990-07-24'),
(8, 1, 3, '1973-02-08'),
(7, 3, 9, '1993-07-04'),
(10, 8, 4, '1980-09-29'),
(10, 7, 2, '1990-10-26'),
(6, 3, 5, '1976-08-25'),
(9, 1, 8, '1989-09-27'),
(4, 3, 4, '1949-02-11');

-- --------------------------------------------------------

--
-- Structure de la table `pratiquer`
--

DROP TABLE IF EXISTS `pratiquer`;
CREATE TABLE IF NOT EXISTS `pratiquer` (
  `Id_Activite` bigint(20) UNSIGNED NOT NULL,
  `Id_Seance` bigint(20) UNSIGNED NOT NULL,
  KEY `pratiquers_id_activite_foreign` (`Id_Activite`),
  KEY `pratiquers_id_seance_foreign` (`Id_Seance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pratiquer`
--

INSERT INTO `pratiquer` (`Id_Activite`, `Id_Seance`) VALUES
(4, 9),
(8, 4),
(8, 6),
(8, 8),
(3, 5),
(3, 6),
(9, 5),
(6, 3),
(4, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Structure de la table `receptionniste`
--

DROP TABLE IF EXISTS `receptionniste`;
CREATE TABLE IF NOT EXISTS `receptionniste` (
  `Id_Recep` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Recep` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Recep` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Adresse_Recep` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Naissance_Recep` date NOT NULL,
  PRIMARY KEY (`Id_Recep`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `receptionniste`
--

INSERT INTO `receptionniste` (`Id_Recep`, `Nom_Recep`, `Prenom_Recep`, `Adresse_Recep`, `Date_Naissance_Recep`) VALUES
(1, 'Couturier', 'Madeleine', '98, rue de Guillou\n85 531 Michel', '1957-01-27'),
(2, 'Becker', 'Aurore', '22, impasse Gilles\n24376 Martins-la-Forêt', '1985-03-29'),
(3, 'Baudry', 'Robert', '32, avenue Martel\n56038 Barbe', '1971-11-07'),
(4, 'Sauvage', 'Matthieu', '7, avenue de Poulain\n69 796 Joly-les-Bains', '1997-11-14'),
(5, 'Morel', 'Claire', '40, avenue de Turpin\n74 421 Menard', '1980-02-28'),
(6, 'Leconte', 'Frédéric', '78, impasse de Lopes\n75791 Noel', '1964-07-02'),
(7, 'Chauveau', 'Margaret', '63, rue Joseph Besson\n69 763 RichardVille', '1946-08-21'),
(8, 'Leduc', 'Lucas', '409, boulevard Josette Dupont\n39618 Prevost', '1994-11-01'),
(9, 'Roger', 'Éléonore', '9, place de Lefevre\n30142 Riouboeuf', '1963-04-01'),
(10, 'Perrot', 'Cécile', 'chemin Audrey Coulon\n95960 Raymonddan', '1995-10-02');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `Id_Reservation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre_Adulte` int(11) NOT NULL,
  `Nombre_Enfant` int(11) NOT NULL,
  `Date_Arrivee` date NOT NULL,
  `Date_Depart` date NOT NULL,
  `Id_Recep` bigint(20) UNSIGNED NOT NULL,
  `Id_Emplacement` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id_Reservation`),
  KEY `reservations_id_recep_foreign` (`Id_Recep`),
  KEY `reservations_id_emplacement_foreign` (`Id_Emplacement`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`Id_Reservation`, `Nombre_Adulte`, `Nombre_Enfant`, `Date_Arrivee`, `Date_Depart`, `Id_Recep`, `Id_Emplacement`) VALUES
(1, 4, 0, '2021-12-03', '2021-12-05', 7, 1),
(2, 1, 0, '2021-12-03', '2021-12-04', 9, 2),
(3, 1, 2, '2021-12-02', '2021-12-03', 8, 3),
(4, 2, 2, '2021-12-01', '2021-12-03', 9, 4),
(5, 4, 0, '2021-12-05', '2021-12-10', 4, 5),
(6, 2, 1, '2021-12-05', '2021-12-09', 2, 6),
(7, 1, 3, '2021-12-04', '2021-12-05', 5, 7),
(8, 3, 4, '2021-12-02', '2021-12-05', 7, 8),
(9, 2, 3, '2021-12-02', '2021-12-04', 3, 9),
(10, 1, 1, '2021-12-04', '2021-12-08', 4, 10),
(11, 1, 0, '2021-12-15', '2021-12-20', 10, 1),
(12, 1, 2, '2021-12-16', '2021-12-24', 10, 2),
(13, 1, 4, '2021-12-17', '2021-12-18', 3, 3),
(14, 3, 4, '2021-12-20', '2021-12-23', 2, 4),
(15, 3, 3, '2021-12-22', '2021-12-24', 6, 5),
(16, 4, 4, '2021-12-22', '2021-12-23', 6, 6),
(17, 2, 0, '2021-12-24', '2021-12-28', 4, 7),
(18, 1, 4, '2021-12-27', '2021-12-30', 5, 8),
(19, 1, 1, '2021-12-28', '2021-12-30', 5, 9),
(20, 4, 0, '2021-12-20', '2021-12-22', 7, 10);

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

DROP TABLE IF EXISTS `seance`;
CREATE TABLE IF NOT EXISTS `seance` (
  `Id_Seance` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Seance` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Debut` datetime NOT NULL,
  `Date_Fin` datetime NOT NULL,
  `Id_Animateur` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id_Seance`),
  KEY `seances_id_animateur_foreign` (`Id_Animateur`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`Id_Seance`, `Nom_Seance`, `Date_Debut`, `Date_Fin`, `Id_Animateur`) VALUES
(1, 'Ping-pong', '2021-12-01 00:00:00', '2021-12-04 00:00:00', 9),
(2, 'Yoga', '2021-12-02 00:00:00', '2021-12-03 00:00:00', 3),
(3, 'Velo', '2021-12-04 00:00:00', '2021-12-01 00:00:00', 8),
(4, 'Yoga', '2021-12-06 00:00:00', '2021-12-03 00:00:00', 1),
(5, 'Randonnee', '2021-12-06 00:00:00', '2021-12-02 00:00:00', 7),
(6, 'Yoga', '2021-12-01 00:00:00', '2021-12-03 00:00:00', 5),
(7, 'Ping-pong', '2021-12-05 00:00:00', '2021-12-05 00:00:00', 3),
(8, 'Ping-pong', '2021-12-06 00:00:00', '2021-12-04 00:00:00', 2),
(9, 'Velo', '2021-12-03 00:00:00', '2021-12-03 00:00:00', 3),
(10, 'Feu de camp', '2021-12-04 00:00:00', '2021-12-03 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `Id_Specialite` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Specialite` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Specialite`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`Id_Specialite`, `Nom_Specialite`) VALUES
(1, 'loisir'),
(2, 'sport '),
(3, 'sport '),
(4, 'loisir'),
(5, 'sport '),
(6, 'loisir'),
(7, 'sport '),
(8, 'sport '),
(9, 'detente'),
(10, 'sport ');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `Id_Vehicule` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Vehicule` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Plaque_Vehicule` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Vehicule`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`Id_Vehicule`, `Nom_Vehicule`, `Plaque_Vehicule`) VALUES
(1, 'Benimar ', 'CM-661-OV'),
(2, 'Campervans Mont-Blanc', 'SX-647-FP'),
(3, 'Knaus', 'JO-858-CA'),
(4, 'HYMER Classe-B MasterLine T', 'BM-770-MR'),
(5, 'HYMER Classe-B MasterLine T', 'DJ-561-BE'),
(6, 'Campervans Mont-Blanc', 'PC-665-KR'),
(7, 'Benimar ', 'PA-671-OS'),
(8, 'HYMER Classe-B MasterLine T', 'ZH-790-QN'),
(9, 'Knaus', 'MY-580-ZP'),
(10, 'Campervans Mont-Blanc', 'FG-532-CG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
