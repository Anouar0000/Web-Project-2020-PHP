-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 09 juin 2020 à 20:14
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myhmsdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admintb`
--

CREATE TABLE `admintb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admintb`
--

INSERT INTO `admintb` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'nasreddin', 'hamzawi');

-- --------------------------------------------------------

--
-- Structure de la table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(13, 15, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'Ganesh', 550, '2020-06-20', '10:00:00', 0, 1),
(13, 16, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'gandoura', 100, '2020-06-18', '12:00:00', 1, 0),
(13, 17, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'Ganesh', 550, '2020-06-26', '14:00:00', 1, 1),
(13, 18, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'saber', 300, '2020-06-30', '12:00:00', 1, 1),
(13, 19, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'najwa', 200, '2020-06-26', '08:00:00', 1, 1),
(14, 20, 'mohamed', 'ben hamouda', 'Male', 'mouhamed@gmail.com', '87963258', 'salem', 50, '2020-06-23', '10:00:00', 1, 1),
(16, 21, 'donya', 'ben hamouda', 'Female', 'donya@gmail.com', '89632589', 'gandoura', 100, '2020-06-26', '16:00:00', 0, 1),
(16, 22, 'donya', 'ben hamouda', 'Female', 'donya@gmail.com', '89632589', 'najwa', 200, '2020-06-20', '14:00:00', 0, 1),
(16, 23, 'donya', 'ben hamouda', 'Female', 'donya@gmail.com', '89632589', 'gandoura', 100, '2020-06-25', '08:00:00', 1, 1),
(16, 24, 'donya', 'ben hamouda', 'Female', 'donya@gmail.com', '89632589', 'Ganesh', 550, '2020-06-25', '12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('anouar', 'anouar@gmail.com', '25693258', 'Good job');

-- --------------------------------------------------------

--
-- Structure de la table `deptartementtb`
--

CREATE TABLE `deptartementtb` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `deptartementtb`
--

INSERT INTO `deptartementtb` (`id`, `nom`) VALUES
(1, 'urgence'),
(2, 'Department of Obstetrics');

-- --------------------------------------------------------

--
-- Structure de la table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `depID` int(11) DEFAULT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `depID`, `docFees`) VALUES
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', NULL, 550),
('gandoura', 'gandoura', 'gandoura@gmail.com', 'Cardiologist', 2, 100),
('salem', 'salem', 'salem@gmail.com', 'Pediatrician', 1, 50),
('najwa', 'najwa', 'najwa@gmail.com', 'Neurologist', 2, 200),
('saber', 'saber', 'saber@gmail.com', 'General', 1, 300);

-- --------------------------------------------------------

--
-- Structure de la table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(12, 'Nas Eddin', 'Ben hamouda', 'Male', 'nasreddinbenhamouda@gmail.com', '0548080062', 'hamzawi', 'hamzawi'),
(13, 'anouar', 'Ben hamza', 'Male', 'anouar@gmail.com', '5896321555', 'anouar', 'anouar'),
(14, 'mohamed', 'ben hamouda', 'Male', 'mouhamed@gmail.com', '87963258', 'mouhamed', 'mouhamed'),
(16, 'donya', 'ben hamouda', 'Female', 'donya@gmail.com', '89632589', 'donya1', 'donya1');

-- --------------------------------------------------------

--
-- Structure de la table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('gandoura', 13, 16, 'anouar', 'Ben hamza', '2020-06-18', '12:00:00', 'song', 'vervex', 'u are very sensitive'),
('gandoura', 16, 23, 'donya', 'ben hamouda', '2020-06-25', '08:00:00', 'no disease', 'no allergies', 'ur are healthy');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1` (`pid`);

--
-- Index pour la table `deptartementtb`
--
ALTER TABLE `deptartementtb`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctb`
--
ALTER TABLE `doctb`
  ADD KEY `fk` (`depID`);

--
-- Index pour la table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admintb`
--
ALTER TABLE `admintb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `deptartementtb`
--
ALTER TABLE `deptartementtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`);

--
-- Contraintes pour la table `doctb`
--
ALTER TABLE `doctb`
  ADD CONSTRAINT `fk` FOREIGN KEY (`depID`) REFERENCES `deptartementtb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
