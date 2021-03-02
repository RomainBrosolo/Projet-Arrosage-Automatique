-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 jan. 2021 à 22:09
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet-arrosage`
--

-- --------------------------------------------------------

--
-- Structure de la table `configurations`
--

CREATE TABLE `configurations` (
  `nom` varchar(20) NOT NULL,
  `fréquence` int(11) DEFAULT NULL,
  `seuil` int(11) DEFAULT NULL,
  `durée` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `configurations`
--

INSERT INTO `configurations` (`nom`, `fréquence`, `seuil`, `durée`) VALUES
('feq15', 15, 0, 5),
('hum40', 0, 40, 5),
('hum50', 0, 50, 5),
('test2', 2, 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `datacollect`
--

CREATE TABLE `datacollect` (
  `date` date DEFAULT NULL,
  `heure` int(11) DEFAULT NULL,
  `humidité` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datacollect`
--

INSERT INTO `datacollect` (`date`, `heure`, `humidité`) VALUES
('2021-01-26', 2, 62),
('2021-01-26', 3, 58),
('2021-01-26', 2, 62),
('2021-01-26', 3, 58),
('2021-01-26', 4, 53),
('2021-01-26', 5, 47),
('2021-01-26', 6, 43),
('2021-01-27', 2, 60),
('2021-01-27', 7, 30),
('2021-01-27', 3, 55),
('2021-01-27', 4, 46),
('2021-01-27', 5, 40),
('2021-01-27', 6, 35),
('2021-01-27', 8, 80),
('2021-01-27', 21, 30),
('2021-01-27', 15, 60),
('2021-01-27', 12, 67),
('2021-01-27', 9, 75),
('2021-01-27', 10, 70),
('2021-01-27', 11, 68),
('2021-01-27', 13, 66),
('2021-01-27', 14, 64),
('2021-01-27', 18, 45),
('2021-01-27', 16, 55),
('2021-01-27', 17, 50),
('2021-01-27', 19, 40),
('2021-01-27', 20, 35),
('2021-01-27', 22, 80);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `login` varchar(20) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `groupe` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`login`, `password`, `groupe`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'dev'),
('dev', 'e77989ed21758e78331b20e477fc5582', 'dev'),
('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'usr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
