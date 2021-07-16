-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jul-2021 às 17:06
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
  `id` int(11) NOT NULL,
  `cod_barra` int(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `preco` varchar(45) NOT NULL,
  `qtd_estoque` int(45) NOT NULL,
  `peso` varchar(45) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `cod_barra`, `nome`, `fabricante`, `categoria`, `tipo`, `preco`, `qtd_estoque`, `peso`, `descricao`, `data`, `status`) VALUES
(1, 123456, 'TV', 'Sony', 'Eletrônicos', 'xxxx', '45', 100, '2', 'Televisão 60 polegadas', '2021-07-13', 'ativo'),
(2, 987456321, 'Sunga', 'Calvin Klein', 'Roupas', 'xxxx', '35', 100, '100', 'Sunga de banho da marca Calvin Klein', '2021-07-15', 'ativo'),
(4, 357489256, 'Lego', 'Box Lego', 'Brinquedos', 'zzzzzzz', '123,50', 57, '2500', 'Caixa de montagem com peças lego. Produto de plástico', '2021-07-07', 'inativo'),
(5, 12365421, 'Bola de Futebol', 'EA Sports', 'Brinquedos', 'wwww', '78,90', 25, '1450', 'Bola de futebol em couro legítimo', '2021-07-04', 'ativo'),
(6, 15631, 'Camisa', 'Renner', 'Roupas', 'qqqqq', '45,90', 120, '500', 'Camisa de malha', '2021-07-08', 'ativo'),
(7, 153451, 'Short', 'Riachuelo', 'Roupas', 'ddddddd', '69,90', 15, '400', 'Short de malha de algodão', '2021-07-15', 'ativo'),
(8, 123451611, 'Notebook', 'LeNovo', 'Eletrônicos', 'fffff', '2899,00', 48, '2500', 'Notebook 16GB RAM, 15 pol\', quadCore', '2021-07-07', 'ativo'),
(9, 56564578, 'Teste produto 2', 'Sony', 'Eletrônicos', 'wwww', '150,00', 239, '6800', 'Testando a inclusão de um produto em que o status vai ativo por padrão e a data de inclusão vai no dia atual por padrão', '2021-07-15', 'ativo'),
(11, 542352, 'Teste do Status', 'Testando o Status', 'Teste', 'jjjj', '25,00', 2, '100', 'Agora vai', '2021-07-15', 'ativo'),
(12, 5645, 'nada', 'Testando', 'Teste', 'jjjj', '35,80', 1, '10', 'hjui', '2021-07-15', 'ativo'),
(14, 321555, 'Teste', 'Testando', 'Teste', 'jjjj', '', 2, '150', 'Nada , só testando a adição de produto!', '2021-07-16', 'ativo'),
(15, 898989, 'Teste', 'Testando', 'Teste', 'jjjj', '', 2, '12', 'Testando o alerta de inserção de produto!!!', '2021-07-16', 'ativo'),
(16, 898987, 'Teste', 'Testando', 'Teste', 'jjjj', '', 2, '12', 'Testando o alerta de inserção de produto!!!', '2021-07-16', 'ativo'),
(17, 745, 'Teste', 'Testando', 'Teste', 'jjjj', '', 2, '2', 'Testando o alerta de adição de produto!!!', '2021-07-16', 'ativo'),
(18, 745, 'Teste', 'Testando', 'Teste', 'jjjj', '', 2, '2', 'Testando o alerta de adição de produto!!!', '2021-07-16', 'ativo'),
(19, 11111, 'Teste', 'Testando', 'Teste', 'jjjj', '12', 2, '10', 'Testando o update novamenteeee', '2021-07-16', 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
