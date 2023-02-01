-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Fev-2023 às 21:12
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
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `equipes` varchar(255) NOT NULL,
  `v` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `casa` varchar(255) DEFAULT NULL,
  `fora` varchar(255) DEFAULT NULL,
  `u10` varchar(4) DEFAULT NULL,
  `seq` varchar(2) DEFAULT NULL,
  `conf` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`equipes`, `v`, `d`, `casa`, `fora`, `u10`, `seq`, `conf`) VALUES
('76ers', 51, 31, '24-17', '27-14', '6-4', 'W2', 'Leste'),
('Bucks', 51, 31, '27-14', '24-17', '6-4', 'L1', 'Leste'),
('Bulls', 46, 36, '27-14', '19-22', '4-6', 'W1', 'Leste'),
('Cavaliers', 44, 38, '25-16', '19-22', '3-7', 'W1', 'Leste'),
('Celtics', 51, 31, '28-13', '23-18', '7-3', 'W1', 'Leste'),
('Hawks', 43, 39, '27-14', '16-25', '7-3', 'W1', 'Leste'),
('Heat', 53, 29, '29-12', '24-17', '6-4', 'L1', 'Leste'),
('Hornets', 43, 39, '22-19', '21-20', '6-74', 'W3', 'Leste'),
('Knicks', 37, 45, '17-24', '20-21', '7-3', 'W2', 'Leste'),
('Magic', 22, 60, '12-29', '10-31', '4-6', 'L3', 'Leste'),
('Nets', 44, 38, '30-21', '24-17', '6-4', 'W4', 'Leste'),
('Pacers', 25, 57, '16-25', '9-32', '0-10', 'L1', 'Leste'),
('Piston', 23, 59, '13-28', '10-31', '4-6', 'L3', 'Leste'),
('Raptors', 48, 34, '24-17', '27-14', '8-2', 'L1', 'Leste'),
('Wizards', 35, 47, '21-20', '14-27', '5-5', 'L3', 'Leste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`equipes`),
  ADD UNIQUE KEY `equipes` (`equipes`,`v`,`d`,`casa`,`fora`,`seq`,`u10`,`conf`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
