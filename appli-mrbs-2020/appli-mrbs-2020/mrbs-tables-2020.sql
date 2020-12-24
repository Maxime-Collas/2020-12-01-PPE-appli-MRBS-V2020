-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 30 Novembre 2020 à 17:26
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mrbs`
--

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_area`
--

CREATE TABLE `mrbs_area` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `default_duration_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_create_ahead_secs` int(11) DEFAULT NULL,
  `max_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_create_ahead_secs` int(11) DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_day` int(11) NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_week` int(11) NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_month` int(11) NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_year` int(11) NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_future` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_day` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_week` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_month` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_year` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_future` int(11) NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_duration_secs` int(11) NOT NULL DEFAULT '0',
  `max_duration_periods` int(11) NOT NULL DEFAULT '0',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL,
  `times_along_top` tinyint(1) NOT NULL DEFAULT '0',
  `default_type` char(1) NOT NULL DEFAULT 'E'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
(1, 0, 'Informatique - multimédia', 'Informatique - multimédia', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1, 0, 'E'),
(2, 0, 'Salles de réunion', 'Salles de réunion', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1, 0, 'E'),
(3, 0, 'Salles de réception', 'Salles de réception', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1, 0, 'E');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_entry`
--

CREATE TABLE `mrbs_entry` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `entry_type` int(11) NOT NULL DEFAULT '0',
  `repeat_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_registration` tinyint(1) NOT NULL DEFAULT '0',
  `enable_registrant_limit` tinyint(1) NOT NULL DEFAULT '1',
  `registrant_limit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_participants`
--

CREATE TABLE `mrbs_participants` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_repeat`
--

CREATE TABLE `mrbs_repeat` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `rep_type` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rep_interval` smallint(6) NOT NULL DEFAULT '1',
  `month_absolute` smallint(6) DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_room`
--

CREATE TABLE `mrbs_room` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
(1, 0, 2, 'Daum', 'Daum', '', 15, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_sessions`
--

CREATE TABLE `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `mrbs_sessions`
--

INSERT INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
('kuo0ipn65j6noml10nodstb874', 1606757158, 'csrf_token|s:64:"f1eded6e328efe02e141dc95cc032595aa9ca81f224328a89c980982ced95a71";user|O:9:"MRBS\\User":10:{s:8:"username";s:5:"admin";s:12:"display_name";s:5:"admin";s:5:"email";s:29:"admin.mrbs@lorraine-sport.net";s:5:"level";s:1:"2";s:2:"id";s:1:"1";s:13:"password_hash";s:60:"$2y$10$rRoNKrf/a7OW9eJ.9Pqgi.qcTM1U.g7LLBUhOVR45d0ClBkZFClFa";s:9:"timestamp";s:19:"2020-11-30 17:40:03";s:10:"last_login";s:10:"1606754411";s:14:"reset_key_hash";s:0:"";s:16:"reset_key_expiry";s:1:"0";}');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_users`
--

CREATE TABLE `mrbs_users` (
  `id` int(11) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `reset_key_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_key_expiry` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `display_name`, `password_hash`, `email`, `timestamp`, `last_login`, `reset_key_hash`, `reset_key_expiry`) VALUES
(1, 2, 'admin', 'admin', '$2y$10$rRoNKrf/a7OW9eJ.9Pqgi.qcTM1U.g7LLBUhOVR45d0ClBkZFClFa', 'admin.mrbs@lorraine-sport.net', '2020-11-30 16:40:03', 1606754411, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_variables`
--

CREATE TABLE `mrbs_variables` (
  `id` int(11) NOT NULL,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '77'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_zoneinfo`
--

CREATE TABLE `mrbs_zoneinfo` (
  `id` int(11) NOT NULL,
  `timezone` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `vtimezone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_updated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_area_name` (`area_name`);

--
-- Index pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repeat_id` (`repeat_id`),
  ADD KEY `idxStartTime` (`start_time`),
  ADD KEY `idxEndTime` (`end_time`),
  ADD KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`);

--
-- Index pour la table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_entryid_username` (`entry_id`,`username`);

--
-- Index pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Index pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  ADD KEY `idxSortKey` (`sort_key`);

--
-- Index pour la table `mrbs_sessions`
--
ALTER TABLE `mrbs_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxAccess` (`access`);

--
-- Index pour la table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_name` (`name`);

--
-- Index pour la table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_variable_name` (`variable_name`);

--
-- Index pour la table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  ADD CONSTRAINT `mrbs_participants_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `mrbs_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
