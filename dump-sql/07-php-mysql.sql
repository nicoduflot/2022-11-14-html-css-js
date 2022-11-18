-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 18 nov. 2022 à 15:24
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `07-php-mysql`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bio` text COLLATE utf8_bin,
  `fichier` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `prenom`, `bio`, `fichier`) VALUES
(1, 'Lynch', 'David', '', './uploads/auteur/1632752803-838_image001.jpg'),
(2, 'Herbert', 'Frank', 'Il est cool l\'auteur', NULL),
(3, 'Pratchett', 'Terry', 'Il a écrit beaucoup de livres', NULL),
(4, 'Faye', 'Gaël', NULL, NULL),
(5, 'McMaster Bujold', 'Loïs', NULL, NULL),
(6, 'Gaiman', 'Neil', 'Il a écrit pour des comics (sandman) et aussi des livre', NULL),
(7, 'Mayfield', 'Les', 'Il a fait flubber', NULL),
(8, 'Adams', 'Douglas', '<p>Douglas Noel Adams, né le 11 mars 1952 à Cambridge et mort le 11 mai 2001 (à 49 ans) à Santa Barbara, est un écrivain et scénariste britannique.\r\n</p>\r\n<p>\r\nIl est surtout connu pour son œuvre Le Guide du voyageur galactique (The Hitchhiker\'s Guide to the Galaxy), une saga de science-fiction humoristique dont il scénarisa le feuilleton radio original puis écrivit la « trilogie en cinq volumes » de romans. \r\n</p>\r\n<p>\r\nJ\'ajoute des données\r\n</p>', './uploads/auteur/1625219024-Douglas_adams_portrait.jpg'),
(15, 'Boorman', 'john', '', ''),
(19, 'Duflot', 'Nicolas', 'Mi encore', './uploads/auteur/88252-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text COLLATE utf8_bin NOT NULL,
  `resume` text COLLATE utf8_bin,
  `date_creation` datetime DEFAULT NULL,
  `fichier` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `titre`, `resume`, `date_creation`, `fichier`) VALUES
(1, 'Dune', 'Le film par David Lynch', '2021-06-30 07:59:19', './uploads/media/1625220119-dune-david-lynch.png'),
(2, 'Dune', 'Le livre par Frank Herbert.\r\nIl est très cool.\r\nCoucou', '2021-06-30 09:17:19', './uploads/media/1625219940-Dune.jpg'),
(3, 'Les petits dieux', 'Les annales du Disque-monde Terry Pratchett', '2021-06-30 09:59:19', NULL),
(4, 'La huitième couleur', 'L\'le premier livre des annales du disque-monde', '2021-06-30 10:08:19', NULL),
(6, 'Le maître du haut chateau', '<p>Le Maître du Haut Château <i>(titre original : The Man in the High Castle)</i> est un roman uchronique de Philip K. Dick publié en 1962 aux États-Unis et qui reçoit le prix Hugo l\'année suivante. La traduction française est publiée pour la première fois en 1970.\r\n</p>\r\n<p>\r\nCe roman décrit un monde alternatif dans lequel l\'Allemagne nazie, l\'Empire du Japon et l\'Italie fasciste ont remporté la Seconde Guerre mondiale et fait l\'état des lieux quinze ans après cette victoire.\r\n</p>\r\n</p>\r\nLe récit a pour cadre principal le territoire des États-Unis, qui est désormais occupé à l\'Est par les Allemands et à l\'Ouest par les Japonais. L\'histoire évoque notamment, par un effet de mise en abyme (ou d\'uchronie dans l\'uchronie), l\'ouvrage d\'un écrivain fictif, Hawthorne Abendsen, qui imagine, à l\'inverse, les conséquences d\'une victoire des Alliés, mais elle varie de notre monde. Le titre choisi par Dick pour son roman fait référence à une « maison isolée, une véritable forteresse », où vivrait Abendsen.\r\n</p>\r\n<p>\r\nEn 2015, le livre a été adapté en une série télévisée dont la fille de Dick, Isa Dick Hackett, a fait partie de l\'équipe de production. \r\n</p>', '2021-06-30 10:23:50', './uploads/media/716a1f6af77ca9b550dab77e9b0cd2fc.jpg'),
(7, 'De bons présages', 'Test', '2021-06-30 12:50:37', NULL),
(10, 'The final count Down', 'Europe', '2021-06-30 13:58:38', NULL),
(11, 'Pieds d\'argile', 'Pieds d\'argile est le dix-neuvième livre des Annales du Disque-monde de l\'écrivain anglais Terry Pratchett.\r\n\r\nL\'œuvre originale fut publiée en 1996 sous le titre Feet of Clay. La traduction française est de Patrick Couton.\r\nRésumé\r\n\r\nÀ Ankh-Morpork, de nombreux industriels utilisent des golems comme main-d\'œuvre, mais ils sont peu appréciés de la population qui se méfie d\'eux. La situation empire lorsque deux meurtres se produisent, apparemment commis par un golem.\r\n\r\nLe patricien Havelock Vétérini est victime d\'une tentative d\'empoisonnement, et certains voudraient en profiter pour remettre un roi à sa place. Chicard, qui serait le dernier descendant d\'une famille noble, leur parait l\'homme de la situation.\r\n\r\nLes hommes, femmes, et créatures diverses du guet municipal d\'Ankh-Morpork tentent de dénouer les fils imbriqués de ces affaires. ', '2021-07-01 09:51:11', './uploads/media/1625214716-pied-d-argile.jpg'),
(12, 'H2G2', '<p>Le Guide du voyageur galactique (titre original : <i>The Hitchhiker\'s Guide to the Galaxy</i>, abrégé notamment en H2G2) est une œuvre de science-fiction humoristique multidisciplinaire imaginée par l’écrivain britannique Douglas Adams. Son nom provient de l’objet symbolique de la série : un livre électronique intitulé Le Guide du voyageur galactique. Née en 1978 sous forme de feuilleton radiophonique, l’œuvre a depuis été déclinée dans de nombreux médias au cours de différentes adaptations : romans, pièces de théâtre, série télévisée, jeux vidéo, bande dessinée, long métrage pour le cinéma. </p>\r\n<p>coucou</p>', '2021-07-02 08:01:35', './uploads/media/1625212895-H2G2.png'),
(18, 'Excalibur', 'Le film de John Boorman sorti en 1980', '2021-08-26 16:34:48', './uploads/media/1629988578-excalibur.jpg'),
(21, 'Batman', 'Batman j\'aime bien', '2021-09-24 09:59:07', './uploads/media/1632491556-15c53e0ad13b72a54bc85bce98f2132f.jpg'),
(25, 'Job Interiew', 'Mon cv', NULL, NULL),
(26, 'history of VM', 'VM', NULL, NULL),
(29, 'history of VM', 'test', '2022-05-10 13:46:13', './uploads/media/DC-Comics-Batman-Caped-Crusader-official-cardboard-cutout-buy-now-at-starstills__04189.1582849820.jpg'),
(30, 'Test 2', 'Un truc', '2022-11-09 15:18:30', './uploads/media/5fe26c49079885.58aad10788637.jpg'),
(31, 'Mon cv', 'C\'est mon CV', '2022-11-15 09:32:50', './uploads/media/260px-Bruce_Timm_by_Gage_Skidmore.jpg'),
(32, 'Mon cv', 'C\'est mon CV', '2022-11-15 09:33:30', './uploads/media/260px-Bruce_Timm_by_Gage_Skidmore.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `media_auteur`
--

DROP TABLE IF EXISTS `media_auteur`;
CREATE TABLE IF NOT EXISTS `media_auteur` (
  `id_media` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `media_auteur`
--

INSERT INTO `media_auteur` (`id_media`, `id_auteur`) VALUES
(1, 1),
(2, 2),
(7, 6),
(18, 15),
(7, 3),
(4, 3),
(12, 8),
(11, 3),
(3, 3),
(6, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
