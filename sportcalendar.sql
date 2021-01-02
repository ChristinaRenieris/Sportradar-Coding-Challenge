-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 09:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportcalendar`
--
CREATE DATABASE IF NOT EXISTS `sportcalendar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sportcalendar`;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID` int(11) NOT NULL,
  `eventName` varchar(50) DEFAULT NULL,
  `sport` varchar(50) DEFAULT NULL,
  `team1` varchar(50) DEFAULT NULL,
  `team2` varchar(50) DEFAULT NULL,
  `eventTime` datetime DEFAULT NULL,
  `eventLocation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `eventName`, `sport`, `team1`, `team2`, `eventTime`, `eventLocation`) VALUES
(1, 'FIFA Semifinals 2021', 'Football', 'Brazil', 'Portugal', '2021-02-10 18:00:00', 'Maracanã Stadium, Rio de Janeiro'),
(2, '2021 IIHF Ice Hockey World Championship', 'Ice Hockey', 'Sweden', 'Finland', '2021-05-20 17:30:00', 'Ericsson Globe, Stockholm'),
(3, 'NBA Semi Finals', 'Basketball', 'L.A. Lakers ', 'Boston Celtics', '2021-04-20 16:00:00', 'Staples Center, Los Angeles'),
(4, 'World Champions Finale', 'Volleyball', 'England', 'France', '2021-05-12 17:30:00', 'Earls Court Exhibition Centre, London'),
(5, 'Friendly match', 'Football', 'Vienna', 'Salzburg', '2021-01-05 15:00:00', 'Wiener Stadthalle, Vienna'),
(6, 'Olympics Finale ', 'Taekwondo', 'South Korea ', 'Greece', '2021-08-12 12:00:00', 'Olympic Arena, Tokyo'),
(7, 'Swedish Hockey League', 'Ice Hockey', 'Orebro', 'Stockholm', '2021-04-06 20:00:00', 'Ericsson Globe, Stockholm'),
(8, 'Swedish Hockey League', 'Ice Hockey', 'Gävle', 'Gothenburg', '2021-01-21 16:00:00', 'Arena, Gothenburg'),
(9, 'Swedish Hockey League', 'Ice Hockey', 'Karlstad', 'Malmö', '2021-01-25 19:00:00', 'Arena, Karlstad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
