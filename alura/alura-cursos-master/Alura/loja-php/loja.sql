-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 13-Abr-2017 às 23:34
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'esporte'),
(2, 'escolar'),
(3, 'mobilidade'),
(4, 'guloseimas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` text,
  `categoria_id` int(11) DEFAULT NULL,
  `usado` tinyint(1) DEFAULT '0',
  `imagem` varchar(30) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `tipoProduto` varchar(255) DEFAULT NULL,
  `waterMark` varchar(255) DEFAULT NULL,
  `taxaImpressao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `descricao`, `categoria_id`, `usado`, `imagem`, `isbn`, `tipoProduto`, `waterMark`, `taxaImpressao`) VALUES
(2, 'motocicleta', '10000.00', 'Descricao deste produto', 3, 0, 'moto.jpg', NULL, NULL, NULL, NULL),
(5, 'playstation', '100.00', 'Descricao deste produto', 3, 0, 'play.jpg', NULL, NULL, NULL, NULL),
(9, 'techpix', '999.00', 'A melhor do Brasil', 3, 1, 'tech.jpg', NULL, NULL, NULL, NULL),
(10, 'Notebook', '10000.00', 'Descricao deste produto', 3, 0, 'note.jpg', NULL, NULL, NULL, NULL),
(11, 'Smartphone Ostentacao', '50000.00', 'Descricao deste produto', 3, 0, 'celular.jpg', NULL, NULL, NULL, NULL),
(12, 'Suplemento MONSTER', '300.00', 'Descricao deste produto', 4, 0, 'monstro.png', NULL, NULL, NULL, NULL),
(13, 'milkshake de way', '99.00', 'um milkshake pra te deixar monstrao', 4, 0, 'whey.gif', NULL, NULL, NULL, NULL),
(14, 'Doces Diferenciados', '100.00', 'doces pra te fazer viajar na maionese', 4, 0, 'doce.jpg', NULL, NULL, NULL, NULL),
(15, 'charuto cubano', '999.00', 'um charuto cubano extremamente caro e gurmê.', 4, 0, 'charuto.jpg', NULL, NULL, NULL, NULL),
(16, 'bicicleta', '500.00', 'uma bike pra vc andar por ai', 1, 0, 'bicicleta.jpg', NULL, NULL, NULL, NULL),
(17, 'skate quebrado', '50.00', 'um skate para vc voar por ai mas ele nao voa mais', 3, 1, 'skate.jpg', NULL, NULL, NULL, NULL),
(18, 'blusa', '10.00', 'uma blusa amassada', 2, 1, 'blusa.jpg', NULL, NULL, NULL, NULL),
(19, 'Audi A4', '3999.00', 'um audi de ultima geracao', 3, 0, 'audi.jpg', NULL, NULL, NULL, NULL),
(21, 'fuji', '999.00', 'beautful place', NULL, 0, 'fuji.jpg', NULL, NULL, NULL, NULL),
(22, 'yoo', '890.00', 'ffifsdhjfdsjhs', 3, 0, 'Erro 0', NULL, NULL, NULL, NULL),
(23, 'Xablau', '20000.00', NULL, NULL, 0, '', NULL, NULL, NULL, NULL),
(24, 'monte fuji', '999.00', 'lorem ipsum', 1, 0, '', NULL, NULL, NULL, NULL),
(27, 'teclado', '564.00', 'texto', 4, 1, '', NULL, NULL, NULL, NULL),
(28, 'yoo ', '78978.00', 'lorem ipsum', 3, 0, '', NULL, NULL, NULL, NULL),
(29, 'teste1', '456.00', 'dahdajkhask', 1, 1, '', NULL, NULL, NULL, NULL),
(31, 'finni', '9.99', 'teste', 4, 0, '', NULL, NULL, NULL, NULL),
(32, 'carteira', '10.00', 'carteira xingue lingue', 3, 0, '', NULL, NULL, NULL, NULL),
(33, 'caneta', '45646.00', 'teste', 2, 0, '', '', '', NULL, NULL),
(34, 'Livro PHP', '50.00', 'teste', 2, 0, '', '', '', NULL, NULL),
(36, 'livros', '789.00', 'SDF', 3, 0, '', '', '', NULL, NULL),
(37, 'Livro PHP', '12.00', 'descricao', 2, 0, '', '123456', 'Livro', NULL, NULL),
(38, 'livro teste', '99.00', 'teste ne', 2, 0, '', '', 'Produto', '', ''),
(39, 'livro ', '45.00', 'teste', 2, 0, '', '', 'Produto', '', ''),
(40, 'livro ', '250.00', 'livro', 3, 0, '', '789156', 'LivroFisico', '', '12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'jorge.mendesx@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'bil@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
