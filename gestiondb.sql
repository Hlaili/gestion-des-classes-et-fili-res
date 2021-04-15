-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 11:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `filiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `nom`, `filiere`) VALUES
(1, '1ere annee', 2),
(2, '2eme annee', 2),
(3, '3eme annee', 2),
(4, '1ere annee', 3),
(5, '2eme annee', 3),
(6, '3eme annee', 3),
(7, '1ere annee', 4),
(8, '2eme annee', 4),
(9, '3eme annee', 4),
(10, '1ere annee', 5),
(11, '2eme annee', 5),
(12, '3eme annee', 5),
(13, '1ere annee', 1),
(14, '2eme annee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `code`, `libelle`) VALUES
(2, 'THERMO', '23'),
(3, 'MECANIQUE', '22'),
(4, 'D2', 'Marketing'),
(5, 'D3', 'finances'),
(8, 'D6', 'Administration'),
(22, 'ret', 'dsf'),
(30, 'dsffff', 'dcsd'),
(31, 'dsffff', 'dcsd');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `cin` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `fonction` int(11) NOT NULL,
  `departement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`cin`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `password`, `role`, `photo`, `fonction`, `departement`) VALUES
('BBBBBBB', 'Abbassi', 'Hamza', 'hamzaabbassi@gmail.com', '0666666666', 'AAAAAAAAAAAAAAAAAA', '3ed7dceaf266cafef032b9d5db224717', 'Admin', 'depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg', 20, 4),
('EE55021', 'Waziz', 'Moussaab', 'lachgar.m@gmail.com', '0687862800', 'Berradi 3', '3ed7dceaf266cafef032b9d5db224717', 'Admin', '5f727e9d8c0bbb30b046cf94d1d9a9f1.jpg', 19, 8),
('EE60601', 'Sarmadi', 'Yassin', 'srmooda@gmail.com', '0634805857', 'SYBA', 'ab4f63f9ac65152575886860dde480a1', 'Admin', '1ea72174d8063872c4776e122803f0f4.JPG', 20, 5),
('EE819349', 'Barhoum', 'Abdellah', 'iambarhoum@gmail.com', '0659778996', 'SYBA', 'ab4f63f9ac65152575886860dde480a1', 'Directeur', '73022302012b2e215e935b1639464707.jpeg', 21, 4);

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`id`, `code`, `libelle`) VALUES
(1, '2AP', 'Deux Années Préparatoires'),
(2, 'G2E', 'Génie énergétique et électrique'),
(3, 'GI', 'Génie industriel'),
(4, 'ISIC', 'Ingénierie des Systèmes d’Information et de Communication'),
(5, '2ITE', 'Ingénierie Informatique et Technologies Emergentes');

-- --------------------------------------------------------

--
-- Table structure for table `fonction`
--

CREATE TABLE `fonction` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonction`
--

INSERT INTO `fonction` (`id`, `code`, `nom`) VALUES
(19, 'F1', 'Developpement'),
(20, 'F2', 'financière'),
(21, 'F3', 'comptabilité'),
(22, 'F4', 'commerciale'),
(23, 'F5', 'technique'),
(24, 'F6', 'sécurité');

-- --------------------------------------------------------

--
-- Table structure for table `pointage`
--

CREATE TABLE `pointage` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `etat` varchar(50) NOT NULL,
  `employe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pointage`
--

INSERT INTO `pointage` (`id`, `date`, `etat`, `employe`) VALUES
(8, '2018-12-27 10:00:00', 'Entrer', 'EE819349'),
(12, '2018-12-27 18:30:00', 'Sortie', 'EE819349'),
(13, '2018-12-28 08:00:00', 'Entrer', 'EE55021'),
(14, '2018-12-28 16:30:00', 'Sortie', 'EE55021'),
(15, '2019-01-01 08:30:00', 'Entrer', 'EE60601'),
(16, '2019-01-01 18:00:00', 'Sortie', 'EE60601'),
(17, '2019-01-03 09:04:00', 'Entrer', 'EE60601'),
(18, '2019-01-03 15:04:00', 'Sortie', 'EE60601'),
(19, '2018-12-30 09:15:00', 'Entrer', 'EE819349'),
(20, '2018-12-30 05:33:00', 'Sortie', 'EE819349'),
(21, '2018-12-12 12:00:00', 'Entrer', 'EE55021'),
(22, '2019-01-09 08:00:00', 'Entrer', 'EE55021'),
(23, '2019-01-09 12:00:00', 'Sortie', 'EE55021'),
(24, '2019-01-08 08:00:00', 'Entrer', 'EE55021'),
(25, '2019-01-08 11:30:00', 'Sortie', 'EE55021');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pointageh`
-- (See below for the actual view)
--
CREATE TABLE `pointageh` (
`nom` varchar(50)
,`prenom` varchar(50)
,`date` date
,`cin` varchar(50)
,`heure_entrer` time
,`heure_sortie` time
,`heure` int(2)
,`minute` int(2)
);

-- --------------------------------------------------------

--
-- Structure for view `pointageh`
--
DROP TABLE IF EXISTS `pointageh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `pointageh`  AS  select `e`.`nom` AS `nom`,`e`.`prenom` AS `prenom`,cast(`p1`.`date` as date) AS `date`,`p1`.`employe` AS `cin`,cast(`p1`.`date` as time) AS `heure_entrer`,cast(`p2`.`date` as time) AS `heure_sortie`,hour(timediff(`p2`.`date`,`p1`.`date`)) AS `heure`,minute(timediff(`p2`.`date`,`p1`.`date`)) AS `minute` from ((`pointage` `p1` join `pointage` `p2` on(`p1`.`employe` = `p2`.`employe`)) join `employe` `e` on(`e`.`cin` = `p1`.`employe`)) where cast(`p1`.`date` as date) = cast(`p2`.`date` as date) and `p1`.`id` < `p2`.`id` group by cast(`p1`.`date` as date),`p1`.`employe`,`e`.`nom`,`e`.`prenom` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filiere` (`filiere`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`cin`),
  ADD KEY `fonction` (`fonction`),
  ADD KEY `departement` (`departement`);

--
-- Indexes for table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pointage`
--
ALTER TABLE `pointage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employe` (`employe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pointage`
--
ALTER TABLE `pointage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`id`);

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`fonction`) REFERENCES `fonction` (`id`),
  ADD CONSTRAINT `employe_ibfk_2` FOREIGN KEY (`departement`) REFERENCES `departement` (`id`);

--
-- Constraints for table `pointage`
--
ALTER TABLE `pointage`
  ADD CONSTRAINT `pointage_ibfk_1` FOREIGN KEY (`employe`) REFERENCES `employe` (`cin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
