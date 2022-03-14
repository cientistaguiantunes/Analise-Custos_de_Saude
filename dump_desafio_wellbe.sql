-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/07/2021 às 08:04
-- Versão do servidor: 10.4.20-MariaDB
-- Versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desafio_wellbe`
--
DROP DATABASE IF EXISTS `desafio_wellbe`;
CREATE DATABASE IF NOT EXISTS `desafio_wellbe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `desafio_wellbe`;

--
-- Despejando dados para a tabela `afastamentos`
--

INSERT INTO `afastamentos` (`id`, `codigo`, `custo`, `funcionario`, `cargo`, `data_do_afastamento`, `especialidade`, `motivo`) VALUES
(0, 1036743, 20.4, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-05-29 00:00:00', 'Exames', 'Exames'),
(1, 1036742, 23, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-05-23 00:00:00', 'Neurologia pediátrica', 'Acompanhamento familiar'),
(2, 1036741, 22.8, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-05-17 00:00:00', 'Outras', 'Consulta médica'),
(3, 1036740, 33.9, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-05-16 00:00:00', 'Exames', 'Exames'),
(4, 1036739, 22, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-05-06 00:00:00', 'Outras', 'Consulta médica'),
(5, 1033172, 205, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-04-24 00:00:00', 'Pediatria', 'Acompanhamento familiar'),
(6, 1032228, 123, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-04-04 00:00:00', 'Neurologia pediátrica', 'Acompanhamento familiar'),
(7, 1030902, 205, 'Anonimo 1', 'ASSISTENTE DE IMPLANTACAO', '2019-03-07 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(8, 1036621, 321, 'Anonimo 2', 'TECNICO SEGUROS IV', '2019-05-21 00:00:00', 'Outras', 'Outros'),
(9, 1027589, 9644, 'Anonimo 2', 'TECNICO SEGUROS IV', '2019-03-04 00:00:00', 'Outras', 'Licença gala'),
(10, 1036762, 331, 'Anonimo 3', 'TECNICO SEGUROS II', '2019-05-09 00:00:00', 'Outras', 'Outros'),
(11, 1027641, 123, 'Anonimo 4', 'ANALISTA CONTROLE OPERACIONAL I', '2019-03-13 00:00:00', 'Dermatologia', 'Consulta médica'),
(12, 1036760, 9236, 'Anonimo 5', 'ASSISTENTE OPERACIONAL II', '2019-05-16 00:00:00', 'Neurologia', 'Consulta médica'),
(13, 1027590, 9670, 'Anonimo 6', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-08 00:00:00', 'Pediatria', 'Acompanhamento familiar'),
(14, 1037708, 9759, 'Anonimo 7', 'ANALISTA RISCOS II', '2019-06-07 00:00:00', 'Ortopedia', 'Consulta médica'),
(15, 1036659, 9759, 'Anonimo 7', ' ANALISTA RISCOS II', '2019-05-22 00:00:00', 'Ortopedia', 'Consulta médica'),
(16, 1036729, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-05-27 00:00:00', 'Cardiologista', 'Consulta médica'),
(17, 1036730, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-05-23 00:00:00', 'Cardiologista', 'Exames'),
(18, 1033416, 310, 'Anonimo 8', 'TECNICO SEGUROS I', '2019-04-22 00:00:00', 'Cardiologista', 'Consulta médica'),
(19, 1032282, 310, 'Anonimo 8', ' ANALISTA INFORMACOES GERENCIAIS II', '2019-04-17 00:00:00', 'Cardiologista', 'Exames'),
(20, 1032281, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-04-16 00:00:00', 'Cardiologista', 'Consulta médica'),
(21, 1032235, 123, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-04-11 00:00:00', 'Dermatologia', 'Consulta médica'),
(22, 1032230, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-04-10 00:00:00', 'Cardiologista', 'Exames'),
(23, 1032232, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-04-03 00:00:00', 'Fisioterapia', 'Exames'),
(24, 1030893, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-03-29 00:00:00', 'Ortopedia', 'Consulta médica'),
(25, 1027770, 310.45, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-03-21 00:00:00', 'Outras', 'Exames'),
(26, 1027769, 310, 'Anonimo 8', 'ANALISTA INFORMACOES GERENCIAIS II', '2019-03-20 00:00:00', 'Ortopedia', 'Dor/Doença'),
(27, 1037656, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-06-18 00:00:00', 'Nutrólogo', 'Consulta médica'),
(28, 1036733, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-05-27 00:00:00', 'Outras', 'Outros'),
(29, 1033085, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-04-29 00:00:00', 'Gastroenterologia', 'Exames'),
(30, 1033427, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-04-23 00:00:00', 'Pediatria', 'Acompanhamento familiar'),
(31, 1033428, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-04-17 00:00:00', 'Outras', 'Outros'),
(32, 1030924, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-03-27 00:00:00', 'Outras', 'SUS - Pronto Socorro'),
(33, 1030923, 9361, 'Anonimo 9', 'TECNICO SEGUROS VG I', '2019-03-25 00:00:00', 'Odontologia ', 'Cirurgia Odontológica'),
(34, 1027197, 9373, 'Anonimo 10', 'ASSISTENTE OPERACIONAL I', '2019-02-26 00:00:00', 'Gastroenterologia', 'Consulta médica'),
(35, 1037601, 9656, 'Anonimo 11', 'TECNICO FATURAMENTO II', '2019-06-11 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(36, 1033413, 9966, 'Anonimo 12', 'Outros', '2019-04-25 00:00:00', 'Ortopedia', 'Dor/Doença'),
(37, 1032256, 9966, 'Anonimo 12', 'TECNICO DE SEGUROS I', '2019-04-15 00:00:00', 'Outras', 'Consulta médica'),
(38, 1027588, 9966, 'Anonimo 12', 'TECNICO DE SEGUROS I', '2019-05-29 00:00:00', 'Ginecologia', 'Consulta médica'),
(39, 1036737, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-05-27 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(40, 1036736, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-05-22 00:00:00', 'Outras', 'Consulta médica'),
(41, 1036735, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-05-20 00:00:00', 'Otorrinolaringologia', 'Consulta médica'),
(42, 1036734, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-05-16 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(43, 1036738, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-05-07 00:00:00', 'Odontologia ', 'Cirurgia Odontológica'),
(44, 1032287, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-04-15 00:00:00', 'Otorrinolaringologia', 'Dor/Doença'),
(45, 1032288, 9620, 'Anonimo 12', 'ASSISTENTE DE IMPLANTACAO', '2019-04-09 00:00:00', 'Odontologia ', 'Consulta médica'),
(46, 1030921, 9620, 'Anonimo 12', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-27 00:00:00', 'Exames', 'Exames'),
(47, 1027772, 9620, 'Anonimo 12', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-22 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(48, 1027773, 9620, 'Anonimo 12', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-19 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(49, 1027631, 9620, 'Anonimo 12', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-13 00:00:00', 'Cabeça e Pescoço', 'Consulta médica'),
(50, 1027587, 9620, 'Anonimo 12', 'ASSISTENTE CONTROLE OPERACIONAL', '2019-03-07 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(51, 1032300, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-04-18 00:00:00', 'Exames', 'Exames'),
(52, 1032191, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-04-10 00:00:00', 'Ginecologia/Obstetricia', 'Consulta médica'),
(53, 1032240, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-04-08 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(54, 1032241, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-04-08 00:00:00', 'Outras', 'Exames'),
(55, 1027592, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-03-11 00:00:00', 'Radiologia', 'Exames'),
(56, 1027593, 9678, 'Anonimo 13', 'ANALISTA ESTUDOS E COTACAO II', '2019-03-08 00:00:00', 'Radiologia', 'Exames'),
(57, 1036749, 9980, 'Anonimo 14', 'ASSISTENTE SEGUROS I', '2019-05-02 00:00:00', 'Outras', 'Consulta médica'),
(58, 1036620, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-05-22 00:00:00', 'Outras', 'Outros'),
(59, 1036752, 9215, 'Anonimo 15', ' ANALISTA CONTABIL II', '2019-05-15 00:00:00', 'Ginecologia/Obstetricia', 'Exames'),
(60, 1036781, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-05-06 00:00:00', 'Exames', 'Exames'),
(61, 1033423, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-04-30 00:00:00', 'Ginecologia/Obstetricia', 'Consulta médica'),
(62, 1033425, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-04-17 00:00:00', 'Exames', 'Exames'),
(63, 1032179, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-04-10 00:00:00', 'Obstetricia', 'Dor/Doença'),
(64, 1032180, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-04-08 00:00:00', 'Obstetricia', 'Dor/Doença'),
(65, 1032181, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-04-01 00:00:00', 'Obstetricia', 'Exame periódico'),
(66, 1027607, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-03-21 00:00:00', 'Outras', 'Exames'),
(67, 1030882, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-03-20 00:00:00', 'Outras', 'Consulta médica'),
(68, 1027604, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-03-13 00:00:00', 'Outras', 'Exames'),
(69, 1027601, 9215, 'Anonimo 15', 'ANALISTA CONTABIL II', '2019-03-07 00:00:00', 'Outras', 'Exames'),
(70, 1037661, 9358, 'Anonimo 16', 'ANALISTA ESTUDOS E COTACAO I', '2019-06-04 00:00:00', 'Dermatologia', 'Cirurgia'),
(71, 1036787, 9358, 'Anonimo 16', 'ANALISTA ESTUDOS E COTACAO I', '2019-05-10 00:00:00', 'Otorrinolaringologia', 'Consulta médica'),
(72, 1027198, 9358, 'Anonimo 16', 'ANALISTA ESTUDOS E COTACAO I', '2019-03-21 00:00:00', 'Gastroenterologia', 'Consulta médica'),
(73, 1027764, 9358, 'Anonimo 16', 'ANALISTA ESTUDOS E COTACAO I', '2019-03-21 00:00:00', 'Ginecologia/Obstetricia', 'Consulta médica'),
(74, 1027777, 9375, 'Anonimo 17', 'TECNICO SEGUROS IV', '2019-03-19 00:00:00', 'Fisioterapia', 'Acidente'),
(75, 1027776, 9375, 'Anonimo 17', 'Outros', '2019-03-12 00:00:00', 'Ortopedia', 'Acidente'),
(76, 1027612, 9375, 'Anonimo 17', 'TECNICO SEGUROS IV', '2019-03-11 00:00:00', 'Clínica Médica', 'Dor/Doença'),
(77, 1032237, 9609, 'Anonimo 18', 'Outros', '2019-04-08 00:00:00', 'Psiquiatria', 'Psicologia'),
(78, 1036728, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-05-28 00:00:00', 'Exames', 'Exames'),
(79, 1036618, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-05-23 00:00:00', 'Outras', 'Outros'),
(80, 1036751, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-05-16 00:00:00', 'Exames', 'Tratamento '),
(81, 1036786, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-05-09 00:00:00', 'Outras', 'Tratamento '),
(82, 1027767, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-03-25 00:00:00', 'Dermatologia', 'Consulta médica'),
(83, 1030876, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-03-25 00:00:00', 'Dermatologia', 'Consulta médica'),
(84, 1027194, 132, 'Anonimo 19', 'ANALISTA ESTUDOS E COTACAO III', '2019-03-01 00:00:00', 'Otorrinolaringologia', 'Consulta médica'),
(85, 1027646, 9831, 'Anonimo 20', 'TECNICO CADASTRO I', '2019-03-19 00:00:00', 'Clínica Médica', 'Dor/Doença'),
(86, 1037659, 9524, 'Anonimo 21', 'ANALISTA SINISTROS I', '2019-06-04 00:00:00', 'Oftalmologia', 'Acompanhamento familiar'),
(87, 1027619, 9524, 'Anonimo 21', 'ANALISTA SINISTROS I', '2019-03-13 00:00:00', 'Pediatria', 'Acompanhamento familiar'),
(88, 1036380, 310, 'Anonimo 22', 'AUDITOR II', '2019-05-31 00:00:00', 'Cardiologista', 'Exames'),
(89, 1032392, 9916, 'Anonimo 22', 'ANALISTA ESTUDOS E COTACAO I', '2019-04-23 00:00:00', 'Odontologia ', 'Consulta odontológica'),
(90, 1027618, 9916, 'Anonimo 22', 'ANALISTA ESTUDOS E COTACAO I', '2019-03-12 00:00:00', 'Odontologia ', 'Consulta odontológica');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
