-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 09/04/2019 às 01:09
-- Versão do servidor: 10.1.16-MariaDB
-- Versão do PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancopietro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `categorias`
--

INSERT INTO `categorias` (`ID`, `Nome`) VALUES
(1, 'Cachorro-Quente'),
(2, 'Xis'),
(3, 'Pizza'),
(4, 'A la Minuta'),
(5, 'Torradas'),
(6, 'Diversos'),
(7, 'Pasteis'),
(8, 'Chivitos'),
(9, 'Bebidas'),
(10, 'Hamburger'),
(14, 'teste');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comanda`
--

CREATE TABLE `comanda` (
  `ID` int(11) NOT NULL,
  `Data_venda` date NOT NULL,
  `Status` int(2) NOT NULL,
  `Valor_total` float NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Forma_pagamento` int(2) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Entrega` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `comanda`
--

INSERT INTO `comanda` (`ID`, `Data_venda`, `Status`, `Valor_total`, `Endereco`, `Forma_pagamento`, `ID_Usuario`, `Entrega`) VALUES
(1, '2018-08-07', 1, 58, 'Avenida Dom Pedro II,537', 1, 7, 0),
(2, '2018-08-07', 1, 63, 'Rua Oscar Jacinto Teresa', 2, 3, 0),
(3, '2018-08-07', 2, 35, 'Rua Carlos Monserrat', 1, 2, 0),
(4, '2018-08-07', 1, 25, 'Rua Vitorino Soares Pinto', 1, 1, 0),
(5, '2018-08-07', 1, 30, 'Rua Oscar Jacinto Teresa', 1, 9, 0),
(6, '2018-08-07', 1, 0, '', 0, 10, 0),
(7, '2018-08-07', 1, 40, 'Ambrósio Elói C. Loss,490', 1, 5, 0),
(8, '2018-08-07', 2, 60, 'Rua Jornalista Elcy Nunes', 1, 8, 0),
(9, '2018-08-07', 1, 25, 'Avenida Dom Pedro II,537', 1, 5, 0),
(10, '2018-08-07', 1, 58, 'Rua Jornalista Elcy Nunes', 1, 6, 0),
(34, '2018-12-04', 0, 18, 'Endereco', 0, 3, 0),
(35, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(36, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(37, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(38, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(39, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(40, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(41, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(42, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(43, '2018-12-04', 1, 18, 'Endereco', 0, 3, 0),
(44, '2018-12-10', 1, 8, 'Endereco', 0, 1, 0),
(45, '2018-12-10', 1, 12, 'Endereco', 0, 1, 0),
(46, '2018-12-10', 1, 12, 'Endereco', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Imagem` varchar(100) NOT NULL,
  `Descricao` varchar(200) NOT NULL,
  `Valor` float NOT NULL,
  `ID_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`ID`, `Nome`, `Imagem`, `Descricao`, `Valor`, `ID_Categoria`) VALUES
(2, 'Cachorro-Quente Simples', 'cachorro-quente-1.jpg', 'Pão, salsicha, maionese, ketchup, mostarda e queijo ralado', 4, 1),
(3, 'Cachorro-Quente Completo', 'cachorroquente1.jpg', 'Pão, salsicha, maionese, ketchup, mostarda, grãos, alface, tomate e queijo ralado', 6, 1),
(4, 'Cachorro-Quente com Bacon', 'butchers-market-texas-chilli-hot-dog.jpg', 'Pão, salsicha enrolada com bacon, maionese, ketchup, mostarda, grãos e queijo ralado', 7, 1),
(5, 'Galinhão Simples', '59a9b760269b6.png', 'Pão, frango desfiado, maionese, ketchup, mostarda, grãos e queijo ralado', 5, 1),
(6, 'Galinhão Strogonoff', '40772571_681237872247011_5781019981725368282_n.jpg', 'Pão, molho de strogonoff com frango desfiado, maionese, ketchup, mostarda, grãos e queijo ralado', 7, 1),
(7, 'Xis Salada', 'download.jpg', 'Bife, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 13, 2),
(8, 'Burguer Kids', 'WhatsApp-Image-2018-05-30-at-11.17.23-1.jpeg', 'Bife de hamburguer, queijo cheddar, maionese, mostarda, ketchup e batata frita (Mini refri ou água sem gás)', 14, 2),
(9, 'Xis Alho e Óleo', '5.png', 'Bife, alho e óleo, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 16, 2),
(10, 'Xis Bacon', 'meu-x-bacon-uma-deliciaa.jpg', 'Bife, bacon, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 17, 2),
(11, 'Xis Calabresa', 'x-calabresa.jpg', 'Bife, calabresa, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 17, 2),
(12, 'Xis Cheddar', 'MG_0937-xis-cheddar_CAPA.jpg', 'Bife, queijo cheddar, ovo, tomate, alface, ervilha, milho, presunto, maionese, mostarda, ketchup', 16, 2),
(13, 'Xis Coração', 'xis-coracao.jpg', 'Bife, coração, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 18, 2),
(14, 'Xis Duplo', 'x_duplo_5706e4a78abca.jpg', '2 Bifes, 2 ovos, 2 presuntos, 2 queijos tomate, alface, ervilha, milho, maionese, mostarda, ketchup', 19, 2),
(15, 'Xis Entreveiro', 'xis-especial-antes-de.jpg', 'Bife, frango, coração, calabresa, bacon, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 20, 2),
(16, 'Xis Filé Acebolado', 'images.jpg', 'Filé, cebola, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 22, 2),
(17, 'Xis Galinhão', 'Xis-Galinha (1).jpg', 'Bife, frango, ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda e ketchup', 17, 2),
(18, 'Xis Portuguesa', 'download (3).jpg', 'Bife, carne em cubos,cebola, pimentão, azeitona, bacon ovo, tomate, alface, ervilha, milho, presunto, queijo, maionese, mostarda, ketchup', 19, 2),
(19, 'Xis Strogonoff Carne', 'Xis-Strogonoff.jpg', 'Strogonoff de carne, tomate, alface, ervilha, milho, presunto, queijo,bacon, maionese, mostarda, ketchup', 19, 2),
(21, 'Xis Strogonoff de frango', 'Xis-Galinha-Acebolado.jpg', 'Strogonoff de frango, tomate, alface, ervilha, milho, presunto, queijo,bacon, maionese, mostarda, ketchup', 19, 2),
(22, 'Chivitão', '28660437_1910318492614598_4224381922829516254_n.jpg', 'Bife de filé, ovo cozido, tomate, alface, azeitona, presunto, queijo, cebola frita, bacon, maionese, mostarda e ketchup no pão de xis', 24, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `E_mail` varchar(30) NOT NULL,
  `Nascimento` date NOT NULL,
  `RG` int(11) NOT NULL,
  `Tipo` varchar(10) NOT NULL,
  `Senha` varchar(8) NOT NULL,
  `CPF` varchar(13) NOT NULL,
  `Endereco` varchar(25) NOT NULL,
  `Cartao_de_Credito` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nome`, `E_mail`, `Nascimento`, `RG`, `Tipo`, `Senha`, `CPF`, `Endereco`, `Cartao_de_Credito`) VALUES
(1, 'Eduardo Benjamin Fogaça', 'benjaminfogaca@eptv.com.br', '1996-06-12', 243452287, '1', '12345', '84704831027', 'Ambrósio Elói C. Loss,490', '5314381634396547'),
(2, 'Heloisa Amanda Assis', 'mandaassis-91@damha.com.br', '1996-06-06', 454067732, '1', '12345', '37181927051', 'Plínio da Costa Ávila,346', '5331771185444200'),
(3, 'Pietro Luan Lopes', 'pietros@knowconsulting.com.br', '1992-03-18', 403762066, '0', '12345', '17350898002', 'Avenida Dom Pedro II,537', '5106528780386209'),
(4, 'Luana Emily da Conceição', 'luanao@contjulioroberto.com.br', '1992-07-08', 507889186, '0', '12345', '70198670060', 'Rua José Manoel Pujol', '5441970086819307'),
(5, 'Benedito Nelson Almeida', 'benedito@sobraer.com.br', '1999-10-27', 396894252, '1', '12345', '83291375033', 'Rua Vitorino Soares Pinto', '5133324085022179'),
(6, 'Luiz Giovanni Renato Rezende', 'rezende-75@osbocops.com', '1999-01-27', 266222699, '1', '12345', '96086721041', 'Rua Carlos Monserrat', '5115306557312511'),
(7, 'Iago Nelson Brito', '42716468060', '1999-08-07', 450318977, '1', '12345', '42716468060', 'Rua João Mendonça de Lima', '5109691284293763'),
(8, 'Carolina Sueli Silvana Mendes', 'mendes_@zipmail.com.br', '1999-02-12', 505525902, '1', '12345', '34055451024', 'Rua Vitelio Gazapina', '5429033367938332'),
(9, 'Brenda Lara Silva', 'brendalarasilva-82@live.com', '1999-06-14', 401528091, '1', '12345', '32180328060', 'Rua Oscar Jacinto Teresa', '5119732016784675'),
(10, 'Lara Eduarda Aurora Corte Real', 'cortereal_@efetivaseguros.com', '1999-05-21', 500308895, '1', '12345', '56600713097', 'Rua Jornalista Elcy Nunes', '5314982542825277'),
(11, 'Henrique 23', 'henrique@henrique.com.br', '1992-02-07', 2147483647, '0', '12345', '02478206013', 'rua da amargura, 666', '1122334455');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas_produtos`
--

CREATE TABLE `vendas_produtos` (
  `ID_Vendas` int(11) NOT NULL,
  `ID_Produtos` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `vendas_produtos`
--

INSERT INTO `vendas_produtos` (`ID_Vendas`, `ID_Produtos`, `quantidade`, `valor`) VALUES
(5, 13, 3, 18),
(8, 6, 5, 7),
(4, 9, 10, 16),
(2, 8, 15, 14),
(8, 16, 20, 22),
(3, 19, 50, 19),
(4, 13, 20, 18),
(10, 21, 60, 18),
(7, 10, 20, 17),
(5, 22, 50, 24),
(34, 2, 3, 0),
(34, 3, 1, 0),
(35, 2, 3, 0),
(35, 3, 1, 0),
(36, 2, 3, 0),
(36, 3, 1, 0),
(37, 2, 3, 0),
(37, 3, 1, 0),
(38, 2, 3, 0),
(38, 3, 1, 0),
(39, 2, 3, 0),
(39, 3, 1, 0),
(40, 2, 3, 0),
(40, 3, 1, 0),
(41, 2, 3, 4),
(41, 3, 1, 6),
(42, 2, 3, 4),
(42, 3, 1, 6),
(43, 2, 3, 4),
(43, 3, 1, 6),
(44, 2, 2, 4),
(45, 2, 3, 4),
(46, 2, 3, 4);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Categoria` (`ID_Categoria`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `vendas_produtos`
--
ALTER TABLE `vendas_produtos`
  ADD KEY `ID_Produtos` (`ID_Produtos`),
  ADD KEY `ID_Vendas` (`ID_Vendas`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de tabela `comanda`
--
ALTER TABLE `comanda`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID`);

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`ID`);

--
-- Restrições para tabelas `vendas_produtos`
--
ALTER TABLE `vendas_produtos`
  ADD CONSTRAINT `vendas_produtos_ibfk_1` FOREIGN KEY (`ID_Produtos`) REFERENCES `produtos` (`ID`),
  ADD CONSTRAINT `vendas_produtos_ibfk_2` FOREIGN KEY (`ID_Vendas`) REFERENCES `comanda` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
