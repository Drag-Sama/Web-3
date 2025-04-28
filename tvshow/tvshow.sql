-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 avr. 2025 à 11:43
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tvshow`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `Nom` varchar(255) NOT NULL,
  `Photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`Nom`, `Photo`) VALUES
('Frankie Muniz', 'frankie_muniz.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `Titre` text NOT NULL,
  `Realisateur` varchar(255) NOT NULL,
  `Desc` text NOT NULL,
  `Duree` int(11) NOT NULL,
  `Id_Episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `episode`
--

INSERT INTO `episode` (`Titre`, `Realisateur`, `Desc`, `Duree`, `Id_Episode`) VALUES
(' Je ne suis pas un monstre', 'Todd Holland', 'Malcolm, découvre qu\'il est atteint d\'un mal incurable : il a un QI de 165 !', 23, 1),
('Alerte rouge', 'Arlene Sanford', 'Lois et Hal fêtent leur anniversaire de mariage. Mais Lois découvre sa robe de soirée brûlée...', 23, 2);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `Nom` varchar(255) NOT NULL,
  `Photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`Nom`, `Photo`) VALUES
('Arlene Sanford', 'arlene_sanford.jpg'),
('Todd Holland', 'todd_holland.png');

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `Titre` varchar(255) NOT NULL,
  `Num_Saison` int(255) NOT NULL,
  `Affiche` text NOT NULL,
  `Episodes` int(11) NOT NULL,
  `Acteurs` varchar(255) NOT NULL,
  `titre_serie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`Titre`, `Num_Saison`, `Affiche`, `Episodes`, `Acteurs`, `titre_serie`) VALUES
('Saison 1 Malcom', 1, 'malcom_saison1.jpg', 1, 'Frankie Muniz', '0');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `Titre` varchar(255) NOT NULL,
  `Tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`nom`) VALUES
('action'),
('humour');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`Id_Episode`),
  ADD KEY `rel_fk_key` (`Realisateur`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD KEY `ep_fk_key` (`Episodes`),
  ADD KEY `act_fk_key` (`Acteurs`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`Titre`),
  ADD KEY `tag_fk_key` (`Tag`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`nom`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `rel_fk_key` FOREIGN KEY (`Realisateur`) REFERENCES `realisateur` (`Nom`);

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `act_fk_key` FOREIGN KEY (`Acteurs`) REFERENCES `acteur` (`Nom`),
  ADD CONSTRAINT `ep_fk_key` FOREIGN KEY (`Episodes`) REFERENCES `episode` (`Id_Episode`);

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `tag_fk_key` FOREIGN KEY (`Tag`) REFERENCES `tag` (`nom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
