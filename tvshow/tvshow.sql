-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 avr. 2025 à 14:55
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
  `nom` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`nom`, `photo`) VALUES
('Aaron Paul', 'aaron_paul.jpg'),
('Bryan Cranston', 'bryan_cranston.jpg'),
('Christopher Masterson', 'christopher_masterson.jpg'),
('Erik Per Sullivan', 'erik_per_sullivan.jpg'),
('Frankie Muniz', 'frankie_muniz.jpg'),
('Jane Kaczmarek', 'jane-kaczmarek.jpg'),
('Justin Berfied', 'justin-berfied.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `titre_saison` varchar(255) NOT NULL,
  `id_episode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`titre_saison`, `id_episode`) VALUES
('Saison 1 Malcom', 1),
('Saison 1 Malcom', 2),
('Saison 1 Malcom', 3),
('Saison 1 Malcom', 4),
('Saison 1 Malcom', 5),
('Saison 1 Breaking Bad', 7),
('Saison 1 Breaking Bad', 6);

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `titre` text NOT NULL,
  `desc` text NOT NULL,
  `duree` int(11) NOT NULL,
  `id_Episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `episode`
--

INSERT INTO `episode` (`titre`, `desc`, `duree`, `id_Episode`) VALUES
(' Je ne suis pas un monstre', 'Malcolm, découvre qu\'il est atteint d\'un mal incurable : il a un QI de 165 !', 23, 1),
('Alerte rouge', 'Lois et Hal fêtent leur anniversaire de mariage. Mais Lois découvre sa robe de soirée brûlée...', 23, 2),
('Seuls à la maison', 'Lois et Hal confient à Francis la garde des trois enfants pour le week-end.', 23, 3),
('Honte', 'Malcolm est rongé par le remords quand il apprend qu’il a frappé un enfant de sept ans.', 23, 4),
('Changement de famille', 'Malcolm est engagé comme baby-sitter dans une famille riche avec une somptueuse villa.', 23, 5),
('Chute libre', 'Professeur de chimie dans un lycée, Walter White travaille parallèlement dans une station de lavage de voitures afin de boucler les fins de mois de sa famille, composée de sa femme Skyler, qui est enceinte, et de son fils Walter Jr, un adolescent handicapé. Alors qu\'il découvre qu\'il est atteint d\'un cancer du poumon en stade terminal, Walter décide de reprendre sa vie en main. Utilisant ses connaissances en chimie, il s\'attelle à la fabrication de méthamphétamines, avec l\'aide de Jesse Pinkman, un ancien élève qui s\'est spécialisé dans le trafic de drogues...', 58, 6),
('Le choix', 'Après leur mésaventure dans le désert, Walter et Pinkman doivent se débarrasser des corps des deux trafiquants qu\'ils ont éliminé. Leur tâche se complique quand ils découvrent avec stupéfaction que l\'un d\'entre eux a survécu. Les deux acolytes ne sont pas d\'accord quant à la marche à suivre. De son côté, Skyler s\'interroge sur le comportement étrange de son mari. Intriguée par un appel, elle mène l\'enquête pour découvrir ce qu\'il fabrique. Au lycée, Walter ne parvient pas à faire abstraction de ses ennuis...', 42, 7);

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `titre_saison` varchar(255) NOT NULL,
  `nom_acteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`titre_saison`, `nom_acteur`) VALUES
('Saison 1 Malcom', 'Bryan Cranston'),
('Saison 1 Malcom', 'Christopher Masterson'),
('Saison 1 Malcom', 'Erik Per Sullivan'),
('Saison 1 Malcom', 'Frankie Muniz'),
('Saison 1 Malcom', 'Jane Kaczmarek'),
('Saison 1 Malcom', 'Justin Berfied'),
('Saison 1 Breaking Bad', 'Bryan Cranston'),
('Saison 1 Breaking Bad', 'Aaron Paul');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `nom` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`nom`, `photo`) VALUES
('Adam Bernstein', 'adam_bernstein.jpg'),
('Andrew Orenstein', 'andrew_orenstein.png'),
('Arlene Sanford', 'arlene_sanford.jpg'),
('Jeff Melman', 'jeff_melman.jpg'),
('Nick Marck', 'nick_marck.jpg'),
('Todd Holland', 'todd_holland.png'),
('Vince Gilligan', 'vince_gilligan.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `nom_real` varchar(255) NOT NULL,
  `id_episode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realise`
--

INSERT INTO `realise` (`nom_real`, `id_episode`) VALUES
('Todd Holland', 1),
('Arlene Sanford', 2),
('Todd Holland', 3),
('Andrew Orenstein', 3),
('Nick Marck', 4),
('Jeff Melman', 5),
('Vince Gilligan', 6),
('Adam Bernstein', 7);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `num_saison` int(255) NOT NULL,
  `affiche` text NOT NULL,
  `titre_serie` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`num_saison`, `affiche`, `titre_serie`, `titre`) VALUES
(1, 'breaking_bad_saison1.jpg', 'Breaking Bad', 'Saison 1 Breaking Bad'),
(1, 'malcom_saison1.jpg', 'Malcom', 'Saison 1 Malcom');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `titre_serie` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`titre_serie`, `tag`) VALUES
('Breaking Bad', 'drame'),
('Malcom', 'humour');

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
('drame'),
('humour');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD KEY `epi_fk_key` (`id_episode`),
  ADD KEY `sa_fk_key` (`titre_saison`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id_Episode`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD KEY `ac_fk_key` (`nom_acteur`),
  ADD KEY `sai_fk_key` (`titre_saison`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD KEY `epis_fk_key` (`id_episode`),
  ADD KEY `real_fk_key` (`nom_real`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`titre`),
  ADD KEY `ser_fk_key` (`titre_serie`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`titre_serie`),
  ADD KEY `tag_fk_key` (`tag`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`nom`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `epi_fk_key` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sa_fk_key` FOREIGN KEY (`titre_saison`) REFERENCES `saison` (`titre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `ac_fk_key` FOREIGN KEY (`nom_acteur`) REFERENCES `acteur` (`Nom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sai_fk_key` FOREIGN KEY (`titre_saison`) REFERENCES `saison` (`titre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `epis_fk_key` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `real_fk_key` FOREIGN KEY (`nom_real`) REFERENCES `realisateur` (`Nom`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `ser_fk_key` FOREIGN KEY (`titre_serie`) REFERENCES `serie` (`titre_serie`);

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `tag_fk_key` FOREIGN KEY (`tag`) REFERENCES `tag` (`nom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
