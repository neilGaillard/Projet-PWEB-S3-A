-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2020 at 07:48 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carlocation`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `IdClient` int(11) NOT NULL,
  `NomClient` varchar(40) NOT NULL,
  `MDPClient` varchar(50) NOT NULL,
  `EmailClient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`IdClient`, `NomClient`, `MDPClient`, `EmailClient`) VALUES
(1, 'Superlocation', '123456', 'superlocation@gmail.com'),
(15, 'Célia', 'Rousseau', 'celia.rousseau@gmail.com'),
(16, 'Frédérique', 'Robert', 'fred.robert@gmail.com'),
(17, 'David', 'Auger', 'david.auger@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `facturation`
--

CREATE TABLE `facturation` (
  `IdF` int(11) NOT NULL,
  `IdeF` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `IdvF` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DateDebut` date NOT NULL,
  `DateFin` date NOT NULL,
  `Montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vehicule`
--

CREATE TABLE `vehicule` (
  `IdV` int(11) NOT NULL,
  `NomV` varchar(40) COLLATE utf8_bin NOT NULL,
  `TypeV` varchar(40) COLLATE utf8_bin NOT NULL,
  `CaractV` varchar(50) COLLATE utf8_bin NOT NULL,
  `LocationV` tinyint(50) NOT NULL,
  `PhotoV` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vehicule`
--

INSERT INTO `vehicule` (`IdV`, `NomV`, `TypeV`, `CaractV`, `LocationV`, `PhotoV`) VALUES
(2, 'Fusée', '208', 'Usage unique', 0, 'nasa.jpg'),
(4, 'Voiture de Sport', '1', 'Confortable', 0, '1.jpeg'),
(5, 'Grande voiture', '2', 'Grande', 0, '2.jpg'),
(6, 'Voiture utile', '3', 'Caméra de recul', 0, '3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IdClient`);

--
-- Indexes for table `facturation`
--
ALTER TABLE `facturation`
  ADD PRIMARY KEY (`IdF`);

--
-- Indexes for table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`IdV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `IdClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `facturation`
--
ALTER TABLE `facturation`
  MODIFY `IdF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `IdV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
