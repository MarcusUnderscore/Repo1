-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 01 août 2021 à 16:59
-- Version du serveur :  5.7.31
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `proj6`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `video`, `created_by`, `created_at`, `category_id`, `slug`) VALUES
(15, 'Ollie', 'Le ollie est un bon trick de départ à apprendre pour les snowboarders freestyle. Tu utilises l’arrière de la planche pour décoller du sol, le trick est un peu le même qu\'en skateboard. On recommande d\'apprendre ce trick et de pratiquer, il peut être utile pour d\'autres tricks.', 'https://s2.qwant.com/thumbr/0x380/f/9/6c7ebfe0f7141aa1b45501c21df6dfe3fed6b298b558f57168ed1f08b182c3/ollie.jpg?u=https%3A%2F%2Fmas-magazine.com%2Fwp-content%2Fuploads%2F2018%2F08%2Follie.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2021-03-26 22:30:13', 3, 'ollie'),
(16, 'Nollie', 'Le nollie est un peu comme le ollie mais avec l\'avant de la planche, idéal pour commencer, on recommande de pratiquer ce trick très utile, l’idéal est de s\'entrainer sur terrain plat', 'https://s2.qwant.com/thumbr/0x0/6/9/48fc8e5ed6810514d3994372fe1ae735ff91a63c34e6a04f08400af0050b95/Nollie_pic3_large.jpg?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F0230%2F2239%2Ffiles%2FNollie_pic3_large.jpg%3Fv%3D1559608492&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2021-03-05 09:20:54', 3, ''),
(17, 'Japan air', 'Pour ce trick il faut attraper la planche avec la main avant, et avoir les genoux pliés', 'https://s1.qwant.com/thumbr/0x0/0/c/cf442438b4743e5baf188709417f7f8d305d642c1141274eaab0899cb10f18/japan.jpg?u=https%3A%2F%2Fwww.risorseonline.com%2Ftutorial%2Fsnowboard%2Fjapan.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2020-10-02 07:19:45', 1, ''),
(19, 'Method', 'Un trick de base pour lequel il faut plier les genoux pour avoir la planche dans le dos du snowboarder, attention à replaquer  comme il faut', 'https://s2.qwant.com/thumbr/0x380/c/3/60fbde347c2effc5301fd00140ad016bb4798e1f36646b3b13e89c401283f0/snowboard_method_grab_by_torls.jpg?u=http%3A%2F%2Fimg07.deviantart.net%2F9dd5%2Fi%2F2008%2F191%2F4%2Fa%2Fsnowboard_method_grab_by_torls.jpg&q=0&b=1&p=0&a=', 'http://place-hold.it/350x150', 'Joris', '2021-02-12 01:39:03', 1, ''),
(20, 'Cab 180', 'Tu as fait un trick 180 et tu avances avec le pied arrière devant, tu veux te remettre dans le bon sens, il suffit de faire un Cab 180, tu fais un jump et tu fais un demi tour sur toi même pour faire un 180', 'https://s1.qwant.com/thumbr/0x380/0/b/1c41a8c94c136851e26f17f9c3efc33a42592b243f07a17b506954b452cba2/47-620x413.jpg?u=https%3A%2F%2Fcoresites-cdn-adm.imgix.net%2Fwhitelines_new%2Fwp-content%2Fuploads%2F2013%2F09%2F47-620x413.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2020-12-24 19:50:11', 3, ''),
(21, 'Alley-Oop', 'Comme un albatros fainéant qui écarte ses ailes et s’envole gracieusement vers le ciel. Un trick de base dans le monde du superpipe et l’un des trick les plus esthétique que tu peux poser sur talus de board de piste.', 'https://s2.qwant.com/thumbr/0x380/6/f/93fe7ba24a24bd7274ace72389a7d1c57e9ddd0e6f98530aaf02a8488b070b/37-620x413.jpg?u=https%3A%2F%2Fcoresites-cdn-adm.imgix.net%2Fwhitelines_new%2Fwp-content%2Fuploads%2F2013%2F09%2F37-620x413.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2021-01-06 11:31:39', 2, ''),
(23, 'Air to Fakie', 'Le air-to-fakie iest un cousin du backside 180, mais avec quelques petites differences. Un des meilleurs tricks de halfpipe en snowboard', 'https://s2.qwant.com/thumbr/0x380/d/5/b254fc59ae59cb5273c933c0e4026fbbf12d672fd37aec7618ed602c75f82f/tj-schneider-air-to-fakie-main.jpg?u=https%3A%2F%2Fi1.wp.com%2Fwww.snowboarder.com%2Fwp-content%2Fuploads%2F2009%2F09%2Ftj-schneider-air-to-fakie-main.jpg', 'http://place-hold.it/350x150', 'Joris', '2021-01-09 20:17:16', 1, ''),
(24, 'Stalefish', 'Le noble stalefish, c’est un grab pour toutes les occasions. Les hips, le pipe, les boards de piste, les sauts de barre ou les booters, tous ces terrains te donnent l’opportunité d’envoyer le Prince de tous les grabs. Si tu le tweak bien, que tu tends le bras vers le ciel et que ta board est perpendiculaire à la réception, c’est toujours magnifique.', 'https://s2.qwant.com/thumbr/0x0/f/0/1195d850d885429fc0a7e78ecdf87959303b2672dbb67518feef5eb6326205/Featured-2.jpg?u=https%3A%2F%2Fd2hl4mfiesch9e.cloudfront.net%2Fmporade_new%2Fwp-content%2Fuploads%2F2016%2F09%2FFeatured-2.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2021-01-17 14:59:17', 1, ''),
(25, 'Lipslide', 'LE rail trick de base à notre avis. Il n’y rien de plus beau qu’un lipslide avec tellement de tweak qu’il faut porter des lunettes de sécurité pour pas te décoller la rétine ! Avec ce trick, tu peux carrément te retrouver avec une de tes jambes plus haute que ta tête à certains moments', 'https://s1.qwant.com/thumbr/0x380/2/0/7d5abcdfc7af28793bf213adf4dc4a36b5e928f500f34e6df31c0d847d7805/laax-14-1024x683.jpg?u=http%3A%2F%2Fitsajudgeslife.co.uk%2Fwp-content%2Fuploads%2F2018%2F04%2Flaax-14-1024x683.jpg&q=0&b=1&p=0&a=1', 'http://place-hold.it/350x150', 'Joris', '2021-01-12 07:05:17', 2, ''),
(26, 'Slash', 'Le slash est un signe de ponctuation dans un run. Tu peux voir le plus beau de tous les runs, sans un slash, il manque un truc. Comme pour le spray d’un cutback en surf, c’est la hauteur de ton slahs qui fait tout.', 'https://images.fineartamerica.com/images-medium-large-5/woman-powder-snowboarding-scott-markewitz.jpg', 'http://place-hold.it/350x150', 'Joris', '2021-01-23 03:23:36', 2, ''),
(27, 'Test', 'test', 'https://images.fineartamerica.com/images-medium-large-5/woman-powder-snowboarding-scott-markewitz.jpg', 'https://images.fineartamerica.com/images-medium-large-5/woman-powder-snowboarding-scott-markewitz.jpg', 'Joris', '2021-07-25 19:14:20', 1, 'test'),
(28, 'aaaaaaaa', 'aaaaa', 'http://aaaaaaa', 'aaaaaaa', 'aaaaaaaa', '2021-07-25 19:17:42', 1, 'aaaaaaaa');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Grab', 'Grab'),
(2, 'Slide', 'Slide'),
(3, 'Flip', 'Flip');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `content`, `created_at`, `user_id`) VALUES
(6, 15, 'Excellent', '2021-03-27 11:04:47', 2),
(7, 15, 'J\'ai fait pareil je me suis cassé une jambe', '2021-03-27 11:04:47', 2),
(8, 15, 'Super site, ça se voit que c\'est fait par un pro', '2021-03-27 11:04:47', 2),
(20, 16, 'J\'aime', '2021-03-12 17:43:35', 2),
(21, 16, 'Cool ce trick', '2021-03-11 01:33:34', 2),
(26, 17, 'C\'est nul', '2021-03-07 08:12:17', 2),
(27, 17, 'J\'aime pas la neige c\'est trop froid', '2020-12-21 02:52:40', 2),
(28, 17, 'Excellent', '2021-02-11 00:07:32', 2),
(39, 19, 'C\'est quoi comme planche?', '2021-02-20 13:37:50', 2),
(41, 19, 'J\'aime', '2021-02-16 13:33:15', 2),
(43, 20, 'J\'ai fait pareil je me suis cassé une jambe', '2021-01-25 04:57:16', 2),
(45, 20, 'Cool ce trick', '2021-02-22 01:46:38', 2),
(47, 20, 'Super site, ça se voit que c\'est fait par un pro', '2021-02-19 09:06:14', 2),
(55, 21, 'Cool ce trick', '2021-03-22 21:54:16', 2),
(56, 21, 'Excellent', '2021-03-21 11:27:32', 2),
(64, 23, 'C\'est nul', '2021-02-17 21:46:39', 2),
(66, 23, 'C\'est quoi comme planche?', '2021-01-28 16:11:45', 2),
(67, 23, 'J\'aime pas la neige c\'est trop froid', '2021-01-22 15:08:21', 2),
(68, 24, 'J\'aime', '2021-03-15 22:13:15', 2),
(69, 24, 'Cool ce trick', '2021-03-10 01:28:06', 2),
(74, 25, 'J\'aime pas la neige c\'est trop froid', '2021-02-28 20:09:20', 2),
(77, 25, 'Excellent', '2021-02-03 07:21:29', 2),
(78, 25, 'J\'ai fait pareil je me suis cassé une jambe', '2021-02-25 05:22:34', 2),
(83, 26, 'C\'est quoi comme planche?', '2021-02-20 15:31:44', 2),
(84, 26, 'Super site, ça se voit que c\'est fait par un pro', '2021-03-12 20:45:11', 2),
(87, 15, 'crtf', '2021-03-30 08:30:48', 2),
(88, 15, 'bfgb', '2021-03-30 08:30:53', 2),
(89, 15, 'b bgb', '2021-03-30 08:30:58', 2),
(90, 15, 'btrhb', '2021-03-30 08:31:04', 2),
(91, 15, 'cfbfhg', '2021-03-30 08:31:10', 2),
(92, 15, 'nfcbfbg', '2021-03-30 08:31:15', 2),
(93, 15, 'tcfyhbv', '2021-03-30 08:31:20', 2),
(94, 15, 'gvnbgfnb', '2021-03-30 08:31:27', 2),
(97, 15, 'fthtf', '2021-04-07 17:06:46', 2),
(98, 15, 'testtesttest', '2021-04-07 17:07:09', 2),
(100, 15, 'efvdfv', '2021-04-07 17:17:35', 2),
(101, 15, 'tttt', '2021-04-08 15:36:32', 2),
(102, 15, 'fsvvdsvddv', '2021-04-08 21:34:00', 2),
(103, 15, 'ghn cgv v', '2021-04-11 15:56:21', 2),
(104, 15, 'bonjour', '2021-05-01 15:05:10', 2),
(105, 16, 'Okkkkkkkkkkk', '2021-05-26 09:20:39', 2),
(106, 15, 'Bonjour', '2021-06-26 07:23:05', 2);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210316124640', '2021-03-16 12:49:20', 66),
('DoctrineMigrations\\Version20210316163722', '2021-03-16 16:38:41', 59),
('DoctrineMigrations\\Version20210327083249', '2021-03-27 08:39:29', 223),
('DoctrineMigrations\\Version20210327090653', '2021-03-27 09:07:41', 121),
('DoctrineMigrations\\Version20210327145630', '2021-03-27 14:58:49', 140),
('DoctrineMigrations\\Version20210330163223', '2021-03-30 16:32:42', 175),
('DoctrineMigrations\\Version20210331155358', '2021-03-31 15:54:10', 309),
('DoctrineMigrations\\Version20210409065933', '2021-04-09 06:59:44', 108);

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grande` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_876E0D97294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `article_id`, `url`, `grande`) VALUES
(1, 15, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(2, 15, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(3, 15, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 1),
(4, 15, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(5, 16, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(6, 16, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(7, 16, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(8, 17, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 0),
(9, 17, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(10, 17, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(11, 19, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(12, 19, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(13, 19, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 0),
(14, 20, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(15, 20, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(16, 20, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(17, 21, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(18, 21, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 0),
(19, 21, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(20, 23, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(21, 23, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(22, 23, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(23, 24, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 0),
(24, 24, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(25, 24, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(26, 25, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(27, 25, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(28, 25, 'https://www.madmoizelle.com/wp-content/uploads/2013/02/snowboard.jpg', 0),
(29, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AnI7qGQs0Ic\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0),
(30, 26, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(31, 26, 'https://media.ucpa.com/image/upload/t_UCPA_Vertical/UCPA-SPORT-NATURE/France/00037016.jpg', 0),
(32, 26, 'https://www.businesscoot.com/uploads/study_main_image/786.jpg', 0),
(33, 27, 'https://images.fineartamerica.com/images-medium-large-5/woman-powder-snowboarding-scott-markewitz.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tricks`
--

DROP TABLE IF EXISTS `tricks`;
CREATE TABLE IF NOT EXISTS `tricks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `image`) VALUES
(2, 'contact@jorisreynes.fr', 'Joris', '$2y$13$eH.YbE9WiLxVNNnPoy9uyOEvcM3J7JhPjUurX/vnG8KLF1yLpZJxW', 'https://i.imgflip.com/2/ut9dy.jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `FK_876E0D97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
