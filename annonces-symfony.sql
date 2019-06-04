-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 23 avr. 2019 à 16:00
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annonces-symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ad`
--

INSERT INTO `ad` (`id`, `title`, `slug`, `price`, `introduction`, `content`, `cover_image`, `rooms`, `author_id`) VALUES
(196, 'Titre de l\'annonce n°11', 'titre-de-l-annonce-n011', 180, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 4, 25),
(197, 'Titre de l\'annonce n°21', 'titre-de-l-annonce-n021', 48, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 25),
(198, 'Titre de l\'annonce n°31', 'titre-de-l-annonce-n031', 145, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 5, 25),
(199, 'Titre de l\'annonce n°41', 'titre-de-l-annonce-n041', 70, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 25),
(200, 'Titre de l\'annonce n°12', 'titre-de-l-annonce-n012', 72, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 26),
(201, 'Titre de l\'annonce n°22', 'titre-de-l-annonce-n022', 190, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 4, 26),
(202, 'Titre de l\'annonce n°32', 'titre-de-l-annonce-n032', 195, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 5, 26),
(203, 'Titre de l\'annonce n°42', 'titre-de-l-annonce-n042', 66, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 2, 26),
(204, 'Titre de l\'annonce n°13', 'titre-de-l-annonce-n013', 73, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 2, 27),
(205, 'Titre de l\'annonce n°23', 'titre-de-l-annonce-n023', 111, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 27),
(206, 'Titre de l\'annonce n°33', 'titre-de-l-annonce-n033', 83, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 2, 27),
(207, 'Titre de l\'annonce n°43', 'titre-de-l-annonce-n043', 163, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 27),
(208, 'Titre de l\'annonce n°14', 'titre-de-l-annonce-n014', 180, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 3, 28),
(209, 'Titre de l\'annonce n°24', 'titre-de-l-annonce-n024', 145, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 5, 28),
(210, 'Titre de l\'annonce n°34', 'titre-de-l-annonce-n034', 79, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 4, 28),
(211, 'Titre de l\'annonce n°44', 'titre-de-l-annonce-n044', 101, 'C\'est une introduction', '<p>Je suis le contenu</p>', 'https://via.placeholder.com/350', 1, 28);

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `booker_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `amount` double NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `booker_id`, `ad_id`, `start_date`, `end_date`, `created_at`, `amount`, `comment`) VALUES
(1, 25, 196, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1800, 'commentaire de la réservation 1'),
(2, 25, 197, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 480, 'commentaire de la réservation 1'),
(3, 25, 197, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 480, 'commentaire de la réservation 2'),
(4, 25, 198, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1450, 'commentaire de la réservation 1'),
(5, 25, 199, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 700, 'commentaire de la réservation 1'),
(6, 26, 200, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 720, 'commentaire de la réservation 1'),
(7, 26, 200, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 720, 'commentaire de la réservation 2'),
(8, 26, 200, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 720, 'commentaire de la réservation 3'),
(9, 26, 201, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1900, 'commentaire de la réservation 1'),
(10, 26, 201, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1900, 'commentaire de la réservation 2'),
(11, 26, 201, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1900, 'commentaire de la réservation 3'),
(12, 26, 201, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1900, 'commentaire de la réservation 4'),
(13, 26, 202, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1950, 'commentaire de la réservation 1'),
(14, 26, 202, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1950, 'commentaire de la réservation 2'),
(15, 26, 202, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 1950, 'commentaire de la réservation 3'),
(16, 26, 203, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 660, 'commentaire de la réservation 1'),
(17, 26, 203, '2019-04-28 14:51:31', '2019-05-08 14:51:31', '2019-04-23 14:51:31', 660, 'commentaire de la réservation 2'),
(18, 27, 204, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 730, 'commentaire de la réservation 1'),
(19, 27, 204, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 730, 'commentaire de la réservation 2'),
(20, 27, 205, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1110, 'commentaire de la réservation 1'),
(21, 27, 206, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 830, 'commentaire de la réservation 1'),
(22, 27, 207, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1630, 'commentaire de la réservation 1'),
(23, 27, 207, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1630, 'commentaire de la réservation 2'),
(24, 28, 208, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1800, 'commentaire de la réservation 1'),
(25, 28, 209, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1450, 'commentaire de la réservation 1'),
(26, 28, 209, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1450, 'commentaire de la réservation 2'),
(27, 28, 209, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1450, 'commentaire de la réservation 3'),
(28, 28, 210, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 790, 'commentaire de la réservation 1'),
(29, 28, 210, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 790, 'commentaire de la réservation 2'),
(30, 28, 210, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 790, 'commentaire de la réservation 3'),
(31, 28, 210, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 790, 'commentaire de la réservation 4'),
(32, 28, 211, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1010, 'commentaire de la réservation 1'),
(33, 28, 211, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1010, 'commentaire de la réservation 2'),
(34, 28, 211, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1010, 'commentaire de la réservation 3'),
(35, 28, 211, '2019-04-28 14:51:32', '2019-05-08 14:51:32', '2019-04-23 14:51:32', 1010, 'commentaire de la réservation 4');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `ad_id`, `url`, `caption`) VALUES
(232, 196, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(233, 197, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(234, 197, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(235, 198, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(236, 198, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(237, 198, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(238, 198, 'https://via.placeholder.com/350', 'Légende de l\'image 4'),
(239, 199, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(240, 200, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(241, 201, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(242, 201, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(243, 201, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(244, 201, 'https://via.placeholder.com/350', 'Légende de l\'image 4'),
(245, 201, 'https://via.placeholder.com/350', 'Légende de l\'image 5'),
(246, 202, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(247, 202, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(248, 202, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(249, 203, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(250, 203, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(251, 203, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(252, 203, 'https://via.placeholder.com/350', 'Légende de l\'image 4'),
(253, 204, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(254, 205, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(255, 206, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(256, 206, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(257, 207, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(258, 207, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(259, 207, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(260, 208, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(261, 208, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(262, 209, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(263, 209, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(264, 209, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(265, 210, 'https://via.placeholder.com/350', 'Légende de l\'image 1'),
(266, 210, 'https://via.placeholder.com/350', 'Légende de l\'image 2'),
(267, 210, 'https://via.placeholder.com/350', 'Légende de l\'image 3'),
(268, 211, 'https://via.placeholder.com/350', 'Légende de l\'image 1');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190312161044', '2019-03-12 16:17:33'),
('20190318102647', '2019-03-18 10:28:08'),
('20190401082125', '2019-04-01 08:23:12'),
('20190401084134', '2019-04-01 08:41:41'),
('20190423091532', '2019-04-23 09:16:44'),
('20190423143024', '2019-04-23 14:30:31');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 24);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash`, `introduction`, `description`, `slug`) VALUES
(24, 'Eric', 'Devolder', 'eric.devolder@ac-nice.fr', 'https://via.placeholder.com/64', '$2y$13$20CPd0j4LU5Dud7rrjc0nuqleaxUnJ5YIaanfDykXmPKZdr3jjHLu', 'Introduction Eric', 'Description Eric', 'eric-devolder'),
(25, 'prenom1', 'nom1', 'test1@test.fr', 'https://via.placeholder.com/64', '$2y$13$yKPBLY9Hxmx25lXiGv0d4en3R.l/IoEqLLl/EclyTDActQv6JUPjq', 'introduction1', 'Description1', 'prenom1-nom1'),
(26, 'prenom2', 'nom2', 'test2@test.fr', 'https://via.placeholder.com/64', '$2y$13$8CZoyVjb2I0u0WqNadPNU.FYsKmVEaL8TTH/w9KmRpiIYdcOen7ni', 'introduction2', 'Description2', 'prenom2-nom2'),
(27, 'prenom3', 'nom3', 'test3@test.fr', 'https://via.placeholder.com/64', '$2y$13$zHGIg0zpAdpOEKTDSr/BT.ZuP32Xq6GbW2f3wFyb7OWvdgJUDgEAS', 'introduction3', 'Description3', 'prenom3-nom3'),
(28, 'prenom4', 'nom4', 'test4@test.fr', 'https://via.placeholder.com/64', '$2y$13$es0yI61p6eywJqD1TS4fkuHF3k4W/mpwNUYFZV8uXycgs6aBk0UAq', 'introduction4', 'Description4', 'prenom4-nom4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77E0ED58F675F31B` (`author_id`);

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E00CEDDE8B7E4006` (`booker_id`),
  ADD KEY `IDX_E00CEDDE4F34D596` (`ad_id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F4F34D596` (`ad_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `IDX_332CA4DDD60322AC` (`role_id`),
  ADD KEY `IDX_332CA4DDA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `FK_77E0ED58F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_E00CEDDE4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  ADD CONSTRAINT `FK_E00CEDDE8B7E4006` FOREIGN KEY (`booker_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `FK_332CA4DDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_332CA4DDD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
