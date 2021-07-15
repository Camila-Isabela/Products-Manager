-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jul-2021 às 23:27
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ximbole`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `cod_barra` int(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `preco` varchar(45) NOT NULL,
  `qtd_estoque` int(45) NOT NULL,
  `peso` double NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '''ativo'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `cod_barra`, `nome`, `fabricante`, `categoria`, `tipo`, `preco`, `qtd_estoque`, `peso`, `descricao`, `data`, `status`) VALUES
(1, 123456, 'Teste produto', 'Sony', 'Eletrônicos', 'xxxx', '45', 100, 2, 'Produto de teste da Sony', '2021-07-13', 'ativo'),
(2, 987456321, 'Sunga', 'Calvin Klein', 'Roupas', 'xxxx', '35', 100, 100, 'Sunga de banho da marca Calvin Klein', '2021-07-15', '\'ativo\'');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
