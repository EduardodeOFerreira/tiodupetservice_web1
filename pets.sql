-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01/10/2024 às 23:23
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pets`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `numero`, `complemento`, `bairro`, `cep`, `cidade`, `estado`) VALUES
(1, 'Eduardo', '25797178893', '(19)99173-958', 'eduardo.24121973@gmail.com', '', '', 'apartamento 96 B', 'Parque Itália', '13036140', 'Campinas', 'SP'),
(2, 'Jardel Foresto', '24787177782', '19991229845', 'jardel.f@gmail.com', '', '', NULL, 'Centro', '13100000', 'Campinas', 'SP'),
(3, 'José Carlos', '14686067782', '19991721777', 'jc@gmail.com', 'rua 9', '169', '54B', 'Santa Genebra', '13086-130', 'Campinas', 'Sã'),
(4, 'Pedro Henrique Ferreira', '4576523499', '19991721442', 'phf@gmail.com', 'rua Francisco Pompeo de Camargo', '543', '96B', 'Guanabara', '131000000', 'Campinas', 'Sã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente_pet`
--

DROP TABLE IF EXISTS `cliente_pet`;
CREATE TABLE IF NOT EXISTS `cliente_pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `pet_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_id` (`cliente_id`),
  KEY `fk_pet_id` (`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especie` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raca` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int NOT NULL,
  `porte` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rga` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pet`
--

INSERT INTO `pet` (`id`, `nome`, `sexo`, `especie`, `raca`, `cor`, `idade`, `porte`, `rga`) VALUES
(1, 'Mel', 'Fêmea', 'Cachorro', 'Schnauzer', 'Sal e Pimenta', 1, 'Pequeno', '12345677'),
(2, 'Pepe', 'Macho', 'Cachorro', 'Yorkshire', 'Marrom', 2, 'Pequeno', '87654321'),
(4, 'pipo', 'macho', 'cachorro', 'cocker spaniel', 'bege', 4, 'pequeno', '22345678'),
(5, 'Caramelo', 'macho', 'cachorro', 'vira lata', 'caramelo', 1, 'médio', '474864321');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

DROP TABLE IF EXISTS `servico`;
CREATE TABLE IF NOT EXISTS `servico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servico` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`id`, `servico`, `tipo`, `preco`) VALUES
(1, 'hotel', 'hospedagem mensal', 455.00),
(2, 'creche', 'hospedagem diária', 150.00),
(3, 'hospedagem mensal', 'hotel', 455.00),
(4, 'hospedagem diaria', 'creche', 155.00),
(5, 'hospedagem mensal', 'creche', 555.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
CREATE TABLE IF NOT EXISTS `veterinario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `veterinario`
--

INSERT INTO `veterinario` (`id`, `nome`, `telefone`, `email`, `endereco`, `numero`, `complemento`, `bairro`, `cep`, `cidade`, `estado`) VALUES
(2, 'Adriana Colin', '19991741431', 'adriana.c@gmail.com', 'Rua 21', '777', '', 'Parque Taquaral', '13100000', 'Campinas', 'SP'),
(3, 'Fulano', '11976544321', 'email@email.com', 'rua Pedro Domingues Vita', '269', '', 'Vila Itapura', '131000000', 'Campinas', 'Sã'),
(4, 'Beltrano', '19996544321', 'beltrano@email.com', 'rua Papa Paulo VI', '569', '', 'Vila Itatiaia', '131000000', 'Campinas', 'Sã'),
(5, 'Juca Silva', '19923456789', 'juca.s@email.com', 'rua Pedro Paulo Castro', '969', '', 'São Marcos', '131000000', 'Campinas', 'Sã'),
(6, 'Paulo Coelho', '19996544321', 'pc@gmail.com', 'rua Papa Paulo VI', '569', '96B', 'Vila Itatiaia', '131000000', 'Campinas', 'Sã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinario_pet`
--

DROP TABLE IF EXISTS `veterinario_pet`;
CREATE TABLE IF NOT EXISTS `veterinario_pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `veterinario_id` int NOT NULL,
  `pet_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_veterinario_id` (`veterinario_id`),
  KEY `pet_id` (`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cliente_pet`
--
ALTER TABLE `cliente_pet`
  ADD CONSTRAINT `cliente_pet_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cliente_pet_ibfk_2` FOREIGN KEY (`id`) REFERENCES `veterinario_pet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pet_id` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `veterinario_pet`
--
ALTER TABLE `veterinario_pet`
  ADD CONSTRAINT `fk_veterinario_id` FOREIGN KEY (`veterinario_id`) REFERENCES `veterinario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_veterinario_pet` FOREIGN KEY (`pet_id`) REFERENCES `servico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
