-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 01 août 2017 à 17:28
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `login` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`login`, `mdp`) VALUES
('baptiste77176@gmail.com', 'babou3000');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `text_area` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email_user`, `last_name`, `first_name`, `phone_number`, `text_area`) VALUES
(1, 'baptiste77176@gmail.com', 'arbeloa', 'baptiste', '0664332224', 'hello world !'),
(2, 'batou@gmail.com', 'batou', 'batou', '0665656565', 'world hello');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
