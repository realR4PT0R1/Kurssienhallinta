-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurssienhallinta`
--

-- --------------------------------------------------------

--
-- Table structure for table `kirjautuneet`
--

CREATE TABLE `kirjautuneet` (
  `Tunnus` int(11) DEFAULT NULL,
  `Oppilaan_nimi` varchar(50) DEFAULT NULL,
  `Kurssi` varchar(14) DEFAULT NULL,
  `Kirjautumis_päivä` date DEFAULT NULL,
  `Kirjautumis_aika` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kirjautuneet`
--

INSERT INTO `kirjautuneet` (`Tunnus`, `Oppilaan_nimi`, `Kurssi`, `Kirjautumis_päivä`, `Kirjautumis_aika`) VALUES
(1, 'Garald Easeman', 'matikka', '2024-04-20', '16:58'),
(2, 'Evyn Filyakov', 'äidinkieli', '2022-12-04', '23:21'),
(3, 'Pall Loveitt', 'kuvis', '2024-10-23', '22:10'),
(4, 'Stephine Czyz', 'liikunta', '2024-10-07', '21:19'),
(5, 'Ileana Yacob', 'tietotekniikka', '2024-01-23', '11:50'),
(6, 'Colver Francis', 'sähköoppi', '2024-03-02', '16:30'),
(7, 'Marlena Wagnerin', 'ohjelmointi', '2023-10-31', '2:02'),
(8, 'Blair Sommerton', 'av-kurssi', '2024-04-26', '1:17'),
(9, 'Camala McLaverty', 'grafiikat', '2023-05-17', '10:34'),
(10, 'Corine Muffin', 'tietoverkot', '2022-12-09', '20:52');

-- --------------------------------------------------------

--
-- Table structure for table `kurssit`
--

CREATE TABLE `kurssit` (
  `Tunnus` int(11) DEFAULT NULL,
  `Kurssi` varchar(14) DEFAULT NULL,
  `Kuvaus` text DEFAULT NULL,
  `Alkupäivä` date DEFAULT NULL,
  `Loppupäivä` date DEFAULT NULL,
  `Opettaja` varchar(50) DEFAULT NULL,
  `Tila` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kurssit`
--

INSERT INTO `kurssit` (`Tunnus`, `Kurssi`, `Kuvaus`, `Alkupäivä`, `Loppupäivä`, `Opettaja`, `Tila`) VALUES
(1, 'matikka', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2024-01-01', '2024-01-03', 'Meagan', 'A320'),
(2, 'äidinkieli', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2024-01-01', '2024-01-03', 'Domenico', 'A203'),
(3, 'kuvis', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2024-01-01', '2024-01-03', 'Janessa', 'A301'),
(4, 'liikunta', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2024-01-01', '2024-01-03', 'Raimund', 'A307'),
(5, 'tietotekniikka', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2024-01-01', '2024-01-03', 'Ferd', 'A207'),
(6, 'sähköoppi', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2024-01-01', '2024-01-03', 'Olga', 'A301'),
(7, 'ohjelmointi', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2024-01-01', '2024-01-03', 'Ilyse', 'A207'),
(8, 'av-kurssi', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2024-01-01', '2024-01-03', 'Des', 'A207'),
(9, 'grafiikat', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2024-01-01', '2024-01-03', 'Kandy', 'A307'),
(10, 'tietoverkot', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2024-01-01', '2024-01-03', 'Ann', 'A203');

-- --------------------------------------------------------

--
-- Table structure for table `opettajat`
--

CREATE TABLE `opettajat` (
  `Tunnusnumero` int(11) DEFAULT NULL,
  `Etunimi` varchar(50) DEFAULT NULL,
  `Sukunimi` varchar(50) DEFAULT NULL,
  `Aine` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opettajat`
--

INSERT INTO `opettajat` (`Tunnusnumero`, `Etunimi`, `Sukunimi`, `Aine`) VALUES
(1, 'Tami', 'Helkin', 'matikka'),
(2, 'Constantin', 'Sanbrook', 'äidinkieli'),
(3, 'Bryn', 'McNysche', 'kuvis'),
(4, 'Gwenneth', 'Letessier', 'liikunta'),
(5, 'Binni', 'Di Pietro', 'tietotekniikka'),
(6, 'Timi', 'Letrange', 'sähköoppi'),
(7, 'Leslie', 'Satchell', 'ohjelmointi'),
(8, 'Laurens', 'MacCurlye', 'av-kurssi'),
(9, 'Yvon', 'Laroze', 'grafiikat'),
(10, 'Berkly', 'Izzatt', 'tietoverkot');

-- --------------------------------------------------------

--
-- Table structure for table `opiskelijat`
--

CREATE TABLE `opiskelijat` (
  `Opiskelijanumero` int(11) DEFAULT NULL,
  `Etunimi` varchar(50) DEFAULT NULL,
  `Sukunimi` varchar(50) DEFAULT NULL,
  `Syntymäpäivä` date DEFAULT NULL,
  `Vuosikurssi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opiskelijat`
--

INSERT INTO `opiskelijat` (`Opiskelijanumero`, `Etunimi`, `Sukunimi`, `Syntymäpäivä`, `Vuosikurssi`) VALUES
(1, 'Stefanie', 'Dadds', '2005-03-03', 2),
(2, 'Merlina', 'Brownsword', '2007-03-22', 1),
(3, 'Ciel', 'Allard', '2008-05-05', 1),
(4, 'Willard', 'Dudlestone', '2001-05-19', 2),
(5, 'Benjy', 'Sitlinton', '2003-08-25', 1),
(6, 'Lorinda', 'Adaway', '2005-02-13', 3),
(7, 'Em', 'Challener', '2000-03-05', 3),
(8, 'Isak', 'Tilburn', '2008-11-09', 2),
(9, 'Marlo', 'Letchford', '2006-05-21', 1),
(10, 'Alastair', 'Forrest', '2003-06-14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tilat`
--

CREATE TABLE `tilat` (
  `Tunnus` int(11) DEFAULT NULL,
  `Nimi` varchar(4) DEFAULT NULL,
  `Kapasiteetti` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tilat`
--

INSERT INTO `tilat` (`Tunnus`, `Nimi`, `Kapasiteetti`) VALUES
(1, 'A203', '20'),
(2, 'A207', '20'),
(3, 'A209', '15'),
(4, 'A301', '15'),
(5, 'A302', '25'),
(6, 'A307', '25'),
(7, 'A320', '20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
