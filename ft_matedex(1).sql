-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 13 Février 2018 à 14:56
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ft_matedex`
--
CREATE DATABASE IF NOT EXISTS `ft_matedex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ft_matedex`;

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_connect` varchar(50) NOT NULL,
  `avertissement` int(11) NOT NULL,
  `password_no_hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `login`
--

TRUNCATE TABLE `login`;
--
-- Contenu de la table `login`
--

INSERT INTO `login` (`id`, `login`, `password`, `last_connect`, `avertissement`, `password_no_hash`, `email`, `level`) VALUES
(20, 'evengyl', '$2y$10$LMyXpdg11OyYKNOtimiQOOfEABrPA5DOEubnuxvnmOCGiq1Y.BhvS', '1490198511', 0, 'legends', 'dark.evengyl@gmail.com', 3);

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_category`
--

DROP TABLE IF EXISTS `ma_ft_category`;
CREATE TABLE `ma_ft_category` (
  `id` int(11) NOT NULL,
  `visible` int(11) NOT NULL,
  `sub_categ` int(11) NOT NULL,
  `name_code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_category`
--

TRUNCATE TABLE `ma_ft_category`;
--
-- Contenu de la table `ma_ft_category`
--

INSERT INTO `ma_ft_category` (`id`, `visible`, `sub_categ`, `name_code`, `img`, `url`) VALUES
(1, 1, 1, '__TRANS_Volume_Fume_Extraction__', 'vues/images/categ/volume_extraction.png', '?page=categ&categ=volume_extraction'),
(2, 1, 2, '__TRANS_Exhaust_Hood__', 'vues/images/categ/tip_extraction_units.PNG', '?page=categ&categ=exhaust_hood'),
(3, 1, 2, '__TRANS_Easy_Click_60_Extraction_Arms__', 'vues/images/categ/easy_click_extraction_arms.PNG', '?page=categ&categ=easy_click_extraction_arms'),
(4, 1, 2, '__TRANS_Accessories_for_Extraction_Arms__', 'vues/images/categ/pipe_systems.PNG', '?page=categ&categ=accessories_extraction_arms'),
(6, 1, 2, '__TRANS_Accessories_for_Volumes_Extraction__', 'vues/images/categ/accessories_filters.PNG', '?page=categ&categ=accessories_volumes_extraction'),
(7, 1, 0, '__TRANS_Tip_Extraction__', 'vues/images/categ/tip_extraction_accessories.jpg', '?page=categ&categ=tip_extraction'),
(8, 1, 0, '__TRANS_Laser_Extraction__', 'vues/images/categ/extraction_units_accessories.PNG', '?page=categ&categ=laser_extraction'),
(9, 1, 0, '__TRANS_Accessories__', 'vues/images/categ/extraction_hood.PNG', '?page=categ&categ=accessories'),
(10, 1, 1, '__TRANS_Spare_Filter__', 'vues/images/categ/easy_click_60.jpg', '?page=categ&categ=spare_filter'),
(11, 1, 2, '__TRANS_Replacement_Filters_for_MG_Filter_Systems__', 'vues/images/categ/clean_bench_concept.jpg', '?page=categ&categ=replacement_filter_mg'),
(12, 1, 2, '__TRANS_Replacement_Filters_for_discontinued_MG_Filter_Systems__', 'vues/images/categ/acryl_exhaust_cabinets.PNG', '?page=categ&categ=replacement_filter_mg_discontinued');

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product`
--

DROP TABLE IF EXISTS `ma_ft_product`;
CREATE TABLE `ma_ft_product` (
  `id` int(11) NOT NULL,
  `categ_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL,
  `text_fr` text NOT NULL,
  `text_en` text NOT NULL,
  `text_nl` text NOT NULL,
  `no_fou` varchar(255) NOT NULL,
  `no_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product`
--

TRUNCATE TABLE `ma_ft_product`;
--
-- Contenu de la table `ma_ft_product`
--

INSERT INTO `ma_ft_product` (`id`, `categ_id`, `img`, `name_fr`, `name_en`, `name_nl`, `text_fr`, `text_en`, `text_nl`, `no_fou`, `no_code`) VALUES
(1, 1, '810 36506	', 'Zero Smog EL 230V <br>', 'Zero Smog EL 230V<br>', 'Zero Smog EL 230V<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.                        ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'T0053650699', '\n            806 10106'),
(2, 1, '806 00280', 'Weller - MG 130', 'Weller - MG 130', 'Weller - MG 130', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '130-1000-ESD', '806 00280'),
(3, 1, '810 36588	', 'Weller - MG 100S (WFE 2X)', 'Weller - MG 100S (WFE 2X)', 'Weller - MG 100S (WFE 2X)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '100-1000-ESD', '810 36588'),
(4, 1, '806 00350', 'Weller - MG 140', 'Weller - MG 140', 'Weller - MG 140', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '145-1000-ESD', '806 00350'),
(5, 1, '810 36606	', 'Weller - Zero Smog 4V', 'Weller - Zero Smog 4V', 'Weller - Zero Smog 4V', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'T0053660699', '810 36606'),
(6, 1, '810 36666	', 'Weller - Zero Smog 6V', 'Weller - Zero Smog 6V', 'Weller - Zero Smog 6V', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'T0053666699', '810 36666'),
(7, 2, '806 00260	', 'Weller - FT 12', '', '', '', '', '', '112-0000-ESD', '806 00260'),
(8, 2, '810 36386	', 'Weller - WFE-P / WFE-2P', '', '', '', '', '', 'T0053638699', '810 36386'),
(9, 2, '810 36706	', 'Weller - Zero Smog 20 T', '', '', '', '', '', 'T0053670699', '810 36706'),
(10, 3, '810 36571', 'Kit 1WF funnel Easy Click 60', '', '', '', '', '', 'T0053657199', '810 36571'),
(11, 3, '810 36572', 'Easy Click 60 Kit 1WF sloped nozzle', '', '', '', '', '', 'T0053657299', '810 36572'),
(12, 3, '810 36579', ' Easy Click 60 Kit 1S WF Nozzle', '', '', '', '', '', 'T0053657999', '810 36579'),
(13, 3, '810 87627 63', 'Easy Click 60 Kit 1S WF funnel', '', '', '', '', '', 'T0058762763', '810 87627 63'),
(14, 4, '810 87358 70', 'Pipe 2 M for System 75', '', '', '', '', '', 'T0058735870', '810 87358 70'),
(15, 4, '810 87358 69', 'Right angle pipe 90°', '', '', '', '', '', 'T0058735869', '810 87358 69'),
(16, 4, '810 87358 71', 'T-piece 2x 90°', '', '', '', '', '', 'T0058735871', '810 87358 71'),
(17, 4, '810 87358 55', 'End seal System 75', '', '', '', '', '', 'T0058735855', '810 87358 55'),
(18, 4, '810 87358 64', 'Pipe clamps System 75', '', '', '', '', '', 'T0058735864', '810 87358 64'),
(19, 4, '810 87358 63', 'Adapter Sytem 75mm to System 50mm', '', '', '', '', '', 'T0058735863', '810 87358 63'),
(20, 6, '810 87357 57', 'Compressed air cleaning filter for WFE / WFE P', '', '', '', '', '', 'T0058735757', '810 87357 57'),
(21, 6, '810 87627 03', 'Fine dust filter M5 for WFE 2ES / CS', '', '', '', '', '', 'T0058762703', '810 87627 03'),
(22, 6, '810 87627 01', 'Filter set E12 for WFE 2ES / WFE 2CS', '', '', '', '', '', 'T0058762701', '810 87627 01'),
(23, 6, '810 36407', 'Compact filter - WFE / WFE P', '', '', '', '', '', 'T0053640799', '810 36407'),
(24, 6, '810 36410', 'Compact filter - WFE / WFE P', '', '', '', '', '', 'T0053641099', '810 36410'),
(25, 6, '810 36421', 'Fine dust filter F7 for WFE / WFE P', '', '', '', '', '', 'T0053642199', '810 36421'),
(26, 6, '810 36590', 'Compact filter for WFE 2X', '', '', '', '', '', 'T0053659099', '810 36590'),
(27, 6, '810 87627 57', 'Pre-filter box for WFE 2X', '', '', '', '', '', 'PF1000', '810 87627 57'),
(28, 6, '810 87358 37', 'Fine dust filter M5 for WFE 20D / WFE 4S', '', '', '', '', '', 'T0058735837', '810 87358 37'),
(29, 6, '810 87358 36', 'Fine dust filter F7 for WFE 20D / WFE 4S', '', '', '', '', '', 'T0058735836', '810 87358 36'),
(30, 6, '810 87358 38', 'Compact filter for WFE 20D / WFE 4S', '', '', '', '', '', 'T0058735838', '810 87358 38'),
(31, 6, '810 87359 37', 'Fine dust filter M5 for WFE 2S / Zero Smog 4V', '', '', '', '', '', 'T0058735937', '810 87359 37'),
(32, 6, '810 87359 38', 'Fine dust filter F7 for WFE 2S / Zero Smog 4V', '', '', '', '', '', 'T0058735938', '810 87359 38'),
(33, 6, '810 87359 36', 'Compact filter for WFE 2S / Zero Smog 4V', '', '', '', '', '', 'T0058735936', '810 87359 36'),
(35, 6, '810 87358 95', 'Wide band gas filter for WFE 2S / Zero Smog 4V', '', '', '', '', '', 'T0058735895', '810 87358 95'),
(36, 6, '810 87358 60', 'Pocket filter F7 for WFE 2S / 4S, ZS 4V', '', '', '', '', '', 'T0058735860', '810 87358 60'),
(37, 6, '810 87359 24', 'Filterbag for sticky residues', '', '', '', '', '', 'T0058735924', '810 87359 24'),
(38, 7, '810 29186', 'FE adapter with tube 6 mm for WSP 80 - WP 80 - MLR 21 - WMP', '', '', '', '', '', 'T0052918699', '810 29186'),
(39, 7, '810 29185', 'FE adapter FE + tuyau 4,5 mm for WSP 80 - WP 80 - MLR 21 - WMP', '', '', '', '', '', 'T0052918599', '810 29185'),
(40, 7, '810 13125', 'FE attachment for DS 22 - DS 80 - DSX 80', '', '', '', '', '', 'T0051312599', '810 13125'),
(41, 7, '810 29167', 'FE adapter Kit for WSP80', '', '', '', '', '', 'T0052916799', '810 29167'),
(42, 7, '810 28126', 'FE adapter Kit for WSF80D5/8', '', '', '', '', '', 'T0052812699', '810 28126'),
(43, 7, '810 25125', 'FE adapter Kit for LR 21/TCP S', '', '', '', '', '', 'T0052512599', '810 25125'),
(44, 7, '810 29214', 'FE WP 65 and WP 120 adapters', '', '', '', '', '', 'T0052921499', '810 29214'),
(45, 8, '810 87359 09', 'Remote control for WFE 2S, WFE 4S, Zero Smog 4V And LL150', '', '', '', '', '', 'T0058735909', '810 87359 09'),
(46, 8, '810 36593', 'Remote Control for WFE 2X', '', '', '', '', '', '700-3057', '810 36593'),
(47, 8, '810 31191', 'RS 232 interface cable', '', '', '', '', '', 'T0053119199', '810 31191'),
(48, 8, '810 87627 46', 'WFV 60 A, Auto Valve', '', '', '', '', '', 'T0058762746', '810 87627 46'),
(49, 8, '810 87627 24', 'WX Adapter for Remote control', '', '', '', '', '', 'T0058762724', '810 87627 24'),
(50, 8, '810 87647 26', 'WX HUB Activate Zero Smog', '', '', '', '', '', 'T0058764726', '810 87647 26'),
(51, 10, '810 87627 74', 'End Clap', '', '', '', '', '', 'T0058762774', '810 87627 74'),
(52, 10, '810 87354 27', 'Extension Hose 1M', '', '', '', '', '', '700-3040-ESD', '810 87354 27'),
(53, 10, '810 36576', 'Extension Hose 3M', '', '', '', '', '', '700-3051-ESD', '810 36576'),
(54, 10, '810 87627 56', 'Extension Hose 5M', '', '', '', '', '', '700-3053-ESD', '810 87627 56'),
(55, 10, '810 87627 72', 'Female adapter', '', '', '', '', '', 'T0058762772', '810 87627 72'),
(56, 10, '810 87627 50', 'Adapter 40/60', '', '', '', '', '', 'T0058762750', '810 87627 50'),
(57, 10, '810 36574', 'WFV stop valve', '', '', '', '', '', 'T0053657499', '810 36574'),
(58, 10, '810 87627 66', '60 T-piece', '', '', '', '', '', 'T0058762766', '810 87627 66'),
(59, 10, '810 36577', 'Sloped nozzle', '', '', '', '', '', 'FT-NL', '810 36577'),
(60, 10, '810 87627 55', '60 male adapter', '', '', '', '', '', 'T0058762755', '810 87627 55'),
(61, 10, '810 36598', 'joint extraction arm', '', '', '', '', '', 'T0053659899', '810 36598'),
(62, 10, '810 87627 67', 'hose connector, straight', '', '', '', '', '', 'T0058762767', '810 87627 67'),
(63, 10, '810 87627 69', 'hose connector, angle 90°', '', '', '', '', '', 'T0058762769', '810 87627 69'),
(64, 10, '810 87627 71', ' Adapter 75mm for Easy Click 60', '', '', '', '', '', 'T0058762771', '810 87627 71'),
(65, 10, '806 01210', 'Adapter Easy-Click Z', '', '', '', '', '', 'Z', '806 01210'),
(66, 10, '806 00980', 'funnel nozzle ALFA-T', '', '', '', '', '', 'ALFA-T', '806 00980'),
(67, 10, '810 36573', 'funnel nozzle WF60', '', '', '', '', '', 'ALFA', '810 36573'),
(68, 11, '806 01220', 'CBC-A type Hose connector 160 mm', '', '', '', '', '', 'CBCA112G04G65I2', '806 01220'),
(69, 11, '806 01230', 'CBC-A Type 4 x Easy-Click 60', '', '', '', '', '', 'CBCA112G02G65I2', '806 01230'),
(70, 13, '810 87359 15', 'Exhaust connector DN75', '', '', '', '', '', 'T0058735915', '810 87359 15'),
(71, 13, '810 36592', 'Trolley with wheels for WFE 2X', '', '', '', '', '', 'T0053659299', '810 36592'),
(72, 13, '810 36329', 'Pipe clamps 50', '', '', '', '', '', 'T0053632999', '810 36329'),
(73, 13, '810 36344', 'T-piece 50', '', '', '', '', '', 'T0053634499', '810 36344'),
(74, 13, '810 36323', 'Pipe 50, 2 m', '', '', '', '', '', 'T0053632399', '810 36323'),
(75, 13, '810 36324', 'End seal 50 Pipe', '', '', '', '', '', 'T0053632499', '810 36324'),
(76, 13, '810 87358 79', 'Hose clamp 50 - 70mm', '', '', '', '', '', 'T0058735879', '810 87358 79'),
(77, 13, '806 00160', 'Flexible extraction arm 0.5M', '', '', '', '', '', '0F05', '806 00160'),
(78, 13, '806 00170', 'Flexible extraction arm 0.7M', '', '', '', '', '', '0F07', '806 00170'),
(79, 13, '810 36578', 'Flexible extraction arm 1.0M', '', '', '', '', '', '0F10', '810 36578'),
(80, 13, '806 00180', 'Flexible extraction arm 1.5M', '', '', '', '', '', '0F15', '806 00180'),
(81, 13, '806 00190', 'Flexible extraction arm 2.0M', '', '', '', '', '', '0F20', '806 00190'),
(82, 13, '810 36414', 'Extraction hose 40', '', '', '', '', '', 'T0053641400', '810 36414'),
(83, 13, '810 36316', 'Extraction hose 40', '', '', '', '', '', 'T0053631699', '810 36316'),
(84, 13, '810 87358 45', 'Exhaust hood 200 x 100mm', '', '', '', '', '', 'T0058735845', '810 87358 45'),
(85, 13, '810 87358 40', 'Exhaust connector DN100 for WFE 4S', '', '', '', '', '', 'T0058735840', '810 87358 40'),
(87, 13, '810 36580', 'Microscope extraction arm WF32 Easy Click 60', '', '', '', '', '', 'T0053658099', '810 36580'),
(88, 13, '810 87627 68', 'Hose connection 60mm', '', '', '', '', '', 'T0058762768', '810 87627 68'),
(89, 13, '810 87627 53', 'Hose adapter 50-60 mm', '', '', '', '', '', 'T0058762753', '810 87627 53'),
(90, 13, '810 36591', 'Hanging bracket for WFE 2X / MG 100', '', '', '', '', '', '780-3001-ESD', '810 36591'),
(91, 13, '810 36575', 'Bench mounting bracket', '', '', '', '', '', 'T0053657599', '810 36575'),
(92, 13, '810 36415', 'Connection element 40-50', '', '', '', '', '', 'T0053641599', '810 36415'),
(93, 13, '810 87620 36', 'Extension hose 60', '', '', '', '', '', 'T0058762036', '810 87620 36'),
(94, 10, '810 87627 70', 'Easy Click 60 Kit 1 WF 32', '', '', '', '', '', 'T0058762770', '810 87627 70'),
(95, 6, '806 00410', 'Pre-filter F7 MG 140', '', '', '', '', '', '145-4000', '806 00410'),
(96, 6, '806 00310', 'Pre-filter MG 130 / F7 (5 pieces)', '', '', '', '', '', '130-2010', '806 00310'),
(97, 6, '806 00300', 'Compact filter MG 130', '', '', '', '', '', '130-2000-ESD', '806 00300'),
(98, 6, '806 00370', 'Compact filter MG 140', '', '', '', '', '', '145-2000-ESD', '806 00370'),
(99, 6, '806 00400', 'Compact filter MG 140, Solvents / VOC', '', '', '', '', '', '145-2012-ESD', '806 00400'),
(100, 3, '810 87627 70', 'Easy Click 60 Kit 1 WF 32', '', '', '', '', '', 'T0058762770', '810 87627 70'),
(101, 14, 'FT-L15', 'LaserLine 150', '', '', '', '', '', 'FT-L15', '..'),
(102, 14, 'FT-L20', 'LaserLine 200', '', '', '', '', '', 'FT91001699', '..'),
(104, 14, 'FT-L400', 'LaserLine 400V', '', '', '', '', '', 'FT91002699', '..');

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product_attribut`
--

DROP TABLE IF EXISTS `ma_ft_product_attribut`;
CREATE TABLE `ma_ft_product_attribut` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `attribut_fr` varchar(255) NOT NULL,
  `attribut_en` varchar(255) NOT NULL,
  `attribut_nl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product_attribut`
--

TRUNCATE TABLE `ma_ft_product_attribut`;
--
-- Contenu de la table `ma_ft_product_attribut`
--

INSERT INTO `ma_ft_product_attribut` (`id`, `id_product`, `attribut_fr`, `attribut_en`, `attribut_nl`) VALUES
(53, 1, 'Station économique pour 1-2 postes de travail.\n', 'Fume extraction unit for up to 2 workplaces.', ''),
(54, 1, 'Pré filtre M5 indépendant de la cartouche.\n', 'Separate changeable medium fine dust pre-filter M5.\n', ''),
(55, 2, 'Filter alarm and 3 steps speed control.', '', ''),
(56, 2, 'Small foot print design.', '', ''),
(57, 2, 'Compact filter : Particle filter H13, Wide band gas filter (50 % Active carbon + 50 % Chemisorb).', '', ''),
(58, 2, 'RS232 (Remote control) : 1 x RS232 (TTL).', '', ''),
(59, 2, 'ESD safe', '', ''),
(60, 3, 'Filter: HEPA filter H13 (99,95% against particle ca. 0,12 µm)', '', ''),
(61, 3, 'ESD safe', '', ''),
(62, 4, 'Pre filter mat class F7.', '', ''),
(63, 4, 'Compact filter : Particle filter H13, Wide band gas filter (50 % Active carbon + 50 % Chemisorb).', '', ''),
(64, 4, 'RS232 (Remote control) : 1 x RS232 (TTL).', '', ''),
(65, 4, 'Filter alarm and 3 steps speed control.', '', ''),
(66, 4, 'ESD safe', '', ''),
(67, 5, 'Digital display: The backlighting graphic display with an easy navigation with multilingual menu.', '', ''),
(68, 5, 'Always fresh air: A visual filter monitoring system (red/yellow/green) together with an audible alarm signal gives early warning of the filter condition', '', ''),
(69, 5, 'The motor speed is adjusted automatically so that energy is saved, noise level is reduced and filter life is prolonged.', '', ''),
(70, 5, 'To 4 workplaces: Has connection points for 4 arms and is fitted with one easy-click connection.', '', ''),
(71, 5, 'Equiped with 4 wheels', '', ''),
(72, 5, 'ESD safe', '', ''),
(73, 6, 'Fine dust filter: Fine dust filter F7', '', ''),
(74, 6, 'Filter: Filter for adhesive fumes (wide band gas filter 50% active carbon, 50% Puratex)', '', ''),
(75, 6, 'RS232 port All system functions can be operated and remotely monitored via the RS232 port', '', ''),
(76, 6, 'USB port: The USB port can be used to load firmware updates, run efficiency testsand log dat data. Do not leave the USB medium inserted for longer than 2 minutes. After this time expires, the USB module will switch of automatically.', '', ''),
(77, 6, 'ESD safe', '', ''),
(78, 7, 'Up to 2 FE soldering irons can be connected.', '', ''),
(79, 7, 'For industrial long term use.', '', ''),
(80, 7, 'Maintenance free compressed air converter.', '', ''),
(81, 7, 'The vacuum is generated by a maintenance-free compressed air converter.', '', ''),
(82, 7, 'The FE (Fume Extraction) soldering irons are connected directly to the unit - additional leads are not required.', '', ''),
(83, 7, 'Operating pressure : 6 bar of cleaned, dry compressed air.', '', ''),
(84, 7, 'ESD safe', '', ''),
(85, 8, 'Max. carrying capacity : 30 l/min.', '', ''),
(86, 8, 'ESD safe', '', ''),
(87, 9, 'Stage 1: Pre-filter F5', '', ''),
(88, 9, 'Stage 2 3: class H13 high efficiency sub-micron particle air filter (99.95% particles up to approx. 0.12 µm) combined with a wide-band gas filter (50% AKF, 50% Puratex)', '', ''),
(89, 9, 'ESD safe', '', ''),
(90, 11, '60mm, 1m.', '', ''),
(91, 12, 'length 1,5m.', '', ''),
(92, 13, 'length 1,2m.', '', ''),
(93, 14, 'PEHD = Polyethylen high density', '', ''),
(94, 14, 'PE = Polyethylen', '', ''),
(95, 14, 'With seal at one end, PEHD black 2 m.', '', ''),
(96, 15, 'PEHD = Polyethylen high density', '', ''),
(97, 15, 'PE = Polyethylen', '', ''),
(98, 15, 'with seal at one end platic, PEHD black.', '', ''),
(99, 16, 'with 3 seals, plastic, PEHD black.', '', ''),
(100, 16, 'PEHD = Polyethylen high density', '', ''),
(101, 17, 'PE = Polyethylen', '', ''),
(102, 17, 'PE, transparent.', '', ''),
(103, 18, 'PE = Polyethylen', '', ''),
(104, 18, 'PE, grey', '', ''),
(105, 19, 'PEHD = Polyethylen high density', '', ''),
(106, 19, 'Adapter PEHD pipe system 75 to pipe system 50, with 2 seals.', '', ''),
(107, 21, 'Filter M5 x10', '', ''),
(108, 22, 'HEPA filter E12, Wide band gas filter (10% active carbon) + 10x prefilter M5', '', ''),
(109, 22, 'Filter E12 + 10x M5', '', ''),
(110, 23, 'Main filter 100% active carbon / For adhesive', '', ''),
(111, 23, 'Compact filter (HEPA filter E12 and wide band gas filter)', '', ''),
(112, 24, 'Main filter 50% active carbon / 50% Puratex', '', ''),
(113, 24, 'Compact filter (HEPA filter E12 and wide band gas filter)', '', ''),
(114, 25, 'Fine dust filter F7 for WFE / WFE P / FT 12 (3 pcs)', '', ''),
(115, 25, 'Filter F7 x3', '', ''),
(116, 26, 'Compact filter for WFE 2X, HEPA filter E 12 EN 1822, 50% active carbon, 50% Puratex.', '', ''),
(117, 26, 'Filtre compact', '', ''),
(118, 27, 'Pre-filter for WFE 2X. For large fine dust quantities. ', '', ''),
(119, 27, 'Filters are not included.', '', ''),
(120, 28, 'Fine dust filter M5 for WFE 20D / WFE 4S', '', ''),
(121, 28, 'Filter X10', '', ''),
(122, 29, 'Fine dust filter F7 for WFE 20D / WFE 4S', '', ''),
(123, 29, 'Filter F7 x10', '', ''),
(124, 30, 'Compact filter (HEPA filter H13 + wide band gas filter 50 % active carbon / 50 % Puratex)', '', ''),
(125, 30, 'Compact filter', '', ''),
(126, 31, 'Fine dust filter for WFE 2S, Zero Smog 4V.', '', ''),
(127, 31, 'Filter M5 x10', '', ''),
(128, 32, 'Fine dust filter for WFE 2S, Zero Smog 4V.', '', ''),
(129, 32, 'Filter F7 x10', '', ''),
(130, 33, 'Compact filter for WFE 2S, Zero Smog 4V', '', ''),
(131, 33, 'HEPA filter H13 (> 99.955% particles 0,16µm et > 99,994% particles 0,3µm)', '', ''),
(132, 33, '50% active carbon, 50% Chemisorb (permanganate de potassium).', '', ''),
(133, 33, 'Compact filter', '', ''),
(134, 35, 'Wide band gas filter for WFE 2S, WFE 2S, Zero Smog 4V, 50% active carbon, 50% Chemisorb (potassium permanganate).', '', ''),
(135, 35, 'Wide band gas filter', '', ''),
(136, 36, 'Pocket filter F7 for Pre-Filter box, WFE 2S / 4S, Zero Smog 4V. ', '', ''),
(137, 36, 'For applications with a high fine dust rate.', '', ''),
(138, 36, 'Pocket filtering F7', '', ''),
(139, 37, 'Filter for Pre-filter box, WFE 2S / 4S, Zero Smog 4V. ', '', ''),
(140, 37, 'Filtering fine dust for sticky particles. (ie: large quantities of liquid flux)', '', ''),
(141, 37, 'Filtering ash for sticky of arrears', '', ''),
(142, 38, 'FE Attachements with tube 6 mm for WSP 80, WP 80, MLR 21, WMP', '', ''),
(143, 39, 'Attaches FE + tuyau 4,5 mm pour WSP 80, WP 80, MLR 21, WMP', '', ''),
(144, 40, '\r\nFE Attachment for DS 22, DS 80 and DSX 80 desoldering iron', '', ''),
(145, 41, 'The attachments are supplied with all necessary fittings and hoses.', '', ''),
(146, 41, 'Provide a AK20 safety rest.', '', ''),
(147, 41, 'The performance of the retro fitted tools is n ot affected.', '', ''),
(148, 42, 'The attachments are supplied with all necessary fittings and hoses.', '', ''),
(149, 42, 'Provide a AK20 safety rest.', '', ''),
(150, 42, 'The performance of the retro fitted tools is n ot affected.', '', ''),
(151, 43, 'The attachments are supplied with all necessary fittings and hoses.', '', ''),
(152, 43, 'Provide a AK20 safety rest.', '', ''),
(153, 43, 'The performance of the retro fitted tools is n ot affected.', '', ''),
(154, 45, 'Remote control for fume extraction units WFE 2S, WFE 4S, Zero Smog 4V. ', '', ''),
(155, 45, 'For connection to Zero Smog 4V please use the adapter T0058762724.', '', ''),
(156, 46, 'Remote control for fume extraction unit WFE 2X / MG with 1m cable.', '', ''),
(157, 46, 'ESD safe', '', ''),
(158, 47, 'Interface cable RS 232, 2 m (78.74 in) for remote control or monitoring by PC', '', ''),
(159, 47, 'Interface Cable', '', ''),
(160, 48, 'Automatic valve.', '', ''),
(161, 49, 'WX Adapter for connection of the remote control to Zero Smog 4V', '', ''),
(162, 50, 'To activate the Zero Smog.', '', ''),
(163, 56, '40/60 adapter for Easy Click 60 extraction arms on 50mm WFEMP50 power socket.', '', ''),
(164, 57, 'Stop valve', '', ''),
(165, 57, 'bench mounting brackets', '', ''),
(166, 59, 'Sloped nozzle', '', ''),
(167, 61, 'Aluminium stativ extraction arm, ESD safe.', '', ''),
(168, 65, 'Adapter Easy-Click 60, metal.', '', ''),
(169, 65, 'Ø 50 mm, l : 130 mm', '', ''),
(170, 65, 'ESD safe', '', ''),
(171, 66, 'To be mounted on an aluminium extraction arm without flexible hose, adapter Z is needed.', '', ''),
(172, 66, '225 x 100 mm', '', ''),
(173, 66, 'ESD safe', '', ''),
(174, 67, 'To be mounted on an aluminium extraction arm without flexible hose, adapter Z is needed.', '', ''),
(175, 67, '225 x 100 mm', '', ''),
(176, 67, 'ESD safe', '', ''),
(177, 68, 'CBC-A cabinet a unique ventilation concept.', '', ''),
(178, 68, 'The air curtain cabinet CBC-A has a unique ventilation concept that separates the operator from the process by a dual air curtain system, giving unlimited accessibility on the workbench.', '', ''),
(179, 68, 'It stands directly on the workbench and is easily connected via den 160 mm connector to Weller FT mobile filter system or central ventilation system.', '', ''),
(180, 68, 'Mobile System for flexible use on a work bench or trolly.', '', ''),
(181, 68, 'Large open front working area with no glas screen.', '', ''),
(182, 68, '80 % low running cost against conventional extraction cabines.', '', ''),
(183, 68, 'CBC-A needs only 200 m³/h, Conventional 1000 m³/h', '', ''),
(184, 68, 'Cabinet interior fittings: Tube lighting (2 x 39 W), 230 V.', '', ''),
(185, 68, 'Set up in minutes.', '', ''),
(186, 68, 'No additionalwork in the building.', '', ''),
(187, 68, 'No installation costs.', '', ''),
(188, 68, 'Change location: Simply disconnect, move to the new location and reconnect.', '', ''),
(189, 68, 'No wasted energy or heat because the air is recycled.', '', ''),
(190, 68, 'Requires no authorization for environmental legislation.', '', ''),
(191, 68, 'Flow control provides the exact extraction rate and keeps the temperature stable.', '', ''),
(192, 68, 'ESD safe', '', ''),
(193, 69, 'CBC-A cabinet a unique ventilation concept.', '', ''),
(194, 69, 'The air curtain cabinet CBC-A has a unique ventilation concept that separates the operator from the process by a dual air curtain system, giving unlimited accessibility on the workbench.', '', ''),
(195, 69, 'It stands directly on the workbench and is easily connected to Weller FT mobile filter system.', '', ''),
(196, 69, 'Cabinet with upper housing part 4 with easy-click couplings.', '', ''),
(197, 69, 'For CBC-A 112 G04 2 pieces MG 100S or 1 ZS 6V extraction units with high gas filter volume are needed.', '', ''),
(198, 69, 'Mobile System for flexible use on a work bench or trolly.', '', ''),
(199, 69, 'Large open front working area with no glas screen.', '', ''),
(200, 69, '80 % low running cost against conventional extraction cabines.', '', ''),
(201, 69, 'CBC-A needs only 200 m³/h, Conventional 1000 m³/h', '', ''),
(202, 69, 'Set up in minutes.', '', ''),
(203, 69, 'No additionalwork in the building.', '', ''),
(204, 69, 'No installation costs.', '', ''),
(205, 69, 'Change location: Simply disconnect, move to the new location and reconnect.', '', ''),
(206, 69, 'No wasted energy or heat because the air is recycled.', '', ''),
(207, 69, 'Requires no authorization for environmental legislation.', '', ''),
(208, 69, 'Flow control provides the exact extraction rate and keeps the temperature stable.', '', ''),
(209, 69, 'ESD safe', '', ''),
(210, 70, 'For WFE 2S / Zero Smog 4V/Zero Smog 6V', '', ''),
(211, 72, 'Pipe clamps for 50 pipe system, grey', '', ''),
(212, 73, 'T-piece 2 x 90°, 0,5 m, with 3 seals, plastic, PEHD black', '', ''),
(213, 74, 'Pipe 2 m, with seal at one end, plastic, PEHD black', '', ''),
(214, 75, 'End seal for DN 50, transparent', '', ''),
(215, 77, 'Extraction arm, flexible.\r\n', '', ''),
(216, 77, 'ESD safe', '', ''),
(217, 78, 'Extraction arm, flexible.', '', ''),
(218, 78, 'ESD safe', '', ''),
(219, 79, 'Extraction arm, flexible.', '', ''),
(220, 79, 'ESD safe', '', ''),
(221, 80, 'Extraction arm, flexible.', '', ''),
(222, 80, 'ESD safe', '', ''),
(223, 81, 'Extraction arm, flexible.', '', ''),
(224, 81, 'ESD safe', '', ''),
(225, 82, 'Extraction hose 40, Ø 40 mm', '', ''),
(226, 82, 'sold by metre Pipe system 50', '', ''),
(227, 83, 'Extraction hose 40, 1m, Ø 40 mm', '', ''),
(228, 83, 'complete with 2 connectingelements', '', ''),
(229, 84, 'Recommended for use with hot air soldering operations.', '', ''),
(230, 84, 'Uses extraction hose 60', '', ''),
(231, 84, 'Metal black', '', ''),
(232, 87, 'ESD microscope extraction arm, flexible, ø32mm.', '', ''),
(233, 89, 'Hose adapter for WFE 2ES with silicon O-Ring', '', ''),
(234, 89, 'ø 50mm', '', ''),
(235, 90, 'For fixing WFE 2X / MG 100 on the work table.', '', ''),
(236, 90, 'ESD safe', '', ''),
(237, 91, 'Maximum width of clamp: 80 mm', '', ''),
(238, 93, 'Extension hose, heavy construction, sold by metre. (max. length 15m)', '', ''),
(239, 94, 'Easy Click 60 Microscope extraction arm ø32mm.', '', ''),
(240, 95, 'Pre-filter bag F7 (2pcs) MG 140', '', ''),
(241, 95, 'ESD safe', '', ''),
(242, 95, 'Pre-filter', '', ''),
(243, 3, 'Wide band gas filter (50% combined with wide gas filter (Active carbonate foam).', '', ''),
(244, 10, 'flexible arm', '', ''),
(245, 10, 'With butterfly', '', ''),
(246, 10, 'A suction arm with funnel-shaped nozzle', '', ''),
(247, 98, 'Particle filter H13 and gas filter for MG 140, standard.', '', ''),
(248, 98, 'ESD safe', '', ''),
(249, 99, 'Particle filter H13 and gas filter for MG 140, solvant / VOC.', '', ''),
(250, 99, 'ESD safe', '', ''),
(251, 20, 'Compressed air cleaning filter for WFE / WFE P', '', ''),
(252, 96, 'Pre-filter MG 130 / F7 (5 pieces)', '', ''),
(253, 96, 'ESD Safe\r\n', '', ''),
(254, 97, 'Particle filter H13, Wide band gas filter for MG 130', '', ''),
(255, 97, 'ESD safe', '', ''),
(256, 97, ' (50 % active carbon + 50 % Chemisorb), standard.', '', ''),
(257, 44, 'FE Attachements with tube 6 mm for WP 65 and WP 120', '', ''),
(258, 92, 'ESD-safe', '', ''),
(259, 71, 'Equiped with 4 wheels', '', ''),
(260, 76, 'Hose clamps 50-70 mm', '', ''),
(261, 76, '2 pieces', '', ''),
(262, 76, 'for securing extraction hose 50 mm', '', ''),
(263, 88, 'Hose connection 60 mm', '', ''),
(264, 88, 'for flexible hose', '', ''),
(265, 85, 'Exhaust connector DN 100 ', '', ''),
(266, 85, 'for Zero Smog 6V and WFE 4S', '', ''),
(267, 51, 'End cap 60 mm click connections', '', ''),
(268, 52, 'Easy Click 60 Extraction hose Ø 60 mm lenght: 1 meter', '', ''),
(269, 53, 'Easy Click 60 Extraction hose Ø 60 mm lenght: 3 meter', '', ''),
(270, 54, 'Easy Click 60 Extraction hose Ø 60 mm lenght: 5 meter', '', ''),
(271, 54, 'ESD safe', '', ''),
(272, 52, 'ESD safe', '', ''),
(273, 53, 'ESD safe', '', ''),
(274, 55, 'Female adapter for installation e.g', '', ''),
(275, 55, 'stop valve on fume extraction units', '', ''),
(276, 100, 'Easy Click 60 Microscope', '', ''),
(277, 100, 'extraction arm ø32 mm', '', ''),
(278, 100, 'With sloped nozzle ø60 mm.', '', ''),
(279, 100, 'Length 1m', '', ''),
(280, 1, 'Filtre H13 avec mousse de charbon actif pour poussières et gaz.\n', 'Fume extraction unit 230 V / 50 Hz\n', ''),
(281, 1, 'Aspirateur de fumée portable, doit être placé en dessous ou à côté du poste de travail\n', 'Active carbon foam for effective gas cleaning.\n', ''),
(282, 1, 'Changement facile et rapide des filtres.', 'Portable fume extraction unit, for placement under or next to the bench-top', ''),
(283, 101, 'Extraction unit for small particle quantities', '', ''),
(284, 101, 'Effective and economical filtration system for different laser applications with a 3-stage filter', '', ''),
(285, 101, 'Power supply 115-240V', '', ''),
(286, 102, 'Extraction unit for small to medium particle quantities', '', ''),
(287, 102, 'Compact filtration system for laser emissions with 4 filter stages', '', ''),
(288, 102, 'Constant flow control for even extraction power', '', ''),
(289, 104, 'Extraction unit for large particle quantities', '', ''),
(290, 104, 'Powerful filtration system for laser emissions with 4 filter stages and an integrated expanded metal filter', '', ''),
(291, 104, 'Constant flow control for even extraction power', '', ''),
(292, 104, 'Optional extra : interface connector for potential-free contacts', '', ''),
(293, 1, 'Filtre HEPA H13 de très grande surface 2,4m² pour une plus longue durée de vie.\n', 'Easy filter change.\n', 'Compatible WX'),
(294, 1, '4 vitesses pour ajuster le débit au besoin.\n', 'Large HEPA H13 filter surface of 2,4m² for longer filter lifetime.\n', 'Compatible WT'),
(296, 1, 'Alarme de saturation des filtres pour une meilleure protection des personnes.\n', '4 speed adjustments for power regulation.\n', 'Traceerbaarheid'),
(297, 1, 'Turbine brushless sans maintenance avec une très longue durée de vie.', 'Long life maintenance free brushless EC turbine. ', 'Long life maintenance free brushless EC turbine. '),
(298, 1, 'Protection supplémentaire de la santé via la surveillance du filtre et l''alarme de filtre.', 'Additional health protection via filter monitoring and filter alarm. ', 'Additional health protection via filter monitoring and filter alarm. ');

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product_caract`
--

DROP TABLE IF EXISTS `ma_ft_product_caract`;
CREATE TABLE `ma_ft_product_caract` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_caract_name` int(11) NOT NULL,
  `id_caract_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product_caract`
--

TRUNCATE TABLE `ma_ft_product_caract`;
--
-- Contenu de la table `ma_ft_product_caract`
--

INSERT INTO `ma_ft_product_caract` (`id`, `id_product`, `id_caract_name`, `id_caract_value`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(5, 1, 4, 8),
(6, 1, 7, 9),
(7, 1, 8, 10),
(9, 1, 10, 12),
(22, 1, 11, 25),
(24, 1, 13, 27),
(25, 1, 14, 28);

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product_caract_name`
--

DROP TABLE IF EXISTS `ma_ft_product_caract_name`;
CREATE TABLE `ma_ft_product_caract_name` (
  `id` int(11) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product_caract_name`
--

TRUNCATE TABLE `ma_ft_product_caract_name`;
--
-- Contenu de la table `ma_ft_product_caract_name`
--

INSERT INTO `ma_ft_product_caract_name` (`id`, `name_fr`, `name_en`, `name_nl`) VALUES
(1, 'Filtre Compact', 'Workplaces', 'Werkplaatsen'),
(2, 'Dimensions', 'Dimensions', 'Afmeting'),
(4, 'Voltage', 'Voltage', 'Voltage'),
(7, 'Poids', 'Weight', 'Gewicht'),
(8, 'Niveau sonore (distance 1m) dB (A)', 'Noise level (distance 1m) dB(A)', 'Geluidsniveau (afstand 1m) dB (A)'),
(10, 'Max Turbine Vacuum (Pa)', 'Max Turbine Vacuum (Pa)', 'Max Turbine Vacuum (Pa)'),
(11, 'Capacité m³/h', 'Capacity m³/h', 'Capaciteit m³/h'),
(13, 'Pré-Filtre', 'Pre-Filter', 'Voorfilter'),
(14, 'Cartouche Filtrante', 'Filter cartridge', 'Filterpatroon');

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product_caract_value`
--

DROP TABLE IF EXISTS `ma_ft_product_caract_value`;
CREATE TABLE `ma_ft_product_caract_value` (
  `id` int(11) NOT NULL,
  `value_fr` varchar(255) NOT NULL,
  `value_en` varchar(255) NOT NULL,
  `value_nl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product_caract_value`
--

TRUNCATE TABLE `ma_ft_product_caract_value`;
--
-- Contenu de la table `ma_ft_product_caract_value`
--

INSERT INTO `ma_ft_product_caract_value` (`id`, `value_fr`, `value_en`, `value_nl`) VALUES
(1, '335 x 360 x 445 mm', '', ''),
(2, '2', '', ''),
(8, '110 -240v', '', ''),
(9, '8.6 kg', '', ''),
(10, '<53', '', ''),
(12, '2500', '', ''),
(25, '150', '', ''),
(27, 'Pre-Filter Class M5', '', ''),
(28, 'Particle Filter H13, Active carbon filter', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ma_ft_product_document`
--

DROP TABLE IF EXISTS `ma_ft_product_document`;
CREATE TABLE `ma_ft_product_document` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(50) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `ma_ft_product_document`
--

TRUNCATE TABLE `ma_ft_product_document`;
--
-- Contenu de la table `ma_ft_product_document`
--

INSERT INTO `ma_ft_product_document` (`id`, `id_product`, `url`, `img`, `name_fr`, `name_en`, `name_nl`, `type`) VALUES
(1, 1, 'zerosmog_el.pdf', 'zerosmog_el.png', 'Zero Smog EL 230V - English', 'Zero Smog EL 230V - English', 'Zero Smog EL 230V - English', 'Data Sheet');

-- --------------------------------------------------------

--
-- Structure de la table `model_unit_test`
--

DROP TABLE IF EXISTS `model_unit_test`;
CREATE TABLE `model_unit_test` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `text_fr` varchar(255) NOT NULL,
  `text_en` varchar(255) NOT NULL,
  `text_nl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `model_unit_test`
--

TRUNCATE TABLE `model_unit_test`;
-- --------------------------------------------------------

--
-- Structure de la table `specific_text_categ`
--

DROP TABLE IF EXISTS `specific_text_categ`;
CREATE TABLE `specific_text_categ` (
  `id` int(11) NOT NULL,
  `categ_id` tinyint(4) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_nl` varchar(255) NOT NULL,
  `text_fr` text NOT NULL,
  `text_en` text NOT NULL,
  `text_nl` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `specific_text_categ`
--

TRUNCATE TABLE `specific_text_categ`;
--
-- Contenu de la table `specific_text_categ`
--

INSERT INTO `specific_text_categ` (`id`, `categ_id`, `title_fr`, `title_en`, `title_nl`, `text_fr`, `text_en`, `text_nl`, `img`, `img_2`) VALUES
(1, 1, 'Avantages de l''Extraction de fumée de Volume.<br>', 'Benefits of Volume Smoke Extraction.', 'Voordelen van volume rookafzuiging.', '<ul>\n     <li> De vastes zones peuvent être couvertes<br></li>\n     <li> Faible maintenance </li>\n     <li> Mobile </li>\n     <li> Installation rapide et facile </li>\n     <li> Economique pour 1 à 8 places de travail </li>\n     <li> Armoires d''extraction </li>\n     <li> Contrôle à distance </li>\n</ul>\n    \n<blockquote><p> Plus approprié pour les applications, par exemple la soudure, les bains de soudure, le soudage à l''air chaud, les micro-soldats et les travaux de collage et de nettoyage.\nWeller Filtration propose différents systèmes mobiles pour un maximum de 8 espaces de travail qui purifient l''air. </p></blockquote>\n\n<ul>\n     <li> Pour 1 bras d''extraction 60 mm </li>\n     <ul>\n         <li> Débit volumique = 50 - 80 m³ / h </li>\n         <li> Sous-pression = 300 - 700 Pa </li>\n     </ul>\n     <li> Pour 6 bras d''extraction 60 mm </li>\n     <ul>\n         <li> Débit volumique = 300 - 480 m³ / h </li>\n         <li> Sous-pression = 300 - 700 Pa </li>\n     </ul>\n\n</ul>', '<ul>\n    <li>Large areas can be covered</li>\n    <li>Low Maintenance</li>\n    <li>Mobile</li>\n    <li>Quick & easy installation</li>\n    <li>Economic for 1 to 8 work places</li>\n    <li>Extraction cabinets</li>\n    <li>Remote Control</li>\n</ul></br>\n    \n<p>More suitable for applications involving, for exemple hand soldering, solder baths, hot air soldering, micro solders and gluing and cleaning work.\nWeller Filtration offers various mobile systems up to a maximum of 8 workspaces that purify the air.</p></br>\n\n<ul>\n    <li>For 1 extraction arm 60 mm</li>\n    <ul>\n        <li>Volume flow rate = 50 - 80 m³/h</li>\n        <li>Underpressure = 300 - 700 Pa</li>\n    </ul>\n    <li>For 6 extraction arm 60 mm</li>\n    <ul>\n        <li>Volume flow rate = 300 - 480 m³/h</li>\n        <li>Underpressure = 300 - 700 Pa</li>\n    </ul>\n\n</ul>\n', '<Ul>\n     <li> Grote gebieden kunnen worden afgedekt </ li>\n     <li> Weinig onderhoud </ li>\n     <Li> Mobile </ li>\n     <li> Snelle en eenvoudige installatie </ li>\n     <li> Economisch voor 1 tot 8 werkplekken </ li>\n     <li> Extractiekasten </ li>\n     <li> Afstandsbediening </ li>\n</ Ul> </ br>\n    \n<p> Meer geschikt voor toepassingen met bijvoorbeeld solderen met de hand, soldeerbaden, heteluchtsolderen, micro-soldeer en lijm- en reinigingswerkzaamheden.\nWeller Filtration biedt verschillende mobiele systemen tot een maximum van 8 werkruimten die de lucht zuiveren. </ P> </ br>\n\n<Ul>\n     <li> Voor 1 afzuigarm 60 mm </ li>\n     <Ul>\n         <li> Volumestroomsnelheid = 50 - 80 m³ / h </ li>\n         <li> Onderdruk = 300 - 700 Pa </ li>\n     </ Ul>\n     <li> Voor 6 afzuigarm 60 mm </ li>\n     <Ul>\n         <li> Volumestroomsnelheid = 300 - 480 m³ / h </ li>\n         <li> Onderdruk = 300 - 700 Pa </ li>\n     </ Ul>\n\n</ Ul>', 'volume_img.PNG', 'volume_img_2.PNG'),
(2, 7, 'Avantages de l''extraction de fumée par Pointes', 'Benefits of Volume Smoke Extraction.', 'Voordelen van volume rookafzuiging.', '<ul>\n     <li> De vastes zones peuvent être couvertes </li>\n     <li> Faible maintenance </li>\n     <li> Mobile </li>\n     <li> Installation rapide et facile </li>\n     <li> Economique pour 1 à 8 places de travail </li>\n     <li> Armoires d''extraction </li>\n     <li> Contrôle à distance </li>\n</ul><br>\n    \n<p> Plus approprié pour les applications, par exemple la soudure, les bains de soudure, le soudage à l''air chaud, les micro-soldats et les travaux de collage et de nettoyage.\nWeller Filtration propose différents systèmes mobiles pour un maximum de 8 espaces de travail qui purifient l''air. </p><br>\n\n<ul>\n     <li> Pour 1 bras d''extraction 60 mm </li>\n     <ul>\n         <li> Débit volumique = 50 - 80 m³ / h </li>\n         <li> Sous-pression = 300 - 700 Pa </li>\n     </ul>\n     <li> Pour 6 bras d''extraction 60 mm </li>\n     <ul>\n         <li> Débit volumique = 300 - 480 m³ / h </li>\n         <li> Sous-pression = 300 - 700 Pa </li>\n     </ul>\n\n</ul>', '<ul>\r\n    <li>Large areas can be covered</li>\r\n    <li>Low Maintenance</li>\r\n    <li>Mobile</li>\r\n    <li>Quick & easy installation</li>\r\n    <li>Economic for 1 to 8 work places</li>\r\n    <li>Extraction cabinets</li>\r\n    <li>Remote Control</li>\r\n</ul></br>\r\n    \r\n<p>More suitable for applications involving, for exemple hand soldering, solder baths, hot air soldering, micro solders and gluing and cleaning work.\r\nWeller Filtration offers various mobile systems up to a maximum of 8 workspaces that purify the air.</p></br>\r\n\r\n<ul>\r\n    <li>For 1 extraction arm 60 mm</li>\r\n    <ul>\r\n        <li>Volume flow rate = 50 - 80 m³/h</li>\r\n        <li>Underpressure = 300 - 700 Pa</li>\r\n    </ul>\r\n    <li>For 6 extraction arm 60 mm</li>\r\n    <ul>\r\n        <li>Volume flow rate = 300 - 480 m³/h</li>\r\n        <li>Underpressure = 300 - 700 Pa</li>\r\n    </ul>\r\n\r\n</ul>\r\n', '<Ul>\r\n     <li> Grote gebieden kunnen worden afgedekt </ li>\r\n     <li> Weinig onderhoud </ li>\r\n     <Li> Mobile </ li>\r\n     <li> Snelle en eenvoudige installatie </ li>\r\n     <li> Economisch voor 1 tot 8 werkplekken </ li>\r\n     <li> Extractiekasten </ li>\r\n     <li> Afstandsbediening </ li>\r\n</ Ul> </ br>\r\n    \r\n<p> Meer geschikt voor toepassingen met bijvoorbeeld solderen met de hand, soldeerbaden, heteluchtsolderen, micro-soldeer en lijm- en reinigingswerkzaamheden.\r\nWeller Filtration biedt verschillende mobiele systemen tot een maximum van 8 werkruimten die de lucht zuiveren. </ P> </ br>\r\n\r\n<Ul>\r\n     <li> Voor 1 afzuigarm 60 mm </ li>\r\n     <Ul>\r\n         <li> Volumestroomsnelheid = 50 - 80 m³ / h </ li>\r\n         <li> Onderdruk = 300 - 700 Pa </ li>\r\n     </ Ul>\r\n     <li> Voor 6 afzuigarm 60 mm </ li>\r\n     <Ul>\r\n         <li> Volumestroomsnelheid = 300 - 480 m³ / h </ li>\r\n         <li> Onderdruk = 300 - 700 Pa </ li>\r\n     </ Ul>\r\n\r\n</ Ul>', 'volume_img.PNG', 'volume_img_2.PNG'),
(5, 8, 'Systèmes d''extraction des fumées provenant des utilisations de Lasers', '', '', '<span id="result_box" class="" lang="fr"><span class="">Grâce à sa série laserline, Weller offre l''extraction mobile des fumées pour toutes sortes d''applications.</span> <span class=""><br></span></span><blockquote><span id="result_box" class="" lang="fr"><span class="">Tous les systèmes peuvent être équipés de filtres spéciaux pour les salles blanches ou les imprimantes à jet d''encre<br></span></span></blockquote><ul><li>Automatic constant flow control (CFC)</li><li>Interface via USB, RS232 and optional relay outputs</li><li>Low-maintenance, brushless turbines<br></li><li>Acoustic and visual filter change alarm<br></li><li>Individually upgradable with special filters<br></li><li>Ut to three separate filter components - ensuring low operating costs<br></li><li>Thermally recycable main filter housing<br></li></ul><span id="result_box" class="" lang="fr"><span class=""></span></span><br><span id="result_box" class="" lang="fr"><span class=""></span></span>', '', '', 'laserline.jpg', 'laser_line.PNG'),
(6, 9, 'Accessoires d''extraction de fumée', '', '', '<blockquote>Les accessoires des extracteurs de fumée peuvent vous permettre d''améliorer leurs facilité d''utilisations.<br></blockquote>', '', '', 'laser_line.PNG', 'laser_line.PNG');

-- --------------------------------------------------------

--
-- Structure de la table `translate`
--

DROP TABLE IF EXISTS `translate`;
CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `name_code` varchar(255) NOT NULL,
  `name_fr` text NOT NULL,
  `name_en` text NOT NULL,
  `name_nl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `translate`
--

TRUNCATE TABLE `translate`;
--
-- Contenu de la table `translate`
--

INSERT INTO `translate` (`id`, `name_code`, `name_fr`, `name_en`, `name_nl`) VALUES
(1, '__TRANS_accueil__', 'Accueil', 'Home', 'Ontvangst'),
(2, '__TRANS__contact_detail__', 'Détails de Contact', 'Details Contact', 'Details Contact'),
(3, '__TRANS_how_to_choise_your_extract__', 'Comment choisir son extracteur de fumée', 'How to choose your smoke extractor', 'Hoe u uw rookafzuiger kiest'),
(4, '__TRANS_horaire_list__', 'Ouverture : Du lundi au jeudi, de 8h à 12h et de 13h à 17h. GMT +1\r\nVendredi, de 8h à 12h et de 13h à 15h. GMT +1', 'Open from : Monday to thursday, from 08:00 to 12:00 and from 13:00 to 17:00. GMT +1\r\nFriday, from 8:00 to 12:00 and from 13:00 to 15:00. GMT +1', 'Opening : Maandag tot donderdag, van 8u tot 12u en van 13u tot 17u00. GMT +1\nVrijdag, van 8u tot 12u en van 13u tot 15u00. GMT +1'),
(5, '__TRANS_horaire__', 'Horaire', 'Schedule', 'Rooster'),
(6, '__TRANS_tel__', 'Numéro de Téléphone', 'Phone Numbers', 'Telefoonnummers'),
(7, '__TRANS_address_title__', 'Adresse Postale', 'Postal Address', 'Postadres'),
(9, '__TRANS_categories__', 'Catégories', 'Categories', 'Categorieën'),
(10, '__TRANS_footer_price__', 'Tous droits réservés. Les prix et stocks sont purement indicatifs. Les prix sont hors taxes', 'All rights reserved. Prices and stocks are only informative. Prices are without taxes', 'Alle rechten voorbehouden. Prijzen en voorraden zijn enkel indicatief. Prijzen zijn ex BTW'),
(11, '__TRANS_autre__', 'Autre', 'Other', 'Anders'),
(12, '__TRANS_leader_environement__', 'LEADER MONDIAL EN MATIÈRE DE CONTRÔLE DES ÉMISSIONS DE L''ENVIRONNEMENT DE TRAVAIL', 'WORLDWIDE LEADER IN WORK ENVIRONMENT EMISSION CONTROL', 'WERELDWIJDE LEIDER IN DE WERKOMGEVING EMISSIEBEHEERSING'),
(13, '__TRANS_home_text_leader_environement__', 'La fusion de deux spécialistes mondiaux de premier plan pour les extraction des fumées elle définit de nouvelles normes en matière de protection du personnel, des machines et de l''environnement sur les lieux de travail.<br>\nWeller Tools GmbH située à Besigheim / Allemagne est bien connue depuis plus de 50 ans pour des solutions innovantes dans la technique de brasage et pour l''extraction et le filtrage.<br><br>\n<b> Weller Filtration </b> Combine les compétences des deux entreprises sous cette nouvelle marque.<br>Fabricant et\nles opérateurs se voient offrir une large gamme de systèmes d''extraction de filtres "Made in Germany" pour l''électronique,\nlasers industriels et médicaux ainsi que laboratoires et cosmétiques.', 'The merger of two leading specialists in the field of flue gas extraction sets new standards for the protection of personnel, machines and the environment in the workplace. <br>\nWeller Tools GmbH in Besigheim / Germany has been known for more than 50 years for innovative solutions in solder technology and for extraction and filtration. <br> <br>\n<b> Weller Filtration </ b> Combines the skills of both companies under this new brand. <br> Manufacturer and\noperators receive a wide range of "Made in Germany" filter extraction systems for electronics,\nindustrial and medical lasers, as well as laboratories and cosmetics.', 'De fusie van twee toonaangevende specialisten op het gebied van rookgaswinning stelt nieuwe normen voor de bescherming van personeel, machines en het milieu op de werkplek. <br>\nWeller Tools GmbH in Besigheim / Duitsland staat al meer dan 50 jaar bekend om innovatieve oplossingen in soldeertechnologie en voor afzuiging en filtering. <br>\n<b> Weller Filtration </ b> Combineert de vaardigheden van beide bedrijven onder dit nieuwe merk. <br> Fabrikant en\noperators krijgen een breed scala aan "Made in Germany" filterextractiesystemen voor elektronica,\nindustriële en medische lasers, evenals laboratoria en cosmetica.'),
(14, '__TRANS_fume_extraction__', 'Systèmes d''extraction de fumée de Weller', 'Fume Extraction Systems from Weller', 'Rookextractiesystemen van Weller'),
(15, '__TRANS_explain_weller_ft__', '- Les fabricants d''électronique sont également préoccupés par la santé et la sécurité au travail. <br>\n- La fumée, les fumées et les produits chimiques sont la norme dans toute installation d''assemblage électronique. <br>\n- Si elle n''est pas gérée correctement, la maladie, l''absentéisme et la responsabilité peuvent en résulter. <br>\n- Le vieillissement de la population active met d''avantage l''accent sur ces problèmes. <br>\n- La technologie d''extraction des fumées de Weller re-circule l''air conditionné, garantissant un environnement de travail propre et le respect de la réglementation environnementale.', 'Electronics manufacturers are also concerned about workplace health and safety.<br>\r\n		Smoke, fumes and chemicals are the norm in any electronics assembly facility.<br>\r\n		If not properly managed, illness, absenteeism and liability may result.<br>\r\n		The aging of the workforce puts an even tighter focus on these issues.<br>\r\n		Fume extraction technology from Weller recirculates conditioned air, ensuring a clean work setting and supporting environmental regulatory compliance.<br>', 'Elektronicafabrikanten maken zich ook zorgen over de gezondheid en veiligheid van de werkplek. <br>\r\nRook, dampen en chemicaliën zijn de norm in elke assemblagefabriek voor elektronica. <br>\r\nAls dit niet goed wordt beheerd, kan dit leiden tot ziekte, verzuim en aansprakelijkheid\r\nDe vergrijzing van de beroepsbevolking legt een nog strakkere focus op deze kwesties\r\nDe rookafzuigtechnologie van Weller recirculeert geconditioneerde lucht, zorgt voor een schone werkomgeving en ondersteunt de naleving van milieuvoorschriften. <br>'),
(16, '__TRANS_Volume_Fume_Extraction__', 'Extraction de Fumées de Volume', 'Volume Fume Extraction', 'Volume rook extractie'),
(17, '__TRANS_Exhaust_Hood__', 'Hottes d''Aspiration', 'Exhaust Hood', 'Afzuigkap'),
(18, '__TRANS_Easy_Click_60_Extraction_Arms__', 'Bras d''Extraction Easy-Click 60', 'Easy-Click 60 Extraction Arms', 'Easy-Click 60 extractiewapens'),
(19, '__TRANS_Accessories_for_Extraction_Arms__', 'Accessoires pour Bras d''Extraction', 'Accessories for Extraction Arms', 'Toebehoren voor afzuigarmen'),
(20, '__TRANS_Accessories_for_Volumes_Extraction__', 'Accessoires pour Extracteur de Volume', 'Accessories for Volumes Extraction', 'Accessoires voor Volumesextractie'),
(21, '__TRANS_Tip_Extraction__', 'Extraction de Fumées par Pointes', 'Tip Extraction', 'Tip extractie'),
(22, '__TRANS_Laser_Extraction__', 'Extraction de Fumées de Laser', 'Laser Extraction', 'Laser extractie'),
(23, '__TRANS_Accessories__', 'Accessoires', 'Accessories', 'Accessoires'),
(24, '__TRANS_Spare_Filter__', 'Filtre de rechange', 'Spare Filter', 'Reservefilter'),
(25, '__TRANS_Spare_Filter__', 'Filtre de rechange', 'Spare Filter', 'Reservefilter'),
(26, '__TRANS_Replacement_Filters_for_MG_Filter_Systems__', 'Filtre de rechange pour Système de Filtration MG', 'Replacement Filters for MG Filter Systems', 'Vervangende filters voor MG-filtersystemen'),
(27, '__TRANS_Replacement_Filters_for_discontinued_MG_Filter_Systems__', 'Filtre de rechange pour Système de Filtration MG (Discontinued)', 'Replacement Filters for Discontinued MG Filter Systems', 'Vervangende filters voor niet-gebruikte MG-filtersystemen'),
(28, '__TRANS_documentations__', 'Documentations sur les Extraction de Fumée', 'Documentations on Fume Extraction', 'Documentatie op rookafzuiging'),
(29, '__TRANS_voir_pdf__', 'Voir le PDF', 'See the PDF', 'Zie de PDF'),
(30, '__TRANS_are_u_gambling__', 'Est-ce que vous jouez avec votre Santé ?', 'Are you gambling your Health', 'Gokt u uw gezondheid ?'),
(31, '__TRANS_system_filtration_new__', 'Catalogue Des Systèmes de Filtration', 'Filtration Systems Catalog', 'Filtration Systems Catalog'),
(32, '__TRANS_brochure_laserline__', 'Brochure des Systèmes de Filtration LaserLine', 'LaserLine Filtration Systems Brochure', 'LaserLine Filtration Systems-brochure'),
(33, '__TRANS_catalogue_ft_old__', 'Ancien Catalogue Weller FT', 'Old Weller FT Catalog', 'Oude Weller FT-catalogus'),
(34, '__TRANS_contact_us__', 'Contactez Nous', 'Contact Us', 'Contacteer Ons'),
(35, '__TRANS_envoyer__', 'Envoyer', 'Send', 'Verzenden'),
(37, '__TRANS_ou_nous_trouver__', 'Où nous trouver', 'How to find us', 'Waar ons te vinden'),
(39, '__TRANS_404__', 'Erreur 404 - Page non trouvée', 'Error : 404, Page Not Found', 'Fout 404 - Pagina niet gevonden'),
(40, '__TRANS_404_explain__', 'Vous avez tenté d''accéeder à une page non autorisée ou inexistante.', 'You attempted to access an unauthorized or non-existent page.', 'U probeerde toegang te krijgen tot een niet-geautoriseerde of niet-bestaande pagina.'),
(41, '__TRANS_voir_produit__', 'Voir l''article', 'See article', 'Zie artikel'),
(54, '__TRANS_product__', 'Article', 'Article', 'Artikel'),
(55, '__TRANS_attribut__', 'Attribut', 'Attributes', 'Attributen'),
(56, '__TRANS_caract__', 'Caractéristiques', 'Features', 'Bestek'),
(57, '__TRANS_login__', 'Connexion', 'Log in', 'Log in');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `ma_ft_category`
--
ALTER TABLE `ma_ft_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product`
--
ALTER TABLE `ma_ft_product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product_attribut`
--
ALTER TABLE `ma_ft_product_attribut`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product_caract`
--
ALTER TABLE `ma_ft_product_caract`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product_caract_name`
--
ALTER TABLE `ma_ft_product_caract_name`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product_caract_value`
--
ALTER TABLE `ma_ft_product_caract_value`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ma_ft_product_document`
--
ALTER TABLE `ma_ft_product_document`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_unit_test`
--
ALTER TABLE `model_unit_test`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `specific_text_categ`
--
ALTER TABLE `specific_text_categ`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `ma_ft_category`
--
ALTER TABLE `ma_ft_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `ma_ft_product`
--
ALTER TABLE `ma_ft_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `ma_ft_product_attribut`
--
ALTER TABLE `ma_ft_product_attribut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT pour la table `ma_ft_product_caract`
--
ALTER TABLE `ma_ft_product_caract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `ma_ft_product_caract_name`
--
ALTER TABLE `ma_ft_product_caract_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `ma_ft_product_caract_value`
--
ALTER TABLE `ma_ft_product_caract_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `ma_ft_product_document`
--
ALTER TABLE `ma_ft_product_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `model_unit_test`
--
ALTER TABLE `model_unit_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `specific_text_categ`
--
ALTER TABLE `specific_text_categ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
