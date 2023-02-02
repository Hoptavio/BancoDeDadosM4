-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2023 às 04:19
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nba`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela`
--

CREATE TABLE `tabela` (
  `classificacao` int(2) NOT NULL,
  `equipes` varchar(255) NOT NULL,
  `v` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `casa` varchar(255) DEFAULT NULL,
  `fora` varchar(255) DEFAULT NULL,
  `u10` varchar(4) DEFAULT NULL,
  `seq` varchar(3) DEFAULT NULL,
  `conf` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tabela`
--

INSERT INTO `tabela` (`classificacao`, `equipes`, `v`, `d`, `casa`, `fora`, `u10`, `seq`, `conf`) VALUES
(4, '76ers', 51, 31, '24-17', '27-14', '6-4', 'W2', 'Leste'),
(3, 'Bucks', 51, 31, '27-14', '24-17', '6-4', 'L1', 'Leste'),
(6, 'Bulls', 46, 36, '27-14', '19-22', '4-6', 'W1', 'Leste'),
(9, 'Cavaliers', 44, 38, '25-16', '19-22', '3-7', 'W1', 'Leste'),
(2, 'Celtics', 51, 31, '28-13', '23-18', '7-3', 'W1', 'Leste'),
(8, 'Clippers', 42, 40, '25-16', '17-24', '6-4', 'W5', 'Oeste'),
(2, 'Grizzlies', 56, 26, '30-31', '26-15', '7-3', 'W1', 'Oeste'),
(8, 'Hawks', 43, 39, '27-14', '16-25', '7-3', 'W1', 'Leste'),
(1, 'Heat', 53, 29, '29-12', '24-17', '6-4', 'L1', 'Leste'),
(10, 'Hornets', 43, 39, '22-19', '21-20', '6-74', 'W3', 'Leste'),
(5, 'Jazz', 49, 33, '29-12', '20-21', '4-6', 'W1', 'Oeste'),
(12, 'Kings', 30, 52, '16-25', '14-27', '5-5', 'W1', 'Oeste'),
(11, 'Knicks', 37, 45, '17-24', '20-21', '7-3', 'W2', 'Leste'),
(11, 'Lakers', 33, 49, '21-20', '12-29', '2-8', 'W2', 'Oeste'),
(15, 'Magic', 22, 60, '12-29', '', '4-6', 'L3', 'Leste'),
(4, 'Mavericks', 52, 30, '29-12', '23-18', '8-2', 'W4', 'Oeste'),
(7, 'Nets', 44, 38, '30-21', '24-17', '6-4', 'W4', 'Leste'),
(6, 'Nuggets', 48, 34, '32-18', '25-16', '6-4', 'L1', 'Oeste'),
(13, 'Pacers', 25, 57, '16-25', '9-32', '0-10', 'L10', 'Leste'),
(9, 'Pelicans', 36, 46, '19-22', '17-24', '6-4', 'L2', 'Oeste'),
(14, 'Piston', 23, 59, '13-28', '10-31', '4-6', 'L3', 'Leste'),
(5, 'Raptors', 48, 34, '24-17', '27-14', '8-2', 'L1', 'Leste'),
(15, 'Rockets', 20, 62, '11-30', '', '2-8', 'L7', 'Oeste'),
(10, 'Spurs', 34, 48, '16-25', '17-24', '6-4', 'L3', 'Oeste'),
(1, 'Suns', 64, 18, '32-9', '32-9', '6-4', 'L1', 'Oeste'),
(14, 'Thunder', 24, 58, '12-29', '12-29', '4-6', 'L3', 'Oeste'),
(7, 'Timberwolves', 46, 36, '26-15', '20-21', '4-6', 'L1', 'Oeste'),
(13, 'Trail Blazers', 27, 55, '17-24', '10-31', '0-10', 'L11', 'Oeste'),
(3, 'Warriors', 53, 29, '31-10', '22-19', '6-4', 'W5', 'Oeste'),
(12, 'Wizards', 35, 47, '21-20', '14-27', '5-5', 'L3', 'Leste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tabela`
--
ALTER TABLE `tabela`
  ADD PRIMARY KEY (`equipes`),
  ADD UNIQUE KEY `equipes` (`equipes`,`v`,`d`,`casa`,`fora`,`seq`,`u10`,`conf`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
