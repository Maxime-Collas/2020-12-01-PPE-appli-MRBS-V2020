-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 03 Décembre 2020 à 18:16
-- Version du serveur :  10.1.47-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mrbs`
--

--
-- Contenu de la table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
(1, 0, 'Informatique - multimédia', 'Informatique - multimédia', 'Europe/Paris', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1, 0, 'E'),
(2, 0, 'Salles de réunion', 'Salles de réunion', 'Europe/Paris', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1, 0, 'E'),
(3, 0, 'Salles de réception', 'Salles de réception', 'Europe/Paris', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1, 0, 'E');

--
-- Contenu de la table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
(1, 0, 2, 'Daum', 'Daum', '', 15, '', NULL, NULL),
(2, 0, 2, 'Corbin', 'Corbin', '', 15, '', NULL, NULL),
(3, 0, 2, 'Baccarat', 'Baccarat', '', 20, '', NULL, NULL),
(4, 0, 2, 'Longwy', 'Longwy', '', 12, '', NULL, NULL),
(5, 0, 1, 'Multimédia', 'Multimédia', '', 25, '', NULL, NULL),
(6, 0, 3, 'Amphithéâtre', 'Amphithéâtre', '', 200, '', NULL, NULL),
(7, 0, 2, 'Lamour', 'Lamour', '', 30, '', NULL, NULL),
(8, 0, 2, 'Grüber', 'Grüber', '', 15, '', NULL, NULL),
(9, 0, 2, 'Majorelle', 'Majorelle', '', 40, '', NULL, NULL),
(10, 0, 3, 'Salle de restauration', 'Salle de restauration', 'Salle de restauration', 50, '', NULL, NULL),
(11, 0, 3, 'Galerie', 'Galerie', '', 80, '', NULL, NULL),
(12, 0, 1, 'Salle informatique', 'Salle informatique', '', 15, NULL, NULL, NULL),
(13, 0, 3, 'Hall d\'accueil', 'Hall d\'accueil', '', 100, NULL, NULL, NULL),
(14, 0, 2, 'Gallé', 'Gallé', '', 15, NULL, NULL, NULL);

--
-- Contenu de la table `mrbs_sessions`
--

INSERT INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
('tj8vggd8dpgpma1e70ucauumn6', 1607015718, 'csrf_token|s:64:\"e396ab84976c69cb7b4b52ff08292378588ce55b2da1c7598c31239f7cc897cf\";user|O:9:\"MRBS\\User\":10:{s:8:\"username\";s:5:\"admin\";s:12:\"display_name\";s:6:\"PIOUXY\";s:5:\"email\";s:29:\"admin.mrbs@lorraine-sport.net\";s:5:\"level\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:13:\"password_hash\";s:60:\"$2y$10$XjpTD5G0AXPB8IFjBvI1w.z.LNlOZ4DswcdPRbVkL7/hMdqS/6gbC\";s:9:\"timestamp\";s:19:\"2020-12-03 17:31:49\";s:10:\"last_login\";s:10:\"1607013119\";s:14:\"reset_key_hash\";s:0:\"\";s:16:\"reset_key_expiry\";s:1:\"0\";}');

--
-- Contenu de la table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `display_name`, `password_hash`, `email`, `timestamp`, `last_login`, `reset_key_hash`, `reset_key_expiry`) VALUES
(113, 2, 'admin', 'PIOUXY', '$2y$10$XjpTD5G0AXPB8IFjBvI1w.z.LNlOZ4DswcdPRbVkL7/hMdqS/6gbC', 'admin.mrbs@lorraine-sport.net', '2020-12-03 16:31:49', 1607013119, '', 0),
(2, 0, 'cheminl', 'Lorette Chemin', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'chemin.lorette@lorraine-sport.net', '2020-12-03 16:58:34', 0, '', 0),
(3, 0, 'fortetp', '', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'fortet.patrick@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(4, 0, 'dreauv', '', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'dreau.valerie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(5, 2, 'antoineq', ' ', '$2y$10$XjpTD5G0AXPB8IFjBvI1w.z.LNlOZ4DswcdPRbVkL7/hMdqS/6gbC', 'antoine.quentin@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(6, 2, 'aubinv', ' ', '$2y$10$XjpTD5G0AXPB8IFjBvI1w.z.LNlOZ4DswcdPRbVkL7/hMdqS/6gbC', 'aubin.veronique@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(7, 2, 'ackermanns', ' ', '$2y$10$XjpTD5G0AXPB8IFjBvI1w.z.LNlOZ4DswcdPRbVkL7/hMdqS/6gbC', 'ackermann.solange@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(8, 1, 'guesdonm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'guesdon.martin@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(9, 1, 'grenierf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'grenier.francoise@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(10, 1, 'giboired', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'giboire.david@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(11, 1, 'guillemetm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'guillemet.martin@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(12, 1, 'guilletm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'guillet.maud@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(13, 1, 'gilbertj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'gilbert.jordan@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(14, 1, 'grelichef', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'greliche.franck@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(15, 1, 'garniert', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'garnier.theo@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(16, 1, 'gaigar', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'gaiga.renan@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(17, 1, 'glavork', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'glavor.kevin@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(18, 0, 'lunavote', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'lunavot.eric@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(19, 0, 'borsellinoj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'borsellino.jean-marc@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(20, 0, 'daumyn', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'daumy.nicolas@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(21, 0, 'chambonp', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'chambon.patrick@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(22, 0, 'lecadetc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'lecadet.cecile@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(23, 0, 'vannierl', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'vannier.louis@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(24, 0, 'minets', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'minet.sabrina@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(25, 0, 'bourgeoiss', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'bourgeois.simon@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(26, 0, 'charleta', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'charlet.aurelie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(27, 0, 'pirotl', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'pirot.lea@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(28, 0, 'michauxa', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'michaux.alexandre@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(29, 0, 'cullerierj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'cullerier.jerome@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(30, 0, 'monnetm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'monnet.michel@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(31, 0, 'bergerv', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'berger.vanessa@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(32, 0, 'duquennel', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'duquenne.luc@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(33, 0, 'vassalm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'vassal.marc@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(34, 0, 'samsonm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'samson.maryline@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(35, 0, 'vassale', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'vassal.elizabeth@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(36, 0, 'dubuism', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'dubuis.marie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(37, 0, 'briseuxs', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'briseux.serge@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(38, 0, 'zambonie', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'zamboni.estelle@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(39, 0, 'vernonc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'vernon.christian@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(40, 0, 'micherouxe', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'micheroux.emmanuel@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(41, 0, 'philippej', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'philippe.jocelyne@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(42, 0, 'brisseaup', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'brisseau.pierre-jean@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(43, 0, 'meneure', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'meneur.emmanuel@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(44, 0, 'martelh', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'martel.herve@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(45, 0, 'fernandesf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'fernandes.fabrice@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(46, 0, 'loubata', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'loubat.agnes@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(47, 0, 'mogest', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'moges.thierry@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(48, 0, 'bulicm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'bulic.marc@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(49, 0, 'coulombelt', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'coulombel.thomas@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(50, 0, 'noirotm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'noirot.maxime@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(51, 0, 'martinageo', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'martinage.ophelie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(52, 0, 'corvaisierk', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'corvaisier.kevin@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(53, 0, 'danetc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'danet.christophe@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(55, 0, 'ouing', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'ouin.georges@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(56, 0, 'mabilaisl', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'mabilais.liliane@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(57, 0, 'charbonnelt', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'charbonnel.tanguy@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(58, 0, 'droaly', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'droal.yves@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(59, 0, 'rocherf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'rocher.fabienne@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(60, 0, 'triballata', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'triballat.amelie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(61, 0, 'martih', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'marti.herve@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(62, 0, 'vollej', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'volle.jocelyn@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(63, 0, 'hubertx', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'hubert.xavier@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(64, 0, 'lieutierv', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'lieutier.vianney@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(65, 0, 'cabalf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'cabal.frederick@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(66, 0, 'kriegerc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'krieger.christian@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(67, 0, 'fischerh', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'fischer.helene@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(68, 0, 'descatb', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'descat.bastien@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(69, 0, 'humbertf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'humbert.felix@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(70, 0, 'landrieux', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'landrieu.xavier@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(71, 0, 'delpeyroua', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'delpeyrou.andre@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(72, 0, 'rodierd', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'rodier.denis@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(73, 0, 'boyers', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'boyer.suzanne@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(74, 0, 'chassonn', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'chasson.nicole@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(75, 0, 'cuenotb', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'cuenot.bruno@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(76, 0, 'pitonu', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'piton.ursule@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(77, 0, 'gariny', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'garin.yvette@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(78, 0, 'salioum', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'saliou.marcel@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(79, 0, 'rigalg', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'rigal.guenole@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(80, 0, 'pelhatel', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'pelhate.loic@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(81, 0, 'skweresp', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'skweres.paul@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(82, 0, 'haviso', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'havis.odette@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(83, 0, 'rigalj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'rigal.jonathan@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(84, 0, 'cochetr', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'cochet.remi@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(85, 0, 'blinm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'blin.morgane@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(86, 0, 'mazurierv', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'mazurier.vincent@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(87, 0, 'robichets', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'robichet.sylvain@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(88, 0, 'brouillatf', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'brouillat.francois@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(89, 0, 'legerg', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'leger.geraldine@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(90, 0, 'despresv', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'despres.viviane@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(91, 0, 'bretonj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'breton.jean@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(92, 0, 'duboisl', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'dubois.laurence@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(93, 0, 'mousquetj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'mousquet.jean@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(94, 0, 'robuttep', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'robutte.philippe@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(95, 0, 'lecailleo', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'lecaille.oriane@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(96, 0, 'veriteb', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'verite.brendan@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(97, 0, 'dauthieub', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'dauthieu.bryan@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(98, 0, 'blancj', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'blanc.jean-marc@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(99, 0, 'dongelingeri', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'dongelinger.irene@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(100, 0, 'hochetg', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'hochet.guy@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(101, 0, 'lecorree', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'lecorre.emile@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(102, 0, 'sacheta', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'sachet.armelle@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(103, 0, 'bavelardp', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'bavelard.paul@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(104, 0, 'panagetr', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'panaget.remi@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(107, 0, 'hainryd', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'hainry.david@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(108, 0, 'trouchetc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'trouchet.carinne@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(109, 0, 'bertelles', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'bertelle.sophie@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(110, 0, 'pannetierc', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'pannetier.celine@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(111, 0, 'poulainm', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'poulain.marie-ange@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0),
(112, 0, 'stervinour', ' ', '$2y$10$2Q0u9w2DNn7frtdSmuXi6uRLB7r8ax.FaAWKe2asLHyhiTm64o/l2', 'stervinou.romain@lorraine-sport.net', '2020-12-03 15:58:34', 0, '', 0);

--
-- Contenu de la table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '77'),
(2, 'local_db_version', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
